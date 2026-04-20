package com.fasterxml.jackson.databind.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.core.JsonParser.NumberType;

/**
 * Container class for serializers used for handling standard JDK-provided types.
 */
public class NumberSerializers
{
    protected NumberSerializers() { }
    
    public static void addAll(Map<String, JsonSerializer<?>> allDeserializers)
    {
        final JsonSerializer<?> intS = new IntegerSerializer();
        int PROBE_START_LINE_26 = 26;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_26 = allDeserializers;
		String number_serializers_1_expr3_line_26 = Integer.class.getName();
		JsonSerializer<?> v_int_s_2298_line_26 = intS;
		int PROBE_END_LINE_26 = 26;
		p_all_deserializers_2297_line_26.put(number_serializers_1_expr3_line_26, v_int_s_2298_line_26);
        int PROBE_START_LINE_27 = 27;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_27 = allDeserializers;
		Class<Integer> q_type_38_line_27 = Integer.TYPE;
		String number_serializers_1_expr6_line_27 = q_type_38_line_27.getName();
		JsonSerializer<?> v_int_s_2298_line_27 = intS;
		int PROBE_END_LINE_27 = 27;
		p_all_deserializers_2297_line_27.put(number_serializers_1_expr6_line_27, v_int_s_2298_line_27);
        int PROBE_START_LINE_28 = 28;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_28 = allDeserializers;
		String number_serializers_1_expr8_line_28 = Long.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.LongSerializer q_instance_38_line_28 = LongSerializer.instance;
		int PROBE_END_LINE_28 = 28;
		p_all_deserializers_2297_line_28.put(number_serializers_1_expr8_line_28, q_instance_38_line_28);
        int PROBE_START_LINE_29 = 29;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_29 = allDeserializers;
		Class<Long> q_type_39_line_29 = Long.TYPE;
		String number_serializers_1_expr11_line_29 = q_type_39_line_29.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.LongSerializer q_instance_39_line_29 = LongSerializer.instance;
		int PROBE_END_LINE_29 = 29;
		p_all_deserializers_2297_line_29.put(number_serializers_1_expr11_line_29, q_instance_39_line_29);
        int PROBE_START_LINE_30 = 30;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_30 = allDeserializers;
		String number_serializers_1_expr13_line_30 = Byte.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.IntLikeSerializer q_instance_39_line_30 = IntLikeSerializer.instance;
		int PROBE_END_LINE_30 = 30;
		p_all_deserializers_2297_line_30.put(number_serializers_1_expr13_line_30, q_instance_39_line_30);
        int PROBE_START_LINE_31 = 31;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_31 = allDeserializers;
		Class<Byte> q_type_40_line_31 = Byte.TYPE;
		String number_serializers_1_expr16_line_31 = q_type_40_line_31.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.IntLikeSerializer q_instance_40_line_31 = IntLikeSerializer.instance;
		int PROBE_END_LINE_31 = 31;
		p_all_deserializers_2297_line_31.put(number_serializers_1_expr16_line_31, q_instance_40_line_31);
        int PROBE_START_LINE_32 = 32;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_32 = allDeserializers;
		String number_serializers_1_expr18_line_32 = Short.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.ShortSerializer q_instance_41_line_32 = ShortSerializer.instance;
		int PROBE_END_LINE_32 = 32;
		p_all_deserializers_2297_line_32.put(number_serializers_1_expr18_line_32, q_instance_41_line_32);
        int PROBE_START_LINE_33 = 33;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_33 = allDeserializers;
		Class<Short> q_type_42_line_33 = Short.TYPE;
		String number_serializers_1_expr21_line_33 = q_type_42_line_33.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.ShortSerializer q_instance_42_line_33 = ShortSerializer.instance;
		int PROBE_END_LINE_33 = 33;
		p_all_deserializers_2297_line_33.put(number_serializers_1_expr21_line_33, q_instance_42_line_33);

        int PROBE_START_LINE_36 = 36;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_36 = allDeserializers;
		String number_serializers_1_expr23_line_36 = Float.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.FloatSerializer q_instance_43_line_36 = FloatSerializer.instance;
		int PROBE_END_LINE_36 = 36;
		// Numbers, limited length floating point
        p_all_deserializers_2297_line_36.put(number_serializers_1_expr23_line_36, q_instance_43_line_36);
        int PROBE_START_LINE_37 = 37;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_37 = allDeserializers;
		Class<Float> q_type_44_line_37 = Float.TYPE;
		String number_serializers_1_expr26_line_37 = q_type_44_line_37.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.FloatSerializer q_instance_44_line_37 = FloatSerializer.instance;
		int PROBE_END_LINE_37 = 37;
		p_all_deserializers_2297_line_37.put(number_serializers_1_expr26_line_37, q_instance_44_line_37);
        int PROBE_START_LINE_38 = 38;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_38 = allDeserializers;
		String number_serializers_1_expr28_line_38 = Double.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.DoubleSerializer q_instance_45_line_38 = DoubleSerializer.instance;
		int PROBE_END_LINE_38 = 38;
		p_all_deserializers_2297_line_38.put(number_serializers_1_expr28_line_38, q_instance_45_line_38);
        int PROBE_START_LINE_39 = 39;
		Map<String, JsonSerializer<?>> p_all_deserializers_2297_line_39 = allDeserializers;
		Class<Double> q_type_46_line_39 = Double.TYPE;
		String number_serializers_1_expr31_line_39 = q_type_46_line_39.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.DoubleSerializer q_instance_46_line_39 = DoubleSerializer.instance;
		int PROBE_END_LINE_39 = 39;
		p_all_deserializers_2297_line_39.put(number_serializers_1_expr31_line_39, q_instance_46_line_39);
    }

    /*
    /**********************************************************
    /* Shared base class
    /**********************************************************
     */

    protected abstract static class Base<T> extends StdScalarSerializer<T>
        implements ContextualSerializer
    {
        protected final JsonParser.NumberType _numberType;
        protected final String _schemaType;

        protected Base(Class<T> cls, JsonParser.NumberType numberType, String schemaType) {
            super(cls);
            int PROBE_START_LINE_56 = 56;
			com.fasterxml.jackson.core.JsonParser.NumberType p_number_type_2306_line_56 = numberType;
			int PROBE_END_LINE_56 = 56;
			_numberType = p_number_type_2306_line_56;
            int PROBE_START_LINE_57 = 57;
			String p_schema_type_2307_line_57 = schemaType;
			int PROBE_END_LINE_57 = 57;
			_schemaType = p_schema_type_2307_line_57;
        }

        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode(_schemaType, true);
        }

        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor, JavaType typeHint) throws JsonMappingException
        {
            JsonIntegerFormatVisitor v2 = visitor.expectIntegerFormat(typeHint);
            if (v2 != null) {
                v2.numberType(_numberType);
            }
        }

        @Override
        public JsonSerializer<?> createContextual(SerializerProvider prov,
                BeanProperty property) throws JsonMappingException
        {
            if (property != null) {
                JsonFormat.Value format = prov.getAnnotationIntrospector().findFormat(property.getMember());
                if (format != null) {
                    switch (format.getShape()) {
                    case STRING:
                        return ToStringSerializer.instance;
                    default:
                    }
                }
            }
            return this;
        }
    }
    
    /*
    /**********************************************************
    /* Concrete serializers, numerics
    /**********************************************************
     */

    @JacksonStdImpl
    public final static class ShortSerializer extends Base<Short>
    {
        final static ShortSerializer instance = new ShortSerializer();
    
        public ShortSerializer() { super(Short.class, JsonParser.NumberType.INT, "number"); }

        @Override
        public void serialize(Short value, JsonGenerator jgen, SerializerProvider provider) throws IOException {
            jgen.writeNumber(value.shortValue());
        }
    }
    
    /**
     * This is the special serializer for regular {@link java.lang.Integer}s
     * (and primitive ints)
     *<p>
     * Since this is one of "native" types, no type information is ever
     * included on serialization (unlike for most scalar types as of 1.5)
     */
    @JacksonStdImpl
    public final static class IntegerSerializer extends Base<Integer>
    {
        public IntegerSerializer() { super(Integer.class, JsonParser.NumberType.INT ,"integer"); }
    
        @Override
        public void serialize(Integer value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            jgen.writeNumber(value.intValue());
        }
        
        // IMPORTANT: copied from `NonTypedScalarSerializerBase`
        @Override
        public void serializeWithType(Integer value, JsonGenerator jgen,
                SerializerProvider provider, TypeSerializer typeSer) throws IOException {
            // no type info, just regular serialization
            serialize(value, jgen, provider);            
        }
    }

    /**
     * Similar to {@link IntegerSerializer}, but will not cast to Integer:
     * instead, cast is to {@link java.lang.Number}, and conversion is
     * by calling {@link java.lang.Number#intValue}.
     */
    @JacksonStdImpl
    public final static class IntLikeSerializer extends Base<Number>
    {
        final static IntLikeSerializer instance = new IntLikeSerializer();
    
        public IntLikeSerializer() {
            super(Number.class, JsonParser.NumberType.INT, "integer");
        }
        
        @Override
        public void serialize(Number value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            jgen.writeNumber(value.intValue());
        }
    }

    @JacksonStdImpl
    public final static class LongSerializer extends Base<Long>
    {
        final static LongSerializer instance = new LongSerializer();
    
        public LongSerializer() { super(Long.class, JsonParser.NumberType.LONG, "number"); }
        
        @Override
        public void serialize(Long value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            jgen.writeNumber(value.longValue());
        }
    }
    
    @JacksonStdImpl
    public final static class FloatSerializer extends Base<Float>
    {
        final static FloatSerializer instance = new FloatSerializer();
    
        public FloatSerializer() { super(Float.class, JsonParser.NumberType.FLOAT, "number"); }
        
        @Override
        public void serialize(Float value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            jgen.writeNumber(value.floatValue());
        }
    }

    /**
     * This is the special serializer for regular {@link java.lang.Double}s
     * (and primitive doubles)
     *<p>
     * Since this is one of "native" types, no type information is ever
     * included on serialization (unlike for most scalar types as of 1.5)
     */
    @JacksonStdImpl
    public final static class DoubleSerializer extends Base<Double>
    {
        final static DoubleSerializer instance = new DoubleSerializer();
    
        public DoubleSerializer() { super(Double.class, JsonParser.NumberType.DOUBLE, "number"); }
    
        @Override
        public void serialize(Double value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonGenerationException {
            jgen.writeNumber(value.doubleValue());
        }

        // IMPORTANT: copied from `NonTypedScalarSerializerBase`
        @Override
        public void serializeWithType(Double value, JsonGenerator jgen,
                SerializerProvider provider, TypeSerializer typeSer) throws IOException {
            // no type info, just regular serialization
            serialize(value, jgen, provider);            
        }
    }
}
