package org.jsoup.nodes;

import org.jsoup.helper.Validate;

import java.util.*;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Iterator;

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
public class Attributes implements Iterable<Attribute>, Cloneable {
    protected static final String dataPrefix = "data-";
    
    private LinkedHashMap<String, Attribute> attributes = null;
    // linked hash map to preserve insertion order.
    // null be default as so many elements have no attributes -- saves a good chunk of memory

    /**
     Get an attribute value by key.
     @param key the attribute key
     @return the attribute value if set; or empty string if not set.
     @see #hasKey(String)
     */
    public String get(String key) {
        Validate.notEmpty(key);

        if (attributes == null)
            return "";

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
        int PROBE_START_LINE_55 = 55;
		org.jsoup.nodes.Attribute p_attribute_86_line_55 = attribute;
		int PROBE_END_LINE_55 = 55;
		Validate.notNull(p_attribute_86_line_55);
        int PROBE_START_LINE_56 = 57;
		LinkedHashMap<String, org.jsoup.nodes.Attribute> f_attributes_82_line_56 = attributes;
		boolean attributes_1_expr2_line_56 = f_attributes_82_line_56 == null;
		int PROBE_END_LINE_56 = 57;
		if (attributes_1_expr2_line_56)
             attributes = new LinkedHashMap<String, Attribute>(2);
        int PROBE_START_LINE_58 = 58;
		LinkedHashMap<String, org.jsoup.nodes.Attribute> f_attributes_82_line_58 = attributes;
		org.jsoup.nodes.Attribute p_attribute_86_line_58 = attribute;
		String attributes_1_expr6_line_58 = p_attribute_86_line_58.getKey();
		org.jsoup.nodes.Attribute p_attribute_86_line_58_v1 = attribute;
		int PROBE_END_LINE_58 = 58;
		f_attributes_82_line_58.put(attributes_1_expr6_line_58, p_attribute_86_line_58_v1);
    }

    /**
     Remove an attribute by key.
     @param key attribute key to remove
     */
    public void remove(String key) {
        Validate.notEmpty(key);
        if (attributes == null)
            return;
        attributes.remove(key.toLowerCase());
    }

    /**
     Tests if these attributes contain an attribute with this key.
     @param key key to check for
     @return true if key exists, false otherwise
     */
    public boolean hasKey(String key) {
        return attributes != null && attributes.containsKey(key.toLowerCase());
    }

    /**
     Get the number of attributes in this set.
     @return size
     */
    public int size() {
        if (attributes == null)
            return 0;
        return attributes.size();
    }

    /**
     Add all the attributes from the incoming set to this set.
     @param incoming attributes to add to these attributes.
     */
    public void addAll(Attributes incoming) {
        if (incoming.size() == 0)
            return;
        if (attributes == null)
            attributes = new LinkedHashMap<String, Attribute>(incoming.size());
        attributes.putAll(incoming.attributes);
    }
    
    public Iterator<Attribute> iterator() {
        int PROBE_START_LINE_104 = 104;
		List<org.jsoup.nodes.Attribute> attributes_1_expr8_line_104 = asList();
		Iterator<org.jsoup.nodes.Attribute> attributes_1_expr7_line_104 = attributes_1_expr8_line_104.iterator();
		int PROBE_END_LINE_104 = 104;
		return attributes_1_expr7_line_104;
    }

    /**
     Get the attributes as a List, for iteration. Do not modify the keys of the attributes via this view, as changes
     to keys will not be recognised in the containing set.
     @return an view of the attributes as a List.
     */
    public List<Attribute> asList() {
        int PROBE_START_LINE_113 = 114;
		LinkedHashMap<String, org.jsoup.nodes.Attribute> f_attributes_82_line_113 = attributes;
		boolean attributes_1_expr9_line_113 = f_attributes_82_line_113 == null;
		int PROBE_END_LINE_113 = 114;
		if (attributes_1_expr9_line_113) {
			int PROBE_START_LINE_114 = 114;
			List<org.jsoup.nodes.Attribute> attributes_1_expr10_line_114 = Collections.emptyList();
			int PROBE_END_LINE_114 = 114;
			return attributes_1_expr10_line_114;
		}

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
        if (attributes == null)
            return;
        
        for (Map.Entry<String, Attribute> entry : attributes.entrySet()) {
            Attribute attribute = entry.getValue();
            accum.append(" ");
            attribute.html(accum, out);
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
        return attributes != null ? attributes.hashCode() : 0;
    }

    @Override
    public Attributes clone() {
        if (attributes == null)
            return new Attributes();

        Attributes clone;
        try {
            clone = (Attributes) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
        clone.attributes = new LinkedHashMap<String, Attribute>(attributes.size());
        for (Attribute attribute: this)
            clone.attributes.put(attribute.getKey(), attribute.clone());
        return clone;
    }

    private class Dataset extends AbstractMap<String, String> {

        private Dataset() {
            if (attributes == null)
                attributes = new LinkedHashMap<String, Attribute>(2);
        }

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
