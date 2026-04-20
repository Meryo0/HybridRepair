package org.jsoup.internal;

import java.util.Locale;

/**
 * Util methods for normalizing strings. Jsoup internal use only, please don't depend on this API.
 */
public final class Normalizer {

    public static String lowerCase(final String input) {
        int PROBE_START_LINE_11 = 11;
		String p_input_97_line_11 = input;
		java.util.Locale q_english_1_line_11 = Locale.ENGLISH;
		String normalizer_1_expr1_line_11 = p_input_97_line_11.toLowerCase(q_english_1_line_11);
		int PROBE_END_LINE_11 = 11;
		return normalizer_1_expr1_line_11;
    }

    public static String normalize(final String input) {
        return lowerCase(input).trim();
    }
}
