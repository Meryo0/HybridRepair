package org.jsoup.nodes;

import org.jsoup.helper.Validate;

import java.util.Map;

/**
 A single key + value attribute. Keys are trimmed and normalised to lower-case.

 @author Jonathan Hedley, jonathan@hedley.net */
public class Attribute implements Map.Entry<String, String>  {
    private String key;
    private String value;

    /**
     * Create a new attribute from unencoded (raw) key and value.
     * @param key attribute key
     * @param value attribute value
     * @see #createFromEncoded
     */
    public Attribute(String key, String value) {
        int PROBE_START_LINE_22 = 22;
		String p_key_46_line_22 = key;
		int PROBE_END_LINE_22 = 22;
		Validate.notEmpty(p_key_46_line_22);
        int PROBE_START_LINE_23 = 23;
		String p_value_47_line_23 = value;
		int PROBE_END_LINE_23 = 23;
		Validate.notNull(p_value_47_line_23);
        int PROBE_START_LINE_24 = 24;
		String p_key_46_line_24 = key;
		String attribute_1_expr7_line_24 = p_key_46_line_24.trim();
		String attribute_1_expr5_line_24 = attribute_1_expr7_line_24.toLowerCase();
		int PROBE_END_LINE_24 = 24;
		this.key = attribute_1_expr5_line_24;
        int PROBE_START_LINE_25 = 25;
		String p_value_47_line_25 = value;
		int PROBE_END_LINE_25 = 25;
		this.value = p_value_47_line_25;
    }

    /**
     Get the attribute key.
     @return the attribute key
     */
    public String getKey() {
        int PROBE_START_LINE_33 = 33;
		String f_key_48_line_33 = key;
		int PROBE_END_LINE_33 = 33;
		return f_key_48_line_33;
    }

    /**
     Set the attribute key. Gets normalised as per the constructor method.
     @param key the new key; must not be null
     */
    public void setKey(String key) {
        Validate.notEmpty(key);
        this.key = key.trim().toLowerCase();
    }

    /**
     Get the attribute value.
     @return the attribute value
     */
    public String getValue() {
        return value;
    }

    /**
     Set the attribute value.
     @param value the new attribute value; must not be null
     */
    public String setValue(String value) {
        Validate.notNull(value);
        String old = this.value;
        this.value = value;
        return old;
    }

    /**
     Get the HTML representation of this attribute; e.g. {@code href="index.html"}.
     @return HTML
     */
    public String html() {
        return key + "=\"" + Entities.escape(value, (new Document("")).outputSettings()) + "\"";
    }
    
    protected void html(StringBuilder accum, Document.OutputSettings out) {
        int PROBE_START_LINE_73 = 77;
		StringBuilder p_accum_52_line_73 = accum;
		StringBuilder attribute_1_expr15_line_73 = p_accum_52_line_73.append(key);
		StringBuilder attribute_1_expr14_line_73 = attribute_1_expr15_line_73.append("=\"");
		StringBuilder attribute_1_expr12_line_73 = attribute_1_expr14_line_73.append(Entities.escape(value, out));
		int PROBE_END_LINE_73 = 77;
		attribute_1_expr12_line_73
            .append("\"");
    }

    /**
     Get the string representation of this attribute, implemented as {@link #html()}.
     @return string
     */
    public String toString() {
        return html();
    }

    /**
     * Create a new Attribute from an unencoded key and a HMTL attribute encoded value.
     * @param unencodedKey assumes the key is not encoded, as can be only run of simple \w chars.
     * @param encodedValue HTML attribute encoded value
     * @return attribute
     */
    public static Attribute createFromEncoded(String unencodedKey, String encodedValue) {
        int PROBE_START_LINE_95 = 95;
		String p_encoded_value_55_line_95 = encodedValue;
		String attribute_1_expr16_line_95 = Entities.unescape(p_encoded_value_55_line_95);
		int PROBE_END_LINE_95 = 95;
		String value = attribute_1_expr16_line_95;
        int PROBE_START_LINE_96 = 96;
		String p_unencoded_key_54_line_96 = unencodedKey;
		String v_value_56_line_96 = value;
		int PROBE_END_LINE_96 = 96;
		return new Attribute(p_unencoded_key_54_line_96, v_value_56_line_96);
    }

    protected boolean isDataAttribute() {
        return key.startsWith(Attributes.dataPrefix) && key.length() > Attributes.dataPrefix.length();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Attribute)) return false;

        Attribute attribute = (Attribute) o;

        if (key != null ? !key.equals(attribute.key) : attribute.key != null) return false;
        if (value != null ? !value.equals(attribute.value) : attribute.value != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int PROBE_START_LINE_118 = 118;
		String f_key_48_line_118 = key;
		boolean attribute_1_expr19_line_118 = f_key_48_line_118 != null;
		int attribute_1_expr20_line_118 = 0;
		if (attribute_1_expr19_line_118) {
			String f_key_48_line_118_v1 = key;
			attribute_1_expr20_line_118 = f_key_48_line_118_v1.hashCode();
		}
		int attribute_1_expr18_line_118 = attribute_1_expr19_line_118 ? attribute_1_expr20_line_118 : 0;
		int PROBE_END_LINE_118 = 118;
		int result = attribute_1_expr18_line_118;
        int PROBE_START_LINE_119 = 119;
		int v_result_58_line_119 = result;
		int attribute_1_expr23_line_119 = 31 * v_result_58_line_119;
		String f_value_49_line_119 = value;
		boolean attribute_1_expr26_line_119 = f_value_49_line_119 != null;
		int attribute_1_expr27_line_119 = 0;
		if (attribute_1_expr26_line_119) {
			String f_value_49_line_119_v1 = value;
			attribute_1_expr27_line_119 = f_value_49_line_119_v1.hashCode();
		}
		int attribute_1_expr25_line_119 = attribute_1_expr26_line_119 ? attribute_1_expr27_line_119 : 0;
		int attribute_1_expr24_line_119 = (attribute_1_expr25_line_119);
		int attribute_1_expr22_line_119 = attribute_1_expr23_line_119 + attribute_1_expr24_line_119;
		int PROBE_END_LINE_119 = 119;
		result = attribute_1_expr22_line_119;
        int PROBE_START_LINE_120 = 120;
		int v_result_58_line_120 = result;
		int PROBE_END_LINE_120 = 120;
		return v_result_58_line_120;
    }
}
