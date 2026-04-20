%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(exception_utils_1, 'org.apache.commons.lang3.exception.ExceptionUtils').
class(contexted_exception_test_1, 'org.apache.commons.lang3.exception.ContextedExceptionTest').
class(default_exception_context_1, 'org.apache.commons.lang3.exception.DefaultExceptionContext').
class(immutable_pair_1, 'org.apache.commons.lang3.tuple.ImmutablePair').
class(pair_1, 'org.apache.commons.lang3.tuple.Pair').
class(contexted_exception_1, 'org.apache.commons.lang3.exception.ContextedException').

%%% Methods
%exception_utils_1 - org.apache.commons.lang3.exception.ExceptionUtils
method(m_erase_type_41, range(exception_utils_1, 2246, 424, 71, 80)).
method(m_get_cause_42, range(exception_utils_1, 2676, 1217, 82, 113)).
method(m_get_cause_43, range(exception_utils_1, 3899, 1348, 115, 153)).
method(m_get_cause_using_method_name_44, range(exception_utils_1, 5253, 1010, 155, 179)).
method(m_get_default_cause_method_names_45, range(exception_utils_1, 6269, 473, 181, 193)).
method(m_get_message_46, range(exception_utils_1, 6748, 644, 195, 213)).
method(m_get_root_cause_47, range(exception_utils_1, 7398, 998, 215, 235)).
method(m_get_root_cause_message_48, range(exception_utils_1, 8402, 556, 237, 252)).
method(m_get_root_cause_stack_trace_49, range(exception_utils_1, 8964, 1488, 254, 289)).
method(m_get_stack_frame_list_50, range(exception_utils_1, 10458, 1281, 291, 321)).
method(m_get_stack_frames_51, range(exception_utils_1, 11745, 718, 323, 339)).
method(m_get_stack_frames_52, range(exception_utils_1, 12469, 813, 341, 359)).
method(m_get_stack_trace_24, range(exception_utils_1, 13288, 798, 361, 378)).
method(m_get_throwable_count_56, range(exception_utils_1, 14092, 823, 380, 398)).
method(m_get_throwable_list_57, range(exception_utils_1, 14921, 1110, 400, 426)).
method(m_get_throwables_58, range(exception_utils_1, 16037, 1055, 428, 450)).
method(m_has_cause_59, range(exception_utils_1, 17098, 707, 452, 471)).
method(m_index_of_60, range(exception_utils_1, 17811, 1515, 473, 509)).
method(m_index_of_throwable_61, range(exception_utils_1, 19332, 843, 511, 527)).
method(m_index_of_throwable_62, range(exception_utils_1, 20181, 1167, 529, 550)).
method(m_index_of_type_63, range(exception_utils_1, 21354, 847, 552, 569)).
method(m_index_of_type_64, range(exception_utils_1, 22207, 1164, 571, 593)).
method(m_print_root_cause_stack_trace_65, range(exception_utils_1, 23377, 897, 595, 615)).
method(m_print_root_cause_stack_trace_66, range(exception_utils_1, 24280, 1343, 617, 647)).
method(m_print_root_cause_stack_trace_67, range(exception_utils_1, 25629, 1343, 649, 679)).
method(m_remove_common_frames_68, range(exception_utils_1, 26978, 1197, 681, 706)).
method(m_rethrow_69, range(exception_utils_1, 28181, 2793, 708, 769)).
method(m_throwable_of_70, range(exception_utils_1, 30980, 1619, 771, 808)).
method(m_throwable_of_throwable_71, range(exception_utils_1, 32605, 938, 810, 828)).
method(m_throwable_of_throwable_72, range(exception_utils_1, 33549, 1266, 830, 853)).
method(m_throwable_of_type_73, range(exception_utils_1, 34821, 941, 855, 873)).
method(m_throwable_of_type_74, range(exception_utils_1, 35768, 1245, 875, 898)).
method(m_wrap_and_throw_75, range(exception_utils_1, 37019, 1393, 900, 930)).
method(m_exception_utils_76, range(exception_utils_1, 38418, 181, 932, 937)).
%contexted_exception_test_1 - org.apache.commons.lang3.exception.ContextedExceptionTest
method(m_set_up_18, range(contexted_exception_test_1, 1383, 177, 35, 40)).
method(m_test_contexted_exception_21, range(contexted_exception_test_1, 1566, 354, 42, 49)).
method(m_test_null_exception_22, range(contexted_exception_test_1, 1926, 130, 51, 54)).
method(m_test_contexted_exception_string_25, range(contexted_exception_test_1, 2062, 320, 56, 63)).
method(m_test_contexted_exception_throwable_26, range(contexted_exception_test_1, 2388, 442, 65, 73)).
method(m_test_contexted_exception_string_throwable_27, range(contexted_exception_test_1, 2836, 518, 75, 84)).
method(m_test_contexted_exception_string_throwable_context_28, range(contexted_exception_test_1, 3360, 556, 86, 95)).
method(m_test_null_exception_passing_29, range(contexted_exception_test_1, 3922, 532, 97, 108)).
method(m_test_raw_message_30, range(contexted_exception_test_1, 4460, 521, 110, 117)).
%default_exception_context_1 - org.apache.commons.lang3.exception.DefaultExceptionContext
method(m_add_context_value_32, range(default_exception_context_1, 1757, 228, 48, 55)).
method(m_set_context_value_35, range(default_exception_context_1, 1991, 281, 57, 65)).
method(m_get_context_values_36, range(default_exception_context_1, 2278, 386, 67, 79)).
method(m_get_first_context_value_37, range(default_exception_context_1, 2670, 322, 81, 92)).
method(m_get_context_labels_38, range(default_exception_context_1, 2998, 284, 94, 104)).
method(m_get_context_entries_39, range(default_exception_context_1, 3288, 142, 106, 112)).
method(m_get_formatted_exception_message_40, range(default_exception_context_1, 3436, 1653, 114, 157)).
%immutable_pair_1 - org.apache.commons.lang3.tuple.ImmutablePair
method(m_empty_array_77, range(immutable_pair_1, 2062, 457, 59, 71)).
method(m_left_78, range(immutable_pair_1, 2525, 539, 73, 87)).
method(m_null_pair_79, range(immutable_pair_1, 3070, 387, 89, 100)).
method(m_of_80, range(immutable_pair_1, 3463, 643, 102, 116)).
method(m_of_81, range(immutable_pair_1, 4112, 563, 118, 132)).
method(m_of_non_null_82, range(immutable_pair_1, 4681, 749, 134, 150)).
method(m_right_83, range(immutable_pair_1, 5436, 544, 152, 166)).
method(m_immutable_pair_34, range(immutable_pair_1, 6086, 267, 174, 183)).
method(m_get_left_84, range(immutable_pair_1, 6359, 98, 185, 191)).
method(m_get_right_85, range(immutable_pair_1, 6463, 100, 193, 199)).
method(m_set_value_86, range(immutable_pair_1, 6569, 408, 201, 213)).
%pair_1 - org.apache.commons.lang3.tuple.Pair
method(m_empty_array_87, range(pair_1, 2041, 439, 56, 68)).
method(m_of_88, range(pair_1, 2486, 586, 70, 84)).
method(m_of_89, range(pair_1, 3078, 488, 86, 100)).
method(m_of_non_null_90, range(pair_1, 3572, 696, 102, 118)).
method(m_compare_to_91, range(pair_1, 4274, 484, 120, 131)).
method(m_equals_92, range(pair_1, 4764, 611, 133, 150)).
method(m_get_key_93, range(pair_1, 5381, 315, 152, 163)).
method(m_get_left_94, range(pair_1, 5702, 220, 165, 172)).
method(m_get_right_95, range(pair_1, 5928, 225, 174, 181)).
method(m_get_value_96, range(pair_1, 6159, 320, 183, 194)).
method(m_hash_code_97, range(pair_1, 6485, 322, 196, 206)).
method(m_to_string_98, range(pair_1, 6813, 283, 208, 216)).
method(m_to_string_99, range(pair_1, 7102, 678, 218, 231)).
%contexted_exception_1 - org.apache.commons.lang3.exception.ContextedException
method(m_contexted_exception_1, range(contexted_exception_1, 3365, 258, 94, 101)).
method(m_contexted_exception_2, range(contexted_exception_1, 3629, 374, 103, 113)).
method(m_contexted_exception_3, range(contexted_exception_1, 4009, 387, 115, 125)).
method(m_contexted_exception_6, range(contexted_exception_1, 4402, 467, 127, 138)).
method(m_contexted_exception_7, range(contexted_exception_1, 4875, 610, 140, 153)).
method(m_add_context_value_8, range(contexted_exception_1, 5491, 842, 155, 172)).
method(m_set_context_value_10, range(contexted_exception_1, 6339, 867, 174, 191)).
method(m_get_context_values_11, range(contexted_exception_1, 7212, 177, 193, 199)).
method(m_get_first_context_value_12, range(contexted_exception_1, 7395, 179, 201, 207)).
method(m_get_context_entries_13, range(contexted_exception_1, 7580, 170, 209, 215)).
method(m_get_context_labels_14, range(contexted_exception_1, 7756, 148, 217, 223)).
method(m_get_message_15, range(contexted_exception_1, 7910, 305, 225, 234)).
method(m_get_raw_message_16, range(contexted_exception_1, 8221, 269, 236, 245)).
method(m_get_formatted_exception_message_17, range(contexted_exception_1, 8496, 202, 247, 253)).

%%% Blocks
%exception_utils_1 - org.apache.commons.lang3.exception.ExceptionUtils
block(exception_utils_1_block1, block, exception_utils_1_code11, body, range(exception_utils_1, 13888, 198, 373, 378)).
%contexted_exception_test_1 - org.apache.commons.lang3.exception.ContextedExceptionTest
block(contexted_exception_test_1_block1, block, contexted_exception_test_1_code7, body, range(contexted_exception_test_1, 1450, 110, 37, 40)).
block(contexted_exception_test_1_block2, block, contexted_exception_test_1_code10, body, range(contexted_exception_test_1, 1968, 88, 52, 54)).
%default_exception_context_1 - org.apache.commons.lang3.exception.DefaultExceptionContext
block(default_exception_context_1_block1, block, default_exception_context_1_code18, body, range(default_exception_context_1, 1895, 90, 52, 55)).
%immutable_pair_1 - org.apache.commons.lang3.tuple.ImmutablePair
block(immutable_pair_1_block1, block, immutable_pair_1_code22, body, range(immutable_pair_1, 6292, 61, 180, 183)).
%pair_1 - org.apache.commons.lang3.tuple.Pair
%contexted_exception_1 - org.apache.commons.lang3.exception.ContextedException
block(contexted_exception_1_block1, block, contexted_exception_1_code3, body, range(contexted_exception_1, 4309, 87, 122, 125)).
block(contexted_exception_1_block2, block, contexted_exception_1_code5, body, range(contexted_exception_1, 6249, 84, 169, 172)).

%%% Statements
%exception_utils_1 - org.apache.commons.lang3.exception.ExceptionUtils
stmt(exception_utils_1_stmt1, variable_declaration_statement, exception_utils_1_block1, (statements, 0), range(exception_utils_1, 13898, 43, 374, 374)).
stmt(exception_utils_1_stmt2, variable_declaration_statement, exception_utils_1_block1, (statements, 1), range(exception_utils_1, 13950, 49, 375, 375)).
stmt(exception_utils_1_stmt3, expression_statement, exception_utils_1_block1, (statements, 2), range(exception_utils_1, 14008, 30, 376, 376)).
%contexted_exception_test_1 - org.apache.commons.lang3.exception.ContextedExceptionTest
stmt(contexted_exception_test_1_stmt1, expression_statement, contexted_exception_test_1_block1, (statements, 0), range(contexted_exception_test_1, 1460, 71, 38, 38)).
stmt(contexted_exception_test_1_stmt2, expression_statement, contexted_exception_test_1_block1, (statements, 1), range(contexted_exception_test_1, 1540, 14, 39, 39)).
stmt(contexted_exception_test_1_stmt3, expression_statement, contexted_exception_test_1_block2, (statements, 0), range(contexted_exception_test_1, 1978, 72, 53, 53)).
%default_exception_context_1 - org.apache.commons.lang3.exception.DefaultExceptionContext
stmt(default_exception_context_1_stmt1, expression_statement, default_exception_context_1_block1, (statements, 0), range(default_exception_context_1, 1905, 53, 53, 53)).
stmt(default_exception_context_1_stmt2, return_statement, default_exception_context_1_block1, (statements, 1), range(default_exception_context_1, 1967, 12, 54, 54)).
%immutable_pair_1 - org.apache.commons.lang3.tuple.ImmutablePair
stmt(immutable_pair_1_stmt1, expression_statement, immutable_pair_1_block1, (statements, 0), range(immutable_pair_1, 6302, 17, 181, 181)).
stmt(immutable_pair_1_stmt2, expression_statement, immutable_pair_1_block1, (statements, 1), range(immutable_pair_1, 6328, 19, 182, 182)).
%pair_1 - org.apache.commons.lang3.tuple.Pair
%contexted_exception_1 - org.apache.commons.lang3.exception.ContextedException
stmt(contexted_exception_1_stmt1, super_constructor_invocation, contexted_exception_1_block1, (statements, 0), range(contexted_exception_1, 4319, 13, 123, 123)).
stmt(contexted_exception_1_stmt2, expression_statement, contexted_exception_1_block1, (statements, 1), range(contexted_exception_1, 4341, 49, 124, 124)).
stmt(contexted_exception_1_stmt3, expression_statement, contexted_exception_1_block2, (statements, 0), range(contexted_exception_1, 6259, 47, 170, 170)).
stmt(contexted_exception_1_stmt4, return_statement, contexted_exception_1_block2, (statements, 1), range(contexted_exception_1, 6315, 12, 171, 171)).

%%% Expressions
%exception_utils_1 - org.apache.commons.lang3.exception.ExceptionUtils
expr(exception_utils_1_expr1, array_initializer, exception_utils_1_code10, initializer, range(exception_utils_1, 1680, 326, 48, 61), "{\"getCause\",\"getNextException\",\"getTargetException\",\"getException\",\"getSourceException\",\"getRootCause\",\"getCausedByException\",\"getNested\",\"getLinkedException\",\"getNestedException\",\"getLinkedCause\",\"getThrowable\"}").
expr(exception_utils_1_expr2, class_instance_creation, exception_utils_1_code14, initializer, range(exception_utils_1, 13922, 18, 374, 374), "new StringWriter()").
expr(exception_utils_1_expr3, class_instance_creation, exception_utils_1_code18, initializer, range(exception_utils_1, 13973, 25, 375, 375), "new PrintWriter(sw,true)").
expr(exception_utils_1_expr4, method_invocation, exception_utils_1_stmt3, expression, range(exception_utils_1, 14008, 29, 376, 376), "throwable.printStackTrace(pw)").
%contexted_exception_test_1 - org.apache.commons.lang3.exception.ContextedExceptionTest
expr(contexted_exception_test_1_expr1, assignment, contexted_exception_test_1_stmt1, expression, range(contexted_exception_test_1, 1460, 70, 38, 38), "exceptionContext=new ContextedException(new Exception(TEST_MESSAGE))").
expr(contexted_exception_test_1_expr2, class_instance_creation, contexted_exception_test_1_expr1, right_hand_side, range(contexted_exception_test_1, 1479, 51, 38, 38), "new ContextedException(new Exception(TEST_MESSAGE))").
expr(contexted_exception_test_1_expr3, class_instance_creation, contexted_exception_test_1_expr2, (arguments, 0), range(contexted_exception_test_1, 1502, 27, 38, 38), "new Exception(TEST_MESSAGE)").
expr(contexted_exception_test_1_expr4, super_method_invocation, contexted_exception_test_1_stmt2, expression, range(contexted_exception_test_1, 1540, 13, 39, 39), "super.setUp()").
expr(contexted_exception_test_1_expr5, method_invocation, contexted_exception_test_1_stmt3, expression, range(contexted_exception_test_1, 1978, 71, 53, 53), "assertEquals(\"\",ExceptionUtils.getStackTrace(null),\"Empty response.\")").
expr(contexted_exception_test_1_expr6, method_invocation, contexted_exception_test_1_expr5, (arguments, 1), range(contexted_exception_test_1, 1995, 34, 53, 53), "ExceptionUtils.getStackTrace(null)").
%default_exception_context_1 - org.apache.commons.lang3.exception.DefaultExceptionContext
expr(default_exception_context_1_expr1, class_instance_creation, default_exception_context_1_code15, initializer, range(default_exception_context_1, 1733, 17, 46, 46), "new ArrayList<>()").
expr(default_exception_context_1_expr2, method_invocation, default_exception_context_1_stmt1, expression, range(default_exception_context_1, 1905, 52, 53, 53), "contextValues.add(new ImmutablePair<>(label,value))").
expr(default_exception_context_1_expr3, class_instance_creation, default_exception_context_1_expr2, (arguments, 0), range(default_exception_context_1, 1923, 33, 53, 53), "new ImmutablePair<>(label,value)").
expr(default_exception_context_1_expr4, this_expression, default_exception_context_1_stmt2, expression, range(default_exception_context_1, 1974, 4, 54, 54), "this").
%immutable_pair_1 - org.apache.commons.lang3.tuple.ImmutablePair
expr(immutable_pair_1_expr1, array_initializer, immutable_pair_1_code13, initializer, range(immutable_pair_1, 1709, 2, 47, 47), "{}").
expr(immutable_pair_1_expr2, class_instance_creation, immutable_pair_1_code19, initializer, range(immutable_pair_1, 1919, 31, 54, 54), "new ImmutablePair<>(null,null)").
expr(immutable_pair_1_expr5, this_expression, f_left_96, expression, range(immutable_pair_1, 6302, 4, 181, 181), "this").
expr(immutable_pair_1_expr3, assignment, immutable_pair_1_stmt1, expression, range(immutable_pair_1, 6302, 16, 181, 181), "this.left=left").
expr(immutable_pair_1_expr4, field_access, immutable_pair_1_expr3, left_hand_side, range(immutable_pair_1, 6302, 9, 181, 181), "this.left").
expr(immutable_pair_1_expr7, field_access, immutable_pair_1_expr6, left_hand_side, range(immutable_pair_1, 6328, 10, 182, 182), "this.right").
expr(immutable_pair_1_expr8, this_expression, f_right_97, expression, range(immutable_pair_1, 6328, 4, 182, 182), "this").
expr(immutable_pair_1_expr6, assignment, immutable_pair_1_stmt2, expression, range(immutable_pair_1, 6328, 18, 182, 182), "this.right=right").
%pair_1 - org.apache.commons.lang3.tuple.Pair
expr(pair_1_expr1, array_initializer, pair_1_code28, initializer, range(pair_1, 2032, 2, 54, 54), "{}").
%contexted_exception_1 - org.apache.commons.lang3.exception.ContextedException
expr(contexted_exception_1_expr1, super_constructor_invocation, contexted_exception_1_block1, (statements, 0), range(contexted_exception_1, 4319, 13, 123, 123), "super(cause);").
expr(contexted_exception_1_expr2, assignment, contexted_exception_1_stmt2, expression, range(contexted_exception_1, 4341, 48, 124, 124), "exceptionContext=new DefaultExceptionContext()").
expr(contexted_exception_1_expr3, class_instance_creation, contexted_exception_1_expr2, right_hand_side, range(contexted_exception_1, 4360, 29, 124, 124), "new DefaultExceptionContext()").
expr(contexted_exception_1_expr4, method_invocation, contexted_exception_1_stmt3, expression, range(contexted_exception_1, 6259, 46, 170, 170), "exceptionContext.addContextValue(label,value)").
expr(contexted_exception_1_expr5, this_expression, contexted_exception_1_stmt4, expression, range(contexted_exception_1, 6322, 4, 171, 171), "this").

%%% Names
%exception_utils_1 - org.apache.commons.lang3.exception.ExceptionUtils
name(f_cause_method_names_26, simple_name, exception_utils_1_code10, name, range(exception_utils_1, 1659, 18, 48, 48), 'CAUSE_METHOD_NAMES').
name(v_sw_41, simple_name, exception_utils_1_code14, name, range(exception_utils_1, 13917, 2, 374, 374), 'sw').
name(v_pw_42, simple_name, exception_utils_1_code18, name, range(exception_utils_1, 13968, 2, 375, 375), 'pw').
name(v_sw_41, simple_name, exception_utils_1_expr3, (arguments, 0), range(exception_utils_1, 13989, 2, 375, 375), 'sw').
name(p_throwable_40, simple_name, exception_utils_1_expr4, expression, range(exception_utils_1, 14008, 9, 376, 376), 'throwable').
name(m_print_stack_trace_55, simple_name, exception_utils_1_expr4, name, range(exception_utils_1, 14018, 15, 376, 376), 'printStackTrace').
name(v_pw_42, simple_name, exception_utils_1_expr4, (arguments, 0), range(exception_utils_1, 14034, 2, 376, 376), 'pw').
%contexted_exception_test_1 - org.apache.commons.lang3.exception.ContextedExceptionTest
name(t_contexted_exception_test_1, simple_name, contexted_exception_test_1_code2, name, range(contexted_exception_test_1, 1296, 22, 33, 33), 'ContextedExceptionTest').
name(f_exception_context_16, simple_name, contexted_exception_test_1_expr1, left_hand_side, range(contexted_exception_test_1, 1460, 16, 38, 38), 'exceptionContext').
name(f_test_message_17, simple_name, contexted_exception_test_1_expr3, (arguments, 0), range(contexted_exception_test_1, 1516, 12, 38, 38), 'TEST_MESSAGE').
name(m_set_up_20, simple_name, contexted_exception_test_1_expr4, name, range(contexted_exception_test_1, 1546, 5, 39, 39), 'setUp').
name(m_assert_equals_23, simple_name, contexted_exception_test_1_expr5, name, range(contexted_exception_test_1, 1978, 12, 53, 53), 'assertEquals').
name(t_exception_utils_2, simple_name, contexted_exception_test_1_expr6, expression, range(contexted_exception_test_1, 1995, 14, 53, 53), 'ExceptionUtils').
name(m_get_stack_trace_24, simple_name, contexted_exception_test_1_expr6, name, range(contexted_exception_test_1, 2010, 13, 53, 53), 'getStackTrace').
%default_exception_context_1 - org.apache.commons.lang3.exception.DefaultExceptionContext
name(t_default_exception_context_3, simple_name, default_exception_context_1_code2, name, range(default_exception_context_1, 1454, 23, 40, 40), 'DefaultExceptionContext').
name(f_context_values_18, simple_name, default_exception_context_1_code15, name, range(default_exception_context_1, 1717, 13, 46, 46), 'contextValues').
name(f_context_values_18, simple_name, default_exception_context_1_expr2, expression, range(default_exception_context_1, 1905, 13, 53, 53), 'contextValues').
name(m_add_33, simple_name, default_exception_context_1_expr2, name, range(default_exception_context_1, 1919, 3, 53, 53), 'add').
name(p_label_19, simple_name, default_exception_context_1_expr3, (arguments, 0), range(default_exception_context_1, 1943, 5, 53, 53), 'label').
name(p_value_20, simple_name, default_exception_context_1_expr3, (arguments, 1), range(default_exception_context_1, 1950, 5, 53, 53), 'value').
%immutable_pair_1 - org.apache.commons.lang3.tuple.ImmutablePair
name(f_empty_array_85, simple_name, immutable_pair_1_code13, name, range(immutable_pair_1, 1695, 11, 47, 47), 'EMPTY_ARRAY').
name(f_null_86, simple_name, immutable_pair_1_code19, name, range(immutable_pair_1, 1912, 4, 54, 54), 'NULL').
name(m_immutable_pair_34, simple_name, immutable_pair_1_code22, name, range(immutable_pair_1, 6249, 13, 180, 180), 'ImmutablePair').
name(p_left_94, simple_name, immutable_pair_1_code24, name, range(immutable_pair_1, 6271, 4, 180, 180), 'left').
name(p_right_95, simple_name, immutable_pair_1_code27, name, range(immutable_pair_1, 6285, 5, 180, 180), 'right').
name(f_left_96, simple_name, immutable_pair_1_expr4, name, range(immutable_pair_1, 6307, 4, 181, 181), 'left').
name(p_left_94, simple_name, immutable_pair_1_expr3, right_hand_side, range(immutable_pair_1, 6314, 4, 181, 181), 'left').
name(f_right_97, simple_name, immutable_pair_1_expr7, name, range(immutable_pair_1, 6333, 5, 182, 182), 'right').
name(p_right_95, simple_name, immutable_pair_1_expr6, right_hand_side, range(immutable_pair_1, 6341, 5, 182, 182), 'right').
%pair_1 - org.apache.commons.lang3.tuple.Pair
name(t_pair_4, simple_name, pair_1_code2, name, range(pair_1, 1636, 4, 41, 41), 'Pair').
name(t_l_5, simple_name, pair_1_code5, name, range(pair_1, 1641, 1, 41, 41), 'L').
name(t_r_6, simple_name, pair_1_code6, name, range(pair_1, 1644, 1, 41, 41), 'R').
name(f_empty_array_99, simple_name, pair_1_code28, name, range(pair_1, 2018, 11, 54, 54), 'EMPTY_ARRAY').
%contexted_exception_1 - org.apache.commons.lang3.exception.ContextedException
name(p_cause_2, simple_name, contexted_exception_1_stmt1, (arguments, 0), range(contexted_exception_1, 4325, 5, 123, 123), 'cause').
name(f_exception_context_3, simple_name, contexted_exception_1_expr2, left_hand_side, range(contexted_exception_1, 4341, 16, 124, 124), 'exceptionContext').
name(f_exception_context_3, simple_name, contexted_exception_1_expr4, expression, range(contexted_exception_1, 6259, 16, 170, 170), 'exceptionContext').
name(m_add_context_value_9, simple_name, contexted_exception_1_expr4, name, range(contexted_exception_1, 6276, 15, 170, 170), 'addContextValue').
name(p_label_9, simple_name, contexted_exception_1_expr4, (arguments, 0), range(contexted_exception_1, 6292, 5, 170, 170), 'label').
name(p_value_10, simple_name, contexted_exception_1_expr4, (arguments, 1), range(contexted_exception_1, 6299, 5, 170, 170), 'value').

%%% Literals
%exception_utils_1 - org.apache.commons.lang3.exception.ExceptionUtils
literal(exception_utils_1_literal1, boolean_literal, exception_utils_1_expr3, (arguments, 1), range(exception_utils_1, 13993, 4, 375, 375), true).
%contexted_exception_test_1 - org.apache.commons.lang3.exception.ContextedExceptionTest
literal(contexted_exception_test_1_literal1, string_literal, contexted_exception_test_1_expr5, (arguments, 0), range(contexted_exception_test_1, 1991, 2, 53, 53), "").
literal(contexted_exception_test_1_literal3, null_literal, contexted_exception_test_1_expr6, (arguments, 0), range(contexted_exception_test_1, 2024, 4, 53, 53), null).
literal(contexted_exception_test_1_literal2, string_literal, contexted_exception_test_1_expr5, (arguments, 2), range(contexted_exception_test_1, 2031, 17, 53, 53), "Empty response.").
%default_exception_context_1 - org.apache.commons.lang3.exception.DefaultExceptionContext
%immutable_pair_1 - org.apache.commons.lang3.tuple.ImmutablePair
literal(immutable_pair_1_literal1, null_literal, immutable_pair_1_expr2, (arguments, 0), range(immutable_pair_1, 1939, 4, 54, 54), null).
literal(immutable_pair_1_literal2, null_literal, immutable_pair_1_expr2, (arguments, 1), range(immutable_pair_1, 1945, 4, 54, 54), null).
%pair_1 - org.apache.commons.lang3.tuple.Pair
%contexted_exception_1 - org.apache.commons.lang3.exception.ContextedException

%%% Other Code Entities
%exception_utils_1 - org.apache.commons.lang3.exception.ExceptionUtils
code(exception_utils_1_code1, compilation_unit, range(exception_utils_1, 0, 38602, 1, -1)).
code(exception_utils_1_code2, type_declaration, exception_utils_1_code1, (types, 0), range(exception_utils_1, 1319, 37282, 34, 938)).
code(exception_utils_1_code3, field_declaration, exception_utils_1_code2, (body_declarations, 1), range(exception_utils_1, 1508, 499, 44, 61)).
code(exception_utils_1_code4, modifier, exception_utils_1_code3, (modifiers, 0), range(exception_utils_1, 1629, 7, 48, 48)).
code(exception_utils_1_code5, modifier, exception_utils_1_code3, (modifiers, 1), range(exception_utils_1, 1637, 6, 48, 48)).
code(exception_utils_1_code6, modifier, exception_utils_1_code3, (modifiers, 2), range(exception_utils_1, 1644, 5, 48, 48)).
code(exception_utils_1_code8, simple_type, exception_utils_1_code7, element_type, range(exception_utils_1, 1650, 6, 48, 48)).
code(exception_utils_1_code7, array_type, exception_utils_1_code3, type, range(exception_utils_1, 1650, 8, 48, 48)).
code(exception_utils_1_code9, dimension, exception_utils_1_code7, (dimensions, 0), range(exception_utils_1, 1656, 2, 48, 48)).
code(exception_utils_1_code10, variable_declaration_fragment, exception_utils_1_code3, (fragments, 0), range(exception_utils_1, 1659, 347, 48, 61)).
code(exception_utils_1_code11, method_declaration, exception_utils_1_code2, (body_declarations, 15), range(exception_utils_1, 13288, 798, 361, 378)).
code(exception_utils_1_code12, modifier, exception_utils_1_stmt1, (modifiers, 0), range(exception_utils_1, 13898, 5, 374, 374)).
code(exception_utils_1_code13, simple_type, exception_utils_1_stmt1, type, range(exception_utils_1, 13904, 12, 374, 374)).
code(exception_utils_1_code14, variable_declaration_fragment, exception_utils_1_stmt1, (fragments, 0), range(exception_utils_1, 13917, 23, 374, 374)).
code(exception_utils_1_code15, simple_type, exception_utils_1_expr2, type, range(exception_utils_1, 13926, 12, 374, 374)).
code(exception_utils_1_code16, modifier, exception_utils_1_stmt2, (modifiers, 0), range(exception_utils_1, 13950, 5, 375, 375)).
code(exception_utils_1_code17, simple_type, exception_utils_1_stmt2, type, range(exception_utils_1, 13956, 11, 375, 375)).
code(exception_utils_1_code18, variable_declaration_fragment, exception_utils_1_stmt2, (fragments, 0), range(exception_utils_1, 13968, 30, 375, 375)).
code(exception_utils_1_code19, simple_type, exception_utils_1_expr3, type, range(exception_utils_1, 13977, 11, 375, 375)).
%contexted_exception_test_1 - org.apache.commons.lang3.exception.ContextedExceptionTest
code(contexted_exception_test_1_code1, compilation_unit, range(contexted_exception_test_1, 0, 4984, 1, -1)).
code(contexted_exception_test_1_code2, type_declaration, contexted_exception_test_1_code1, (types, 0), range(contexted_exception_test_1, 1236, 3747, 30, 118)).
code(contexted_exception_test_1_code3, modifier, contexted_exception_test_1_code2, (modifiers, 0), range(contexted_exception_test_1, 1283, 6, 33, 33)).
code(contexted_exception_test_1_code4, parameterized_type, contexted_exception_test_1_code2, superclass_type, range(contexted_exception_test_1, 1327, 48, 33, 33)).
code(contexted_exception_test_1_code5, simple_type, contexted_exception_test_1_code4, type, range(contexted_exception_test_1, 1327, 28, 33, 33)).
code(contexted_exception_test_1_code6, simple_type, contexted_exception_test_1_code4, (type_arguments, 0), range(contexted_exception_test_1, 1356, 18, 33, 33)).
code(contexted_exception_test_1_code7, method_declaration, contexted_exception_test_1_code2, (body_declarations, 0), range(contexted_exception_test_1, 1383, 177, 35, 40)).
code(contexted_exception_test_1_code8, simple_type, contexted_exception_test_1_expr2, type, range(contexted_exception_test_1, 1483, 18, 38, 38)).
code(contexted_exception_test_1_code9, simple_type, contexted_exception_test_1_expr3, type, range(contexted_exception_test_1, 1506, 9, 38, 38)).
code(contexted_exception_test_1_code10, method_declaration, contexted_exception_test_1_code2, (body_declarations, 2), range(contexted_exception_test_1, 1926, 130, 51, 54)).
%default_exception_context_1 - org.apache.commons.lang3.exception.DefaultExceptionContext
code(default_exception_context_1_code1, compilation_unit, range(default_exception_context_1, 0, 5093, 1, -1)).
code(default_exception_context_1_code2, type_declaration, default_exception_context_1_code1, (types, 0), range(default_exception_context_1, 1120, 3972, 29, 159)).
code(default_exception_context_1_code3, modifier, default_exception_context_1_code2, (modifiers, 0), range(default_exception_context_1, 1441, 6, 40, 40)).
code(default_exception_context_1_code4, simple_type, default_exception_context_1_code2, (super_interface_types, 0), range(default_exception_context_1, 1489, 16, 40, 40)).
code(default_exception_context_1_code5, simple_type, default_exception_context_1_code2, (super_interface_types, 1), range(default_exception_context_1, 1507, 12, 40, 40)).
code(default_exception_context_1_code6, field_declaration, default_exception_context_1_code2, (body_declarations, 1), range(default_exception_context_1, 1626, 125, 45, 46)).
code(default_exception_context_1_code7, modifier, default_exception_context_1_code6, (modifiers, 0), range(default_exception_context_1, 1676, 7, 46, 46)).
code(default_exception_context_1_code8, modifier, default_exception_context_1_code6, (modifiers, 1), range(default_exception_context_1, 1684, 5, 46, 46)).
code(default_exception_context_1_code9, parameterized_type, default_exception_context_1_code6, type, range(default_exception_context_1, 1690, 26, 46, 46)).
code(default_exception_context_1_code10, simple_type, default_exception_context_1_code9, type, range(default_exception_context_1, 1690, 4, 46, 46)).
code(default_exception_context_1_code11, parameterized_type, default_exception_context_1_code9, (type_arguments, 0), range(default_exception_context_1, 1695, 20, 46, 46)).
code(default_exception_context_1_code12, simple_type, default_exception_context_1_code11, type, range(default_exception_context_1, 1695, 4, 46, 46)).
code(default_exception_context_1_code13, simple_type, default_exception_context_1_code11, (type_arguments, 0), range(default_exception_context_1, 1700, 6, 46, 46)).
code(default_exception_context_1_code14, simple_type, default_exception_context_1_code11, (type_arguments, 1), range(default_exception_context_1, 1708, 6, 46, 46)).
code(default_exception_context_1_code15, variable_declaration_fragment, default_exception_context_1_code6, (fragments, 0), range(default_exception_context_1, 1717, 33, 46, 46)).
code(default_exception_context_1_code17, simple_type, default_exception_context_1_code16, type, range(default_exception_context_1, 1737, 9, 46, 46)).
code(default_exception_context_1_code16, parameterized_type, default_exception_context_1_expr1, type, range(default_exception_context_1, 1737, 11, 46, 46)).
code(default_exception_context_1_code18, method_declaration, default_exception_context_1_code2, (body_declarations, 2), range(default_exception_context_1, 1757, 228, 48, 55)).
code(default_exception_context_1_code20, simple_type, default_exception_context_1_code19, type, range(default_exception_context_1, 1927, 13, 53, 53)).
code(default_exception_context_1_code19, parameterized_type, default_exception_context_1_expr3, type, range(default_exception_context_1, 1927, 15, 53, 53)).
%immutable_pair_1 - org.apache.commons.lang3.tuple.ImmutablePair
code(immutable_pair_1_code1, compilation_unit, range(immutable_pair_1, 0, 6981, 1, -1)).
code(immutable_pair_1_code2, type_declaration, immutable_pair_1_code1, (types, 0), range(immutable_pair_1, 893, 6087, 22, 215)).
code(immutable_pair_1_code3, field_declaration, immutable_pair_1_code2, (body_declarations, 0), range(immutable_pair_1, 1492, 220, 39, 47)).
code(immutable_pair_1_code4, modifier, immutable_pair_1_code3, (modifiers, 0), range(immutable_pair_1, 1653, 6, 47, 47)).
code(immutable_pair_1_code5, modifier, immutable_pair_1_code3, (modifiers, 1), range(immutable_pair_1, 1660, 6, 47, 47)).
code(immutable_pair_1_code6, modifier, immutable_pair_1_code3, (modifiers, 2), range(immutable_pair_1, 1667, 5, 47, 47)).
code(immutable_pair_1_code7, array_type, immutable_pair_1_code3, type, range(immutable_pair_1, 1673, 21, 47, 47)).
code(immutable_pair_1_code9, simple_type, immutable_pair_1_code8, type, range(immutable_pair_1, 1673, 13, 47, 47)).
code(immutable_pair_1_code8, parameterized_type, immutable_pair_1_code7, element_type, range(immutable_pair_1, 1673, 19, 47, 47)).
code(immutable_pair_1_code10, wildcard_type, immutable_pair_1_code8, (type_arguments, 0), range(immutable_pair_1, 1687, 1, 47, 47)).
code(immutable_pair_1_code11, wildcard_type, immutable_pair_1_code8, (type_arguments, 1), range(immutable_pair_1, 1690, 1, 47, 47)).
code(immutable_pair_1_code12, dimension, immutable_pair_1_code7, (dimensions, 0), range(immutable_pair_1, 1692, 2, 47, 47)).
code(immutable_pair_1_code13, variable_declaration_fragment, immutable_pair_1_code3, (fragments, 0), range(immutable_pair_1, 1695, 16, 47, 47)).
code(immutable_pair_1_code14, field_declaration, immutable_pair_1_code2, (body_declarations, 1), range(immutable_pair_1, 1718, 233, 49, 54)).
code(immutable_pair_1_code15, modifier, immutable_pair_1_code14, (modifiers, 1), range(immutable_pair_1, 1877, 7, 54, 54)).
code(immutable_pair_1_code16, modifier, immutable_pair_1_code14, (modifiers, 2), range(immutable_pair_1, 1885, 6, 54, 54)).
code(immutable_pair_1_code17, modifier, immutable_pair_1_code14, (modifiers, 3), range(immutable_pair_1, 1892, 5, 54, 54)).
code(immutable_pair_1_code18, simple_type, immutable_pair_1_code14, type, range(immutable_pair_1, 1898, 13, 54, 54)).
code(immutable_pair_1_code19, variable_declaration_fragment, immutable_pair_1_code14, (fragments, 0), range(immutable_pair_1, 1912, 38, 54, 54)).
code(immutable_pair_1_code20, parameterized_type, immutable_pair_1_expr2, type, range(immutable_pair_1, 1923, 15, 54, 54)).
code(immutable_pair_1_code21, simple_type, immutable_pair_1_code20, type, range(immutable_pair_1, 1923, 13, 54, 54)).
code(immutable_pair_1_code22, method_declaration, immutable_pair_1_code2, (body_declarations, 12), range(immutable_pair_1, 6086, 267, 174, 183)).
code(immutable_pair_1_code23, modifier, immutable_pair_1_code22, (modifiers, 0), range(immutable_pair_1, 6242, 6, 180, 180)).
code(immutable_pair_1_code24, single_variable_declaration, immutable_pair_1_code22, (parameters, 0), range(immutable_pair_1, 6263, 12, 180, 180)).
code(immutable_pair_1_code25, modifier, immutable_pair_1_code24, (modifiers, 0), range(immutable_pair_1, 6263, 5, 180, 180)).
code(immutable_pair_1_code26, simple_type, immutable_pair_1_code24, type, range(immutable_pair_1, 6269, 1, 180, 180)).
code(immutable_pair_1_code27, single_variable_declaration, immutable_pair_1_code22, (parameters, 1), range(immutable_pair_1, 6277, 13, 180, 180)).
code(immutable_pair_1_code28, modifier, immutable_pair_1_code27, (modifiers, 0), range(immutable_pair_1, 6277, 5, 180, 180)).
code(immutable_pair_1_code29, simple_type, immutable_pair_1_code27, type, range(immutable_pair_1, 6283, 1, 180, 180)).
%pair_1 - org.apache.commons.lang3.tuple.Pair
code(pair_1_code1, compilation_unit, range(pair_1, 0, 7784, 1, -1)).
code(pair_1_code2, type_declaration, pair_1_code1, (types, 0), range(pair_1, 981, 6802, 25, 233)).
code(pair_1_code3, modifier, pair_1_code2, (modifiers, 0), range(pair_1, 1614, 6, 41, 41)).
code(pair_1_code4, modifier, pair_1_code2, (modifiers, 1), range(pair_1, 1621, 8, 41, 41)).
code(pair_1_code5, type_parameter, pair_1_code2, (type_parameters, 0), range(pair_1, 1641, 1, 41, 41)).
code(pair_1_code6, type_parameter, pair_1_code2, (type_parameters, 1), range(pair_1, 1644, 1, 41, 41)).
code(pair_1_code8, simple_type, pair_1_code7, type, range(pair_1, 1658, 9, 41, 41)).
code(pair_1_code7, parameterized_type, pair_1_code2, (super_interface_types, 0), range(pair_1, 1658, 15, 41, 41)).
code(pair_1_code9, simple_type, pair_1_code7, (type_arguments, 0), range(pair_1, 1668, 1, 41, 41)).
code(pair_1_code10, simple_type, pair_1_code7, (type_arguments, 1), range(pair_1, 1671, 1, 41, 41)).
code(pair_1_code11, parameterized_type, pair_1_code2, (super_interface_types, 1), range(pair_1, 1675, 22, 41, 41)).
code(pair_1_code12, simple_type, pair_1_code11, type, range(pair_1, 1675, 10, 41, 41)).
code(pair_1_code14, simple_type, pair_1_code13, type, range(pair_1, 1686, 4, 41, 41)).
code(pair_1_code13, parameterized_type, pair_1_code11, (type_arguments, 0), range(pair_1, 1686, 10, 41, 41)).
code(pair_1_code15, simple_type, pair_1_code13, (type_arguments, 0), range(pair_1, 1691, 1, 41, 41)).
code(pair_1_code16, simple_type, pair_1_code13, (type_arguments, 1), range(pair_1, 1694, 1, 41, 41)).
code(pair_1_code17, simple_type, pair_1_code2, (super_interface_types, 2), range(pair_1, 1699, 12, 41, 41)).
code(pair_1_code18, field_declaration, pair_1_code2, (body_declarations, 1), range(pair_1, 1824, 211, 46, 54)).
code(pair_1_code19, modifier, pair_1_code18, (modifiers, 0), range(pair_1, 1985, 6, 54, 54)).
code(pair_1_code20, modifier, pair_1_code18, (modifiers, 1), range(pair_1, 1992, 6, 54, 54)).
code(pair_1_code21, modifier, pair_1_code18, (modifiers, 2), range(pair_1, 1999, 5, 54, 54)).
code(pair_1_code24, simple_type, pair_1_code23, type, range(pair_1, 2005, 4, 54, 54)).
code(pair_1_code22, array_type, pair_1_code18, type, range(pair_1, 2005, 12, 54, 54)).
code(pair_1_code23, parameterized_type, pair_1_code22, element_type, range(pair_1, 2005, 10, 54, 54)).
code(pair_1_code25, wildcard_type, pair_1_code23, (type_arguments, 0), range(pair_1, 2010, 1, 54, 54)).
code(pair_1_code26, wildcard_type, pair_1_code23, (type_arguments, 1), range(pair_1, 2013, 1, 54, 54)).
code(pair_1_code27, dimension, pair_1_code22, (dimensions, 0), range(pair_1, 2015, 2, 54, 54)).
code(pair_1_code28, variable_declaration_fragment, pair_1_code18, (fragments, 0), range(pair_1, 2018, 16, 54, 54)).
%contexted_exception_1 - org.apache.commons.lang3.exception.ContextedException
code(contexted_exception_1_code1, compilation_unit, range(contexted_exception_1, 0, 8701, 1, -1)).
code(contexted_exception_1_code2, type_declaration, contexted_exception_1_code1, (types, 0), range(contexted_exception_1, 939, 7761, 24, 254)).
code(contexted_exception_1_code3, method_declaration, contexted_exception_1_code2, (body_declarations, 4), range(contexted_exception_1, 4009, 387, 115, 125)).
code(contexted_exception_1_code4, simple_type, contexted_exception_1_expr3, type, range(contexted_exception_1, 4364, 23, 124, 124)).
code(contexted_exception_1_code5, method_declaration, contexted_exception_1_code2, (body_declarations, 7), range(contexted_exception_1, 5491, 842, 155, 172)).

%%% Name References

name_ref(t_contexted_exception_test_1, type, 'ContextedExceptionTest', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;').
name_ref(t_default_exception_context_3, type, 'DefaultExceptionContext', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;').
name_ref(t_exception_utils_2, type, 'ExceptionUtils', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;').
name_ref(t_l_5, type, 'L', 'Lorg/apache/commons/lang3/tuple/Pair;:TL;').
name_ref(t_pair_4, type, 'Pair', 'Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;').
name_ref(t_r_6, type, 'R', 'Lorg/apache/commons/lang3/tuple/Pair;:TR;').
name_ref(p_cause_2, param, 'cause', 'contexted_exception_1;cause_line_123').
name_ref(v_pw_42, var, 'pw', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;#pw').
name_ref(v_sw_41, var, 'sw', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;#sw').
name_ref(p_base_message_15, param, 'baseMessage', 'Lorg/apache/commons/lang3/exception/ContextedException;.getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;#baseMessage#0#0').
name_ref(p_base_message_25, param, 'baseMessage', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;#baseMessage#0#0').
name_ref(p_cause_2, param, 'cause', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/Throwable;)V#cause#0#0').
name_ref(p_cause_5, param, 'cause', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;Ljava/lang/Throwable;)V#cause#0#1').
name_ref(p_cause_7, param, 'cause', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/commons/lang3/exception/ExceptionContext;)V#cause#0#1').
name_ref(p_cause_frames_67, param, 'causeFrames', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.removeCommonFrames(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;)V#causeFrames#0#0').
name_ref(p_chain_46, param, 'chain', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.hasCause(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)Z#chain#0#0').
name_ref(p_clazz_53, param, 'clazz', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)I#clazz#0#1').
name_ref(p_clazz_55, param, 'clazz', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;I)I#clazz#0#1').
name_ref(p_clazz_75, param, 'clazz', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfThrowable<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;)TT;#clazz#0#1').
name_ref(p_clazz_77, param, 'clazz', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfThrowable<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;I)TT;#clazz#0#1').
name_ref(p_context_8, param, 'context', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/commons/lang3/exception/ExceptionContext;)V#context#0#2').
name_ref(p_format_107, param, 'format', 'Lorg/apache/commons/lang3/tuple/Pair;.toString(Ljava/lang/String;)Ljava/lang/String;#format#0#0').
name_ref(p_from_index_50, param, 'fromIndex', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOf(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;IZ)I#fromIndex#0#2').
name_ref(p_from_index_56, param, 'fromIndex', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;I)I#fromIndex#0#2').
name_ref(p_from_index_61, param, 'fromIndex', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfType(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;I)I#fromIndex#0#2').
name_ref(p_from_index_72, param, 'fromIndex', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOf<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;IZ)TT;#fromIndex#0#2').
name_ref(p_from_index_78, param, 'fromIndex', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfThrowable<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;I)TT;#fromIndex#0#2').
name_ref(p_from_index_83, param, 'fromIndex', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfType<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;I)TT;#fromIndex#0#2').
name_ref(p_label_11, param, 'label', 'Lorg/apache/commons/lang3/exception/ContextedException;.setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;#label#0#0').
name_ref(p_label_13, param, 'label', 'Lorg/apache/commons/lang3/exception/ContextedException;.getContextValues(Ljava/lang/String;)Ljava/util/List<Ljava/lang/Object;>;#label#0#0').
name_ref(p_label_14, param, 'label', 'Lorg/apache/commons/lang3/exception/ContextedException;.getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;#label#0#0').
name_ref(p_label_19, param, 'label', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;#label#0#0').
name_ref(p_label_21, param, 'label', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;#label#0#0').
name_ref(p_label_23, param, 'label', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.getContextValues(Ljava/lang/String;)Ljava/util/List<Ljava/lang/Object;>;#label#0#0').
name_ref(p_label_24, param, 'label', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;#label#0#0').
name_ref(p_label_9, param, 'label', 'Lorg/apache/commons/lang3/exception/ContextedException;.addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;#label#0#0').
name_ref(p_left_100, param, 'left', 'Lorg/apache/commons/lang3/tuple/Pair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;#left#0#0').
name_ref(p_left_103, param, 'left', 'Lorg/apache/commons/lang3/tuple/Pair;.ofNonNull<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;#left#0#0').
name_ref(p_left_87, param, 'left', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.left<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;#left#0#0').
name_ref(p_left_88, param, 'left', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;#left#0#0').
name_ref(p_left_91, param, 'left', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.ofNonNull<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;#left#0#0').
name_ref(p_left_94, param, 'left', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.(TL;TR;)V#left#0#0').
name_ref(p_message_1, param, 'message', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;)V#message#0#0').
name_ref(p_message_4, param, 'message', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;Ljava/lang/Throwable;)V#message#0#0').
name_ref(p_message_6, param, 'message', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/commons/lang3/exception/ExceptionContext;)V#message#0#0').
name_ref(p_method_name_32, param, 'methodName', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;#methodName#0#1').
name_ref(p_method_names_30, param, 'methodNames', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;#methodNames#0#1').
name_ref(p_obj_106, param, 'obj', 'Lorg/apache/commons/lang3/tuple/Pair;.equals(Ljava/lang/Object;)Z#obj#0#0').
name_ref(p_other_105, param, 'other', 'Lorg/apache/commons/lang3/tuple/Pair;.compareTo(Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;)I#other#0#0').
name_ref(p_pair_102, param, 'pair', 'Lorg/apache/commons/lang3/tuple/Pair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/Map$Entry<TL;TR;>;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;#pair#0#0').
name_ref(p_pair_90, param, 'pair', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/Map$Entry<TL;TR;>;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;#pair#0#0').
name_ref(p_print_stream_64, param, 'printStream', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V#printStream#0#1').
name_ref(p_print_writer_66, param, 'printWriter', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V#printWriter#0#1').
name_ref(p_right_101, param, 'right', 'Lorg/apache/commons/lang3/tuple/Pair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;#right#0#1').
name_ref(p_right_104, param, 'right', 'Lorg/apache/commons/lang3/tuple/Pair;.ofNonNull<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;#right#0#1').
name_ref(p_right_89, param, 'right', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;#right#0#1').
name_ref(p_right_92, param, 'right', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.ofNonNull<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;#right#0#1').
name_ref(p_right_93, param, 'right', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.right<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TR;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;#right#0#0').
name_ref(p_right_95, param, 'right', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.(TL;TR;)V#right#0#1').
name_ref(p_stack_trace_38, param, 'stackTrace', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackFrames(Ljava/lang/String;)[Ljava/lang/String;#stackTrace#0#0').
name_ref(p_subclass_51, param, 'subclass', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOf(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;IZ)I#subclass#0#3').
name_ref(p_subclass_73, param, 'subclass', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOf<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;IZ)TT;#subclass#0#3').
name_ref(p_th_33, param, 'th', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getMessage(Ljava/lang/Throwable;)Ljava/lang/String;#th#0#0').
name_ref(p_throwable_27, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.eraseType<R:Ljava/lang/Object;T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;)TR;^TT;#throwable#0#0').
name_ref(p_throwable_28, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;#throwable#0#0').
name_ref(p_throwable_29, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;#throwable#0#0').
name_ref(p_throwable_31, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;#throwable#0#0').
name_ref(p_throwable_34, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;#throwable#0#0').
name_ref(p_throwable_35, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;#throwable#0#0').
name_ref(p_throwable_36, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;#throwable#0#0').
name_ref(p_throwable_37, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List<Ljava/lang/String;>;#throwable#0#0').
name_ref(p_throwable_39, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;#throwable#0#0').
name_ref(p_throwable_40, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;#throwable#0#0').
name_ref(p_throwable_43, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getThrowableCount(Ljava/lang/Throwable;)I#throwable#0#0').
name_ref(p_throwable_44, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getThrowableList(Ljava/lang/Throwable;)Ljava/util/List<Ljava/lang/Throwable;>;#throwable#0#0').
name_ref(p_throwable_45, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;#throwable#0#0').
name_ref(p_throwable_48, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOf(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;IZ)I#throwable#0#0').
name_ref(p_throwable_52, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)I#throwable#0#0').
name_ref(p_throwable_54, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;I)I#throwable#0#0').
name_ref(p_throwable_57, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfType(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)I#throwable#0#0').
name_ref(p_throwable_59, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfType(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;I)I#throwable#0#0').
name_ref(p_throwable_62, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.printRootCauseStackTrace(Ljava/lang/Throwable;)V#throwable#0#0').
name_ref(p_throwable_63, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V#throwable#0#0').
name_ref(p_throwable_65, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V#throwable#0#0').
name_ref(p_throwable_69, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.rethrow<R:Ljava/lang/Object;>(Ljava/lang/Throwable;)TR;#throwable#0#0').
name_ref(p_throwable_70, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOf<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;IZ)TT;#throwable#0#0').
name_ref(p_throwable_74, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfThrowable<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;)TT;#throwable#0#0').
name_ref(p_throwable_76, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfThrowable<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;I)TT;#throwable#0#0').
name_ref(p_throwable_79, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfType<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;)TT;#throwable#0#0').
name_ref(p_throwable_81, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfType<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;I)TT;#throwable#0#0').
name_ref(p_throwable_84, param, 'throwable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.wrapAndThrow<R:Ljava/lang/Object;>(Ljava/lang/Throwable;)TR;#throwable#0#0').
name_ref(p_type_47, param, 'type', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.hasCause(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)Z#type#0#1').
name_ref(p_type_49, param, 'type', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOf(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;IZ)I#type#0#1').
name_ref(p_type_58, param, 'type', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfType(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)I#type#0#1').
name_ref(p_type_60, param, 'type', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfType(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;I)I#type#0#1').
name_ref(p_type_71, param, 'type', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOf<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;IZ)TT;#type#0#1').
name_ref(p_type_80, param, 'type', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfType<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;)TT;#type#0#1').
name_ref(p_type_82, param, 'type', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfType<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;I)TT;#type#0#1').
name_ref(p_value_10, param, 'value', 'Lorg/apache/commons/lang3/exception/ContextedException;.addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;#value#0#1').
name_ref(p_value_12, param, 'value', 'Lorg/apache/commons/lang3/exception/ContextedException;.setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;#value#0#1').
name_ref(p_value_20, param, 'value', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;#value#0#1').
name_ref(p_value_22, param, 'value', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;#value#0#1').
name_ref(p_value_98, param, 'value', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.setValue(TR;)TR;#value#0#0').
name_ref(p_wrapper_frames_68, param, 'wrapperFrames', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.removeCommonFrames(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;)V#wrapperFrames#0#1').
name_ref(f_cause_method_names_26, field, 'CAUSE_METHOD_NAMES', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.CAUSE_METHOD_NAMES)[Ljava/lang/String;').
name_ref(f_context_values_18, field, 'contextValues', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.contextValues)Ljava/util/List<Lorg/apache/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;').
name_ref(f_empty_array_85, field, 'EMPTY_ARRAY', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.EMPTY_ARRAY)[Lorg/apache/commons/lang3/tuple/ImmutablePair<Lorg/apache/commons/lang3/tuple/ImmutablePair;{0}*Lorg/apache/commons/lang3/tuple/ImmutablePair;{1}*>;').
name_ref(f_empty_array_99, field, 'EMPTY_ARRAY', 'Lorg/apache/commons/lang3/tuple/Pair;.EMPTY_ARRAY)[Lorg/apache/commons/lang3/tuple/Pair<Lorg/apache/commons/lang3/tuple/Pair;{0}*Lorg/apache/commons/lang3/tuple/Pair;{1}*>;').
name_ref(f_exception_context_16, field, 'exceptionContext', 'Lorg/apache/commons/lang3/exception/AbstractExceptionContextTest<Lorg/apache/commons/lang3/exception/ContextedException;>;.exceptionContext)Lorg/apache/commons/lang3/exception/ContextedException;').
name_ref(f_exception_context_3, field, 'exceptionContext', 'Lorg/apache/commons/lang3/exception/ContextedException;.exceptionContext)Lorg/apache/commons/lang3/exception/ExceptionContext;').
name_ref(f_left_96, field, 'left', 'Lorg/apache/commons/lang3/tuple/ImmutablePair<Lorg/apache/commons/lang3/tuple/ImmutablePair;:TL;Lorg/apache/commons/lang3/tuple/ImmutablePair;:TR;>;.left)Lorg/apache/commons/lang3/tuple/ImmutablePair;:TL;').
name_ref(f_null_86, field, 'NULL', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.NULL)Lorg/apache/commons/lang3/tuple/ImmutablePair<>;').
name_ref(f_right_97, field, 'right', 'Lorg/apache/commons/lang3/tuple/ImmutablePair<Lorg/apache/commons/lang3/tuple/ImmutablePair;:TL;Lorg/apache/commons/lang3/tuple/ImmutablePair;:TR;>;.right)Lorg/apache/commons/lang3/tuple/ImmutablePair;:TR;').
name_ref(f_test_message_17, field, 'TEST_MESSAGE', 'Lorg/apache/commons/lang3/exception/AbstractExceptionContextTest<Lorg/apache/commons/lang3/exception/ContextedException;>;.TEST_MESSAGE)Ljava/lang/String;').
name_ref(m_add_33, method, 'add', 'Ljava/util/List;.add(TE;)Z').
name_ref(m_add_context_value_32, method, 'addContextValue', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;').
name_ref(m_add_context_value_8, method, 'addContextValue', 'Lorg/apache/commons/lang3/exception/ContextedException;.addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;').
name_ref(m_add_context_value_9, method, 'addContextValue', 'Lorg/apache/commons/lang3/exception/ExceptionContext;.addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;').
name_ref(m_array_list_31, method, 'ArrayList', 'Ljava/util/ArrayList;.()V').
name_ref(m_assert_equals_23, method, 'assertEquals', 'Lorg/junit/jupiter/api/Assertions;.assertEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V').
name_ref(m_compare_to_91, method, 'compareTo', 'Lorg/apache/commons/lang3/tuple/Pair;.compareTo(Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;)I').
name_ref(m_contexted_exception_1, method, 'ContextedException', 'Lorg/apache/commons/lang3/exception/ContextedException;.()V').
name_ref(m_contexted_exception_2, method, 'ContextedException', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;)V').
name_ref(m_contexted_exception_3, method, 'ContextedException', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/Throwable;)V').
name_ref(m_contexted_exception_6, method, 'ContextedException', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;Ljava/lang/Throwable;)V').
name_ref(m_contexted_exception_7, method, 'ContextedException', 'Lorg/apache/commons/lang3/exception/ContextedException;.(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/commons/lang3/exception/ExceptionContext;)V').
name_ref(m_default_exception_context_5, method, 'DefaultExceptionContext', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.()V').
name_ref(m_empty_array_77, method, 'emptyArray', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.emptyArray<L:Ljava/lang/Object;R:Ljava/lang/Object;>()[Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;').
name_ref(m_empty_array_87, method, 'emptyArray', 'Lorg/apache/commons/lang3/tuple/Pair;.emptyArray<L:Ljava/lang/Object;R:Ljava/lang/Object;>()[Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;').
name_ref(m_equals_92, method, 'equals', 'Lorg/apache/commons/lang3/tuple/Pair;.equals(Ljava/lang/Object;)Z').
name_ref(m_erase_type_41, method, 'eraseType', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.eraseType<R:Ljava/lang/Object;T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;)TR;^TT;').
name_ref(m_exception_19, method, 'Exception', 'Ljava/lang/Exception;.(Ljava/lang/String;)V').
name_ref(m_exception_4, method, 'Exception', 'Ljava/lang/Exception;.(Ljava/lang/Throwable;)V').
name_ref(m_exception_utils_76, method, 'ExceptionUtils', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.()V').
name_ref(m_get_cause_42, method, 'getCause', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;').
name_ref(m_get_cause_43, method, 'getCause', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;').
name_ref(m_get_cause_using_method_name_44, method, 'getCauseUsingMethodName', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;').
name_ref(m_get_context_entries_13, method, 'getContextEntries', 'Lorg/apache/commons/lang3/exception/ContextedException;.getContextEntries()Ljava/util/List<Lorg/apache/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;').
name_ref(m_get_context_entries_39, method, 'getContextEntries', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.getContextEntries()Ljava/util/List<Lorg/apache/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;').
name_ref(m_get_context_labels_14, method, 'getContextLabels', 'Lorg/apache/commons/lang3/exception/ContextedException;.getContextLabels()Ljava/util/Set<Ljava/lang/String;>;').
name_ref(m_get_context_labels_38, method, 'getContextLabels', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.getContextLabels()Ljava/util/Set<Ljava/lang/String;>;').
name_ref(m_get_context_values_11, method, 'getContextValues', 'Lorg/apache/commons/lang3/exception/ContextedException;.getContextValues(Ljava/lang/String;)Ljava/util/List<Ljava/lang/Object;>;').
name_ref(m_get_context_values_36, method, 'getContextValues', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.getContextValues(Ljava/lang/String;)Ljava/util/List<Ljava/lang/Object;>;').
name_ref(m_get_default_cause_method_names_45, method, 'getDefaultCauseMethodNames', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getDefaultCauseMethodNames()[Ljava/lang/String;').
name_ref(m_get_first_context_value_12, method, 'getFirstContextValue', 'Lorg/apache/commons/lang3/exception/ContextedException;.getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;').
name_ref(m_get_first_context_value_37, method, 'getFirstContextValue', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;').
name_ref(m_get_formatted_exception_message_17, method, 'getFormattedExceptionMessage', 'Lorg/apache/commons/lang3/exception/ContextedException;.getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_formatted_exception_message_40, method, 'getFormattedExceptionMessage', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_get_key_93, method, 'getKey', 'Lorg/apache/commons/lang3/tuple/Pair;.getKey()TL;').
name_ref(m_get_left_84, method, 'getLeft', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.getLeft()TL;').
name_ref(m_get_left_94, method, 'getLeft', 'Lorg/apache/commons/lang3/tuple/Pair;.getLeft()TL;').
name_ref(m_get_message_15, method, 'getMessage', 'Lorg/apache/commons/lang3/exception/ContextedException;.getMessage()Ljava/lang/String;').
name_ref(m_get_message_46, method, 'getMessage', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getMessage(Ljava/lang/Throwable;)Ljava/lang/String;').
name_ref(m_get_raw_message_16, method, 'getRawMessage', 'Lorg/apache/commons/lang3/exception/ContextedException;.getRawMessage()Ljava/lang/String;').
name_ref(m_get_right_85, method, 'getRight', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.getRight()TR;').
name_ref(m_get_right_95, method, 'getRight', 'Lorg/apache/commons/lang3/tuple/Pair;.getRight()TR;').
name_ref(m_get_root_cause_47, method, 'getRootCause', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;').
name_ref(m_get_root_cause_message_48, method, 'getRootCauseMessage', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;').
name_ref(m_get_root_cause_stack_trace_49, method, 'getRootCauseStackTrace', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;').
name_ref(m_get_stack_frame_list_50, method, 'getStackFrameList', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List<Ljava/lang/String;>;').
name_ref(m_get_stack_frames_51, method, 'getStackFrames', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackFrames(Ljava/lang/String;)[Ljava/lang/String;').
name_ref(m_get_stack_frames_52, method, 'getStackFrames', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;').
name_ref(m_get_stack_trace_24, method, 'getStackTrace', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;').
name_ref(m_get_throwable_count_56, method, 'getThrowableCount', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getThrowableCount(Ljava/lang/Throwable;)I').
name_ref(m_get_throwable_list_57, method, 'getThrowableList', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getThrowableList(Ljava/lang/Throwable;)Ljava/util/List<Ljava/lang/Throwable;>;').
name_ref(m_get_throwables_58, method, 'getThrowables', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;').
name_ref(m_get_value_96, method, 'getValue', 'Lorg/apache/commons/lang3/tuple/Pair;.getValue()TR;').
name_ref(m_has_cause_59, method, 'hasCause', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.hasCause(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)Z').
name_ref(m_hash_code_97, method, 'hashCode', 'Lorg/apache/commons/lang3/tuple/Pair;.hashCode()I').
name_ref(m_immutable_pair_34, method, 'ImmutablePair', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.(TL;TR;)V').
name_ref(m_index_of_60, method, 'indexOf', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOf(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;IZ)I').
name_ref(m_index_of_throwable_61, method, 'indexOfThrowable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)I').
name_ref(m_index_of_throwable_62, method, 'indexOfThrowable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;I)I').
name_ref(m_index_of_type_63, method, 'indexOfType', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfType(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)I').
name_ref(m_index_of_type_64, method, 'indexOfType', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.indexOfType(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;I)I').
name_ref(m_left_78, method, 'left', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.left<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;').
name_ref(m_null_pair_79, method, 'nullPair', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.nullPair<L:Ljava/lang/Object;R:Ljava/lang/Object;>()Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;').
name_ref(m_of_80, method, 'of', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;').
name_ref(m_of_81, method, 'of', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/Map$Entry<TL;TR;>;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;').
name_ref(m_of_88, method, 'of', 'Lorg/apache/commons/lang3/tuple/Pair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;').
name_ref(m_of_89, method, 'of', 'Lorg/apache/commons/lang3/tuple/Pair;.of<L:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/Map$Entry<TL;TR;>;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;').
name_ref(m_of_non_null_82, method, 'ofNonNull', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.ofNonNull<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/ImmutablePair<TL;TR;>;').
name_ref(m_of_non_null_90, method, 'ofNonNull', 'Lorg/apache/commons/lang3/tuple/Pair;.ofNonNull<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TL;TR;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;').
name_ref(m_print_root_cause_stack_trace_65, method, 'printRootCauseStackTrace', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.printRootCauseStackTrace(Ljava/lang/Throwable;)V').
name_ref(m_print_root_cause_stack_trace_66, method, 'printRootCauseStackTrace', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V').
name_ref(m_print_root_cause_stack_trace_67, method, 'printRootCauseStackTrace', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V').
name_ref(m_print_stack_trace_55, method, 'printStackTrace', 'Ljava/lang/Throwable;.printStackTrace(Ljava/io/PrintWriter;)V').
name_ref(m_print_writer_54, method, 'PrintWriter', 'Ljava/io/PrintWriter;.(Ljava/io/Writer;Z)V').
name_ref(m_remove_common_frames_68, method, 'removeCommonFrames', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.removeCommonFrames(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;)V').
name_ref(m_rethrow_69, method, 'rethrow', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.rethrow<R:Ljava/lang/Object;>(Ljava/lang/Throwable;)TR;').
name_ref(m_right_83, method, 'right', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.right<L:Ljava/lang/Object;R:Ljava/lang/Object;>(TR;)Lorg/apache/commons/lang3/tuple/Pair<TL;TR;>;').
name_ref(m_set_context_value_10, method, 'setContextValue', 'Lorg/apache/commons/lang3/exception/ContextedException;.setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;').
name_ref(m_set_context_value_35, method, 'setContextValue', 'Lorg/apache/commons/lang3/exception/DefaultExceptionContext;.setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;').
name_ref(m_set_up_18, method, 'setUp', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.setUp()V|Ljava/lang/Exception;').
name_ref(m_set_up_20, method, 'setUp', 'Lorg/apache/commons/lang3/exception/AbstractExceptionContextTest;.setUp()V|Ljava/lang/Exception;').
name_ref(m_set_value_86, method, 'setValue', 'Lorg/apache/commons/lang3/tuple/ImmutablePair;.setValue(TR;)TR;').
name_ref(m_string_writer_53, method, 'StringWriter', 'Ljava/io/StringWriter;.()V').
name_ref(m_test_contexted_exception_21, method, 'testContextedException', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.testContextedException()V').
name_ref(m_test_contexted_exception_string_25, method, 'testContextedExceptionString', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.testContextedExceptionString()V').
name_ref(m_test_contexted_exception_string_throwable_27, method, 'testContextedExceptionStringThrowable', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.testContextedExceptionStringThrowable()V').
name_ref(m_test_contexted_exception_string_throwable_context_28, method, 'testContextedExceptionStringThrowableContext', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.testContextedExceptionStringThrowableContext()V').
name_ref(m_test_contexted_exception_throwable_26, method, 'testContextedExceptionThrowable', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.testContextedExceptionThrowable()V').
name_ref(m_test_null_exception_22, method, 'testNullException', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.testNullException()V').
name_ref(m_test_null_exception_passing_29, method, 'testNullExceptionPassing', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.testNullExceptionPassing()V').
name_ref(m_test_raw_message_30, method, 'testRawMessage', 'Lorg/apache/commons/lang3/exception/ContextedExceptionTest;.testRawMessage()V').
name_ref(m_throwable_of_70, method, 'throwableOf', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOf<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;IZ)TT;').
name_ref(m_throwable_of_throwable_71, method, 'throwableOfThrowable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfThrowable<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;)TT;').
name_ref(m_throwable_of_throwable_72, method, 'throwableOfThrowable', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfThrowable<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;I)TT;').
name_ref(m_throwable_of_type_73, method, 'throwableOfType', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfType<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;)TT;').
name_ref(m_throwable_of_type_74, method, 'throwableOfType', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.throwableOfType<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;Ljava/lang/Class<TT;>;I)TT;').
name_ref(m_to_string_98, method, 'toString', 'Lorg/apache/commons/lang3/tuple/Pair;.toString()Ljava/lang/String;').
name_ref(m_to_string_99, method, 'toString', 'Lorg/apache/commons/lang3/tuple/Pair;.toString(Ljava/lang/String;)Ljava/lang/String;').
name_ref(m_wrap_and_throw_75, method, 'wrapAndThrow', 'Lorg/apache/commons/lang3/exception/ExceptionUtils;.wrapAndThrow<R:Ljava/lang/Object;>(Ljava/lang/Throwable;)TR;').

%%% End of Code Facts