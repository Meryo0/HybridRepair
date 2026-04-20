package org.jsoup.nodes;

import org.jsoup.SerializationException;
import org.jsoup.internal.StringUtil;
import org.jsoup.helper.Validate;

import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

/**
 A single key + value attribute. (Only used for presentation.)
 */
public class Attribute implements Map.Entry<String, String>, Cloneable  {
    private static final String[] booleanAttributes = {
            "allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled",
            "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize",
            "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected",
            "sortable", "truespeed", "typemustmatch"
    };

    private String key;
    private String val;
    Attributes parent; // used to update the holding Attributes when the key / value is changed via this interface

    /**
     * Create a new attribute from unencoded (raw) key and value.
     * @param key attribute key; case is preserved.
     * @param value attribute value
     * @see #createFromEncoded
     */
    public Attribute(String key, String value) {
        this(key, value, null);
    }

    /**
     * Create a new attribute from unencoded (raw) key and value.
     * @param key attribute key; case is preserved.
     * @param val attribute value
     * @param parent the containing Attributes (this Attribute is not automatically added to said Attributes)
     * @see #createFromEncoded*/
    public Attribute(String key, String val, Attributes parent) {
        int PROBE_START_LINE_43 = 43;
		String p_key_20_line_43 = key;
		int PROBE_END_LINE_43 = 43;
		Validate.notNull(p_key_20_line_43);
        int PROBE_START_LINE_44 = 44;
		String p_key_20_line_44 = key;
		String attribute_1_expr5_line_44 = p_key_20_line_44.trim();
		int PROBE_END_LINE_44 = 44;
		key = attribute_1_expr5_line_44;
        int PROBE_START_LINE_45 = 45;
		String p_key_20_line_45 = key;
		int PROBE_END_LINE_45 = 45;
		Validate.notEmpty(p_key_20_line_45); // trimming could potentially make empty, so validate here
        int PROBE_START_LINE_46 = 46;
		String p_key_20_line_46 = key;
		int PROBE_END_LINE_46 = 46;
		this.key = p_key_20_line_46;
        int PROBE_START_LINE_47 = 47;
		String p_val_21_line_47 = val;
		int PROBE_END_LINE_47 = 47;
		this.val = p_val_21_line_47;
        int PROBE_START_LINE_48 = 48;
		org.jsoup.nodes.Attributes p_parent_22_line_48 = parent;
		int PROBE_END_LINE_48 = 48;
		this.parent = p_parent_22_line_48;
    }

    /**
     Get the attribute key.
     @return the attribute key
     */
    public String getKey() {
        return key;
    }

    /**
     Set the attribute key; case is preserved.
     @param key the new key; must not be null
     */
    public void setKey(String key) {
        int PROBE_START_LINE_64 = 64;
		String p_key_26_line_64 = key;
		int PROBE_END_LINE_64 = 64;
		Validate.notNull(p_key_26_line_64);
        int PROBE_START_LINE_65 = 65;
		String p_key_26_line_65 = key;
		String attribute_1_expr18_line_65 = p_key_26_line_65.trim();
		int PROBE_END_LINE_65 = 65;
		key = attribute_1_expr18_line_65;
        int PROBE_START_LINE_66 = 66;
		String p_key_26_line_66 = key;
		int PROBE_END_LINE_66 = 66;
		Validate.notEmpty(p_key_26_line_66); // trimming could potentially make empty, so validate here
        int PROBE_START_LINE_67 = 71;
		org.jsoup.nodes.Attributes f_parent_25_line_67 = parent;
		boolean attribute_1_expr20_line_67 = f_parent_25_line_67 != null;
		int PROBE_END_LINE_67 = 71;
		if (attribute_1_expr20_line_67) {
            int i = parent.indexOfKey(this.key);
            if (i != Attributes.NotFound)
                parent.keys[i] = key;
        }
        int PROBE_START_LINE_72 = 72;
		String p_key_26_line_72 = key;
		int PROBE_END_LINE_72 = 72;
		this.key = p_key_26_line_72;
    }

    /**
     Get the attribute value.
     @return the attribute value
     */
    public String getValue() {
        return Attributes.checkNotNull(val);
    }

    /**
     Set the attribute value.
     @param val the new attribute value; must not be null
     */
    public String setValue(String val) {
        int PROBE_START_LINE_88 = 88;
		org.jsoup.nodes.Attributes f_parent_25_line_88 = parent;
		String f_key_23_line_88 = this.key;
		String attribute_1_expr24_line_88 = f_parent_25_line_88.get(f_key_23_line_88);
		int PROBE_END_LINE_88 = 88;
		String oldVal = attribute_1_expr24_line_88;
        if (parent != null) {
            int i = parent.indexOfKey(this.key);
            if (i != Attributes.NotFound)
                parent.vals[i] = val;
        }
        this.val = val;
        return Attributes.checkNotNull(oldVal);
    }

    /**
     Get the HTML representation of this attribute; e.g. {@code href="index.html"}.
     @return HTML
     */
    public String html() {
        StringBuilder sb = StringUtil.borrowBuilder();
        
        try {
        	html(sb, (new Document("")).outputSettings());
        } catch(IOException exception) {
        	throw new SerializationException(exception);
        }
        return StringUtil.releaseBuilder(sb);
    }

    protected static void html(String key, String val, Appendable accum, Document.OutputSettings out) throws IOException {
        accum.append(key);
        if (!shouldCollapseAttribute(key, val, out)) {
            accum.append("=\"");
            Entities.escape(accum, Attributes.checkNotNull(val) , out, true, false, false);
            accum.append('"');
        }
    }
    
    protected void html(Appendable accum, Document.OutputSettings out) throws IOException {
        html(key, val, accum, out);
    }

    /**
     Get the string representation of this attribute, implemented as {@link #html()}.
     @return string
     */
    @Override
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
        return new Attribute(unencodedKey, value, null); // parent will get set when Put
    }

    protected boolean isDataAttribute() {
        return isDataAttribute(key);
    }

    protected static boolean isDataAttribute(String key) {
        return key.startsWith(Attributes.dataPrefix) && key.length() > Attributes.dataPrefix.length();
    }

    /**
     * Collapsible if it's a boolean attribute and value is empty or same as name
     * 
     * @param out output settings
     * @return  Returns whether collapsible or not
     */
    protected final boolean shouldCollapseAttribute(Document.OutputSettings out) {
        return shouldCollapseAttribute(key, val, out);
    }

    protected static boolean shouldCollapseAttribute(final String key, final String val, final Document.OutputSettings out) {
        return (
            out.syntax() == Document.OutputSettings.Syntax.html &&
                (val == null || ("".equals(val) || val.equalsIgnoreCase(key)) && Attribute.isBooleanAttribute(key)));
    }

    /**
     * @deprecated
     */
    protected boolean isBooleanAttribute() {
        return Arrays.binarySearch(booleanAttributes, key) >= 0 || val == null;
    }

    /**
     * Checks if this attribute name is defined as a boolean attribute in HTML5
     */
    protected static boolean isBooleanAttribute(final String key) {
        return Arrays.binarySearch(booleanAttributes, key) >= 0;
    }

    @Override
    public boolean equals(Object o) { // note parent not considered
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Attribute attribute = (Attribute) o;
        if (key != null ? !key.equals(attribute.key) : attribute.key != null) return false;
        return val != null ? val.equals(attribute.val) : attribute.val == null;
    }

    @Override
    public int hashCode() { // note parent not considered
        int result = key != null ? key.hashCode() : 0;
        result = 31 * result + (val != null ? val.hashCode() : 0);
        return result;
    }

    @Override
    public Attribute clone() {
        try {
            return (Attribute) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
