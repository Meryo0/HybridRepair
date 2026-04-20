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
    
    private AnnotationMap(HashMap<Class<?>,Annotation> a) {
        _annotations = a;
    }

    @SuppressWarnings("unchecked")
    @Override
    public <A extends Annotation> A get(Class<A> cls)
    {
        int PROBE_START_LINE_28 = 30;
		HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_2946_line_28 = _annotations;
		boolean annotation_map_1_expr1_line_28 = f__annotations_2946_line_28 == null;
		int PROBE_END_LINE_28 = 30;
		if (annotation_map_1_expr1_line_28) {
            return null;
        }
        return (A) _annotations.get(cls);
    }

    public boolean has(Class<?> cls)
    {
        int PROBE_START_LINE_36 = 38;
		HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_2946_line_36 = _annotations;
		boolean annotation_map_1_expr2_line_36 = f__annotations_2946_line_36 == null;
		int PROBE_END_LINE_36 = 38;
		if (annotation_map_1_expr2_line_36) {
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
    public boolean hasOneOf(Class<? extends Annotation>[] annoClasses) {
        int PROBE_START_LINE_49 = 55;
		HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_2946_line_49 = _annotations;
		boolean annotation_map_1_expr3_line_49 = f__annotations_2946_line_49 != null;
		int PROBE_END_LINE_49 = 55;
		if (annotation_map_1_expr3_line_49) {
            for (int i = 0, end = annoClasses.length; i < end; ++i) {
                if (_annotations.containsKey(annoClasses[i])) {
                    return true;
                }
            }
        }
        return false;
    }

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
        if (primary == null || primary._annotations == null || primary._annotations.isEmpty()) {
            return secondary;
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
