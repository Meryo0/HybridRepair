package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.util.ClassUtil;

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
            int PROBE_START_LINE_24 = 24;
			Class<?> java7_support_1_expr1_line_24 = Class
					.forName("com.fasterxml.jackson.databind.ext.Java7SupportImpl");
			int PROBE_END_LINE_24 = 24;
			Class<?> cls = java7_support_1_expr1_line_24;
            int PROBE_START_LINE_25 = 25;
			Class<?> v_cls_3346_line_25 = cls;
			java.lang.Object java7_support_1_expr4_line_25 = ClassUtil.createInstance(v_cls_3346_line_25, false);
			int PROBE_END_LINE_25 = 25;
			impl = (Java7Support) java7_support_1_expr4_line_25;
        } catch (Throwable t) {
            // 24-Nov-2015, tatu: Should we log or not?
            java.util.logging.Logger.getLogger(Java7Support.class.getName())
                .warning("Unable to load JDK7 types (annotations, java.nio.file.Path): no Java7 support added");
        }
        int PROBE_START_LINE_31 = 31;
		com.fasterxml.jackson.databind.ext.Java7Support v_impl_3345_line_31 = impl;
		int PROBE_END_LINE_31 = 31;
		IMPL = v_impl_3345_line_31;
    }

    public static Java7Support instance() {
        int PROBE_START_LINE_35 = 35;
		com.fasterxml.jackson.databind.ext.Java7Support f_impl_3347_line_35 = IMPL;
		int PROBE_END_LINE_35 = 35;
		return f_impl_3347_line_35;
    }
    
    public abstract Boolean findTransient(Annotated a);

    public abstract Boolean hasCreatorAnnotation(Annotated a);

    public abstract PropertyName findConstructorName(AnnotatedParameter p);

    public abstract Class<?> getClassJavaNioFilePath();

    public abstract JsonDeserializer<?> getDeserializerForJavaNioFilePath(Class<?> rawType);

    public abstract JsonSerializer<?> getSerializerForJavaNioFilePath(Class<?> rawType);
}
