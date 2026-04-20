package com.fasterxml.jackson.databind.deser.std;

import java.io.IOException;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.BeanDeserializerBase;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.NullsAsEmptyProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsFailProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.annotation.JsonFormat.Feature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyMetadata;

/**
 * Base class for common deserializers. Contains shared
 * base functionality for dealing with primitive values, such
 * as (re)parsing from String.
 */
public abstract class StdDeserializer<T>
    extends JsonDeserializer<T>
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * Bitmask that covers {@link DeserializationFeature#USE_BIG_INTEGER_FOR_INTS}
     * and {@link DeserializationFeature#USE_LONG_FOR_INTS}, used for more efficient
     * cheks when coercing integral values for untyped deserialization.
     *
     * @since 2.6
     */
    protected final static int F_MASK_INT_COERCIONS = 
            DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.getMask()
            | DeserializationFeature.USE_LONG_FOR_INTS.getMask();

    // @since 2.9
    protected final static int F_MASK_ACCEPT_ARRAYS =
            DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS.getMask() |
            DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT.getMask();

    
    /**
     * Type of values this deserializer handles: sometimes
     * exact types, other time most specific supertype of
     * types deserializer handles (which may be as generic
     * as {@link Object} in some case)
     */
    final protected Class<?> _valueClass;

    protected StdDeserializer(Class<?> vc) {
        int PROBE_START_LINE_62 = 62;
		Class<?> p_vc_3058_line_62 = vc;
		int PROBE_END_LINE_62 = 62;
		_valueClass = p_vc_3058_line_62;
    }

    protected StdDeserializer(JavaType valueType) {
        int PROBE_START_LINE_67 = 67;
		com.fasterxml.jackson.databind.JavaType p_value_type_3060_line_67 = valueType;
		boolean std_deserializer_1_expr9_line_67 = p_value_type_3060_line_67 == null;
		boolean std_deserializer_1_expr6_line_67 = (std_deserializer_1_expr9_line_67);
		Class<?> std_deserializer_1_expr8_line_67 = null;
		if (!std_deserializer_1_expr6_line_67) {
			com.fasterxml.jackson.databind.JavaType p_value_type_3060_line_67_v1 = valueType;
			std_deserializer_1_expr8_line_67 = p_value_type_3060_line_67_v1.getRawClass();
		}
		Class<?> std_deserializer_1_expr5_line_67 = std_deserializer_1_expr6_line_67
				? Object.class
				: std_deserializer_1_expr8_line_67;
		int PROBE_END_LINE_67 = 67;
		// 26-Sep-2017, tatu: [databind#1764] need to add null-check back until 3.x
        _valueClass = std_deserializer_1_expr5_line_67;
    }

    /**
     * Copy-constructor for sub-classes to use, most often when creating
     * new instances for {@link com.fasterxml.jackson.databind.deser.ContextualDeserializer}.
     * 
     * @since 2.5
     */
    protected StdDeserializer(StdDeserializer<?> src) {
        _valueClass = src._valueClass;
    }

    /*
    /**********************************************************
    /* Accessors
    /**********************************************************
     */
    
    @Override
    public Class<?> handledType() { return _valueClass; }
    
    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */

    /**
     * @deprecated Since 2.3 use {@link #handledType} instead
     */
    @Deprecated
    public final Class<?> getValueClass() { return _valueClass; }

    /**
     * Exact structured type this deserializer handles, if known.
     *<p>
     * Default implementation just returns null.
     */
    public JavaType getValueType() { return null; }

    /**
     * Method that can be called to determine if given deserializer is the default
     * deserializer Jackson uses; as opposed to a custom deserializer installed by
     * a module or calling application. Determination is done using
     * {@link JacksonStdImpl} annotation on deserializer class.
     */
    protected boolean isDefaultDeserializer(JsonDeserializer<?> deserializer) {
        return ClassUtil.isJacksonStdImpl(deserializer);
    }

    protected boolean isDefaultKeyDeserializer(KeyDeserializer keyDeser) {
        return ClassUtil.isJacksonStdImpl(keyDeser);
    }
    
    /*
    /**********************************************************
    /* Partial JsonDeserializer implementation 
    /**********************************************************
     */
    
    /**
     * Base implementation that does not assume specific type
     * inclusion mechanism. Sub-classes are expected to override
     * this method if they are to handle type information.
     */
    @Override
    public Object deserializeWithType(JsonParser p, DeserializationContext ctxt,
            TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromAny(p, ctxt);
    }

    /*
    /**********************************************************
    /* Helper methods for sub-classes, parsing: while mostly
    /* useful for numeric types, can be also useful for dealing
    /* with things serialized as numbers (such as Dates).
    /**********************************************************
     */

    protected final boolean _parseBooleanPrimitive(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        JsonToken t = p.getCurrentToken();
        if (t == JsonToken.VALUE_TRUE) return true;
        if (t == JsonToken.VALUE_FALSE) return false;
        if (t == JsonToken.VALUE_NULL) {
            _verifyNullForPrimitive(ctxt);
            return false;
        }

        // should accept ints too, (0 == false, otherwise true)
        if (t == JsonToken.VALUE_NUMBER_INT) {
            return _parseBooleanFromInt(p, ctxt);
        }
        // And finally, let's allow Strings to be converted too
        if (t == JsonToken.VALUE_STRING) {
            String text = p.getText().trim();
            // [databind#422]: Allow aliases
            if ("true".equals(text) || "True".equals(text)) {
                return true;
            }
            if ("false".equals(text) || "False".equals(text)) {
                return false;
            }
            if (_isEmptyOrTextualNull(text)) {
                _verifyNullForPrimitiveCoercion(ctxt, text);
                return false;
            }
            Boolean b = (Boolean) ctxt.handleWeirdStringValue(_valueClass, text,
                    "only \"true\" or \"false\" recognized");
            return Boolean.TRUE.equals(b);
        }
        // [databind#381]
        if (t == JsonToken.START_ARRAY && ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            p.nextToken();
            final boolean parsed = _parseBooleanPrimitive(p, ctxt);
            _verifyEndArrayForSingle(p, ctxt);
            return parsed;            
        }
        // Otherwise, no can do:
        return ((Boolean) ctxt.handleUnexpectedToken(_valueClass, p)).booleanValue();
    }

    protected boolean _parseBooleanFromInt(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        // 13-Oct-2016, tatu: As per [databind#1324], need to be careful wrt
        //    degenerate case of huge integers, legal in JSON.
        //  ... this is, on the other hand, probably wrong/sub-optimal for non-JSON
        //  input. For now, no rea
        _verifyNumberForScalarCoercion(ctxt, p);
        // Anyway, note that since we know it's valid (JSON) integer, it can't have
        // extra whitespace to trim.
        return !"0".equals(p.getText());
    }

    protected final byte _parseBytePrimitive(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        int value = _parseIntPrimitive(p, ctxt);
        // So far so good: but does it fit?
        if (_byteOverflow(value)) {
            Number v = (Number) ctxt.handleWeirdStringValue(_valueClass, String.valueOf(value),
                    "overflow, value cannot be represented as 8-bit value");
            return _nonNullNumber(v).byteValue();
        }
        return (byte) value;
    }

    protected final short _parseShortPrimitive(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        int value = _parseIntPrimitive(p, ctxt);
        // So far so good: but does it fit?
        if (_shortOverflow(value)) {
            Number v = (Number) ctxt.handleWeirdStringValue(_valueClass, String.valueOf(value),
                    "overflow, value cannot be represented as 16-bit value");
            return _nonNullNumber(v).shortValue();
        }
        return (short) value;
    }

    protected final int _parseIntPrimitive(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        if (p.hasToken(JsonToken.VALUE_NUMBER_INT)) {
            return p.getIntValue();
        }
        switch (p.getCurrentTokenId()) {
        case JsonTokenId.ID_STRING:
            String text = p.getText().trim();
            if (_isEmptyOrTextualNull(text)) {
                _verifyNullForPrimitiveCoercion(ctxt, text);
                return 0;
            }
            return _parseIntPrimitive(ctxt, text);
        case JsonTokenId.ID_NUMBER_FLOAT:
            if (!ctxt.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                _failDoubleToIntCoercion(p, ctxt, "int");
            }
            return p.getValueAsInt();
        case JsonTokenId.ID_NULL:
            _verifyNullForPrimitive(ctxt);
            return 0;
        case JsonTokenId.ID_START_ARRAY:
            if (ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                p.nextToken();
                final int parsed = _parseIntPrimitive(p, ctxt);
                _verifyEndArrayForSingle(p, ctxt);
                return parsed;            
            }
            break;
        default:
        }
        // Otherwise, no can do:
        return ((Number) ctxt.handleUnexpectedToken(_valueClass, p)).intValue();
    }

    /**
     * @since 2.9
     */
    protected final int _parseIntPrimitive(DeserializationContext ctxt, String text) throws IOException
    {
        try {
            if (text.length() > 9) {
                long l = Long.parseLong(text);
                if (_intOverflow(l)) {
                    Number v = (Number) ctxt.handleWeirdStringValue(_valueClass, text,
                        "Overflow: numeric value (%s) out of range of int (%d -%d)",
                        text, Integer.MIN_VALUE, Integer.MAX_VALUE);
                    return _nonNullNumber(v).intValue();
                }
                return (int) l;
            }
            return NumberInput.parseInt(text);
        } catch (IllegalArgumentException iae) {
            Number v = (Number) ctxt.handleWeirdStringValue(_valueClass, text,
                    "not a valid int value");
            return _nonNullNumber(v).intValue();
        }
    }
    
    protected final long _parseLongPrimitive(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        if (p.hasToken(JsonToken.VALUE_NUMBER_INT)) {
            return p.getLongValue();
        }
        switch (p.getCurrentTokenId()) {
        case JsonTokenId.ID_STRING:
            String text = p.getText().trim();
            if (_isEmptyOrTextualNull(text)) {
                _verifyNullForPrimitiveCoercion(ctxt, text);
                return 0L;
            }
            return _parseLongPrimitive(ctxt, text);
        case JsonTokenId.ID_NUMBER_FLOAT:
            if (!ctxt.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                _failDoubleToIntCoercion(p, ctxt, "long");
            }
            return p.getValueAsLong();
        case JsonTokenId.ID_NULL:
            _verifyNullForPrimitive(ctxt);
            return 0L;
        case JsonTokenId.ID_START_ARRAY:
            if (ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                p.nextToken();
                final long parsed = _parseLongPrimitive(p, ctxt);
                _verifyEndArrayForSingle(p, ctxt);
                return parsed;
            }
            break;
        }
        return ((Number) ctxt.handleUnexpectedToken(_valueClass, p)).longValue();
    }

    /**
     * @since 2.9
     */
    protected final long _parseLongPrimitive(DeserializationContext ctxt, String text) throws IOException
    {
        try {
            return NumberInput.parseLong(text);
        } catch (IllegalArgumentException iae) { }
        {
            Number v = (Number) ctxt.handleWeirdStringValue(_valueClass, text,
                    "not a valid long value");
            return _nonNullNumber(v).longValue();
        }
    }

    protected final float _parseFloatPrimitive(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        if (p.hasToken(JsonToken.VALUE_NUMBER_FLOAT)) {
            return p.getFloatValue();
        }
        switch (p.getCurrentTokenId()) {
        case JsonTokenId.ID_STRING:
            String text = p.getText().trim();
            if (_isEmptyOrTextualNull(text)) {
                _verifyNullForPrimitiveCoercion(ctxt, text);
                return 0.0f;
            }
            return _parseFloatPrimitive(ctxt, text);
        case JsonTokenId.ID_NUMBER_INT:
            return p.getFloatValue();
        case JsonTokenId.ID_NULL:
            _verifyNullForPrimitive(ctxt);
            return 0.0f;
        case JsonTokenId.ID_START_ARRAY:
            if (ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                p.nextToken();
                final float parsed = _parseFloatPrimitive(p, ctxt);
                _verifyEndArrayForSingle(p, ctxt);
                return parsed;            
            }
            break;
        }
        // Otherwise, no can do:
        return ((Number) ctxt.handleUnexpectedToken(_valueClass, p)).floatValue();
    }

    /**
     * @since 2.9
     */
    protected final float _parseFloatPrimitive(DeserializationContext ctxt, String text)
        throws IOException
    {
        switch (text.charAt(0)) {
        case 'I':
            if (_isPosInf(text)) {
                return Float.POSITIVE_INFINITY;
            }
            break;
        case 'N':
            if (_isNaN(text)) { return Float.NaN; }
            break;
        case '-':
            if (_isNegInf(text)) {
                return Float.NEGATIVE_INFINITY;
            }
            break;
        }
        try {
            return Float.parseFloat(text);
        } catch (IllegalArgumentException iae) { }
        Number v = (Number) ctxt.handleWeirdStringValue(_valueClass, text,
                "not a valid float value");
        return _nonNullNumber(v).floatValue();
    }

    protected final double _parseDoublePrimitive(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        if (p.hasToken(JsonToken.VALUE_NUMBER_FLOAT)) {
            return p.getDoubleValue();
        }
        switch (p.getCurrentTokenId()) {
        case JsonTokenId.ID_STRING:
            String text = p.getText().trim();
            if (_isEmptyOrTextualNull(text)) {
                _verifyNullForPrimitiveCoercion(ctxt, text);
                return 0.0;
            }
            return _parseDoublePrimitive(ctxt, text);
        case JsonTokenId.ID_NUMBER_INT:
            return p.getDoubleValue();
        case JsonTokenId.ID_NULL:
            _verifyNullForPrimitive(ctxt);
            return 0.0;
        case JsonTokenId.ID_START_ARRAY:
            if (ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                p.nextToken();
                final double parsed = _parseDoublePrimitive(p, ctxt);
                _verifyEndArrayForSingle(p, ctxt);
                return parsed;            
            }
            break;
        }
        // Otherwise, no can do:
        return ((Number) ctxt.handleUnexpectedToken(_valueClass, p)).doubleValue();
    }

    /**
     * @since 2.9
     */
    protected final double _parseDoublePrimitive(DeserializationContext ctxt, String text)
        throws IOException
    {
        switch (text.charAt(0)) {
        case 'I':
            if (_isPosInf(text)) {
                return Double.POSITIVE_INFINITY;
            }
            break;
        case 'N':
            if (_isNaN(text)) {
                return Double.NaN;
            }
            break;
        case '-':
            if (_isNegInf(text)) {
                return Double.NEGATIVE_INFINITY;
            }
            break;
        }
        try {
            return parseDouble(text);
        } catch (IllegalArgumentException iae) { }
        Number v = (Number) ctxt.handleWeirdStringValue(_valueClass, text, 
                "not a valid double value (as String to convert)");
        return _nonNullNumber(v).doubleValue();
    }

    protected java.util.Date _parseDate(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        switch (p.getCurrentTokenId()) {
        case JsonTokenId.ID_STRING:
            return _parseDate(p.getText().trim(), ctxt);
        case JsonTokenId.ID_NUMBER_INT:
            {
                long ts;
                try {
                    ts = p.getLongValue();
                } catch (JsonParseException e) {
                    Number v = (Number) ctxt.handleWeirdNumberValue(_valueClass, p.getNumberValue(),
                            "not a valid 64-bit long for creating `java.util.Date`");
                    ts = v.longValue();
                }
                return new java.util.Date(ts);
            }
        case JsonTokenId.ID_NULL:
            return (java.util.Date) getNullValue(ctxt);
        case JsonTokenId.ID_START_ARRAY:
            return _parseDateFromArray(p, ctxt);
        }
        return (java.util.Date) ctxt.handleUnexpectedToken(_valueClass, p);
    }

    // @since 2.9
    protected java.util.Date _parseDateFromArray(JsonParser p, DeserializationContext ctxt)
            throws IOException
    {
        JsonToken t;
        if (ctxt.hasSomeOfFeatures(F_MASK_ACCEPT_ARRAYS)) {
            t = p.nextToken();
            if (t == JsonToken.END_ARRAY) {
                if (ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                    return (java.util.Date) getNullValue(ctxt);
                }
            }
            if (ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                final Date parsed = _parseDate(p, ctxt);
                _verifyEndArrayForSingle(p, ctxt);
                return parsed;            
            }
        } else {
            t = p.getCurrentToken();
        }
        return (java.util.Date) ctxt.handleUnexpectedToken(_valueClass, t, p, null);
    }

    /**
     * @since 2.8
     */
    protected java.util.Date _parseDate(String value, DeserializationContext ctxt)
        throws IOException
    {
        try {
            // Take empty Strings to mean 'empty' Value, usually 'null':
            if (_isEmptyOrTextualNull(value)) {
                return (java.util.Date) getNullValue(ctxt);
            }
            return ctxt.parseDate(value);
        } catch (IllegalArgumentException iae) {
            return (java.util.Date) ctxt.handleWeirdStringValue(_valueClass, value,
                    "not a valid representation (error: %s)",
                    ClassUtil.exceptionMessage(iae));
        }
    }

    /**
     * Helper method for encapsulating calls to low-level double value parsing; single place
     * just because we need a work-around that must be applied to all calls.
     */
    protected final static double parseDouble(String numStr) throws NumberFormatException
    {
        // avoid some nasty float representations... but should it be MIN_NORMAL or MIN_VALUE?
        if (NumberInput.NASTY_SMALL_DOUBLE.equals(numStr)) {
            return Double.MIN_NORMAL; // since 2.7; was MIN_VALUE prior
        }
        return Double.parseDouble(numStr);
    }
    
    /**
     * Helper method used for accessing String value, if possible, doing
     * necessary conversion or throwing exception as necessary.
     * 
     * @since 2.1
     */
    protected final String _parseString(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        JsonToken t = p.getCurrentToken();
        if (t == JsonToken.VALUE_STRING) {
            return p.getText();
        }
        // 07-Nov-2016, tatu: Caller should take care of unwrapping and there shouldn't
        //    be need for extra pass here...
        /*
        // [databind#381]
        if ((t == JsonToken.START_ARRAY) && ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            p.nextToken();
            final String parsed = _parseString(p, ctxt);
            _verifyEndArrayForSingle(p, ctxt);
            return parsed;            
        }
        */
        String value = p.getValueAsString();
        if (value != null) {
            return value;
        }
        return (String) ctxt.handleUnexpectedToken(String.class, p);
    }

    /**
     * Helper method that may be used to support fallback for Empty String / Empty Array
     * non-standard representations; usually for things serialized as JSON Objects.
     * 
     * @since 2.5
     */
    @SuppressWarnings("unchecked")
    protected T _deserializeFromEmpty(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        JsonToken t = p.getCurrentToken();
        if (t == JsonToken.START_ARRAY) {
            if (ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                t = p.nextToken();
                if (t == JsonToken.END_ARRAY) {
                    return null;
                }
                return (T) ctxt.handleUnexpectedToken(handledType(), p);
            }
        } else if (t == JsonToken.VALUE_STRING) {
            if (ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
                String str = p.getText().trim();
                if (str.isEmpty()) {
                    return null;
                }
            }
        }
        return (T) ctxt.handleUnexpectedToken(handledType(), p);
    }

    /**
     * Helper method called to determine if we are seeing String value of
     * "null", and, further, that it should be coerced to null just like
     * null token.
     * 
     * @since 2.3
     */
    protected boolean _hasTextualNull(String value) {
        return "null".equals(value);
    }

    /**
     * @since 2.9
     */
    protected boolean _isEmptyOrTextualNull(String value) {
        return value.isEmpty() || "null".equals(value);
    }
    
    protected final boolean _isNegInf(String text) {
        return "-Infinity".equals(text) || "-INF".equals(text);
    }

    protected final boolean _isPosInf(String text) {
        return "Infinity".equals(text) || "INF".equals(text);
    }

    protected final boolean _isNaN(String text) { return "NaN".equals(text); }

    /*
    /**********************************************************
    /* Helper methods for sub-classes regarding decoding from
    /* alternate representations
    /**********************************************************
     */

    /**
     * Helper method that allows easy support for array-related {@link DeserializationFeature}s
     * `ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT` and `UNWRAP_SINGLE_VALUE_ARRAYS`: checks for either
     * empty array, or single-value array-wrapped value (respectively), and either reports
     * an exception (if no match, or feature(s) not enabled), or returns appropriate
     * result value.
     *<p>
     * This method should NOT be called if Array representation is explicitly supported
     * for type: it should only be called in case it is otherwise unrecognized.
     *<p>
     * NOTE: in case of unwrapped single element, will handle actual decoding
     * by calling {@link #_deserializeWrappedValue}, which by default calls
     * {@link #deserialize(JsonParser, DeserializationContext)}.
     *
     * @since 2.9
     */
    protected T _deserializeFromArray(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        JsonToken t;
        if (ctxt.hasSomeOfFeatures(F_MASK_ACCEPT_ARRAYS)) {
            t = p.nextToken();
            if (t == JsonToken.END_ARRAY) {
                if (ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                    return getNullValue(ctxt);
                }
            }
            if (ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                final T parsed = deserialize(p, ctxt);
                if (p.nextToken() != JsonToken.END_ARRAY) {
                    handleMissingEndArrayForSingle(p, ctxt);
                }
                return parsed;            
            }
        } else {
            t = p.getCurrentToken();
        }
        @SuppressWarnings("unchecked")
        T result = (T) ctxt.handleUnexpectedToken(_valueClass, t, p, null);
        return result;
    }

    /**
     * Helper called to support {@link DeserializationFeature#UNWRAP_SINGLE_VALUE_ARRAYS}:
     * default implementation simply calls
     * {@link #deserialize(JsonParser, DeserializationContext)},
     * but handling may be overridden.
     *
     * @since 2.9
     */
    protected T _deserializeWrappedValue(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        // 23-Mar-2017, tatu: Let's specifically block recursive resolution to avoid
        //   either supporting nested arrays, or to cause infinite looping.
        if (p.hasToken(JsonToken.START_ARRAY)) {
            String msg = String.format(
"Cannot deserialize instance of %s out of %s token: nested Arrays not allowed with %s",
                    ClassUtil.nameOf(_valueClass), JsonToken.START_ARRAY,
                    "DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS");
            @SuppressWarnings("unchecked")
            T result = (T) ctxt.handleUnexpectedToken(_valueClass, p.getCurrentToken(), p, msg);
            return result;
        }
        return (T) deserialize(p, ctxt);
    }

    /*
    /****************************************************
    /* Helper methods for sub-classes, coercions
    /****************************************************
     */

    protected void _failDoubleToIntCoercion(JsonParser p, DeserializationContext ctxt,
            String type) throws IOException
    {
        ctxt.reportInputMismatch(handledType(),
"Cannot coerce a floating-point value ('%s') into %s (enable `DeserializationFeature.ACCEPT_FLOAT_AS_INT` to allow)",
                p.getValueAsString(), type);
    }

    /**
     * Helper method called in case where an integral number is encountered, but
     * config settings suggest that a coercion may be needed to "upgrade"
     * {@link java.lang.Number} into "bigger" type like {@link java.lang.Long} or
     * {@link java.math.BigInteger}
     * 
     * @see DeserializationFeature#USE_BIG_INTEGER_FOR_INTS
     * @see DeserializationFeature#USE_LONG_FOR_INTS
     *
     * @since 2.6
     */
    protected Object _coerceIntegral(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        int feats = ctxt.getDeserializationFeatures();
        if (DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(feats)) {
            return p.getBigIntegerValue();
        }
        if (DeserializationFeature.USE_LONG_FOR_INTS.enabledIn(feats)) {
            return p.getLongValue();
        }
        return p.getBigIntegerValue(); // should be optimal, whatever it is
    }

    /**
     * Method to call when JSON `null` token is encountered. Note: only called when
     * this deserializer encounters it but NOT when reached via property
     *
     * @since 2.9
     */
    protected Object _coerceNullToken(DeserializationContext ctxt, boolean isPrimitive) throws JsonMappingException
    {
        if (isPrimitive) {
            _verifyNullForPrimitive(ctxt);
        }
        return getNullValue(ctxt);
    }

    /**
     * Method called when JSON String with value "null" is encountered.
     *
     * @since 2.9
     */
    protected Object _coerceTextualNull(DeserializationContext ctxt, boolean isPrimitive) throws JsonMappingException
    {
        Enum<?> feat;
        boolean enable;

        if (!ctxt.isEnabled(MapperFeature.ALLOW_COERCION_OF_SCALARS)) {
            feat = MapperFeature.ALLOW_COERCION_OF_SCALARS;
            enable = true;
        } else if (isPrimitive && ctxt.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
            feat = DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES;
            enable = false;
        } else {
            return getNullValue(ctxt);
        }
        _reportFailedNullCoerce(ctxt, enable, feat, "String \"null\"");
        return null;
    }

    /**
     * Method called when JSON String with value "" (that is, zero length) is encountered.
     *
     * @since 2.9
     */
    protected Object _coerceEmptyString(DeserializationContext ctxt, boolean isPrimitive) throws JsonMappingException
    {
        Enum<?> feat;
        boolean enable;

        if (!ctxt.isEnabled(MapperFeature.ALLOW_COERCION_OF_SCALARS)) {
            feat = MapperFeature.ALLOW_COERCION_OF_SCALARS;
            enable = true;
        } else if (isPrimitive && ctxt.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
            feat = DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES;
            enable = false;
        } else {
            return getNullValue(ctxt);
        }
        _reportFailedNullCoerce(ctxt, enable, feat, "empty String (\"\")");
        return null;
    }

    // @since 2.9
    protected final void _verifyNullForPrimitive(DeserializationContext ctxt) throws JsonMappingException
    {
        if (ctxt.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
            ctxt.reportInputMismatch(this,
"Cannot coerce `null` %s (disable `DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES` to allow)",
                    _coercedTypeDesc());
        }
    }

    // NOTE: only for primitive Scalars
    // @since 2.9
    protected final void _verifyNullForPrimitiveCoercion(DeserializationContext ctxt, String str) throws JsonMappingException
    {
        Enum<?> feat;
        boolean enable;

        if (!ctxt.isEnabled(MapperFeature.ALLOW_COERCION_OF_SCALARS)) {
            feat = MapperFeature.ALLOW_COERCION_OF_SCALARS;
            enable = true;
        } else if (ctxt.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
            feat = DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES;
            enable = false;
        } else {
            return;
        }
        String strDesc = str.isEmpty() ? "empty String (\"\")" : String.format("String \"%s\"", str);
        _reportFailedNullCoerce(ctxt, enable, feat, strDesc);
    }

    // NOTE: for non-primitive Scalars
    // @since 2.9
    protected final void _verifyNullForScalarCoercion(DeserializationContext ctxt, String str) throws JsonMappingException
    {
        if (!ctxt.isEnabled(MapperFeature.ALLOW_COERCION_OF_SCALARS)) {
            String strDesc = str.isEmpty() ? "empty String (\"\")" : String.format("String \"%s\"", str);
            _reportFailedNullCoerce(ctxt, true, MapperFeature.ALLOW_COERCION_OF_SCALARS, strDesc);
        }
    }

    // @since 2.9
    protected void _verifyStringForScalarCoercion(DeserializationContext ctxt, String str) throws JsonMappingException
    {
        MapperFeature feat = MapperFeature.ALLOW_COERCION_OF_SCALARS;
        if (!ctxt.isEnabled(feat)) {
            ctxt.reportInputMismatch(this, "Cannot coerce String \"%s\" %s (enable `%s.%s` to allow)",
                str, _coercedTypeDesc(), feat.getClass().getSimpleName(), feat.name());
        }
    }

    // @since 2.9
    protected void _verifyNumberForScalarCoercion(DeserializationContext ctxt, JsonParser p) throws IOException
    {
        MapperFeature feat = MapperFeature.ALLOW_COERCION_OF_SCALARS;
        if (!ctxt.isEnabled(feat)) {
            // 31-Mar-2017, tatu: Since we don't know (or this deep, care) about exact type,
            //   access as a String: may require re-encoding by parser which should be fine
            String valueDesc = p.getText();
            ctxt.reportInputMismatch(this, "Cannot coerce Number (%s) %s (enable `%s.%s` to allow)",
                valueDesc, _coercedTypeDesc(), feat.getClass().getSimpleName(), feat.name());
        }
    }
    
    protected void _reportFailedNullCoerce(DeserializationContext ctxt, boolean state, Enum<?> feature,
            String inputDesc) throws JsonMappingException
    {
        String enableDesc = state ? "enable" : "disable";
        ctxt.reportInputMismatch(this, "Cannot coerce %s to Null value %s (%s `%s.%s` to allow)",
            inputDesc, _coercedTypeDesc(), enableDesc, feature.getClass().getSimpleName(), feature.name());
    }
    
    /**
     * Helper method called to get a description of type into which a scalar value coercion
     * is (most likely) being applied, to be used for constructing exception messages
     * on coerce failure.
     *
     * @return Message with backtick-enclosed name of type this deserializer supports
     *
     * @since 2.9
     */
    protected String _coercedTypeDesc() {
        boolean structured;
        String typeDesc;

        JavaType t = getValueType();
        if ((t != null) && !t.isPrimitive()) {
            structured = (t.isContainerType() || t.isReferenceType());
            // 21-Jul-2017, tatu: Probably want to change this (JavaType.toString() not very good) but...
            typeDesc = "'"+t.toString()+"'";
        } else {
            Class<?> cls = handledType();
            structured = cls.isArray() || Collection.class.isAssignableFrom(cls)
                || Map.class.isAssignableFrom(cls);
            typeDesc = ClassUtil.nameOf(cls);
        }
        if (structured) {
            return "as content of type "+typeDesc;
        }
        return "for type "+typeDesc;
    }

    /*
    /****************************************************
    /* Helper methods for sub-classes, resolving dependencies
    /****************************************************
     */

    /**
     * Helper method used to locate deserializers for properties the
     * type this deserializer handles contains (usually for properties of
     * bean types)
     * 
     * @param type Type of property to deserialize
     * @param property Actual property object (field, method, constuctor parameter) used
     *     for passing deserialized values; provided so deserializer can be contextualized if necessary
     */
    protected JsonDeserializer<Object> findDeserializer(DeserializationContext ctxt,
            JavaType type, BeanProperty property)
        throws JsonMappingException
    {
        return ctxt.findContextualValueDeserializer(type, property);
    }

    /**
     * Helper method to check whether given text refers to what looks like a clean simple
     * integer number, consisting of optional sign followed by a sequence of digits.
     */
    protected final boolean _isIntNumber(String text)
    {
        final int len = text.length();
        if (len > 0) {
            char c = text.charAt(0);
            // skip leading sign (plus not allowed for strict JSON numbers but...)
            int i = (c == '-' || c == '+') ? 1 : 0;
            for (; i < len; ++i) {
                int ch = text.charAt(i);
                if (ch > '9' || ch < '0') {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /*
    /**********************************************************
    /* Helper methods for: deserializer construction
    /**********************************************************
     */

    /**
     * Helper method that can be used to see if specified property has annotation
     * indicating that a converter is to be used for contained values (contents
     * of structured types; array/List/Map values)
     * 
     * @param existingDeserializer (optional) configured content
     *    serializer if one already exists.
     * 
     * @since 2.2
     */
    protected JsonDeserializer<?> findConvertingContentDeserializer(DeserializationContext ctxt,
            BeanProperty prop, JsonDeserializer<?> existingDeserializer)
        throws JsonMappingException
    {
        int PROBE_START_LINE_965 = 965;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3139_line_965 = ctxt;
		AnnotationIntrospector std_deserializer_1_expr10_line_965 = p_ctxt_3139_line_965.getAnnotationIntrospector();
		int PROBE_END_LINE_965 = 965;
		final AnnotationIntrospector intr = std_deserializer_1_expr10_line_965;
        int PROBE_START_LINE_966 = 979;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3142_line_966 = intr;
		com.fasterxml.jackson.databind.BeanProperty p_prop_3140_line_966 = prop;
		boolean std_deserializer_1_expr11_line_966 = _neitherNull(v_intr_3142_line_966, p_prop_3140_line_966);
		int PROBE_END_LINE_966 = 979;
		if (std_deserializer_1_expr11_line_966) {
            int PROBE_START_LINE_967 = 967;
			com.fasterxml.jackson.databind.BeanProperty p_prop_3140_line_967 = prop;
			AnnotatedMember std_deserializer_1_expr12_line_967 = p_prop_3140_line_967.getMember();
			int PROBE_END_LINE_967 = 967;
			AnnotatedMember member = std_deserializer_1_expr12_line_967;
            int PROBE_START_LINE_968 = 978;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_3143_line_968 = member;
			boolean std_deserializer_1_expr13_line_968 = v_member_3143_line_968 != null;
			int PROBE_END_LINE_968 = 978;
			if (std_deserializer_1_expr13_line_968) {
                int PROBE_START_LINE_969 = 969;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3142_line_969 = intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_3143_line_969 = member;
				Object std_deserializer_1_expr14_line_969 = v_intr_3142_line_969
						.findDeserializationContentConverter(v_member_3143_line_969);
				int PROBE_END_LINE_969 = 969;
				Object convDef = std_deserializer_1_expr14_line_969;
                int PROBE_START_LINE_970 = 977;
				Object v_conv_def_3144_line_970 = convDef;
				boolean std_deserializer_1_expr15_line_970 = v_conv_def_3144_line_970 != null;
				int PROBE_END_LINE_970 = 977;
				if (std_deserializer_1_expr15_line_970) {
                    Converter<Object,Object> conv = ctxt.converterInstance(prop.getMember(), convDef);
                    JavaType delegateType = conv.getInputType(ctxt.getTypeFactory());
                    if (existingDeserializer == null) {
                        existingDeserializer = ctxt.findContextualValueDeserializer(delegateType, prop);
                    }
                    return new StdDelegatingDeserializer<Object>(conv, delegateType, existingDeserializer);
                }
            }
        }
        int PROBE_START_LINE_980 = 980;
		JsonDeserializer<?> p_existing_deserializer_3141_line_980 = existingDeserializer;
		int PROBE_END_LINE_980 = 980;
		return p_existing_deserializer_3141_line_980;
    }

    /*
    /**********************************************************
    /* Helper methods for: accessing contextual config settings
    /**********************************************************
     */
    
    /**
     * Helper method that may be used to find if this deserializer has specific
     * {@link JsonFormat} settings, either via property, or through type-specific
     * defaulting.
     *
     * @param typeForDefaults Type (erased) used for finding default format settings, if any
     *
     * @since 2.7
     */
    protected JsonFormat.Value findFormatOverrides(DeserializationContext ctxt,
            BeanProperty prop, Class<?> typeForDefaults)
    {
        int PROBE_START_LINE_1001 = 1003;
		com.fasterxml.jackson.databind.BeanProperty p_prop_3146_line_1001 = prop;
		boolean std_deserializer_1_expr16_line_1001 = p_prop_3146_line_1001 != null;
		int PROBE_END_LINE_1001 = 1003;
		if (std_deserializer_1_expr16_line_1001) {
            int PROBE_START_LINE_1002 = 1002;
			com.fasterxml.jackson.databind.BeanProperty p_prop_3146_line_1002 = prop;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3145_line_1002 = ctxt;
			com.fasterxml.jackson.databind.DeserializationConfig std_deserializer_1_expr18_line_1002 = p_ctxt_3145_line_1002
					.getConfig();
			Class<?> p_type_for_defaults_3147_line_1002 = typeForDefaults;
			com.fasterxml.jackson.annotation.JsonFormat.Value std_deserializer_1_expr17_line_1002 = p_prop_3146_line_1002
					.findPropertyFormat(std_deserializer_1_expr18_line_1002, p_type_for_defaults_3147_line_1002);
			int PROBE_END_LINE_1002 = 1002;
			return std_deserializer_1_expr17_line_1002;
        }
        int PROBE_START_LINE_1005 = 1005;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3145_line_1005 = ctxt;
		Class<?> p_type_for_defaults_3147_line_1005 = typeForDefaults;
		com.fasterxml.jackson.annotation.JsonFormat.Value std_deserializer_1_expr19_line_1005 = p_ctxt_3145_line_1005
				.getDefaultPropertyFormat(p_type_for_defaults_3147_line_1005);
		int PROBE_END_LINE_1005 = 1005;
		// even without property or AnnotationIntrospector, may have type-specific defaults
        return std_deserializer_1_expr19_line_1005;
    }

    /**
     * Convenience method that uses {@link #findFormatOverrides} to find possible
     * defaults and/of overrides, and then calls
     * <code>JsonFormat.Value.getFeature(feat)</code>
     * to find whether that feature has been specifically marked as enabled or disabled.
     * 
     * @param typeForDefaults Type (erased) used for finding default format settings, if any
     *
     * @since 2.7
     */
    protected Boolean findFormatFeature(DeserializationContext ctxt,
            BeanProperty prop, Class<?> typeForDefaults, JsonFormat.Feature feat)
    {
        int PROBE_START_LINE_1021 = 1021;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3148_line_1021 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_prop_3149_line_1021 = prop;
		Class<?> p_type_for_defaults_3150_line_1021 = typeForDefaults;
		JsonFormat.Value std_deserializer_1_expr20_line_1021 = findFormatOverrides(p_ctxt_3148_line_1021,
				p_prop_3149_line_1021, p_type_for_defaults_3150_line_1021);
		int PROBE_END_LINE_1021 = 1021;
		JsonFormat.Value format = std_deserializer_1_expr20_line_1021;
        int PROBE_START_LINE_1022 = 1024;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_format_3152_line_1022 = format;
		boolean std_deserializer_1_expr21_line_1022 = v_format_3152_line_1022 != null;
		int PROBE_END_LINE_1022 = 1024;
		if (std_deserializer_1_expr21_line_1022) {
            int PROBE_START_LINE_1023 = 1023;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_format_3152_line_1023 = format;
			com.fasterxml.jackson.annotation.JsonFormat.Feature p_feat_3151_line_1023 = feat;
			Boolean std_deserializer_1_expr22_line_1023 = v_format_3152_line_1023.getFeature(p_feat_3151_line_1023);
			int PROBE_END_LINE_1023 = 1023;
			return std_deserializer_1_expr22_line_1023;
        }
        return null;
    }

    /**
     * Method called to find {@link NullValueProvider} for a primary property, using
     * "value nulls" setting. If no provider found (not defined, or is "skip"),
     * will return `null`.
     *
     * @since 2.9
     */
    protected final NullValueProvider findValueNullProvider(DeserializationContext ctxt,
            SettableBeanProperty prop, PropertyMetadata propMetadata)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1039 = 1042;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_3154_line_1039 = prop;
		boolean std_deserializer_1_expr23_line_1039 = p_prop_3154_line_1039 != null;
		int PROBE_END_LINE_1039 = 1042;
		if (std_deserializer_1_expr23_line_1039) {
            int PROBE_START_LINE_1040 = 1041;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3153_line_1040 = ctxt;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_3154_line_1040 = prop;
			com.fasterxml.jackson.databind.PropertyMetadata p_prop_metadata_3155_line_1040 = propMetadata;
			com.fasterxml.jackson.annotation.Nulls std_deserializer_1_expr25_line_1040 = p_prop_metadata_3155_line_1040
					.getValueNulls();
			com.fasterxml.jackson.databind.deser.NullValueProvider std_deserializer_1_expr24_line_1040 = _findNullProvider(
					p_ctxt_3153_line_1040, p_prop_3154_line_1040, std_deserializer_1_expr25_line_1040,
					prop.getValueDeserializer());
			int PROBE_END_LINE_1040 = 1041;
			return std_deserializer_1_expr24_line_1040;
        }
        return null;
    }

    /**
     * Method called to find {@link NullValueProvider} for a contents of a structured
     * primary property (Collection, Map, array), using
     * "content nulls" setting. If no provider found (not defined),
     * will return given value deserializer (which is a null value provider itself).
     *
     * @since 2.9
     */
    protected NullValueProvider findContentNullProvider(DeserializationContext ctxt,
            BeanProperty prop, JsonDeserializer<?> valueDeser)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1058 = 1058;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3156_line_1058 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_prop_3157_line_1058 = prop;
		Nulls std_deserializer_1_expr27_line_1058 = findContentNullStyle(p_ctxt_3156_line_1058, p_prop_3157_line_1058);
		int PROBE_END_LINE_1058 = 1058;
		final Nulls nulls = std_deserializer_1_expr27_line_1058;
        int PROBE_START_LINE_1059 = 1061;
		com.fasterxml.jackson.annotation.Nulls v_nulls_3159_line_1059 = nulls;
		com.fasterxml.jackson.annotation.Nulls q_skip_96_line_1059 = Nulls.SKIP;
		boolean std_deserializer_1_expr28_line_1059 = v_nulls_3159_line_1059 == q_skip_96_line_1059;
		int PROBE_END_LINE_1059 = 1061;
		if (std_deserializer_1_expr28_line_1059) {
            return NullsConstantProvider.skipper();
        }
        int PROBE_START_LINE_1062 = 1062;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3156_line_1062 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_prop_3157_line_1062 = prop;
		com.fasterxml.jackson.annotation.Nulls v_nulls_3159_line_1062 = nulls;
		JsonDeserializer<?> p_value_deser_3158_line_1062 = valueDeser;
		NullValueProvider std_deserializer_1_expr29_line_1062 = _findNullProvider(p_ctxt_3156_line_1062,
				p_prop_3157_line_1062, v_nulls_3159_line_1062, p_value_deser_3158_line_1062);
		int PROBE_END_LINE_1062 = 1062;
		NullValueProvider prov = std_deserializer_1_expr29_line_1062;
        int PROBE_START_LINE_1063 = 1065;
		com.fasterxml.jackson.databind.deser.NullValueProvider v_prov_3160_line_1063 = prov;
		boolean std_deserializer_1_expr30_line_1063 = v_prov_3160_line_1063 != null;
		int PROBE_END_LINE_1063 = 1065;
		if (std_deserializer_1_expr30_line_1063) {
            return prov;
        }
        int PROBE_START_LINE_1066 = 1066;
		JsonDeserializer<?> p_value_deser_3158_line_1066 = valueDeser;
		int PROBE_END_LINE_1066 = 1066;
		return p_value_deser_3158_line_1066;
    }

    protected Nulls findContentNullStyle(DeserializationContext ctxt, BeanProperty prop)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1072 = 1074;
		com.fasterxml.jackson.databind.BeanProperty p_prop_3162_line_1072 = prop;
		boolean std_deserializer_1_expr31_line_1072 = p_prop_3162_line_1072 != null;
		int PROBE_END_LINE_1072 = 1074;
		if (std_deserializer_1_expr31_line_1072) {
            int PROBE_START_LINE_1073 = 1073;
			com.fasterxml.jackson.databind.BeanProperty p_prop_3162_line_1073 = prop;
			com.fasterxml.jackson.databind.PropertyMetadata std_deserializer_1_expr33_line_1073 = p_prop_3162_line_1073
					.getMetadata();
			com.fasterxml.jackson.annotation.Nulls std_deserializer_1_expr32_line_1073 = std_deserializer_1_expr33_line_1073
					.getContentNulls();
			int PROBE_END_LINE_1073 = 1073;
			return std_deserializer_1_expr32_line_1073;
        }
        return null;
    }

    // @since 2.9
    protected final NullValueProvider _findNullProvider(DeserializationContext ctxt,
            BeanProperty prop, Nulls nulls, JsonDeserializer<?> valueDeser)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1083 = 1088;
		com.fasterxml.jackson.annotation.Nulls p_nulls_3165_line_1083 = nulls;
		com.fasterxml.jackson.annotation.Nulls q_fail_97_line_1083 = Nulls.FAIL;
		boolean std_deserializer_1_expr34_line_1083 = p_nulls_3165_line_1083 == q_fail_97_line_1083;
		int PROBE_END_LINE_1083 = 1088;
		if (std_deserializer_1_expr34_line_1083) {
            if (prop == null) {
                return NullsFailProvider.constructForRootValue(ctxt.constructType(valueDeser.handledType()));
            }
            return NullsFailProvider.constructForProperty(prop);
        }
        int PROBE_START_LINE_1089 = 1118;
		com.fasterxml.jackson.annotation.Nulls p_nulls_3165_line_1089 = nulls;
		com.fasterxml.jackson.annotation.Nulls q_as_empty_98_line_1089 = Nulls.AS_EMPTY;
		boolean std_deserializer_1_expr35_line_1089 = p_nulls_3165_line_1089 == q_as_empty_98_line_1089;
		int PROBE_END_LINE_1089 = 1118;
		if (std_deserializer_1_expr35_line_1089) {
            // cannot deal with empty values if there is no value deserializer that
            // can indicate what "empty value" is:
            if (valueDeser == null) {
                return null;
            }

            // Let's first do some sanity checking...
            // NOTE: although we could use `ValueInstantiator.Gettable` in general,
            // let's not since that would prevent being able to use custom impls:
            if (valueDeser instanceof BeanDeserializerBase) {
                ValueInstantiator vi = ((BeanDeserializerBase) valueDeser).getValueInstantiator();
                if (!vi.canCreateUsingDefault()) {
                    final JavaType type = prop.getType();
                    ctxt.reportBadDefinition(type,
                            String.format("Cannot create empty instance of %s, no default Creator", type));
                }
            }
            // Second: can with pre-fetch value?
            {
                AccessPattern access = valueDeser.getEmptyAccessPattern();
                if (access == AccessPattern.ALWAYS_NULL) {
                    return NullsConstantProvider.nuller();
                }
                if (access == AccessPattern.CONSTANT) {
                    return NullsConstantProvider.forValue(valueDeser.getEmptyValue(ctxt));
                }
            }
            return new NullsAsEmptyProvider(valueDeser);
        }
        int PROBE_START_LINE_1119 = 1121;
		com.fasterxml.jackson.annotation.Nulls p_nulls_3165_line_1119 = nulls;
		com.fasterxml.jackson.annotation.Nulls q_skip_99_line_1119 = Nulls.SKIP;
		boolean std_deserializer_1_expr36_line_1119 = p_nulls_3165_line_1119 == q_skip_99_line_1119;
		int PROBE_END_LINE_1119 = 1121;
		if (std_deserializer_1_expr36_line_1119) {
            return NullsConstantProvider.skipper();
        }
        return null;
    }

    /*
    /**********************************************************
    /* Helper methods for sub-classes, problem reporting
    /**********************************************************
     */

    /**
     * Method called to deal with a property that did not map to a known
     * Bean property. Method can deal with the problem as it sees fit (ignore,
     * throw exception); but if it does return, it has to skip the matching
     * Json content parser has.
     *
     * @param p Parser that points to value of the unknown property
     * @param ctxt Context for deserialization; allows access to the parser,
     *    error reporting functionality
     * @param instanceOrClass Instance that is being populated by this
     *   deserializer, or if not known, Class that would be instantiated.
     *   If null, will assume type is what {@link #getValueClass} returns.
     * @param propName Name of the property that cannot be mapped
     */
    protected void handleUnknownProperty(JsonParser p, DeserializationContext ctxt,
            Object instanceOrClass, String propName)
        throws IOException
    {
        if (instanceOrClass == null) {
            instanceOrClass = handledType();
        }
        // Maybe we have configured handler(s) to take care of it?
        if (ctxt.handleUnknownProperty(p, this, instanceOrClass, propName)) {
            return;
        }
        /* But if we do get this far, need to skip whatever value we
         * are pointing to now (although handler is likely to have done that already)
         */
        p.skipChildren();
    }

    protected void handleMissingEndArrayForSingle(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        ctxt.reportWrongTokenException(this, JsonToken.END_ARRAY, 
"Attempted to unwrap '%s' value from an array (with `DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS`) but it contains more than one value",
handledType().getName());
        // 05-May-2016, tatu: Should recover somehow (maybe skip until END_ARRAY);
        //     but for now just fall through
    }

    protected void _verifyEndArrayForSingle(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        JsonToken t = p.nextToken();
        if (t != JsonToken.END_ARRAY) {
            handleMissingEndArrayForSingle(p, ctxt);
        }            
    }

    /*
    /**********************************************************
    /* Helper methods, other
    /**********************************************************
     */

    /**
     * @since 2.9
     */
    protected final static boolean _neitherNull(Object a, Object b) {
        int PROBE_START_LINE_1190 = 1190;
		Object p_a_3175_line_1190 = a;
		boolean std_deserializer_1_expr39_line_1190 = p_a_3175_line_1190 != null;
		boolean std_deserializer_1_expr38_line_1190 = (std_deserializer_1_expr39_line_1190);
		boolean std_deserializer_1_expr40_line_1190 = true;
		if (std_deserializer_1_expr38_line_1190) {
			Object p_b_3176_line_1190 = b;
			boolean std_deserializer_1_expr41_line_1190 = p_b_3176_line_1190 != null;
			std_deserializer_1_expr40_line_1190 = (std_deserializer_1_expr41_line_1190);
		}
		boolean std_deserializer_1_expr37_line_1190 = std_deserializer_1_expr38_line_1190
				&& std_deserializer_1_expr40_line_1190;
		int PROBE_END_LINE_1190 = 1190;
		return std_deserializer_1_expr37_line_1190;
    }

    /**
     * @since 2.9
     */
    protected final boolean _byteOverflow(int value) {
        // 07-nov-2016, tatu: We support "unsigned byte" as well
        //    as Java signed range since that's relatively common usage
        return (value < Byte.MIN_VALUE || value > 255);
    }
    
    /**
     * @since 2.9
     */
    protected final boolean _shortOverflow(int value) {
        return (value < Short.MIN_VALUE || value > Short.MAX_VALUE);
    }

    /**
     * @since 2.9
     */
    protected final boolean _intOverflow(long value) {
        return (value < Integer.MIN_VALUE || value > Integer.MAX_VALUE);
    }

    /**
     * @since 2.9
     */
    protected Number _nonNullNumber(Number n) {
        if (n == null) {
            n = Integer.valueOf(0);
        }
        return n;
    }
}
