%%% Code Facts
:- style_check(-discontiguous).
%%% Classes
class(char_sequence_input_stream_1, 'org.apache.commons.io.input.CharSequenceInputStream').

%%% Methods
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
method(m_char_sequence_input_stream_1, range(char_sequence_input_stream_1, 1822, 412, 54, 63)).
method(m_char_sequence_input_stream_2, range(char_sequence_input_stream_1, 2240, 952, 65, 85)).
method(m_char_sequence_input_stream_6, range(char_sequence_input_stream_1, 3198, 411, 87, 96)).
method(m_char_sequence_input_stream_7, range(char_sequence_input_stream_1, 3615, 471, 98, 108)).
method(m_available_8, range(char_sequence_input_stream_1, 4092, 709, 110, 123)).
method(m_close_9, range(char_sequence_input_stream_1, 4807, 76, 125, 128)).
method(m_fill_buffer_10, range(char_sequence_input_stream_1, 4889, 460, 130, 143)).
method(m_mark_11, range(char_sequence_input_stream_1, 5355, 442, 145, 157)).
method(m_mark_supported_12, range(char_sequence_input_stream_1, 5803, 73, 159, 162)).
method(m_read_13, range(char_sequence_input_stream_1, 5882, 334, 164, 175)).
method(m_read_14, range(char_sequence_input_stream_1, 6222, 109, 177, 180)).
method(m_read_15, range(char_sequence_input_stream_1, 6337, 1113, 182, 210)).
method(m_reset_16, range(char_sequence_input_stream_1, 7456, 1759, 212, 246)).
method(m_skip_17, range(char_sequence_input_stream_1, 9221, 353, 248, 260)).

%%% Blocks
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
block(char_sequence_input_stream_1_block1, block, char_sequence_input_stream_1_code3, body, range(char_sequence_input_stream_1, 2187, 47, 61, 63)).
block(char_sequence_input_stream_1_block2, block, char_sequence_input_stream_1_code4, body, range(char_sequence_input_stream_1, 2649, 543, 73, 85)).

%%% Statements
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
stmt(char_sequence_input_stream_1_stmt1, constructor_invocation, char_sequence_input_stream_1_block1, (statements, 0), range(char_sequence_input_stream_1, 2197, 31, 62, 62)).
stmt(char_sequence_input_stream_1_stmt2, expression_statement, char_sequence_input_stream_1_block2, (statements, 0), range(char_sequence_input_stream_1, 2685, 162, 75, 77)).

%%% Expressions
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
expr(char_sequence_input_stream_1_expr1, constructor_invocation, char_sequence_input_stream_1_block1, (statements, 0), range(char_sequence_input_stream_1, 2197, 31, 62, 62), "this(cs,charset,BUFFER_SIZE);").
expr(char_sequence_input_stream_1_expr2, assignment, char_sequence_input_stream_1_stmt2, expression, range(char_sequence_input_stream_1, 2685, 161, 75, 77), "this.charsetEncoder=charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE)").
expr(char_sequence_input_stream_1_expr3, field_access, char_sequence_input_stream_1_expr2, left_hand_side, range(char_sequence_input_stream_1, 2685, 19, 75, 75), "this.charsetEncoder").
expr(char_sequence_input_stream_1_expr5, this_expression, f_charset_encoder_7, expression, range(char_sequence_input_stream_1, 2685, 4, 75, 75), "this").
expr(char_sequence_input_stream_1_expr6, method_invocation, char_sequence_input_stream_1_expr4, expression, range(char_sequence_input_stream_1, 2707, 77, 75, 76), "charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE)").
expr(char_sequence_input_stream_1_expr7, method_invocation, char_sequence_input_stream_1_expr6, expression, range(char_sequence_input_stream_1, 2707, 20, 75, 75), "charset.newEncoder()").
expr(char_sequence_input_stream_1_expr4, method_invocation, char_sequence_input_stream_1_expr2, right_hand_side, range(char_sequence_input_stream_1, 2707, 139, 75, 77), "charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE)").

%%% Names
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
name(p_cs_1, simple_name, char_sequence_input_stream_1_stmt1, (arguments, 0), range(char_sequence_input_stream_1, 2202, 2, 62, 62), 'cs').
name(p_charset_2, simple_name, char_sequence_input_stream_1_stmt1, (arguments, 1), range(char_sequence_input_stream_1, 2206, 7, 62, 62), 'charset').
name(f_buffer_size_3, simple_name, char_sequence_input_stream_1_stmt1, (arguments, 2), range(char_sequence_input_stream_1, 2215, 11, 62, 62), 'BUFFER_SIZE').
name(m_char_sequence_input_stream_2, simple_name, char_sequence_input_stream_1_code4, name, range(char_sequence_input_stream_1, 2557, 23, 73, 73), 'CharSequenceInputStream').
name(p_cs_4, simple_name, char_sequence_input_stream_1_code6, name, range(char_sequence_input_stream_1, 2600, 2, 73, 73), 'cs').
name(p_charset_5, simple_name, char_sequence_input_stream_1_code9, name, range(char_sequence_input_stream_1, 2618, 7, 73, 73), 'charset').
name(p_buffer_size_6, simple_name, char_sequence_input_stream_1_code12, name, range(char_sequence_input_stream_1, 2637, 10, 73, 73), 'bufferSize').
name(f_charset_encoder_7, simple_name, char_sequence_input_stream_1_expr3, name, range(char_sequence_input_stream_1, 2690, 14, 75, 75), 'charsetEncoder').
name(p_charset_5, simple_name, char_sequence_input_stream_1_expr7, expression, range(char_sequence_input_stream_1, 2707, 7, 75, 75), 'charset').
name(m_new_encoder_5, simple_name, char_sequence_input_stream_1_expr7, name, range(char_sequence_input_stream_1, 2715, 10, 75, 75), 'newEncoder').
name(q_replace_2, qualified_name, char_sequence_input_stream_1_expr6, (arguments, 0), range(char_sequence_input_stream_1, 2758, 25, 76, 76), 'CodingErrorAction.REPLACE').
name(q_replace_1, qualified_name, char_sequence_input_stream_1_expr4, (arguments, 0), range(char_sequence_input_stream_1, 2820, 25, 77, 77), 'CodingErrorAction.REPLACE').

%%% Literals
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream

%%% Other Code Entities
%char_sequence_input_stream_1 - org.apache.commons.io.input.CharSequenceInputStream
code(char_sequence_input_stream_1_code1, compilation_unit, range(char_sequence_input_stream_1, 0, 9578, 1, -1)).
code(char_sequence_input_stream_1_code2, type_declaration, char_sequence_input_stream_1_code1, (types, 0), range(char_sequence_input_stream_1, 1234, 8343, 33, 262)).
code(char_sequence_input_stream_1_code3, method_declaration, char_sequence_input_stream_1_code2, (body_declarations, 7), range(char_sequence_input_stream_1, 1822, 412, 54, 63)).
code(char_sequence_input_stream_1_code4, method_declaration, char_sequence_input_stream_1_code2, (body_declarations, 8), range(char_sequence_input_stream_1, 2240, 952, 65, 85)).
code(char_sequence_input_stream_1_code5, modifier, char_sequence_input_stream_1_code4, (modifiers, 0), range(char_sequence_input_stream_1, 2550, 6, 73, 73)).
code(char_sequence_input_stream_1_code7, modifier, char_sequence_input_stream_1_code6, (modifiers, 0), range(char_sequence_input_stream_1, 2581, 5, 73, 73)).
code(char_sequence_input_stream_1_code6, single_variable_declaration, char_sequence_input_stream_1_code4, (parameters, 0), range(char_sequence_input_stream_1, 2581, 21, 73, 73)).
code(char_sequence_input_stream_1_code8, simple_type, char_sequence_input_stream_1_code6, type, range(char_sequence_input_stream_1, 2587, 12, 73, 73)).
code(char_sequence_input_stream_1_code10, modifier, char_sequence_input_stream_1_code9, (modifiers, 0), range(char_sequence_input_stream_1, 2604, 5, 73, 73)).
code(char_sequence_input_stream_1_code9, single_variable_declaration, char_sequence_input_stream_1_code4, (parameters, 1), range(char_sequence_input_stream_1, 2604, 21, 73, 73)).
code(char_sequence_input_stream_1_code11, simple_type, char_sequence_input_stream_1_code9, type, range(char_sequence_input_stream_1, 2610, 7, 73, 73)).
code(char_sequence_input_stream_1_code12, single_variable_declaration, char_sequence_input_stream_1_code4, (parameters, 2), range(char_sequence_input_stream_1, 2627, 20, 73, 73)).
code(char_sequence_input_stream_1_code13, modifier, char_sequence_input_stream_1_code12, (modifiers, 0), range(char_sequence_input_stream_1, 2627, 5, 73, 73)).
code(char_sequence_input_stream_1_code14, primitive_type, char_sequence_input_stream_1_code12, type, range(char_sequence_input_stream_1, 2633, 3, 73, 73)).

%%% Name References

name_ref(p_charset_2, param, 'charset', 'char_sequence_input_stream_1;charset_line_62').
name_ref(p_cs_1, param, 'cs', 'char_sequence_input_stream_1;cs_line_62').
name_ref(f_buffer_size_3, field, 'BUFFER_SIZE', 'char_sequence_input_stream_1;BUFFER_SIZE_line_62').
name_ref(p_array_15, param, 'array', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([BII)I|Ljava/io/IOException;#array#0#0').
name_ref(p_b_14, param, 'b', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([B)I|Ljava/io/IOException;#b#0#0').
name_ref(p_buffer_size_12, param, 'bufferSize', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;I)V#bufferSize#0#2').
name_ref(p_buffer_size_6, param, 'bufferSize', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V#bufferSize#0#2').
name_ref(p_charset_11, param, 'charset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;I)V#charset#0#1').
name_ref(p_charset_2, param, 'charset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V#charset#0#1').
name_ref(p_charset_5, param, 'charset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V#charset#0#1').
name_ref(p_charset_9, param, 'charset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;)V#charset#0#1').
name_ref(p_cs_1, param, 'cs', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V#cs#0#0').
name_ref(p_cs_10, param, 'cs', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;I)V#cs#0#0').
name_ref(p_cs_4, param, 'cs', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V#cs#0#0').
name_ref(p_cs_8, param, 'cs', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;)V#cs#0#0').
name_ref(p_len_17, param, 'len', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([BII)I|Ljava/io/IOException;#len#0#2').
name_ref(p_n_18, param, 'n', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.skip(J)J|Ljava/io/IOException;#n#0#0').
name_ref(p_off_16, param, 'off', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([BII)I|Ljava/io/IOException;#off#0#1').
name_ref(p_readlimit_13, param, 'readlimit', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.mark(I)V#readlimit#0#0').
name_ref(f_buffer_size_3, field, 'BUFFER_SIZE', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.BUFFER_SIZE)I').
name_ref(f_charset_encoder_7, field, 'charsetEncoder', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.charsetEncoder)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_available_8, method, 'available', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.available()I|Ljava/io/IOException;').
name_ref(m_char_sequence_input_stream_1, method, 'CharSequenceInputStream', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V').
name_ref(m_char_sequence_input_stream_2, method, 'CharSequenceInputStream', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V').
name_ref(m_char_sequence_input_stream_6, method, 'CharSequenceInputStream', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;)V').
name_ref(m_char_sequence_input_stream_7, method, 'CharSequenceInputStream', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.(Ljava/lang/CharSequence;Ljava/lang/String;I)V').
name_ref(m_close_9, method, 'close', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.close()V|Ljava/io/IOException;').
name_ref(m_fill_buffer_10, method, 'fillBuffer', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.fillBuffer()V|Ljava/nio/charset/CharacterCodingException;').
name_ref(m_mark_11, method, 'mark', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.mark(I)V').
name_ref(m_mark_supported_12, method, 'markSupported', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.markSupported()Z').
name_ref(m_new_encoder_5, method, 'newEncoder', 'Ljava/nio/charset/Charset;.newEncoder()Ljava/nio/charset/CharsetEncoder;').
name_ref(m_on_malformed_input_4, method, 'onMalformedInput', 'Ljava/nio/charset/CharsetEncoder;.onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_on_unmappable_character_3, method, 'onUnmappableCharacter', 'Ljava/nio/charset/CharsetEncoder;.onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;').
name_ref(m_read_13, method, 'read', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read()I|Ljava/io/IOException;').
name_ref(m_read_14, method, 'read', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([B)I|Ljava/io/IOException;').
name_ref(m_read_15, method, 'read', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.read([BII)I|Ljava/io/IOException;').
name_ref(m_reset_16, method, 'reset', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.reset()V|Ljava/io/IOException;').
name_ref(m_skip_17, method, 'skip', 'Lorg/apache/commons/io/input/CharSequenceInputStream;.skip(J)J|Ljava/io/IOException;').
name_ref(q_replace_1, q_name, 'CodingErrorAction.REPLACE', 'Ljava/nio/charset/CodingErrorAction;:Ljava/nio/charset/CodingErrorAction;.REPLACE)Ljava/nio/charset/CodingErrorAction;').

%%% End of Code Facts