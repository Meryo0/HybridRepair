package org.jsoup.nodes;

import org.jsoup.helper.Validate;

import java.util.*;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

/**
 * The attributes of an Element.
 * <p/>
 * Attributes are treated as a map: there can be only one value associated with an attribute key.
 * <p/>
 * Attribute key and value comparisons are done case insensitively, and keys are normalised to
 * lower-case.
 * 
 * @author Jonathan Hedley, jonathan@hedley.net
 */
public class Attributes implements Iterable<Attribute> {
    protected static final String dataPrefix = "data-";
    
    private LinkedHashMap<String, Attribute> attributes = new LinkedHashMap<String, Attribute>(2);
    // linked hash map to preserve insertion order.

    /**
     Get an attribute value by key.
     @param key the attribute key
     @return the attribute value if set; or empty string if not set.
     @see #hasKey(String)
     */
    public String get(String key) {
        Validate.notEmpty(key);
        
        Attribute attr = attributes.get(key.toLowerCase());
        return attr != null ? attr.getValue() : "";
    }

    /**
     Set a new attribute, or replace an existing one by key.
     @param key attribute key
     @param value attribute value
     */
    public void put(String key, String value) {
        Attribute attr = new Attribute(key, value);
        put(attr);
    }

    /**
     Set a new attribute, or replace an existing one by key.
     @param attribute attribute
     */
    public void put(Attribute attribute) {
        int PROBE_START_LINE_51 = 51;
		org.jsoup.nodes.Attribute p_attribute_63_line_51 = attribute;
		int PROBE_END_LINE_51 = 51;
		Validate.notNull(p_attribute_63_line_51);
        int PROBE_START_LINE_52 = 52;
		LinkedHashMap<String, org.jsoup.nodes.Attribute> f_attributes_59_line_52 = attributes;
		org.jsoup.nodes.Attribute p_attribute_63_line_52 = attribute;
		String attributes_1_expr4_line_52 = p_attribute_63_line_52.getKey();
		org.jsoup.nodes.Attribute p_attribute_63_line_52_v1 = attribute;
		int PROBE_END_LINE_52 = 52;
		f_attributes_59_line_52.put(attributes_1_expr4_line_52, p_attribute_63_line_52_v1);
    }

    /**
     Remove an attribute by key.
     @param key attribute key to remove
     */
    public void remove(String key) {
        Validate.notEmpty(key);
        attributes.remove(key.toLowerCase());
    }

    /**
     Tests if these attributes contain an attribute with this key.
     @param key key to check for
     @return true if key exists, false otherwise
     */
    public boolean hasKey(String key) {
        return attributes.containsKey(key.toLowerCase());
    }

    /**
     Get the number of attributes in this set.
     @return size
     */
    public int size() {
        return attributes.size();
    }

    /**
     Add all the attributes from the incoming set to this set.
     @param incoming attributes to add to these attributes.
     */
    public void addAll(Attributes incoming) {
        attributes.putAll(incoming.attributes);
    }
    
    public Iterator<Attribute> iterator() {
        return asList().iterator();
    }

    /**
     Get the attributes as a List, for iteration. Do not modify the keys of the attributes via this view, as changes
     to keys will not be recognised in the containing set.
     @return an view of the attributes as a List.
     */
    public List<Attribute> asList() {
        List<Attribute> list = new ArrayList<Attribute>(attributes.size());
        for (Map.Entry<String, Attribute> entry : attributes.entrySet()) {
            list.add(entry.getValue());
        }
        return Collections.unmodifiableList(list);
    }

    /**
     * Retrieves a filtered view of attributes that are HTML5 custom data attributes; that is, attributes with keys
     * starting with {@code data-}.
     * @return map of custom data attributes.
     */
    public Map<String, String> dataset() {
        return new Dataset();
    }

    /**
     Get the HTML representation of these attributes.
     @return HTML
     */
    public String html() {
        StringBuilder accum = new StringBuilder();
        html(accum, (new Document("")).outputSettings()); // output settings a bit funky, but this html() seldom used
        return accum.toString();
    }
    
    void html(StringBuilder accum, Document.OutputSettings out) {
        int PROBE_START_LINE_126 = 130;
		LinkedHashMap<String, org.jsoup.nodes.Attribute> f_attributes_59_line_126 = attributes;
		Set<java.util.Map.Entry<String, org.jsoup.nodes.Attribute>> attributes_1_expr5_line_126 = f_attributes_59_line_126
				.entrySet();
		int PROBE_END_LINE_126 = 130;
		for (Map.Entry<String, Attribute> entry : attributes_1_expr5_line_126) {
            int PROBE_START_LINE_127 = 127;
			java.util.Map.Entry<String, org.jsoup.nodes.Attribute> v_entry_69_line_127 = entry;
			Attribute attributes_1_expr6_line_127 = v_entry_69_line_127.getValue();
			int PROBE_END_LINE_127 = 127;
			Attribute attribute = attributes_1_expr6_line_127;
            int PROBE_START_LINE_128 = 128;
			StringBuilder p_accum_67_line_128 = accum;
			int PROBE_END_LINE_128 = 128;
			p_accum_67_line_128.append(" ");
            int PROBE_START_LINE_129 = 129;
			org.jsoup.nodes.Attribute v_attribute_70_line_129 = attribute;
			StringBuilder p_accum_67_line_129 = accum;
			org.jsoup.nodes.Document.OutputSettings p_out_68_line_129 = out;
			int PROBE_END_LINE_129 = 129;
			v_attribute_70_line_129.html(p_accum_67_line_129, p_out_68_line_129);
        }
    }
    
    public String toString() {
        return html();
    }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Attributes)) return false;
        
        Attributes that = (Attributes) o;
        
        if (attributes != null ? !attributes.equals(that.attributes) : that.attributes != null) return false;
        
        return true;
    }
    
    @Override
    public int hashCode() {
        int PROBE_START_LINE_151 = 151;
		LinkedHashMap<String, org.jsoup.nodes.Attribute> f_attributes_59_line_151 = attributes;
		boolean attributes_1_expr10_line_151 = f_attributes_59_line_151 != null;
		int attributes_1_expr11_line_151 = 0;
		if (attributes_1_expr10_line_151) {
			LinkedHashMap<String, org.jsoup.nodes.Attribute> f_attributes_59_line_151_v1 = attributes;
			attributes_1_expr11_line_151 = f_attributes_59_line_151_v1.hashCode();
		}
		int attributes_1_expr9_line_151 = attributes_1_expr10_line_151 ? attributes_1_expr11_line_151 : 0;
		int PROBE_END_LINE_151 = 151;
		return attributes_1_expr9_line_151;
    }

    private class Dataset extends AbstractMap<String, String> {

        public Set<Entry<String, String>> entrySet() {
            return new EntrySet();
        }

        @Override
        public String put(String key, String value) {
            String dataKey = dataKey(key);
            String oldValue = hasKey(dataKey) ? attributes.get(dataKey).getValue() : null;
            Attribute attr = new Attribute(dataKey, value);
            attributes.put(dataKey, attr);
            return oldValue;
        }

        private class EntrySet extends AbstractSet<Map.Entry<String, String>> {
            public Iterator<Map.Entry<String, String>> iterator() {
                return new DatasetIterator();
            }

            public int size() {
                int count = 0;
                Iterator iter = new DatasetIterator();
                while (iter.hasNext())
                    count++;
                return count;
            }
        }

        private class DatasetIterator implements Iterator<Map.Entry<String, String>> {
            private Iterator<Attribute> attrIter = attributes.values().iterator();
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
