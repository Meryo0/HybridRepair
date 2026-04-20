package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Method;
import java.util.*;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Iterator;

/**
 * Simple helper class used to keep track of collection of
 * {@link AnnotatedMethod}s, accessible by lookup. Lookup
 * is usually needed for augmenting and overriding annotations.
 */
public final class AnnotatedMethodMap
    implements Iterable<AnnotatedMethod>
{
    protected LinkedHashMap<MemberKey,AnnotatedMethod> _methods;

    public AnnotatedMethodMap() { }

    /**
     * Method called to add specified annotated method in the Map.
     */
    public void add(AnnotatedMethod am)
    {
        if (_methods == null) {
            _methods = new LinkedHashMap<MemberKey,AnnotatedMethod>();
        }
        _methods.put(new MemberKey(am.getAnnotated()), am);
    }

    /**
     * Method called to remove specified method, assuming
     * it exists in the Map
     */
    public AnnotatedMethod remove(AnnotatedMethod am)
    {
        return remove(am.getAnnotated());
    }

    public AnnotatedMethod remove(Method m)
    {
        if (_methods != null) {
            return _methods.remove(new MemberKey(m));
        }
        return null;
    }

    public boolean isEmpty() {
        int PROBE_START_LINE_47 = 47;
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_1612_line_47 = _methods;
		boolean annotated_method_map_1_expr3_line_47 = f__methods_1612_line_47 == null;
		boolean annotated_method_map_1_expr4_line_47 = false;
		if (!annotated_method_map_1_expr3_line_47) {
			LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_1612_line_47_v1 = _methods;
			int annotated_method_map_1_expr5_line_47 = f__methods_1612_line_47_v1.size();
			annotated_method_map_1_expr4_line_47 = annotated_method_map_1_expr5_line_47 == 0;
		}
		boolean annotated_method_map_1_expr2_line_47 = annotated_method_map_1_expr3_line_47
				|| annotated_method_map_1_expr4_line_47;
		boolean annotated_method_map_1_expr1_line_47 = (annotated_method_map_1_expr2_line_47);
		int PROBE_END_LINE_47 = 47;
		return annotated_method_map_1_expr1_line_47;
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
        int PROBE_START_LINE_79 = 81;
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_1612_line_79 = _methods;
		boolean annotated_method_map_1_expr6_line_79 = f__methods_1612_line_79 != null;
		int PROBE_END_LINE_79 = 81;
		if (annotated_method_map_1_expr6_line_79) {
            return _methods.values().iterator();
        }
        int PROBE_START_LINE_82 = 82;
		List<AnnotatedMethod> annotated_method_map_1_expr7_line_82 = Collections.emptyList();
		int PROBE_END_LINE_82 = 82;
		List<AnnotatedMethod> empty = annotated_method_map_1_expr7_line_82;
        int PROBE_START_LINE_83 = 83;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_empty_1616_line_83 = empty;
		Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_method_map_1_expr8_line_83 = v_empty_1616_line_83
				.iterator();
		int PROBE_END_LINE_83 = 83;
		return annotated_method_map_1_expr8_line_83;
    }
}
