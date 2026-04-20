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
		ToStringSerializer q_instance_133_line_30 = ToStringSerializer.instance;
		int PROBE_END_LINE_30 = 30;
		// First things that 'toString()' can handle
        final ToStringSerializer sls = q_instance_133_line_30;

        int PROBE_START_LINE_32 = 32;
		HashMap<Class<?>, Object> v_sers_4151_line_32 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_4152_line_32 = sls;
		int PROBE_END_LINE_32 = 32;
		v_sers_4151_line_32.put(java.net.URL.class, v_sls_4152_line_32);
        int PROBE_START_LINE_33 = 33;
		HashMap<Class<?>, Object> v_sers_4151_line_33 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_4152_line_33 = sls;
		int PROBE_END_LINE_33 = 33;
		v_sers_4151_line_33.put(java.net.URI.class, v_sls_4152_line_33);

        int PROBE_START_LINE_35 = 35;
		HashMap<Class<?>, Object> v_sers_4151_line_35 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_4152_line_35 = sls;
		int PROBE_END_LINE_35 = 35;
		v_sers_4151_line_35.put(Currency.class, v_sls_4152_line_35);
        int PROBE_START_LINE_36 = 36;
		HashMap<Class<?>, Object> v_sers_4151_line_36 = sers;
		int PROBE_END_LINE_36 = 36;
		v_sers_4151_line_36.put(UUID.class, new UUIDSerializer());
        int PROBE_START_LINE_37 = 37;
		HashMap<Class<?>, Object> v_sers_4151_line_37 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_4152_line_37 = sls;
		int PROBE_END_LINE_37 = 37;
		v_sers_4151_line_37.put(java.util.regex.Pattern.class, v_sls_4152_line_37);
        int PROBE_START_LINE_38 = 38;
		HashMap<Class<?>, Object> v_sers_4151_line_38 = sers;
		com.fasterxml.jackson.databind.ser.std.ToStringSerializer v_sls_4152_line_38 = sls;
		int PROBE_END_LINE_38 = 38;
		v_sers_4151_line_38.put(Locale.class, v_sls_4152_line_38);

        int PROBE_START_LINE_41 = 41;
		HashMap<Class<?>, Object> v_sers_4151_line_41 = sers;
		int PROBE_END_LINE_41 = 41;
		// then atomic types (note: AtomicReference defined elsewhere)
        v_sers_4151_line_41.put(AtomicBoolean.class, AtomicBooleanSerializer.class);
        int PROBE_START_LINE_42 = 42;
		HashMap<Class<?>, Object> v_sers_4151_line_42 = sers;
		int PROBE_END_LINE_42 = 42;
		v_sers_4151_line_42.put(AtomicInteger.class, AtomicIntegerSerializer.class);
        int PROBE_START_LINE_43 = 43;
		HashMap<Class<?>, Object> v_sers_4151_line_43 = sers;
		int PROBE_END_LINE_43 = 43;
		v_sers_4151_line_43.put(AtomicLong.class, AtomicLongSerializer.class);

        int PROBE_START_LINE_46 = 46;
		HashMap<Class<?>, Object> v_sers_4151_line_46 = sers;
		int PROBE_END_LINE_46 = 46;
		// then other types that need specialized serializers
        v_sers_4151_line_46.put(File.class, FileSerializer.class);
        int PROBE_START_LINE_47 = 47;
		HashMap<Class<?>, Object> v_sers_4151_line_47 = sers;
		int PROBE_END_LINE_47 = 47;
		v_sers_4151_line_47.put(Class.class, ClassSerializer.class);

        int PROBE_START_LINE_50 = 50;
		HashMap<Class<?>, Object> v_sers_4151_line_50 = sers;
		com.fasterxml.jackson.databind.ser.std.NullSerializer q_instance_133_line_50 = NullSerializer.instance;
		int PROBE_END_LINE_50 = 50;
		// And then some stranger types... not 100% they are needed but:
        v_sers_4151_line_50.put(Void.class, q_instance_133_line_50);
        int PROBE_START_LINE_51 = 51;
		HashMap<Class<?>, Object> v_sers_4151_line_51 = sers;
		Class<Void> q_type_133_line_51 = Void.TYPE;
		com.fasterxml.jackson.databind.ser.std.NullSerializer q_instance_134_line_51 = NullSerializer.instance;
		int PROBE_END_LINE_51 = 51;
		v_sers_4151_line_51.put(q_type_133_line_51, q_instance_134_line_51);

        // 09-Jan-2015, tatu: As per [databind#1073], let's try to guard against possibility
        //   of some environments missing `java.sql.` types
        try {
            int PROBE_START_LINE_57 = 57;
			HashMap<Class<?>, Object> v_sers_4151_line_57 = sers;
			com.fasterxml.jackson.databind.ser.std.DateSerializer q_instance_134_line_57 = DateSerializer.instance;
			int PROBE_END_LINE_57 = 57;
			// note: timestamps are very similar to java.util.Date, thus serialized as such
            v_sers_4151_line_57.put(java.sql.Timestamp.class, q_instance_134_line_57);
    
            int PROBE_START_LINE_60 = 60;
			HashMap<Class<?>, Object> v_sers_4151_line_60 = sers;
			int PROBE_END_LINE_60 = 60;
			// leave some of less commonly used ones as lazy, no point in proactive construction
            v_sers_4151_line_60.put(java.sql.Date.class, SqlDateSerializer.class);
            int PROBE_START_LINE_61 = 61;
			HashMap<Class<?>, Object> v_sers_4151_line_61 = sers;
			int PROBE_END_LINE_61 = 61;
			v_sers_4151_line_61.put(java.sql.Time.class, SqlTimeSerializer.class);
        } catch (NoClassDefFoundError e) {
            // nothing much we can do here; could log, but probably not useful for now.
        }
        
        int PROBE_START_LINE_66 = 66;
		HashMap<Class<?>, Object> v_sers_4151_line_66 = sers;
		Set<java.util.Map.Entry<Class<?>, Object>> std_jdk_serializers_1_expr41_line_66 = v_sers_4151_line_66
				.entrySet();
		int PROBE_END_LINE_66 = 66;
		return std_jdk_serializers_1_expr41_line_66;
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
