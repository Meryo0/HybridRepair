package com.fasterxml.jackson.databind.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonNumberFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.core.JsonParser.NumberType;

/**
 * Container class for serializers used for handling standard JDK-provided types.
 */
@SuppressWarnings("serial")
public class NumberSerializers
{
    protected NumberSerializers() { }
    
    public static void addAll(Map<String, JsonSerializer<?>> allDeserializers)
    {
        final JsonSerializer<?> intS = new IntegerSerializer();
        int PROBE_START_LINE_29 = 29;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_29 = allDeserializers;
		String number_serializers_1_expr3_line_29 = Integer.class.getName();
		JsonSerializer<?> v_int_s_3712_line_29 = intS;
		int PROBE_END_LINE_29 = 29;
		p_all_deserializers_3711_line_29.put(number_serializers_1_expr3_line_29, v_int_s_3712_line_29);
        int PROBE_START_LINE_30 = 30;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_30 = allDeserializers;
		Class<Integer> q_type_127_line_30 = Integer.TYPE;
		String number_serializers_1_expr6_line_30 = q_type_127_line_30.getName();
		JsonSerializer<?> v_int_s_3712_line_30 = intS;
		int PROBE_END_LINE_30 = 30;
		p_all_deserializers_3711_line_30.put(number_serializers_1_expr6_line_30, v_int_s_3712_line_30);
        int PROBE_START_LINE_31 = 31;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_31 = allDeserializers;
		String number_serializers_1_expr8_line_31 = Long.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.LongSerializer q_instance_127_line_31 = LongSerializer.instance;
		int PROBE_END_LINE_31 = 31;
		p_all_deserializers_3711_line_31.put(number_serializers_1_expr8_line_31, q_instance_127_line_31);
        int PROBE_START_LINE_32 = 32;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_32 = allDeserializers;
		Class<Long> q_type_128_line_32 = Long.TYPE;
		String number_serializers_1_expr11_line_32 = q_type_128_line_32.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.LongSerializer q_instance_128_line_32 = LongSerializer.instance;
		int PROBE_END_LINE_32 = 32;
		p_all_deserializers_3711_line_32.put(number_serializers_1_expr11_line_32, q_instance_128_line_32);
        int PROBE_START_LINE_33 = 33;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_33 = allDeserializers;
		String number_serializers_1_expr13_line_33 = Byte.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.IntLikeSerializer q_instance_128_line_33 = IntLikeSerializer.instance;
		int PROBE_END_LINE_33 = 33;
		p_all_deserializers_3711_line_33.put(number_serializers_1_expr13_line_33, q_instance_128_line_33);
        int PROBE_START_LINE_34 = 34;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_34 = allDeserializers;
		Class<Byte> q_type_129_line_34 = Byte.TYPE;
		String number_serializers_1_expr16_line_34 = q_type_129_line_34.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.IntLikeSerializer q_instance_129_line_34 = IntLikeSerializer.instance;
		int PROBE_END_LINE_34 = 34;
		p_all_deserializers_3711_line_34.put(number_serializers_1_expr16_line_34, q_instance_129_line_34);
        int PROBE_START_LINE_35 = 35;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_35 = allDeserializers;
		String number_serializers_1_expr18_line_35 = Short.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.ShortSerializer q_instance_130_line_35 = ShortSerializer.instance;
		int PROBE_END_LINE_35 = 35;
		p_all_deserializers_3711_line_35.put(number_serializers_1_expr18_line_35, q_instance_130_line_35);
        int PROBE_START_LINE_36 = 36;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_36 = allDeserializers;
		Class<Short> q_type_131_line_36 = Short.TYPE;
		String number_serializers_1_expr21_line_36 = q_type_131_line_36.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.ShortSerializer q_instance_131_line_36 = ShortSerializer.instance;
		int PROBE_END_LINE_36 = 36;
		p_all_deserializers_3711_line_36.put(number_serializers_1_expr21_line_36, q_instance_131_line_36);

        int PROBE_START_LINE_39 = 39;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_39 = allDeserializers;
		String number_serializers_1_expr23_line_39 = Float.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.FloatSerializer q_instance_132_line_39 = FloatSerializer.instance;
		int PROBE_END_LINE_39 = 39;
		// Numbers, limited length floating point
        p_all_deserializers_3711_line_39.put(number_serializers_1_expr23_line_39, q_instance_132_line_39);
        int PROBE_START_LINE_40 = 40;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_40 = allDeserializers;
		Class<Float> q_type_133_line_40 = Float.TYPE;
		String number_serializers_1_expr26_line_40 = q_type_133_line_40.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.FloatSerializer q_instance_133_line_40 = FloatSerializer.instance;
		int PROBE_END_LINE_40 = 40;
		p_all_deserializers_3711_line_40.put(number_serializers_1_expr26_line_40, q_instance_133_line_40);
        int PROBE_START_LINE_41 = 41;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_41 = allDeserializers;
		String number_serializers_1_expr28_line_41 = Double.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.DoubleSerializer q_instance_134_line_41 = DoubleSerializer.instance;
		int PROBE_END_LINE_41 = 41;
		p_all_deserializers_3711_line_41.put(number_serializers_1_expr28_line_41, q_instance_134_line_41);
        int PROBE_START_LINE_42 = 42;
		Map<String, JsonSerializer<?>> p_all_deserializers_3711_line_42 = allDeserializers;
		Class<Double> q_type_135_line_42 = Double.TYPE;
		String number_serializers_1_expr31_line_42 = q_type_135_line_42.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.DoubleSerializer q_instance_135_line_42 = DoubleSerializer.instance;
		int PROBE_END_LINE_42 = 42;
		p_all_deserializers_3711_line_42.put(number_serializers_1_expr31_line_42, q_instance_135_line_42);
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
        protected final boolean _isInt;

        protected Base(Class<T> cls, JsonParser.NumberType numberType, String schemaType) {
            super(cls);
            int PROBE_START_LINE_60 = 60;
			com.fasterxml.jackson.core.JsonParser.NumberType p_number_type_3720_line_60 = numberType;
			int PROBE_END_LINE_60 = 60;
			_numberType = p_number_type_3720_line_60;
            int PROBE_START_LINE_61 = 61;
			String p_schema_type_3721_line_61 = schemaType;
			int PROBE_END_LINE_61 = 61;
			_schemaType = p_schema_type_3721_line_61;
            int PROBE_START_LINE_62 = 65;
			com.fasterxml.jackson.core.JsonParser.NumberType p_number_type_3720_line_62 = numberType;
			com.fasterxml.jackson.core.JsonParser.NumberType q_int_136_line_62 = JsonParser.NumberType.INT;
			boolean number_serializers_1_expr38_line_62 = p_number_type_3720_line_62 == q_int_136_line_62;
			boolean number_serializers_1_expr37_line_62 = (number_serializers_1_expr38_line_62);
			boolean number_serializers_1_expr36_line_62 = number_serializers_1_expr37_line_62
					|| (numberType == JsonParser.NumberType.LONG) || (numberType == JsonParser.NumberType.BIG_INTEGER);
			int PROBE_END_LINE_62 = 65;
			_isInt = number_serializers_1_expr36_line_62
                    ;
        }

        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode(_schemaType, true);
        }

        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor, JavaType typeHint) throws JsonMappingException
        {
            if (_isInt) {
                JsonIntegerFormatVisitor v2 = visitor.expectIntegerFormat(typeHint);
                if (v2 != null) {
                    v2.numberType(_numberType);
                }
            } else {
                JsonNumberFormatVisitor v2 = visitor.expectNumberFormat(typeHint);
                if (v2 != null) {
                    v2.numberType(_numberType);
                }
            }
        }

        @Override
        public JsonSerializer<?> createContextual(SerializerProvider prov,
                BeanProperty property) throws JsonMappingException
        {
            if (property != null) {
                AnnotatedMember m = property.getMember();
                if (m != null) {
                    JsonFormat.Value format = prov.getAnnotationIntrospector().findFormat(m);
                    if (format != null) {
                        switch (format.getShape()) {
                        case STRING:
                            return ToStringSerializer.instance;
                        default:
                        }
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
        public void serialize(Integer value, JsonGenerator jgen, SerializerProvider provider) throws IOException {
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
        public void serialize(Number value, JsonGenerator jgen, SerializerProvider provider) throws IOException {
            jgen.writeNumber(value.intValue());
        }
    }

    @JacksonStdImpl
    public final static class LongSerializer extends Base<Long>
    {
        final static LongSerializer instance = new LongSerializer();
    
        public LongSerializer() { super(Long.class, JsonParser.NumberType.LONG, "number"); }
        
        @Override
        public void serialize(Long value, JsonGenerator jgen, SerializerProvider provider) throws IOException {
            jgen.writeNumber(value.longValue());
        }
    }
    
    @JacksonStdImpl
    public final static class FloatSerializer extends Base<Float>
    {
        final static FloatSerializer instance = new FloatSerializer();
    
        public FloatSerializer() { super(Float.class, JsonParser.NumberType.FLOAT, "number"); }
        
        @Override
        public void serialize(Float value, JsonGenerator jgen, SerializerProvider provider) throws IOException {
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
        public void serialize(Double value, JsonGenerator jgen, SerializerProvider provider) throws IOException {
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
