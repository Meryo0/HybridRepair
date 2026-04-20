package org.jsoup.helper;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/**
 * A minimal String utility class. Designed for internal jsoup use only.
 */
public final class StringUtil {
    // memoised padding up to 21
    static final String[] padding = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ",
        "         ", "          ", "           ", "            ", "             ", "              ", "               ",
        "                ", "                 ", "                  ", "                   ", "                    "};

    /**
     * Join a collection of strings by a separator
     * @param strings collection of string objects
     * @param sep string to place between strings
     * @return joined string
     */
    public static String join(Collection strings, String sep) {
        return join(strings.iterator(), sep);
    }

    /**
     * Join a collection of strings by a separator
     * @param strings iterator of string objects
     * @param sep string to place between strings
     * @return joined string
     */
    public static String join(Iterator strings, String sep) {
        if (!strings.hasNext())
            return "";

        String start = strings.next().toString();
        if (!strings.hasNext()) // only one, avoid builder
            return start;

        StringBuilder sb = new StringBuilder(64).append(start);
        while (strings.hasNext()) {
            sb.append(sep);
            sb.append(strings.next());
        }
        return sb.toString();
    }

    /**
     * Returns space padding
     * @param width amount of padding desired
     * @return string of spaces * width
     */
    public static String padding(int width) {
        if (width < 0)
            throw new IllegalArgumentException("width must be > 0");

        if (width < padding.length)
            return padding[width];
        char[] out = new char[width];
        for (int i = 0; i < width; i++)
            out[i] = ' ';
        return String.valueOf(out);
    }

    /**
     * Tests if a string is blank: null, empty, or only whitespace (" ", \r\n, \t, etc)
     * @param string string to test
     * @return if string is blank
     */
    public static boolean isBlank(String string) {
        int PROBE_START_LINE_73 = 74;
		String p_string_57_line_73 = string;
		boolean string_util_1_expr3_line_73 = p_string_57_line_73 == null;
		boolean string_util_1_expr4_line_73 = false;
		if (!string_util_1_expr3_line_73) {
			String p_string_57_line_73_v1 = string;
			int string_util_1_expr5_line_73 = p_string_57_line_73_v1.length();
			string_util_1_expr4_line_73 = string_util_1_expr5_line_73 == 0;
		}
		boolean string_util_1_expr2_line_73 = string_util_1_expr3_line_73 || string_util_1_expr4_line_73;
		int PROBE_END_LINE_73 = 74;
		if (string_util_1_expr2_line_73)
            return true;

        int l = string.length();
        for (int i = 0; i < l; i++) {
            if (!StringUtil.isWhitespace(string.codePointAt(i)))
                return false;
        }
        return true;
    }

    /**
     * Tests if a string is numeric, i.e. contains only digit characters
     * @param string string to test
     * @return true if only digit chars, false if empty or null or contains non-digit chars
     */
    public static boolean isNumeric(String string) {
        if (string == null || string.length() == 0)
            return false;

        int l = string.length();
        for (int i = 0; i < l; i++) {
            if (!Character.isDigit(string.codePointAt(i)))
                return false;
        }
        return true;
    }

    /**
     * Tests if a code point is "whitespace" as defined in the HTML spec. Used for output HTML.
     * @param c code point to test
     * @return true if code point is whitespace, false otherwise
     * @see #isActuallyWhitespace(int)
     */
    public static boolean isWhitespace(int c){
        int PROBE_START_LINE_108 = 108;
		int p_c_59_line_108 = c;
		boolean string_util_1_expr10_line_108 = p_c_59_line_108 == ' ';
		boolean string_util_1_expr11_line_108 = false;
		if (!string_util_1_expr10_line_108) {
			int p_c_59_line_108_v1 = c;
			string_util_1_expr11_line_108 = p_c_59_line_108_v1 == '\t';
		}
		boolean string_util_1_expr9_line_108 = string_util_1_expr10_line_108 || string_util_1_expr11_line_108;
		boolean string_util_1_expr12_line_108 = false;
		if (!string_util_1_expr9_line_108) {
			int p_c_59_line_108_v2 = c;
			string_util_1_expr12_line_108 = p_c_59_line_108_v2 == '\n';
		}
		boolean string_util_1_expr8_line_108 = string_util_1_expr9_line_108 || string_util_1_expr12_line_108;
		boolean string_util_1_expr13_line_108 = false;
		if (!string_util_1_expr8_line_108) {
			int p_c_59_line_108_v3 = c;
			string_util_1_expr13_line_108 = p_c_59_line_108_v3 == '\f';
		}
		boolean string_util_1_expr7_line_108 = string_util_1_expr8_line_108 || string_util_1_expr13_line_108;
		boolean string_util_1_expr14_line_108 = false;
		if (!string_util_1_expr7_line_108) {
			int p_c_59_line_108_v4 = c;
			string_util_1_expr14_line_108 = p_c_59_line_108_v4 == '\r';
		}
		boolean string_util_1_expr6_line_108 = string_util_1_expr7_line_108 || string_util_1_expr14_line_108;
		int PROBE_END_LINE_108 = 108;
		return string_util_1_expr6_line_108;
    }

    /**
     * Tests if a code point is "whitespace" as defined by what it looks like. Used for Element.text etc.
     * @param c code point to test
     * @return true if code point is whitespace, false otherwise
     */
    public static boolean isActuallyWhitespace(int c){
        int PROBE_START_LINE_117 = 117;
		int p_c_60_line_117 = c;
		boolean string_util_1_expr20_line_117 = p_c_60_line_117 == ' ';
		boolean string_util_1_expr21_line_117 = false;
		if (!string_util_1_expr20_line_117) {
			int p_c_60_line_117_v1 = c;
			string_util_1_expr21_line_117 = p_c_60_line_117_v1 == '\t';
		}
		boolean string_util_1_expr19_line_117 = string_util_1_expr20_line_117 || string_util_1_expr21_line_117;
		boolean string_util_1_expr22_line_117 = false;
		if (!string_util_1_expr19_line_117) {
			int p_c_60_line_117_v2 = c;
			string_util_1_expr22_line_117 = p_c_60_line_117_v2 == '\n';
		}
		boolean string_util_1_expr18_line_117 = string_util_1_expr19_line_117 || string_util_1_expr22_line_117;
		boolean string_util_1_expr23_line_117 = false;
		if (!string_util_1_expr18_line_117) {
			int p_c_60_line_117_v3 = c;
			string_util_1_expr23_line_117 = p_c_60_line_117_v3 == '\f';
		}
		boolean string_util_1_expr17_line_117 = string_util_1_expr18_line_117 || string_util_1_expr23_line_117;
		boolean string_util_1_expr24_line_117 = false;
		if (!string_util_1_expr17_line_117) {
			int p_c_60_line_117_v4 = c;
			string_util_1_expr24_line_117 = p_c_60_line_117_v4 == '\r';
		}
		boolean string_util_1_expr16_line_117 = string_util_1_expr17_line_117 || string_util_1_expr24_line_117;
		boolean string_util_1_expr25_line_117 = false;
		if (!string_util_1_expr16_line_117) {
			int p_c_60_line_117_v5 = c;
			string_util_1_expr25_line_117 = p_c_60_line_117_v5 == 160;
		}
		boolean string_util_1_expr15_line_117 = string_util_1_expr16_line_117 || string_util_1_expr25_line_117;
		int PROBE_END_LINE_117 = 117;
		return string_util_1_expr15_line_117;
        // 160 is &nbsp; (non-breaking space). Not in the spec but expected.
    }

    /**
     * Normalise the whitespace within this string; multiple spaces collapse to a single, and all whitespace characters
     * (e.g. newline, tab) convert to a simple space
     * @param string content to normalise
     * @return normalised string
     */
    public static String normaliseWhitespace(String string) {
        StringBuilder sb = StringUtil.stringBuilder();
        appendNormalisedWhitespace(sb, string, false);
        return sb.toString();
    }

    /**
     * After normalizing the whitespace within a string, appends it to a string builder.
     * @param accum builder to append to
     * @param string string to normalize whitespace within
     * @param stripLeading set to true if you wish to remove any leading whitespace
     */
    public static void appendNormalisedWhitespace(StringBuilder accum, String string, boolean stripLeading) {
        boolean lastWasWhite = false;
        boolean reachedNonWhite = false;

        int PROBE_START_LINE_143 = 143;
		String p_string_63_line_143 = string;
		int string_util_1_expr26_line_143 = p_string_63_line_143.length();
		int PROBE_END_LINE_143 = 143;
		int len = string_util_1_expr26_line_143;
        int c = 0;
        int PROBE_START_LINE_144 = 144;
		boolean FOR_STMT_TOGGLE_LINE_145 = false;
		int PROBE_END_LINE_144 = 144;
		for (int i = 0; true;) {
            int PROBE_START_LINE_146 = 146;
			if (FOR_STMT_TOGGLE_LINE_145) {
				int v_c_69_line_145 = c;
				int string_util_1_expr30_line_145 = Character.charCount(v_c_69_line_145);
				i += string_util_1_expr30_line_145;
			} else {
				FOR_STMT_TOGGLE_LINE_145 = true;
			}
			int v_i_68_line_145 = i;
			int v_len_67_line_145 = len;
			boolean string_util_1_expr28_line_145 = v_i_68_line_145 < v_len_67_line_145;
			if (!(string_util_1_expr28_line_145)) {
				break;
			}
			String p_string_63_line_146 = string;
			int v_i_68_line_146 = i;
			int string_util_1_expr32_line_146 = p_string_63_line_146.codePointAt(v_i_68_line_146);
			int PROBE_END_LINE_146 = 146;
			c = string_util_1_expr32_line_146;
            int PROBE_START_LINE_147 = 157;
			int v_c_69_line_147 = c;
			boolean string_util_1_expr33_line_147 = isActuallyWhitespace(v_c_69_line_147);
			int PROBE_END_LINE_147 = 157;
			if (string_util_1_expr33_line_147) {
                int PROBE_START_LINE_148 = 149;
				boolean p_strip_leading_64_line_148 = stripLeading;
				boolean string_util_1_expr37_line_148 = true;
				if (p_strip_leading_64_line_148) {
					boolean v_reached_non_white_66_line_148 = reachedNonWhite;
					string_util_1_expr37_line_148 = !v_reached_non_white_66_line_148;
				}
				boolean string_util_1_expr36_line_148 = p_strip_leading_64_line_148 && string_util_1_expr37_line_148;
				boolean string_util_1_expr35_line_148 = (string_util_1_expr36_line_148);
				boolean v_last_was_white_65_line_148 = false;
				if (!string_util_1_expr35_line_148) {
					v_last_was_white_65_line_148 = lastWasWhite;
				}
				boolean string_util_1_expr34_line_148 = string_util_1_expr35_line_148 || v_last_was_white_65_line_148;
				int PROBE_END_LINE_148 = 149;
				if (string_util_1_expr34_line_148)
                    continue;
                int PROBE_START_LINE_150 = 150;
				StringBuilder p_accum_62_line_150 = accum;
				int PROBE_END_LINE_150 = 150;
				p_accum_62_line_150.append(' ');
                lastWasWhite = true;
            }
            else {
                int PROBE_START_LINE_154 = 154;
				StringBuilder p_accum_62_line_154 = accum;
				int v_c_69_line_154 = c;
				int PROBE_END_LINE_154 = 154;
				p_accum_62_line_154.appendCodePoint(v_c_69_line_154);
                lastWasWhite = false;
                reachedNonWhite = true;
            }
        }
    }

    public static boolean in(String needle, String... haystack) {
        int PROBE_START_LINE_162 = 165;
		String[] p_haystack_71_line_162 = haystack;
		int PROBE_END_LINE_162 = 165;
		for (String hay : p_haystack_71_line_162) {
            int PROBE_START_LINE_163 = 164;
			String v_hay_72_line_163 = hay;
			String p_needle_70_line_163 = needle;
			boolean string_util_1_expr43_line_163 = v_hay_72_line_163.equals(p_needle_70_line_163);
			int PROBE_END_LINE_163 = 164;
			if (string_util_1_expr43_line_163)
            return true;
        }
        return false;
    }

    public static boolean inSorted(String needle, String[] haystack) {
        int PROBE_START_LINE_170 = 170;
		String[] p_haystack_74_line_170 = haystack;
		String p_needle_73_line_170 = needle;
		int string_util_1_expr45_line_170 = Arrays.binarySearch(p_haystack_74_line_170, p_needle_73_line_170);
		boolean string_util_1_expr44_line_170 = string_util_1_expr45_line_170 >= 0;
		int PROBE_END_LINE_170 = 170;
		return string_util_1_expr44_line_170;
    }

    /**
     * Create a new absolute URL, from a provided existing absolute URL and a relative URL component.
     * @param base the existing absolute base URL
     * @param relUrl the relative URL to resolve. (If it's already absolute, it will be returned)
     * @return the resolved absolute URL
     * @throws MalformedURLException if an error occurred generating the URL
     */
    public static URL resolve(URL base, String relUrl) throws MalformedURLException {
        // workaround: java resolves '//path/file + ?foo' to '//path/?foo', not '//path/file?foo' as desired
        if (relUrl.startsWith("?"))
            relUrl = base.getPath() + relUrl;
        // workaround: //example.com + ./foo = //example.com/./foo, not //example.com/foo
        if (relUrl.indexOf('.') == 0 && base.getFile().indexOf('/') != 0) {
            base = new URL(base.getProtocol(), base.getHost(), base.getPort(), "/" + base.getFile());
        }
        return new URL(base, relUrl);
    }

    /**
     * Create a new absolute URL, from a provided existing absolute URL and a relative URL component.
     * @param baseUrl the existing absolute base URL
     * @param relUrl the relative URL to resolve. (If it's already absolute, it will be returned)
     * @return an absolute URL if one was able to be generated, or the empty string if not
     */
    public static String resolve(final String baseUrl, final String relUrl) {
        URL base;
        try {
            try {
                base = new URL(baseUrl);
            } catch (MalformedURLException e) {
                // the base is unsuitable, but the attribute/rel may be abs on its own, so try that
                URL abs = new URL(relUrl);
                return abs.toExternalForm();
            }
            return resolve(base, relUrl).toExternalForm();
        } catch (MalformedURLException e) {
            return "";
        }
    }

    /**
     * Maintains a cached StringBuilder, to minimize new StringBuilder GCs. Prevents it from growing to big per thread.
     * Care must be taken to not grab more than one in the same stack (not locked or mutexed or anything).
     * @return an empty StringBuilder
     */
    public static StringBuilder stringBuilder() {
        StringBuilder sb = stringLocal.get();
        if (sb.length() > MaxCachedBuilderSize) {
            sb = new StringBuilder(MaxCachedBuilderSize);
            stringLocal.set(sb);
        } else {
            sb.delete(0, sb.length());
        }
        return sb;

    }

    private static final int MaxCachedBuilderSize = 8 * 1024;
    private static final ThreadLocal<StringBuilder> stringLocal = new ThreadLocal<StringBuilder>(){
        @Override
        protected StringBuilder initialValue() {
            return new StringBuilder(MaxCachedBuilderSize);
        }
    };


}
