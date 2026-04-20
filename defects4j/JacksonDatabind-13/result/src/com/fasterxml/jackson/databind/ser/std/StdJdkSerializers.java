package com.fasterxml.jackson.databind.ser.std;

import java.io.*;
import java.lang.reflect.Type;
import java.util.*;
import java.util.concurrent.atomic.*;

import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.ser.BasicSerializerFactory;
import java.util.Map.Entry;
import java.util.Set;
import java.util.HashMap;

/**
 * Class that providers access to serializers user for non-structured JDK types that
 * are serializer as scalars; some using basic {@link ToStringSerializer},
 * others explicit serializers.
 */
@SuppressWarnings("serial")
public class StdJdkSerializers
{
    /**
     * Method called by {@link BasicSerializerFactory} to access
     * all serializers this class provides.
     */
    public static Collection<Map.Entry<Class<?>, Object>> all()
    {
        HashMap<Class<?>,Object> sers = new HashMap<Class<?>,Object>();

        int PROBE_START_LINE_31 = 31;
		ToStringSerializer q_instance_140_line_31 = ToStringSerializer.instance;
		int PROBE_END_LINE_31 = 31;
		// First things that 'toString()' can handle
        final ToStringSerializer sls = q_instance_140_line_31;

        int PROBE_START_LINE_33 = 33;
		HashMap<Class<?>, Object> v_sers_3766_line_33 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3767_line_33 = sls;
		int PROBE_END_LINE_33 = 33;
		v_sers_3766_line_33.put(java.net.URL.class, v_sls_3767_line_33);
        int PROBE_START_LINE_34 = 34;
		HashMap<Class<?>, Object> v_sers_3766_line_34 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3767_line_34 = sls;
		int PROBE_END_LINE_34 = 34;
		v_sers_3766_line_34.put(java.net.URI.class, v_sls_3767_line_34);

        int PROBE_START_LINE_36 = 36;
		HashMap<Class<?>, Object> v_sers_3766_line_36 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3767_line_36 = sls;
		int PROBE_END_LINE_36 = 36;
		v_sers_3766_line_36.put(Currency.class, v_sls_3767_line_36);
        int PROBE_START_LINE_37 = 37;
		HashMap<Class<?>, Object> v_sers_3766_line_37 = sers;
		int PROBE_END_LINE_37 = 37;
		v_sers_3766_line_37.put(UUID.class, new UUIDSerializer());
        int PROBE_START_LINE_38 = 38;
		HashMap<Class<?>, Object> v_sers_3766_line_38 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3767_line_38 = sls;
		int PROBE_END_LINE_38 = 38;
		v_sers_3766_line_38.put(java.util.regex.Pattern.class, v_sls_3767_line_38);
        int PROBE_START_LINE_39 = 39;
		HashMap<Class<?>, Object> v_sers_3766_line_39 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3767_line_39 = sls;
		int PROBE_END_LINE_39 = 39;
		v_sers_3766_line_39.put(Locale.class, v_sls_3767_line_39);

        int PROBE_START_LINE_42 = 42;
		HashMap<Class<?>, Object> v_sers_3766_line_42 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_3767_line_42 = sls;
		int PROBE_END_LINE_42 = 42;
		// starting with 1.7, use compact String for Locale
        v_sers_3766_line_42.put(Locale.class, v_sls_3767_line_42);
        
        int PROBE_START_LINE_45 = 45;
		HashMap<Class<?>, Object> v_sers_3766_line_45 = sers;
		int PROBE_END_LINE_45 = 45;
		// then atomic types
        v_sers_3766_line_45.put(AtomicReference.class, AtomicReferenceSerializer.class);
        int PROBE_START_LINE_46 = 46;
		HashMap<Class<?>, Object> v_sers_3766_line_46 = sers;
		int PROBE_END_LINE_46 = 46;
		v_sers_3766_line_46.put(AtomicBoolean.class, AtomicBooleanSerializer.class);
        int PROBE_START_LINE_47 = 47;
		HashMap<Class<?>, Object> v_sers_3766_line_47 = sers;
		int PROBE_END_LINE_47 = 47;
		v_sers_3766_line_47.put(AtomicInteger.class, AtomicIntegerSerializer.class);
        int PROBE_START_LINE_48 = 48;
		HashMap<Class<?>, Object> v_sers_3766_line_48 = sers;
		int PROBE_END_LINE_48 = 48;
		v_sers_3766_line_48.put(AtomicLong.class, AtomicLongSerializer.class);
        
        int PROBE_START_LINE_51 = 51;
		HashMap<Class<?>, Object> v_sers_3766_line_51 = sers;
		int PROBE_END_LINE_51 = 51;
		// then other types that need specialized serializers
        v_sers_3766_line_51.put(File.class, FileSerializer.class);
        int PROBE_START_LINE_52 = 52;
		HashMap<Class<?>, Object> v_sers_3766_line_52 = sers;
		int PROBE_END_LINE_52 = 52;
		v_sers_3766_line_52.put(Class.class, ClassSerializer.class);

        int PROBE_START_LINE_55 = 55;
		HashMap<Class<?>, Object> v_sers_3766_line_55 = sers;
		com.fasterxml.jackson.databind.ser.std.NullSerializer q_instance_140_line_55 = NullSerializer.instance;
		int PROBE_END_LINE_55 = 55;
		// And then some stranger types... not 100% they are needed but:
        v_sers_3766_line_55.put(Void.class, q_instance_140_line_55);
        int PROBE_START_LINE_56 = 56;
		HashMap<Class<?>, Object> v_sers_3766_line_56 = sers;
		Class<Void> q_type_140_line_56 = Void.TYPE;
		com.fasterxml.jackson.databind.ser.std.NullSerializer q_instance_140_line_56 = NullSerializer.instance;
		int PROBE_END_LINE_56 = 56;
		v_sers_3766_line_56.put(q_type_140_line_56, q_instance_140_line_56);

        int PROBE_START_LINE_58 = 58;
		HashMap<Class<?>, Object> v_sers_3766_line_58 = sers;
		Set<java.util.Map.Entry<Class<?>, Object>> std_jdk_serializers_1_expr38_line_58 = v_sers_3766_line_58
				.entrySet();
		int PROBE_END_LINE_58 = 58;
		return std_jdk_serializers_1_expr38_line_58;
    }

    /*
    /**********************************************************
    /* Serializers for atomic types
    /**********************************************************
     */

    public static class AtomicBooleanSerializer
        extends StdScalarSerializer<AtomicBoolean>
    {
        public AtomicBooleanSerializer() { super(AtomicBoolean.class, false); }
    
        @Override
        public void serialize(AtomicBoolean value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            jgen.writeBoolean(value.get());
        }
    
        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode("boolean", true);
        }
        
        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor, JavaType typeHint) throws JsonMappingException {
            visitor.expectBooleanFormat(typeHint);
        }
    }
    
    public static class AtomicIntegerSerializer
        extends StdScalarSerializer<AtomicInteger>
    {
        public AtomicIntegerSerializer() { super(AtomicInteger.class, false); }
    
        @Override
        public void serialize(AtomicInteger value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            jgen.writeNumber(value.get());
        }
    
        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode("integer", true);
        }
        
        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor, JavaType typeHint) throws JsonMappingException
        {
            JsonIntegerFormatVisitor v2 = visitor.expectIntegerFormat(typeHint);
            if (v2 != null) {
                v2.numberType(JsonParser.NumberType.INT);
            }
        }
    }

    public static class AtomicLongSerializer
        extends StdScalarSerializer<AtomicLong>
    {
        public AtomicLongSerializer() { super(AtomicLong.class, false); }
    
        @Override
        public void serialize(AtomicLong value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            jgen.writeNumber(value.get());
        }
    
        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode("integer", true);
        }
        
        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor, JavaType typeHint)
                throws JsonMappingException
        {
            JsonIntegerFormatVisitor v2 = visitor.expectIntegerFormat(typeHint);
            if (v2 != null) {
                v2.numberType(JsonParser.NumberType.LONG);
            }
        }
    }

    public static class AtomicReferenceSerializer
        extends StdSerializer<AtomicReference<?>>
    {
        public AtomicReferenceSerializer() { super(AtomicReference.class, false); }

        @Override
        public void serialize(AtomicReference<?> value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            provider.defaultSerializeValue(value.get(), jgen);
        }

        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode("any", true);
        }
        
        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor, JavaType typeHint)
                throws JsonMappingException
        {
            visitor.expectAnyFormat(typeHint);
        }
    }
}
