package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;
import java.util.Collection;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Simple deserializer that will call configured type deserializer, passing
 * in configured data deserializer, and exposing it all as a simple
 * deserializer.
 * This is necessary when there is no "parent" deserializer which could handle
 * details of calling a {@link TypeDeserializer}, most commonly used with
 * root values.
 */
public final class TypeWrappedDeserializer
    extends JsonDeserializer<Object>
    implements java.io.Serializable // since 2.5
{
    private static final long serialVersionUID = 1L;

    final protected TypeDeserializer _typeDeserializer;
    final protected JsonDeserializer<Object> _deserializer;

    @SuppressWarnings("unchecked")
    public TypeWrappedDeserializer(TypeDeserializer typeDeser, JsonDeserializer<?> deser)
    {
        super();
        int PROBE_START_LINE_31 = 31;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deser_2790_line_31 = typeDeser;
		int PROBE_END_LINE_31 = 31;
		_typeDeserializer = p_type_deser_2790_line_31;
        int PROBE_START_LINE_32 = 32;
		JsonDeserializer<?> p_deser_2791_line_32 = deser;
		int PROBE_END_LINE_32 = 32;
		_deserializer = (JsonDeserializer<Object>) p_deser_2791_line_32;
    }

    @Override
    public Class<?> handledType() {
        return _deserializer.handledType();
    }

    @Override // since 2.9
    public Boolean supportsUpdate(DeserializationConfig config) {
        return _deserializer.supportsUpdate(config);
    }
    
    @Override
    public JsonDeserializer<?> getDelegatee() {
        return _deserializer.getDelegatee();
    }

    @Override
    public Collection<Object> getKnownPropertyNames() {
        return _deserializer.getKnownPropertyNames();
    }

    @Override
    public Object getNullValue(DeserializationContext ctxt) throws JsonMappingException {
        return _deserializer.getNullValue(ctxt);
    }

    @Override
    public Object getEmptyValue(DeserializationContext ctxt) throws JsonMappingException {
        return _deserializer.getEmptyValue(ctxt);
    }
    
    @Override
    public Object deserialize(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_68 = 68;
		JsonDeserializer<Object> f__deserializer_2793_line_68 = _deserializer;
		com.fasterxml.jackson.core.JsonParser p_p_2797_line_68 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2798_line_68 = ctxt;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer f__type_deserializer_2792_line_68 = _typeDeserializer;
		Object type_wrapped_deserializer_1_expr5_line_68 = f__deserializer_2793_line_68
				.deserializeWithType(p_p_2797_line_68, p_ctxt_2798_line_68, f__type_deserializer_2792_line_68);
		int PROBE_END_LINE_68 = 68;
		return type_wrapped_deserializer_1_expr5_line_68;
    }

    @Override
    public Object deserializeWithType(JsonParser p, DeserializationContext ctxt,
        TypeDeserializer typeDeserializer) throws IOException
    {
        // should never happen? (if it can, could call on that object)
        throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
    }

    @Override
    public Object deserialize(JsonParser p, DeserializationContext ctxt,
            Object intoValue) throws IOException
    {
        /* 01-Mar-2013, tatu: Hmmh. Tough call as to what to do... need
         *   to delegate, but will this work reliably? Let's just hope so:
         */
        return _deserializer.deserialize(p,  ctxt, intoValue);
    }
}
