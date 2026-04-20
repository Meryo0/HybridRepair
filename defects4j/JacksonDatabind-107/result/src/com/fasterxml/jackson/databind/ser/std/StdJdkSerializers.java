package com.fasterxml.jackson.databind.ser.std;

import java.io.*;
import java.lang.reflect.Type;
import java.util.*;
import java.util.concurrent.atomic.*;

import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
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

        int PROBE_START_LINE_30 = 30;
		HashMap<Class<?>, Object> v_sers_5178_line_30 = sers;
		int PROBE_END_LINE_30 = 30;
		// First things that 'toString()' can handle
        v_sers_5178_line_30.put(java.net.URL.class, new ToStringSerializer(java.net.URL.class));
        int PROBE_START_LINE_31 = 31;
		HashMap<Class<?>, Object> v_sers_5178_line_31 = sers;
		int PROBE_END_LINE_31 = 31;
		v_sers_5178_line_31.put(java.net.URI.class, new ToStringSerializer(java.net.URI.class));

        int PROBE_START_LINE_33 = 33;
		HashMap<Class<?>, Object> v_sers_5178_line_33 = sers;
		int PROBE_END_LINE_33 = 33;
		v_sers_5178_line_33.put(Currency.class, new ToStringSerializer(Currency.class));
        int PROBE_START_LINE_34 = 34;
		HashMap<Class<?>, Object> v_sers_5178_line_34 = sers;
		int PROBE_END_LINE_34 = 34;
		v_sers_5178_line_34.put(UUID.class, new UUIDSerializer());
        int PROBE_START_LINE_35 = 35;
		HashMap<Class<?>, Object> v_sers_5178_line_35 = sers;
		int PROBE_END_LINE_35 = 35;
		v_sers_5178_line_35.put(java.util.regex.Pattern.class, new ToStringSerializer(java.util.regex.Pattern.class));
        int PROBE_START_LINE_36 = 36;
		HashMap<Class<?>, Object> v_sers_5178_line_36 = sers;
		int PROBE_END_LINE_36 = 36;
		v_sers_5178_line_36.put(Locale.class, new ToStringSerializer(Locale.class));

        int PROBE_START_LINE_39 = 39;
		HashMap<Class<?>, Object> v_sers_5178_line_39 = sers;
		int PROBE_END_LINE_39 = 39;
		// then atomic types (note: AtomicReference defined elsewhere)
        v_sers_5178_line_39.put(AtomicBoolean.class, AtomicBooleanSerializer.class);
        int PROBE_START_LINE_40 = 40;
		HashMap<Class<?>, Object> v_sers_5178_line_40 = sers;
		int PROBE_END_LINE_40 = 40;
		v_sers_5178_line_40.put(AtomicInteger.class, AtomicIntegerSerializer.class);
        int PROBE_START_LINE_41 = 41;
		HashMap<Class<?>, Object> v_sers_5178_line_41 = sers;
		int PROBE_END_LINE_41 = 41;
		v_sers_5178_line_41.put(AtomicLong.class, AtomicLongSerializer.class);

        int PROBE_START_LINE_44 = 44;
		HashMap<Class<?>, Object> v_sers_5178_line_44 = sers;
		int PROBE_END_LINE_44 = 44;
		// then other types that need specialized serializers
        v_sers_5178_line_44.put(File.class, FileSerializer.class);
        int PROBE_START_LINE_45 = 45;
		HashMap<Class<?>, Object> v_sers_5178_line_45 = sers;
		int PROBE_END_LINE_45 = 45;
		v_sers_5178_line_45.put(Class.class, ClassSerializer.class);

        int PROBE_START_LINE_48 = 48;
		HashMap<Class<?>, Object> v_sers_5178_line_48 = sers;
		com.fasterxml.jackson.databind.ser.std.NullSerializer q_instance_176_line_48 = NullSerializer.instance;
		int PROBE_END_LINE_48 = 48;
		// And then some stranger types... not 100% they are needed but:
        v_sers_5178_line_48.put(Void.class, q_instance_176_line_48);
        int PROBE_START_LINE_49 = 49;
		HashMap<Class<?>, Object> v_sers_5178_line_49 = sers;
		Class<Void> q_type_176_line_49 = Void.TYPE;
		com.fasterxml.jackson.databind.ser.std.NullSerializer q_instance_176_line_49 = NullSerializer.instance;
		int PROBE_END_LINE_49 = 49;
		v_sers_5178_line_49.put(q_type_176_line_49, q_instance_176_line_49);

        // 09-Jan-2015, tatu: As per [databind#1073], let's try to guard against possibility
        //   of some environments missing `java.sql.` types
        try {
            int PROBE_START_LINE_55 = 55;
			HashMap<Class<?>, Object> v_sers_5178_line_55 = sers;
			com.fasterxml.jackson.databind.ser.std.DateSerializer q_instance_176_line_55 = DateSerializer.instance;
			int PROBE_END_LINE_55 = 55;
			// note: timestamps are very similar to java.util.Date, thus serialized as such
            v_sers_5178_line_55.put(java.sql.Timestamp.class, q_instance_176_line_55);
    
            int PROBE_START_LINE_58 = 58;
			HashMap<Class<?>, Object> v_sers_5178_line_58 = sers;
			int PROBE_END_LINE_58 = 58;
			// leave some of less commonly used ones as lazy, no point in proactive construction
            v_sers_5178_line_58.put(java.sql.Date.class, SqlDateSerializer.class);
            int PROBE_START_LINE_59 = 59;
			HashMap<Class<?>, Object> v_sers_5178_line_59 = sers;
			int PROBE_END_LINE_59 = 59;
			v_sers_5178_line_59.put(java.sql.Time.class, SqlTimeSerializer.class);
        } catch (NoClassDefFoundError e) {
            // nothing much we can do here; could log, but probably not useful for now.
        }
        
        int PROBE_START_LINE_64 = 64;
		HashMap<Class<?>, Object> v_sers_5178_line_64 = sers;
		Set<java.util.Map.Entry<Class<?>, Object>> std_jdk_serializers_1_expr51_line_64 = v_sers_5178_line_64
				.entrySet();
		int PROBE_END_LINE_64 = 64;
		return std_jdk_serializers_1_expr51_line_64;
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
        public void serialize(AtomicBoolean value, JsonGenerator gen, SerializerProvider provider) throws IOException, JsonGenerationException {
            gen.writeBoolean(value.get());
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
        public void serialize(AtomicInteger value, JsonGenerator gen, SerializerProvider provider) throws IOException, JsonGenerationException {
            gen.writeNumber(value.get());
        }
    
        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode("integer", true);
        }
        
        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor, JavaType typeHint) throws JsonMappingException
        {
            visitIntFormat(visitor, typeHint, JsonParser.NumberType.INT);
        }
    }

    public static class AtomicLongSerializer
        extends StdScalarSerializer<AtomicLong>
    {
        public AtomicLongSerializer() { super(AtomicLong.class, false); }
    
        @Override
        public void serialize(AtomicLong value, JsonGenerator gen, SerializerProvider provider) throws IOException, JsonGenerationException {
            gen.writeNumber(value.get());
        }
    
        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode("integer", true);
        }
        
        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor, JavaType typeHint)
            throws JsonMappingException
        {
            visitIntFormat(visitor, typeHint, JsonParser.NumberType.LONG);
        }
    }
}
