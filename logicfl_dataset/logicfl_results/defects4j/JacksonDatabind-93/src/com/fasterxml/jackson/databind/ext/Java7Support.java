package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;

/**
 * To support Java7-incomplete platforms, we will offer support for JDK 7
 * annotations through this class, loaded dynamically; if loading fails,
 * support will be missing. This class is the non-JDK-7-dependent API,
 * and {@link Java7SupportImpl} is JDK7-dependent implementation of
 * functionality.
 */
public abstract class Java7Support
{
    private final static Java7Support IMPL;
    
    static {
        Java7Support impl = null;
        try {
            int PROBE_START_LINE_23 = 23;
			Class<?> java7_support_1_expr1_line_23 = Class
					.forName("com.fasterxml.jackson.databind.ext.Java7SupportImpl");
			int PROBE_END_LINE_23 = 23;
			Class<?> cls = java7_support_1_expr1_line_23;
            int PROBE_START_LINE_24 = 24;
			Class<?> v_cls_2646_line_24 = cls;
			java.lang.Object java7_support_1_expr4_line_24 = v_cls_2646_line_24.newInstance();
			int PROBE_END_LINE_24 = 24;
			impl = (Java7Support) java7_support_1_expr4_line_24;
        } catch (Throwable t) {
            // 24-Nov-2015, tatu: Should we log or not?
            java.util.logging.Logger.getLogger(Java7Support.class.getName())
                .warning("Unable to load JDK7 types (annotations, java.nio.file.Path): no Java7 support added");
        }
        int PROBE_START_LINE_30 = 30;
		com.fasterxml.jackson.databind.ext.Java7Support v_impl_2645_line_30 = impl;
		int PROBE_END_LINE_30 = 30;
		IMPL = v_impl_2645_line_30;
    }

    public static Java7Support instance() {
        int PROBE_START_LINE_34 = 34;
		com.fasterxml.jackson.databind.ext.Java7Support f_impl_2647_line_34 = IMPL;
		int PROBE_END_LINE_34 = 34;
		return f_impl_2647_line_34;
    }
    
    public abstract Boolean findTransient(Annotated a);

    public abstract Boolean hasCreatorAnnotation(Annotated a);

    public abstract PropertyName findConstructorName(AnnotatedParameter p);

    public abstract Class<?> getClassJavaNioFilePath();

    public abstract JsonDeserializer<?> getDeserializerForJavaNioFilePath(Class<?> rawType);

    public abstract JsonSerializer<?> getSerializerForJavaNioFilePath(Class<?> rawType);
}
