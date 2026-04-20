package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;

/**
 * To support [JACKSON-420] we need bit more indirection; this is used to produce
 * artificial failure for primitives that don't accept JSON null as value.
 */
public final class NullProvider
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    private final Object _nullValue;

    private final boolean _isPrimitive;
    
    private final Class<?> _rawType;
    
    public NullProvider(JavaType type, Object nullValue)
    {
        int PROBE_START_LINE_25 = 25;
		Object p_null_value_2194_line_25 = nullValue;
		int PROBE_END_LINE_25 = 25;
		_nullValue = p_null_value_2194_line_25;
        int PROBE_START_LINE_27 = 27;
		com.fasterxml.jackson.databind.JavaType p_type_2193_line_27 = type;
		boolean null_provider_1_expr3_line_27 = p_type_2193_line_27.isPrimitive();
		int PROBE_END_LINE_27 = 27;
		// [JACKSON-420]
        _isPrimitive = null_provider_1_expr3_line_27;
        int PROBE_START_LINE_28 = 28;
		com.fasterxml.jackson.databind.JavaType p_type_2193_line_28 = type;
		Class<?> null_provider_1_expr5_line_28 = p_type_2193_line_28.getRawClass();
		int PROBE_END_LINE_28 = 28;
		_rawType = null_provider_1_expr5_line_28;
    }

    public Object nullValue(DeserializationContext ctxt) throws JsonProcessingException
    {
        if (_isPrimitive && ctxt.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
            throw ctxt.mappingException("Can not map JSON null into type "+_rawType.getName()
                    +" (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)");
        }
        return _nullValue;
    }
}