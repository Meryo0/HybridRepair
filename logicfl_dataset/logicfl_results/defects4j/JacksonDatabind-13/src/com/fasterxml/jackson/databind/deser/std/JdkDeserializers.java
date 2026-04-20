package com.fasterxml.jackson.databind.deser.std;

import java.nio.ByteBuffer;
import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;

import com.fasterxml.jackson.databind.*;
import java.util.HashSet;

/**
 * Container class that contains serializers for JDK types that
 * require special handling for some reason.
 */
public class JdkDeserializers
{
    private final static HashSet<String> _classNames = new HashSet<String>();
    static {
        // note: can skip primitive types; other ways to check them:
        Class<?>[] types = new Class<?>[] {
                UUID.class,
                AtomicBoolean.class,
                StackTraceElement.class,
                ByteBuffer.class
        };
        int PROBE_START_LINE_24 = 24;
		Class<?>[] v_types_2294_line_24 = types;
		for (Class<?> cls : v_types_2294_line_24) { HashSet<String> f__class_names_2293_line_24 = _classNames;
			Class<?> v_cls_2295_line_24 = cls;
			String jdk_deserializers_1_expr5_line_24 = v_cls_2295_line_24.getName();
			int PROBE_END_LINE_24 = 24;
		f__class_names_2293_line_24.add(jdk_deserializers_1_expr5_line_24); }
        int PROBE_START_LINE_25 = 25;
		Class<?>[] jdk_deserializers_1_expr6_line_25 = FromStringDeserializer.types();
		for (Class<?> cls : jdk_deserializers_1_expr6_line_25) { HashSet<String> f__class_names_2293_line_25 = _classNames;
			Class<?> v_cls_2296_line_25 = cls;
			String jdk_deserializers_1_expr8_line_25 = v_cls_2296_line_25.getName();
			int PROBE_END_LINE_25 = 25;
		f__class_names_2293_line_25.add(jdk_deserializers_1_expr8_line_25); }
    }

    public static JsonDeserializer<?> find(Class<?> rawType, String clsName)
    {
        int PROBE_START_LINE_30 = 48;
		HashSet<String> f__class_names_2293_line_30 = _classNames;
		String p_cls_name_2298_line_30 = clsName;
		boolean jdk_deserializers_1_expr9_line_30 = f__class_names_2293_line_30.contains(p_cls_name_2298_line_30);
		int PROBE_END_LINE_30 = 48;
		if (jdk_deserializers_1_expr9_line_30) {
            JsonDeserializer<?> d = FromStringDeserializer.findDeserializer(rawType);
            if (d != null) {
                return d;
            }
            if (rawType == UUID.class) {
                return new UUIDDeserializer();
            }
            if (rawType == StackTraceElement.class) {
                return new StackTraceElementDeserializer();
            }
            if (rawType == AtomicBoolean.class) {
                // (note: AtomicInteger/Long work due to single-arg constructor. For now?
                return new AtomicBooleanDeserializer();
            }
            if (rawType == ByteBuffer.class) {
                return new ByteBufferDeserializer();
            }
        }
        return null;
    }
}
