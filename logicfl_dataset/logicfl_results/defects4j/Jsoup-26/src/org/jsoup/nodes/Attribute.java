package org.jsoup.nodes;

import org.jsoup.helper.Validate;

import java.util.Map;

/**
 A single key + value attribute. Keys are trimmed and normalised to lower-case.

 @author Jonathan Hedley, jonathan@hedley.net */
public class Attribute implements Map.Entry<String, String>, Cloneable  {
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
		String p_key_71_line_22 = key;
		int PROBE_END_LINE_22 = 22;
		Validate.notEmpty(p_key_71_line_22);
        int PROBE_START_LINE_23 = 23;
		String p_value_72_line_23 = value;
		int PROBE_END_LINE_23 = 23;
		Validate.notNull(p_value_72_line_23);
        int PROBE_START_LINE_24 = 24;
		String p_key_71_line_24 = key;
		String attribute_1_expr7_line_24 = p_key_71_line_24.trim();
		String attribute_1_expr5_line_24 = attribute_1_expr7_line_24.toLowerCase();
		int PROBE_END_LINE_24 = 24;
		this.key = attribute_1_expr5_line_24;
        int PROBE_START_LINE_25 = 25;
		String p_value_72_line_25 = value;
		int PROBE_END_LINE_25 = 25;
		this.value = p_value_72_line_25;
    }

    /**
     Get the attribute key.
     @return the attribute key
     */
    public String getKey() {
        int PROBE_START_LINE_33 = 33;
		String f_key_73_line_33 = key;
		int PROBE_END_LINE_33 = 33;
		return f_key_73_line_33;
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
        accum
            .append(key)
            .append("=\"")
            .append(Entities.escape(value, out))
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
     * Create a new Attribute from an unencoded key and a HTML attribute encoded value.
     * @param unencodedKey assumes the key is not encoded, as can be only run of simple \w chars.
     * @param encodedValue HTML attribute encoded value
     * @return attribute
     */
    public static Attribute createFromEncoded(String unencodedKey, String encodedValue) {
        String value = Entities.unescape(encodedValue, true);
        return new Attribute(unencodedKey, value);
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
        int result = key != null ? key.hashCode() : 0;
        result = 31 * result + (value != null ? value.hashCode() : 0);
        return result;
    }

    @Override
    public Attribute clone() {
        try {
            return (Attribute) super.clone(); // only fields are immutable strings key and value, so no more deep copy required
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
