package com.fasterxml.jackson.databind.jsontype;

/**
 * Simple container class for types with optional logical name, used
 * as external identifier
 */
public final class NamedType implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    protected final Class<?> _class;
    protected final int _hashCode;

    protected String _name;
    
    public NamedType(Class<?> c) { this(c, null); }
    
    public NamedType(Class<?> c, String name) {
        int PROBE_START_LINE_19 = 19;
		Class<?> p_c_2182_line_19 = c;
		int PROBE_END_LINE_19 = 19;
		_class = p_c_2182_line_19;
        int PROBE_START_LINE_20 = 20;
		Class<?> p_c_2182_line_20 = c;
		String named_type_1_expr4_line_20 = p_c_2182_line_20.getName();
		int named_type_1_expr3_line_20 = named_type_1_expr4_line_20.hashCode();
		int PROBE_END_LINE_20 = 20;
		_hashCode = named_type_1_expr3_line_20;
        int PROBE_START_LINE_21 = 21;
		String p_name_2183_line_21 = name;
		int PROBE_END_LINE_21 = 21;
		setName(p_name_2183_line_21);
    }

    public Class<?> getType() { int PROBE_START_LINE_24 = 24;
		Class<?> f__class_2184_line_24 = _class;
		int PROBE_END_LINE_24 = 24;
	return f__class_2184_line_24; }
    public String getName() { int PROBE_START_LINE_25 = 25;
		String f__name_2186_line_25 = _name;
		int PROBE_END_LINE_25 = 25;
	return f__name_2186_line_25; }
    public void setName(String name) { int PROBE_START_LINE_26 = 26;
		String p_name_2187_line_26 = name;
		boolean named_type_1_expr10_line_26 = p_name_2187_line_26 == null;
		boolean named_type_1_expr11_line_26 = false;
		if (!named_type_1_expr10_line_26) {
			String p_name_2187_line_26_v1 = name;
			int named_type_1_expr12_line_26 = p_name_2187_line_26_v1.length();
			named_type_1_expr11_line_26 = named_type_1_expr12_line_26 == 0;
		}
		boolean named_type_1_expr9_line_26 = named_type_1_expr10_line_26 || named_type_1_expr11_line_26;
		boolean named_type_1_expr8_line_26 = (named_type_1_expr9_line_26);
		String p_name_2187_line_26_v2 = null;
		if (!named_type_1_expr8_line_26) {
			p_name_2187_line_26_v2 = name;
		}
		String named_type_1_expr7_line_26 = named_type_1_expr8_line_26 ? null : p_name_2187_line_26_v2;
		int PROBE_END_LINE_26 = 26;
	_name = named_type_1_expr7_line_26; }

    public boolean hasName() { int PROBE_START_LINE_28 = 28;
		String f__name_2186_line_28 = _name;
		boolean named_type_1_expr13_line_28 = f__name_2186_line_28 != null;
		int PROBE_END_LINE_28 = 28;
	return named_type_1_expr13_line_28; }
    
    /**
     * Equality is defined based on class only, not on name
     */
    @Override
    public boolean equals(Object o) {
        if (o == this) return true;
        if (o == null) return false;
        if (o.getClass() != getClass()) return false;
        return _class == ((NamedType) o)._class;
    }

    @Override
    public int hashCode() { return _hashCode; }

    @Override
    public String toString() {
    	return "[NamedType, class "+_class.getName()+", name: "
    	        +(_name == null ? "null" :("'"+_name+"'"))+"]";
    }
}
