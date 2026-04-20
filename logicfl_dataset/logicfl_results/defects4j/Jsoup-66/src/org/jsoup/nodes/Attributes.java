package org.jsoup.nodes;

import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static org.jsoup.internal.Normalizer.lowerCase;

/**
 * The attributes of an Element.
 * <p>
 * Attributes are treated as a map: there can be only one value associated with an attribute key/name.
 * </p>
 * <p>
 * Attribute name and value comparisons are  generally <b>case sensitive</b>. By default for HTML, attribute names are
 * normalized to lower-case on parsing. That means you should use lower-case strings when referring to attributes by
 * name.
 * </p>
 *
 * @author Jonathan Hedley, jonathan@hedley.net
 */
public class Attributes implements Iterable<Attribute>, Cloneable {
    protected static final String dataPrefix = "data-";
    private static final int InitialCapacity = 4; // todo - analyze Alexa 1MM sites, determine best setting

    // manages the key/val arrays
    private static final int GrowthFactor = 2;
    private static final String[] Empty = {};
    static final int NotFound = -1;
    private static final String EmptyString = "";

    private int size = 0; // number of slots used (not capacity, which is keys.length
    int PROBE_START_LINE_43 = 43;

	String[] f_empty_99_line_43 = Empty;

	int PROBE_END_LINE_43 = 43;

	String[] keys = f_empty_99_line_43;
    int PROBE_START_LINE_44 = 44;

	String[] f_empty_99_line_44 = Empty;

	int PROBE_END_LINE_44 = 44;

	String[] vals = f_empty_99_line_44;

    // check there's room for more
    private void checkCapacity(int minNewSize) {
        int PROBE_START_LINE_48 = 48;
		int p_min_new_size_103_line_48 = minNewSize;
		int f_size_100_line_48 = size;
		boolean attributes_1_expr3_line_48 = p_min_new_size_103_line_48 >= f_size_100_line_48;
		int PROBE_END_LINE_48 = 48;
		Validate.isTrue(attributes_1_expr3_line_48);
        int PROBE_START_LINE_49 = 49;
		String[] f_keys_101_line_49 = keys;
		int q_length_2_line_49 = f_keys_101_line_49.length;
		int PROBE_END_LINE_49 = 49;
		int curSize = q_length_2_line_49;
        int PROBE_START_LINE_50 = 51;
		int v_cur_size_104_line_50 = curSize;
		int p_min_new_size_103_line_50 = minNewSize;
		boolean attributes_1_expr4_line_50 = v_cur_size_104_line_50 >= p_min_new_size_103_line_50;
		int PROBE_END_LINE_50 = 51;
		if (attributes_1_expr4_line_50)
            return;

        int PROBE_START_LINE_53 = 53;
		int v_cur_size_104_line_53 = curSize;
		int f_initial_capacity_106_line_53 = InitialCapacity;
		boolean attributes_1_expr6_line_53 = v_cur_size_104_line_53 >= f_initial_capacity_106_line_53;
		int attributes_1_expr7_line_53 = 0;
		int f_initial_capacity_106_line_53_v1 = 0;
		if (attributes_1_expr6_line_53) {
			int f_size_100_line_53 = size;
			int f_growth_factor_107_line_53 = GrowthFactor;
			attributes_1_expr7_line_53 = f_size_100_line_53 * f_growth_factor_107_line_53;
		} else {
			f_initial_capacity_106_line_53_v1 = InitialCapacity;
		}
		int attributes_1_expr5_line_53 = attributes_1_expr6_line_53
				? attributes_1_expr7_line_53
				: f_initial_capacity_106_line_53_v1;
		int PROBE_END_LINE_53 = 53;
		int newSize = attributes_1_expr5_line_53;
        int PROBE_START_LINE_54 = 55;
		int p_min_new_size_103_line_54 = minNewSize;
		int v_new_size_105_line_54 = newSize;
		boolean attributes_1_expr8_line_54 = p_min_new_size_103_line_54 > v_new_size_105_line_54;
		int PROBE_END_LINE_54 = 55;
		if (attributes_1_expr8_line_54)
            newSize = minNewSize;

        int PROBE_START_LINE_57 = 57;
		String[] f_keys_101_line_57 = keys;
		int v_new_size_105_line_57 = newSize;
		String[] attributes_1_expr10_line_57 = copyOf(f_keys_101_line_57, v_new_size_105_line_57);
		int PROBE_END_LINE_57 = 57;
		keys = attributes_1_expr10_line_57;
        int PROBE_START_LINE_58 = 58;
		String[] f_vals_102_line_58 = vals;
		int v_new_size_105_line_58 = newSize;
		String[] attributes_1_expr12_line_58 = copyOf(f_vals_102_line_58, v_new_size_105_line_58);
		int PROBE_END_LINE_58 = 58;
		vals = attributes_1_expr12_line_58;
    }

    // simple implementation of Arrays.copy, for support of Android API 8.
    private static String[] copyOf(String[] orig, int size) {
        int PROBE_START_LINE_63 = 63;
		int p_size_109_line_63 = size;
		int PROBE_END_LINE_63 = 63;
		final String[] copy = new String[p_size_109_line_63];
        int PROBE_START_LINE_64 = 65;
		String[] p_orig_108_line_64 = orig;
		String[] v_copy_110_line_64 = copy;
		int PROBE_END_LINE_64 = 65;
		System.arraycopy(p_orig_108_line_64, 0, v_copy_110_line_64, 0,
                Math.min(orig.length, size));
        int PROBE_START_LINE_66 = 66;
		String[] v_copy_110_line_66 = copy;
		int PROBE_END_LINE_66 = 66;
		return v_copy_110_line_66;
    }

    int indexOfKey(String key) {
        int PROBE_START_LINE_70 = 70;
		String p_key_111_line_70 = key;
		int PROBE_END_LINE_70 = 70;
		Validate.notNull(p_key_111_line_70);
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_72 = 73;
			int v_i_112_line_71 = i;
			int f_size_100_line_71 = size;
			boolean attributes_1_expr18_line_71 = v_i_112_line_71 < f_size_100_line_71;
			if (!(attributes_1_expr18_line_71)) {
				break;
			}
			int PROBE_END_LINE_72 = 73;
			if (key.equals(keys[i]))
                return i;
        }
        int PROBE_START_LINE_75 = 75;
		int f_not_found_113_line_75 = NotFound;
		int PROBE_END_LINE_75 = 75;
		return f_not_found_113_line_75;
    }

    private int indexOfKeyIgnoreCase(String key) {
        int PROBE_START_LINE_79 = 79;
		String p_key_114_line_79 = key;
		int PROBE_END_LINE_79 = 79;
		Validate.notNull(p_key_114_line_79);
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_81 = 82;
			int v_i_115_line_80 = i;
			int f_size_100_line_80 = size;
			boolean attributes_1_expr22_line_80 = v_i_115_line_80 < f_size_100_line_80;
			if (!(attributes_1_expr22_line_80)) {
				break;
			}
			String p_key_114_line_81 = key;
			String[] f_keys_101_line_81 = keys;
			int v_i_115_line_81 = i;
			String attributes_1_expr25_line_81 = f_keys_101_line_81[v_i_115_line_81];
			boolean attributes_1_expr24_line_81 = p_key_114_line_81.equalsIgnoreCase(attributes_1_expr25_line_81);
			int PROBE_END_LINE_81 = 82;
			if (attributes_1_expr24_line_81) {
				int PROBE_START_LINE_82 = 82;
				int v_i_115_line_82 = i;
				int PROBE_END_LINE_82 = 82;
				return v_i_115_line_82;
			}
        }
        int PROBE_START_LINE_84 = 84;
		int f_not_found_113_line_84 = NotFound;
		int PROBE_END_LINE_84 = 84;
		return f_not_found_113_line_84;
    }

    // we track boolean attributes as null in values - they're just keys. so returns empty for consumers
    static String checkNotNull(String val) {
        int PROBE_START_LINE_89 = 89;
		String p_val_116_line_89 = val;
		boolean attributes_1_expr27_line_89 = p_val_116_line_89 == null;
		String f_empty_string_117_line_89 = null;
		String p_val_116_line_89_v1 = null;
		if (attributes_1_expr27_line_89) {
			f_empty_string_117_line_89 = EmptyString;
		} else {
			p_val_116_line_89_v1 = val;
		}
		String attributes_1_expr26_line_89 = attributes_1_expr27_line_89
				? f_empty_string_117_line_89
				: p_val_116_line_89_v1;
		int PROBE_END_LINE_89 = 89;
		return attributes_1_expr26_line_89;
    }

    /**
     Get an attribute value by key.
     @param key the (case-sensitive) attribute key
     @return the attribute value if set; or empty string if not set (or a boolean attribute).
     @see #hasKey(String)
     */
    public String get(String key) {
        int i = indexOfKey(key);
        return i == NotFound ? EmptyString : checkNotNull(vals[i]);
    }

    /**
     * Get an attribute's value by case-insensitive key
     * @param key the attribute name
     * @return the first matching attribute value if set; or empty string if not set (ora boolean attribute).
     */
    public String getIgnoreCase(String key) {
        int PROBE_START_LINE_109 = 109;
		String p_key_119_line_109 = key;
		int attributes_1_expr28_line_109 = indexOfKeyIgnoreCase(p_key_119_line_109);
		int PROBE_END_LINE_109 = 109;
		int i = attributes_1_expr28_line_109;
        int PROBE_START_LINE_110 = 110;
		int v_i_120_line_110 = i;
		int f_not_found_113_line_110 = NotFound;
		boolean attributes_1_expr30_line_110 = v_i_120_line_110 == f_not_found_113_line_110;
		String f_empty_string_117_line_110 = null;
		String attributes_1_expr31_line_110 = null;
		if (attributes_1_expr30_line_110) {
			f_empty_string_117_line_110 = EmptyString;
		} else {
			String[] f_vals_102_line_110 = vals;
			int v_i_120_line_110_v1 = i;
			String attributes_1_expr32_line_110 = f_vals_102_line_110[v_i_120_line_110_v1];
			attributes_1_expr31_line_110 = checkNotNull(attributes_1_expr32_line_110);
		}
		String attributes_1_expr29_line_110 = attributes_1_expr30_line_110
				? f_empty_string_117_line_110
				: attributes_1_expr31_line_110;
		int PROBE_END_LINE_110 = 110;
		return attributes_1_expr29_line_110;
    }

    // adds without checking if this key exists
    private void add(String key, String value) {
        int PROBE_START_LINE_115 = 115;
		int f_size_100_line_115 = size;
		int attributes_1_expr34_line_115 = f_size_100_line_115 + 1;
		int PROBE_END_LINE_115 = 115;
		checkCapacity(attributes_1_expr34_line_115);
        int PROBE_START_LINE_116 = 116;
		String[] f_keys_101_line_116 = keys;
		int f_size_100_line_116 = size;
		String p_key_121_line_116 = key;
		int PROBE_END_LINE_116 = 116;
		f_keys_101_line_116[f_size_100_line_116] = p_key_121_line_116;
        int PROBE_START_LINE_117 = 117;
		String[] f_vals_102_line_117 = vals;
		int f_size_100_line_117 = size;
		String p_value_122_line_117 = value;
		int PROBE_END_LINE_117 = 117;
		f_vals_102_line_117[f_size_100_line_117] = p_value_122_line_117;
        size++;
    }

    /**
     * Set a new attribute, or replace an existing one by key.
     * @param key case sensitive attribute key
     * @param value attribute value
     * @return these attributes, for chaining
     */
    public Attributes put(String key, String value) {
        int PROBE_START_LINE_128 = 128;
		String p_key_123_line_128 = key;
		int attributes_1_expr40_line_128 = indexOfKey(p_key_123_line_128);
		int PROBE_END_LINE_128 = 128;
		int i = attributes_1_expr40_line_128;
        int PROBE_START_LINE_129 = 132;
		int v_i_125_line_129 = i;
		int f_not_found_113_line_129 = NotFound;
		boolean attributes_1_expr41_line_129 = v_i_125_line_129 != f_not_found_113_line_129;
		int PROBE_END_LINE_129 = 132;
		if (attributes_1_expr41_line_129)
            vals[i] = value;
		else {
			int PROBE_START_LINE_132 = 132;
			String p_key_123_line_132 = key;
			String p_value_124_line_132 = value;
			int PROBE_END_LINE_132 = 132;
			add(p_key_123_line_132, p_value_124_line_132);
		}
        return this;
    }

    void putIgnoreCase(String key, String value) {
        int PROBE_START_LINE_137 = 137;
		String p_key_126_line_137 = key;
		int attributes_1_expr44_line_137 = indexOfKeyIgnoreCase(p_key_126_line_137);
		int PROBE_END_LINE_137 = 137;
		int i = attributes_1_expr44_line_137;
        int PROBE_START_LINE_138 = 144;
		int v_i_128_line_138 = i;
		int f_not_found_113_line_138 = NotFound;
		boolean attributes_1_expr45_line_138 = v_i_128_line_138 != f_not_found_113_line_138;
		int PROBE_END_LINE_138 = 144;
		if (attributes_1_expr45_line_138) {
            vals[i] = value;
            if (!keys[i].equals(key)) // case changed, update
                keys[i] = key;
        } else {
			int PROBE_START_LINE_144 = 144;
			String p_key_126_line_144 = key;
			String p_value_127_line_144 = value;
			int PROBE_END_LINE_144 = 144;
			add(p_key_126_line_144, p_value_127_line_144);
		}
    }

    /**
     * Set a new boolean attribute, remove attribute if value is false.
     * @param key case <b>insensitive</b> attribute key
     * @param value attribute value
     * @return these attributes, for chaining
     */
    public Attributes put(String key, boolean value) {
        if (value)
            putIgnoreCase(key, null);
        else
            remove(key);
        return this;
    }

    /**
     Set a new attribute, or replace an existing one by key.
     @param attribute attribute with case sensitive key
     @return these attributes, for chaining
     */
    public Attributes put(Attribute attribute) {
        Validate.notNull(attribute);
        put(attribute.getKey(), attribute.getValue());
        attribute.parent = this;
        return this;
    }

    // removes and shifts up
    private void remove(int index) {
        Validate.isFalse(index >= size);
        int shifted = size - index - 1;
        if (shifted > 0) {
            System.arraycopy(keys, index + 1, keys, index, shifted);
            System.arraycopy(vals, index + 1, vals, index, shifted);
        }
        size--;
        keys[size] = null; // release hold
        vals[size] = null;
    }

    /**
     Remove an attribute by key. <b>Case sensitive.</b>
     @param key attribute key to remove
     */
    public void remove(String key) {
        int i = indexOfKey(key);
        if (i != NotFound)
            remove(i);
    }

    /**
     Remove an attribute by key. <b>Case insensitive.</b>
     @param key attribute key to remove
     */
    public void removeIgnoreCase(String key) {
        int i = indexOfKeyIgnoreCase(key);
        if (i != NotFound)
            remove(i);
    }

    /**
     Tests if these attributes contain an attribute with this key.
     @param key case-sensitive key to check for
     @return true if key exists, false otherwise
     */
    public boolean hasKey(String key) {
        return indexOfKey(key) != NotFound;
    }

    /**
     Tests if these attributes contain an attribute with this key.
     @param key key to check for
     @return true if key exists, false otherwise
     */
    public boolean hasKeyIgnoreCase(String key) {
        return indexOfKeyIgnoreCase(key) != NotFound;
    }

    /**
     Get the number of attributes in this set.
     @return size
     */
    public int size() {
        return size;
    }

    /**
     Add all the attributes from the incoming set to this set.
     @param incoming attributes to add to these attributes.
     */
    public void addAll(Attributes incoming) {
        if (incoming.size() == 0)
            return;
        checkCapacity(size + incoming.size);

        for (Attribute attr : incoming) {
            // todo - should this be case insensitive?
            put(attr);
        }

    }

    public Iterator<Attribute> iterator() {
        return new Iterator<Attribute>() {
            int i = 0;

            @Override
            public boolean hasNext() {
                return i < size;
            }

            @Override
            public Attribute next() {
                final Attribute attr = new Attribute(keys[i], vals[i], Attributes.this);
                i++;
                return attr;
            }

            @Override
            public void remove() {
                Attributes.this.remove(--i); // next() advanced, so rewind
            }
        };
    }

    /**
     Get the attributes as a List, for iteration.
     @return an view of the attributes as an unmodifialbe List.
     */
    public List<Attribute> asList() {
        ArrayList<Attribute> list = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            Attribute attr = vals[i] == null ?
                new BooleanAttribute(keys[i]) : // deprecated class, but maybe someone still wants it
                new Attribute(keys[i], vals[i], Attributes.this);
            list.add(attr);
        }
        return Collections.unmodifiableList(list);
    }

    /**
     * Retrieves a filtered view of attributes that are HTML5 custom data attributes; that is, attributes with keys
     * starting with {@code data-}.
     * @return map of custom data attributes.
     */
    public Map<String, String> dataset() {
        return new Dataset(this);
    }

    /**
     Get the HTML representation of these attributes.
     @return HTML
     @throws SerializationException if the HTML representation of the attributes cannot be constructed.
     */
    public String html() {
        StringBuilder accum = new StringBuilder();
        try {
            html(accum, (new Document("")).outputSettings()); // output settings a bit funky, but this html() seldom used
        } catch (IOException e) { // ought never happen
            throw new SerializationException(e);
        }
        return accum.toString();
    }

    final void html(final Appendable accum, final Document.OutputSettings out) throws IOException {
        final int sz = size;
        for (int i = 0; i < sz; i++) {
            // inlined from Attribute.html()
            final String key = keys[i];
            final String val = vals[i];
            accum.append(' ').append(key);

            // collapse checked=null, checked="", checked=checked; write out others
            if (!(out.syntax() == Document.OutputSettings.Syntax.html
                && (val == null || val.equals(key) && Attribute.isBooleanAttribute(key)))) {

                accum.append("=\"");
                Entities.escape(accum, val == null ? EmptyString : val, out, true, false, false);
                accum.append('"');
            }
        }
    }

    @Override
    public String toString() {
        return html();
    }

    /**
     * Checks if these attributes are equal to another set of attributes, by comparing the two sets
     * @param o attributes to compare with
     * @return if both sets of attributes have the same content
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Attributes that = (Attributes) o;

        if (size != that.size) return false;
        if (!Arrays.equals(keys, that.keys)) return false;
        return Arrays.equals(vals, that.vals);
    }

    /**
     * Calculates the hashcode of these attributes, by iterating all attributes and summing their hashcodes.
     * @return calculated hashcode
     */
    @Override
    public int hashCode() {
        int result = size;
        result = 31 * result + Arrays.hashCode(keys);
        result = 31 * result + Arrays.hashCode(vals);
        return result;
    }

    @Override
    public Attributes clone() {
        Attributes clone = null;
        try {
            int PROBE_START_LINE_367 = 367;
			Object attributes_1_expr49_line_367 = super.clone();
			int PROBE_END_LINE_367 = 367;
			clone = (Attributes) attributes_1_expr49_line_367;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
        int PROBE_START_LINE_371 = 371;
		int f_size_100_line_371 = size;
		int PROBE_END_LINE_371 = 371;
		clone.size = f_size_100_line_371;
        int PROBE_START_LINE_372 = 372;
		String[] f_keys_101_line_372 = keys;
		int f_size_100_line_372 = size;
		String[] attributes_1_expr52_line_372 = copyOf(f_keys_101_line_372, f_size_100_line_372);
		int PROBE_END_LINE_372 = 372;
		keys = attributes_1_expr52_line_372;
        int PROBE_START_LINE_373 = 373;
		String[] f_vals_102_line_373 = vals;
		int f_size_100_line_373 = size;
		String[] attributes_1_expr54_line_373 = copyOf(f_vals_102_line_373, f_size_100_line_373);
		int PROBE_END_LINE_373 = 373;
		vals = attributes_1_expr54_line_373;
        int PROBE_START_LINE_374 = 374;
		org.jsoup.nodes.Attributes v_clone_141_line_374 = clone;
		int PROBE_END_LINE_374 = 374;
		return v_clone_141_line_374;
    }

    /**
     * Internal method. Lowercases all keys.
     */
    public void normalize() {
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_382 = 382;
			int v_i_142_line_381 = i;
			int f_size_100_line_381 = size;
			boolean attributes_1_expr56_line_381 = v_i_142_line_381 < f_size_100_line_381;
			if (!(attributes_1_expr56_line_381)) {
				break;
			}
			String[] f_keys_101_line_382 = keys;
			int v_i_142_line_382 = i;
			String[] f_keys_101_line_382_v1 = keys;
			int v_i_142_line_382_v1 = i;
			String attributes_1_expr61_line_382 = f_keys_101_line_382_v1[v_i_142_line_382_v1];
			String attributes_1_expr60_line_382 = lowerCase(attributes_1_expr61_line_382);
			int PROBE_END_LINE_382 = 382;
			f_keys_101_line_382[v_i_142_line_382] = attributes_1_expr60_line_382;
        }
    }

    private static class Dataset extends AbstractMap<String, String> {
        private final Attributes attributes;

        private Dataset(Attributes attributes) {
            this.attributes = attributes;
        }

        @Override
        public Set<Entry<String, String>> entrySet() {
            return new EntrySet();
        }

        @Override
        public String put(String key, String value) {
            String dataKey = dataKey(key);
            String oldValue = attributes.hasKey(dataKey) ? attributes.get(dataKey) : null;
            attributes.put(dataKey, value);
            return oldValue;
        }

        private class EntrySet extends AbstractSet<Map.Entry<String, String>> {

            @Override
            public Iterator<Map.Entry<String, String>> iterator() {
                return new DatasetIterator();
            }

            @Override
            public int size() {
                int count = 0;
                Iterator iter = new DatasetIterator();
                while (iter.hasNext())
                    count++;
                return count;
            }
        }

        private class DatasetIterator implements Iterator<Map.Entry<String, String>> {
            private Iterator<Attribute> attrIter = attributes.iterator();
            private Attribute attr;
            public boolean hasNext() {
                while (attrIter.hasNext()) {
                    attr = attrIter.next();
                    if (attr.isDataAttribute()) return true;
                }
                return false;
            }

            public Entry<String, String> next() {
                return new Attribute(attr.getKey().substring(dataPrefix.length()), attr.getValue());
            }

            public void remove() {
                attributes.remove(attr.getKey());
            }
        }
    }

    private static String dataKey(String key) {
        return dataPrefix + key;
    }
}
