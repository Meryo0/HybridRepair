%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(reader_input_stream_1, 'org.apache.commons.io.input.ReaderInputStream').

%%% Methods
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
method(m_check_min_buffer_size_1, range(reader_input_stream_1, 4311, 447, 84, 91)).
method(m_min_buffer_size_2, range(reader_input_stream_1, 4764, 124, 93, 95)).
method(m_reader_input_stream_4, range(reader_input_stream_1, 5487, 442, 116, 126)).
method(m_reader_input_stream_5, range(reader_input_stream_1, 5935, 376, 128, 137)).
method(m_reader_input_stream_6, range(reader_input_stream_1, 6317, 611, 139, 154)).
method(m_reader_input_stream_11, range(reader_input_stream_1, 6934, 337, 156, 165)).
method(m_reader_input_stream_7, range(reader_input_stream_1, 7277, 663, 167, 182)).
method(m_reader_input_stream_13, range(reader_input_stream_1, 7946, 399, 184, 193)).
method(m_reader_input_stream_14, range(reader_input_stream_1, 8351, 423, 195, 204)).
method(m_close_15, range(reader_input_stream_1, 8780, 250, 206, 214)).
method(m_fill_buffer_16, range(reader_input_stream_1, 9036, 1205, 216, 245)).
method(m_read_17, range(reader_input_stream_1, 10247, 515, 247, 264)).
method(m_read_18, range(reader_input_stream_1, 10768, 380, 266, 276)).
method(m_read_19, range(reader_input_stream_1, 11154, 1372, 278, 311)).

%%% Blocks
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
block(reader_input_stream_1_block1, block, reader_input_stream_1_code3, body, range(reader_input_stream_1, 4400, 358, 84, 91)).
block(reader_input_stream_1_block2, block, reader_input_stream_1_code7, body, range(reader_input_stream_1, 4828, 60, 93, 95)).
block(reader_input_stream_1_block3, block, reader_input_stream_1_code8, body, range(reader_input_stream_1, 6653, 275, 146, 154)).
block(reader_input_stream_1_block4, block, reader_input_stream_1_code9, body, range(reader_input_stream_1, 7648, 292, 175, 182)).

%%% Statements
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
stmt(reader_input_stream_1_stmt1, variable_declaration_statement, reader_input_stream_1_block1, (statements, 0), range(reader_input_stream_1, 4410, 56, 85, 85)).
stmt(reader_input_stream_1_stmt2, return_statement, reader_input_stream_1_block2, (statements, 0), range(reader_input_stream_1, 4838, 44, 94, 94)).
stmt(reader_input_stream_1_stmt3, constructor_invocation, reader_input_stream_1_block3, (statements, 0), range(reader_input_stream_1, 6689, 208, 148, 152)).
stmt(reader_input_stream_1_stmt4, expression_statement, reader_input_stream_1_block4, (statements, 0), range(reader_input_stream_1, 7658, 21, 176, 176)).
stmt(reader_input_stream_1_stmt5, expression_statement, reader_input_stream_1_block4, (statements, 1), range(reader_input_stream_1, 7688, 37, 177, 177)).
stmt(reader_input_stream_1_stmt6, expression_statement, reader_input_stream_1_block4, (statements, 2), range(reader_input_stream_1, 7734, 85, 178, 178)).

%%% Expressions
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
expr(reader_input_stream_1_expr1, method_invocation, reader_input_stream_1_code6, initializer, range(reader_input_stream_1, 4436, 29, 85, 85), "minBufferSize(charsetEncoder)").
expr(reader_input_stream_1_expr2, infix_expression, reader_input_stream_1_stmt2, expression, range(reader_input_stream_1, 4845, 36, 94, 94), "charsetEncoder.maxBytesPerChar() * 2").
expr(reader_input_stream_1_expr3, method_invocation, reader_input_stream_1_expr2, left_operand, range(reader_input_stream_1, 4845, 32, 94, 94), "charsetEncoder.maxBytesPerChar()").
expr(reader_input_stream_1_expr4, constructor_invocation, reader_input_stream_1_block3, (statements, 0), range(reader_input_stream_1, 6689, 208, 148, 152), "this(reader,charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE),bufferSize);").
expr(reader_input_stream_1_expr6, method_invocation, reader_input_stream_1_expr5, expression, range(reader_input_stream_1, 6715, 85, 149, 150), "charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE)").
expr(reader_input_stream_1_expr5, method_invocation, reader_input_stream_1_stmt3, (arguments, 1), range(reader_input_stream_1, 6715, 155, 149, 151), "charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE)").
expr(reader_input_stream_1_expr7, method_invocation, reader_input_stream_1_expr6, expression, range(reader_input_stream_1, 6715, 20, 149, 149), "charset.newEncoder()").
expr(reader_input_stream_1_expr8, assignment, reader_input_stream_1_stmt4, expression, range(reader_input_stream_1, 7658, 20, 176, 176), "this.reader=reader").
expr(reader_input_stream_1_expr10, this_expression, f_reader_16, expression, range(reader_input_stream_1, 7658, 4, 176, 176), "this").
expr(reader_input_stream_1_expr9, field_access, reader_input_stream_1_expr8, left_hand_side, range(reader_input_stream_1, 7658, 11, 176, 176), "this.reader").
expr(reader_input_stream_1_expr13, this_expression, f_charset_encoder_17, expression, range(reader_input_stream_1, 7688, 4, 177, 177), "this").
expr(reader_input_stream_1_expr12, field_access, reader_input_stream_1_expr11, left_hand_side, range(reader_input_stream_1, 7688, 19, 177, 177), "this.charsetEncoder").
expr(reader_input_stream_1_expr11, assignment, reader_input_stream_1_stmt5, expression, range(reader_input_stream_1, 7688, 36, 177, 177), "this.charsetEncoder=charsetEncoder").
expr(reader_input_stream_1_expr17, this_expression, f_encoder_in_18, expression, range(reader_input_stream_1, 7734, 4, 178, 178), "this").
expr(reader_input_stream_1_expr15, field_access, reader_input_stream_1_expr14, left_hand_side, range(reader_input_stream_1, 7734, 14, 178, 178), "this.encoderIn").
expr(reader_input_stream_1_expr14, assignment, reader_input_stream_1_stmt6, expression, range(reader_input_stream_1, 7734, 84, 178, 178), "this.encoderIn=CharBuffer.allocate(checkMinBufferSize(charsetEncoder,bufferSize))").
expr(reader_input_stream_1_expr16, method_invocation, reader_input_stream_1_expr14, right_hand_side, range(reader_input_stream_1, 7751, 67, 178, 178), "CharBuffer.allocate(checkMinBufferSize(charsetEncoder,bufferSize))").
expr(reader_input_stream_1_expr18, method_invocation, reader_input_stream_1_expr16, (arguments, 0), range(reader_input_stream_1, 7771, 46, 178, 178), "checkMinBufferSize(charsetEncoder,bufferSize)").

%%% Names
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
name(v_min_required_3, simple_name, reader_input_stream_1_code6, name, range(reader_input_stream_1, 4422, 11, 85, 85), 'minRequired').
name(m_min_buffer_size_2, simple_name, reader_input_stream_1_expr1, name, range(reader_input_stream_1, 4436, 13, 85, 85), 'minBufferSize').
name(p_charset_encoder_1, simple_name, reader_input_stream_1_expr1, (arguments, 0), range(reader_input_stream_1, 4450, 14, 85, 85), 'charsetEncoder').
name(p_charset_encoder_4, simple_name, reader_input_stream_1_expr3, expression, range(reader_input_stream_1, 4845, 14, 94, 94), 'charsetEncoder').
name(m_max_bytes_per_char_3, simple_name, reader_input_stream_1_expr3, name, range(reader_input_stream_1, 4860, 15, 94, 94), 'maxBytesPerChar').
name(p_reader_8, simple_name, reader_input_stream_1_stmt3, (arguments, 0), range(reader_input_stream_1, 6694, 6, 148, 148), 'reader').
name(p_charset_9, simple_name, reader_input_stream_1_expr7, expression, range(reader_input_stream_1, 6715, 7, 149, 149), 'charset').
name(m_new_encoder_10, simple_name, reader_input_stream_1_expr7, name, range(reader_input_stream_1, 6723, 10, 149, 149), 'newEncoder').
name(q_replace_2, qualified_name, reader_input_stream_1_expr6, (arguments, 0), range(reader_input_stream_1, 6774, 25, 150, 150), 'CodingErrorAction.REPLACE').
name(q_replace_1, qualified_name, reader_input_stream_1_expr5, (arguments, 0), range(reader_input_stream_1, 6844, 25, 151, 151), 'CodingErrorAction.REPLACE').
name(p_buffer_size_10, simple_name, reader_input_stream_1_stmt3, (arguments, 2), range(reader_input_stream_1, 6885, 10, 152, 152), 'bufferSize').
name(m_reader_input_stream_7, simple_name, reader_input_stream_1_code9, name, range(reader_input_stream_1, 7550, 17, 175, 175), 'ReaderInputStream').
name(p_reader_13, simple_name, reader_input_stream_1_code11, name, range(reader_input_stream_1, 7581, 6, 175, 175), 'reader').
name(p_charset_encoder_14, simple_name, reader_input_stream_1_code14, name, range(reader_input_stream_1, 7610, 14, 175, 175), 'charsetEncoder').
name(p_buffer_size_15, simple_name, reader_input_stream_1_code17, name, range(reader_input_stream_1, 7636, 10, 175, 175), 'bufferSize').
name(f_reader_16, simple_name, reader_input_stream_1_expr9, name, range(reader_input_stream_1, 7663, 6, 176, 176), 'reader').
name(p_reader_13, simple_name, reader_input_stream_1_expr8, right_hand_side, range(reader_input_stream_1, 7672, 6, 176, 176), 'reader').
name(f_charset_encoder_17, simple_name, reader_input_stream_1_expr12, name, range(reader_input_stream_1, 7693, 14, 177, 177), 'charsetEncoder').
name(p_charset_encoder_14, simple_name, reader_input_stream_1_expr11, right_hand_side, range(reader_input_stream_1, 7710, 14, 177, 177), 'charsetEncoder').
name(f_encoder_in_18, simple_name, reader_input_stream_1_expr15, name, range(reader_input_stream_1, 7739, 9, 178, 178), 'encoderIn').
name(t_char_buffer_1, simple_name, reader_input_stream_1_expr16, expression, range(reader_input_stream_1, 7751, 10, 178, 178), 'CharBuffer').
name(m_allocate_12, simple_name, reader_input_stream_1_expr16, name, range(reader_input_stream_1, 7762, 8, 178, 178), 'allocate').
name(m_check_min_buffer_size_1, simple_name, reader_input_stream_1_expr18, name, range(reader_input_stream_1, 7771, 18, 178, 178), 'checkMinBufferSize').
name(p_charset_encoder_14, simple_name, reader_input_stream_1_expr18, (arguments, 0), range(reader_input_stream_1, 7790, 14, 178, 178), 'charsetEncoder').
name(p_buffer_size_15, simple_name, reader_input_stream_1_expr18, (arguments, 1), range(reader_input_stream_1, 7806, 10, 178, 178), 'bufferSize').

%%% Literals
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
literal(reader_input_stream_1_literal1, number_literal, reader_input_stream_1_expr2, right_operand, range(reader_input_stream_1, 4880, 1, 94, 94), 2).

%%% Other Code Entities
%reader_input_stream_1 - org.apache.commons.io.input.ReaderInputStream
code(reader_input_stream_1_code1, compilation_unit, range(reader_input_stream_1, 0, 12529, 1, -1)).
code(reader_input_stream_1_code2, type_declaration, reader_input_stream_1_code1, (types, 0), range(reader_input_stream_1, 1206, 11322, 32, 312)).
code(reader_input_stream_1_code3, method_declaration, reader_input_stream_1_code2, (body_declarations, 1), range(reader_input_stream_1, 4311, 447, 84, 91)).
code(reader_input_stream_1_code4, modifier, reader_input_stream_1_stmt1, (modifiers, 0), range(reader_input_stream_1, 4410, 5, 85, 85)).
code(reader_input_stream_1_code5, primitive_type, reader_input_stream_1_stmt1, type, range(reader_input_stream_1, 4416, 5, 85, 85)).
code(reader_input_stream_1_code6, variable_declaration_fragment, reader_input_stream_1_stmt1, (fragments, 0), range(reader_input_stream_1, 4422, 43, 85, 85)).
code(reader_input_stream_1_code7, method_declaration, reader_input_stream_1_code2, (body_declarations, 2), range(reader_input_stream_1, 4764, 124, 93, 95)).
code(reader_input_stream_1_code8, method_declaration, reader_input_stream_1_code2, (body_declarations, 11), range(reader_input_stream_1, 6317, 611, 139, 154)).
code(reader_input_stream_1_code9, method_declaration, reader_input_stream_1_code2, (body_declarations, 13), range(reader_input_stream_1, 7277, 663, 167, 182)).
code(reader_input_stream_1_code10, modifier, reader_input_stream_1_code9, (modifiers, 0), range(reader_input_stream_1, 7543, 6, 175, 175)).
code(reader_input_stream_1_code11, single_variable_declaration, reader_input_stream_1_code9, (parameters, 0), range(reader_input_stream_1, 7568, 19, 175, 175)).
code(reader_input_stream_1_code12, modifier, reader_input_stream_1_code11, (modifiers, 0), range(reader_input_stream_1, 7568, 5, 175, 175)).
code(reader_input_stream_1_code13, simple_type, reader_input_stream_1_code11, type, range(reader_input_stream_1, 7574, 6, 175, 175)).
code(reader_input_stream_1_code14, single_variable_declaration, reader_input_stream_1_code9, (parameters, 1), range(reader_input_stream_1, 7589, 35, 175, 175)).
code(reader_input_stream_1_code15, modifier, reader_input_stream_1_code14, (modifiers, 0), range(reader_input_stream_1, 7589, 5, 175, 175)).
code(reader_input_stream_1_code16, simple_type, reader_input_stream_1_code14, type, range(reader_input_stream_1, 7595, 14, 175, 175)).
code(reader_input_stream_1_code18, modifier, reader_input_stream_1_code17, (modifiers, 0), range(reader_input_stream_1, 7626, 5, 175, 175)).
code(reader_input_stream_1_code17, single_variable_declaration, reader_input_stream_1_code9, (parameters, 2), range(reader_input_stream_1, 7626, 20, 175, 175)).
code(reader_input_stream_1_code19, primitive_type, reader_input_stream_1_code17, type, range(reader_input_stream_1, 7632, 3, 175, 175)).

%%% Name References

name_ref(t_char_buffer_1, type, 'CharBuffer', 'Ljava/nio/CharBuffer;').
name_ref(p_charset_9, param, 'charset', 'reader_input_stream_1;charset_line_149').
name_ref(p_reader_8, param, 'reader', 'reader_input_stream_1;reader_line_148').
name_ref(v_min_required_3, var, 'minRequired', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I#minRequired').
name_ref(p_array_25, param, 'array', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#array#0#0').
name_ref(p_b_24, param, 'b', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([B)I|Ljava/io/IOException;#b#0#0').
name_ref(p_buffer_size_10, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#bufferSize#0#2').
name_ref(p_buffer_size_15, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#bufferSize#0#2').
name_ref(p_buffer_size_2, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I#bufferSize#0#1').
name_ref(p_buffer_size_23, param, 'bufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#bufferSize#0#2').
name_ref(p_charset_7, param, 'charset', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V#charset#0#1').
name_ref(p_charset_9, param, 'charset', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#charset#0#1').
name_ref(p_charset_encoder_1, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I#charsetEncoder#0#0').
name_ref(p_charset_encoder_12, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V#charsetEncoder#0#1').
name_ref(p_charset_encoder_14, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#charsetEncoder#0#1').
name_ref(p_charset_encoder_4, param, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.minBufferSize(Ljava/nio/charset/CharsetEncoder;)F#charsetEncoder#0#0').
name_ref(p_charset_name_20, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V#charsetName#0#1').
name_ref(p_charset_name_22, param, 'charsetName', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#charsetName#0#1').
name_ref(p_len_27, param, 'len', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#len#0#2').
name_ref(p_off_26, param, 'off', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;#off#0#1').
name_ref(p_reader_11, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V#reader#0#0').
name_ref(p_reader_13, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V#reader#0#0').
name_ref(p_reader_19, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V#reader#0#0').
name_ref(p_reader_21, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V#reader#0#0').
name_ref(p_reader_5, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;)V#reader#0#0').
name_ref(p_reader_6, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V#reader#0#0').
name_ref(p_reader_8, param, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V#reader#0#0').
name_ref(f_charset_encoder_17, field, 'charsetEncoder', 'Lorg/apache/commons/io/input/ReaderInputStream;.charsetEncoder)Ljava/nio/charset/CharsetEncoder;').
name_ref(f_encoder_in_18, field, 'encoderIn', 'Lorg/apache/commons/io/input/ReaderInputStream;.encoderIn)Ljava/nio/CharBuffer;').
name_ref(f_reader_16, field, 'reader', 'Lorg/apache/commons/io/input/ReaderInputStream;.reader)Ljava/io/Reader;').
name_ref(m_allocate_12, method, 'allocate', 'Ljava/nio/CharBuffer;.allocate(I)Ljava/nio/CharBuffer;').
name_ref(m_check_min_buffer_size_1, method, 'checkMinBufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I').
name_ref(m_close_15, method, 'close', 'Lorg/apache/commons/io/input/ReaderInputStream;.close()V|Ljava/io/IOException;').
name_ref(m_fill_buffer_16, method, 'fillBuffer', 'Lorg/apache/commons/io/input/ReaderInputStream;.fillBuffer()V|Ljava/io/IOException;').
name_ref(m_max_bytes_per_char_3, method, 'maxBytesPerChar', 'Ljava/nio/charset/CharsetEncoder;.maxBytesPerChar()F').
name_ref(m_min_buffer_size_2, method, 'minBufferSize', 'Lorg/apache/commons/io/input/ReaderInputStream;.minBufferSize(Ljava/nio/charset/CharsetEncoder;)F').
name_ref(m_new_encoder_10, method, 'newEncoder', 'Ljava/nio/charset/Charset;.newEncoder()Ljava/nio/charset/CharsetEncoder;').
name_ref(m_on_malformed_input_9, method, 'onMalformedInput', 'Ljava/nio/charset/CharsetEncoder;.onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_on_unmappable_character_8, method, 'onUnmappableCharacter', 'Ljava/nio/charset/CharsetEncoder;.onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_read_17, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read()I|Ljava/io/IOException;').
name_ref(m_read_18, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([B)I|Ljava/io/IOException;').
name_ref(m_read_19, method, 'read', 'Lorg/apache/commons/io/input/ReaderInputStream;.read([BII)I|Ljava/io/IOException;').
name_ref(m_reader_input_stream_11, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V').
name_ref(m_reader_input_stream_13, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;)V').
name_ref(m_reader_input_stream_14, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/lang/String;I)V').
name_ref(m_reader_input_stream_4, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;)V').
name_ref(m_reader_input_stream_5, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;)V').
name_ref(m_reader_input_stream_6, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V').
name_ref(m_reader_input_stream_7, method, 'ReaderInputStream', 'Lorg/apache/commons/io/input/ReaderInputStream;.(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V').
name_ref(q_replace_1, q_name, 'CodingErrorAction.REPLACE', 'Ljava/nio/charset/CodingErrorAction;:Ljava/nio/charset/CodingErrorAction;.REPLACE)Ljava/nio/charset/CodingErrorAction;').

%%% End of Code Facts