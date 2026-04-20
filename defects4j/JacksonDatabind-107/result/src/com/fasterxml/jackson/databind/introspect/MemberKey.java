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
		String p_name_4142_line_30 = name;
		int PROBE_END_LINE_30 = 30;
		_name = p_name_4142_line_30;
        int PROBE_START_LINE_31 = 31;
		Class<?>[] p_arg_types_4143_line_31 = argTypes;
		boolean member_key_1_expr9_line_31 = p_arg_types_4143_line_31 == null;
		boolean member_key_1_expr8_line_31 = (member_key_1_expr9_line_31);
		Class<?>[] f_no_classes_4139_line_31 = null;
		Class<?>[] p_arg_types_4143_line_31_v1 = null;
		if (member_key_1_expr8_line_31) {
			f_no_classes_4139_line_31 = NO_CLASSES;
		} else {
			p_arg_types_4143_line_31_v1 = argTypes;
		}
		Class<?>[] member_key_1_expr7_line_31 = member_key_1_expr8_line_31
				? f_no_classes_4139_line_31
				: p_arg_types_4143_line_31_v1;
		int PROBE_END_LINE_31 = 31;
		_argTypes = member_key_1_expr7_line_31;
    }

    public String getName() {
        return _name;
    }

    public int argCount() {
        return _argTypes.length;
    }

    @Override
    public String toString() {
        return _name + "(" + _argTypes.length+"-args)";
    }

    @Override
    public int hashCode() {
        int PROBE_START_LINE_49 = 49;
		String f__name_4144_line_49 = _name;
		int member_key_1_expr11_line_49 = f__name_4144_line_49.hashCode();
		Class<?>[] f__arg_types_4145_line_49 = _argTypes;
		int q_length_120_line_49 = f__arg_types_4145_line_49.length;
		int member_key_1_expr10_line_49 = member_key_1_expr11_line_49 + q_length_120_line_49;
		int PROBE_END_LINE_49 = 49;
		return member_key_1_expr10_line_49;
    }

    @Override
    public boolean equals(Object o)
    {
        if (o == this) return true;
        if (o == null) return false;
        if (o.getClass() != getClass()) {
            return false;
        }
        MemberKey other = (MemberKey) o;
        if (!_name.equals(other._name)) {
            return false;
        }
        Class<?>[] otherArgs = other._argTypes;
        int len = _argTypes.length;
        if (otherArgs.length != len) {
            return false;
        }
        for (int i = 0; i < len; ++i) {
            Class<?> type1 = otherArgs[i];
            Class<?> type2 = _argTypes[i];
            if (type1 == type2) {
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
