package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.exc.InvalidNullException;
import com.fasterxml.jackson.databind.util.AccessPattern;

/**
 * Simple {@link NullValueProvider} that will always throw a
 * {@link InvalidNullException} when a null is encountered.
 */
public class NullsConstantProvider
    implements NullValueProvider, java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    private final static NullsConstantProvider SKIPPER = new NullsConstantProvider(null);

    private final static NullsConstantProvider NULLER = new NullsConstantProvider(null);
    
    protected final Object _nullValue;

    protected final AccessPattern _access;

    protected NullsConstantProvider(Object nvl) {
        int PROBE_START_LINE_26 = 26;
		Object p_nvl_2783_line_26 = nvl;
		int PROBE_END_LINE_26 = 26;
		_nullValue = p_nvl_2783_line_26;
        int PROBE_START_LINE_27 = 28;
		Object f__null_value_2784_line_27 = _nullValue;
		boolean nulls_constant_provider_1_expr7_line_27 = f__null_value_2784_line_27 == null;
		boolean nulls_constant_provider_1_expr6_line_27 = (nulls_constant_provider_1_expr7_line_27);
		com.fasterxml.jackson.databind.util.AccessPattern q_always_null_91_line_27 = null;
		if (nulls_constant_provider_1_expr6_line_27) {
			q_always_null_91_line_27 = AccessPattern.ALWAYS_NULL;
		}
		com.fasterxml.jackson.databind.util.AccessPattern nulls_constant_provider_1_expr5_line_27 = nulls_constant_provider_1_expr6_line_27
				? q_always_null_91_line_27
				: AccessPattern.CONSTANT;
		int PROBE_END_LINE_27 = 28;
		_access = nulls_constant_provider_1_expr5_line_27;
    }

    /**
     * Static accessor for a stateless instance used as marker, to indicate
     * that all input `null` values should be skipped (ignored), so that
     * no corresponding property value is set (with POJOs), and no content
     * values (array/Collection elements, Map entries) are added.
     */
    public static NullsConstantProvider skipper() {
        return SKIPPER;
    }

    public static NullsConstantProvider nuller() {
        return NULLER;
    }

    public static NullsConstantProvider forValue(Object nvl) {
        if (nvl == null) {
            return NULLER;
        }
        return new NullsConstantProvider(nvl);
    }

    /**
     * Utility method that can be used to check if given null value provider
     * is "skipper", marker provider that means that all input `null`s should
     * be skipped (ignored), instead of converted
     */
    public static boolean isSkipper(NullValueProvider p) {
        int PROBE_START_LINE_58 = 58;
		com.fasterxml.jackson.databind.deser.NullValueProvider p_p_2787_line_58 = p;
		com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider f_skipper_2781_line_58 = SKIPPER;
		boolean nulls_constant_provider_1_expr9_line_58 = p_p_2787_line_58 == f_skipper_2781_line_58;
		boolean nulls_constant_provider_1_expr8_line_58 = (nulls_constant_provider_1_expr9_line_58);
		int PROBE_END_LINE_58 = 58;
		return nulls_constant_provider_1_expr8_line_58;
    }

    /**
     * Utility method that can be used to check if given null value provider
     * is "nuller", no-operation provider that will always simply return
     * Java `null` for any and all input `null`s.
     */
    public static boolean isNuller(NullValueProvider p) {
        return (p == NULLER);
    }
    
    @Override
    public AccessPattern getNullAccessPattern() {
        return _access;
    }
    
    @Override
    public Object getNullValue(DeserializationContext ctxt) {
        return _nullValue;
    }
}
