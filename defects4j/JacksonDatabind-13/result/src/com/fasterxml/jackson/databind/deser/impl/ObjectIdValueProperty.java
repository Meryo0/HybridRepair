package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;
import java.lang.annotation.Annotation;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.*;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Specialized {@link SettableBeanProperty} implementation used
 * for virtual property that represents Object Id that is used
 * for some POJO types (or properties).
 */
public final class ObjectIdValueProperty
    extends SettableBeanProperty
{
    private static final long serialVersionUID = 1L;

    protected final ObjectIdReader _objectIdReader;

    public ObjectIdValueProperty(ObjectIdReader objectIdReader,
            PropertyMetadata metadata)
    {
        super(objectIdReader.propertyName, objectIdReader.getIdType(), metadata,
                objectIdReader.getDeserializer());
        int PROBE_START_LINE_28 = 28;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader p_object_id_reader_2257_line_28 = objectIdReader;
		int PROBE_END_LINE_28 = 28;
		_objectIdReader = p_object_id_reader_2257_line_28;
    }

    protected ObjectIdValueProperty(ObjectIdValueProperty src, JsonDeserializer<?> deser)
    {
        super(src, deser);
        _objectIdReader = src._objectIdReader;
    }

    @Deprecated // since 2.3
    protected ObjectIdValueProperty(ObjectIdValueProperty src, PropertyName newName) {
        super(src, newName);
        _objectIdReader = src._objectIdReader;
    }
    
    @Deprecated // since 2.3
    protected ObjectIdValueProperty(ObjectIdValueProperty src, String newName) {
        this(src, new PropertyName(newName));
    }

    @Override
    public ObjectIdValueProperty withName(PropertyName newName) {
        return new ObjectIdValueProperty(this, newName);
    }

    @Override
    public ObjectIdValueProperty withValueDeserializer(JsonDeserializer<?> deser) {
        return new ObjectIdValueProperty(this, deser);
    }
    
    // // // BeanProperty impl
    
    @Override
    public <A extends Annotation> A getAnnotation(Class<A> acls) {
        return null;
    }

    @Override public AnnotatedMember getMember() {  return null; }

    /*
    /**********************************************************
    /* Deserialization methods
    /**********************************************************
     */

    @Override
    public void deserializeAndSet(JsonParser jp, DeserializationContext ctxt,
            Object instance) throws IOException
    {
        int PROBE_START_LINE_77 = 77;
		com.fasterxml.jackson.core.JsonParser p_jp_2269_line_77 = jp;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2270_line_77 = ctxt;
		Object p_instance_2271_line_77 = instance;
		int PROBE_END_LINE_77 = 77;
		deserializeSetAndReturn(p_jp_2269_line_77, p_ctxt_2270_line_77, p_instance_2271_line_77);
    }

    @Override
    public Object deserializeSetAndReturn(JsonParser jp,
    		DeserializationContext ctxt, Object instance) throws IOException
    {
        int PROBE_START_LINE_85 = 85;
		JsonDeserializer<Object> f__value_deserializer_1961_line_85 = _valueDeserializer;
		com.fasterxml.jackson.core.JsonParser p_jp_2272_line_85 = jp;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2273_line_85 = ctxt;
		Object object_id_value_property_1_expr7_line_85 = f__value_deserializer_1961_line_85
				.deserialize(p_jp_2272_line_85, p_ctxt_2273_line_85);
		int PROBE_END_LINE_85 = 85;
		// note: no null checks (unlike usually); deserializer should fail if one found
        Object id = object_id_value_property_1_expr7_line_85;

        /* 02-Apr-2015, tatu: Actually, as per [databind#742], let it be;
         *  missing or null id is needed for some cases, such as cases where id
         *  will be generated externally, at a later point, and is not available
         *  quite yet. Typical use case is with DB inserts.
         */
        
        int PROBE_START_LINE_93 = 93;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2273_line_93 = ctxt;
		Object v_id_2275_line_93 = id;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_2259_line_93 = _objectIdReader;
		ObjectIdGenerator<?> q_generator_80_line_93 = f__object_id_reader_2259_line_93.generator;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_2259_line_93_v1 = _objectIdReader;
		com.fasterxml.jackson.annotation.ObjectIdResolver q_resolver_81_line_93 = f__object_id_reader_2259_line_93_v1.resolver;
		ReadableObjectId object_id_value_property_1_expr8_line_93 = p_ctxt_2273_line_93.findObjectId(v_id_2275_line_93,
				q_generator_80_line_93, q_resolver_81_line_93);
		int PROBE_END_LINE_93 = 93;
		ReadableObjectId roid = object_id_value_property_1_expr8_line_93;
        roid.bindItem(instance);
        // also: may need to set a property value as well
        SettableBeanProperty idProp = _objectIdReader.idProperty;
        if (idProp != null) {
            return idProp.setAndReturn(instance, id);
        }
        return instance;
    }

    @Override
    public void set(Object instance, Object value) throws IOException {
        setAndReturn(instance, value);
    }

    @Override
    public Object setAndReturn(Object instance, Object value) throws IOException
    {
        SettableBeanProperty idProp = _objectIdReader.idProperty;
        if (idProp == null) {
            throw new UnsupportedOperationException(
                    "Should not call set() on ObjectIdProperty that has no SettableBeanProperty");
        }
        return idProp.setAndReturn(instance, value);
    }
}
