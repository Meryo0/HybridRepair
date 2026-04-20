package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/**
 * Helper class needed to be able to efficiently access class
 * member functions ({@link Method}s and {@link Constructor}s)
 * in {@link java.util.Map}s.
 */
public final class MemberKey
{
    final static Class<?>[] NO_CLASSES = new Class<?>[0];

    final String _name;
    final Class<?>[] _argTypes;

    public MemberKey(Method m)
    {
        this(m.getName(), m.getParameterTypes());
    }

    public MemberKey(Constructor<?> ctor)
    {
        this("", ctor.getParameterTypes());
    }

    public MemberKey(String name, Class<?>[] argTypes)
    {
        int PROBE_START_LINE_30 = 30;
		String p_name_2991_line_30 = name;
		int PROBE_END_LINE_30 = 30;
		_name = p_name_2991_line_30;
        int PROBE_START_LINE_31 = 31;
		Class<?>[] p_arg_types_2992_line_31 = argTypes;
		boolean member_key_1_expr9_line_31 = p_arg_types_2992_line_31 == null;
		boolean member_key_1_expr8_line_31 = (member_key_1_expr9_line_31);
		Class<?>[] f_no_classes_2988_line_31 = null;
		Class<?>[] p_arg_types_2992_line_31_v1 = null;
		if (member_key_1_expr8_line_31) {
			f_no_classes_2988_line_31 = NO_CLASSES;
		} else {
			p_arg_types_2992_line_31_v1 = argTypes;
		}
		Class<?>[] member_key_1_expr7_line_31 = member_key_1_expr8_line_31
				? f_no_classes_2988_line_31
				: p_arg_types_2992_line_31_v1;
		int PROBE_END_LINE_31 = 31;
		_argTypes = member_key_1_expr7_line_31;
    }

    @Override
    public String toString() {
        return _name + "(" + _argTypes.length+"-args)";
    }

    @Override
    public int hashCode()
    {
        int PROBE_START_LINE_42 = 42;
		String f__name_2993_line_42 = _name;
		int member_key_1_expr11_line_42 = f__name_2993_line_42.hashCode();
		Class<?>[] f__arg_types_2994_line_42 = _argTypes;
		int q_length_103_line_42 = f__arg_types_2994_line_42.length;
		int member_key_1_expr10_line_42 = member_key_1_expr11_line_42 + q_length_103_line_42;
		int PROBE_END_LINE_42 = 42;
		return member_key_1_expr10_line_42;
    }

    @Override
    public boolean equals(Object o)
    {
        int PROBE_START_LINE_48 = 48;
		Object p_o_2995_line_48 = o;
		boolean member_key_1_expr12_line_48 = p_o_2995_line_48 == this;
		int PROBE_END_LINE_48 = 48;
		if (member_key_1_expr12_line_48) return true;
        int PROBE_START_LINE_49 = 49;
		Object p_o_2995_line_49 = o;
		boolean member_key_1_expr14_line_49 = p_o_2995_line_49 == null;
		int PROBE_END_LINE_49 = 49;
		if (member_key_1_expr14_line_49) return false;
        int PROBE_START_LINE_50 = 52;
		Object p_o_2995_line_50 = o;
		Class<? extends Object> member_key_1_expr16_line_50 = p_o_2995_line_50.getClass();
		Class<? extends com.fasterxml.jackson.databind.introspect.MemberKey> member_key_1_expr17_line_50 = getClass();
		boolean member_key_1_expr15_line_50 = member_key_1_expr16_line_50 != member_key_1_expr17_line_50;
		int PROBE_END_LINE_50 = 52;
		if (member_key_1_expr15_line_50) {
            return false;
        }
        int PROBE_START_LINE_53 = 53;
		Object p_o_2995_line_53 = o;
		int PROBE_END_LINE_53 = 53;
		MemberKey other = (MemberKey) p_o_2995_line_53;
        int PROBE_START_LINE_54 = 56;
		String f__name_2993_line_54 = _name;
		com.fasterxml.jackson.databind.introspect.MemberKey v_other_2996_line_54 = other;
		String q__name_104_line_54 = v_other_2996_line_54._name;
		boolean member_key_1_expr20_line_54 = f__name_2993_line_54.equals(q__name_104_line_54);
		boolean member_key_1_expr19_line_54 = !member_key_1_expr20_line_54;
		int PROBE_END_LINE_54 = 56;
		if (member_key_1_expr19_line_54) {
            return false;
        }
        int PROBE_START_LINE_57 = 57;
		com.fasterxml.jackson.databind.introspect.MemberKey v_other_2996_line_57 = other;
		Class<?>[] q__arg_types_105_line_57 = v_other_2996_line_57._argTypes;
		int PROBE_END_LINE_57 = 57;
		Class<?>[] otherArgs = q__arg_types_105_line_57;
        int PROBE_START_LINE_58 = 58;
		Class<?>[] f__arg_types_2994_line_58 = _argTypes;
		int q_length_106_line_58 = f__arg_types_2994_line_58.length;
		int PROBE_END_LINE_58 = 58;
		int len = q_length_106_line_58;
        int PROBE_START_LINE_59 = 61;
		Class<?>[] v_other_args_2997_line_59 = otherArgs;
		int q_length_106_line_59 = v_other_args_2997_line_59.length;
		int v_len_2998_line_59 = len;
		boolean member_key_1_expr21_line_59 = q_length_106_line_59 != v_len_2998_line_59;
		int PROBE_END_LINE_59 = 61;
		if (member_key_1_expr21_line_59) {
            return false;
        }
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_63 = 63;
			int v_i_2999_line_62 = i;
			int v_len_2998_line_62 = len;
			boolean member_key_1_expr23_line_62 = v_i_2999_line_62 < v_len_2998_line_62;
			if (!(member_key_1_expr23_line_62)) {
				break;
			}
			Class<?>[] v_other_args_2997_line_63 = otherArgs;
			int v_i_2999_line_63 = i;
			Class<?> member_key_1_expr25_line_63 = v_other_args_2997_line_63[v_i_2999_line_63];
			int PROBE_END_LINE_63 = 63;
			Class<?> type1 = member_key_1_expr25_line_63;
            int PROBE_START_LINE_64 = 64;
			Class<?>[] f__arg_types_2994_line_64 = _argTypes;
			int v_i_2999_line_64 = i;
			Class<?> member_key_1_expr26_line_64 = f__arg_types_2994_line_64[v_i_2999_line_64];
			int PROBE_END_LINE_64 = 64;
			Class<?> type2 = member_key_1_expr26_line_64;
            int PROBE_START_LINE_65 = 67;
			Class<?> v_type_1_3000_line_65 = type1;
			Class<?> v_type_2_3001_line_65 = type2;
			boolean member_key_1_expr27_line_65 = v_type_1_3000_line_65 == v_type_2_3001_line_65;
			int PROBE_END_LINE_65 = 67;
			if (member_key_1_expr27_line_65) {
                continue;
            }
            /* 23-Feb-2009, tatu: Are there any cases where we would have to
             *   consider some narrowing conversions or such? For now let's
             *   assume exact type match is enough
             */
            /* 07-Apr-2009, tatu: Indeed there are (see [JACKSON-97]).
             *    This happens with generics when a bound is specified.
             *    I hope this works; check here must be transitive
             */
            /* 14-Oct-2014, tatu: No, doing that is wrong. Conflicts may (and will) be
             *    handled at a later point; trying to change definition of equality
             *    will just cause problems like [jackson-core#158]
             */
            /*
            if (type1.isAssignableFrom(type2) || type2.isAssignableFrom(type1)) {
                continue;
            }
            */
            return false;
        }
        return true;
    }
}
