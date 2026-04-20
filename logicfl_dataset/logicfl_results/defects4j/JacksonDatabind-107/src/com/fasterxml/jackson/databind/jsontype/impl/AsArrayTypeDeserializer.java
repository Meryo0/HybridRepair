package com.fasterxml.jackson.databind.jsontype.impl;

import java.io.IOException;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.core.util.JsonParserSequence;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Type deserializer used with {@link As#WRAPPER_ARRAY}
 * inclusion mechanism. Simple since JSON structure used is always
 * the same, regardless of structure used for actual value: wrapping
 * is done using a 2-element JSON Array where type id is the first
 * element, and actual object data as second element.
 */
public class AsArrayTypeDeserializer
    extends TypeDeserializerBase
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * @since 2.8
     */
    public AsArrayTypeDeserializer(JavaType bt, TypeIdResolver idRes,
            String typePropertyName, boolean typeIdVisible, JavaType defaultImpl)
    {
        super(bt, idRes, typePropertyName, typeIdVisible, defaultImpl);
    }

    public AsArrayTypeDeserializer(AsArrayTypeDeserializer src, BeanProperty property) {
        super(src, property);
    }
    
    @Override
    public TypeDeserializer forProperty(BeanProperty prop) {
        int PROBE_START_LINE_42 = 42;
		com.fasterxml.jackson.databind.BeanProperty p_prop_4533_line_42 = prop;
		com.fasterxml.jackson.databind.BeanProperty f__property_4534_line_42 = _property;
		boolean as_array_type_deserializer_1_expr7_line_42 = p_prop_4533_line_42 == f__property_4534_line_42;
		boolean as_array_type_deserializer_1_expr4_line_42 = (as_array_type_deserializer_1_expr7_line_42);
		com.fasterxml.jackson.databind.BeanProperty p_prop_4533_line_42_v1 = null;
		if (!as_array_type_deserializer_1_expr4_line_42) {
			p_prop_4533_line_42_v1 = prop;
		}
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer as_array_type_deserializer_1_expr3_line_42 = as_array_type_deserializer_1_expr4_line_42
				? this
				: new AsArrayTypeDeserializer(this, p_prop_4533_line_42_v1);
		int PROBE_END_LINE_42 = 42;
		// usually if it's null:
        return as_array_type_deserializer_1_expr3_line_42;
    }
    
    @Override
    public As getTypeInclusion() { int PROBE_START_LINE_46 = 46;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As q_wrapper_array_149_line_46 = As.WRAPPER_ARRAY;
		int PROBE_END_LINE_46 = 46;
	return q_wrapper_array_149_line_46; }

    /**
     * Method called when actual object is serialized as JSON Array.
     */
    @Override
    public Object deserializeTypedFromArray(JsonParser jp, DeserializationContext ctxt) throws IOException {
        int PROBE_START_LINE_53 = 53;
		com.fasterxml.jackson.core.JsonParser p_jp_4535_line_53 = jp;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4536_line_53 = ctxt;
		Object as_array_type_deserializer_1_expr9_line_53 = _deserialize(p_jp_4535_line_53, p_ctxt_4536_line_53);
		int PROBE_END_LINE_53 = 53;
		return as_array_type_deserializer_1_expr9_line_53;
    }

    /**
     * Method called when actual object is serialized as JSON Object
     */
    @Override
    public Object deserializeTypedFromObject(JsonParser jp, DeserializationContext ctxt) throws IOException {
        return _deserialize(jp, ctxt);
    }
    
    @Override
    public Object deserializeTypedFromScalar(JsonParser jp, DeserializationContext ctxt) throws IOException {
        return _deserialize(jp, ctxt);
    }    

    @Override
    public Object deserializeTypedFromAny(JsonParser jp, DeserializationContext ctxt) throws IOException {
        int PROBE_START_LINE_71 = 71;
		com.fasterxml.jackson.core.JsonParser p_jp_4541_line_71 = jp;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4542_line_71 = ctxt;
		Object as_array_type_deserializer_1_expr10_line_71 = _deserialize(p_jp_4541_line_71, p_ctxt_4542_line_71);
		int PROBE_END_LINE_71 = 71;
		return as_array_type_deserializer_1_expr10_line_71;
    }    
    
    /*
    /***************************************************************
    /* Internal methods
    /***************************************************************
     */

    /**
     * Method that handles type information wrapper, locates actual
     * subtype deserializer to use, and calls it to do actual
     * deserialization.
     */
    @SuppressWarnings("resource")
    protected Object _deserialize(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_89 = 94;
		com.fasterxml.jackson.core.JsonParser p_p_4543_line_89 = p;
		boolean as_array_type_deserializer_1_expr11_line_89 = p_p_4543_line_89.canReadTypeId();
		int PROBE_END_LINE_89 = 94;
		// 02-Aug-2013, tatu: May need to use native type ids
        if (as_array_type_deserializer_1_expr11_line_89) {
            Object typeId = p.getTypeId();
            if (typeId != null) {
                return _deserializeWithNativeTypeId(p, ctxt, typeId);
            }
        }
        int PROBE_START_LINE_95 = 95;
		com.fasterxml.jackson.core.JsonParser p_p_4543_line_95 = p;
		boolean as_array_type_deserializer_1_expr12_line_95 = p_p_4543_line_95.isExpectedStartArrayToken();
		int PROBE_END_LINE_95 = 95;
		boolean hadStartArray = as_array_type_deserializer_1_expr12_line_95;
        int PROBE_START_LINE_96 = 96;
		com.fasterxml.jackson.core.JsonParser p_p_4543_line_96 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4544_line_96 = ctxt;
		String as_array_type_deserializer_1_expr13_line_96 = _locateTypeId(p_p_4543_line_96, p_ctxt_4544_line_96);
		int PROBE_END_LINE_96 = 96;
		String typeId = as_array_type_deserializer_1_expr13_line_96;
        int PROBE_START_LINE_97 = 97;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4544_line_97 = ctxt;
		String v_type_id_4546_line_97 = typeId;
		JsonDeserializer<Object> as_array_type_deserializer_1_expr14_line_97 = _findDeserializer(p_ctxt_4544_line_97,
				v_type_id_4546_line_97);
		int PROBE_END_LINE_97 = 97;
		JsonDeserializer<Object> deser = as_array_type_deserializer_1_expr14_line_97;
        int PROBE_START_LINE_99 = 115;
		boolean f__type_id_visible_4548_line_99 = _typeIdVisible;
		boolean as_array_type_deserializer_1_expr15_line_99 = f__type_id_visible_4548_line_99 && !_usesExternalId()
				&& p.getCurrentToken() == JsonToken.START_OBJECT;
		int PROBE_END_LINE_99 = 115;
		// Minor complication: we may need to merge type id in?
        if (as_array_type_deserializer_1_expr15_line_99) {
            // but what if there's nowhere to add it in? Error? Or skip? For now, skip.
            TokenBuffer tb = new TokenBuffer(null, false);
            tb.writeStartObject(); // recreate START_OBJECT
            tb.writeFieldName(_typePropertyName);
            tb.writeString(typeId);
            // 02-Jul-2016, tatu: Depending on for JsonParserSequence is initialized it may
            //   try to access current token; ensure there isn't one
            p.clearCurrentToken();
            p = JsonParserSequence.createFlattened(false, tb.asParser(p), p);
            p.nextToken();
        }
        int PROBE_START_LINE_116 = 116;
		JsonDeserializer<Object> v_deser_4547_line_116 = deser;
		com.fasterxml.jackson.core.JsonParser p_p_4543_line_116 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4544_line_116 = ctxt;
		Object as_array_type_deserializer_1_expr16_line_116 = v_deser_4547_line_116.deserialize(p_p_4543_line_116,
				p_ctxt_4544_line_116);
		int PROBE_END_LINE_116 = 116;
		Object value = as_array_type_deserializer_1_expr16_line_116;
        int PROBE_START_LINE_118 = 125;
		boolean v_had_start_array_4545_line_118 = hadStartArray;
		boolean as_array_type_deserializer_1_expr18_line_118 = true;
		if (v_had_start_array_4545_line_118) {
			com.fasterxml.jackson.core.JsonParser p_p_4543_line_118 = p;
			com.fasterxml.jackson.core.JsonToken as_array_type_deserializer_1_expr19_line_118 = p_p_4543_line_118
					.nextToken();
			com.fasterxml.jackson.core.JsonToken q_end_array_150_line_118 = JsonToken.END_ARRAY;
			as_array_type_deserializer_1_expr18_line_118 = as_array_type_deserializer_1_expr19_line_118 != q_end_array_150_line_118;
		}
		boolean as_array_type_deserializer_1_expr17_line_118 = v_had_start_array_4545_line_118
				&& as_array_type_deserializer_1_expr18_line_118;
		int PROBE_END_LINE_118 = 125;
		// And then need the closing END_ARRAY
        if (as_array_type_deserializer_1_expr17_line_118) {
            ctxt.reportWrongTokenException(baseType(), JsonToken.END_ARRAY,
                    "expected closing END_ARRAY after type information and deserialized value");
            // 05-May-2016, tatu: Not 100% what to do if exception is stored for
            //     future, and not thrown immediately: should probably skip until END_ARRAY

            // ... but for now, fall through
        }
        int PROBE_START_LINE_126 = 126;
		Object v_value_4549_line_126 = value;
		int PROBE_END_LINE_126 = 126;
		return v_value_4549_line_126;
    }    
    
    protected String _locateTypeId(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_131 = 140;
		com.fasterxml.jackson.core.JsonParser p_p_4550_line_131 = p;
		boolean as_array_type_deserializer_1_expr21_line_131 = p_p_4550_line_131.isExpectedStartArrayToken();
		boolean as_array_type_deserializer_1_expr20_line_131 = !as_array_type_deserializer_1_expr21_line_131;
		int PROBE_END_LINE_131 = 140;
		if (as_array_type_deserializer_1_expr20_line_131) {
            // Need to allow even more customized handling, if something unexpected seen...
            // but should there be a way to limit this to likely success cases?
            if (_defaultImpl != null) {
                return _idResolver.idFromBaseType();
            }
             ctxt.reportWrongTokenException(baseType(), JsonToken.START_ARRAY,
                     "need JSON Array to contain As.WRAPPER_ARRAY type information for class "+baseTypeName());
             return null;
        }
        int PROBE_START_LINE_142 = 142;
		com.fasterxml.jackson.core.JsonParser p_p_4550_line_142 = p;
		JsonToken as_array_type_deserializer_1_expr22_line_142 = p_p_4550_line_142.nextToken();
		int PROBE_END_LINE_142 = 142;
		// And then type id as a String
        JsonToken t = as_array_type_deserializer_1_expr22_line_142;
        int PROBE_START_LINE_143 = 147;
		com.fasterxml.jackson.core.JsonToken v_t_4552_line_143 = t;
		com.fasterxml.jackson.core.JsonToken q_value_string_150_line_143 = JsonToken.VALUE_STRING;
		boolean as_array_type_deserializer_1_expr23_line_143 = v_t_4552_line_143 == q_value_string_150_line_143;
		int PROBE_END_LINE_143 = 147;
		if (as_array_type_deserializer_1_expr23_line_143) {
            int PROBE_START_LINE_144 = 144;
			com.fasterxml.jackson.core.JsonParser p_p_4550_line_144 = p;
			String as_array_type_deserializer_1_expr24_line_144 = p_p_4550_line_144.getText();
			int PROBE_END_LINE_144 = 144;
			String result = as_array_type_deserializer_1_expr24_line_144;
            int PROBE_START_LINE_145 = 145;
			com.fasterxml.jackson.core.JsonParser p_p_4550_line_145 = p;
			int PROBE_END_LINE_145 = 145;
			p_p_4550_line_145.nextToken();
            int PROBE_START_LINE_146 = 146;
			String v_result_4553_line_146 = result;
			int PROBE_END_LINE_146 = 146;
			return v_result_4553_line_146;
        }
        if (_defaultImpl != null) {
            return _idResolver.idFromBaseType();
        }
        ctxt.reportWrongTokenException(baseType(), JsonToken.VALUE_STRING,
                "need JSON String that contains type id (for subtype of %s)", baseTypeName());
        return null;
    }

    /**
     * @since 2.5
     */
    protected boolean _usesExternalId() {
        return false;
    }
}
