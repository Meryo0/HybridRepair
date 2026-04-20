package org.jsoup.nodes;

import org.jsoup.SerializationException;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.CharacterReader;
import org.jsoup.parser.Parser;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;

import static org.jsoup.nodes.Entities.EscapeMode.base;
import static org.jsoup.nodes.Entities.EscapeMode.extended;

/**
 * HTML entities, and escape routines.
 * Source: <a href="http://www.w3.org/TR/html5/named-character-references.html#named-character-references">W3C HTML
 * named character references</a>.
 */
public class Entities {
    private static final int empty = -1;
    private static final String emptyName = "";
    static final int codepointRadix = 36;
    int PROBE_START_LINE_30 = 30;

	private static final java.nio.charset.Charset entities_1_expr1_line_30 = Charset.forName("ascii");

	int PROBE_END_LINE_30 = 30;

	private static final Charset ASCII = entities_1_expr1_line_30;

    public enum EscapeMode {
        /**
         * Restricted entities suitable for XHTML output: lt, gt, amp, and quot only.
         */
        xhtml("entities-xhtml.properties", 4),
        /**
         * Default HTML output entities.
         */
        base("entities-base.properties", 106),
        /**
         * Complete HTML entities.
         */
        extended("entities-full.properties", 2125);

        // table of named references to their codepoints. sorted so we can binary search. built by BuildEntities.
        private String[] nameKeys;
        private int[] codeVals; // limitation is the few references with multiple characters; those go into multipoints.

        // table of codepoints to named entities.
        private int[] codeKeys; // we don' support multicodepoints to single named value currently
        private String[] nameVals;

        EscapeMode(String file, int size) {
            int PROBE_START_LINE_55 = 55;
			String p_file_346_line_55 = file;
			int p_size_347_line_55 = size;
			int PROBE_END_LINE_55 = 55;
			load(this, p_file_346_line_55, p_size_347_line_55);
        }

        int codepointForName(final String name) {
            int index = Arrays.binarySearch(nameKeys, name);
            return index >= 0 ? codeVals[index] : empty;
        }

        String nameForCodepoint(final int codepoint) {
            final int index = Arrays.binarySearch(codeKeys, codepoint);
            if (index >= 0) {
                // the results are ordered so lower case versions of same codepoint come after uppercase, and we prefer to emit lower
                // (and binary search for same item with multi results is undefined
                return (index < nameVals.length - 1 && codeKeys[index + 1] == codepoint) ?
                    nameVals[index + 1] : nameVals[index];
            }
            return emptyName;
        }

        private int size() {
            return nameKeys.length;
        }
    }

    private static final HashMap<String, String> multipoints = new HashMap<>(); // name -> multiple character references

    private Entities() {
    }

    /**
     * Check if the input is a known named entity
     *
     * @param name the possible entity name (e.g. "lt" or "amp")
     * @return true if a known named entity
     */
    public static boolean isNamedEntity(final String name) {
        return extended.codepointForName(name) != empty;
    }

    /**
     * Check if the input is a known named entity in the base entity set.
     *
     * @param name the possible entity name (e.g. "lt" or "amp")
     * @return true if a known named entity in the base set
     * @see #isNamedEntity(String)
     */
    public static boolean isBaseNamedEntity(final String name) {
        return base.codepointForName(name) != empty;
    }

    /**
     * Get the Character value of the named entity
     *
     * @param name named entity (e.g. "lt" or "amp")
     * @return the Character value of the named entity (e.g. '{@literal <}' or '{@literal &}')
     * @deprecated does not support characters outside the BMP or multiple character names
     */
    public static Character getCharacterByName(String name) {
        return (char) extended.codepointForName(name);
    }

    /**
     * Get the character(s) represented by the named entity
     *
     * @param name entity (e.g. "lt" or "amp")
     * @return the string value of the character(s) represented by this entity, or "" if not defined
     */
    public static String getByName(String name) {
        String val = multipoints.get(name);
        if (val != null)
            return val;
        int codepoint = extended.codepointForName(name);
        if (codepoint != empty)
            return new String(new int[]{codepoint}, 0, 1);
        return emptyName;
    }

    public static int codepointsForName(final String name, final int[] codepoints) {
        String val = multipoints.get(name);
        if (val != null) {
            codepoints[0] = val.codePointAt(0);
            codepoints[1] = val.codePointAt(1);
            return 2;
        }
        int codepoint = extended.codepointForName(name);
        if (codepoint != empty) {
            codepoints[0] = codepoint;
            return 1;
        }
        return 0;
    }

    static String escape(String string, Document.OutputSettings out) {
        StringBuilder accum = new StringBuilder(string.length() * 2);
        try {
            escape(accum, string, out, false, false, false);
        } catch (IOException e) {
            throw new SerializationException(e); // doesn't happen
        }
        return accum.toString();
    }

    // this method is ugly, and does a lot. but other breakups cause rescanning and stringbuilder generations
    static void escape(Appendable accum, String string, Document.OutputSettings out,
                       boolean inAttribute, boolean normaliseWhite, boolean stripLeadingWhite) throws IOException {

        boolean lastWasWhite = false;
        boolean reachedNonWhite = false;
        final EscapeMode escapeMode = out.escapeMode();
        final CharsetEncoder encoder = out.encoder != null ? out.encoder : out.prepareEncoder();
        final CoreCharset coreCharset = out.coreCharset; // init in out.prepareEncoder()
        final int length = string.length();

        int codePoint;
        for (int offset = 0; offset < length; offset += Character.charCount(codePoint)) {
            codePoint = string.codePointAt(offset);

            if (normaliseWhite) {
                if (StringUtil.isWhitespace(codePoint)) {
                    if ((stripLeadingWhite && !reachedNonWhite) || lastWasWhite)
                        continue;
                    accum.append(' ');
                    lastWasWhite = true;
                    continue;
                } else {
                    lastWasWhite = false;
                    reachedNonWhite = true;
                }
            }
            // surrogate pairs, split implementation for efficiency on single char common case (saves creating strings, char[]):
            if (codePoint < Character.MIN_SUPPLEMENTARY_CODE_POINT) {
                final char c = (char) codePoint;
                // html specific and required escapes:
                switch (c) {
                    case '&':
                        accum.append("&amp;");
                        break;
                    case 0xA0:
                        if (escapeMode != EscapeMode.xhtml)
                            accum.append("&nbsp;");
                        else
                            accum.append("&#xa0;");
                        break;
                    case '<':
                        // escape when in character data or when in a xml attribue val; not needed in html attr val
                        if (!inAttribute || escapeMode == EscapeMode.xhtml)
                            accum.append("&lt;");
                        else
                            accum.append(c);
                        break;
                    case '>':
                        if (!inAttribute)
                            accum.append("&gt;");
                        else
                            accum.append(c);
                        break;
                    case '"':
                        if (inAttribute)
                            accum.append("&quot;");
                        else
                            accum.append(c);
                        break;
                    default:
                        if (canEncode(coreCharset, c, encoder))
                            accum.append(c);
                        else
                            appendEncoded(accum, escapeMode, codePoint);
                }
            } else {
                final String c = new String(Character.toChars(codePoint));
                if (encoder.canEncode(c)) // uses fallback encoder for simplicity
                    accum.append(c);
                else
                    appendEncoded(accum, escapeMode, codePoint);
            }
        }
    }

    private static void appendEncoded(Appendable accum, EscapeMode escapeMode, int codePoint) throws IOException {
        final String name = escapeMode.nameForCodepoint(codePoint);
        if (name != emptyName) // ok for identity check
            accum.append('&').append(name).append(';');
        else
            accum.append("&#x").append(Integer.toHexString(codePoint)).append(';');
    }

    static String unescape(String string) {
        return unescape(string, false);
    }

    /**
     * Unescape the input string.
     *
     * @param string to un-HTML-escape
     * @param strict if "strict" (that is, requires trailing ';' char, otherwise that's optional)
     * @return unescaped string
     */
    static String unescape(String string, boolean strict) {
        return Parser.unescapeEntities(string, strict);
    }

    /*
     * Provides a fast-path for Encoder.canEncode, which drastically improves performance on Android post JellyBean.
     * After KitKat, the implementation of canEncode degrades to the point of being useless. For non ASCII or UTF,
     * performance may be bad. We can add more encoders for common character sets that are impacted by performance
     * issues on Android if required.
     *
     * Benchmarks:     *
     * OLD toHtml() impl v New (fastpath) in millis
     * Wiki: 1895, 16
     * CNN: 6378, 55
     * Alterslash: 3013, 28
     * Jsoup: 167, 2
     */
    private static boolean canEncode(final CoreCharset charset, final char c, final CharsetEncoder fallback) {
        // todo add more charset tests if impacted by Android's bad perf in canEncode
        switch (charset) {
            case ascii:
                return c < 0x80;
            case utf:
                return true; // real is:!(Character.isLowSurrogate(c) || Character.isHighSurrogate(c)); - but already check above
            default:
                return fallback.canEncode(c);
        }
    }

    enum CoreCharset {
        ascii, utf, fallback;

        static CoreCharset byName(final String name) {
            if (name.equals("US-ASCII"))
                return ascii;
            if (name.startsWith("UTF-")) // covers UTF-8, UTF-16, et al
                return utf;
            return fallback;
        }
    }

    private static final char[] codeDelims = {',', ';'};

    private static void load(EscapeMode e, String file, int size) {
        int PROBE_START_LINE_296 = 296;
		int p_size_378_line_296 = size;
		int PROBE_END_LINE_296 = 296;
		e.nameKeys = new String[p_size_378_line_296];
        int PROBE_START_LINE_297 = 297;
		int p_size_378_line_297 = size;
		int PROBE_END_LINE_297 = 297;
		e.codeVals = new int[p_size_378_line_297];
        int PROBE_START_LINE_298 = 298;
		int p_size_378_line_298 = size;
		int PROBE_END_LINE_298 = 298;
		e.codeKeys = new int[p_size_378_line_298];
        int PROBE_START_LINE_299 = 299;
		int p_size_378_line_299 = size;
		int PROBE_END_LINE_299 = 299;
		e.nameVals = new String[p_size_378_line_299];

        int PROBE_START_LINE_301 = 301;
		String p_file_377_line_301 = file;
		InputStream entities_1_expr14_line_301 = Entities.class.getResourceAsStream(p_file_377_line_301);
		int PROBE_END_LINE_301 = 301;
		InputStream stream = entities_1_expr14_line_301;
        int PROBE_START_LINE_302 = 303;
		java.io.InputStream v_stream_379_line_302 = stream;
		boolean entities_1_expr16_line_302 = v_stream_379_line_302 == null;
		int PROBE_END_LINE_302 = 303;
		if (entities_1_expr16_line_302)
            throw new IllegalStateException("Could not read resource " + file + ". Make sure you copy resources for " + Entities.class.getCanonicalName());

        int i = 0;
        BufferedReader input = null;
        try {
            int PROBE_START_LINE_308 = 308;
			java.io.InputStream v_stream_379_line_308 = stream;
			java.nio.charset.Charset f_ascii_342_line_308 = ASCII;
			int PROBE_END_LINE_308 = 308;
			input = new BufferedReader(new InputStreamReader(v_stream_379_line_308, f_ascii_342_line_308));
            int PROBE_START_LINE_309 = 309;
			java.io.BufferedReader v_input_381_line_309 = input;
			int PROBE_END_LINE_309 = 309;
			CharacterReader reader = new CharacterReader(v_input_381_line_309);

            while (true) {
                // NotNestedLessLess=10913,824;1887

                int PROBE_START_LINE_311 = 311;
				org.jsoup.parser.CharacterReader v_reader_382_line_311 = reader;
				boolean entities_1_expr22_line_311 = v_reader_382_line_311.isEmpty();
				boolean entities_1_expr21_line_311 = !entities_1_expr22_line_311;
				if (!(entities_1_expr21_line_311)) {
					break;
				}
				int PROBE_END_LINE_311 = 311;
				int PROBE_START_LINE_314 = 314;
				org.jsoup.parser.CharacterReader v_reader_382_line_314 = reader;
				String entities_1_expr23_line_314 = v_reader_382_line_314.consumeTo('=');
				int PROBE_END_LINE_314 = 314;
				final String name = entities_1_expr23_line_314;
                int PROBE_START_LINE_315 = 315;
				org.jsoup.parser.CharacterReader v_reader_382_line_315 = reader;
				int PROBE_END_LINE_315 = 315;
				v_reader_382_line_315.advance();
                int PROBE_START_LINE_316 = 316;
				org.jsoup.parser.CharacterReader v_reader_382_line_316 = reader;
				char[] f_code_delims_375_line_316 = codeDelims;
				String entities_1_expr26_line_316 = v_reader_382_line_316.consumeToAny(f_code_delims_375_line_316);
				int f_codepoint_radix_385_line_316 = codepointRadix;
				int entities_1_expr25_line_316 = Integer.parseInt(entities_1_expr26_line_316,
						f_codepoint_radix_385_line_316);
				int PROBE_END_LINE_316 = 316;
				final int cp1 = entities_1_expr25_line_316;
                int PROBE_START_LINE_317 = 317;
				org.jsoup.parser.CharacterReader v_reader_382_line_317 = reader;
				char entities_1_expr27_line_317 = v_reader_382_line_317.current();
				int PROBE_END_LINE_317 = 317;
				final char codeDelim = entities_1_expr27_line_317;
                int PROBE_START_LINE_318 = 318;
				org.jsoup.parser.CharacterReader v_reader_382_line_318 = reader;
				int PROBE_END_LINE_318 = 318;
				v_reader_382_line_318.advance();
                final int cp2;
                int PROBE_START_LINE_320 = 325;
				char v_code_delim_386_line_320 = codeDelim;
				boolean entities_1_expr29_line_320 = v_code_delim_386_line_320 == ',';
				int PROBE_END_LINE_320 = 325;
				if (entities_1_expr29_line_320) {
                    int PROBE_START_LINE_321 = 321;
					org.jsoup.parser.CharacterReader v_reader_382_line_321 = reader;
					String entities_1_expr32_line_321 = v_reader_382_line_321.consumeTo(';');
					int f_codepoint_radix_385_line_321 = codepointRadix;
					int entities_1_expr31_line_321 = Integer.parseInt(entities_1_expr32_line_321,
							f_codepoint_radix_385_line_321);
					int PROBE_END_LINE_321 = 321;
					cp2 = entities_1_expr31_line_321;
                    int PROBE_START_LINE_322 = 322;
					org.jsoup.parser.CharacterReader v_reader_382_line_322 = reader;
					int PROBE_END_LINE_322 = 322;
					v_reader_382_line_322.advance();
                } else {
                    int PROBE_START_LINE_324 = 324;
					int f_empty_388_line_324 = empty;
					int PROBE_END_LINE_324 = 324;
					cp2 = f_empty_388_line_324;
                }
                int PROBE_START_LINE_326 = 326;
				org.jsoup.parser.CharacterReader v_reader_382_line_326 = reader;
				String entities_1_expr35_line_326 = v_reader_382_line_326.consumeTo('\n');
				int PROBE_END_LINE_326 = 326;
				String indexS = entities_1_expr35_line_326;
                int PROBE_START_LINE_328 = 330;
				String v_index_s_389_line_328 = indexS;
				String v_index_s_389_line_328_v1 = indexS;
				int entities_1_expr39_line_328 = v_index_s_389_line_328_v1.length();
				int entities_1_expr38_line_328 = entities_1_expr39_line_328 - 1;
				char entities_1_expr37_line_328 = v_index_s_389_line_328.charAt(entities_1_expr38_line_328);
				boolean entities_1_expr36_line_328 = entities_1_expr37_line_328 == '\r';
				int PROBE_END_LINE_328 = 330;
				// default git checkout on windows will add a \r there, so remove
                if (entities_1_expr36_line_328) {
                    indexS = indexS.substring(0, indexS.length() - 1);
                }
                int PROBE_START_LINE_331 = 331;
				String v_index_s_389_line_331 = indexS;
				int f_codepoint_radix_385_line_331 = codepointRadix;
				int entities_1_expr40_line_331 = Integer.parseInt(v_index_s_389_line_331,
						f_codepoint_radix_385_line_331);
				int PROBE_END_LINE_331 = 331;
				final int index = entities_1_expr40_line_331;
                int PROBE_START_LINE_332 = 332;
				org.jsoup.parser.CharacterReader v_reader_382_line_332 = reader;
				int PROBE_END_LINE_332 = 332;
				v_reader_382_line_332.advance();

                int PROBE_START_LINE_334 = 334;
				org.jsoup.nodes.Entities.EscapeMode p_e_376_line_334 = e;
				String[] q_name_keys_19_line_334 = p_e_376_line_334.nameKeys;
				int v_i_380_line_334 = i;
				String v_name_383_line_334 = name;
				int PROBE_END_LINE_334 = 334;
				q_name_keys_19_line_334[v_i_380_line_334] = v_name_383_line_334;
                int PROBE_START_LINE_335 = 335;
				org.jsoup.nodes.Entities.EscapeMode p_e_376_line_335 = e;
				int[] q_code_vals_19_line_335 = p_e_376_line_335.codeVals;
				int v_i_380_line_335 = i;
				int v_cp_1_384_line_335 = cp1;
				int PROBE_END_LINE_335 = 335;
				q_code_vals_19_line_335[v_i_380_line_335] = v_cp_1_384_line_335;
                int PROBE_START_LINE_336 = 336;
				org.jsoup.nodes.Entities.EscapeMode p_e_376_line_336 = e;
				int[] q_code_keys_19_line_336 = p_e_376_line_336.codeKeys;
				int v_index_390_line_336 = index;
				int v_cp_1_384_line_336 = cp1;
				int PROBE_END_LINE_336 = 336;
				q_code_keys_19_line_336[v_index_390_line_336] = v_cp_1_384_line_336;
                int PROBE_START_LINE_337 = 337;
				org.jsoup.nodes.Entities.EscapeMode p_e_376_line_337 = e;
				String[] q_name_vals_19_line_337 = p_e_376_line_337.nameVals;
				int v_index_390_line_337 = index;
				String v_name_383_line_337 = name;
				int PROBE_END_LINE_337 = 337;
				q_name_vals_19_line_337[v_index_390_line_337] = v_name_383_line_337;

                int PROBE_START_LINE_339 = 341;
				int v_cp_2_387_line_339 = cp2;
				int f_empty_388_line_339 = empty;
				boolean entities_1_expr50_line_339 = v_cp_2_387_line_339 != f_empty_388_line_339;
				int PROBE_END_LINE_339 = 341;
				if (entities_1_expr50_line_339) {
                    int PROBE_START_LINE_340 = 340;
					HashMap<String, String> f_multipoints_350_line_340 = multipoints;
					String v_name_383_line_340 = name;
					int v_cp_1_384_line_340 = cp1;
					int v_cp_2_387_line_340 = cp2;
					int PROBE_END_LINE_340 = 340;
					f_multipoints_350_line_340.put(v_name_383_line_340, new String(new int[]{v_cp_1_384_line_340, v_cp_2_387_line_340}, 0, 2));
                }
                i++;
            }
        } finally {
            try {
                int PROBE_START_LINE_346 = 348;
				java.io.BufferedReader v_input_381_line_346 = input;
				boolean entities_1_expr56_line_346 = v_input_381_line_346 != null;
				int PROBE_END_LINE_346 = 348;
				if (entities_1_expr56_line_346) {
                    int PROBE_START_LINE_347 = 347;
					java.io.BufferedReader v_input_381_line_347 = input;
					int PROBE_END_LINE_347 = 347;
					v_input_381_line_347.close();
                }
            } catch (IOException e1) {
                //ignore exception
            }
        }
        int PROBE_START_LINE_353 = 353;
		int v_i_380_line_353 = i;
		int p_size_378_line_353 = size;
		boolean entities_1_expr59_line_353 = v_i_380_line_353 == p_size_378_line_353;
		String p_file_377_line_353 = file;
		String entities_1_expr60_line_353 = "Unexpected count of entities loaded for " + p_file_377_line_353;
		int PROBE_END_LINE_353 = 353;
		Validate.isTrue(entities_1_expr59_line_353, entities_1_expr60_line_353);
    }
}
