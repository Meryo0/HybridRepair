package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.InternCache;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.ClassUtil;

/**
 * Simple value class used for containing names of properties as defined
 * by annotations (and possibly other configuration sources).
 * 
 * @since 2.1
 */
public class PropertyName
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L; // 2.5

    private final static String _USE_DEFAULT = "";
    private final static String _NO_NAME = "";

    int PROBE_START_LINE_23 = 29;

	public static final String f___use_default_1049_line_29 = _USE_DEFAULT;

	int PROBE_END_LINE_23 = 29;

	/**
     * Special placeholder value that indicates that name to use should be
     * based on the standard heuristics. This can be different from returning
     * null, as null means "no information available, whereas this value
     * indicates explicit defaulting.
     */
    public final static PropertyName USE_DEFAULT = new PropertyName(f___use_default_1049_line_29, null);

    int PROBE_START_LINE_31 = 36;

	public static final String f___no_name_1051_line_36 = _NO_NAME;

	int PROBE_END_LINE_31 = 36;

	/**
     * Special placeholder value that indicates that there is no name associated.
     * Exact semantics to use (if any) depend on actual annotation in use, but
     * commonly this value disables behavior for which name would be needed.
     */
    public final static PropertyName NO_NAME = new PropertyName(new String(f___no_name_1051_line_36), null);
    
    /**
     * Basic name of the property.
     */
    protected final String _simpleName;

    /**
     * Additional namespace, for formats that have such concept (JSON
     * does not, XML does, for example).
     */
    protected final String _namespace;

    /**
     * Lazily-constructed efficient representation of the simple name.
     *<p>
     * NOTE: not defined as volatile to avoid performance problem with
     * concurrent access in multi-core environments; due to statelessness
     * of {@link SerializedString} at most leads to multiple instantiations.
     * 
     * @since 2.4
     */
    protected SerializableString _encodedSimple;
    
    public PropertyName(String simpleName) {
        this(simpleName, null);
    }

    public PropertyName(String simpleName, String namespace)
    {
        int PROBE_START_LINE_66 = 66;
		String p_simple_name_1053_line_66 = simpleName;
		String property_name_1_expr6_line_66 = ClassUtil.nonNullString(p_simple_name_1053_line_66);
		int PROBE_END_LINE_66 = 66;
		_simpleName = property_name_1_expr6_line_66;
        int PROBE_START_LINE_67 = 67;
		String p_namespace_1054_line_67 = namespace;
		int PROBE_END_LINE_67 = 67;
		_namespace = p_namespace_1054_line_67;
    }

    // To support JDK serialization, recovery of Singleton instance
    protected Object readResolve() {
        if (_namespace == null) {
            if (_simpleName == null || _USE_DEFAULT.equals(_simpleName)) {
                return USE_DEFAULT;
            }
            // 30-Oct-2016, tatu: I don't see how this could ever occur...
            //     or how to distinguish USE_DEFAULT/NO_NAME from serialized
            /*
            if (_simpleName.equals(_NO_NAME)) {
                return NO_NAME;
            }
            */
        }
        return this;
    }

    /**
     * @since 2.6
     */
    public static PropertyName construct(String simpleName)
    {
        int PROBE_START_LINE_92 = 94;
		String p_simple_name_1057_line_92 = simpleName;
		boolean property_name_1_expr9_line_92 = p_simple_name_1057_line_92 == null;
		boolean property_name_1_expr10_line_92 = false;
		if (!property_name_1_expr9_line_92) {
			String p_simple_name_1057_line_92_v1 = simpleName;
			int property_name_1_expr11_line_92 = p_simple_name_1057_line_92_v1.length();
			property_name_1_expr10_line_92 = property_name_1_expr11_line_92 == 0;
		}
		boolean property_name_1_expr8_line_92 = property_name_1_expr9_line_92 || property_name_1_expr10_line_92;
		int PROBE_END_LINE_92 = 94;
		if (property_name_1_expr8_line_92) {
            return USE_DEFAULT;
        }
        int PROBE_START_LINE_95 = 95;
		com.fasterxml.jackson.core.util.InternCache q_instance_33_line_95 = InternCache.instance;
		String p_simple_name_1057_line_95 = simpleName;
		String property_name_1_expr13_line_95 = q_instance_33_line_95.intern(p_simple_name_1057_line_95);
		int PROBE_END_LINE_95 = 95;
		return new PropertyName(property_name_1_expr13_line_95, null);
    }

    public static PropertyName construct(String simpleName, String ns)
    {
        if (simpleName == null) {
            simpleName = "";
        }
        if (ns == null && simpleName.length() == 0) {
            return USE_DEFAULT;
        }
        return new PropertyName(InternCache.instance.intern(simpleName), ns);
    }

    public PropertyName internSimpleName()
    {
        int PROBE_START_LINE_111 = 113;
		String f__simple_name_1055_line_111 = _simpleName;
		int property_name_1_expr15_line_111 = f__simple_name_1055_line_111.length();
		boolean property_name_1_expr14_line_111 = property_name_1_expr15_line_111 == 0;
		int PROBE_END_LINE_111 = 113;
		if (property_name_1_expr14_line_111) { // empty String is canonical already
            return this;
        }
        int PROBE_START_LINE_114 = 114;
		com.fasterxml.jackson.core.util.InternCache q_instance_34_line_114 = InternCache.instance;
		String f__simple_name_1055_line_114 = _simpleName;
		String property_name_1_expr16_line_114 = q_instance_34_line_114.intern(f__simple_name_1055_line_114);
		int PROBE_END_LINE_114 = 114;
		String interned = property_name_1_expr16_line_114;
        int PROBE_START_LINE_115 = 117;
		String v_interned_1061_line_115 = interned;
		String f__simple_name_1055_line_115 = _simpleName;
		boolean property_name_1_expr17_line_115 = v_interned_1061_line_115 == f__simple_name_1055_line_115;
		int PROBE_END_LINE_115 = 117;
		if (property_name_1_expr17_line_115) { // was already interned
            return this;
        }
        return new PropertyName(interned, _namespace);
    }

    /**
     * Fluent factory method for constructing an instance with different
     * simple name.
     */
    public PropertyName withSimpleName(String simpleName)
    {
        if (simpleName == null) {
            simpleName = "";
        }
        if (simpleName.equals(_simpleName)) {
            return this;
        }
        return new PropertyName(simpleName, _namespace);
    }
    
    /**
     * Fluent factory method for constructing an instance with different
     * namespace.
     */
    public PropertyName withNamespace(String ns) {
        if (ns == null) {
            if (_namespace == null) {
                return this;
            }
        } else if (ns.equals(_namespace)) {
            return this;
        }
        return new PropertyName(_simpleName, ns);
    }
    
    /*
    /**********************************************************
    /* Accessors
    /**********************************************************
     */
    
    public String getSimpleName() {
        int PROBE_START_LINE_158 = 158;
		String f__simple_name_1055_line_158 = _simpleName;
		int PROBE_END_LINE_158 = 158;
		return f__simple_name_1055_line_158;
    }

    /**
     * Accessor that may be used to get lazily-constructed efficient
     * representation of the simple name.
     * 
     * @since 2.4
     */
    public SerializableString simpleAsEncoded(MapperConfig<?> config) {
        SerializableString sstr = _encodedSimple;
        if (sstr == null) {
            if (config == null) {
                sstr = new SerializedString(_simpleName);
            } else {
                sstr = config.compileString(_simpleName);
            }
            _encodedSimple = sstr;
        }
        return sstr;
    }
    
    public String getNamespace() {
        return _namespace;
    }

    public boolean hasSimpleName() {
        return _simpleName.length() > 0;
    }

    /**
     * @since 2.3
     */
    public boolean hasSimpleName(String str) {
        // _simpleName never null so...
        return _simpleName.equals(str);
    }
    
    public boolean hasNamespace() {
        return _namespace != null;
    }

    /**
     * Method that is basically equivalent of:
     *<pre>
     *   !hasSimpleName() &lt;&lt; !hasNamespace();
     *</pre>
     * 
     * @since 2.4
     */
    public boolean isEmpty() {
        return (_namespace == null) && (_simpleName.isEmpty());
    }

    /*
    /**********************************************************
    /* Std method overrides
    /**********************************************************
     */

    @Override
    public boolean equals(Object o)
    {
        if (o == this) return true;
        if (o == null) return false;
        /* 13-Nov-2012, tatu: by default, require strict type equality.
         *   Re-evaluate if this becomes an issue.
         */
        if (o.getClass() != getClass()) return false;
        // 13-Nov-2012, tatu: Should we have specific rules on matching USE_DEFAULT?
        //   (like, it only ever matching exact instance)
        //   If we did, would need to check symmetrically; that is, if either 'this'
        //   or 'o' was USE_DEFAULT, both would have to be.
        PropertyName other = (PropertyName) o;
        if (_simpleName == null) {
            if (other._simpleName != null) return false;
        } else if (!_simpleName.equals(other._simpleName)) {
            return false;
        }
        if (_namespace == null) {
            return (null == other._namespace);
        }
        return _namespace.equals(other._namespace);
    }
    
    @Override
    public int hashCode() {
        if (_namespace == null) {
            return _simpleName.hashCode();
        }
        return _namespace.hashCode() ^  _simpleName.hashCode();
    }
    
    @Override
    public String toString() {
        if (_namespace == null) {
            return _simpleName;
        }
        return "{"+_namespace + "}" + _simpleName;
    }
}
