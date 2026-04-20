package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.annotation.SimpleObjectIdResolver;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Object that knows how to deserialize Object Ids.
 */
public class ObjectIdReader
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    protected final JavaType _idType;

    public final PropertyName propertyName;
    
    /**
     * Blueprint generator instance: actual instance will be
     * fetched from {@link SerializerProvider} using this as
     * the key.
     */
    public final ObjectIdGenerator<?> generator;

    public final ObjectIdResolver resolver;

    /**
     * Deserializer used for deserializing id values.
     */
    protected final JsonDeserializer<Object> _deserializer;

    public final SettableBeanProperty idProperty;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */
    
    @SuppressWarnings("unchecked")
    protected ObjectIdReader(JavaType t, PropertyName propName, ObjectIdGenerator<?> gen,
            JsonDeserializer<?> deser, SettableBeanProperty idProp, ObjectIdResolver resolver)
    {
        int PROBE_START_LINE_50 = 50;
		com.fasterxml.jackson.databind.JavaType p_t_2199_line_50 = t;
		int PROBE_END_LINE_50 = 50;
		_idType = p_t_2199_line_50;
        int PROBE_START_LINE_51 = 51;
		com.fasterxml.jackson.databind.PropertyName p_prop_name_2200_line_51 = propName;
		int PROBE_END_LINE_51 = 51;
		propertyName = p_prop_name_2200_line_51;
        int PROBE_START_LINE_52 = 52;
		ObjectIdGenerator<?> p_gen_2201_line_52 = gen;
		int PROBE_END_LINE_52 = 52;
		generator = p_gen_2201_line_52;
        int PROBE_START_LINE_53 = 53;
		com.fasterxml.jackson.annotation.ObjectIdResolver p_resolver_2204_line_53 = resolver;
		int PROBE_END_LINE_53 = 53;
		this.resolver = p_resolver_2204_line_53;
        int PROBE_START_LINE_54 = 54;
		JsonDeserializer<?> p_deser_2202_line_54 = deser;
		int PROBE_END_LINE_54 = 54;
		_deserializer = (JsonDeserializer<Object>) p_deser_2202_line_54;
        int PROBE_START_LINE_55 = 55;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_id_prop_2203_line_55 = idProp;
		int PROBE_END_LINE_55 = 55;
		idProperty = p_id_prop_2203_line_55;
    }

    @Deprecated // since 2.4
    protected ObjectIdReader(JavaType t, PropertyName propName, ObjectIdGenerator<?> gen,
            JsonDeserializer<?> deser, SettableBeanProperty idProp)
    {
        this(t,propName, gen, deser, idProp, new SimpleObjectIdResolver());
    }

    /**
     * Factory method called by {@link com.fasterxml.jackson.databind.ser.std.BeanSerializerBase}
     * with the initial information based on standard settings for the type
     * for which serializer is being built.
     */
    public static ObjectIdReader construct(JavaType idType, PropertyName propName,
            ObjectIdGenerator<?> generator, JsonDeserializer<?> deser,
            SettableBeanProperty idProp, ObjectIdResolver resolver)
    {
        int PROBE_START_LINE_74 = 74;
		com.fasterxml.jackson.databind.JavaType p_id_type_2216_line_74 = idType;
		com.fasterxml.jackson.databind.PropertyName p_prop_name_2217_line_74 = propName;
		ObjectIdGenerator<?> p_generator_2218_line_74 = generator;
		JsonDeserializer<?> p_deser_2219_line_74 = deser;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_id_prop_2220_line_74 = idProp;
		com.fasterxml.jackson.annotation.ObjectIdResolver p_resolver_2221_line_74 = resolver;
		int PROBE_END_LINE_74 = 74;
		return new ObjectIdReader(p_id_type_2216_line_74, p_prop_name_2217_line_74, p_generator_2218_line_74, p_deser_2219_line_74, p_id_prop_2220_line_74, p_resolver_2221_line_74);
    }

    @Deprecated // since 2.4
    public static ObjectIdReader construct(JavaType idType, PropertyName propName,
            ObjectIdGenerator<?> generator, JsonDeserializer<?> deser,
            SettableBeanProperty idProp)
    {
        return construct(idType, propName, generator, deser, idProp, new SimpleObjectIdResolver());
    }

    /*
    /**********************************************************
    /* API
    /**********************************************************
     */

    public JsonDeserializer<Object> getDeserializer() {
        int PROBE_START_LINE_92 = 92;
		JsonDeserializer<Object> f__deserializer_2209_line_92 = _deserializer;
		int PROBE_END_LINE_92 = 92;
		return f__deserializer_2209_line_92;
    }

    public JavaType getIdType() {
        int PROBE_START_LINE_96 = 96;
		com.fasterxml.jackson.databind.JavaType f__id_type_2205_line_96 = _idType;
		int PROBE_END_LINE_96 = 96;
		return f__id_type_2205_line_96;
    }

    /**
     * Convenience method, equivalent to calling:
     *<code>
     *  readerInstance.generator.maySerializeAsObject();
     *</code>
     * and used to determine whether Object Ids handled by the underlying
     * generator may be in form of (JSON) Objects.
     * Used for optimizing handling in cases where method returns false.
     * 
     * @since 2.5
     */
    public boolean maySerializeAsObject() {
        int PROBE_START_LINE_111 = 111;
		ObjectIdGenerator<?> f_generator_2207_line_111 = generator;
		boolean object_id_reader_1_expr11_line_111 = f_generator_2207_line_111.maySerializeAsObject();
		int PROBE_END_LINE_111 = 111;
		return object_id_reader_1_expr11_line_111;
    }

    /**
     * Convenience method, equivalent to calling:
     *<code>
     *  readerInstance.generator.isValidReferencePropertyName(name, parser);
     *</code>
     * and used to determine whether Object Ids handled by the underlying
     * generator may be in form of (JSON) Objects.
     * Used for optimizing handling in cases where method returns false.
     * 
     * @since 2.5
     */
    public boolean isValidReferencePropertyName(String name, JsonParser parser) {
        return generator.isValidReferencePropertyName(name, parser);
    }
    
    /**
     * Method called to read value that is expected to be an Object Reference
     * (that is, value of an Object Id used to refer to another object).
     * 
     * @since 2.3
     */
    public Object readObjectReference(JsonParser jp, DeserializationContext ctxt) throws IOException {
        return _deserializer.deserialize(jp, ctxt);
    }
}
