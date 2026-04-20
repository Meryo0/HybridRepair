package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Method;
import java.util.*;
import java.util.Iterator;
import java.util.Map;
import java.util.Collection;

/**
 * Simple helper class used to keep track of collection of
 * {@link AnnotatedMethod}s, accessible by lookup. Lookup
 * is usually needed for augmenting and overriding annotations.
 */
public final class AnnotatedMethodMap
    implements Iterable<AnnotatedMethod>
{
    protected Map<MemberKey,AnnotatedMethod> _methods;

    public AnnotatedMethodMap() { }

    /**
     * @since 2.9
     */
    public AnnotatedMethodMap(Map<MemberKey,AnnotatedMethod> m) {
        int PROBE_START_LINE_22 = 22;
		Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> p_m_3687_line_22 = m;
		int PROBE_END_LINE_22 = 22;
		_methods = p_m_3687_line_22;
    }

    public int size() {
        return (_methods == null) ? 0 : _methods.size();
    }

    public AnnotatedMethod find(String name, Class<?>[] paramTypes)
    {
        if (_methods == null) {
            return null;
        }
        return _methods.get(new MemberKey(name, paramTypes));
    }

    public AnnotatedMethod find(Method m)
    {
        if (_methods == null) {
            return null;
        }
        return _methods.get(new MemberKey(m));
    }

    /*
    /**********************************************************
    /* Iterable implementation (for iterating over values)
    /**********************************************************
     */

    @Override
    public Iterator<AnnotatedMethod> iterator()
    {
        int PROBE_START_LINE_54 = 56;
		Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_3688_line_54 = _methods;
		boolean annotated_method_map_1_expr2_line_54 = f__methods_3688_line_54 == null;
		int PROBE_END_LINE_54 = 56;
		if (annotated_method_map_1_expr2_line_54) {
            return Collections.emptyIterator();
        }
        int PROBE_START_LINE_57 = 57;
		Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_3688_line_57 = _methods;
		Collection<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_method_map_1_expr4_line_57 = f__methods_3688_line_57
				.values();
		Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_method_map_1_expr3_line_57 = annotated_method_map_1_expr4_line_57
				.iterator();
		int PROBE_END_LINE_57 = 57;
		return annotated_method_map_1_expr3_line_57;
    }
}
