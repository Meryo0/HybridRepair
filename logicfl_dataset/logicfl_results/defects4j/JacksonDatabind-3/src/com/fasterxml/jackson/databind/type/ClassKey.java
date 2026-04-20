package com.fasterxml.jackson.databind.type;

/**
 * Key class, used as an efficient and accurate key
 * for locating per-class values, such as
 * {@link com.fasterxml.jackson.databind.JsonSerializer}s.
 *<p>
 * The reason for having a separate key class instead of
 * directly using {@link Class} as key is mostly
 * to allow for redefining <code>hashCode</code> method --
 * for some strange reason, {@link Class} does not
 * redefine {@link Object#hashCode} and thus uses identity
 * hash, which is pretty slow. This makes key access using
 * {@link Class} unnecessarily slow.
 *<p>
 * Note: since class is not strictly immutable, caller must
 * know what it is doing, if changing field values.
 */
public final class ClassKey
    implements Comparable<ClassKey>,
        java.io.Serializable // since 2.1
{
    private static final long serialVersionUID = 1L;

    private String _className;

    private Class<?> _class;

    /**
     * Let's cache hash code straight away, since we are
     * almost certain to need it.
     */
    private int _hashCode;

    public ClassKey() 
    {
        _class = null;
        _className = null;
        _hashCode = 0;
    }

    public ClassKey(Class<?> clz)
    {
        int PROBE_START_LINE_44 = 44;
		Class<?> p_clz_2484_line_44 = clz;
		int PROBE_END_LINE_44 = 44;
		_class = p_clz_2484_line_44;
        int PROBE_START_LINE_45 = 45;
		Class<?> p_clz_2484_line_45 = clz;
		String class_key_1_expr3_line_45 = p_clz_2484_line_45.getName();
		int PROBE_END_LINE_45 = 45;
		_className = class_key_1_expr3_line_45;
        int PROBE_START_LINE_46 = 46;
		String f__class_name_2486_line_46 = _className;
		int class_key_1_expr5_line_46 = f__class_name_2486_line_46.hashCode();
		int PROBE_END_LINE_46 = 46;
		_hashCode = class_key_1_expr5_line_46;
    }

    public void reset(Class<?> clz)
    {
        _class = clz;
        _className = clz.getName();
        _hashCode = _className.hashCode();
    }

    /*
    /**********************************************************
    /* Comparable
    /**********************************************************
     */

    @Override
    public int compareTo(ClassKey other)
    {
        // Just need to sort by name, ok to collide (unless used in TreeMap/Set!)
        return _className.compareTo(other._className);
    }

    /*
    /**********************************************************
    /* Standard methods
    /**********************************************************
     */

    @Override
        public boolean equals(Object o)
    {
        int PROBE_START_LINE_78 = 78;
		Object p_o_2490_line_78 = o;
		boolean class_key_1_expr6_line_78 = p_o_2490_line_78 == this;
		int PROBE_END_LINE_78 = 78;
		if (class_key_1_expr6_line_78) return true;
        int PROBE_START_LINE_79 = 79;
		Object p_o_2490_line_79 = o;
		boolean class_key_1_expr8_line_79 = p_o_2490_line_79 == null;
		int PROBE_END_LINE_79 = 79;
		if (class_key_1_expr8_line_79) return false;
        int PROBE_START_LINE_80 = 80;
		Object p_o_2490_line_80 = o;
		Class<? extends Object> class_key_1_expr10_line_80 = p_o_2490_line_80.getClass();
		Class<? extends com.fasterxml.jackson.databind.type.ClassKey> class_key_1_expr11_line_80 = getClass();
		boolean class_key_1_expr9_line_80 = class_key_1_expr10_line_80 != class_key_1_expr11_line_80;
		int PROBE_END_LINE_80 = 80;
		if (class_key_1_expr9_line_80) return false;
        int PROBE_START_LINE_81 = 81;
		Object p_o_2490_line_81 = o;
		int PROBE_END_LINE_81 = 81;
		ClassKey other = (ClassKey) p_o_2490_line_81;

        int PROBE_START_LINE_90 = 90;
		com.fasterxml.jackson.databind.type.ClassKey v_other_2491_line_90 = other;
		Class<?> q__class_52_line_90 = v_other_2491_line_90._class;
		Class<?> f__class_2485_line_90 = _class;
		boolean class_key_1_expr13_line_90 = q__class_52_line_90 == f__class_2485_line_90;
		int PROBE_END_LINE_90 = 90;
		/* Is it possible to have different Class object for same name + class loader combo?
         * Let's assume answer is no: if this is wrong, will need to uncomment following functionality
         */
        /*
        return (other._className.equals(_className))
            && (other._class.getClassLoader() == _class.getClassLoader());
        */
        return class_key_1_expr13_line_90;
    }

    @Override public int hashCode() { int PROBE_START_LINE_93 = 93;
		int f__hash_code_2487_line_93 = _hashCode;
		int PROBE_END_LINE_93 = 93;
	return f__hash_code_2487_line_93; }

    @Override public String toString() { return _className; }
    
}
