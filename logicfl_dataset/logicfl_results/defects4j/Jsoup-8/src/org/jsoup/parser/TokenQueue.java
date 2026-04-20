package org.jsoup.parser;

import org.jsoup.helper.Validate;

/**
 * A character queue with parsing helpers.
 *
 * @author Jonathan Hedley
 */
public class TokenQueue {
    private String queue;
    private int pos = 0;
    
    private static final Character ESC = '\\'; // escape char for chomp balanced.

    /**
     Create a new TokenQueue.
     @param data string of data to back queue.
     */
    public TokenQueue(String data) {
        int PROBE_START_LINE_21 = 21;
		String p_data_397_line_21 = data;
		int PROBE_END_LINE_21 = 21;
		Validate.notNull(p_data_397_line_21);
        int PROBE_START_LINE_22 = 22;
		String p_data_397_line_22 = data;
		int PROBE_END_LINE_22 = 22;
		queue = p_data_397_line_22;
    }

    /**
     * Is the queue empty?
     * @return true if no data left in queue.
     */
    public boolean isEmpty() {
        int PROBE_START_LINE_30 = 30;
		int token_queue_1_expr4_line_30 = remainingLength();
		boolean token_queue_1_expr3_line_30 = token_queue_1_expr4_line_30 == 0;
		int PROBE_END_LINE_30 = 30;
		return token_queue_1_expr3_line_30;
    }
    
    private int remainingLength() {
        int PROBE_START_LINE_34 = 34;
		String f_queue_398_line_34 = queue;
		int token_queue_1_expr6_line_34 = f_queue_398_line_34.length();
		int f_pos_395_line_34 = pos;
		int token_queue_1_expr5_line_34 = token_queue_1_expr6_line_34 - f_pos_395_line_34;
		int PROBE_END_LINE_34 = 34;
		return token_queue_1_expr5_line_34;
    }

    /**
     * Retrieves but does not remove the first character from the queue.
     * @return First character, or null if empty.
     */
    public Character peek() {
        return isEmpty() ? null : queue.charAt(pos);
    }

    /**
     Add a character to the start of the queue (will be the next character retrieved).
     @param c character to add
     */
    public void addFirst(Character c) {
        addFirst(c.toString());
    }

    /**
     Add a string to the start of the queue.
     @param seq string to add.
     */
    public void addFirst(String seq) {
        // not very performant, but an edge case
        queue = seq + queue.substring(pos);
        pos = 0;
    }

    /**
     * Tests if the next characters on the queue match the sequence. Case insensitive.
     * @param seq String to check queue for.
     * @return true if the next characters match.
     */
    public boolean matches(String seq) {
        int PROBE_START_LINE_69 = 69;
		String p_seq_401_line_69 = seq;
		int token_queue_1_expr7_line_69 = p_seq_401_line_69.length();
		int PROBE_END_LINE_69 = 69;
		int count = token_queue_1_expr7_line_69;
        int PROBE_START_LINE_70 = 71;
		int v_count_402_line_70 = count;
		int token_queue_1_expr9_line_70 = remainingLength();
		boolean token_queue_1_expr8_line_70 = v_count_402_line_70 > token_queue_1_expr9_line_70;
		int PROBE_END_LINE_70 = 71;
		if (token_queue_1_expr8_line_70)
            return false;

        while (true) {
            int PROBE_START_LINE_73 = 73;
			boolean token_queue_1_expr10_line_73 = --count >= 0;
			if (!(token_queue_1_expr10_line_73)) {
				break;
			}
			int PROBE_END_LINE_73 = 73;
			int PROBE_START_LINE_74 = 75;
			String p_seq_401_line_74 = seq;
			int v_count_402_line_74 = count;
			char token_queue_1_expr14_line_74 = p_seq_401_line_74.charAt(v_count_402_line_74);
			char token_queue_1_expr13_line_74 = Character.toLowerCase(token_queue_1_expr14_line_74);
			String f_queue_398_line_74 = queue;
			int f_pos_395_line_74 = pos;
			int v_count_402_line_74_v1 = count;
			int token_queue_1_expr17_line_74 = f_pos_395_line_74 + v_count_402_line_74_v1;
			char token_queue_1_expr16_line_74 = f_queue_398_line_74.charAt(token_queue_1_expr17_line_74);
			char token_queue_1_expr15_line_74 = Character.toLowerCase(token_queue_1_expr16_line_74);
			boolean token_queue_1_expr12_line_74 = token_queue_1_expr13_line_74 != token_queue_1_expr15_line_74;
			int PROBE_END_LINE_74 = 75;
			if (token_queue_1_expr12_line_74)
                return false;
        }
        return true;
    }

    /**
     * Case sensitive match test.
     * @param seq
     * @return
     */
    public boolean matchesCS(String seq) {
        return queue.startsWith(seq, pos);
    }
    

    /**
     Tests if the next characters match any of the sequences. Case insensitive.
     @param seq
     @return
     */
    public boolean matchesAny(String... seq) {
        int PROBE_START_LINE_96 = 99;
		String[] p_seq_404_line_96 = seq;
		int PROBE_END_LINE_96 = 99;
		for (String s : p_seq_404_line_96) {
            int PROBE_START_LINE_97 = 98;
			String v_s_405_line_97 = s;
			boolean token_queue_1_expr18_line_97 = matches(v_s_405_line_97);
			int PROBE_END_LINE_97 = 98;
			if (token_queue_1_expr18_line_97)
                return true;
        }
        return false;
    }

    public boolean matchesAny(char... seq) {
        int PROBE_START_LINE_104 = 105;
		boolean token_queue_1_expr19_line_104 = isEmpty();
		int PROBE_END_LINE_104 = 105;
		if (token_queue_1_expr19_line_104)
            return false;

        int PROBE_START_LINE_107 = 110;
		char[] p_seq_406_line_107 = seq;
		int PROBE_END_LINE_107 = 110;
		for (char c: p_seq_406_line_107) {
            int PROBE_START_LINE_108 = 109;
			String f_queue_398_line_108 = queue;
			int f_pos_395_line_108 = pos;
			char token_queue_1_expr21_line_108 = f_queue_398_line_108.charAt(f_pos_395_line_108);
			char v_c_407_line_108 = c;
			boolean token_queue_1_expr20_line_108 = token_queue_1_expr21_line_108 == v_c_407_line_108;
			int PROBE_END_LINE_108 = 109;
			if (token_queue_1_expr20_line_108)
                return true;
        }
        return false;
    }

    public boolean matchesStartTag() {
        int PROBE_START_LINE_116 = 116;
		int token_queue_1_expr26_line_116 = remainingLength();
		boolean token_queue_1_expr25_line_116 = token_queue_1_expr26_line_116 >= 2;
		boolean token_queue_1_expr27_line_116 = true;
		if (token_queue_1_expr25_line_116) {
			String f_queue_398_line_116 = queue;
			int f_pos_395_line_116 = pos;
			char token_queue_1_expr28_line_116 = f_queue_398_line_116.charAt(f_pos_395_line_116);
			token_queue_1_expr27_line_116 = token_queue_1_expr28_line_116 == '<';
		}
		boolean token_queue_1_expr24_line_116 = token_queue_1_expr25_line_116 && token_queue_1_expr27_line_116;
		boolean token_queue_1_expr29_line_116 = true;
		if (token_queue_1_expr24_line_116) {
			String f_queue_398_line_116_v1 = queue;
			int f_pos_395_line_116_v1 = pos;
			int token_queue_1_expr31_line_116 = f_pos_395_line_116_v1 + 1;
			char token_queue_1_expr30_line_116 = f_queue_398_line_116_v1.charAt(token_queue_1_expr31_line_116);
			token_queue_1_expr29_line_116 = Character.isLetterOrDigit(token_queue_1_expr30_line_116);
		}
		boolean token_queue_1_expr23_line_116 = token_queue_1_expr24_line_116 && token_queue_1_expr29_line_116;
		boolean token_queue_1_expr22_line_116 = (token_queue_1_expr23_line_116);
		int PROBE_END_LINE_116 = 116;
		// micro opt for matching "<x"
        return token_queue_1_expr22_line_116;
    }

    /**
     * Tests if the queue matches the sequence (as with match), and if they do, removes the matched string from the
     * queue.
     * @param seq String to search for, and if found, remove from queue.
     * @return true if found and removed, false if not found.
     */
    public boolean matchChomp(String seq) {
        int PROBE_START_LINE_126 = 131;
		String p_seq_408_line_126 = seq;
		boolean token_queue_1_expr32_line_126 = matches(p_seq_408_line_126);
		int PROBE_END_LINE_126 = 131;
		if (token_queue_1_expr32_line_126) {
            int PROBE_START_LINE_127 = 127;
			String p_seq_408_line_127 = seq;
			int token_queue_1_expr34_line_127 = p_seq_408_line_127.length();
			int PROBE_END_LINE_127 = 127;
			pos += token_queue_1_expr34_line_127;
            return true;
        } else {
            return false;
        }
    }

    /**
     Tests if queue starts with a whitespace character.
     @return if starts with whitespace
     */
    public boolean matchesWhitespace() {
        int PROBE_START_LINE_139 = 139;
		boolean token_queue_1_expr37_line_139 = isEmpty();
		boolean token_queue_1_expr36_line_139 = !token_queue_1_expr37_line_139;
		boolean token_queue_1_expr38_line_139 = true;
		if (token_queue_1_expr36_line_139) {
			String f_queue_398_line_139 = queue;
			int f_pos_395_line_139 = pos;
			char token_queue_1_expr39_line_139 = f_queue_398_line_139.charAt(f_pos_395_line_139);
			token_queue_1_expr38_line_139 = Character.isWhitespace(token_queue_1_expr39_line_139);
		}
		boolean token_queue_1_expr35_line_139 = token_queue_1_expr36_line_139 && token_queue_1_expr38_line_139;
		int PROBE_END_LINE_139 = 139;
		return token_queue_1_expr35_line_139;
    }

    /**
     Test if the queue matches a word character (letter or digit).
     @return if matches a word character
     */
    public boolean matchesWord() {
        int PROBE_START_LINE_147 = 147;
		boolean token_queue_1_expr42_line_147 = isEmpty();
		boolean token_queue_1_expr41_line_147 = !token_queue_1_expr42_line_147;
		boolean token_queue_1_expr43_line_147 = true;
		if (token_queue_1_expr41_line_147) {
			String f_queue_398_line_147 = queue;
			int f_pos_395_line_147 = pos;
			char token_queue_1_expr44_line_147 = f_queue_398_line_147.charAt(f_pos_395_line_147);
			token_queue_1_expr43_line_147 = Character.isLetterOrDigit(token_queue_1_expr44_line_147);
		}
		boolean token_queue_1_expr40_line_147 = token_queue_1_expr41_line_147 && token_queue_1_expr43_line_147;
		int PROBE_END_LINE_147 = 147;
		return token_queue_1_expr40_line_147;
    }

    /**
     * Drops the next character off the queue.
     */
    public void advance() {
        if (!isEmpty()) pos++;
    }

    /**
     * Consume one character off queue.
     * @return first character on queue.
     */
    public Character consume() {
        Character c = queue.charAt(pos);
        pos++;
        return c;
    }

    /**
     * Consumes the supplied sequence of the queue. If the queue does not start with the supplied sequence, will
     * throw an illegal state exception -- but you should be running match() against that condition.
     <p>
     Case insensitive.
     * @param seq sequence to remove from head of queue.
     */
    public void consume(String seq) {
        int PROBE_START_LINE_175 = 176;
		String p_seq_409_line_175 = seq;
		boolean token_queue_1_expr46_line_175 = matches(p_seq_409_line_175);
		boolean token_queue_1_expr45_line_175 = !token_queue_1_expr46_line_175;
		int PROBE_END_LINE_175 = 176;
		if (token_queue_1_expr45_line_175)
            throw new IllegalStateException("Queue did not match expected sequence");
        int PROBE_START_LINE_177 = 177;
		String p_seq_409_line_177 = seq;
		int token_queue_1_expr47_line_177 = p_seq_409_line_177.length();
		int PROBE_END_LINE_177 = 177;
		int len = token_queue_1_expr47_line_177;
        int PROBE_START_LINE_178 = 179;
		int v_len_410_line_178 = len;
		int token_queue_1_expr49_line_178 = remainingLength();
		boolean token_queue_1_expr48_line_178 = v_len_410_line_178 > token_queue_1_expr49_line_178;
		int PROBE_END_LINE_178 = 179;
		if (token_queue_1_expr48_line_178)
            throw new IllegalStateException("Queue not long enough to consume sequence");
        
        int PROBE_START_LINE_181 = 181;
		int v_len_410_line_181 = len;
		int PROBE_END_LINE_181 = 181;
		pos += v_len_410_line_181;
    }

    /**
     * Pulls a string off the queue, up to but exclusive of the match sequence, or to the queue running out.
     * @param seq String to end on (and not include in return, but leave on queue). <b>Case sensitive.</b>
     * @return The matched data consumed from queue.
     */
    public String consumeTo(String seq) {
        int PROBE_START_LINE_190 = 190;
		String f_queue_398_line_190 = queue;
		String p_seq_411_line_190 = seq;
		int f_pos_395_line_190 = pos;
		int token_queue_1_expr51_line_190 = f_queue_398_line_190.indexOf(p_seq_411_line_190, f_pos_395_line_190);
		int PROBE_END_LINE_190 = 190;
		int offset = token_queue_1_expr51_line_190;
        int PROBE_START_LINE_191 = 197;
		int v_offset_412_line_191 = offset;
		int token_queue_1_expr53_line_191 = -1;
		boolean token_queue_1_expr52_line_191 = v_offset_412_line_191 != token_queue_1_expr53_line_191;
		int PROBE_END_LINE_191 = 197;
		if (token_queue_1_expr52_line_191) {
            int PROBE_START_LINE_192 = 192;
			String f_queue_398_line_192 = queue;
			int f_pos_395_line_192 = pos;
			int v_offset_412_line_192 = offset;
			String token_queue_1_expr54_line_192 = f_queue_398_line_192.substring(f_pos_395_line_192,
					v_offset_412_line_192);
			int PROBE_END_LINE_192 = 192;
			String consumed = token_queue_1_expr54_line_192;
            int PROBE_START_LINE_193 = 193;
			String v_consumed_413_line_193 = consumed;
			int token_queue_1_expr56_line_193 = v_consumed_413_line_193.length();
			int PROBE_END_LINE_193 = 193;
			pos += token_queue_1_expr56_line_193;
            int PROBE_START_LINE_194 = 194;
			String v_consumed_413_line_194 = consumed;
			int PROBE_END_LINE_194 = 194;
			return v_consumed_413_line_194;
        } else {
            return remainder();
        }
    }
    
    public String consumeToIgnoreCase(String seq) {
        int start = pos;
        String first = seq.substring(0, 1);
        boolean canScan = first.toLowerCase().equals(first.toUpperCase()); // if first is not cased, use index of
        while (!isEmpty() && !matches(seq)) {
            if (canScan) {
                int skip = queue.indexOf(first, pos) - pos;
                if (skip <= 0)
                    pos++;
                else if (skip < 0) // no chance of finding, grab to end
                    pos = queue.length() - 1;
                else
                    pos += skip;
            }
            else
                pos++;
        }

        String data = queue.substring(start, pos); 
        return data; 
    }

    /**
     Consumes to the first sequence provided, or to the end of the queue. Leaves the terminator on the queue.
     @param seq any number of terminators to consume to. <b>Case insensitive.</b>
     @return consumed string   
     */
    // todo: method name. not good that consumeTo cares for case, and consume to any doesn't. And the only use for this
    // is is a case sensitive time...
    public String consumeToAny(String... seq) {
        int start = pos;
        while (!isEmpty() && !matchesAny(seq)) {
            pos++;
        }

        String data = queue.substring(start, pos); 
        return data; 
    }

    /**
     * Pulls a string off the queue (like consumeTo), and then pulls off the matched string (but does not return it).
     * <p>
     * If the queue runs out of characters before finding the seq, will return as much as it can (and queue will go
     * isEmpty() == true).
     * @param seq String to match up to, and not include in return, and to pull off queue. <b>Case sensitive.</b>
     * @return Data matched from queue.
     */
    public String chompTo(String seq) {
        int PROBE_START_LINE_248 = 248;
		String p_seq_416_line_248 = seq;
		String token_queue_1_expr57_line_248 = consumeTo(p_seq_416_line_248);
		int PROBE_END_LINE_248 = 248;
		String data = token_queue_1_expr57_line_248;
        int PROBE_START_LINE_249 = 249;
		String p_seq_416_line_249 = seq;
		int PROBE_END_LINE_249 = 249;
		matchChomp(p_seq_416_line_249);
        int PROBE_START_LINE_250 = 250;
		String v_data_417_line_250 = data;
		int PROBE_END_LINE_250 = 250;
		return v_data_417_line_250;
    }
    
    public String chompToIgnoreCase(String seq) {
        String data = consumeToIgnoreCase(seq); // case insensitive scan
        matchChomp(seq);
        return data;
    }

    /**
     * Pulls a balanced string off the queue. E.g. if queue is "(one (two) three) four", (,) will return "one (two) three",
     * and leave " four" on the queue. Unbalanced openers and closers can be escaped (with \). Those escapes will be left
     * in the returned string, which is suitable for regexes (where we need to preserve the escape), but unsuitable for
     * contains text strings; use unescape for that.
     * @param open opener
     * @param close closer
     * @return data matched from the queue
     */
    public String chompBalanced(Character open, Character close) {
        StringBuilder accum = new StringBuilder();
        int depth = 0;
        Character last = null;

        do {
            if (isEmpty()) break;
            Character c = consume();
            if (last == null || !last.equals(ESC)) {
                if (c.equals(open))
                    depth++;
                else if (c.equals(close))
                    depth--;
            }

            if (depth > 0 && last != null)
                accum.append(c); // don't include the outer match pair in the return
            last = c;
        } while (depth > 0);
        return accum.toString();
    }
    
    /**
     * Unescaped a \ escaped string.
     * @param in backslash escaped string
     * @return unescaped string
     */
    public static String unescape(String in) {
        StringBuilder out = new StringBuilder();
        Character last = null;
        for (Character c : in.toCharArray()) {
            if (c.equals(ESC)) {
                if (last != null && last.equals(ESC))
                    out.append(c);
            }
            else 
                out.append(c);
            last = c;
        }
        return out.toString();
    }

    /**
     * Pulls the next run of whitespace characters of the queue.
     */
    public boolean consumeWhitespace() {
        boolean seen = false;
        while (true) {
            int PROBE_START_LINE_315 = 315;
			boolean token_queue_1_expr59_line_315 = matchesWhitespace();
			if (!(token_queue_1_expr59_line_315)) {
				break;
			}
			int PROBE_END_LINE_315 = 315;
			pos++;
            seen = true;
        }
        int PROBE_START_LINE_319 = 319;
		boolean v_seen_422_line_319 = seen;
		int PROBE_END_LINE_319 = 319;
		return v_seen_422_line_319;
    }

    /**
     * Retrieves the next run of word type (letter or digit) off the queue.
     * @return String of word characters from queue, or empty string if none.
     */
    public String consumeWord() {
        int start = pos;
        while (matchesWord())
            pos++;
        return queue.substring(start, pos);
    }
    
    /**
     * Consume an tag name off the queue (word or :, _, -)
     * 
     * @return tag name
     */
    public String consumeTagName() {
        int PROBE_START_LINE_339 = 339;
		int f_pos_395_line_339 = pos;
		int PROBE_END_LINE_339 = 339;
		int start = f_pos_395_line_339;
        while (true) {
			int PROBE_START_LINE_340 = 340;
			boolean token_queue_1_expr64_line_340 = isEmpty();
			boolean token_queue_1_expr63_line_340 = !token_queue_1_expr64_line_340;
			boolean token_queue_1_expr65_line_340 = true;
			if (token_queue_1_expr63_line_340) {
				boolean token_queue_1_expr67_line_340 = matchesWord();
				boolean token_queue_1_expr68_line_340 = false;
				if (!token_queue_1_expr67_line_340) {
					token_queue_1_expr68_line_340 = matchesAny(':', '_', '-');
				}
				boolean token_queue_1_expr66_line_340 = token_queue_1_expr67_line_340 || token_queue_1_expr68_line_340;
				token_queue_1_expr65_line_340 = (token_queue_1_expr66_line_340);
			}
			boolean token_queue_1_expr62_line_340 = token_queue_1_expr63_line_340 && token_queue_1_expr65_line_340;
			if (!(token_queue_1_expr62_line_340)) {
				break;
			}
			int PROBE_END_LINE_340 = 340;
			pos++;
		}
        
        int PROBE_START_LINE_343 = 343;
		String f_queue_398_line_343 = queue;
		int v_start_423_line_343 = start;
		int f_pos_395_line_343 = pos;
		String token_queue_1_expr70_line_343 = f_queue_398_line_343.substring(v_start_423_line_343, f_pos_395_line_343);
		int PROBE_END_LINE_343 = 343;
		return token_queue_1_expr70_line_343;
    }
    
    /**
     * Consume a CSS element selector (tag name, but | instead of : for namespaces, to not conflict with :pseudo selects).
     * 
     * @return tag name
     */
    public String consumeElementSelector() {
        int PROBE_START_LINE_352 = 352;
		int f_pos_395_line_352 = pos;
		int PROBE_END_LINE_352 = 352;
		int start = f_pos_395_line_352;
        while (true) {
			int PROBE_START_LINE_353 = 353;
			boolean token_queue_1_expr73_line_353 = isEmpty();
			boolean token_queue_1_expr72_line_353 = !token_queue_1_expr73_line_353;
			boolean token_queue_1_expr74_line_353 = true;
			if (token_queue_1_expr72_line_353) {
				boolean token_queue_1_expr76_line_353 = matchesWord();
				boolean token_queue_1_expr77_line_353 = false;
				if (!token_queue_1_expr76_line_353) {
					token_queue_1_expr77_line_353 = matchesAny('|', '_', '-');
				}
				boolean token_queue_1_expr75_line_353 = token_queue_1_expr76_line_353 || token_queue_1_expr77_line_353;
				token_queue_1_expr74_line_353 = (token_queue_1_expr75_line_353);
			}
			boolean token_queue_1_expr71_line_353 = token_queue_1_expr72_line_353 && token_queue_1_expr74_line_353;
			if (!(token_queue_1_expr71_line_353)) {
				break;
			}
			int PROBE_END_LINE_353 = 353;
			pos++;
		}
        
        int PROBE_START_LINE_356 = 356;
		String f_queue_398_line_356 = queue;
		int v_start_424_line_356 = start;
		int f_pos_395_line_356 = pos;
		String token_queue_1_expr79_line_356 = f_queue_398_line_356.substring(v_start_424_line_356, f_pos_395_line_356);
		int PROBE_END_LINE_356 = 356;
		return token_queue_1_expr79_line_356;
    }

    /**
     Consume a CSS identifier (ID or class) off the queue (letter, digit, -, _)
     http://www.w3.org/TR/CSS2/syndata.html#value-def-identifier
     @return identifier
     */
    public String consumeCssIdentifier() {
        int start = pos;
        while (!isEmpty() && (matchesWord() || matchesAny('-', '_')))
            pos++;

        return queue.substring(start, pos);
    }

    /**
     Consume an attribute key off the queue (letter, digit, -, _, :")
     @return attribute key
     */
    public String consumeAttributeKey() {
        int PROBE_START_LINE_377 = 377;
		int f_pos_395_line_377 = pos;
		int PROBE_END_LINE_377 = 377;
		int start = f_pos_395_line_377;
        while (true) {
			int PROBE_START_LINE_378 = 378;
			boolean token_queue_1_expr82_line_378 = isEmpty();
			boolean token_queue_1_expr81_line_378 = !token_queue_1_expr82_line_378;
			boolean token_queue_1_expr83_line_378 = true;
			if (token_queue_1_expr81_line_378) {
				boolean token_queue_1_expr85_line_378 = matchesWord();
				boolean token_queue_1_expr86_line_378 = false;
				if (!token_queue_1_expr85_line_378) {
					token_queue_1_expr86_line_378 = matchesAny('-', '_', ':');
				}
				boolean token_queue_1_expr84_line_378 = token_queue_1_expr85_line_378 || token_queue_1_expr86_line_378;
				token_queue_1_expr83_line_378 = (token_queue_1_expr84_line_378);
			}
			boolean token_queue_1_expr80_line_378 = token_queue_1_expr81_line_378 && token_queue_1_expr83_line_378;
			if (!(token_queue_1_expr80_line_378)) {
				break;
			}
			int PROBE_END_LINE_378 = 378;
			pos++;
		}
        
        int PROBE_START_LINE_381 = 381;
		String f_queue_398_line_381 = queue;
		int v_start_425_line_381 = start;
		int f_pos_395_line_381 = pos;
		String token_queue_1_expr88_line_381 = f_queue_398_line_381.substring(v_start_425_line_381, f_pos_395_line_381);
		int PROBE_END_LINE_381 = 381;
		return token_queue_1_expr88_line_381;
    }

    /**
     Consume and return whatever is left on the queue.
     @return remained of queue.
     */
    public String remainder() {
        StringBuilder accum = new StringBuilder();
        while (!isEmpty()) {
            accum.append(consume());
        }
        return accum.toString();
    }
    
    public String toString() {
        return queue.substring(pos);
    }
}
