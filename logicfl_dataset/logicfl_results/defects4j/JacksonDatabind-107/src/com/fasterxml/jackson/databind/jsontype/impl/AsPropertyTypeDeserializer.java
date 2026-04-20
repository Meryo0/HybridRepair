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
 * Type deserializer used with {@link As#PROPERTY}
 * inclusion mechanism.
 * Uses regular form (additional key/value entry before actual data)
 * when typed object is expressed as JSON Object; otherwise behaves similar to how
 * {@link As#WRAPPER_ARRAY} works.
 * Latter is used if JSON representation is polymorphic
 */
public class AsPropertyTypeDeserializer extends AsArrayTypeDeserializer
{
    private static final long serialVersionUID = 1L;

    protected final As _inclusion;

    /**
     * @since 2.8
     */
    public AsPropertyTypeDeserializer(JavaType bt, TypeIdResolver idRes,
            String typePropertyName, boolean typeIdVisible, JavaType defaultImpl)
    {
        this(bt, idRes, typePropertyName, typeIdVisible, defaultImpl, As.PROPERTY);
    }
    
    /**
     * @since 2.8
     */
    public AsPropertyTypeDeserializer(JavaType bt, TypeIdResolver idRes,
            String typePropertyName, boolean typeIdVisible, JavaType defaultImpl,
            As inclusion)
    {
        super(bt, idRes, typePropertyName, typeIdVisible, defaultImpl);
        int PROBE_START_LINE_44 = 44;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As p_inclusion_4564_line_44 = inclusion;
		int PROBE_END_LINE_44 = 44;
		_inclusion = p_inclusion_4564_line_44;
    }

    public AsPropertyTypeDeserializer(AsPropertyTypeDeserializer src, BeanProperty property) {
        super(src, property);
        _inclusion = src._inclusion;
    }
    
    @Override
    public TypeDeserializer forProperty(BeanProperty prop) {
        int PROBE_START_LINE_54 = 54;
		com.fasterxml.jackson.databind.BeanProperty p_prop_4568_line_54 = prop;
		com.fasterxml.jackson.databind.BeanProperty f__property_4534_line_54 = _property;
		boolean as_property_type_deserializer_1_expr7_line_54 = p_prop_4568_line_54 == f__property_4534_line_54;
		boolean as_property_type_deserializer_1_expr4_line_54 = (as_property_type_deserializer_1_expr7_line_54);
		com.fasterxml.jackson.databind.BeanProperty p_prop_4568_line_54_v1 = null;
		if (!as_property_type_deserializer_1_expr4_line_54) {
			p_prop_4568_line_54_v1 = prop;
		}
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer as_property_type_deserializer_1_expr3_line_54 = as_property_type_deserializer_1_expr4_line_54
				? this
				: new AsPropertyTypeDeserializer(this, p_prop_4568_line_54_v1);
		int PROBE_END_LINE_54 = 54;
		return as_property_type_deserializer_1_expr3_line_54;
    }
    
    @Override
    public As getTypeInclusion() { return _inclusion; }

    /**
     * This is the trickiest thing to handle, since property we are looking
     * for may be anywhere...
     */
    @Override
    @SuppressWarnings("resource")
    public Object deserializeTypedFromObject(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_69 = 74;
		com.fasterxml.jackson.core.JsonParser p_p_4569_line_69 = p;
		boolean as_property_type_deserializer_1_expr9_line_69 = p_p_4569_line_69.canReadTypeId();
		int PROBE_END_LINE_69 = 74;
		// 02-Aug-2013, tatu: May need to use native type ids
        if (as_property_type_deserializer_1_expr9_line_69) {
            Object typeId = p.getTypeId();
            if (typeId != null) {
                return _deserializeWithNativeTypeId(p, ctxt, typeId);
            }
        }
        
        int PROBE_START_LINE_77 = 77;
		com.fasterxml.jackson.core.JsonParser p_p_4569_line_77 = p;
		JsonToken as_property_type_deserializer_1_expr10_line_77 = p_p_4569_line_77.getCurrentToken();
		int PROBE_END_LINE_77 = 77;
		// but first, sanity check to ensure we have START_OBJECT or FIELD_NAME
        JsonToken t = as_property_type_deserializer_1_expr10_line_77;
        int PROBE_START_LINE_78 = 89;
		com.fasterxml.jackson.core.JsonToken v_t_4571_line_78 = t;
		com.fasterxml.jackson.core.JsonToken q_start_object_150_line_78 = JsonToken.START_OBJECT;
		boolean as_property_type_deserializer_1_expr11_line_78 = v_t_4571_line_78 == q_start_object_150_line_78;
		int PROBE_END_LINE_78 = 89;
		if (as_property_type_deserializer_1_expr11_line_78) {
            int PROBE_START_LINE_79 = 79;
			com.fasterxml.jackson.core.JsonParser p_p_4569_line_79 = p;
			com.fasterxml.jackson.core.JsonToken as_property_type_deserializer_1_expr13_line_79 = p_p_4569_line_79
					.nextToken();
			int PROBE_END_LINE_79 = 79;
			t = as_property_type_deserializer_1_expr13_line_79;
        } else if (/*t == JsonToken.START_ARRAY ||*/ t != JsonToken.FIELD_NAME) {
            /* This is most likely due to the fact that not all Java types are
             * serialized as JSON Objects; so if "as-property" inclusion is requested,
             * serialization of things like Lists must be instead handled as if
             * "as-wrapper-array" was requested.
             * But this can also be due to some custom handling: so, if "defaultImpl"
             * is defined, it will be asked to handle this case.
             */
            return _deserializeTypedUsingDefaultImpl(p, ctxt, null);
        }
        // Ok, let's try to find the property. But first, need token buffer...
        TokenBuffer tb = null;

        int PROBE_START_LINE_92 = 92;
		boolean FOR_STMT_TOGGLE_LINE_93 = false;
		int PROBE_END_LINE_92 = 92;
		for (; true;) {
            int PROBE_START_LINE_94 = 94;
			if (FOR_STMT_TOGGLE_LINE_93) {
				com.fasterxml.jackson.core.JsonParser p_p_4569_line_93 = p;
				com.fasterxml.jackson.core.JsonToken as_property_type_deserializer_1_expr16_line_93 = p_p_4569_line_93
						.nextToken();
				t = as_property_type_deserializer_1_expr16_line_93;
			} else {
				FOR_STMT_TOGGLE_LINE_93 = true;
			}
			com.fasterxml.jackson.core.JsonToken v_t_4571_line_93 = t;
			com.fasterxml.jackson.core.JsonToken q_field_name_151_line_93 = JsonToken.FIELD_NAME;
			boolean as_property_type_deserializer_1_expr14_line_93 = v_t_4571_line_93 == q_field_name_151_line_93;
			if (!(as_property_type_deserializer_1_expr14_line_93)) {
				break;
			}
			com.fasterxml.jackson.core.JsonParser p_p_4569_line_94 = p;
			String as_property_type_deserializer_1_expr17_line_94 = p_p_4569_line_94.getCurrentName();
			int PROBE_END_LINE_94 = 94;
			String name = as_property_type_deserializer_1_expr17_line_94;
            int PROBE_START_LINE_95 = 95;
			com.fasterxml.jackson.core.JsonParser p_p_4569_line_95 = p;
			int PROBE_END_LINE_95 = 95;
			p_p_4569_line_95.nextToken(); // to point to the value
            int PROBE_START_LINE_96 = 98;
			String v_name_4573_line_96 = name;
			String f__type_property_name_4574_line_96 = _typePropertyName;
			boolean as_property_type_deserializer_1_expr19_line_96 = v_name_4573_line_96
					.equals(f__type_property_name_4574_line_96);
			int PROBE_END_LINE_96 = 98;
			if (as_property_type_deserializer_1_expr19_line_96) { // gotcha!
                int PROBE_START_LINE_97 = 97;
				com.fasterxml.jackson.core.JsonParser p_p_4569_line_97 = p;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4570_line_97 = ctxt;
				com.fasterxml.jackson.databind.util.TokenBuffer v_tb_4572_line_97 = tb;
				Object as_property_type_deserializer_1_expr20_line_97 = _deserializeTypedForId(p_p_4569_line_97,
						p_ctxt_4570_line_97, v_tb_4572_line_97);
				int PROBE_END_LINE_97 = 97;
				return as_property_type_deserializer_1_expr20_line_97;
            }
            if (tb == null) {
                tb = new TokenBuffer(p, ctxt);
            }
            tb.writeFieldName(name);
            tb.copyCurrentStructure(p);
        }
        return _deserializeTypedUsingDefaultImpl(p, ctxt, tb);
    }

    @SuppressWarnings("resource")
    protected Object _deserializeTypedForId(JsonParser p, DeserializationContext ctxt,
            TokenBuffer tb) throws IOException
    {
        int PROBE_START_LINE_112 = 112;
		com.fasterxml.jackson.core.JsonParser p_p_4575_line_112 = p;
		String as_property_type_deserializer_1_expr21_line_112 = p_p_4575_line_112.getText();
		int PROBE_END_LINE_112 = 112;
		String typeId = as_property_type_deserializer_1_expr21_line_112;
        int PROBE_START_LINE_113 = 113;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4576_line_113 = ctxt;
		String v_type_id_4578_line_113 = typeId;
		JsonDeserializer<Object> as_property_type_deserializer_1_expr22_line_113 = _findDeserializer(
				p_ctxt_4576_line_113, v_type_id_4578_line_113);
		int PROBE_END_LINE_113 = 113;
		JsonDeserializer<Object> deser = as_property_type_deserializer_1_expr22_line_113;
        int PROBE_START_LINE_114 = 120;
		boolean f__type_id_visible_4548_line_114 = _typeIdVisible;
		int PROBE_END_LINE_114 = 120;
		if (f__type_id_visible_4548_line_114) { // need to merge id back in JSON input?
            if (tb == null) {
                tb = new TokenBuffer(p, ctxt);
            }
            tb.writeFieldName(p.getCurrentName());
            tb.writeString(typeId);
        }
        int PROBE_START_LINE_121 = 126;
		com.fasterxml.jackson.databind.util.TokenBuffer p_tb_4577_line_121 = tb;
		boolean as_property_type_deserializer_1_expr23_line_121 = p_tb_4577_line_121 != null;
		int PROBE_END_LINE_121 = 126;
		if (as_property_type_deserializer_1_expr23_line_121) { // need to put back skipped properties?
            // 02-Jul-2016, tatu: Depending on for JsonParserSequence is initialized it may
            //   try to access current token; ensure there isn't one
            p.clearCurrentToken();
            p = JsonParserSequence.createFlattened(false, tb.asParser(p), p);
        }
        int PROBE_START_LINE_128 = 128;
		com.fasterxml.jackson.core.JsonParser p_p_4575_line_128 = p;
		int PROBE_END_LINE_128 = 128;
		// Must point to the next value; tb had no current, jp pointed to VALUE_STRING:
        p_p_4575_line_128.nextToken(); // to skip past String value
        int PROBE_START_LINE_130 = 130;
		JsonDeserializer<Object> v_deser_4579_line_130 = deser;
		com.fasterxml.jackson.core.JsonParser p_p_4575_line_130 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4576_line_130 = ctxt;
		Object as_property_type_deserializer_1_expr25_line_130 = v_deser_4579_line_130.deserialize(p_p_4575_line_130,
				p_ctxt_4576_line_130);
		int PROBE_END_LINE_130 = 130;
		// deserializer should take care of closing END_OBJECT as well
        return as_property_type_deserializer_1_expr25_line_130;
    }
    
    // off-lined to keep main method lean and mean...
    @SuppressWarnings("resource")
    protected Object _deserializeTypedUsingDefaultImpl(JsonParser p,
            DeserializationContext ctxt, TokenBuffer tb) throws IOException
    {
        // May have default implementation to use
        JsonDeserializer<Object> deser = _findDefaultImplDeserializer(ctxt);
        if (deser == null) {
            // or, perhaps we just bumped into a "natural" value (boolean/int/double/String)?
            Object result = TypeDeserializer.deserializeIfNatural(p, ctxt, _baseType);
            if (result != null) {
                return result;
            }
            // or, something for which "as-property" won't work, changed into "wrapper-array" type:
            if (p.isExpectedStartArrayToken()) {
                return super.deserializeTypedFromAny(p, ctxt);
            }
            if (p.hasToken(JsonToken.VALUE_STRING)) {
                if (ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
                    String str = p.getText().trim();
                    if (str.isEmpty()) {
                        return null;
                    }
                }
            }
            String msg = String.format("missing type id property '%s'",
                    _typePropertyName);
            // even better, may know POJO property polymorphic value would be assigned to
            if (_property != null) {
                msg = String.format("%s (for POJO property '%s')", msg, _property.getName());
            }
            JavaType t = _handleMissingTypeId(ctxt, msg);
            if (t == null) {
                // 09-Mar-2017, tatu: Is this the right thing to do?
                return null;
            }
            // ... would this actually work?
            deser = ctxt.findContextualValueDeserializer(t, _property);
        }
        if (tb != null) {
            tb.writeEndObject();
            p = tb.asParser(p);
            // must move to point to the first token:
            p.nextToken();
        }
        return deser.deserialize(p, ctxt);
    }

    /* Also need to re-route "unknown" version. Need to think
     * this through bit more in future, but for now this does address issue and has
     * no negative side effects (at least within existing unit test suite).
     */
    @Override
    public Object deserializeTypedFromAny(JsonParser p, DeserializationContext ctxt) throws IOException {
        /* Sometimes, however, we get an array wrapper; specifically
         * when an array or list has been serialized with type information.
         */
        if (p.getCurrentToken() == JsonToken.START_ARRAY) {
            return super.deserializeTypedFromArray(p, ctxt);
        }
        return deserializeTypedFromObject(p, ctxt);
    }    
    
    // These are fine from base class:
    //public Object deserializeTypedFromArray(JsonParser jp, DeserializationContext ctxt)
    //public Object deserializeTypedFromScalar(JsonParser jp, DeserializationContext ctxt)    
}
