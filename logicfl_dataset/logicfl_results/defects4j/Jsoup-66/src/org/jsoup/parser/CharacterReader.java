package org.jsoup.parser;

import org.jsoup.UncheckedIOException;
import org.jsoup.helper.Validate;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Locale;

/**
 CharacterReader consumes tokens off a string. Used internally by jsoup. API subject to changes.
 */
public final class CharacterReader {
    static final char EOF = (char) -1;
    private static final int maxStringCacheLen = 12;
    private static final int maxBufferLen = 1024 * 32;
    private static final int readAheadLimit = (int) (maxBufferLen * 0.75);

    private final char[] charBuf;
    private final Reader reader;
    private int bufLength;
    private int bufSplitPoint;
    private int bufPos;
    private int readerPos;
    private int bufMark;
    private final String[] stringCache = new String[512]; // holds reused strings in this doc, to lessen garbage

    public CharacterReader(Reader input, int sz) {
        int PROBE_START_LINE_31 = 31;
		java.io.Reader p_input_496_line_31 = input;
		int PROBE_END_LINE_31 = 31;
		Validate.notNull(p_input_496_line_31);
        int PROBE_START_LINE_32 = 32;
		java.io.Reader p_input_496_line_32 = input;
		boolean character_reader_1_expr4_line_32 = p_input_496_line_32.markSupported();
		int PROBE_END_LINE_32 = 32;
		Validate.isTrue(character_reader_1_expr4_line_32);
        int PROBE_START_LINE_33 = 33;
		java.io.Reader p_input_496_line_33 = input;
		int PROBE_END_LINE_33 = 33;
		reader = p_input_496_line_33;
        int PROBE_START_LINE_34 = 34;
		int p_sz_497_line_34 = sz;
		int f_max_buffer_len_500_line_34 = maxBufferLen;
		boolean character_reader_1_expr9_line_34 = p_sz_497_line_34 > f_max_buffer_len_500_line_34;
		int f_max_buffer_len_500_line_34_v1 = 0;
		int p_sz_497_line_34_v1 = 0;
		if (character_reader_1_expr9_line_34) {
			f_max_buffer_len_500_line_34_v1 = maxBufferLen;
		} else {
			p_sz_497_line_34_v1 = sz;
		}
		int character_reader_1_expr8_line_34 = character_reader_1_expr9_line_34
				? f_max_buffer_len_500_line_34_v1
				: p_sz_497_line_34_v1;
		int PROBE_END_LINE_34 = 34;
		charBuf = new char[character_reader_1_expr8_line_34];
        bufferUp();
    }

    public CharacterReader(Reader input) {
        this(input, maxBufferLen);
    }

    public CharacterReader(String input) {
        this(new StringReader(input), input.length());
    }

    private void bufferUp() {
        int PROBE_START_LINE_47 = 48;
		int f_buf_pos_503_line_47 = bufPos;
		int f_buf_split_point_504_line_47 = bufSplitPoint;
		boolean character_reader_1_expr12_line_47 = f_buf_pos_503_line_47 < f_buf_split_point_504_line_47;
		int PROBE_END_LINE_47 = 48;
		if (character_reader_1_expr12_line_47)
            return;

        try {
            int PROBE_START_LINE_51 = 51;
			int f_buf_pos_503_line_51 = bufPos;
			int PROBE_END_LINE_51 = 51;
			readerPos += f_buf_pos_503_line_51;
            int PROBE_START_LINE_52 = 52;
			java.io.Reader f_reader_498_line_52 = reader;
			int f_buf_pos_503_line_52 = bufPos;
			int PROBE_END_LINE_52 = 52;
			f_reader_498_line_52.skip(f_buf_pos_503_line_52);
            int PROBE_START_LINE_53 = 53;
			java.io.Reader f_reader_498_line_53 = reader;
			int f_max_buffer_len_500_line_53 = maxBufferLen;
			int PROBE_END_LINE_53 = 53;
			f_reader_498_line_53.mark(f_max_buffer_len_500_line_53);
            int PROBE_START_LINE_54 = 54;
			java.io.Reader f_reader_498_line_54 = reader;
			char[] f_char_buf_499_line_54 = charBuf;
			int character_reader_1_expr17_line_54 = f_reader_498_line_54.read(f_char_buf_499_line_54);
			int PROBE_END_LINE_54 = 54;
			bufLength = character_reader_1_expr17_line_54;
            int PROBE_START_LINE_55 = 55;
			java.io.Reader f_reader_498_line_55 = reader;
			int PROBE_END_LINE_55 = 55;
			f_reader_498_line_55.reset();
            bufPos = 0;
            bufMark = 0;
            int PROBE_START_LINE_58 = 58;
			int f_buf_length_506_line_58 = bufLength;
			int f_read_ahead_limit_508_line_58 = readAheadLimit;
			boolean character_reader_1_expr23_line_58 = f_buf_length_506_line_58 > f_read_ahead_limit_508_line_58;
			int f_read_ahead_limit_508_line_58_v1 = 0;
			int f_buf_length_506_line_58_v1 = 0;
			if (character_reader_1_expr23_line_58) {
				f_read_ahead_limit_508_line_58_v1 = readAheadLimit;
			} else {
				f_buf_length_506_line_58_v1 = bufLength;
			}
			int character_reader_1_expr22_line_58 = character_reader_1_expr23_line_58
					? f_read_ahead_limit_508_line_58_v1
					: f_buf_length_506_line_58_v1;
			int PROBE_END_LINE_58 = 58;
			bufSplitPoint = character_reader_1_expr22_line_58;
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    /**
     * Gets the current cursor position in the content.
     * @return current position
     */
    public int pos() {
        return readerPos + bufPos;
    }

    /**
     * Tests if all the content has been read.
     * @return true if nothing left to read.
     */
    public boolean isEmpty() {
        int PROBE_START_LINE_77 = 77;
		int f_buf_pos_503_line_77 = bufPos;
		int f_buf_length_506_line_77 = bufLength;
		boolean character_reader_1_expr24_line_77 = f_buf_pos_503_line_77 >= f_buf_length_506_line_77;
		int PROBE_END_LINE_77 = 77;
		return character_reader_1_expr24_line_77;
    }

    /**
     * Get the char at the current position.
     * @return char
     */
    public char current() {
        bufferUp();
        int PROBE_START_LINE_86 = 86;
		boolean character_reader_1_expr27_line_86 = isEmpty();
		char f_eof_509_line_86 = ' ';
		char character_reader_1_expr28_line_86 = ' ';
		if (character_reader_1_expr27_line_86) {
			f_eof_509_line_86 = EOF;
		} else {
			char[] f_char_buf_499_line_86 = charBuf;
			int f_buf_pos_503_line_86 = bufPos;
			character_reader_1_expr28_line_86 = f_char_buf_499_line_86[f_buf_pos_503_line_86];
		}
		char character_reader_1_expr26_line_86 = character_reader_1_expr27_line_86
				? f_eof_509_line_86
				: character_reader_1_expr28_line_86;
		int PROBE_END_LINE_86 = 86;
		return character_reader_1_expr26_line_86;
    }

    char consume() {
        bufferUp();
        int PROBE_START_LINE_91 = 91;
		boolean character_reader_1_expr31_line_91 = isEmpty();
		char f_eof_509_line_91 = ' ';
		char character_reader_1_expr32_line_91 = ' ';
		if (character_reader_1_expr31_line_91) {
			f_eof_509_line_91 = EOF;
		} else {
			char[] f_char_buf_499_line_91 = charBuf;
			int f_buf_pos_503_line_91 = bufPos;
			character_reader_1_expr32_line_91 = f_char_buf_499_line_91[f_buf_pos_503_line_91];
		}
		char character_reader_1_expr30_line_91 = character_reader_1_expr31_line_91
				? f_eof_509_line_91
				: character_reader_1_expr32_line_91;
		int PROBE_END_LINE_91 = 91;
		char val = character_reader_1_expr30_line_91;
        bufPos++;
        int PROBE_START_LINE_93 = 93;
		char v_val_510_line_93 = val;
		int PROBE_END_LINE_93 = 93;
		return v_val_510_line_93;
    }

    void unconsume() {
        bufPos--;
    }

    /**
     * Moves the current position by one.
     */
    public void advance() {
        bufPos++;
    }

    void mark() {
        bufMark = bufPos;
    }

    void rewindToMark() {
        bufPos = bufMark;
    }

    /**
     * Returns the number of characters between the current position and the next instance of the input char
     * @param c scan target
     * @return offset between current position and next instance of target. -1 if not found.
     */
    int nextIndexOf(char c) {
        // doesn't handle scanning for surrogates
        bufferUp();
        int PROBE_START_LINE_122 = 122;
		boolean FOR_STMT_TOGGLE_LINE_123 = false;
		int PROBE_END_LINE_122 = 122;
		for (int i = 0; true;) {
            int PROBE_START_LINE_124 = 125;
			if (!FOR_STMT_TOGGLE_LINE_123) {
				FOR_STMT_TOGGLE_LINE_123 = true;
				int f_buf_pos_503_line_123 = bufPos;
				i = f_buf_pos_503_line_123;
			} else {
				if (FOR_STMT_TOGGLE_LINE_123) {
					i++;
				} else {
					FOR_STMT_TOGGLE_LINE_123 = true;
				}
			}
			int v_i_512_line_123 = i;
			int f_buf_length_506_line_123 = bufLength;
			boolean character_reader_1_expr38_line_123 = v_i_512_line_123 < f_buf_length_506_line_123;
			if (!(character_reader_1_expr38_line_123)) {
				break;
			}
			char p_c_511_line_124 = c;
			char[] f_char_buf_499_line_124 = charBuf;
			int v_i_512_line_124 = i;
			char character_reader_1_expr41_line_124 = f_char_buf_499_line_124[v_i_512_line_124];
			boolean character_reader_1_expr40_line_124 = p_c_511_line_124 == character_reader_1_expr41_line_124;
			int PROBE_END_LINE_124 = 125;
			if (character_reader_1_expr40_line_124) {
				int PROBE_START_LINE_125 = 125;
				int v_i_512_line_125 = i;
				int f_buf_pos_503_line_125 = bufPos;
				int character_reader_1_expr42_line_125 = v_i_512_line_125 - f_buf_pos_503_line_125;
				int PROBE_END_LINE_125 = 125;
				return character_reader_1_expr42_line_125;
			}
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
        bufferUp();
        // doesn't handle scanning for surrogates
        char startChar = seq.charAt(0);
        for (int offset = bufPos; offset < bufLength; offset++) {
            // scan to first instance of startchar:
            if (startChar != charBuf[offset])
                while(++offset < bufLength && startChar != charBuf[offset]) { /* empty */ }
            int i = offset + 1;
            int last = i + seq.length()-1;
            if (offset < bufLength && last <= bufLength) {
                for (int j = 1; i < last && seq.charAt(j) == charBuf[i]; i++, j++) { /* empty */ }
                if (i == last) // found full sequence
                    return offset - bufPos;
            }
        }
        return -1;
    }

    /**
     * Reads characters up to the specific char.
     * @param c the delimiter
     * @return the chars read
     */
    public String consumeTo(char c) {
        int PROBE_START_LINE_161 = 161;
		char p_c_514_line_161 = c;
		int character_reader_1_expr43_line_161 = nextIndexOf(p_c_514_line_161);
		int PROBE_END_LINE_161 = 161;
		int offset = character_reader_1_expr43_line_161;
        int PROBE_START_LINE_162 = 168;
		int v_offset_515_line_162 = offset;
		int character_reader_1_expr45_line_162 = -1;
		boolean character_reader_1_expr44_line_162 = v_offset_515_line_162 != character_reader_1_expr45_line_162;
		int PROBE_END_LINE_162 = 168;
		if (character_reader_1_expr44_line_162) {
            int PROBE_START_LINE_163 = 163;
			char[] f_char_buf_499_line_163 = charBuf;
			String[] f_string_cache_495_line_163 = stringCache;
			int f_buf_pos_503_line_163 = bufPos;
			int v_offset_515_line_163 = offset;
			String character_reader_1_expr46_line_163 = cacheString(f_char_buf_499_line_163,
					f_string_cache_495_line_163, f_buf_pos_503_line_163, v_offset_515_line_163);
			int PROBE_END_LINE_163 = 163;
			String consumed = character_reader_1_expr46_line_163;
            int PROBE_START_LINE_164 = 164;
			int v_offset_515_line_164 = offset;
			int PROBE_END_LINE_164 = 164;
			bufPos += v_offset_515_line_164;
            int PROBE_START_LINE_165 = 165;
			String v_consumed_516_line_165 = consumed;
			int PROBE_END_LINE_165 = 165;
			return v_consumed_516_line_165;
        } else {
            return consumeToEnd();
        }
    }

    String consumeTo(String seq) {
        int offset = nextIndexOf(seq);
        if (offset != -1) {
            String consumed = cacheString(charBuf, stringCache, bufPos, offset);
            bufPos += offset;
            return consumed;
        } else {
            return consumeToEnd();
        }
    }

    /**
     * Read characters until the first of any delimiters is found.
     * @param chars delimiters to scan for
     * @return characters read up to the matched delimiter.
     */
    public String consumeToAny(final char... chars) {
        bufferUp();
        int PROBE_START_LINE_189 = 189;
		int f_buf_pos_503_line_189 = bufPos;
		int PROBE_END_LINE_189 = 189;
		final int start = f_buf_pos_503_line_189;
        int PROBE_START_LINE_190 = 190;
		int f_buf_length_506_line_190 = bufLength;
		int PROBE_END_LINE_190 = 190;
		final int remaining = f_buf_length_506_line_190;
        int PROBE_START_LINE_191 = 191;
		char[] f_char_buf_499_line_191 = charBuf;
		int PROBE_END_LINE_191 = 191;
		final char[] val = f_char_buf_499_line_191;

        int PROBE_START_LINE_193 = 199;
		int f_buf_pos_503_line_193 = bufPos;
		int v_remaining_520_line_193 = remaining;
		boolean character_reader_1_expr49_line_193 = f_buf_pos_503_line_193 < v_remaining_520_line_193;
		int PROBE_END_LINE_193 = 199;
		OUTER: while (character_reader_1_expr49_line_193) {
            int PROBE_START_LINE_194 = 197;
			char[] p_chars_518_line_194 = chars;
			int PROBE_END_LINE_194 = 197;
			for (char c : p_chars_518_line_194) {
                int PROBE_START_LINE_195 = 196;
				char[] v_val_521_line_195 = val;
				int f_buf_pos_503_line_195 = bufPos;
				char character_reader_1_expr51_line_195 = v_val_521_line_195[f_buf_pos_503_line_195];
				char v_c_522_line_195 = c;
				boolean character_reader_1_expr50_line_195 = character_reader_1_expr51_line_195 == v_c_522_line_195;
				int PROBE_END_LINE_195 = 196;
				if (character_reader_1_expr50_line_195)
                    break OUTER;
            }
            bufPos++;
        }

        int PROBE_START_LINE_201 = 201;
		int f_buf_pos_503_line_201 = bufPos;
		int v_start_519_line_201 = start;
		boolean character_reader_1_expr54_line_201 = f_buf_pos_503_line_201 > v_start_519_line_201;
		String character_reader_1_expr55_line_201 = null;
		if (character_reader_1_expr54_line_201) {
			char[] f_char_buf_499_line_201 = charBuf;
			String[] f_string_cache_495_line_201 = stringCache;
			int v_start_519_line_201_v1 = start;
			int f_buf_pos_503_line_201_v1 = bufPos;
			int v_start_519_line_201_v2 = start;
			int character_reader_1_expr56_line_201 = f_buf_pos_503_line_201_v1 - v_start_519_line_201_v2;
			character_reader_1_expr55_line_201 = cacheString(f_char_buf_499_line_201, f_string_cache_495_line_201,
					v_start_519_line_201_v1, character_reader_1_expr56_line_201);
		}
		String character_reader_1_expr53_line_201 = character_reader_1_expr54_line_201
				? character_reader_1_expr55_line_201
				: "";
		int PROBE_END_LINE_201 = 201;
		return character_reader_1_expr53_line_201;
    }

    String consumeToAnySorted(final char... chars) {
        bufferUp();
        int PROBE_START_LINE_206 = 206;
		int f_buf_pos_503_line_206 = bufPos;
		int PROBE_END_LINE_206 = 206;
		final int start = f_buf_pos_503_line_206;
        int PROBE_START_LINE_207 = 207;
		int f_buf_length_506_line_207 = bufLength;
		int PROBE_END_LINE_207 = 207;
		final int remaining = f_buf_length_506_line_207;
        int PROBE_START_LINE_208 = 208;
		char[] f_char_buf_499_line_208 = charBuf;
		int PROBE_END_LINE_208 = 208;
		final char[] val = f_char_buf_499_line_208;

        while (true) {
            int PROBE_START_LINE_210 = 210;
			int f_buf_pos_503_line_210 = bufPos;
			int v_remaining_525_line_210 = remaining;
			boolean character_reader_1_expr58_line_210 = f_buf_pos_503_line_210 < v_remaining_525_line_210;
			if (!(character_reader_1_expr58_line_210)) {
				break;
			}
			int PROBE_END_LINE_210 = 210;
			int PROBE_START_LINE_211 = 212;
			char[] p_chars_523_line_211 = chars;
			char[] v_val_526_line_211 = val;
			int f_buf_pos_503_line_211 = bufPos;
			char character_reader_1_expr61_line_211 = v_val_526_line_211[f_buf_pos_503_line_211];
			int character_reader_1_expr60_line_211 = Arrays.binarySearch(p_chars_523_line_211,
					character_reader_1_expr61_line_211);
			boolean character_reader_1_expr59_line_211 = character_reader_1_expr60_line_211 >= 0;
			int PROBE_END_LINE_211 = 212;
			if (character_reader_1_expr59_line_211)
                break;
            bufPos++;
        }

        int PROBE_START_LINE_216 = 216;
		int f_buf_pos_503_line_216 = bufPos;
		int v_start_524_line_216 = start;
		boolean character_reader_1_expr64_line_216 = f_buf_pos_503_line_216 > v_start_524_line_216;
		String character_reader_1_expr65_line_216 = null;
		if (character_reader_1_expr64_line_216) {
			char[] f_char_buf_499_line_216 = charBuf;
			String[] f_string_cache_495_line_216 = stringCache;
			int v_start_524_line_216_v1 = start;
			int f_buf_pos_503_line_216_v1 = bufPos;
			int v_start_524_line_216_v2 = start;
			int character_reader_1_expr66_line_216 = f_buf_pos_503_line_216_v1 - v_start_524_line_216_v2;
			character_reader_1_expr65_line_216 = cacheString(f_char_buf_499_line_216, f_string_cache_495_line_216,
					v_start_524_line_216_v1, character_reader_1_expr66_line_216);
		}
		String character_reader_1_expr63_line_216 = character_reader_1_expr64_line_216
				? character_reader_1_expr65_line_216
				: "";
		int PROBE_END_LINE_216 = 216;
		return character_reader_1_expr63_line_216;
    }

    String consumeData() {
        // &, <, null
        bufferUp();
        int PROBE_START_LINE_222 = 222;
		int f_buf_pos_503_line_222 = bufPos;
		int PROBE_END_LINE_222 = 222;
		final int start = f_buf_pos_503_line_222;
        int PROBE_START_LINE_223 = 223;
		int f_buf_length_506_line_223 = bufLength;
		int PROBE_END_LINE_223 = 223;
		final int remaining = f_buf_length_506_line_223;
        int PROBE_START_LINE_224 = 224;
		char[] f_char_buf_499_line_224 = charBuf;
		int PROBE_END_LINE_224 = 224;
		final char[] val = f_char_buf_499_line_224;

        while (true) {
            int PROBE_START_LINE_226 = 226;
			int f_buf_pos_503_line_226 = bufPos;
			int v_remaining_528_line_226 = remaining;
			boolean character_reader_1_expr68_line_226 = f_buf_pos_503_line_226 < v_remaining_528_line_226;
			if (!(character_reader_1_expr68_line_226)) {
				break;
			}
			int PROBE_END_LINE_226 = 226;
			int PROBE_START_LINE_227 = 227;
			char[] v_val_529_line_227 = val;
			int f_buf_pos_503_line_227 = bufPos;
			char character_reader_1_expr69_line_227 = v_val_529_line_227[f_buf_pos_503_line_227];
			int PROBE_END_LINE_227 = 227;
			final char c = character_reader_1_expr69_line_227;
            int PROBE_START_LINE_228 = 229;
			char v_c_530_line_228 = c;
			boolean character_reader_1_expr72_line_228 = v_c_530_line_228 == '&';
			boolean character_reader_1_expr73_line_228 = false;
			if (!character_reader_1_expr72_line_228) {
				char v_c_530_line_228_v1 = c;
				character_reader_1_expr73_line_228 = v_c_530_line_228_v1 == '<';
			}
			boolean character_reader_1_expr71_line_228 = character_reader_1_expr72_line_228
					|| character_reader_1_expr73_line_228;
			boolean character_reader_1_expr74_line_228 = false;
			if (!character_reader_1_expr71_line_228) {
				char v_c_530_line_228_v2 = c;
				char q_null_char_24_line_228 = TokeniserState.nullChar;
				character_reader_1_expr74_line_228 = v_c_530_line_228_v2 == q_null_char_24_line_228;
			}
			boolean character_reader_1_expr70_line_228 = character_reader_1_expr71_line_228
					|| character_reader_1_expr74_line_228;
			int PROBE_END_LINE_228 = 229;
			if (character_reader_1_expr70_line_228)
                break;
            bufPos++;
        }

        int PROBE_START_LINE_233 = 233;
		int f_buf_pos_503_line_233 = bufPos;
		int v_start_527_line_233 = start;
		boolean character_reader_1_expr77_line_233 = f_buf_pos_503_line_233 > v_start_527_line_233;
		String character_reader_1_expr78_line_233 = null;
		if (character_reader_1_expr77_line_233) {
			char[] f_char_buf_499_line_233 = charBuf;
			String[] f_string_cache_495_line_233 = stringCache;
			int v_start_527_line_233_v1 = start;
			int f_buf_pos_503_line_233_v1 = bufPos;
			int v_start_527_line_233_v2 = start;
			int character_reader_1_expr79_line_233 = f_buf_pos_503_line_233_v1 - v_start_527_line_233_v2;
			character_reader_1_expr78_line_233 = cacheString(f_char_buf_499_line_233, f_string_cache_495_line_233,
					v_start_527_line_233_v1, character_reader_1_expr79_line_233);
		}
		String character_reader_1_expr76_line_233 = character_reader_1_expr77_line_233
				? character_reader_1_expr78_line_233
				: "";
		int PROBE_END_LINE_233 = 233;
		return character_reader_1_expr76_line_233;
    }

    String consumeTagName() {
        // '\t', '\n', '\r', '\f', ' ', '/', '>', nullChar
        bufferUp();
        int PROBE_START_LINE_239 = 239;
		int f_buf_pos_503_line_239 = bufPos;
		int PROBE_END_LINE_239 = 239;
		final int start = f_buf_pos_503_line_239;
        int PROBE_START_LINE_240 = 240;
		int f_buf_length_506_line_240 = bufLength;
		int PROBE_END_LINE_240 = 240;
		final int remaining = f_buf_length_506_line_240;
        int PROBE_START_LINE_241 = 241;
		char[] f_char_buf_499_line_241 = charBuf;
		int PROBE_END_LINE_241 = 241;
		final char[] val = f_char_buf_499_line_241;

        while (true) {
            int PROBE_START_LINE_243 = 243;
			int f_buf_pos_503_line_243 = bufPos;
			int v_remaining_532_line_243 = remaining;
			boolean character_reader_1_expr81_line_243 = f_buf_pos_503_line_243 < v_remaining_532_line_243;
			if (!(character_reader_1_expr81_line_243)) {
				break;
			}
			int PROBE_END_LINE_243 = 243;
			int PROBE_START_LINE_244 = 244;
			char[] v_val_533_line_244 = val;
			int f_buf_pos_503_line_244 = bufPos;
			char character_reader_1_expr82_line_244 = v_val_533_line_244[f_buf_pos_503_line_244];
			int PROBE_END_LINE_244 = 244;
			final char c = character_reader_1_expr82_line_244;
            int PROBE_START_LINE_245 = 246;
			char v_c_534_line_245 = c;
			boolean character_reader_1_expr90_line_245 = v_c_534_line_245 == '\t';
			boolean character_reader_1_expr91_line_245 = false;
			if (!character_reader_1_expr90_line_245) {
				char v_c_534_line_245_v1 = c;
				character_reader_1_expr91_line_245 = v_c_534_line_245_v1 == '\n';
			}
			boolean character_reader_1_expr89_line_245 = character_reader_1_expr90_line_245
					|| character_reader_1_expr91_line_245;
			boolean character_reader_1_expr92_line_245 = false;
			if (!character_reader_1_expr89_line_245) {
				char v_c_534_line_245_v2 = c;
				character_reader_1_expr92_line_245 = v_c_534_line_245_v2 == '\r';
			}
			boolean character_reader_1_expr88_line_245 = character_reader_1_expr89_line_245
					|| character_reader_1_expr92_line_245;
			boolean character_reader_1_expr93_line_245 = false;
			if (!character_reader_1_expr88_line_245) {
				char v_c_534_line_245_v3 = c;
				character_reader_1_expr93_line_245 = v_c_534_line_245_v3 == '\f';
			}
			boolean character_reader_1_expr87_line_245 = character_reader_1_expr88_line_245
					|| character_reader_1_expr93_line_245;
			boolean character_reader_1_expr94_line_245 = false;
			if (!character_reader_1_expr87_line_245) {
				char v_c_534_line_245_v4 = c;
				character_reader_1_expr94_line_245 = v_c_534_line_245_v4 == ' ';
			}
			boolean character_reader_1_expr86_line_245 = character_reader_1_expr87_line_245
					|| character_reader_1_expr94_line_245;
			boolean character_reader_1_expr95_line_245 = false;
			if (!character_reader_1_expr86_line_245) {
				char v_c_534_line_245_v5 = c;
				character_reader_1_expr95_line_245 = v_c_534_line_245_v5 == '/';
			}
			boolean character_reader_1_expr85_line_245 = character_reader_1_expr86_line_245
					|| character_reader_1_expr95_line_245;
			boolean character_reader_1_expr96_line_245 = false;
			if (!character_reader_1_expr85_line_245) {
				char v_c_534_line_245_v6 = c;
				character_reader_1_expr96_line_245 = v_c_534_line_245_v6 == '>';
			}
			boolean character_reader_1_expr84_line_245 = character_reader_1_expr85_line_245
					|| character_reader_1_expr96_line_245;
			boolean character_reader_1_expr97_line_245 = false;
			if (!character_reader_1_expr84_line_245) {
				char v_c_534_line_245_v7 = c;
				char q_null_char_25_line_245 = TokeniserState.nullChar;
				character_reader_1_expr97_line_245 = v_c_534_line_245_v7 == q_null_char_25_line_245;
			}
			boolean character_reader_1_expr83_line_245 = character_reader_1_expr84_line_245
					|| character_reader_1_expr97_line_245;
			int PROBE_END_LINE_245 = 246;
			if (character_reader_1_expr83_line_245)
                break;
            bufPos++;
        }

        int PROBE_START_LINE_250 = 250;
		int f_buf_pos_503_line_250 = bufPos;
		int v_start_531_line_250 = start;
		boolean character_reader_1_expr100_line_250 = f_buf_pos_503_line_250 > v_start_531_line_250;
		String character_reader_1_expr101_line_250 = null;
		if (character_reader_1_expr100_line_250) {
			char[] f_char_buf_499_line_250 = charBuf;
			String[] f_string_cache_495_line_250 = stringCache;
			int v_start_531_line_250_v1 = start;
			int f_buf_pos_503_line_250_v1 = bufPos;
			int v_start_531_line_250_v2 = start;
			int character_reader_1_expr102_line_250 = f_buf_pos_503_line_250_v1 - v_start_531_line_250_v2;
			character_reader_1_expr101_line_250 = cacheString(f_char_buf_499_line_250, f_string_cache_495_line_250,
					v_start_531_line_250_v1, character_reader_1_expr102_line_250);
		}
		String character_reader_1_expr99_line_250 = character_reader_1_expr100_line_250
				? character_reader_1_expr101_line_250
				: "";
		int PROBE_END_LINE_250 = 250;
		return character_reader_1_expr99_line_250;
    }

    String consumeToEnd() {
        bufferUp();
        String data = cacheString(charBuf, stringCache, bufPos, bufLength - bufPos);
        bufPos = bufLength;
        return data;
    }

    String consumeLetterSequence() {
        bufferUp();
        int PROBE_START_LINE_262 = 262;
		int f_buf_pos_503_line_262 = bufPos;
		int PROBE_END_LINE_262 = 262;
		int start = f_buf_pos_503_line_262;
        while (true) {
            int PROBE_START_LINE_263 = 263;
			int f_buf_pos_503_line_263 = bufPos;
			int f_buf_length_506_line_263 = bufLength;
			boolean character_reader_1_expr104_line_263 = f_buf_pos_503_line_263 < f_buf_length_506_line_263;
			if (!(character_reader_1_expr104_line_263)) {
				break;
			}
			int PROBE_END_LINE_263 = 263;
			int PROBE_START_LINE_264 = 264;
			char[] f_char_buf_499_line_264 = charBuf;
			int f_buf_pos_503_line_264 = bufPos;
			char character_reader_1_expr105_line_264 = f_char_buf_499_line_264[f_buf_pos_503_line_264];
			int PROBE_END_LINE_264 = 264;
			char c = character_reader_1_expr105_line_264;
            int PROBE_START_LINE_265 = 268;
			char v_c_536_line_265 = c;
			boolean character_reader_1_expr109_line_265 = v_c_536_line_265 >= 'A';
			boolean character_reader_1_expr110_line_265 = true;
			if (character_reader_1_expr109_line_265) {
				char v_c_536_line_265_v1 = c;
				character_reader_1_expr110_line_265 = v_c_536_line_265_v1 <= 'Z';
			}
			boolean character_reader_1_expr108_line_265 = character_reader_1_expr109_line_265
					&& character_reader_1_expr110_line_265;
			boolean character_reader_1_expr107_line_265 = (character_reader_1_expr108_line_265);
			boolean character_reader_1_expr111_line_265 = false;
			boolean character_reader_1_expr115_line_265 = false;
			if (!character_reader_1_expr107_line_265) {
				char v_c_536_line_265_v2 = c;
				boolean character_reader_1_expr113_line_265 = v_c_536_line_265_v2 >= 'a';
				boolean character_reader_1_expr114_line_265 = true;
				if (character_reader_1_expr113_line_265) {
					char v_c_536_line_265_v3 = c;
					character_reader_1_expr114_line_265 = v_c_536_line_265_v3 <= 'z';
				}
				boolean character_reader_1_expr112_line_265 = character_reader_1_expr113_line_265
						&& character_reader_1_expr114_line_265;
				character_reader_1_expr111_line_265 = (character_reader_1_expr112_line_265);
				if (!character_reader_1_expr111_line_265) {
					char v_c_536_line_265_v4 = c;
					character_reader_1_expr115_line_265 = Character.isLetter(v_c_536_line_265_v4);
				}
			}
			boolean character_reader_1_expr106_line_265 = character_reader_1_expr107_line_265
					|| character_reader_1_expr111_line_265 || character_reader_1_expr115_line_265;
			int PROBE_END_LINE_265 = 268;
			if (character_reader_1_expr106_line_265)
                bufPos++;
            else
                break;
        }

        int PROBE_START_LINE_271 = 271;
		char[] f_char_buf_499_line_271 = charBuf;
		String[] f_string_cache_495_line_271 = stringCache;
		int v_start_535_line_271 = start;
		int f_buf_pos_503_line_271 = bufPos;
		int v_start_535_line_271_v1 = start;
		int character_reader_1_expr118_line_271 = f_buf_pos_503_line_271 - v_start_535_line_271_v1;
		String character_reader_1_expr117_line_271 = cacheString(f_char_buf_499_line_271, f_string_cache_495_line_271,
				v_start_535_line_271, character_reader_1_expr118_line_271);
		int PROBE_END_LINE_271 = 271;
		return character_reader_1_expr117_line_271;
    }

    String consumeLetterThenDigitSequence() {
        bufferUp();
        int start = bufPos;
        while (bufPos < bufLength) {
            char c = charBuf[bufPos];
            if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || Character.isLetter(c))
                bufPos++;
            else
                break;
        }
        while (!isEmpty()) {
            char c = charBuf[bufPos];
            if (c >= '0' && c <= '9')
                bufPos++;
            else
                break;
        }

        return cacheString(charBuf, stringCache, start, bufPos - start);
    }

    String consumeHexSequence() {
        bufferUp();
        int start = bufPos;
        while (bufPos < bufLength) {
            char c = charBuf[bufPos];
            if ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f'))
                bufPos++;
            else
                break;
        }
        return cacheString(charBuf, stringCache, start, bufPos - start);
    }

    String consumeDigitSequence() {
        bufferUp();
        int start = bufPos;
        while (bufPos < bufLength) {
            char c = charBuf[bufPos];
            if (c >= '0' && c <= '9')
                bufPos++;
            else
                break;
        }
        return cacheString(charBuf, stringCache, start, bufPos - start);
    }

    boolean matches(char c) {
        return !isEmpty() && charBuf[bufPos] == c;

    }

    boolean matches(String seq) {
        bufferUp();
        int PROBE_START_LINE_328 = 328;
		String p_seq_538_line_328 = seq;
		int character_reader_1_expr120_line_328 = p_seq_538_line_328.length();
		int PROBE_END_LINE_328 = 328;
		int scanLength = character_reader_1_expr120_line_328;
        int PROBE_START_LINE_329 = 330;
		int v_scan_length_539_line_329 = scanLength;
		int f_buf_length_506_line_329 = bufLength;
		int f_buf_pos_503_line_329 = bufPos;
		int character_reader_1_expr122_line_329 = f_buf_length_506_line_329 - f_buf_pos_503_line_329;
		boolean character_reader_1_expr121_line_329 = v_scan_length_539_line_329 > character_reader_1_expr122_line_329;
		int PROBE_END_LINE_329 = 330;
		if (character_reader_1_expr121_line_329)
            return false;

        for (int offset = 0; true; offset++) {
			int PROBE_START_LINE_333 = 334;
			int v_offset_540_line_332 = offset;
			int v_scan_length_539_line_332 = scanLength;
			boolean character_reader_1_expr124_line_332 = v_offset_540_line_332 < v_scan_length_539_line_332;
			if (!(character_reader_1_expr124_line_332)) {
				break;
			}
			String p_seq_538_line_333 = seq;
			int v_offset_540_line_333 = offset;
			char character_reader_1_expr127_line_333 = p_seq_538_line_333.charAt(v_offset_540_line_333);
			char[] f_char_buf_499_line_333 = charBuf;
			int f_buf_pos_503_line_333 = bufPos;
			int v_offset_540_line_333_v1 = offset;
			int character_reader_1_expr129_line_333 = f_buf_pos_503_line_333 + v_offset_540_line_333_v1;
			char character_reader_1_expr128_line_333 = f_char_buf_499_line_333[character_reader_1_expr129_line_333];
			boolean character_reader_1_expr126_line_333 = character_reader_1_expr127_line_333 != character_reader_1_expr128_line_333;
			int PROBE_END_LINE_333 = 334;
			if (character_reader_1_expr126_line_333)
				return false;
		}
        return true;
    }

    boolean matchesIgnoreCase(String seq) {
        bufferUp();
        int PROBE_START_LINE_340 = 340;
		String p_seq_541_line_340 = seq;
		int character_reader_1_expr131_line_340 = p_seq_541_line_340.length();
		int PROBE_END_LINE_340 = 340;
		int scanLength = character_reader_1_expr131_line_340;
        int PROBE_START_LINE_341 = 342;
		int v_scan_length_542_line_341 = scanLength;
		int f_buf_length_506_line_341 = bufLength;
		int f_buf_pos_503_line_341 = bufPos;
		int character_reader_1_expr133_line_341 = f_buf_length_506_line_341 - f_buf_pos_503_line_341;
		boolean character_reader_1_expr132_line_341 = v_scan_length_542_line_341 > character_reader_1_expr133_line_341;
		int PROBE_END_LINE_341 = 342;
		if (character_reader_1_expr132_line_341)
            return false;

        for (int offset = 0; true; offset++) {
            int PROBE_START_LINE_345 = 345;
			int v_offset_543_line_344 = offset;
			int v_scan_length_542_line_344 = scanLength;
			boolean character_reader_1_expr135_line_344 = v_offset_543_line_344 < v_scan_length_542_line_344;
			if (!(character_reader_1_expr135_line_344)) {
				break;
			}
			String p_seq_541_line_345 = seq;
			int v_offset_543_line_345 = offset;
			char character_reader_1_expr138_line_345 = p_seq_541_line_345.charAt(v_offset_543_line_345);
			char character_reader_1_expr137_line_345 = Character.toUpperCase(character_reader_1_expr138_line_345);
			int PROBE_END_LINE_345 = 345;
			char upScan = character_reader_1_expr137_line_345;
            int PROBE_START_LINE_346 = 346;
			char[] f_char_buf_499_line_346 = charBuf;
			int f_buf_pos_503_line_346 = bufPos;
			int v_offset_543_line_346 = offset;
			int character_reader_1_expr141_line_346 = f_buf_pos_503_line_346 + v_offset_543_line_346;
			char character_reader_1_expr140_line_346 = f_char_buf_499_line_346[character_reader_1_expr141_line_346];
			char character_reader_1_expr139_line_346 = Character.toUpperCase(character_reader_1_expr140_line_346);
			int PROBE_END_LINE_346 = 346;
			char upTarget = character_reader_1_expr139_line_346;
            int PROBE_START_LINE_347 = 348;
			char v_up_scan_544_line_347 = upScan;
			char v_up_target_545_line_347 = upTarget;
			boolean character_reader_1_expr142_line_347 = v_up_scan_544_line_347 != v_up_target_545_line_347;
			int PROBE_END_LINE_347 = 348;
			if (character_reader_1_expr142_line_347)
                return false;
        }
        return true;
    }

    boolean matchesAny(char... seq) {
        if (isEmpty())
            return false;

        bufferUp();
        char c = charBuf[bufPos];
        for (char seek : seq) {
            if (seek == c)
                return true;
        }
        return false;
    }

    boolean matchesAnySorted(char[] seq) {
        bufferUp();
        return !isEmpty() && Arrays.binarySearch(seq, charBuf[bufPos]) >= 0;
    }

    boolean matchesLetter() {
        int PROBE_START_LINE_372 = 373;
		boolean character_reader_1_expr143_line_372 = isEmpty();
		int PROBE_END_LINE_372 = 373;
		if (character_reader_1_expr143_line_372)
            return false;
        int PROBE_START_LINE_374 = 374;
		char[] f_char_buf_499_line_374 = charBuf;
		int f_buf_pos_503_line_374 = bufPos;
		char character_reader_1_expr144_line_374 = f_char_buf_499_line_374[f_buf_pos_503_line_374];
		int PROBE_END_LINE_374 = 374;
		char c = character_reader_1_expr144_line_374;
        int PROBE_START_LINE_375 = 375;
		char v_c_548_line_375 = c;
		boolean character_reader_1_expr148_line_375 = v_c_548_line_375 >= 'A';
		boolean character_reader_1_expr149_line_375 = true;
		if (character_reader_1_expr148_line_375) {
			char v_c_548_line_375_v1 = c;
			character_reader_1_expr149_line_375 = v_c_548_line_375_v1 <= 'Z';
		}
		boolean character_reader_1_expr147_line_375 = character_reader_1_expr148_line_375
				&& character_reader_1_expr149_line_375;
		boolean character_reader_1_expr146_line_375 = (character_reader_1_expr147_line_375);
		boolean character_reader_1_expr150_line_375 = false;
		boolean character_reader_1_expr154_line_375 = false;
		if (!character_reader_1_expr146_line_375) {
			char v_c_548_line_375_v2 = c;
			boolean character_reader_1_expr152_line_375 = v_c_548_line_375_v2 >= 'a';
			boolean character_reader_1_expr153_line_375 = true;
			if (character_reader_1_expr152_line_375) {
				char v_c_548_line_375_v3 = c;
				character_reader_1_expr153_line_375 = v_c_548_line_375_v3 <= 'z';
			}
			boolean character_reader_1_expr151_line_375 = character_reader_1_expr152_line_375
					&& character_reader_1_expr153_line_375;
			character_reader_1_expr150_line_375 = (character_reader_1_expr151_line_375);
			if (!character_reader_1_expr150_line_375) {
				char v_c_548_line_375_v4 = c;
				character_reader_1_expr154_line_375 = Character.isLetter(v_c_548_line_375_v4);
			}
		}
		boolean character_reader_1_expr145_line_375 = character_reader_1_expr146_line_375
				|| character_reader_1_expr150_line_375 || character_reader_1_expr154_line_375;
		int PROBE_END_LINE_375 = 375;
		return character_reader_1_expr145_line_375;
    }

    boolean matchesDigit() {
        if (isEmpty())
            return false;
        char c = charBuf[bufPos];
        return (c >= '0' && c <= '9');
    }

    boolean matchConsume(String seq) {
        bufferUp();
        int PROBE_START_LINE_387 = 392;
		String p_seq_549_line_387 = seq;
		boolean character_reader_1_expr156_line_387 = matches(p_seq_549_line_387);
		int PROBE_END_LINE_387 = 392;
		if (character_reader_1_expr156_line_387) {
            bufPos += seq.length();
            return true;
        } else {
            return false;
        }
    }

    boolean matchConsumeIgnoreCase(String seq) {
        int PROBE_START_LINE_396 = 401;
		String p_seq_550_line_396 = seq;
		boolean character_reader_1_expr157_line_396 = matchesIgnoreCase(p_seq_550_line_396);
		int PROBE_END_LINE_396 = 401;
		if (character_reader_1_expr157_line_396) {
            int PROBE_START_LINE_397 = 397;
			String p_seq_550_line_397 = seq;
			int character_reader_1_expr159_line_397 = p_seq_550_line_397.length();
			int PROBE_END_LINE_397 = 397;
			bufPos += character_reader_1_expr159_line_397;
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
        return new String(charBuf, bufPos, bufLength - bufPos);
    }

    /**
     * Caches short strings, as a flywheel pattern, to reduce GC load. Just for this doc, to prevent leaks.
     * <p />
     * Simplistic, and on hash collisions just falls back to creating a new string, vs a full HashMap with Entry list.
     * That saves both having to create objects as hash keys, and running through the entry list, at the expense of
     * some more duplicates.
     */
    private static String cacheString(final char[] charBuf, final String[] stringCache, final int start, final int count) {
        int PROBE_START_LINE_425 = 426;
		int p_count_555_line_425 = count;
		int f_max_string_cache_len_556_line_425 = maxStringCacheLen;
		boolean character_reader_1_expr160_line_425 = p_count_555_line_425 > f_max_string_cache_len_556_line_425;
		int PROBE_END_LINE_425 = 426;
		// limit (no cache):
        if (character_reader_1_expr160_line_425) {
			int PROBE_START_LINE_426 = 426;
			char[] p_char_buf_552_line_426 = charBuf;
			int p_start_554_line_426 = start;
			int p_count_555_line_426 = count;
			int PROBE_END_LINE_426 = 426;
			return new String(p_char_buf_552_line_426, p_start_554_line_426, p_count_555_line_426);
		}

        // calculate hash:
        int hash = 0;
        int PROBE_START_LINE_430 = 430;
		int p_start_554_line_430 = start;
		int PROBE_END_LINE_430 = 430;
		int offset = p_start_554_line_430;
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_432 = 432;
			int v_i_559_line_431 = i;
			int p_count_555_line_431 = count;
			boolean character_reader_1_expr163_line_431 = v_i_559_line_431 < p_count_555_line_431;
			if (!(character_reader_1_expr163_line_431)) {
				break;
			}
			int v_hash_557_line_432 = hash;
			int character_reader_1_expr167_line_432 = 31 * v_hash_557_line_432;
			char[] p_char_buf_552_line_432 = charBuf;
			char character_reader_1_expr168_line_432 = p_char_buf_552_line_432[offset++];
			int character_reader_1_expr166_line_432 = character_reader_1_expr167_line_432
					+ character_reader_1_expr168_line_432;
			int PROBE_END_LINE_432 = 432;
			hash = character_reader_1_expr166_line_432;
        }

        int PROBE_START_LINE_436 = 436;
		int v_hash_557_line_436 = hash;
		String[] p_string_cache_553_line_436 = stringCache;
		int q_length_25_line_436 = p_string_cache_553_line_436.length;
		int character_reader_1_expr171_line_436 = q_length_25_line_436 - 1;
		int character_reader_1_expr170_line_436 = v_hash_557_line_436 & character_reader_1_expr171_line_436;
		int PROBE_END_LINE_436 = 436;
		// get from cache
        final int index = character_reader_1_expr170_line_436;
        int PROBE_START_LINE_437 = 437;
		String[] p_string_cache_553_line_437 = stringCache;
		int v_index_560_line_437 = index;
		String character_reader_1_expr172_line_437 = p_string_cache_553_line_437[v_index_560_line_437];
		int PROBE_END_LINE_437 = 437;
		String cached = character_reader_1_expr172_line_437;

        int PROBE_START_LINE_439 = 449;
		String v_cached_561_line_439 = cached;
		boolean character_reader_1_expr173_line_439 = v_cached_561_line_439 == null;
		int PROBE_END_LINE_439 = 449;
		if (character_reader_1_expr173_line_439) { // miss, add
            int PROBE_START_LINE_440 = 440;
			char[] p_char_buf_552_line_440 = charBuf;
			int p_start_554_line_440 = start;
			int p_count_555_line_440 = count;
			int PROBE_END_LINE_440 = 440;
			cached = new String(p_char_buf_552_line_440, p_start_554_line_440, p_count_555_line_440);
            int PROBE_START_LINE_441 = 441;
			String[] p_string_cache_553_line_441 = stringCache;
			int v_index_560_line_441 = index;
			String v_cached_561_line_441 = cached;
			int PROBE_END_LINE_441 = 441;
			p_string_cache_553_line_441[v_index_560_line_441] = v_cached_561_line_441;
        } else { // hashcode hit, check equality
            int PROBE_START_LINE_443 = 448;
			char[] p_char_buf_552_line_443 = charBuf;
			int p_start_554_line_443 = start;
			int p_count_555_line_443 = count;
			String v_cached_561_line_443 = cached;
			boolean character_reader_1_expr178_line_443 = rangeEquals(p_char_buf_552_line_443, p_start_554_line_443,
					p_count_555_line_443, v_cached_561_line_443);
			int PROBE_END_LINE_443 = 448;
			if (character_reader_1_expr178_line_443) { // hit
                int PROBE_START_LINE_444 = 444;
				String v_cached_561_line_444 = cached;
				int PROBE_END_LINE_444 = 444;
				return v_cached_561_line_444;
            } else { // hashcode conflict
                int PROBE_START_LINE_446 = 446;
				char[] p_char_buf_552_line_446 = charBuf;
				int p_start_554_line_446 = start;
				int p_count_555_line_446 = count;
				int PROBE_END_LINE_446 = 446;
				cached = new String(p_char_buf_552_line_446, p_start_554_line_446, p_count_555_line_446);
                int PROBE_START_LINE_447 = 447;
				String[] p_string_cache_553_line_447 = stringCache;
				int v_index_560_line_447 = index;
				String v_cached_561_line_447 = cached;
				int PROBE_END_LINE_447 = 447;
				p_string_cache_553_line_447[v_index_560_line_447] = v_cached_561_line_447; // update the cache, as recently used strings are more likely to show up again
            }
        }
        int PROBE_START_LINE_450 = 450;
		String v_cached_561_line_450 = cached;
		int PROBE_END_LINE_450 = 450;
		return v_cached_561_line_450;
    }

    /**
     * Check if the value of the provided range equals the string.
     */
    static boolean rangeEquals(final char[] charBuf, final int start, int count, final String cached) {
        int PROBE_START_LINE_457 = 465;
		int p_count_564_line_457 = count;
		String p_cached_565_line_457 = cached;
		int character_reader_1_expr184_line_457 = p_cached_565_line_457.length();
		boolean character_reader_1_expr183_line_457 = p_count_564_line_457 == character_reader_1_expr184_line_457;
		int PROBE_END_LINE_457 = 465;
		if (character_reader_1_expr183_line_457) {
            int PROBE_START_LINE_458 = 458;
			int p_start_563_line_458 = start;
			int PROBE_END_LINE_458 = 458;
			int i = p_start_563_line_458;
            int j = 0;
            while (true) {
                int PROBE_START_LINE_460 = 460;
				boolean character_reader_1_expr185_line_460 = count-- != 0;
				if (!(character_reader_1_expr185_line_460)) {
					break;
				}
				int PROBE_END_LINE_460 = 460;
				int PROBE_START_LINE_461 = 462;
				char[] p_char_buf_562_line_461 = charBuf;
				char character_reader_1_expr188_line_461 = p_char_buf_562_line_461[i++];
				String p_cached_565_line_461 = cached;
				char character_reader_1_expr190_line_461 = p_cached_565_line_461.charAt(j++);
				boolean character_reader_1_expr187_line_461 = character_reader_1_expr188_line_461 != character_reader_1_expr190_line_461;
				int PROBE_END_LINE_461 = 462;
				if (character_reader_1_expr187_line_461)
                    return false;
            }
            return true;
        }
        return false;
    }

    // just used for testing
    boolean rangeEquals(final int start, final int count, final String cached) {
        return rangeEquals(charBuf, start, count, cached);
    }
}
