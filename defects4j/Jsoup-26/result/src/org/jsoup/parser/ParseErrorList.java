package org.jsoup.parser;

import java.util.ArrayList;

/**
 * A container for ParseErrors.
 * 
 * @author Jonathan Hedley
 */
class ParseErrorList extends ArrayList<ParseError>{
    private static final int INITIAL_CAPACITY = 16;
    private final int maxSize;
    
    ParseErrorList(int initialCapacity, int maxSize) {
        super(initialCapacity);
        int PROBE_START_LINE_16 = 16;
		int p_max_size_553_line_16 = maxSize;
		int PROBE_END_LINE_16 = 16;
		this.maxSize = p_max_size_553_line_16;
    }
    
    boolean canAddError() {
        int PROBE_START_LINE_20 = 20;
		int parse_error_list_1_expr6_line_20 = size();
		int f_max_size_554_line_20 = maxSize;
		boolean parse_error_list_1_expr5_line_20 = parse_error_list_1_expr6_line_20 < f_max_size_554_line_20;
		int PROBE_END_LINE_20 = 20;
		return parse_error_list_1_expr5_line_20;
    }

    int getMaxSize() {
        return maxSize;
    }

    static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }
    
    static ParseErrorList tracking(int maxSize) {
        return new ParseErrorList(INITIAL_CAPACITY, maxSize);
    }
}
