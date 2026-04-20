package org.jsoup.nodes;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.CharsetEncoder;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Properties;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/**
 * HTML entities, and escape routines.
 * Source: <a href="http://www.w3.org/TR/html5/named-character-references.html#named-character-references">W3C HTML
 * named character references</a>.
 */
public class Entities {
    public enum EscapeMode {
        /** Restricted entities suitable for XHTML output: lt, gt, amp, apos, and quot only. */
        xhtml(xhtmlByVal),
        /** Default HTML output entities. */
        base(baseByVal),
        /** Complete HTML entities. */
        extended(fullByVal);

        private Map<Character, String> map;

        EscapeMode(Map<Character, String> map) {
            int PROBE_START_LINE_27 = 27;
			Map<Character, String> p_map_215_line_27 = map;
			int PROBE_END_LINE_27 = 27;
			this.map = p_map_215_line_27;
        }

        public Map<Character, String> getMap() {
            return map;
        }
    }

    private static final Map<String, Character> full;
    private static final Map<Character, String> xhtmlByVal;
    private static final Map<Character, String> baseByVal;
    private static final Map<Character, String> fullByVal;
    int PROBE_START_LINE_39 = 39;

	private static final java.util.regex.Pattern entities_1_expr4_line_39 = Pattern
			.compile("&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);?");

	int PROBE_END_LINE_39 = 39;

	private static final Pattern unescapePattern = entities_1_expr4_line_39;
    int PROBE_START_LINE_40 = 40;

	private static final java.util.regex.Pattern entities_1_expr5_line_40 = Pattern
			.compile("&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);");

	int PROBE_END_LINE_40 = 40;

	private static final Pattern strictUnescapePattern = entities_1_expr5_line_40;

    private Entities() {}

    /**
     * Check if the input is a known named entity
     * @param name the possible entity name (e.g. "lt" or "amp"
     * @return true if a known named entity
     */
    public static boolean isNamedEntity(String name) {
        return full.containsKey(name);
    }

    /**
     * Get the Character value of the named entity
     * @param name named entity (e.g. "lt" or "amp")
     * @return the Character value of the named entity (e.g. '<' or '&')
     */
    public static Character getCharacterByName(String name) {
        return full.get(name);
    }
    
    static String escape(String string, Document.OutputSettings out) {
        return escape(string, out.encoder(), out.escapeMode());
    }

    static String escape(String string, CharsetEncoder encoder, EscapeMode escapeMode) {
        StringBuilder accum = new StringBuilder(string.length() * 2);
        Map<Character, String> map = escapeMode.getMap();

        for (int pos = 0; pos < string.length(); pos++) {
            Character c = string.charAt(pos);
            if (map.containsKey(c))
                accum.append('&').append(map.get(c)).append(';');
            else if (encoder.canEncode(c))
                accum.append(c.charValue());
            else
                accum.append("&#").append((int) c).append(';');
        }

        return accum.toString();
    }

    static String unescape(String string) {
        return unescape(string, false);
    }

    /**
     * Unescape the input string.
     * @param string
     * @param strict if "strict" (that is, requires trailing ';' char, otherwise that's optional)
     * @return
     */
    static String unescape(String string, boolean strict) {
        // todo: change this method to use Tokeniser.consumeCharacterReference
        if (!string.contains("&"))
            return string;

        Matcher m = strict? strictUnescapePattern.matcher(string) : unescapePattern.matcher(string); // &(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]\\d*);?
        StringBuffer accum = new StringBuffer(string.length()); // pity matcher can't use stringbuilder, avoid syncs
        // todo: replace m.appendReplacement with own impl, so StringBuilder and quoteReplacement not required

        while (m.find()) {
            int charval = -1;
            String num = m.group(3);
            if (num != null) {
                try {
                    int base = m.group(2) != null ? 16 : 10; // 2 is hex indicator
                    charval = Integer.valueOf(num, base);
                } catch (NumberFormatException e) {
                } // skip
            } else {
                String name = m.group(1);
                if (full.containsKey(name))
                    charval = full.get(name);
            }

            if (charval != -1 || charval > 0xFFFF) { // out of range
                String c = Character.toString((char) charval);
                m.appendReplacement(accum, Matcher.quoteReplacement(c));
            } else {
                m.appendReplacement(accum, Matcher.quoteReplacement(m.group(0))); // replace with original string
            }
        }
        m.appendTail(accum);
        return accum.toString();
    }

    // xhtml has restricted entities
    private static final Object[][] xhtmlArray = {
            {"quot", 0x00022},
            {"amp", 0x00026},
            {"apos", 0x00027},
            {"lt", 0x0003C},
            {"gt", 0x0003E}
    };

    static {
        xhtmlByVal = new HashMap<Character, String>();
        int PROBE_START_LINE_139 = 139;
		Map<String, Character> entities_1_expr11_line_139 = loadEntities("entities-base.properties");
		Map<Character, String> entities_1_expr10_line_139 = toCharacterKey(entities_1_expr11_line_139);
		int PROBE_END_LINE_139 = 139;
		baseByVal = entities_1_expr10_line_139; // most common / default
        int PROBE_START_LINE_140 = 140;
		Map<String, Character> entities_1_expr13_line_140 = loadEntities("entities-full.properties");
		int PROBE_END_LINE_140 = 140;
		full = entities_1_expr13_line_140; // extended and overblown.
        int PROBE_START_LINE_141 = 141;
		Map<String, Character> f_full_230_line_141 = full;
		Map<Character, String> entities_1_expr15_line_141 = toCharacterKey(f_full_230_line_141);
		int PROBE_END_LINE_141 = 141;
		fullByVal = entities_1_expr15_line_141;

        int PROBE_START_LINE_143 = 146;
		Object[][] f_xhtml_array_229_line_143 = xhtmlArray;
		int PROBE_END_LINE_143 = 146;
		for (Object[] entity : f_xhtml_array_229_line_143) {
            int PROBE_START_LINE_144 = 144;
			Object[] v_entity_231_line_144 = entity;
			Object entities_1_expr21_line_144 = v_entity_231_line_144[1];
			Integer entities_1_expr19_line_144 = ((Integer) entities_1_expr21_line_144);
			int entities_1_expr18_line_144 = entities_1_expr19_line_144.intValue();
			Character entities_1_expr16_line_144 = Character.valueOf((char) entities_1_expr18_line_144);
			int PROBE_END_LINE_144 = 144;
			Character c = entities_1_expr16_line_144;
            int PROBE_START_LINE_145 = 145;
			Map<Character, String> f_xhtml_by_val_210_line_145 = xhtmlByVal;
			Character v_c_232_line_145 = c;
			Object[] v_entity_231_line_145 = entity;
			Object entities_1_expr25_line_145 = v_entity_231_line_145[0];
			String entities_1_expr23_line_145 = ((String) entities_1_expr25_line_145);
			int PROBE_END_LINE_145 = 145;
			f_xhtml_by_val_210_line_145.put(v_c_232_line_145, entities_1_expr23_line_145);
        }
    }

    private static Map<String, Character> loadEntities(String filename) {
        Properties properties = new Properties();
        Map<String, Character> entities = new HashMap<String, Character>();
        try {
            int PROBE_START_LINE_153 = 153;
			String p_filename_233_line_153 = filename;
			InputStream entities_1_expr28_line_153 = Entities.class.getResourceAsStream(p_filename_233_line_153);
			int PROBE_END_LINE_153 = 153;
			InputStream in = entities_1_expr28_line_153;
            int PROBE_START_LINE_154 = 154;
			java.util.Properties v_properties_234_line_154 = properties;
			java.io.InputStream v_in_236_line_154 = in;
			int PROBE_END_LINE_154 = 154;
			v_properties_234_line_154.load(v_in_236_line_154);
            int PROBE_START_LINE_155 = 155;
			java.io.InputStream v_in_236_line_155 = in;
			int PROBE_END_LINE_155 = 155;
			v_in_236_line_155.close();
        } catch (IOException e) {
            throw new MissingResourceException("Error loading entities resource: " + e.getMessage(), "Entities", filename);
        }

        int PROBE_START_LINE_160 = 164;
		java.util.Properties v_properties_234_line_160 = properties;
		Set<java.util.Map.Entry<Object, Object>> entities_1_expr32_line_160 = v_properties_234_line_160.entrySet();
		int PROBE_END_LINE_160 = 164;
		for (Map.Entry entry: entities_1_expr32_line_160) {
            int PROBE_START_LINE_161 = 161;
			java.util.Map.Entry v_entry_237_line_161 = entry;
			Object entities_1_expr37_line_161 = v_entry_237_line_161.getValue();
			int entities_1_expr35_line_161 = Integer.parseInt((String) entities_1_expr37_line_161, 16);
			Character entities_1_expr33_line_161 = Character.valueOf((char) entities_1_expr35_line_161);
			int PROBE_END_LINE_161 = 161;
			Character val = entities_1_expr33_line_161;
            int PROBE_START_LINE_162 = 162;
			java.util.Map.Entry v_entry_237_line_162 = entry;
			Object entities_1_expr39_line_162 = v_entry_237_line_162.getKey();
			int PROBE_END_LINE_162 = 162;
			String name = (String) entities_1_expr39_line_162;
            int PROBE_START_LINE_163 = 163;
			Map<String, Character> v_entities_235_line_163 = entities;
			String v_name_239_line_163 = name;
			Character v_val_238_line_163 = val;
			int PROBE_END_LINE_163 = 163;
			v_entities_235_line_163.put(v_name_239_line_163, v_val_238_line_163);
        }
        int PROBE_START_LINE_165 = 165;
		Map<String, Character> v_entities_235_line_165 = entities;
		int PROBE_END_LINE_165 = 165;
		return v_entities_235_line_165;
    }

    private static Map<Character, String> toCharacterKey(Map<String, Character> inMap) {
        Map<Character, String> outMap = new HashMap<Character, String>();
        int PROBE_START_LINE_170 = 181;
		Map<String, Character> p_in_map_240_line_170 = inMap;
		Set<java.util.Map.Entry<String, Character>> entities_1_expr42_line_170 = p_in_map_240_line_170.entrySet();
		int PROBE_END_LINE_170 = 181;
		for (Map.Entry<String, Character> entry: entities_1_expr42_line_170) {
            int PROBE_START_LINE_171 = 171;
			java.util.Map.Entry<String, Character> v_entry_242_line_171 = entry;
			Character entities_1_expr43_line_171 = v_entry_242_line_171.getValue();
			int PROBE_END_LINE_171 = 171;
			Character character = entities_1_expr43_line_171;
            int PROBE_START_LINE_172 = 172;
			java.util.Map.Entry<String, Character> v_entry_242_line_172 = entry;
			String entities_1_expr44_line_172 = v_entry_242_line_172.getKey();
			int PROBE_END_LINE_172 = 172;
			String name = entities_1_expr44_line_172;

            int PROBE_START_LINE_174 = 180;
			Map<Character, String> v_out_map_241_line_174 = outMap;
			Character v_character_243_line_174 = character;
			boolean entities_1_expr45_line_174 = v_out_map_241_line_174.containsKey(v_character_243_line_174);
			int PROBE_END_LINE_174 = 180;
			if (entities_1_expr45_line_174) {
                int PROBE_START_LINE_176 = 177;
				String v_name_244_line_176 = name;
				String entities_1_expr47_line_176 = v_name_244_line_176.toLowerCase();
				String v_name_244_line_176_v1 = name;
				boolean entities_1_expr46_line_176 = entities_1_expr47_line_176.equals(v_name_244_line_176_v1);
				int PROBE_END_LINE_176 = 177;
				// dupe, prefer the lower case version
                if (entities_1_expr46_line_176) {
					int PROBE_START_LINE_177 = 177;
					Map<Character, String> v_out_map_241_line_177 = outMap;
					Character v_character_243_line_177 = character;
					String v_name_244_line_177 = name;
					int PROBE_END_LINE_177 = 177;
					v_out_map_241_line_177.put(v_character_243_line_177, v_name_244_line_177);
				}
            } else {
                int PROBE_START_LINE_179 = 179;
				Map<Character, String> v_out_map_241_line_179 = outMap;
				Character v_character_243_line_179 = character;
				String v_name_244_line_179 = name;
				int PROBE_END_LINE_179 = 179;
				v_out_map_241_line_179.put(v_character_243_line_179, v_name_244_line_179);
            }
        }
        int PROBE_START_LINE_182 = 182;
		Map<Character, String> v_out_map_241_line_182 = outMap;
		int PROBE_END_LINE_182 = 182;
		return v_out_map_241_line_182;
    }
}
