package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;

/**
 * Special bogus "serializer" that will throw
 * {@link JsonMappingException} if an attempt is made to deserialize
 * a value. This is used as placeholder to avoid NPEs for uninitialized
 * structured serializers or handlers.
 */
public class FailingDeserializer extends StdDeserializer<Object>
{
    private static final long serialVersionUID = 1L;

    protected final String _message;

    public FailingDeserializer(String m) {
        super(Object.class);
        int PROBE_START_LINE_22 = 22;
		String p_m_2163_line_22 = m;
		int PROBE_END_LINE_22 = 22;
		_message = p_m_2163_line_22;
    }
    
    @Override
    public Object deserialize(JsonParser jp, DeserializationContext ctxt) throws JsonMappingException{
        throw ctxt.mappingException(_message);
    }
}
