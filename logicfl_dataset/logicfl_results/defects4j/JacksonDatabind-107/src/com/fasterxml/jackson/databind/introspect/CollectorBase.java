package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.util.ClassUtil;

// @since 2.9
class CollectorBase
{
    protected final static AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
    protected final static Annotation[] NO_ANNOTATIONS = new Annotation[0];

    protected final AnnotationIntrospector _intr;

    protected CollectorBase(AnnotationIntrospector intr) {
        int PROBE_START_LINE_19 = 19;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_3914_line_19 = intr;
		int PROBE_END_LINE_19 = 19;
		_intr = p_intr_3914_line_19;
    }

    // // // Annotation overrides ("mix over")

    protected final AnnotationCollector collectAnnotations(Annotation[] anns) {
        int PROBE_START_LINE_25 = 25;
		AnnotationCollector collector_base_1_expr4_line_25 = AnnotationCollector.emptyCollector();
		AnnotationCollector c = collector_base_1_expr4_line_25;
        boolean FOR_STMT_TOGGLE_LINE_26 = false;
		int PROBE_END_LINE_25 = 25;
		for (int i = 0, end = 0; true;) {
            int PROBE_START_LINE_27 = 27;
			if (!FOR_STMT_TOGGLE_LINE_26) {
				FOR_STMT_TOGGLE_LINE_26 = true;
				i = 0;
				java.lang.annotation.Annotation[] p_anns_3915_line_26 = anns;
				int q_length_114_line_26 = p_anns_3915_line_26.length;
				end = q_length_114_line_26;
			} else {
				if (FOR_STMT_TOGGLE_LINE_26) {
					++i;
				} else {
					FOR_STMT_TOGGLE_LINE_26 = true;
				}
			}
			int v_i_3917_line_26 = i;
			int v_end_3918_line_26 = end;
			boolean collector_base_1_expr6_line_26 = v_i_3917_line_26 < v_end_3918_line_26;
			if (!(collector_base_1_expr6_line_26)) {
				break;
			}
			int PROBE_END_LINE_27 = 27;
			Annotation ann = anns[i];
            c = c.addOrOverride(ann);
            if (_intr.isAnnotationBundle(ann)) {
                c = collectFromBundle(c, ann);
            }
        }
        int PROBE_START_LINE_33 = 33;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector v_c_3916_line_33 = c;
		int PROBE_END_LINE_33 = 33;
		return v_c_3916_line_33;
    }

    protected final AnnotationCollector collectAnnotations(AnnotationCollector c, Annotation[] anns) {
        int PROBE_START_LINE_36 = 36;
		boolean FOR_STMT_TOGGLE_LINE_37 = false;
		int PROBE_END_LINE_36 = 36;
		for (int i = 0, end = 0; true;) {
            int PROBE_START_LINE_38 = 38;
			if (!FOR_STMT_TOGGLE_LINE_37) {
				FOR_STMT_TOGGLE_LINE_37 = true;
				i = 0;
				java.lang.annotation.Annotation[] p_anns_3920_line_37 = anns;
				int q_length_115_line_37 = p_anns_3920_line_37.length;
				end = q_length_115_line_37;
			} else {
				if (FOR_STMT_TOGGLE_LINE_37) {
					++i;
				} else {
					FOR_STMT_TOGGLE_LINE_37 = true;
				}
			}
			int v_i_3921_line_37 = i;
			int v_end_3922_line_37 = end;
			boolean collector_base_1_expr9_line_37 = v_i_3921_line_37 < v_end_3922_line_37;
			if (!(collector_base_1_expr9_line_37)) {
				break;
			}
			int PROBE_END_LINE_38 = 38;
			Annotation ann = anns[i];
            c = c.addOrOverride(ann);
            if (_intr.isAnnotationBundle(ann)) {
                c = collectFromBundle(c, ann);
            }
        }
        int PROBE_START_LINE_44 = 44;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector p_c_3919_line_44 = c;
		int PROBE_END_LINE_44 = 44;
		return p_c_3919_line_44;
    }

    protected final AnnotationCollector collectFromBundle(AnnotationCollector c, Annotation bundle) {
        Annotation[] anns = ClassUtil.findClassAnnotations(bundle.annotationType());
        for (int i = 0, end = anns.length; i < end; ++i) {
            Annotation ann = anns[i];
            // minor optimization: by-pass 2 common JDK meta-annotations
            if (_ignorableAnnotation(ann)) {
                continue;
            }
            if (_intr.isAnnotationBundle(ann)) {
                // 11-Apr-2017, tatu: Also must guard against recursive definitions...
                if (!c.isPresent(ann)) {
                    c = c.addOrOverride(ann);
                    c = collectFromBundle(c, ann);
                }
            } else {
                c = c.addOrOverride(ann);
            }
        }
        return c;
    }

    // // // Defaulting ("mix under")

    // Variant that only adds annotations that are missing
    protected final AnnotationCollector collectDefaultAnnotations(AnnotationCollector c,
            Annotation[] anns) {
        for (int i = 0, end = anns.length; i < end; ++i) {
            Annotation ann = anns[i];
            if (!c.isPresent(ann)) {
                c = c.addOrOverride(ann);
                if (_intr.isAnnotationBundle(ann)) {
                    c = collectDefaultFromBundle(c, ann);
                }
            }
        }
        return c;
    }

    protected final AnnotationCollector collectDefaultFromBundle(AnnotationCollector c,
            Annotation bundle) {
        Annotation[] anns = ClassUtil.findClassAnnotations(bundle.annotationType());
        for (int i = 0, end = anns.length; i < end; ++i) {
            Annotation ann = anns[i];
            // minor optimization: by-pass 2 common JDK meta-annotations
            if (_ignorableAnnotation(ann)) {
                continue;
            }
            // also only defaulting, not overrides:
            if (!c.isPresent(ann)) {
                c = c.addOrOverride(ann);
                if (_intr.isAnnotationBundle(ann)) {
                    c = collectFromBundle(c, ann);
                }
            }
        }
        return c;
    }
    
    protected final static boolean _ignorableAnnotation(Annotation a) {
        return (a instanceof Target) || (a instanceof Retention);
    }

    static AnnotationMap _emptyAnnotationMap() {
        return new AnnotationMap();
    }

    static AnnotationMap[] _emptyAnnotationMaps(int count) {
        if (count == 0) {
            return NO_ANNOTATION_MAPS;
        }
        AnnotationMap[] maps = new AnnotationMap[count];
        for (int i = 0; i < count; ++i) {
            maps[i] = _emptyAnnotationMap();
        }
        return maps;
    }
}
