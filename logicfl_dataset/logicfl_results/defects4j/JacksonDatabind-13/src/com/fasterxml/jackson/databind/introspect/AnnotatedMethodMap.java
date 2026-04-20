package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Method;
import java.util.*;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Iterator;
import java.util.Collection;

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
        int PROBE_START_LINE_23 = 25;
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_23 = _methods;
		boolean annotated_method_map_1_expr1_line_23 = f__methods_2689_line_23 == null;
		int PROBE_END_LINE_23 = 25;
		if (annotated_method_map_1_expr1_line_23) {
            _methods = new LinkedHashMap<MemberKey,AnnotatedMethod>();
        }
        int PROBE_START_LINE_26 = 26;
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_26 = _methods;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_2688_line_26 = am;
		java.lang.reflect.Method annotated_method_map_1_expr6_line_26 = p_am_2688_line_26.getAnnotated();
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_2688_line_26_v1 = am;
		int PROBE_END_LINE_26 = 26;
		f__methods_2689_line_26.put(new MemberKey(annotated_method_map_1_expr6_line_26), p_am_2688_line_26_v1);
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
        int PROBE_START_LINE_40 = 42;
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_40 = _methods;
		boolean annotated_method_map_1_expr7_line_40 = f__methods_2689_line_40 != null;
		int PROBE_END_LINE_40 = 42;
		if (annotated_method_map_1_expr7_line_40) {
            return _methods.remove(new MemberKey(m));
        }
        return null;
    }

    public boolean isEmpty() {
        int PROBE_START_LINE_47 = 47;
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_47 = _methods;
		boolean annotated_method_map_1_expr10_line_47 = f__methods_2689_line_47 == null;
		boolean annotated_method_map_1_expr11_line_47 = false;
		if (!annotated_method_map_1_expr10_line_47) {
			LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_47_v1 = _methods;
			int annotated_method_map_1_expr12_line_47 = f__methods_2689_line_47_v1.size();
			annotated_method_map_1_expr11_line_47 = annotated_method_map_1_expr12_line_47 == 0;
		}
		boolean annotated_method_map_1_expr9_line_47 = annotated_method_map_1_expr10_line_47
				|| annotated_method_map_1_expr11_line_47;
		boolean annotated_method_map_1_expr8_line_47 = (annotated_method_map_1_expr9_line_47);
		int PROBE_END_LINE_47 = 47;
		return annotated_method_map_1_expr8_line_47;
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
        int PROBE_START_LINE_64 = 66;
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_64 = _methods;
		boolean annotated_method_map_1_expr13_line_64 = f__methods_2689_line_64 == null;
		int PROBE_END_LINE_64 = 66;
		if (annotated_method_map_1_expr13_line_64) {
            return null;
        }
        int PROBE_START_LINE_67 = 67;
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_67 = _methods;
		java.lang.reflect.Method p_m_2694_line_67 = m;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod annotated_method_map_1_expr14_line_67 = f__methods_2689_line_67
				.get(new MemberKey(p_m_2694_line_67));
		int PROBE_END_LINE_67 = 67;
		return annotated_method_map_1_expr14_line_67;
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
		LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_79 = _methods;
		boolean annotated_method_map_1_expr16_line_79 = f__methods_2689_line_79 != null;
		int PROBE_END_LINE_79 = 81;
		if (annotated_method_map_1_expr16_line_79) {
            int PROBE_START_LINE_80 = 80;
			LinkedHashMap<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__methods_2689_line_80 = _methods;
			Collection<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_method_map_1_expr18_line_80 = f__methods_2689_line_80
					.values();
			Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_method_map_1_expr17_line_80 = annotated_method_map_1_expr18_line_80
					.iterator();
			int PROBE_END_LINE_80 = 80;
			return annotated_method_map_1_expr17_line_80;
        }
        int PROBE_START_LINE_82 = 82;
		List<AnnotatedMethod> annotated_method_map_1_expr19_line_82 = Collections.emptyList();
		int PROBE_END_LINE_82 = 82;
		List<AnnotatedMethod> empty = annotated_method_map_1_expr19_line_82;
        int PROBE_START_LINE_83 = 83;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_empty_2695_line_83 = empty;
		Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_method_map_1_expr20_line_83 = v_empty_2695_line_83
				.iterator();
		int PROBE_END_LINE_83 = 83;
		return annotated_method_map_1_expr20_line_83;
    }
}
