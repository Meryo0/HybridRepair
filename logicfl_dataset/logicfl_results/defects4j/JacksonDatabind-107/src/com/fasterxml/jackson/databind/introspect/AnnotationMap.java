package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.util.*;

import com.fasterxml.jackson.databind.util.Annotations;
import java.util.HashMap;

/**
 * Simple helper class used to keep track of collection of
 * Jackson Annotations associated with annotatable things
 * (methods, constructors, classes).
 * Note that only Jackson-owned annotations are tracked (for now?).
 */
public final class AnnotationMap implements Annotations
{
    protected HashMap<Class<?>,Annotation> _annotations;

    public AnnotationMap() { }

    public static AnnotationMap of(Class<?> type, Annotation value) {
        HashMap<Class<?>,Annotation> ann = new HashMap<>(4);
        ann.put(type, value);
        return new AnnotationMap(ann);
    }

    AnnotationMap(HashMap<Class<?>,Annotation> a) {
        _annotations = a;
    }

    /*
    /**********************************************************
    /* Annotations impl
    /**********************************************************
     */
    
    @SuppressWarnings("unchecked")
    @Override
    public <A extends Annotation> A get(Class<A> cls)
    {
        int PROBE_START_LINE_40 = 42;
		HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_3773_line_40 = _annotations;
		boolean annotation_map_1_expr1_line_40 = f__annotations_3773_line_40 == null;
		int PROBE_END_LINE_40 = 42;
		if (annotation_map_1_expr1_line_40) {
            return null;
        }
        return (A) _annotations.get(cls);
    }

    @Override
    public boolean has(Class<?> cls)
    {
        if (_annotations == null) {
            return false;
        }
        return _annotations.containsKey(cls);
    }

    /**
     * Helper method that can be used for a "bulk" check to see if at least
     * one of given annotation types is included within this map.
     *
     * @since 2.7
     */
    @Override
    public boolean hasOneOf(Class<? extends Annotation>[] annoClasses) {
        int PROBE_START_LINE_63 = 69;
		HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_3773_line_63 = _annotations;
		boolean annotation_map_1_expr2_line_63 = f__annotations_3773_line_63 != null;
		int PROBE_END_LINE_63 = 69;
		if (annotation_map_1_expr2_line_63) {
            for (int i = 0, end = annoClasses.length; i < end; ++i) {
                if (_annotations.containsKey(annoClasses[i])) {
                    return true;
                }
            }
        }
        return false;
    }

    /*
    /**********************************************************
    /* Other API
    /**********************************************************
     */
    
    /**
     * @since 2.3
     */
    public Iterable<Annotation> annotations() {
        if (_annotations == null || _annotations.size() == 0) {
            return Collections.emptyList();
        }
        return _annotations.values();
    }
    
    public static AnnotationMap merge(AnnotationMap primary, AnnotationMap secondary)
    {
        int PROBE_START_LINE_91 = 93;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_primary_3776_line_91 = primary;
		boolean annotation_map_1_expr5_line_91 = p_primary_3776_line_91 == null;
		boolean annotation_map_1_expr6_line_91 = false;
		if (!annotation_map_1_expr5_line_91) {
			com.fasterxml.jackson.databind.introspect.AnnotationMap p_primary_3776_line_91_v1 = primary;
			HashMap<Class<?>, java.lang.annotation.Annotation> q__annotations_110_line_91 = p_primary_3776_line_91_v1._annotations;
			annotation_map_1_expr6_line_91 = q__annotations_110_line_91 == null;
		}
		boolean annotation_map_1_expr4_line_91 = annotation_map_1_expr5_line_91 || annotation_map_1_expr6_line_91;
		boolean annotation_map_1_expr7_line_91 = false;
		if (!annotation_map_1_expr4_line_91) {
			com.fasterxml.jackson.databind.introspect.AnnotationMap p_primary_3776_line_91_v2 = primary;
			HashMap<Class<?>, java.lang.annotation.Annotation> q__annotations_111_line_91 = p_primary_3776_line_91_v2._annotations;
			annotation_map_1_expr7_line_91 = q__annotations_111_line_91.isEmpty();
		}
		boolean annotation_map_1_expr3_line_91 = annotation_map_1_expr4_line_91 || annotation_map_1_expr7_line_91;
		int PROBE_END_LINE_91 = 93;
		if (annotation_map_1_expr3_line_91) {
            int PROBE_START_LINE_92 = 92;
			com.fasterxml.jackson.databind.introspect.AnnotationMap p_secondary_3777_line_92 = secondary;
			int PROBE_END_LINE_92 = 92;
			return p_secondary_3777_line_92;
        }
        if (secondary == null || secondary._annotations == null || secondary._annotations.isEmpty()) {
            return primary;
        }
        HashMap<Class<?>,Annotation> annotations = new HashMap<Class<?>,Annotation>();
        // add secondary ones first
        for (Annotation ann : secondary._annotations.values()) {
            annotations.put(ann.annotationType(), ann);
        }
        // to be overridden by primary ones
        for (Annotation ann : primary._annotations.values()) {
            annotations.put(ann.annotationType(), ann);
        }
        return new AnnotationMap(annotations);
    }
    
    @Override
    public int size() {
        return (_annotations == null) ? 0 : _annotations.size();
    }

    /**
     * Method called to add specified annotation in the Map, but
     * only if it didn't yet exist.
     */
    public boolean addIfNotPresent(Annotation ann)
    {
        if (_annotations == null || !_annotations.containsKey(ann.annotationType())) {
            _add(ann);
            return true;
        }
        return false;
    }

    /**
     * Method called to add specified annotation in the Map.
     * 
     * @return True if the addition changed the contents, that is, this map did not
     *   already have specified annotation
     */
    public boolean add(Annotation ann) {
        return _add(ann);
    }

    @Override
    public String toString() {
        if (_annotations == null) {
            return "[null]";
        }
        return _annotations.toString();
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    protected final boolean _add(Annotation ann) {
        if (_annotations == null) {
            _annotations = new HashMap<Class<?>,Annotation>();
        }
        Annotation previous = _annotations.put(ann.annotationType(), ann);
        return (previous == null) || !previous.equals(ann);
    }
}
