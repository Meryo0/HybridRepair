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
    protected HashMap<Class<? extends Annotation>,Annotation> _annotations;

    public AnnotationMap() { }
    
    private AnnotationMap(HashMap<Class<? extends Annotation>,Annotation> a) {
        _annotations = a;
    }

    @SuppressWarnings("unchecked")
    @Override
    public <A extends Annotation> A get(Class<A> cls)
    {
        int PROBE_START_LINE_28 = 30;
		HashMap<Class<? extends java.lang.annotation.Annotation>, java.lang.annotation.Annotation> f__annotations_2730_line_28 = _annotations;
		boolean annotation_map_1_expr1_line_28 = f__annotations_2730_line_28 == null;
		int PROBE_END_LINE_28 = 30;
		if (annotation_map_1_expr1_line_28) {
            return null;
        }
        int PROBE_START_LINE_31 = 31;
		HashMap<Class<? extends java.lang.annotation.Annotation>, java.lang.annotation.Annotation> f__annotations_2730_line_31 = _annotations;
		Class<A> p_cls_2729_line_31 = cls;
		java.lang.annotation.Annotation annotation_map_1_expr3_line_31 = f__annotations_2730_line_31
				.get(p_cls_2729_line_31);
		int PROBE_END_LINE_31 = 31;
		return (A) annotation_map_1_expr3_line_31;
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
        HashMap<Class<? extends Annotation>,Annotation> annotations
            = new HashMap<Class<? extends Annotation>,Annotation>();
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
        int PROBE_START_LINE_76 = 79;
		HashMap<Class<? extends java.lang.annotation.Annotation>, java.lang.annotation.Annotation> f__annotations_2730_line_76 = _annotations;
		boolean annotation_map_1_expr5_line_76 = f__annotations_2730_line_76 == null;
		boolean annotation_map_1_expr6_line_76 = false;
		if (!annotation_map_1_expr5_line_76) {
			HashMap<Class<? extends java.lang.annotation.Annotation>, java.lang.annotation.Annotation> f__annotations_2730_line_76_v1 = _annotations;
			java.lang.annotation.Annotation p_ann_2733_line_76 = ann;
			Class<? extends java.lang.annotation.Annotation> annotation_map_1_expr8_line_76 = p_ann_2733_line_76
					.annotationType();
			boolean annotation_map_1_expr7_line_76 = f__annotations_2730_line_76_v1
					.containsKey(annotation_map_1_expr8_line_76);
			annotation_map_1_expr6_line_76 = !annotation_map_1_expr7_line_76;
		}
		boolean annotation_map_1_expr4_line_76 = annotation_map_1_expr5_line_76 || annotation_map_1_expr6_line_76;
		int PROBE_END_LINE_76 = 79;
		if (annotation_map_1_expr4_line_76) {
            int PROBE_START_LINE_77 = 77;
			java.lang.annotation.Annotation p_ann_2733_line_77 = ann;
			int PROBE_END_LINE_77 = 77;
			_add(p_ann_2733_line_77);
            return true;
        }
        return false;
    }

    /**
     * Method called to add specified annotation in the Map.
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
        int PROBE_START_LINE_105 = 107;
		HashMap<Class<? extends java.lang.annotation.Annotation>, java.lang.annotation.Annotation> f__annotations_2730_line_105 = _annotations;
		boolean annotation_map_1_expr10_line_105 = f__annotations_2730_line_105 == null;
		int PROBE_END_LINE_105 = 107;
		if (annotation_map_1_expr10_line_105) {
            _annotations = new HashMap<Class<? extends Annotation>,Annotation>();
        }
        int PROBE_START_LINE_108 = 108;
		HashMap<Class<? extends java.lang.annotation.Annotation>, java.lang.annotation.Annotation> f__annotations_2730_line_108 = _annotations;
		java.lang.annotation.Annotation p_ann_2735_line_108 = ann;
		Class<? extends java.lang.annotation.Annotation> annotation_map_1_expr14_line_108 = p_ann_2735_line_108
				.annotationType();
		java.lang.annotation.Annotation p_ann_2735_line_108_v1 = ann;
		Annotation annotation_map_1_expr13_line_108 = f__annotations_2730_line_108.put(annotation_map_1_expr14_line_108,
				p_ann_2735_line_108_v1);
		int PROBE_END_LINE_108 = 108;
		Annotation previous = annotation_map_1_expr13_line_108;
        int PROBE_START_LINE_109 = 109;
		java.lang.annotation.Annotation v_previous_2736_line_109 = previous;
		boolean annotation_map_1_expr17_line_109 = v_previous_2736_line_109 != null;
		boolean annotation_map_1_expr16_line_109 = (annotation_map_1_expr17_line_109);
		boolean annotation_map_1_expr18_line_109 = true;
		if (annotation_map_1_expr16_line_109) {
			java.lang.annotation.Annotation v_previous_2736_line_109_v1 = previous;
			java.lang.annotation.Annotation p_ann_2735_line_109 = ann;
			annotation_map_1_expr18_line_109 = v_previous_2736_line_109_v1.equals(p_ann_2735_line_109);
		}
		boolean annotation_map_1_expr15_line_109 = annotation_map_1_expr16_line_109 && annotation_map_1_expr18_line_109;
		int PROBE_END_LINE_109 = 109;
		return annotation_map_1_expr15_line_109;
    }
}


