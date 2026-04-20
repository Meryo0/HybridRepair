package com.fasterxml.jackson.databind.deser.std;

import java.io.IOException;

import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

@JacksonStdImpl
public class StringDeserializer extends StdScalarDeserializer<String> // non-final since 2.9
{
    private static final long serialVersionUID = 1L;

    /**
     * @since 2.2
     */
    public final static StringDeserializer instance = new StringDeserializer();

    public StringDeserializer() { super(String.class); }

    // since 2.6, slightly faster lookups for this very common type
    @Override
    public boolean isCachable() { return true; }

    @Override // since 2.9
    public Object getEmptyValue(DeserializationContext ctxt) throws JsonMappingException {
        return "";
    }

    @Override
    public String deserialize(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_34 = 36;
		com.fasterxml.jackson.core.JsonParser p_p_3272_line_34 = p;
		com.fasterxml.jackson.core.JsonToken q_value_string_99_line_34 = JsonToken.VALUE_STRING;
		boolean string_deserializer_1_expr4_line_34 = p_p_3272_line_34.hasToken(q_value_string_99_line_34);
		int PROBE_END_LINE_34 = 36;
		if (string_deserializer_1_expr4_line_34) {
            int PROBE_START_LINE_35 = 35;
			com.fasterxml.jackson.core.JsonParser p_p_3272_line_35 = p;
			String string_deserializer_1_expr5_line_35 = p_p_3272_line_35.getText();
			int PROBE_END_LINE_35 = 35;
			return string_deserializer_1_expr5_line_35;
        }
        JsonToken t = p.getCurrentToken();
        // [databind#381]
        if (t == JsonToken.START_ARRAY) {
            return _deserializeFromArray(p, ctxt);
        }
        // need to gracefully handle byte[] data, as base64
        if (t == JsonToken.VALUE_EMBEDDED_OBJECT) {
            Object ob = p.getEmbeddedObject();
            if (ob == null) {
                return null;
            }
            if (ob instanceof byte[]) {
                return ctxt.getBase64Variant().encode((byte[]) ob, false);
            }
            // otherwise, try conversion using toString()...
            return ob.toString();
        }
        // allow coercions for other scalar types
        // 17-Jan-2018, tatu: Related to [databind#1853] avoid FIELD_NAME by ensuring it's
        //   "real" scalar
        if (t.isScalarValue()) {
            String text = p.getValueAsString();
            if (text != null) {
                return text;
            }
        }
        return (String) ctxt.handleUnexpectedToken(_valueClass, p);
    }

    // Since we can never have type info ("natural type"; String, Boolean, Integer, Double):
    // (is it an error to even call this version?)
    @Override
    public String deserializeWithType(JsonParser p, DeserializationContext ctxt,
            TypeDeserializer typeDeserializer) throws IOException {
        return deserialize(p, ctxt);
    }
}
