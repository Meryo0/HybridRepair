package org.jsoup.parser;

import org.jsoup.nodes.Attributes;

import static org.jsoup.internal.Normalizer.lowerCase;

/**
 * Controls parser settings, to optionally preserve tag and/or attribute name case.
 */
public class ParseSettings {
    /**
     * HTML default settings: both tag and attribute names are lower-cased during parsing.
     */
    public static final ParseSettings htmlDefault;
    /**
     * Preserve both tag and attribute case.
     */
    public static final ParseSettings preserveCase;

    static {
        htmlDefault = new ParseSettings(false, false);
        preserveCase = new ParseSettings(true, true);
    }

    private final boolean preserveTagCase;
    private final boolean preserveAttributeCase;

    /**
     * Define parse settings.
     * @param tag preserve tag case?
     * @param attribute preserve attribute name case?
     */
    public ParseSettings(boolean tag, boolean attribute) {
        int PROBE_START_LINE_34 = 34;
		boolean p_tag_828_line_34 = tag;
		int PROBE_END_LINE_34 = 34;
		preserveTagCase = p_tag_828_line_34;
        int PROBE_START_LINE_35 = 35;
		boolean p_attribute_829_line_35 = attribute;
		int PROBE_END_LINE_35 = 35;
		preserveAttributeCase = p_attribute_829_line_35;
    }

    String normalizeTag(String name) {
        int PROBE_START_LINE_39 = 39;
		String p_name_832_line_39 = name;
		String parse_settings_1_expr8_line_39 = p_name_832_line_39.trim();
		int PROBE_END_LINE_39 = 39;
		name = parse_settings_1_expr8_line_39;
        int PROBE_START_LINE_40 = 41;
		boolean f_preserve_tag_case_830_line_40 = preserveTagCase;
		boolean parse_settings_1_expr9_line_40 = !f_preserve_tag_case_830_line_40;
		int PROBE_END_LINE_40 = 41;
		if (parse_settings_1_expr9_line_40) {
			int PROBE_START_LINE_41 = 41;
			String p_name_832_line_41 = name;
			String parse_settings_1_expr11_line_41 = lowerCase(p_name_832_line_41);
			int PROBE_END_LINE_41 = 41;
			name = parse_settings_1_expr11_line_41;
		}
        int PROBE_START_LINE_42 = 42;
		String p_name_832_line_42 = name;
		int PROBE_END_LINE_42 = 42;
		return p_name_832_line_42;
    }

    String normalizeAttribute(String name) {
        name = name.trim();
        if (!preserveAttributeCase)
            name = lowerCase(name);
        return name;
    }

    Attributes normalizeAttributes(Attributes attributes) {
        int PROBE_START_LINE_53 = 55;
		boolean f_preserve_attribute_case_831_line_53 = preserveAttributeCase;
		boolean parse_settings_1_expr12_line_53 = !f_preserve_attribute_case_831_line_53;
		int PROBE_END_LINE_53 = 55;
		if (parse_settings_1_expr12_line_53) {
            int PROBE_START_LINE_54 = 54;
			org.jsoup.nodes.Attributes p_attributes_834_line_54 = attributes;
			int PROBE_END_LINE_54 = 54;
			p_attributes_834_line_54.normalize();
        }
        int PROBE_START_LINE_56 = 56;
		org.jsoup.nodes.Attributes p_attributes_834_line_56 = attributes;
		int PROBE_END_LINE_56 = 56;
		return p_attributes_834_line_56;
    }
}
