package org.jsoup.parser;

import org.jsoup.helper.Validate;

import java.util.Locale;

/**
 CharacterReader consumes tokens off a string. To replace the old TokenQueue.
 */
class CharacterReader {
    static final char EOF = (char) -1;

    private final char[] input;
    private final int length;
    private int pos = 0;
    private int mark = 0;

    CharacterReader(String input) {
        int PROBE_START_LINE_19 = 19;
		String p_input_306_line_19 = input;
		int PROBE_END_LINE_19 = 19;
		Validate.notNull(p_input_306_line_19);
        int PROBE_START_LINE_20 = 20;
		String p_input_306_line_20 = input;
		char[] character_reader_1_expr4_line_20 = p_input_306_line_20.toCharArray();
		int PROBE_END_LINE_20 = 20;
		this.input = character_reader_1_expr4_line_20;
        int PROBE_START_LINE_21 = 21;
		char[] f_input_307_line_21 = this.input;
		int character_reader_1_expr8_line_21 = f_input_307_line_21.length;
		int PROBE_END_LINE_21 = 21;
		this.length = character_reader_1_expr8_line_21;
    }

    int pos() {
        return pos;
    }

    boolean isEmpty() {
        int PROBE_START_LINE_29 = 29;
		int f_pos_304_line_29 = pos;
		int f_length_308_line_29 = length;
		boolean character_reader_1_expr12_line_29 = f_pos_304_line_29 >= f_length_308_line_29;
		int PROBE_END_LINE_29 = 29;
		return character_reader_1_expr12_line_29;
    }

    char current() {
        int PROBE_START_LINE_33 = 33;
		boolean character_reader_1_expr14_line_33 = isEmpty();
		char f_eof_310_line_33 = ' ';
		char character_reader_1_expr15_line_33 = ' ';
		if (character_reader_1_expr14_line_33) {
			f_eof_310_line_33 = EOF;
		} else {
			char[] f_input_307_line_33 = input;
			int f_pos_304_line_33 = pos;
			character_reader_1_expr15_line_33 = f_input_307_line_33[f_pos_304_line_33];
		}
		char character_reader_1_expr13_line_33 = character_reader_1_expr14_line_33
				? f_eof_310_line_33
				: character_reader_1_expr15_line_33;
		int PROBE_END_LINE_33 = 33;
		return character_reader_1_expr13_line_33;
    }

    char consume() {
        int PROBE_START_LINE_37 = 37;
		boolean character_reader_1_expr17_line_37 = isEmpty();
		char f_eof_310_line_37 = ' ';
		char character_reader_1_expr18_line_37 = ' ';
		if (character_reader_1_expr17_line_37) {
			f_eof_310_line_37 = EOF;
		} else {
			char[] f_input_307_line_37 = input;
			int f_pos_304_line_37 = pos;
			character_reader_1_expr18_line_37 = f_input_307_line_37[f_pos_304_line_37];
		}
		char character_reader_1_expr16_line_37 = character_reader_1_expr17_line_37
				? f_eof_310_line_37
				: character_reader_1_expr18_line_37;
		int PROBE_END_LINE_37 = 37;
		char val = character_reader_1_expr16_line_37;
        pos++;
        int PROBE_START_LINE_39 = 39;
		char v_val_311_line_39 = val;
		int PROBE_END_LINE_39 = 39;
		return v_val_311_line_39;
    }

    void unconsume() {
        pos--;
    }

    void advance() {
        pos++;
    }

    void mark() {
        mark = pos;
    }

    void rewindToMark() {
        pos = mark;
    }

    String consumeAsString() {
        return new String(input, pos++, 1);
    }

    /**
     * Returns the number of characters between the current position and the next instance of the input char
     * @param c scan target
     * @return offset between current position and next instance of target. -1 if not found.
     */
    int nextIndexOf(char c) {
        // doesn't handle scanning for surrogates
        for (int i = pos; i < length; i++) {
            if (c == input[i])
                return i - pos;
        }
        return -1;
    }

    /**
     * Returns the number of characters between the current position and the next instance of the input sequence
     *
     * @param seq scan target
     * @return offset between current position and next instance of target. -1 if not found.
     */
    int nextIndexOf(CharSequence seq) {
        // doesn't handle scanning for surrogates
        char startChar = seq.charAt(0);
        for (int offset = pos; offset < length; offset++) {
            // scan to first instance of startchar:
            if (startChar != input[offset])
                while(++offset < length && startChar != input[offset]);
            if (offset < length) {
                int i = offset + 1;
                int last = i + seq.length()-1;
                for (int j = 1; i < last && seq.charAt(j) == input[i]; i++, j++);
                if (i == last) // found full sequence
                    return offset - pos;
            }
        }
        return -1;
    }

    String consumeTo(char c) {
        int offset = nextIndexOf(c);
        if (offset != -1) {
            String consumed = new String(input, pos, offset);
            pos += offset;
            return consumed;
        } else {
            return consumeToEnd();
        }
    }

    String consumeTo(String seq) {
        int offset = nextIndexOf(seq);
        if (offset != -1) {
            String consumed = new String(input, pos, offset);
            pos += offset;
            return consumed;
        } else {
            return consumeToEnd();
        }
    }

    String consumeToAny(final char... chars) {
        int PROBE_START_LINE_123 = 123;
		int f_pos_304_line_123 = pos;
		int PROBE_END_LINE_123 = 123;
		int start = f_pos_304_line_123;

        int PROBE_START_LINE_125 = 131;
		int f_pos_304_line_125 = pos;
		int f_length_308_line_125 = length;
		boolean character_reader_1_expr22_line_125 = f_pos_304_line_125 < f_length_308_line_125;
		int PROBE_END_LINE_125 = 131;
		OUTER: while (character_reader_1_expr22_line_125) {
            for (int i = 0; true; i++) {
                int PROBE_START_LINE_127 = 128;
				int v_i_318_line_126 = i;
				char[] p_chars_316_line_126 = chars;
				int q_length_6_line_126 = p_chars_316_line_126.length;
				boolean character_reader_1_expr24_line_126 = v_i_318_line_126 < q_length_6_line_126;
				if (!(character_reader_1_expr24_line_126)) {
					break;
				}
				char[] f_input_307_line_127 = input;
				int f_pos_304_line_127 = pos;
				char character_reader_1_expr27_line_127 = f_input_307_line_127[f_pos_304_line_127];
				char[] p_chars_316_line_127 = chars;
				int v_i_318_line_127 = i;
				char character_reader_1_expr28_line_127 = p_chars_316_line_127[v_i_318_line_127];
				boolean character_reader_1_expr26_line_127 = character_reader_1_expr27_line_127 == character_reader_1_expr28_line_127;
				int PROBE_END_LINE_127 = 128;
				if (character_reader_1_expr26_line_127)
                    break OUTER;
            }
            pos++;
        }

        int PROBE_START_LINE_133 = 133;
		int f_pos_304_line_133 = pos;
		int v_start_317_line_133 = start;
		boolean character_reader_1_expr31_line_133 = f_pos_304_line_133 > v_start_317_line_133;
		int character_reader_1_expr33_line_133 = 0;
		if (character_reader_1_expr31_line_133) {
			int f_pos_304_line_133_v1 = pos;
			int v_start_317_line_133_v2 = start;
			character_reader_1_expr33_line_133 = f_pos_304_line_133_v1 - v_start_317_line_133_v2;
		}
		String character_reader_1_expr30_line_133 = character_reader_1_expr31_line_133
				? new String(input, start, character_reader_1_expr33_line_133)
				: "";
		int PROBE_END_LINE_133 = 133;
		return character_reader_1_expr30_line_133;
    }

    String consumeToEnd() {
        String data = new String(input, pos, length-pos);
        pos = length;
        return data;
    }

    String consumeLetterSequence() {
        int PROBE_START_LINE_143 = 143;
		int f_pos_304_line_143 = pos;
		int PROBE_END_LINE_143 = 143;
		int start = f_pos_304_line_143;
        while (true) {
            int PROBE_START_LINE_144 = 144;
			int f_pos_304_line_144 = pos;
			int f_length_308_line_144 = length;
			boolean character_reader_1_expr34_line_144 = f_pos_304_line_144 < f_length_308_line_144;
			if (!(character_reader_1_expr34_line_144)) {
				break;
			}
			int PROBE_END_LINE_144 = 144;
			int PROBE_START_LINE_145 = 145;
			char[] f_input_307_line_145 = input;
			int f_pos_304_line_145 = pos;
			char character_reader_1_expr35_line_145 = f_input_307_line_145[f_pos_304_line_145];
			int PROBE_END_LINE_145 = 145;
			char c = character_reader_1_expr35_line_145;
            int PROBE_START_LINE_146 = 149;
			char v_c_320_line_146 = c;
			boolean character_reader_1_expr39_line_146 = v_c_320_line_146 >= 'A';
			boolean character_reader_1_expr40_line_146 = true;
			if (character_reader_1_expr39_line_146) {
				char v_c_320_line_146_v1 = c;
				character_reader_1_expr40_line_146 = v_c_320_line_146_v1 <= 'Z';
			}
			boolean character_reader_1_expr38_line_146 = character_reader_1_expr39_line_146
					&& character_reader_1_expr40_line_146;
			boolean character_reader_1_expr37_line_146 = (character_reader_1_expr38_line_146);
			boolean character_reader_1_expr41_line_146 = false;
			if (!character_reader_1_expr37_line_146) {
				char v_c_320_line_146_v2 = c;
				boolean character_reader_1_expr43_line_146 = v_c_320_line_146_v2 >= 'a';
				boolean character_reader_1_expr44_line_146 = true;
				if (character_reader_1_expr43_line_146) {
					char v_c_320_line_146_v3 = c;
					character_reader_1_expr44_line_146 = v_c_320_line_146_v3 <= 'z';
				}
				boolean character_reader_1_expr42_line_146 = character_reader_1_expr43_line_146
						&& character_reader_1_expr44_line_146;
				character_reader_1_expr41_line_146 = (character_reader_1_expr42_line_146);
			}
			boolean character_reader_1_expr36_line_146 = character_reader_1_expr37_line_146
					|| character_reader_1_expr41_line_146;
			int PROBE_END_LINE_146 = 149;
			if (character_reader_1_expr36_line_146)
                pos++;
            else
                break;
        }

        int PROBE_START_LINE_152 = 152;
		char[] f_input_307_line_152 = input;
		int v_start_319_line_152 = start;
		int f_pos_304_line_152 = pos;
		int v_start_319_line_152_v1 = start;
		int character_reader_1_expr47_line_152 = f_pos_304_line_152 - v_start_319_line_152_v1;
		int PROBE_END_LINE_152 = 152;
		return new String(f_input_307_line_152, v_start_319_line_152, character_reader_1_expr47_line_152);
    }

    String consumeLetterThenDigitSequence() {
        int start = pos;
        while (pos < length) {
            char c = input[pos];
            if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'))
                pos++;
            else
                break;
        }
        while (!isEmpty()) {
            char c = input[pos];
            if (c >= '0' && c <= '9')
                pos++;
            else
                break;
        }

        return new String(input, start, pos - start);
    }

    String consumeHexSequence() {
        int start = pos;
        while (pos < length) {
            char c = input[pos];
            if ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f'))
                pos++;
            else
                break;
        }
        return new String(input, start, pos - start);
    }

    String consumeDigitSequence() {
        int start = pos;
        while (pos < length) {
            char c = input[pos];
            if (c >= '0' && c <= '9')
                pos++;
            else
                break;
        }
        return new String(input, start, pos - start);
    }

    boolean matches(char c) {
        return !isEmpty() && input[pos] == c;

    }

    boolean matches(String seq) {
        int scanLength = seq.length();
        if (scanLength > length - pos)
            return false;

        for (int offset = 0; offset < scanLength; offset++)
            if (seq.charAt(offset) != input[pos+offset])
                return false;
        return true;
    }

    boolean matchesIgnoreCase(String seq) {
        int scanLength = seq.length();
        if (scanLength > length - pos)
            return false;

        for (int offset = 0; offset < scanLength; offset++) {
            char upScan = Character.toUpperCase(seq.charAt(offset));
            char upTarget = Character.toUpperCase(input[pos + offset]);
            if (upScan != upTarget)
                return false;
        }
        return true;
    }

    boolean matchesAny(char... seq) {
        if (isEmpty())
            return false;

        char c = input[pos];
        for (char seek : seq) {
            if (seek == c)
                return true;
        }
        return false;
    }

    boolean matchesLetter() {
        int PROBE_START_LINE_242 = 243;
		boolean character_reader_1_expr48_line_242 = isEmpty();
		int PROBE_END_LINE_242 = 243;
		if (character_reader_1_expr48_line_242)
            return false;
        int PROBE_START_LINE_244 = 244;
		char[] f_input_307_line_244 = input;
		int f_pos_304_line_244 = pos;
		char character_reader_1_expr49_line_244 = f_input_307_line_244[f_pos_304_line_244];
		int PROBE_END_LINE_244 = 244;
		char c = character_reader_1_expr49_line_244;
        int PROBE_START_LINE_245 = 245;
		char v_c_325_line_245 = c;
		boolean character_reader_1_expr53_line_245 = v_c_325_line_245 >= 'A';
		boolean character_reader_1_expr54_line_245 = true;
		if (character_reader_1_expr53_line_245) {
			char v_c_325_line_245_v1 = c;
			character_reader_1_expr54_line_245 = v_c_325_line_245_v1 <= 'Z';
		}
		boolean character_reader_1_expr52_line_245 = character_reader_1_expr53_line_245
				&& character_reader_1_expr54_line_245;
		boolean character_reader_1_expr51_line_245 = (character_reader_1_expr52_line_245);
		boolean character_reader_1_expr55_line_245 = false;
		if (!character_reader_1_expr51_line_245) {
			char v_c_325_line_245_v2 = c;
			boolean character_reader_1_expr57_line_245 = v_c_325_line_245_v2 >= 'a';
			boolean character_reader_1_expr58_line_245 = true;
			if (character_reader_1_expr57_line_245) {
				char v_c_325_line_245_v3 = c;
				character_reader_1_expr58_line_245 = v_c_325_line_245_v3 <= 'z';
			}
			boolean character_reader_1_expr56_line_245 = character_reader_1_expr57_line_245
					&& character_reader_1_expr58_line_245;
			character_reader_1_expr55_line_245 = (character_reader_1_expr56_line_245);
		}
		boolean character_reader_1_expr50_line_245 = character_reader_1_expr51_line_245
				|| character_reader_1_expr55_line_245;
		int PROBE_END_LINE_245 = 245;
		return character_reader_1_expr50_line_245;
    }

    boolean matchesDigit() {
        if (isEmpty())
            return false;
        char c = input[pos];
        return (c >= '0' && c <= '9');
    }

    boolean matchConsume(String seq) {
        if (matches(seq)) {
            pos += seq.length();
            return true;
        } else {
            return false;
        }
    }

    boolean matchConsumeIgnoreCase(String seq) {
        if (matchesIgnoreCase(seq)) {
            pos += seq.length();
            return true;
        } else {
            return false;
        }
    }

    boolean containsIgnoreCase(String seq) {
        // used to check presence of </title>, </style>. only finds consistent case.
        String loScan = seq.toLowerCase(Locale.ENGLISH);
        String hiScan = seq.toUpperCase(Locale.ENGLISH);
        return (nextIndexOf(loScan) > -1) || (nextIndexOf(hiScan) > -1);
    }

    @Override
    public String toString() {
        return new String(input, pos, length - pos);
    }
}
