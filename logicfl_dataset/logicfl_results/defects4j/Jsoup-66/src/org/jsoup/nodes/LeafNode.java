package org.jsoup.nodes;

import org.jsoup.helper.Validate;

import java.util.List;

abstract class LeafNode extends Node {
    Object value; // either a string value, or an attribute map (in the rare case multiple attributes are set)

    protected final boolean hasAttributes() {
        int PROBE_START_LINE_11 = 11;
		Object f_value_391_line_11 = value;
		boolean leaf_node_1_expr1_line_11 = f_value_391_line_11 instanceof Attributes;
		int PROBE_END_LINE_11 = 11;
		return leaf_node_1_expr1_line_11;
    }

    @Override
    public final Attributes attributes() {
        ensureAttributes();
        int PROBE_START_LINE_17 = 17;
		Object f_value_391_line_17 = value;
		int PROBE_END_LINE_17 = 17;
		return (Attributes) f_value_391_line_17;
    }

    private void ensureAttributes() {
        int PROBE_START_LINE_21 = 27;
		boolean leaf_node_1_expr5_line_21 = hasAttributes();
		boolean leaf_node_1_expr4_line_21 = !leaf_node_1_expr5_line_21;
		int PROBE_END_LINE_21 = 27;
		if (leaf_node_1_expr4_line_21) {
            int PROBE_START_LINE_22 = 22;
			Object f_value_391_line_22 = value;
			int PROBE_END_LINE_22 = 22;
			Object coreValue = f_value_391_line_22;
            Attributes attributes = new Attributes();
            int PROBE_START_LINE_24 = 24;
			org.jsoup.nodes.Attributes v_attributes_393_line_24 = attributes;
			int PROBE_END_LINE_24 = 24;
			value = v_attributes_393_line_24;
            int PROBE_START_LINE_25 = 26;
			Object v_core_value_392_line_25 = coreValue;
			boolean leaf_node_1_expr8_line_25 = v_core_value_392_line_25 != null;
			int PROBE_END_LINE_25 = 26;
			if (leaf_node_1_expr8_line_25)
                attributes.put(nodeName(), (String) coreValue);
        }
    }

    String coreValue() {
        int PROBE_START_LINE_31 = 31;
		String leaf_node_1_expr10_line_31 = nodeName();
		String leaf_node_1_expr9_line_31 = attr(leaf_node_1_expr10_line_31);
		int PROBE_END_LINE_31 = 31;
		return leaf_node_1_expr9_line_31;
    }

    void coreValue(String value) {
        attr(nodeName(), value);
    }

    @Override
    public String attr(String key) {
        int PROBE_START_LINE_40 = 40;
		String p_key_395_line_40 = key;
		int PROBE_END_LINE_40 = 40;
		Validate.notNull(p_key_395_line_40);
        int PROBE_START_LINE_41 = 43;
		boolean leaf_node_1_expr13_line_41 = hasAttributes();
		boolean leaf_node_1_expr12_line_41 = !leaf_node_1_expr13_line_41;
		int PROBE_END_LINE_41 = 43;
		if (leaf_node_1_expr12_line_41) {
            int PROBE_START_LINE_42 = 42;
			String p_key_395_line_42 = key;
			String leaf_node_1_expr17_line_42 = nodeName();
			boolean leaf_node_1_expr15_line_42 = p_key_395_line_42.equals(leaf_node_1_expr17_line_42);
			Object f_value_391_line_42 = null;
			String f_empty_string_396_line_42 = null;
			if (leaf_node_1_expr15_line_42) {
				f_value_391_line_42 = value;
			} else {
				f_empty_string_396_line_42 = EmptyString;
			}
			String leaf_node_1_expr14_line_42 = leaf_node_1_expr15_line_42
					? (String) f_value_391_line_42
					: f_empty_string_396_line_42;
			int PROBE_END_LINE_42 = 42;
			return leaf_node_1_expr14_line_42;
        }
        int PROBE_START_LINE_44 = 44;
		String p_key_395_line_44 = key;
		String leaf_node_1_expr18_line_44 = super.attr(p_key_395_line_44);
		int PROBE_END_LINE_44 = 44;
		return leaf_node_1_expr18_line_44;
    }

    @Override
    public Node attr(String key, String value) {
        int PROBE_START_LINE_49 = 54;
		boolean leaf_node_1_expr21_line_49 = hasAttributes();
		boolean leaf_node_1_expr20_line_49 = !leaf_node_1_expr21_line_49;
		boolean leaf_node_1_expr22_line_49 = true;
		if (leaf_node_1_expr20_line_49) {
			String p_key_397_line_49 = key;
			String leaf_node_1_expr23_line_49 = nodeName();
			leaf_node_1_expr22_line_49 = p_key_397_line_49.equals(leaf_node_1_expr23_line_49);
		}
		boolean leaf_node_1_expr19_line_49 = leaf_node_1_expr20_line_49 && leaf_node_1_expr22_line_49;
		int PROBE_END_LINE_49 = 54;
		if (leaf_node_1_expr19_line_49) {
            this.value = value;
        } else {
            ensureAttributes();
            int PROBE_START_LINE_53 = 53;
			String p_key_397_line_53 = key;
			String p_value_398_line_53 = value;
			int PROBE_END_LINE_53 = 53;
			super.attr(p_key_397_line_53, p_value_398_line_53);
        }
        return this;
    }

    @Override
    public boolean hasAttr(String key) {
        ensureAttributes();
        return super.hasAttr(key);
    }

    @Override
    public Node removeAttr(String key) {
        ensureAttributes();
        return super.removeAttr(key);
    }

    @Override
    public String absUrl(String key) {
        ensureAttributes();
        return super.absUrl(key);
    }

    @Override
    public String baseUri() {
        return hasParent() ? parent().baseUri() : "";
    }

    @Override
    protected void doSetBaseUri(String baseUri) {
        // noop
    }

    @Override
    public int childNodeSize() {
        return 0;
    }

    @Override
    protected List<Node> ensureChildNodes() {
        throw new UnsupportedOperationException("Leaf Nodes do not have child nodes.");
    }
}
