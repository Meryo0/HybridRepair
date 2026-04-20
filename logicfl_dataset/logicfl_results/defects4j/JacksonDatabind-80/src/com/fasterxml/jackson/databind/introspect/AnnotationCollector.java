package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import com.fasterxml.jackson.databind.util.Annotations;
import java.util.Map.Entry;
import java.util.Set;

/**
 * Helper class used to collect annotations to be stored as
 * {@link com.fasterxml.jackson.databind.util.Annotations} (like {@link AnnotationMap}).
 *
 * @since 2.9
 */
public abstract class AnnotationCollector
{
    protected final static Annotations NO_ANNOTATIONS = new NoAnnotations();

    /**
     * Optional data to carry along
     */
    protected final Object _data;

    protected AnnotationCollector(Object d) {
        int PROBE_START_LINE_26 = 26;
		Object p_d_1814_line_26 = d;
		int PROBE_END_LINE_26 = 26;
		_data = p_d_1814_line_26;
    }

    public static Annotations emptyAnnotations() { int PROBE_START_LINE_29 = 29;
		com.fasterxml.jackson.databind.util.Annotations f_no_annotations_1813_line_29 = NO_ANNOTATIONS;
		int PROBE_END_LINE_29 = 29;
	return f_no_annotations_1813_line_29; }

    public static AnnotationCollector emptyCollector() {
        int PROBE_START_LINE_32 = 32;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector.EmptyCollector q_instance_8_line_32 = EmptyCollector.instance;
		int PROBE_END_LINE_32 = 32;
		return q_instance_8_line_32;
    }

    public static AnnotationCollector emptyCollector(Object data) {
        return new EmptyCollector(data);
    }

    public abstract Annotations asAnnotations();
    public abstract AnnotationMap asAnnotationMap();

    public Object getData() {
        return _data;
    }

    /*
    /**********************************************************
    /* API
    /**********************************************************
     */

    public abstract boolean isPresent(Annotation ann);

    public abstract AnnotationCollector addOrOverride(Annotation ann);

    /*
    /**********************************************************
    /* Collector implementations
    /**********************************************************
     */

    static class EmptyCollector extends AnnotationCollector
    {
        public final static EmptyCollector instance = new EmptyCollector(null);

        EmptyCollector(Object data) { super(data); }

        @Override
        public Annotations asAnnotations() {
            int PROBE_START_LINE_70 = 70;
			com.fasterxml.jackson.databind.util.Annotations f_no_annotations_1813_line_70 = NO_ANNOTATIONS;
			int PROBE_END_LINE_70 = 70;
			return f_no_annotations_1813_line_70;
        }
 
        @Override
        public AnnotationMap asAnnotationMap() {
            return new AnnotationMap();
        }

        @Override
        public boolean isPresent(Annotation ann) { return false; }

        @Override
        public AnnotationCollector addOrOverride(Annotation ann) {
            int PROBE_START_LINE_83 = 83;
			Object f__data_1815_line_83 = _data;
			java.lang.annotation.Annotation p_ann_1822_line_83 = ann;
			Class<? extends java.lang.annotation.Annotation> annotation_collector_1_expr6_line_83 = p_ann_1822_line_83
					.annotationType();
			java.lang.annotation.Annotation p_ann_1822_line_83_v1 = ann;
			int PROBE_END_LINE_83 = 83;
			return new OneCollector(f__data_1815_line_83, annotation_collector_1_expr6_line_83, p_ann_1822_line_83_v1);
        }
    }

    static class OneCollector extends AnnotationCollector
    {
        private Class<?> _type;
        private Annotation _value;

        public OneCollector(Object data,
                Class<?> type, Annotation value) {
            super(data);
            int PROBE_START_LINE_95 = 95;
			Class<?> p_type_1824_line_95 = type;
			int PROBE_END_LINE_95 = 95;
			_type = p_type_1824_line_95;
            int PROBE_START_LINE_96 = 96;
			java.lang.annotation.Annotation p_value_1825_line_96 = value;
			int PROBE_END_LINE_96 = 96;
			_value = p_value_1825_line_96;
        }

        @Override
        public Annotations asAnnotations() {
            int PROBE_START_LINE_101 = 101;
			Class<?> f__type_1826_line_101 = _type;
			java.lang.annotation.Annotation f__value_1827_line_101 = _value;
			int PROBE_END_LINE_101 = 101;
			return new OneAnnotation(f__type_1826_line_101, f__value_1827_line_101);
        }

        @Override
        public AnnotationMap asAnnotationMap() {
            return AnnotationMap.of(_type, _value);
        }

        @Override
        public boolean isPresent(Annotation ann) {
            int PROBE_START_LINE_111 = 111;
			java.lang.annotation.Annotation p_ann_1828_line_111 = ann;
			Class<? extends java.lang.annotation.Annotation> annotation_collector_1_expr12_line_111 = p_ann_1828_line_111
					.annotationType();
			Class<?> f__type_1826_line_111 = _type;
			boolean annotation_collector_1_expr11_line_111 = annotation_collector_1_expr12_line_111 == f__type_1826_line_111;
			int PROBE_END_LINE_111 = 111;
			return annotation_collector_1_expr11_line_111;
        }
        
        @Override
        public AnnotationCollector addOrOverride(Annotation ann) {
            int PROBE_START_LINE_116 = 116;
			java.lang.annotation.Annotation p_ann_1829_line_116 = ann;
			Class<?> annotation_collector_1_expr13_line_116 = p_ann_1829_line_116.annotationType();
			int PROBE_END_LINE_116 = 116;
			final Class<?> type = annotation_collector_1_expr13_line_116;
            int PROBE_START_LINE_118 = 121;
			Class<?> f__type_1826_line_118 = _type;
			Class<?> v_type_1830_line_118 = type;
			boolean annotation_collector_1_expr14_line_118 = f__type_1826_line_118 == v_type_1830_line_118;
			int PROBE_END_LINE_118 = 121;
			// true override? Just replace in-place, return
            if (annotation_collector_1_expr14_line_118) {
                _value = ann;
                return this;
            }
            int PROBE_START_LINE_122 = 122;
			Object f__data_1815_line_122 = _data;
			Class<?> f__type_1826_line_122 = _type;
			java.lang.annotation.Annotation f__value_1827_line_122 = _value;
			Class<?> v_type_1830_line_122 = type;
			java.lang.annotation.Annotation p_ann_1829_line_122 = ann;
			int PROBE_END_LINE_122 = 122;
			return new NCollector(f__data_1815_line_122, f__type_1826_line_122, f__value_1827_line_122, v_type_1830_line_122, p_ann_1829_line_122);
        }
    }

    static class NCollector extends AnnotationCollector
    {
        protected final HashMap<Class<?>,Annotation> _annotations;

        public NCollector(Object data,
                Class<?> type1, Annotation value1,
                Class<?> type2, Annotation value2) {
            super(data);
            _annotations = new HashMap<>();
            int PROBE_START_LINE_135 = 135;
			HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_1836_line_135 = _annotations;
			Class<?> p_type_1_1832_line_135 = type1;
			java.lang.annotation.Annotation p_value_1_1833_line_135 = value1;
			int PROBE_END_LINE_135 = 135;
			f__annotations_1836_line_135.put(p_type_1_1832_line_135, p_value_1_1833_line_135);
            int PROBE_START_LINE_136 = 136;
			HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_1836_line_136 = _annotations;
			Class<?> p_type_2_1834_line_136 = type2;
			java.lang.annotation.Annotation p_value_2_1835_line_136 = value2;
			int PROBE_END_LINE_136 = 136;
			f__annotations_1836_line_136.put(p_type_2_1834_line_136, p_value_2_1835_line_136);
        }

        @Override
        public Annotations asAnnotations() {
            int PROBE_START_LINE_141 = 146;
			HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_1836_line_141 = _annotations;
			int annotation_collector_1_expr22_line_141 = f__annotations_1836_line_141.size();
			boolean annotation_collector_1_expr21_line_141 = annotation_collector_1_expr22_line_141 == 2;
			int PROBE_END_LINE_141 = 146;
			if (annotation_collector_1_expr21_line_141) {
                int PROBE_START_LINE_142 = 142;
				HashMap<Class<?>, java.lang.annotation.Annotation> f__annotations_1836_line_142 = _annotations;
				Set<java.util.Map.Entry<Class<?>, java.lang.annotation.Annotation>> annotation_collector_1_expr24_line_142 = f__annotations_1836_line_142
						.entrySet();
				Iterator<Map.Entry<Class<?>, Annotation>> annotation_collector_1_expr23_line_142 = annotation_collector_1_expr24_line_142
						.iterator();
				int PROBE_END_LINE_142 = 142;
				Iterator<Map.Entry<Class<?>,Annotation>> it = annotation_collector_1_expr23_line_142;
                int PROBE_START_LINE_143 = 143;
				Iterator<java.util.Map.Entry<Class<?>, java.lang.annotation.Annotation>> v_it_1837_line_143 = it;
				Map.Entry<Class<?>, Annotation> annotation_collector_1_expr25_line_143 = v_it_1837_line_143.next();
				Iterator<java.util.Map.Entry<Class<?>, java.lang.annotation.Annotation>> v_it_1837_line_143_v1 = it;
				Map.Entry<Class<?>, Annotation> annotation_collector_1_expr26_line_143 = v_it_1837_line_143_v1.next();
				int PROBE_END_LINE_143 = 143;
				Map.Entry<Class<?>,Annotation> en1 = annotation_collector_1_expr25_line_143, en2 = annotation_collector_1_expr26_line_143;
                int PROBE_START_LINE_144 = 145;
				java.util.Map.Entry<Class<?>, java.lang.annotation.Annotation> v_en_1_1838_line_144 = en1;
				Class<?> annotation_collector_1_expr28_line_144 = v_en_1_1838_line_144.getKey();
				java.util.Map.Entry<Class<?>, java.lang.annotation.Annotation> v_en_1_1838_line_144_v1 = en1;
				java.lang.annotation.Annotation annotation_collector_1_expr29_line_144 = v_en_1_1838_line_144_v1
						.getValue();
				int PROBE_END_LINE_144 = 145;
				return new TwoAnnotations(annotation_collector_1_expr28_line_144, annotation_collector_1_expr29_line_144,
                        en2.getKey(), en2.getValue());
            }
            return new AnnotationMap(_annotations);
        }

        @Override
        public AnnotationMap asAnnotationMap() {
            AnnotationMap result = new AnnotationMap();
            for (Annotation ann : _annotations.values()) {
                result.add(ann);
            }
            return result;
        }

        @Override
        public boolean isPresent(Annotation ann) {
            return _annotations.containsKey(ann.annotationType());
        }

        @Override
        public AnnotationCollector addOrOverride(Annotation ann) {
            _annotations.put(ann.annotationType(), ann);
            return this;
        }
    }

    /*
    /**********************************************************
    /* Annotations implementations
    /**********************************************************
     */

    /**
     * Immutable implementation for case where no annotations are associated with
     * an annotatable entity.
     *
     * @since 2.9
     */
    public static class NoAnnotations
        implements Annotations, java.io.Serializable
    {
        private static final long serialVersionUID = 1L;

        NoAnnotations() { }

        @Override
        public <A extends Annotation> A get(Class<A> cls) {
            return null;
        }

        @Override
        public boolean has(Class<?> cls) {
            return false;
        }

        @Override
        public boolean hasOneOf(Class<? extends Annotation>[] annoClasses) {
            return false;
        }

        @Override
        public int size() {
            return 0;
        }
    }

    public static class OneAnnotation
        implements Annotations, java.io.Serializable
    {
        private static final long serialVersionUID = 1L;

        private final Class<?> _type;
        private final Annotation _value;

        public OneAnnotation(Class<?> type, Annotation value) {
            int PROBE_START_LINE_220 = 220;
			Class<?> p_type_1845_line_220 = type;
			int PROBE_END_LINE_220 = 220;
			_type = p_type_1845_line_220;
            int PROBE_START_LINE_221 = 221;
			java.lang.annotation.Annotation p_value_1846_line_221 = value;
			int PROBE_END_LINE_221 = 221;
			_value = p_value_1846_line_221;
        }

        @SuppressWarnings("unchecked")
        @Override
        public <A extends Annotation> A get(Class<A> cls) {
            int PROBE_START_LINE_227 = 229;
			Class<?> f__type_1847_line_227 = _type;
			Class<A> p_cls_1849_line_227 = cls;
			boolean annotation_collector_1_expr34_line_227 = f__type_1847_line_227 == p_cls_1849_line_227;
			int PROBE_END_LINE_227 = 229;
			if (annotation_collector_1_expr34_line_227) {
                int PROBE_START_LINE_228 = 228;
				java.lang.annotation.Annotation f__value_1848_line_228 = _value;
				int PROBE_END_LINE_228 = 228;
				return (A) f__value_1848_line_228;
            }
            return null;
        }

        @Override
        public boolean has(Class<?> cls) {
            return (_type == cls);
        }

        @Override
        public boolean hasOneOf(Class<? extends Annotation>[] annoClasses) {
            for (Class<?> cls : annoClasses) {
                if (cls == _type) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public int size() {
            return 1;
        }
    }

    public static class TwoAnnotations
        implements Annotations, java.io.Serializable
    {
        private static final long serialVersionUID = 1L;
    
        private final Class<?> _type1, _type2;
        private final Annotation _value1, _value2;
    
        public TwoAnnotations(Class<?> type1, Annotation value1,
                Class<?> type2, Annotation value2) {
            int PROBE_START_LINE_264 = 264;
					Class<?> p_type_1_1852_line_264 = type1;
					int PROBE_END_LINE_264 = 264;
			_type1 = p_type_1_1852_line_264;
            int PROBE_START_LINE_265 = 265;
			java.lang.annotation.Annotation p_value_1_1853_line_265 = value1;
			int PROBE_END_LINE_265 = 265;
			_value1 = p_value_1_1853_line_265;
            int PROBE_START_LINE_266 = 266;
			Class<?> p_type_2_1854_line_266 = type2;
			int PROBE_END_LINE_266 = 266;
			_type2 = p_type_2_1854_line_266;
            int PROBE_START_LINE_267 = 267;
			java.lang.annotation.Annotation p_value_2_1855_line_267 = value2;
			int PROBE_END_LINE_267 = 267;
			_value2 = p_value_2_1855_line_267;
        }

        @SuppressWarnings("unchecked")
        @Override
        public <A extends Annotation> A get(Class<A> cls) {
            int PROBE_START_LINE_273 = 275;
			Class<?> f__type_1_1856_line_273 = _type1;
			Class<A> p_cls_1860_line_273 = cls;
			boolean annotation_collector_1_expr40_line_273 = f__type_1_1856_line_273 == p_cls_1860_line_273;
			int PROBE_END_LINE_273 = 275;
			if (annotation_collector_1_expr40_line_273) {
                int PROBE_START_LINE_274 = 274;
				java.lang.annotation.Annotation f__value_1_1857_line_274 = _value1;
				int PROBE_END_LINE_274 = 274;
				return (A) f__value_1_1857_line_274;
            }
            int PROBE_START_LINE_276 = 278;
			Class<?> f__type_2_1858_line_276 = _type2;
			Class<A> p_cls_1860_line_276 = cls;
			boolean annotation_collector_1_expr42_line_276 = f__type_2_1858_line_276 == p_cls_1860_line_276;
			int PROBE_END_LINE_276 = 278;
			if (annotation_collector_1_expr42_line_276) {
                return (A) _value2;
            }
            return null;
        }

        @Override
        public boolean has(Class<?> cls) {
            return (_type1 == cls) || (_type2 == cls);
        }

        @Override
        public boolean hasOneOf(Class<? extends Annotation>[] annoClasses) {
            for (Class<?> cls : annoClasses) {
                if ((cls == _type1) || (cls == _type2)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public int size() {
            return 2;
        }
    }
}
