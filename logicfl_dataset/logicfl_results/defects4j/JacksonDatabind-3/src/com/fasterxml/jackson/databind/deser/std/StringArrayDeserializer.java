package com.fasterxml.jackson.databind.deser.std;

import java.io.IOException;

import com.fasterxml.jackson.core.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Separate implementation for serializing String arrays (instead of
 * using {@link ObjectArrayDeserializer}.
 * Used if (and only if) no custom value deserializers are used.
 */
@JacksonStdImpl
public final class StringArrayDeserializer
    extends StdDeserializer<String[]>
    implements ContextualDeserializer
{
    private static final long serialVersionUID = -7589512013334920693L;

    public final static StringArrayDeserializer instance = new StringArrayDeserializer();
    
    /**
     * Value serializer to use, if not the standard one (which is inlined)
     */
    protected JsonDeserializer<String> _elementDeserializer;

    public StringArrayDeserializer() {
        super(String[].class);
        _elementDeserializer = null;
    }

    @SuppressWarnings("unchecked")
    protected StringArrayDeserializer(JsonDeserializer<?> deser) {
        super(String[].class);
        _elementDeserializer = (JsonDeserializer<String>) deser;
    }
   
    @Override
    public String[] deserialize(JsonParser jp, DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_47 = 49;
		com.fasterxml.jackson.core.JsonParser p_jp_1489_line_47 = jp;
		boolean string_array_deserializer_1_expr7_line_47 = p_jp_1489_line_47.isExpectedStartArrayToken();
		boolean string_array_deserializer_1_expr6_line_47 = !string_array_deserializer_1_expr7_line_47;
		int PROBE_END_LINE_47 = 49;
		// Ok: must point to START_ARRAY (or equivalent)
        if (string_array_deserializer_1_expr6_line_47) {
            return handleNonArray(jp, ctxt);
        }
        int PROBE_START_LINE_50 = 52;
		JsonDeserializer<String> f__element_deserializer_1487_line_50 = _elementDeserializer;
		boolean string_array_deserializer_1_expr8_line_50 = f__element_deserializer_1487_line_50 != null;
		int PROBE_END_LINE_50 = 52;
		if (string_array_deserializer_1_expr8_line_50) {
            return _deserializeCustom(jp, ctxt);
        }

        int PROBE_START_LINE_54 = 54;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1490_line_54 = ctxt;
		ObjectBuffer string_array_deserializer_1_expr9_line_54 = p_ctxt_1490_line_54.leaseObjectBuffer();
		int PROBE_END_LINE_54 = 54;
		final ObjectBuffer buffer = string_array_deserializer_1_expr9_line_54;
        int PROBE_START_LINE_55 = 55;
		com.fasterxml.jackson.databind.util.ObjectBuffer v_buffer_1491_line_55 = buffer;
		Object[] string_array_deserializer_1_expr10_line_55 = v_buffer_1491_line_55.resetAndStart();
		int PROBE_END_LINE_55 = 55;
		Object[] chunk = string_array_deserializer_1_expr10_line_55;
        
        int ix = 0;
        JsonToken t = null;
        
        while (true) {
            int PROBE_START_LINE_60 = 60;
			com.fasterxml.jackson.core.JsonParser p_jp_1489_line_60 = jp;
			com.fasterxml.jackson.core.JsonToken string_array_deserializer_1_expr14_line_60 = p_jp_1489_line_60
					.nextToken();
			com.fasterxml.jackson.core.JsonToken string_array_deserializer_1_expr12_line_60 = (t = string_array_deserializer_1_expr14_line_60);
			com.fasterxml.jackson.core.JsonToken q_end_array_21_line_60 = JsonToken.END_ARRAY;
			boolean string_array_deserializer_1_expr11_line_60 = string_array_deserializer_1_expr12_line_60 != q_end_array_21_line_60;
			if (!(string_array_deserializer_1_expr11_line_60)) {
				break;
			}
			int PROBE_END_LINE_60 = 60;
			// Ok: no need to convert Strings, but must recognize nulls
            String value = null;
            int PROBE_START_LINE_63 = 69;
			com.fasterxml.jackson.core.JsonToken v_t_1494_line_63 = t;
			com.fasterxml.jackson.core.JsonToken q_value_string_21_line_63 = JsonToken.VALUE_STRING;
			boolean string_array_deserializer_1_expr15_line_63 = v_t_1494_line_63 == q_value_string_21_line_63;
			int PROBE_END_LINE_63 = 69;
			if (string_array_deserializer_1_expr15_line_63) {
                int PROBE_START_LINE_64 = 64;
				com.fasterxml.jackson.core.JsonParser p_jp_1489_line_64 = jp;
				String string_array_deserializer_1_expr17_line_64 = p_jp_1489_line_64.getText();
				int PROBE_END_LINE_64 = 64;
				value = string_array_deserializer_1_expr17_line_64;
            } else {
				int PROBE_START_LINE_65 = 69;
				com.fasterxml.jackson.core.JsonToken v_t_1494_line_65 = t;
				com.fasterxml.jackson.core.JsonToken q_value_null_22_line_65 = JsonToken.VALUE_NULL;
				boolean string_array_deserializer_1_expr18_line_65 = v_t_1494_line_65 == q_value_null_22_line_65;
				int PROBE_END_LINE_65 = 69;
				if (string_array_deserializer_1_expr18_line_65) {
					int PROBE_START_LINE_66 = 66;
					JsonDeserializer<String> f__element_deserializer_1487_line_66 = _elementDeserializer;
					String string_array_deserializer_1_expr20_line_66 = f__element_deserializer_1487_line_66
							.getNullValue();
					int PROBE_END_LINE_66 = 66;
					value = string_array_deserializer_1_expr20_line_66;
				} else {
					value = _parseString(jp, ctxt);
				}
			}
            int PROBE_START_LINE_70 = 73;
			int v_ix_1493_line_70 = ix;
			Object[] v_chunk_1492_line_70 = chunk;
			int q_length_22_line_70 = v_chunk_1492_line_70.length;
			boolean string_array_deserializer_1_expr21_line_70 = v_ix_1493_line_70 >= q_length_22_line_70;
			int PROBE_END_LINE_70 = 73;
			if (string_array_deserializer_1_expr21_line_70) {
                chunk = buffer.appendCompletedChunk(chunk);
                ix = 0;
            }
            int PROBE_START_LINE_74 = 74;
			Object[] v_chunk_1492_line_74 = chunk;
			String v_value_1495_line_74 = value;
			int PROBE_END_LINE_74 = 74;
			v_chunk_1492_line_74[ix++] = v_value_1495_line_74;
        }
        int PROBE_START_LINE_76 = 76;
		com.fasterxml.jackson.databind.util.ObjectBuffer v_buffer_1491_line_76 = buffer;
		Object[] v_chunk_1492_line_76 = chunk;
		int v_ix_1493_line_76 = ix;
		String[] string_array_deserializer_1_expr25_line_76 = v_buffer_1491_line_76
				.completeAndClearBuffer(v_chunk_1492_line_76, v_ix_1493_line_76, String.class);
		int PROBE_END_LINE_76 = 76;
		String[] result = string_array_deserializer_1_expr25_line_76;
        int PROBE_START_LINE_77 = 77;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1490_line_77 = ctxt;
		com.fasterxml.jackson.databind.util.ObjectBuffer v_buffer_1491_line_77 = buffer;
		int PROBE_END_LINE_77 = 77;
		p_ctxt_1490_line_77.returnObjectBuffer(v_buffer_1491_line_77);
        int PROBE_START_LINE_78 = 78;
		String[] v_result_1496_line_78 = result;
		int PROBE_END_LINE_78 = 78;
		return v_result_1496_line_78;
    }

    /**
     * Offlined version used when we do not use the default deserialization method.
     */
    protected final String[] _deserializeCustom(JsonParser jp, DeserializationContext ctxt) throws IOException
    {
        final ObjectBuffer buffer = ctxt.leaseObjectBuffer();
        Object[] chunk = buffer.resetAndStart();
        final JsonDeserializer<String> deser = _elementDeserializer;
        
        int ix = 0;
        JsonToken t;
        
        while ((t = jp.nextToken()) != JsonToken.END_ARRAY) {
            // Ok: no need to convert Strings, but must recognize nulls
            String value = (t == JsonToken.VALUE_NULL) ? null : deser.deserialize(jp, ctxt);
            if (ix >= chunk.length) {
                chunk = buffer.appendCompletedChunk(chunk);
                ix = 0;
            }
            chunk[ix++] = value;
        }
        String[] result = buffer.completeAndClearBuffer(chunk, ix, String.class);
        ctxt.returnObjectBuffer(buffer);
        return result;
    }
    
    @Override
    public Object deserializeWithType(JsonParser jp, DeserializationContext ctxt, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jp, ctxt);
    }

    private final String[] handleNonArray(JsonParser jp, DeserializationContext ctxt) throws IOException
    {
        // [JACKSON-526]: implicit arrays from single values?
        if (!ctxt.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
            // [JACKSON-620] Empty String can become null...
            if ((jp.getCurrentToken() == JsonToken.VALUE_STRING)
                    && ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
                String str = jp.getText();
                if (str.length() == 0) {
                    return null;
                }
            }
            throw ctxt.mappingException(_valueClass);
        }
        return new String[] { (jp.getCurrentToken() == JsonToken.VALUE_NULL) ? null : _parseString(jp, ctxt) };
    }

    /**
     * Contextualization is needed to see whether we can "inline" deserialization
     * of String values, or if we have to use separate value deserializer.
     */
    @Override
    public JsonDeserializer<?> createContextual(DeserializationContext ctxt, BeanProperty property) throws JsonMappingException
    {
        int PROBE_START_LINE_136 = 136;
		JsonDeserializer<?> f__element_deserializer_1487_line_136 = _elementDeserializer;
		int PROBE_END_LINE_136 = 136;
		JsonDeserializer<?> deser = f__element_deserializer_1487_line_136;
        int PROBE_START_LINE_138 = 138;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1504_line_138 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_property_1505_line_138 = property;
		JsonDeserializer<?> v_deser_1506_line_138 = deser;
		JsonDeserializer<?> string_array_deserializer_1_expr29_line_138 = findConvertingContentDeserializer(
				p_ctxt_1504_line_138, p_property_1505_line_138, v_deser_1506_line_138);
		int PROBE_END_LINE_138 = 138;
		// #125: May have a content converter
        deser = string_array_deserializer_1_expr29_line_138;
        int PROBE_START_LINE_139 = 143;
		JsonDeserializer<?> v_deser_1506_line_139 = deser;
		boolean string_array_deserializer_1_expr30_line_139 = v_deser_1506_line_139 == null;
		int PROBE_END_LINE_139 = 143;
		if (string_array_deserializer_1_expr30_line_139) {
            int PROBE_START_LINE_140 = 140;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1504_line_140 = ctxt;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1504_line_140_v1 = ctxt;
			com.fasterxml.jackson.databind.JavaType string_array_deserializer_1_expr33_line_140 = p_ctxt_1504_line_140_v1
					.constructType(String.class);
			com.fasterxml.jackson.databind.BeanProperty p_property_1505_line_140 = property;
			JsonDeserializer<Object> string_array_deserializer_1_expr32_line_140 = p_ctxt_1504_line_140
					.findContextualValueDeserializer(string_array_deserializer_1_expr33_line_140,
							p_property_1505_line_140);
			int PROBE_END_LINE_140 = 140;
			deser = string_array_deserializer_1_expr32_line_140;
        } else { // if directly assigned, probably not yet contextual, so:
            deser = ctxt.handleSecondaryContextualization(deser, property);
        }
        int PROBE_START_LINE_145 = 147;
		JsonDeserializer<?> v_deser_1506_line_145 = deser;
		boolean string_array_deserializer_1_expr36_line_145 = v_deser_1506_line_145 != null;
		boolean string_array_deserializer_1_expr37_line_145 = true;
		if (string_array_deserializer_1_expr36_line_145) {
			JsonDeserializer<?> v_deser_1506_line_145_v1 = deser;
			string_array_deserializer_1_expr37_line_145 = this.isDefaultDeserializer(v_deser_1506_line_145_v1);
		}
		boolean string_array_deserializer_1_expr35_line_145 = string_array_deserializer_1_expr36_line_145
				&& string_array_deserializer_1_expr37_line_145;
		int PROBE_END_LINE_145 = 147;
		// Ok ok: if all we got is the default String deserializer, can just forget about it
        if (string_array_deserializer_1_expr35_line_145) {
            deser = null;
        }
        int PROBE_START_LINE_148 = 150;
		JsonDeserializer<String> f__element_deserializer_1487_line_148 = _elementDeserializer;
		JsonDeserializer<?> v_deser_1506_line_148 = deser;
		boolean string_array_deserializer_1_expr40_line_148 = f__element_deserializer_1487_line_148 != v_deser_1506_line_148;
		int PROBE_END_LINE_148 = 150;
		if (string_array_deserializer_1_expr40_line_148) {
            return new StringArrayDeserializer(deser);
        }
        return this;
    }
}
