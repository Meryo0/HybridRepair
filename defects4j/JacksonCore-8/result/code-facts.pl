%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(buffer_recycler_1, 'com.fasterxml.jackson.core.util.BufferRecycler').
class(text_buffer_1, 'com.fasterxml.jackson.core.util.TextBuffer').
class(test_text_buffer_1, 'com.fasterxml.jackson.core.util.TestTextBuffer').

%%% Methods
%buffer_recycler_1 - com.fasterxml.jackson.core.util.BufferRecycler
method(m_buffer_recycler_1, range(buffer_recycler_1, 2023, 161, 57, 63)).
method(m_buffer_recycler_2, range(buffer_recycler_1, 2190, 313, 65, 74)).
method(m_alloc_byte_buffer_3, range(buffer_recycler_1, 2689, 169, 82, 87)).
method(m_alloc_byte_buffer_4, range(buffer_recycler_1, 2864, 409, 89, 101)).
method(m_release_byte_buffer_5, range(buffer_recycler_1, 3279, 101, 103, 105)).
method(m_alloc_char_buffer_6, range(buffer_recycler_1, 3566, 90, 113, 115)).
method(m_alloc_char_buffer_7, range(buffer_recycler_1, 3662, 409, 117, 129)).
method(m_release_char_buffer_8, range(buffer_recycler_1, 4077, 95, 131, 133)).
method(m_byte_buffer_length_9, range(buffer_recycler_1, 4356, 86, 141, 143)).
method(m_char_buffer_length_10, range(buffer_recycler_1, 4448, 86, 145, 147)).
method(m_balloc_11, range(buffer_recycler_1, 4755, 60, 155, 155)).
method(m_calloc_12, range(buffer_recycler_1, 4820, 60, 156, 156)).
%text_buffer_1 - com.fasterxml.jackson.core.util.TextBuffer
method(m_text_buffer_18, range(text_buffer_1, 3386, 83, 121, 123)).
method(m_release_buffers_22, range(text_buffer_1, 3475, 937, 125, 148)).
method(m_reset_with_empty_19, range(text_buffer_1, 4418, 510, 150, 168)).
method(m_reset_with_shared_23, range(text_buffer_1, 4934, 757, 170, 191)).
method(m_reset_with_copy_24, range(text_buffer_1, 5697, 535, 193, 210)).
method(m_reset_with_string_25, range(text_buffer_1, 6238, 295, 212, 226)).
method(m_buf_26, range(text_buffer_1, 6543, 338, 228, 238)).
method(m_clear_segments_27, range(text_buffer_1, 6887, 471, 240, 252)).
method(m_size_28, range(text_buffer_1, 7559, 469, 260, 275)).
method(m_get_text_offset_29, range(text_buffer_1, 8034, 301, 277, 283)).
method(m_has_text_as_characters_30, range(text_buffer_1, 8341, 421, 285, 296)).
method(m_get_text_buffer_21, range(text_buffer_1, 8772, 523, 298, 310)).
method(m_contents_as_string_31, range(text_buffer_1, 9469, 1713, 318, 355)).
method(m_contents_as_array_32, range(text_buffer_1, 11189, 191, 357, 363)).
method(m_contents_as_decimal_33, range(text_buffer_1, 11386, 857, 365, 385)).
method(m_contents_as_double_34, range(text_buffer_1, 12249, 237, 387, 393)).
method(m_ensure_not_shared_35, range(text_buffer_1, 12660, 263, 401, 409)).
method(m_append_36, range(text_buffer_1, 12929, 420, 411, 425)).
method(m_append_37, range(text_buffer_1, 13355, 1201, 427, 463)).
method(m_append_38, range(text_buffer_1, 14562, 1196, 465, 500)).
method(m_get_current_segment_39, range(text_buffer_1, 15953, 644, 508, 526)).
method(m_empty_and_get_current_segment_40, range(text_buffer_1, 16603, 566, 528, 548)).
method(m_get_current_segment_size_41, range(text_buffer_1, 17175, 59, 550, 550)).
method(m_set_current_length_42, range(text_buffer_1, 17239, 61, 551, 551)).
method(m_set_current_and_return_43, range(text_buffer_1, 17306, 519, 553, 567)).
method(m_finish_current_segment_44, range(text_buffer_1, 17835, 654, 569, 589)).
method(m_expand_current_segment_45, range(text_buffer_1, 18495, 622, 591, 607)).
method(m_expand_current_segment_46, range(text_buffer_1, 19123, 530, 609, 623)).
method(m_to_string_47, range(text_buffer_1, 19828, 249, 631, 636)).
method(m_unshare_48, range(text_buffer_1, 20252, 772, 644, 667)).
method(m_expand_49, range(text_buffer_1, 21030, 814, 669, 694)).
method(m_result_array_50, range(text_buffer_1, 21850, 1168, 696, 730)).
method(m_carr_51, range(text_buffer_1, 23024, 54, 732, 732)).
%test_text_buffer_1 - com.fasterxml.jackson.core.util.TestTextBuffer
method(m_test_simple_13, range(test_text_buffer_1, 124, 449, 6, 20)).
method(m_test_longer_14, range(test_text_buffer_1, 579, 432, 22, 34)).
method(m_test_long_append_15, range(test_text_buffer_1, 1019, 878, 36, 61)).
method(m_test_expand_16, range(test_text_buffer_1, 1925, 453, 64, 76)).
method(m_test_empty_17, range(test_text_buffer_1, 2402, 258, 79, 86)).

%%% Blocks
%buffer_recycler_1 - com.fasterxml.jackson.core.util.BufferRecycler
block(buffer_recycler_1_block1, block, buffer_recycler_1_code25, body, range(buffer_recycler_1, 2157, 27, 61, 63)).
block(buffer_recycler_1_block2, block, buffer_recycler_1_code26, body, range(buffer_recycler_1, 2408, 95, 71, 74)).
%text_buffer_1 - com.fasterxml.jackson.core.util.TextBuffer
block(text_buffer_1_block1, block, text_buffer_1_code17, body, range(text_buffer_1, 3430, 39, 121, 123)).
block(text_buffer_1_block2, block, text_buffer_1_code21, body, range(text_buffer_1, 4589, 339, 155, 168)).
block(text_buffer_1_block3, block, text_buffer_1_stmt8, then_statement, range(text_buffer_1, 4882, 40, 165, 167)).
block(text_buffer_1_block4, block, text_buffer_1_code22, body, range(text_buffer_1, 8806, 489, 299, 310)).
block(text_buffer_1_block5, block, text_buffer_1_stmt13, then_statement, range(text_buffer_1, 9000, 76, 303, 305)).
%test_text_buffer_1 - com.fasterxml.jackson.core.util.TestTextBuffer
block(test_text_buffer_1_block1, block, test_text_buffer_1_code4, body, range(test_text_buffer_1, 2426, 234, 79, 86)).

%%% Statements
%buffer_recycler_1 - com.fasterxml.jackson.core.util.BufferRecycler
stmt(buffer_recycler_1_stmt1, constructor_invocation, buffer_recycler_1_block1, (statements, 0), range(buffer_recycler_1, 2167, 11, 62, 62)).
stmt(buffer_recycler_1_stmt2, expression_statement, buffer_recycler_1_block2, (statements, 0), range(buffer_recycler_1, 2418, 35, 72, 72)).
stmt(buffer_recycler_1_stmt3, expression_statement, buffer_recycler_1_block2, (statements, 1), range(buffer_recycler_1, 2462, 35, 73, 73)).
%text_buffer_1 - com.fasterxml.jackson.core.util.TextBuffer
stmt(text_buffer_1_stmt1, expression_statement, text_buffer_1_block1, (statements, 0), range(text_buffer_1, 3440, 23, 122, 122)).
stmt(text_buffer_1_stmt2, expression_statement, text_buffer_1_block2, (statements, 0), range(text_buffer_1, 4599, 17, 156, 156)).
stmt(text_buffer_1_stmt3, expression_statement, text_buffer_1_block2, (statements, 1), range(text_buffer_1, 4661, 17, 157, 157)).
stmt(text_buffer_1_stmt4, expression_statement, text_buffer_1_block2, (statements, 2), range(text_buffer_1, 4687, 14, 158, 158)).
stmt(text_buffer_1_stmt5, expression_statement, text_buffer_1_block2, (statements, 3), range(text_buffer_1, 4711, 20, 160, 160)).
stmt(text_buffer_1_stmt6, expression_statement, text_buffer_1_block2, (statements, 4), range(text_buffer_1, 4740, 21, 161, 161)).
stmt(text_buffer_1_stmt7, expression_statement, text_buffer_1_block2, (statements, 5), range(text_buffer_1, 4770, 20, 162, 162)).
stmt(text_buffer_1_stmt8, if_statement, text_buffer_1_block2, (statements, 6), range(text_buffer_1, 4864, 58, 165, 167)).
stmt(text_buffer_1_stmt9, if_statement, text_buffer_1_block4, (statements, 0), range(text_buffer_1, 8866, 42, 301, 301)).
stmt(text_buffer_1_stmt10, return_statement, text_buffer_1_stmt9, thenStatement, range(text_buffer_1, 8888, 20, 301, 301)).
stmt(text_buffer_1_stmt11, if_statement, text_buffer_1_block4, (statements, 1), range(text_buffer_1, 8917, 47, 302, 302)).
stmt(text_buffer_1_stmt12, return_statement, text_buffer_1_stmt11, thenStatement, range(text_buffer_1, 8944, 20, 302, 302)).
stmt(text_buffer_1_stmt13, if_statement, text_buffer_1_block4, (statements, 2), range(text_buffer_1, 8973, 103, 303, 305)).
stmt(text_buffer_1_stmt14, if_statement, text_buffer_1_block4, (statements, 3), range(text_buffer_1, 9139, 43, 307, 307)).
stmt(text_buffer_1_stmt15, return_statement, text_buffer_1_stmt14, thenStatement, range(text_buffer_1, 9159, 23, 307, 307)).
%test_text_buffer_1 - com.fasterxml.jackson.core.util.TestTextBuffer
stmt(test_text_buffer_1_stmt1, variable_declaration_statement, test_text_buffer_1_block1, (statements, 0), range(test_text_buffer_1, 2436, 53, 80, 80)).
stmt(test_text_buffer_1_stmt2, expression_statement, test_text_buffer_1_block1, (statements, 1), range(test_text_buffer_1, 2498, 20, 81, 81)).
stmt(test_text_buffer_1_stmt3, expression_statement, test_text_buffer_1_block1, (statements, 2), range(test_text_buffer_1, 2528, 43, 83, 83)).

%%% Expressions
%buffer_recycler_1 - com.fasterxml.jackson.core.util.BufferRecycler
expr(buffer_recycler_1_expr1, array_creation, buffer_recycler_1_code10, initializer, range(buffer_recycler_1, 1632, 36, 45, 45), "new int[]{8000,8000,2000,2000}").
expr(buffer_recycler_1_expr2, array_initializer, buffer_recycler_1_expr1, initializer, range(buffer_recycler_1, 1642, 26, 45, 45), "{8000,8000,2000,2000}").
expr(buffer_recycler_1_expr3, array_creation, buffer_recycler_1_code21, initializer, range(buffer_recycler_1, 1723, 34, 46, 46), "new int[]{4000,4000,200,200}").
expr(buffer_recycler_1_expr4, array_initializer, buffer_recycler_1_expr3, initializer, range(buffer_recycler_1, 1733, 24, 46, 46), "{4000,4000,200,200}").
expr(buffer_recycler_1_expr5, constructor_invocation, buffer_recycler_1_block1, (statements, 0), range(buffer_recycler_1, 2167, 11, 62, 62), "this(4,4);").
expr(buffer_recycler_1_expr6, assignment, buffer_recycler_1_stmt2, expression, range(buffer_recycler_1, 2418, 34, 72, 72), "_byteBuffers=new byte[bbCount][]").
expr(buffer_recycler_1_expr7, array_creation, buffer_recycler_1_expr6, right_hand_side, range(buffer_recycler_1, 2433, 19, 72, 72), "new byte[bbCount][]").
expr(buffer_recycler_1_expr8, assignment, buffer_recycler_1_stmt3, expression, range(buffer_recycler_1, 2462, 34, 73, 73), "_charBuffers=new char[cbCount][]").
expr(buffer_recycler_1_expr9, array_creation, buffer_recycler_1_expr8, right_hand_side, range(buffer_recycler_1, 2477, 19, 73, 73), "new char[cbCount][]").
%text_buffer_1 - com.fasterxml.jackson.core.util.TextBuffer
expr(text_buffer_1_expr1, array_creation, text_buffer_1_code9, initializer, range(text_buffer_1, 925, 11, 29, 29), "new char[0]").
expr(text_buffer_1_expr2, assignment, text_buffer_1_stmt1, expression, range(text_buffer_1, 3440, 22, 122, 122), "_allocator=allocator").
expr(text_buffer_1_expr3, assignment, text_buffer_1_stmt2, expression, range(text_buffer_1, 4599, 16, 156, 156), "_inputStart=-1").
expr(text_buffer_1_expr4, prefix_expression, text_buffer_1_expr3, right_hand_side, range(text_buffer_1, 4613, 2, 156, 156), "-1").
expr(text_buffer_1_expr5, assignment, text_buffer_1_stmt3, expression, range(text_buffer_1, 4661, 16, 157, 157), "_currentSize=0").
expr(text_buffer_1_expr6, assignment, text_buffer_1_stmt4, expression, range(text_buffer_1, 4687, 13, 158, 158), "_inputLen=0").
expr(text_buffer_1_expr7, assignment, text_buffer_1_stmt5, expression, range(text_buffer_1, 4711, 19, 160, 160), "_inputBuffer=null").
expr(text_buffer_1_expr8, assignment, text_buffer_1_stmt6, expression, range(text_buffer_1, 4740, 20, 161, 161), "_resultString=null").
expr(text_buffer_1_expr9, assignment, text_buffer_1_stmt7, expression, range(text_buffer_1, 4770, 19, 162, 162), "_resultArray=null").
expr(text_buffer_1_expr10, infix_expression, text_buffer_1_stmt9, expression, range(text_buffer_1, 8870, 16, 301, 301), "_inputStart >= 0").
expr(text_buffer_1_expr11, infix_expression, text_buffer_1_stmt11, expression, range(text_buffer_1, 8921, 20, 302, 302), "_resultArray != null").
expr(text_buffer_1_expr12, infix_expression, text_buffer_1_stmt13, expression, range(text_buffer_1, 8977, 21, 303, 303), "_resultString != null").
expr(text_buffer_1_expr13, prefix_expression, text_buffer_1_stmt14, expression, range(text_buffer_1, 9143, 13, 307, 307), "!_hasSegments").
%test_text_buffer_1 - com.fasterxml.jackson.core.util.TestTextBuffer
expr(test_text_buffer_1_expr1, class_instance_creation, test_text_buffer_1_code6, initializer, range(test_text_buffer_1, 2452, 36, 80, 80), "new TextBuffer(new BufferRecycler())").
expr(test_text_buffer_1_expr2, class_instance_creation, test_text_buffer_1_expr1, (arguments, 0), range(test_text_buffer_1, 2467, 20, 80, 80), "new BufferRecycler()").
expr(test_text_buffer_1_expr3, method_invocation, test_text_buffer_1_stmt2, expression, range(test_text_buffer_1, 2498, 19, 81, 81), "tb.resetWithEmpty()").
expr(test_text_buffer_1_expr4, method_invocation, test_text_buffer_1_stmt3, expression, range(test_text_buffer_1, 2528, 42, 83, 83), "assertTrue(tb.getTextBuffer().length == 0)").
expr(test_text_buffer_1_expr7, method_invocation, test_text_buffer_1_expr6, expression, range(test_text_buffer_1, 2539, 18, 83, 83), "tb.getTextBuffer()").
expr(test_text_buffer_1_expr5, infix_expression, test_text_buffer_1_expr4, (arguments, 0), range(test_text_buffer_1, 2539, 30, 83, 83), "tb.getTextBuffer().length == 0").
expr(test_text_buffer_1_expr6, field_access, test_text_buffer_1_expr5, left_operand, range(test_text_buffer_1, 2539, 25, 83, 83), "tb.getTextBuffer().length").

%%% Names
%buffer_recycler_1 - com.fasterxml.jackson.core.util.BufferRecycler
name(f_byte_buffer_lengths_1, simple_name, buffer_recycler_1_code10, name, range(buffer_recycler_1, 1610, 19, 45, 45), 'BYTE_BUFFER_LENGTHS').
name(f_char_buffer_lengths_2, simple_name, buffer_recycler_1_code21, name, range(buffer_recycler_1, 1701, 19, 46, 46), 'CHAR_BUFFER_LENGTHS').
name(m_buffer_recycler_2, simple_name, buffer_recycler_1_code26, name, range(buffer_recycler_1, 2367, 14, 71, 71), 'BufferRecycler').
name(p_bb_count_3, simple_name, buffer_recycler_1_code28, name, range(buffer_recycler_1, 2386, 7, 71, 71), 'bbCount').
name(p_cb_count_4, simple_name, buffer_recycler_1_code30, name, range(buffer_recycler_1, 2399, 7, 71, 71), 'cbCount').
name(f__byte_buffers_5, simple_name, buffer_recycler_1_expr6, left_hand_side, range(buffer_recycler_1, 2418, 12, 72, 72), '_byteBuffers').
name(p_bb_count_3, simple_name, buffer_recycler_1_expr7, (dimensions, 0), range(buffer_recycler_1, 2442, 7, 72, 72), 'bbCount').
name(f__char_buffers_6, simple_name, buffer_recycler_1_expr8, left_hand_side, range(buffer_recycler_1, 2462, 12, 73, 73), '_charBuffers').
name(p_cb_count_4, simple_name, buffer_recycler_1_expr9, (dimensions, 0), range(buffer_recycler_1, 2486, 7, 73, 73), 'cbCount').
%text_buffer_1 - com.fasterxml.jackson.core.util.TextBuffer
name(f_no_chars_23, simple_name, text_buffer_1_code9, name, range(text_buffer_1, 914, 8, 29, 29), 'NO_CHARS').
name(f__has_segments_24, simple_name, text_buffer_1_code16, name, range(text_buffer_1, 2482, 12, 85, 85), '_hasSegments').
name(m_text_buffer_18, simple_name, text_buffer_1_code17, name, range(text_buffer_1, 3393, 10, 121, 121), 'TextBuffer').
name(p_allocator_25, simple_name, text_buffer_1_code19, name, range(text_buffer_1, 3419, 9, 121, 121), 'allocator').
name(f__allocator_26, simple_name, text_buffer_1_expr2, left_hand_side, range(text_buffer_1, 3440, 10, 122, 122), '_allocator').
name(p_allocator_25, simple_name, text_buffer_1_expr2, right_hand_side, range(text_buffer_1, 3453, 9, 122, 122), 'allocator').
name(f__input_start_27, simple_name, text_buffer_1_expr3, left_hand_side, range(text_buffer_1, 4599, 11, 156, 156), '_inputStart').
name(f__current_size_28, simple_name, text_buffer_1_expr5, left_hand_side, range(text_buffer_1, 4661, 12, 157, 157), '_currentSize').
name(f__input_len_29, simple_name, text_buffer_1_expr6, left_hand_side, range(text_buffer_1, 4687, 9, 158, 158), '_inputLen').
name(f__input_buffer_30, simple_name, text_buffer_1_expr7, left_hand_side, range(text_buffer_1, 4711, 12, 160, 160), '_inputBuffer').
name(f__result_string_31, simple_name, text_buffer_1_expr8, left_hand_side, range(text_buffer_1, 4740, 13, 161, 161), '_resultString').
name(f__result_array_32, simple_name, text_buffer_1_expr9, left_hand_side, range(text_buffer_1, 4770, 12, 162, 162), '_resultArray').
name(f__has_segments_24, simple_name, text_buffer_1_stmt8, expression, range(text_buffer_1, 4868, 12, 165, 165), '_hasSegments').
name(f__input_start_27, simple_name, text_buffer_1_expr10, left_operand, range(text_buffer_1, 8870, 11, 301, 301), '_inputStart').
name(f__input_buffer_30, simple_name, text_buffer_1_stmt10, expression, range(text_buffer_1, 8895, 12, 301, 301), '_inputBuffer').
name(f__result_array_32, simple_name, text_buffer_1_expr11, left_operand, range(text_buffer_1, 8921, 12, 302, 302), '_resultArray').
name(f__result_array_32, simple_name, text_buffer_1_stmt12, expression, range(text_buffer_1, 8951, 12, 302, 302), '_resultArray').
name(f__result_string_31, simple_name, text_buffer_1_expr12, left_operand, range(text_buffer_1, 8977, 13, 303, 303), '_resultString').
name(f__has_segments_24, simple_name, text_buffer_1_expr13, operand, range(text_buffer_1, 9144, 12, 307, 307), '_hasSegments').
name(f__current_segment_41, simple_name, text_buffer_1_stmt15, expression, range(text_buffer_1, 9166, 15, 307, 307), '_currentSegment').
%test_text_buffer_1 - com.fasterxml.jackson.core.util.TestTextBuffer
name(t_test_text_buffer_1, simple_name, test_text_buffer_1_code2, name, range(test_text_buffer_1, 55, 14, 3, 3), 'TestTextBuffer').
name(v_tb_21, simple_name, test_text_buffer_1_code6, name, range(test_text_buffer_1, 2447, 2, 80, 80), 'tb').
name(v_tb_21, simple_name, test_text_buffer_1_expr3, expression, range(test_text_buffer_1, 2498, 2, 81, 81), 'tb').
name(m_reset_with_empty_19, simple_name, test_text_buffer_1_expr3, name, range(test_text_buffer_1, 2501, 14, 81, 81), 'resetWithEmpty').
name(m_assert_true_20, simple_name, test_text_buffer_1_expr4, name, range(test_text_buffer_1, 2528, 10, 83, 83), 'assertTrue').
name(v_tb_21, simple_name, test_text_buffer_1_expr7, expression, range(test_text_buffer_1, 2539, 2, 83, 83), 'tb').
name(m_get_text_buffer_21, simple_name, test_text_buffer_1_expr7, name, range(test_text_buffer_1, 2542, 13, 83, 83), 'getTextBuffer').
name(f_length_22, simple_name, test_text_buffer_1_expr6, name, range(test_text_buffer_1, 2558, 6, 83, 83), 'length').

%%% Literals
%buffer_recycler_1 - com.fasterxml.jackson.core.util.BufferRecycler
literal(buffer_recycler_1_literal1, number_literal, buffer_recycler_1_expr2, (expressions, 0), range(buffer_recycler_1, 1644, 4, 45, 45), 8000).
literal(buffer_recycler_1_literal2, number_literal, buffer_recycler_1_expr2, (expressions, 1), range(buffer_recycler_1, 1650, 4, 45, 45), 8000).
literal(buffer_recycler_1_literal3, number_literal, buffer_recycler_1_expr2, (expressions, 2), range(buffer_recycler_1, 1656, 4, 45, 45), 2000).
literal(buffer_recycler_1_literal4, number_literal, buffer_recycler_1_expr2, (expressions, 3), range(buffer_recycler_1, 1662, 4, 45, 45), 2000).
literal(buffer_recycler_1_literal5, number_literal, buffer_recycler_1_expr4, (expressions, 0), range(buffer_recycler_1, 1735, 4, 46, 46), 4000).
literal(buffer_recycler_1_literal6, number_literal, buffer_recycler_1_expr4, (expressions, 1), range(buffer_recycler_1, 1741, 4, 46, 46), 4000).
literal(buffer_recycler_1_literal7, number_literal, buffer_recycler_1_expr4, (expressions, 2), range(buffer_recycler_1, 1747, 3, 46, 46), 200).
literal(buffer_recycler_1_literal8, number_literal, buffer_recycler_1_expr4, (expressions, 3), range(buffer_recycler_1, 1752, 3, 46, 46), 200).
literal(buffer_recycler_1_literal9, number_literal, buffer_recycler_1_stmt1, (arguments, 0), range(buffer_recycler_1, 2172, 1, 62, 62), 4).
literal(buffer_recycler_1_literal10, number_literal, buffer_recycler_1_stmt1, (arguments, 1), range(buffer_recycler_1, 2175, 1, 62, 62), 4).
%text_buffer_1 - com.fasterxml.jackson.core.util.TextBuffer
literal(text_buffer_1_literal1, number_literal, text_buffer_1_expr1, (dimensions, 0), range(text_buffer_1, 934, 1, 29, 29), 0).
literal(text_buffer_1_literal2, boolean_literal, text_buffer_1_code16, initializer, range(text_buffer_1, 2497, 5, 85, 85), false).
literal(text_buffer_1_literal3, number_literal, text_buffer_1_expr4, operand, range(text_buffer_1, 4614, 1, 156, 156), 1).
literal(text_buffer_1_literal4, number_literal, text_buffer_1_expr5, right_hand_side, range(text_buffer_1, 4676, 1, 157, 157), 0).
literal(text_buffer_1_literal5, number_literal, text_buffer_1_expr6, right_hand_side, range(text_buffer_1, 4699, 1, 158, 158), 0).
literal(text_buffer_1_literal6, null_literal, text_buffer_1_expr7, right_hand_side, range(text_buffer_1, 4726, 4, 160, 160), null).
literal(text_buffer_1_literal7, null_literal, text_buffer_1_expr8, right_hand_side, range(text_buffer_1, 4756, 4, 161, 161), null).
literal(text_buffer_1_literal8, null_literal, text_buffer_1_expr9, right_hand_side, range(text_buffer_1, 4785, 4, 162, 162), null).
literal(text_buffer_1_literal9, number_literal, text_buffer_1_expr10, right_operand, range(text_buffer_1, 8885, 1, 301, 301), 0).
literal(text_buffer_1_literal10, null_literal, text_buffer_1_expr11, right_operand, range(text_buffer_1, 8937, 4, 302, 302), null).
literal(text_buffer_1_literal11, null_literal, text_buffer_1_expr12, right_operand, range(text_buffer_1, 8994, 4, 303, 303), null).
%test_text_buffer_1 - com.fasterxml.jackson.core.util.TestTextBuffer
literal(test_text_buffer_1_literal1, number_literal, test_text_buffer_1_expr5, right_operand, range(test_text_buffer_1, 2568, 1, 83, 83), 0).

%%% Other Code Entities
%buffer_recycler_1 - com.fasterxml.jackson.core.util.BufferRecycler
code(buffer_recycler_1_code1, compilation_unit, range(buffer_recycler_1, 0, 4883, 1, -1)).
code(buffer_recycler_1_code2, type_declaration, buffer_recycler_1_code1, (types, 0), range(buffer_recycler_1, 42, 4840, 3, 157)).
code(buffer_recycler_1_code4, modifier, buffer_recycler_1_code3, (modifiers, 0), range(buffer_recycler_1, 1583, 7, 45, 45)).
code(buffer_recycler_1_code3, field_declaration, buffer_recycler_1_code2, (body_declarations, 8), range(buffer_recycler_1, 1583, 86, 45, 45)).
code(buffer_recycler_1_code5, modifier, buffer_recycler_1_code3, (modifiers, 1), range(buffer_recycler_1, 1591, 5, 45, 45)).
code(buffer_recycler_1_code6, modifier, buffer_recycler_1_code3, (modifiers, 2), range(buffer_recycler_1, 1597, 6, 45, 45)).
code(buffer_recycler_1_code7, array_type, buffer_recycler_1_code3, type, range(buffer_recycler_1, 1604, 5, 45, 45)).
code(buffer_recycler_1_code8, primitive_type, buffer_recycler_1_code7, element_type, range(buffer_recycler_1, 1604, 3, 45, 45)).
code(buffer_recycler_1_code9, dimension, buffer_recycler_1_code7, (dimensions, 0), range(buffer_recycler_1, 1607, 2, 45, 45)).
code(buffer_recycler_1_code10, variable_declaration_fragment, buffer_recycler_1_code3, (fragments, 0), range(buffer_recycler_1, 1610, 58, 45, 45)).
code(buffer_recycler_1_code11, array_type, buffer_recycler_1_expr1, type, range(buffer_recycler_1, 1636, 5, 45, 45)).
code(buffer_recycler_1_code12, primitive_type, buffer_recycler_1_code11, element_type, range(buffer_recycler_1, 1636, 3, 45, 45)).
code(buffer_recycler_1_code13, dimension, buffer_recycler_1_code11, (dimensions, 0), range(buffer_recycler_1, 1639, 2, 45, 45)).
code(buffer_recycler_1_code15, modifier, buffer_recycler_1_code14, (modifiers, 0), range(buffer_recycler_1, 1674, 7, 46, 46)).
code(buffer_recycler_1_code14, field_declaration, buffer_recycler_1_code2, (body_declarations, 9), range(buffer_recycler_1, 1674, 84, 46, 46)).
code(buffer_recycler_1_code16, modifier, buffer_recycler_1_code14, (modifiers, 1), range(buffer_recycler_1, 1682, 5, 46, 46)).
code(buffer_recycler_1_code17, modifier, buffer_recycler_1_code14, (modifiers, 2), range(buffer_recycler_1, 1688, 6, 46, 46)).
code(buffer_recycler_1_code18, array_type, buffer_recycler_1_code14, type, range(buffer_recycler_1, 1695, 5, 46, 46)).
code(buffer_recycler_1_code19, primitive_type, buffer_recycler_1_code18, element_type, range(buffer_recycler_1, 1695, 3, 46, 46)).
code(buffer_recycler_1_code20, dimension, buffer_recycler_1_code18, (dimensions, 0), range(buffer_recycler_1, 1698, 2, 46, 46)).
code(buffer_recycler_1_code21, variable_declaration_fragment, buffer_recycler_1_code14, (fragments, 0), range(buffer_recycler_1, 1701, 56, 46, 46)).
code(buffer_recycler_1_code23, primitive_type, buffer_recycler_1_code22, element_type, range(buffer_recycler_1, 1727, 3, 46, 46)).
code(buffer_recycler_1_code22, array_type, buffer_recycler_1_expr3, type, range(buffer_recycler_1, 1727, 5, 46, 46)).
code(buffer_recycler_1_code24, dimension, buffer_recycler_1_code22, (dimensions, 0), range(buffer_recycler_1, 1730, 2, 46, 46)).
code(buffer_recycler_1_code25, method_declaration, buffer_recycler_1_code2, (body_declarations, 12), range(buffer_recycler_1, 2023, 161, 57, 63)).
code(buffer_recycler_1_code26, method_declaration, buffer_recycler_1_code2, (body_declarations, 13), range(buffer_recycler_1, 2190, 313, 65, 74)).
code(buffer_recycler_1_code27, modifier, buffer_recycler_1_code26, (modifiers, 0), range(buffer_recycler_1, 2357, 9, 71, 71)).
code(buffer_recycler_1_code28, single_variable_declaration, buffer_recycler_1_code26, (parameters, 0), range(buffer_recycler_1, 2382, 11, 71, 71)).
code(buffer_recycler_1_code29, primitive_type, buffer_recycler_1_code28, type, range(buffer_recycler_1, 2382, 3, 71, 71)).
code(buffer_recycler_1_code31, primitive_type, buffer_recycler_1_code30, type, range(buffer_recycler_1, 2395, 3, 71, 71)).
code(buffer_recycler_1_code30, single_variable_declaration, buffer_recycler_1_code26, (parameters, 1), range(buffer_recycler_1, 2395, 11, 71, 71)).
code(buffer_recycler_1_code33, primitive_type, buffer_recycler_1_code32, element_type, range(buffer_recycler_1, 2437, 4, 72, 72)).
code(buffer_recycler_1_code32, array_type, buffer_recycler_1_expr7, type, range(buffer_recycler_1, 2437, 15, 72, 72)).
code(buffer_recycler_1_code34, dimension, buffer_recycler_1_code32, (dimensions, 0), range(buffer_recycler_1, 2441, 9, 72, 72)).
code(buffer_recycler_1_code35, dimension, buffer_recycler_1_code32, (dimensions, 1), range(buffer_recycler_1, 2450, 2, 72, 72)).
code(buffer_recycler_1_code37, primitive_type, buffer_recycler_1_code36, element_type, range(buffer_recycler_1, 2481, 4, 73, 73)).
code(buffer_recycler_1_code36, array_type, buffer_recycler_1_expr9, type, range(buffer_recycler_1, 2481, 15, 73, 73)).
code(buffer_recycler_1_code38, dimension, buffer_recycler_1_code36, (dimensions, 0), range(buffer_recycler_1, 2485, 9, 73, 73)).
code(buffer_recycler_1_code39, dimension, buffer_recycler_1_code36, (dimensions, 1), range(buffer_recycler_1, 2494, 2, 73, 73)).
%text_buffer_1 - com.fasterxml.jackson.core.util.TextBuffer
code(text_buffer_1_code1, compilation_unit, range(text_buffer_1, 0, 23081, 1, -1)).
code(text_buffer_1_code2, type_declaration, text_buffer_1_code1, (types, 0), range(text_buffer_1, 176, 22904, 9, 733)).
code(text_buffer_1_code3, field_declaration, text_buffer_1_code2, (body_declarations, 0), range(text_buffer_1, 894, 43, 29, 29)).
code(text_buffer_1_code4, modifier, text_buffer_1_code3, (modifiers, 0), range(text_buffer_1, 894, 5, 29, 29)).
code(text_buffer_1_code5, modifier, text_buffer_1_code3, (modifiers, 1), range(text_buffer_1, 900, 6, 29, 29)).
code(text_buffer_1_code6, array_type, text_buffer_1_code3, type, range(text_buffer_1, 907, 6, 29, 29)).
code(text_buffer_1_code7, primitive_type, text_buffer_1_code6, element_type, range(text_buffer_1, 907, 4, 29, 29)).
code(text_buffer_1_code8, dimension, text_buffer_1_code6, (dimensions, 0), range(text_buffer_1, 911, 2, 29, 29)).
code(text_buffer_1_code9, variable_declaration_fragment, text_buffer_1_code3, (fragments, 0), range(text_buffer_1, 914, 22, 29, 29)).
code(text_buffer_1_code11, primitive_type, text_buffer_1_code10, element_type, range(text_buffer_1, 929, 4, 29, 29)).
code(text_buffer_1_code10, array_type, text_buffer_1_expr1, type, range(text_buffer_1, 929, 7, 29, 29)).
code(text_buffer_1_code12, dimension, text_buffer_1_code10, (dimensions, 0), range(text_buffer_1, 933, 3, 29, 29)).
code(text_buffer_1_code13, field_declaration, text_buffer_1_code2, (body_declarations, 8), range(text_buffer_1, 2392, 111, 82, 85)).
code(text_buffer_1_code14, modifier, text_buffer_1_code13, (modifiers, 0), range(text_buffer_1, 2466, 7, 85, 85)).
code(text_buffer_1_code15, primitive_type, text_buffer_1_code13, type, range(text_buffer_1, 2474, 7, 85, 85)).
code(text_buffer_1_code16, variable_declaration_fragment, text_buffer_1_code13, (fragments, 0), range(text_buffer_1, 2482, 20, 85, 85)).
code(text_buffer_1_code18, modifier, text_buffer_1_code17, (modifiers, 0), range(text_buffer_1, 3386, 6, 121, 121)).
code(text_buffer_1_code17, method_declaration, text_buffer_1_code2, (body_declarations, 14), range(text_buffer_1, 3386, 83, 121, 123)).
code(text_buffer_1_code20, simple_type, text_buffer_1_code19, type, range(text_buffer_1, 3404, 14, 121, 121)).
code(text_buffer_1_code19, single_variable_declaration, text_buffer_1_code17, (parameters, 0), range(text_buffer_1, 3404, 24, 121, 121)).
code(text_buffer_1_code21, method_declaration, text_buffer_1_code2, (body_declarations, 16), range(text_buffer_1, 4418, 510, 150, 168)).
code(text_buffer_1_code22, method_declaration, text_buffer_1_code2, (body_declarations, 25), range(text_buffer_1, 8772, 523, 298, 310)).
%test_text_buffer_1 - com.fasterxml.jackson.core.util.TestTextBuffer
code(test_text_buffer_1_code1, compilation_unit, range(test_text_buffer_1, 0, 2663, 1, -1)).
code(test_text_buffer_1_code3, modifier, test_text_buffer_1_code2, (modifiers, 0), range(test_text_buffer_1, 42, 6, 3, 3)).
code(test_text_buffer_1_code2, type_declaration, test_text_buffer_1_code1, (types, 0), range(test_text_buffer_1, 42, 2620, 3, 87)).
code(test_text_buffer_1_code4, method_declaration, test_text_buffer_1_code2, (body_declarations, 4), range(test_text_buffer_1, 2402, 258, 79, 86)).
code(test_text_buffer_1_code5, simple_type, test_text_buffer_1_stmt1, type, range(test_text_buffer_1, 2436, 10, 80, 80)).
code(test_text_buffer_1_code6, variable_declaration_fragment, test_text_buffer_1_stmt1, (fragments, 0), range(test_text_buffer_1, 2447, 41, 80, 80)).
code(test_text_buffer_1_code7, simple_type, test_text_buffer_1_expr1, type, range(test_text_buffer_1, 2456, 10, 80, 80)).
code(test_text_buffer_1_code8, simple_type, test_text_buffer_1_expr2, type, range(test_text_buffer_1, 2471, 14, 80, 80)).

%%% Name References

name_ref(t_test_text_buffer_1, type, 'TestTextBuffer', 'Lcom/fasterxml/jackson/core/util/TestTextBuffer;').
name_ref(v_tb_21, var, 'tb', 'Lcom/fasterxml/jackson/core/util/TestTextBuffer;.testEmpty()V#tb').
name_ref(p_allocator_25, param, 'allocator', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V#allocator#0#0').
name_ref(p_bb_count_3, param, 'bbCount', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.(II)V#bbCount#0#0').
name_ref(p_buf_33, param, 'buf', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithShared([CII)V#buf#0#0').
name_ref(p_buf_36, param, 'buf', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithCopy([CII)V#buf#0#0').
name_ref(p_buffer_11, param, 'buffer', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.releaseByteBuffer(I[B)V#buffer#0#1').
name_ref(p_buffer_16, param, 'buffer', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.releaseCharBuffer(I[C)V#buffer#0#1').
name_ref(p_c_42, param, 'c', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append(C)V#c#0#0').
name_ref(p_c_43, param, 'c', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append([CII)V#c#0#0').
name_ref(p_cb_count_4, param, 'cbCount', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.(II)V#cbCount#0#1').
name_ref(p_ix_10, param, 'ix', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.releaseByteBuffer(I[B)V#ix#0#0').
name_ref(p_ix_12, param, 'ix', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocCharBuffer(I)[C#ix#0#0').
name_ref(p_ix_13, param, 'ix', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocCharBuffer(II)[C#ix#0#0').
name_ref(p_ix_15, param, 'ix', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.releaseCharBuffer(I[C)V#ix#0#0').
name_ref(p_ix_17, param, 'ix', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.byteBufferLength(I)I#ix#0#0').
name_ref(p_ix_18, param, 'ix', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.charBufferLength(I)I#ix#0#0').
name_ref(p_ix_7, param, 'ix', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocByteBuffer(I)[B#ix#0#0').
name_ref(p_ix_8, param, 'ix', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocByteBuffer(II)[B#ix#0#0').
name_ref(p_len_35, param, 'len', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithShared([CII)V#len#0#2').
name_ref(p_len_38, param, 'len', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithCopy([CII)V#len#0#2').
name_ref(p_len_45, param, 'len', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append([CII)V#len#0#2').
name_ref(p_len_48, param, 'len', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append(Ljava/lang/String;II)V#len#0#2').
name_ref(p_len_49, param, 'len', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.setCurrentLength(I)V#len#0#0').
name_ref(p_len_50, param, 'len', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.setCurrentAndReturn(I)Ljava/lang/String;#len#0#0').
name_ref(p_len_54, param, 'len', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.carr(I)[C#len#0#0').
name_ref(p_min_new_segment_size_53, param, 'minNewSegmentSize', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.expand(I)V#minNewSegmentSize#0#0').
name_ref(p_min_size_14, param, 'minSize', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocCharBuffer(II)[C#minSize#0#1').
name_ref(p_min_size_51, param, 'minSize', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.expandCurrentSegment(I)[C#minSize#0#0').
name_ref(p_min_size_9, param, 'minSize', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocByteBuffer(II)[B#minSize#0#1').
name_ref(p_need_extra_52, param, 'needExtra', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.unshare(I)V#needExtra#0#0').
name_ref(p_needed_40, param, 'needed', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.buf(I)[C#needed#0#0').
name_ref(p_offset_47, param, 'offset', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append(Ljava/lang/String;II)V#offset#0#1').
name_ref(p_size_19, param, 'size', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.balloc(I)[B#size#0#0').
name_ref(p_size_20, param, 'size', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.calloc(I)[C#size#0#0').
name_ref(p_start_34, param, 'start', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithShared([CII)V#start#0#1').
name_ref(p_start_37, param, 'start', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithCopy([CII)V#start#0#1').
name_ref(p_start_44, param, 'start', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append([CII)V#start#0#1').
name_ref(p_str_46, param, 'str', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append(Ljava/lang/String;II)V#str#0#0').
name_ref(p_value_39, param, 'value', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithString(Ljava/lang/String;)V#value#0#0').
name_ref(f__allocator_26, field, '_allocator', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._allocator)Lcom/fasterxml/jackson/core/util/BufferRecycler;').
name_ref(f__byte_buffers_5, field, '_byteBuffers', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;._byteBuffers)[[B').
name_ref(f__char_buffers_6, field, '_charBuffers', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;._charBuffers)[[C').
name_ref(f__current_segment_41, field, '_currentSegment', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._currentSegment)[C').
name_ref(f__current_size_28, field, '_currentSize', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._currentSize)I').
name_ref(f__has_segments_24, field, '_hasSegments', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._hasSegments)Z').
name_ref(f__input_buffer_30, field, '_inputBuffer', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._inputBuffer)[C').
name_ref(f__input_len_29, field, '_inputLen', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._inputLen)I').
name_ref(f__input_start_27, field, '_inputStart', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._inputStart)I').
name_ref(f__result_array_32, field, '_resultArray', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._resultArray)[C').
name_ref(f__result_string_31, field, '_resultString', 'Lcom/fasterxml/jackson/core/util/TextBuffer;._resultString)Ljava/lang/String;').
name_ref(f_byte_buffer_lengths_1, field, 'BYTE_BUFFER_LENGTHS', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.BYTE_BUFFER_LENGTHS)[I').
name_ref(f_char_buffer_lengths_2, field, 'CHAR_BUFFER_LENGTHS', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.CHAR_BUFFER_LENGTHS)[I').
name_ref(f_length_22, field, 'length', '.length)I').
name_ref(f_no_chars_23, field, 'NO_CHARS', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.NO_CHARS)[C').
name_ref(m_alloc_byte_buffer_3, method, 'allocByteBuffer', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocByteBuffer(I)[B').
name_ref(m_alloc_byte_buffer_4, method, 'allocByteBuffer', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocByteBuffer(II)[B').
name_ref(m_alloc_char_buffer_6, method, 'allocCharBuffer', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocCharBuffer(I)[C').
name_ref(m_alloc_char_buffer_7, method, 'allocCharBuffer', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.allocCharBuffer(II)[C').
name_ref(m_append_36, method, 'append', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append(C)V').
name_ref(m_append_37, method, 'append', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append([CII)V').
name_ref(m_append_38, method, 'append', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.append(Ljava/lang/String;II)V').
name_ref(m_assert_true_20, method, 'assertTrue', 'Ljunit/framework/TestCase;.assertTrue(Z)V').
name_ref(m_balloc_11, method, 'balloc', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.balloc(I)[B').
name_ref(m_buf_26, method, 'buf', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.buf(I)[C').
name_ref(m_buffer_recycler_1, method, 'BufferRecycler', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.()V').
name_ref(m_buffer_recycler_2, method, 'BufferRecycler', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.(II)V').
name_ref(m_byte_buffer_length_9, method, 'byteBufferLength', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.byteBufferLength(I)I').
name_ref(m_calloc_12, method, 'calloc', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.calloc(I)[C').
name_ref(m_carr_51, method, 'carr', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.carr(I)[C').
name_ref(m_char_buffer_length_10, method, 'charBufferLength', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.charBufferLength(I)I').
name_ref(m_clear_segments_27, method, 'clearSegments', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.clearSegments()V').
name_ref(m_contents_as_array_32, method, 'contentsAsArray', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.contentsAsArray()[C').
name_ref(m_contents_as_decimal_33, method, 'contentsAsDecimal', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.contentsAsDecimal()Ljava/math/BigDecimal;|Ljava/lang/NumberFormatException;').
name_ref(m_contents_as_double_34, method, 'contentsAsDouble', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.contentsAsDouble()D|Ljava/lang/NumberFormatException;').
name_ref(m_contents_as_string_31, method, 'contentsAsString', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.contentsAsString()Ljava/lang/String;').
name_ref(m_empty_and_get_current_segment_40, method, 'emptyAndGetCurrentSegment', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.emptyAndGetCurrentSegment()[C').
name_ref(m_ensure_not_shared_35, method, 'ensureNotShared', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.ensureNotShared()V').
name_ref(m_expand_49, method, 'expand', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.expand(I)V').
name_ref(m_expand_current_segment_45, method, 'expandCurrentSegment', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.expandCurrentSegment()[C').
name_ref(m_expand_current_segment_46, method, 'expandCurrentSegment', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.expandCurrentSegment(I)[C').
name_ref(m_finish_current_segment_44, method, 'finishCurrentSegment', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.finishCurrentSegment()[C').
name_ref(m_get_current_segment_39, method, 'getCurrentSegment', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.getCurrentSegment()[C').
name_ref(m_get_current_segment_size_41, method, 'getCurrentSegmentSize', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.getCurrentSegmentSize()I').
name_ref(m_get_text_buffer_21, method, 'getTextBuffer', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.getTextBuffer()[C').
name_ref(m_get_text_offset_29, method, 'getTextOffset', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.getTextOffset()I').
name_ref(m_has_text_as_characters_30, method, 'hasTextAsCharacters', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.hasTextAsCharacters()Z').
name_ref(m_release_buffers_22, method, 'releaseBuffers', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.releaseBuffers()V').
name_ref(m_release_byte_buffer_5, method, 'releaseByteBuffer', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.releaseByteBuffer(I[B)V').
name_ref(m_release_char_buffer_8, method, 'releaseCharBuffer', 'Lcom/fasterxml/jackson/core/util/BufferRecycler;.releaseCharBuffer(I[C)V').
name_ref(m_reset_with_copy_24, method, 'resetWithCopy', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithCopy([CII)V').
name_ref(m_reset_with_empty_19, method, 'resetWithEmpty', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithEmpty()V').
name_ref(m_reset_with_shared_23, method, 'resetWithShared', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithShared([CII)V').
name_ref(m_reset_with_string_25, method, 'resetWithString', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resetWithString(Ljava/lang/String;)V').
name_ref(m_result_array_50, method, 'resultArray', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.resultArray()[C').
name_ref(m_set_current_and_return_43, method, 'setCurrentAndReturn', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.setCurrentAndReturn(I)Ljava/lang/String;').
name_ref(m_set_current_length_42, method, 'setCurrentLength', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.setCurrentLength(I)V').
name_ref(m_size_28, method, 'size', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.size()I').
name_ref(m_test_empty_17, method, 'testEmpty', 'Lcom/fasterxml/jackson/core/util/TestTextBuffer;.testEmpty()V').
name_ref(m_test_expand_16, method, 'testExpand', 'Lcom/fasterxml/jackson/core/util/TestTextBuffer;.testExpand()V').
name_ref(m_test_long_append_15, method, 'testLongAppend', 'Lcom/fasterxml/jackson/core/util/TestTextBuffer;.testLongAppend()V').
name_ref(m_test_longer_14, method, 'testLonger', 'Lcom/fasterxml/jackson/core/util/TestTextBuffer;.testLonger()V').
name_ref(m_test_simple_13, method, 'testSimple', 'Lcom/fasterxml/jackson/core/util/TestTextBuffer;.testSimple()V').
name_ref(m_text_buffer_18, method, 'TextBuffer', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V').
name_ref(m_to_string_47, method, 'toString', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.toString()Ljava/lang/String;').
name_ref(m_unshare_48, method, 'unshare', 'Lcom/fasterxml/jackson/core/util/TextBuffer;.unshare(I)V').

%%% End of Code Facts