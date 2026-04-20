package com.fasterxml.jackson.databind.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonFormat;

import com.fasterxml.jackson.core.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.core.JsonParser.NumberType;

/**
 * Container class for serializers used for handling standard JDK-provided
 * types.
 */
@SuppressWarnings("serial")
public class NumberSerializers {
    protected NumberSerializers() { }

    public static void addAll(Map<String, JsonSerializer<?>> allDeserializers) {
        int PROBE_START_LINE_26 = 26;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_26 = allDeserializers;
		String number_serializers_1_expr2_line_26 = Integer.class.getName();
		int PROBE_END_LINE_26 = 26;
		p_all_deserializers_2661_line_26.put(number_serializers_1_expr2_line_26, new IntegerSerializer(Integer.class));
        int PROBE_START_LINE_27 = 27;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_27 = allDeserializers;
		Class<Integer> q_type_19_line_27 = Integer.TYPE;
		String number_serializers_1_expr7_line_27 = q_type_19_line_27.getName();
		Class<Integer> q_type_19_line_27_v1 = Integer.TYPE;
		int PROBE_END_LINE_27 = 27;
		p_all_deserializers_2661_line_27.put(number_serializers_1_expr7_line_27, new IntegerSerializer(q_type_19_line_27_v1));
        int PROBE_START_LINE_28 = 28;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_28 = allDeserializers;
		String number_serializers_1_expr10_line_28 = Long.class.getName();
		int PROBE_END_LINE_28 = 28;
		p_all_deserializers_2661_line_28.put(number_serializers_1_expr10_line_28, new LongSerializer(Long.class));
        int PROBE_START_LINE_29 = 29;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_29 = allDeserializers;
		Class<Long> q_type_19_line_29 = Long.TYPE;
		String number_serializers_1_expr15_line_29 = q_type_19_line_29.getName();
		Class<Long> q_type_19_line_29_v1 = Long.TYPE;
		int PROBE_END_LINE_29 = 29;
		p_all_deserializers_2661_line_29.put(number_serializers_1_expr15_line_29, new LongSerializer(q_type_19_line_29_v1));

        int PROBE_START_LINE_31 = 31;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_31 = allDeserializers;
		String number_serializers_1_expr18_line_31 = Byte.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.IntLikeSerializer q_instance_19_line_31 = IntLikeSerializer.instance;
		int PROBE_END_LINE_31 = 31;
		p_all_deserializers_2661_line_31.put(number_serializers_1_expr18_line_31, q_instance_19_line_31);
        int PROBE_START_LINE_32 = 32;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_32 = allDeserializers;
		Class<Byte> q_type_20_line_32 = Byte.TYPE;
		String number_serializers_1_expr21_line_32 = q_type_20_line_32.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.IntLikeSerializer q_instance_20_line_32 = IntLikeSerializer.instance;
		int PROBE_END_LINE_32 = 32;
		p_all_deserializers_2661_line_32.put(number_serializers_1_expr21_line_32, q_instance_20_line_32);
        int PROBE_START_LINE_33 = 33;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_33 = allDeserializers;
		String number_serializers_1_expr23_line_33 = Short.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.ShortSerializer q_instance_21_line_33 = ShortSerializer.instance;
		int PROBE_END_LINE_33 = 33;
		p_all_deserializers_2661_line_33.put(number_serializers_1_expr23_line_33, q_instance_21_line_33);
        int PROBE_START_LINE_34 = 34;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_34 = allDeserializers;
		Class<Short> q_type_22_line_34 = Short.TYPE;
		String number_serializers_1_expr26_line_34 = q_type_22_line_34.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.ShortSerializer q_instance_22_line_34 = ShortSerializer.instance;
		int PROBE_END_LINE_34 = 34;
		p_all_deserializers_2661_line_34.put(number_serializers_1_expr26_line_34, q_instance_22_line_34);

        int PROBE_START_LINE_37 = 37;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_37 = allDeserializers;
		String number_serializers_1_expr28_line_37 = Double.class.getName();
		int PROBE_END_LINE_37 = 37;
		// Numbers, limited length floating point
        p_all_deserializers_2661_line_37.put(number_serializers_1_expr28_line_37, new DoubleSerializer(Double.class));
        int PROBE_START_LINE_38 = 38;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_38 = allDeserializers;
		Class<Double> q_type_23_line_38 = Double.TYPE;
		String number_serializers_1_expr33_line_38 = q_type_23_line_38.getName();
		Class<Double> q_type_24_line_38 = Double.TYPE;
		int PROBE_END_LINE_38 = 38;
		p_all_deserializers_2661_line_38.put(number_serializers_1_expr33_line_38, new DoubleSerializer(q_type_24_line_38));
        int PROBE_START_LINE_39 = 39;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_39 = allDeserializers;
		String number_serializers_1_expr36_line_39 = Float.class.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.FloatSerializer q_instance_24_line_39 = FloatSerializer.instance;
		int PROBE_END_LINE_39 = 39;
		p_all_deserializers_2661_line_39.put(number_serializers_1_expr36_line_39, q_instance_24_line_39);
        int PROBE_START_LINE_40 = 40;
		Map<String, JsonSerializer<?>> p_all_deserializers_2661_line_40 = allDeserializers;
		Class<Float> q_type_25_line_40 = Float.TYPE;
		String number_serializers_1_expr39_line_40 = q_type_25_line_40.getName();
		com.fasterxml.jackson.databind.ser.std.NumberSerializers.FloatSerializer q_instance_25_line_40 = FloatSerializer.instance;
		int PROBE_END_LINE_40 = 40;
		p_all_deserializers_2661_line_40.put(number_serializers_1_expr39_line_40, q_instance_25_line_40);
    }

    /*
    /**********************************************************
    /* Shared base class
    /**********************************************************
     */

    protected abstract static class Base<T> extends StdScalarSerializer<T>
            implements ContextualSerializer {
        protected final JsonParser.NumberType _numberType;
        protected final String _schemaType;
        protected final boolean _isInt;

        protected Base(Class<?> cls, JsonParser.NumberType numberType,
                String schemaType) {
            super(cls, false);
            int PROBE_START_LINE_58 = 58;
			com.fasterxml.jackson.core.JsonParser.NumberType p_number_type_2669_line_58 = numberType;
			int PROBE_END_LINE_58 = 58;
			_numberType = p_number_type_2669_line_58;
            int PROBE_START_LINE_59 = 59;
			String p_schema_type_2670_line_59 = schemaType;
			int PROBE_END_LINE_59 = 59;
			_schemaType = p_schema_type_2670_line_59;
            int PROBE_START_LINE_60 = 62;
			com.fasterxml.jackson.core.JsonParser.NumberType p_number_type_2669_line_60 = numberType;
			com.fasterxml.jackson.core.JsonParser.NumberType q_int_26_line_60 = JsonParser.NumberType.INT;
			boolean number_serializers_1_expr46_line_60 = p_number_type_2669_line_60 == q_int_26_line_60;
			boolean number_serializers_1_expr45_line_60 = (number_serializers_1_expr46_line_60);
			boolean number_serializers_1_expr44_line_60 = number_serializers_1_expr45_line_60
					|| (numberType == JsonParser.NumberType.LONG) || (numberType == JsonParser.NumberType.BIG_INTEGER);
			int PROBE_END_LINE_60 = 62;
			_isInt = number_serializers_1_expr44_line_60;
        }

        @Override
        public JsonNode getSchema(SerializerProvider provider, Type typeHint) {
            return createSchemaNode(_schemaType, true);
        }

        @Override
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper visitor,
                JavaType typeHint) throws JsonMappingException
        {
            if (_isInt) {
                visitIntFormat(visitor, typeHint, _numberType);
            } else {
                visitFloatFormat(visitor, typeHint, _numberType);
            }
        }

        @Override
        public JsonSerializer<?> createContextual(SerializerProvider prov,
                BeanProperty property) throws JsonMappingException
        {
            JsonFormat.Value format = findFormatOverrides(prov, property, handledType());
            if (format != null) {
                switch (format.getShape()) {
                case STRING:
                    return ToStringSerializer.instance;
                default:
                }
            }
            return this;
        }
    }

    /*
     *************************************************************
     * Concrete serializers, numerics
     *************************************************************
     */

    @JacksonStdImpl
    public final static class ShortSerializer extends Base<Object> {
        final static ShortSerializer instance = new ShortSerializer();

        public ShortSerializer() {
            super(Short.class, JsonParser.NumberType.INT, "number");
        }

        @Override
        public void serialize(Object value, JsonGenerator gen,
                SerializerProvider provider) throws IOException {
            gen.writeNumber(((Short) value).shortValue());
        }
    }

    /**
     * This is the special serializer for regular {@link java.lang.Integer}s
     * (and primitive ints)
     * <p>
     * Since this is one of "native" types, no type information is ever included
     * on serialization (unlike for most scalar types)
     * <p>
     * NOTE: as of 2.6, generic signature changed to Object, to avoid generation
     * of bridge methods.
     */
    @JacksonStdImpl
    public final static class IntegerSerializer extends Base<Object> {
        public IntegerSerializer(Class<?> type) {
            super(type, JsonParser.NumberType.INT, "integer");
        }

        @Override
        public void serialize(Object value, JsonGenerator gen,
                SerializerProvider provider) throws IOException {
            gen.writeNumber(((Integer) value).intValue());
        }

        // IMPORTANT: copied from `NonTypedScalarSerializerBase`
        @Override
        public void serializeWithType(Object value, JsonGenerator gen,
                SerializerProvider provider, TypeSerializer typeSer)
                throws IOException {
            // no type info, just regular serialization
            serialize(value, gen, provider);
        }
    }

    /**
     * Similar to {@link IntegerSerializer}, but will not cast to Integer:
     * instead, cast is to {@link java.lang.Number}, and conversion is by
     * calling {@link java.lang.Number#intValue}.
     */
    @JacksonStdImpl
    public final static class IntLikeSerializer extends Base<Object> {
        final static IntLikeSerializer instance = new IntLikeSerializer();

        public IntLikeSerializer() {
            super(Number.class, JsonParser.NumberType.INT, "integer");
        }

        @Override
        public void serialize(Object value, JsonGenerator gen,
                SerializerProvider provider) throws IOException {
            gen.writeNumber(((Number) value).intValue());
        }
    }

    @JacksonStdImpl
    public final static class LongSerializer extends Base<Object> {
        public LongSerializer(Class<?> cls) {
            super(cls, JsonParser.NumberType.LONG, "number");
        }

        @Override
        public void serialize(Object value, JsonGenerator gen,
                SerializerProvider provider) throws IOException {
            gen.writeNumber(((Long) value).longValue());
        }
    }

    @JacksonStdImpl
    public final static class FloatSerializer extends Base<Object> {
        final static FloatSerializer instance = new FloatSerializer();

        public FloatSerializer() {
            super(Float.class, JsonParser.NumberType.FLOAT, "number");
        }

        @Override
        public void serialize(Object value, JsonGenerator gen,
                SerializerProvider provider) throws IOException {
            gen.writeNumber(((Float) value).floatValue());
        }
    }

    /**
     * This is the special serializer for regular {@link java.lang.Double}s (and
     * primitive doubles)
     * <p>
     * Since this is one of "native" types, no type information is ever included
     * on serialization (unlike for most scalar types as of 1.5)
     */
    @JacksonStdImpl
    public final static class DoubleSerializer extends Base<Object> {
        public DoubleSerializer(Class<?> cls) {
            super(cls, JsonParser.NumberType.DOUBLE, "number");
        }

        @Override
        public void serialize(Object value, JsonGenerator gen,
                SerializerProvider provider) throws IOException {
            gen.writeNumber(((Double) value).doubleValue());
        }

        // IMPORTANT: copied from `NonTypedScalarSerializerBase`
        @Override
        public void serializeWithType(Object value, JsonGenerator gen,
                SerializerProvider provider, TypeSerializer typeSer)
                throws IOException {
            // no type info, just regular serialization
            serialize(value, gen, provider);
        }
    }
}
