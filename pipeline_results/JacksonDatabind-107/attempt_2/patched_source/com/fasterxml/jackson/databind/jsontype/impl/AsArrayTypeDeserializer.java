package com.fasterxml.jackson.databind.jsontype.impl;

import java.io.IOException;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.core.util.JsonParserSequence;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;

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
        // usually if it's null:
        return (prop == _property) ? this : new AsArrayTypeDeserializer(this, prop);
    }
    
    @Override
    public As getTypeInclusion() { return As.WRAPPER_ARRAY; }

    /**
     * Method called when actual object is serialized as JSON Array.
     */
    @Override
    public Object deserializeTypedFromArray(JsonParser jp, DeserializationContext ctxt) throws IOException {
        return _deserialize(jp, ctxt);
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
        return _deserialize(jp, ctxt);
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
        if (p.canReadTypeId()) {
            Object typeId = p.getTypeId();
            if (typeId != null) {
                return _deserializeWithNativeTypeId(p, ctxt, typeId);
            }
        }
        boolean hadStartArray = p.isExpectedStartArrayToken();
        String typeId = _locateTypeId(p, ctxt);
        JsonDeserializer<Object> deser = _findDeserializer(ctxt, typeId);
        if (_typeIdVisible && !_usesExternalId() && p.getCurrentToken() == JsonToken.START_OBJECT) {
            TokenBuffer tb = new TokenBuffer(null, false);
            tb.writeStartObject();
            tb.writeFieldName(_typePropertyName);
            tb.writeString(typeId);
            p.clearCurrentToken();
            p = JsonParserSequence.createFlattened(false, tb.asParser(p), p);
            p.nextToken();
        }
        Object value = deser.deserialize(p, ctxt);
        if (hadStartArray && p.nextToken() != JsonToken.END_ARRAY) {
            ctxt.reportWrongTokenException(baseType(), JsonToken.END_ARRAY,
                    "expected closing END_ARRAY after type information and deserialized value");
        }
        return value;
    }
    
    protected String _locateTypeId(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        if (!p.isExpectedStartArrayToken()) {
            // Need to allow even more customized handling, if something unexpected seen...
            // but should there be a way to limit this to likely success cases?
            if (_defaultImpl != null) {
                return _idResolver.idFromBaseType();
            }
             ctxt.reportWrongTokenException(baseType(), JsonToken.START_ARRAY,
                     "need JSON Array to contain As.WRAPPER_ARRAY type information for class "+baseTypeName());
             return null;
        }
        // And then type id as a String
        JsonToken t = p.nextToken();
        if (t == JsonToken.VALUE_STRING) {
            String result = p.getText();
            p.nextToken();
            return result;
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
