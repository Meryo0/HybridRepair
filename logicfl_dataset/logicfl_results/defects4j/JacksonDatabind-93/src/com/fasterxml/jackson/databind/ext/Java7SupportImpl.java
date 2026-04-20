package com.fasterxml.jackson.databind.ext;

import java.beans.ConstructorProperties;
import java.beans.Transient;
import java.nio.file.Path;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;

/**
 * @since 2.8
 */
public class Java7SupportImpl extends Java7Support
{
    @SuppressWarnings("unused") // compiler warns, just needed side-effects
    private final Class<?> _bogus;

    public Java7SupportImpl() {
        // Trigger loading of annotations that only JDK 7 has...
        Class<?> cls = Transient.class;
        cls = ConstructorProperties.class;
        int PROBE_START_LINE_26 = 26;
		Class<?> v_cls_2653_line_26 = cls;
		int PROBE_END_LINE_26 = 26;
		_bogus = v_cls_2653_line_26;
    }

    @Override
    public Class<?> getClassJavaNioFilePath() {
        return Path.class;
    }

    @Override
    public JsonDeserializer<?> getDeserializerForJavaNioFilePath(Class<?> rawType) {
        int PROBE_START_LINE_36 = 38;
		Class<?> p_raw_type_2655_line_36 = rawType;
		boolean java7_support_impl_1_expr5_line_36 = p_raw_type_2655_line_36 == Path.class;
		int PROBE_END_LINE_36 = 38;
		if (java7_support_impl_1_expr5_line_36) {
            return new NioPathDeserializer();
        }
        return null;
    }

    @Override
    public JsonSerializer<?> getSerializerForJavaNioFilePath(Class<?> rawType) {
        if (Path.class.isAssignableFrom(rawType)) {
            return new NioPathSerializer();
        }
        return null;
    }

    @Override
    public Boolean findTransient(Annotated a) {
        int PROBE_START_LINE_52 = 52;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2657_line_52 = a;
		Transient java7_support_impl_1_expr7_line_52 = p_a_2657_line_52.getAnnotation(Transient.class);
		int PROBE_END_LINE_52 = 52;
		Transient t = java7_support_impl_1_expr7_line_52;
        int PROBE_START_LINE_53 = 55;
		java.beans.Transient v_t_2658_line_53 = t;
		boolean java7_support_impl_1_expr9_line_53 = v_t_2658_line_53 != null;
		int PROBE_END_LINE_53 = 55;
		if (java7_support_impl_1_expr9_line_53) {
            return t.value();
        }
        return null;
    }

    @Override
    public Boolean hasCreatorAnnotation(Annotated a) {
        int PROBE_START_LINE_61 = 61;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2659_line_61 = a;
		ConstructorProperties java7_support_impl_1_expr10_line_61 = p_a_2659_line_61
				.getAnnotation(ConstructorProperties.class);
		int PROBE_END_LINE_61 = 61;
		ConstructorProperties props = java7_support_impl_1_expr10_line_61;
        int PROBE_START_LINE_64 = 66;
		java.beans.ConstructorProperties v_props_2660_line_64 = props;
		boolean java7_support_impl_1_expr12_line_64 = v_props_2660_line_64 != null;
		int PROBE_END_LINE_64 = 66;
		// 08-Nov-2015, tatu: One possible check would be to ensure there is at least
        //    one name iff constructor has arguments. But seems unnecessary for now.
        if (java7_support_impl_1_expr12_line_64) {
            return Boolean.TRUE;
        }
        return null;
    }

    @Override
    public PropertyName findConstructorName(AnnotatedParameter p)
    {
        AnnotatedWithParams ctor = p.getOwner();
        if (ctor != null) {
            ConstructorProperties props = ctor.getAnnotation(ConstructorProperties.class);
            if (props != null) {
                String[] names = props.value();
                int ix = p.getIndex();
                if (ix < names.length) {
                    return PropertyName.construct(names[ix]);
                }
            }
        }
        return null;
    }
}
