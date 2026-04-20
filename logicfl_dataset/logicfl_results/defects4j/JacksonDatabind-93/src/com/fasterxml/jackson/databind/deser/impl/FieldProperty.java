package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * This concrete sub-class implements property that is set
 * directly assigning to a Field.
 */
public final class FieldProperty
    extends SettableBeanProperty
{
    private static final long serialVersionUID = 1L;

    final protected AnnotatedField _annotated;

    /**
     * Actual field to set when deserializing this property.
     * Transient since there is no need to persist; only needed during
     * construction of objects.
     */
    final protected transient Field _field;

    public FieldProperty(BeanPropertyDefinition propDef, JavaType type,
            TypeDeserializer typeDeser, Annotations contextAnnotations, AnnotatedField field)
    {
        super(propDef, type, typeDeser, contextAnnotations);
        int PROBE_START_LINE_39 = 39;
		com.fasterxml.jackson.databind.introspect.AnnotatedField p_field_2377_line_39 = field;
		int PROBE_END_LINE_39 = 39;
		_annotated = p_field_2377_line_39;
        int PROBE_START_LINE_40 = 40;
		com.fasterxml.jackson.databind.introspect.AnnotatedField p_field_2377_line_40 = field;
		java.lang.reflect.Field field_property_1_expr4_line_40 = p_field_2377_line_40.getAnnotated();
		int PROBE_END_LINE_40 = 40;
		_field = field_property_1_expr4_line_40;
    }

    protected FieldProperty(FieldProperty src, JsonDeserializer<?> deser) {
        super(src, deser);
        int PROBE_START_LINE_45 = 45;
		com.fasterxml.jackson.databind.deser.impl.FieldProperty p_src_2380_line_45 = src;
		com.fasterxml.jackson.databind.introspect.AnnotatedField q__annotated_68_line_45 = p_src_2380_line_45._annotated;
		int PROBE_END_LINE_45 = 45;
		_annotated = q__annotated_68_line_45;
        int PROBE_START_LINE_46 = 46;
		com.fasterxml.jackson.databind.deser.impl.FieldProperty p_src_2380_line_46 = src;
		java.lang.reflect.Field q__field_69_line_46 = p_src_2380_line_46._field;
		int PROBE_END_LINE_46 = 46;
		_field = q__field_69_line_46;
    }

    protected FieldProperty(FieldProperty src, PropertyName newName) {
        super(src, newName);
        _annotated = src._annotated;
        _field = src._field;
    }

    /**
     * Constructor used for JDK Serialization when reading persisted object
     */
    protected FieldProperty(FieldProperty src)
    {
        super(src);
        _annotated = src._annotated;
        Field f = _annotated.getAnnotated();
        if (f == null) {
            throw new IllegalArgumentException("Missing field (broken JDK (de)serialization?)");
        }
        _field = f;
    }
    
    @Override
    public FieldProperty withName(PropertyName newName) {
        return new FieldProperty(this, newName);
    }
    
    @Override
    public FieldProperty withValueDeserializer(JsonDeserializer<?> deser) {
        int PROBE_START_LINE_76 = 78;
		JsonDeserializer<Object> f__value_deserializer_2154_line_76 = _valueDeserializer;
		JsonDeserializer<?> p_deser_2386_line_76 = deser;
		boolean field_property_1_expr8_line_76 = f__value_deserializer_2154_line_76 == p_deser_2386_line_76;
		int PROBE_END_LINE_76 = 78;
		if (field_property_1_expr8_line_76) {
            return this;
        }
        int PROBE_START_LINE_79 = 79;
		JsonDeserializer<?> p_deser_2386_line_79 = deser;
		int PROBE_END_LINE_79 = 79;
		return new FieldProperty(this, p_deser_2386_line_79);
    }

    @Override
    public void fixAccess(DeserializationConfig config) {
        int PROBE_START_LINE_84 = 85;
		java.lang.reflect.Field f__field_2379_line_84 = _field;
		int PROBE_END_LINE_84 = 85;
		ClassUtil.checkAndFixAccess(f__field_2379_line_84,
                config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    /*
    /**********************************************************
    /* BeanProperty impl
    /**********************************************************
     */
    
    @Override
    public <A extends Annotation> A getAnnotation(Class<A> acls) {
        return (_annotated == null) ? null : _annotated.getAnnotation(acls);
    }

    @Override public AnnotatedMember getMember() {  int PROBE_START_LINE_99 = 99;
		com.fasterxml.jackson.databind.introspect.AnnotatedField f__annotated_2378_line_99 = _annotated;
		int PROBE_END_LINE_99 = 99;
	return f__annotated_2378_line_99; }

    /*
    /**********************************************************
    /* Overridden methods
    /**********************************************************
     */

    @Override
    public void deserializeAndSet(JsonParser p,
    		DeserializationContext ctxt, Object instance) throws IOException
    {
        Object value = deserialize(p, ctxt);
        try {
            _field.set(instance, value);
        } catch (Exception e) {
            _throwAsIOE(p, e, value);
        }
    }

    @Override
    public Object deserializeSetAndReturn(JsonParser p,
    		DeserializationContext ctxt, Object instance) throws IOException
    {
        Object value = deserialize(p, ctxt);
        try {
            _field.set(instance, value);
        } catch (Exception e) {
            _throwAsIOE(p, e, value);
        }
        return instance;
    }
    
    @Override
    public final void set(Object instance, Object value) throws IOException
    {
        try {
            _field.set(instance, value);
        } catch (Exception e) {
            // 15-Sep-2015, tatu: How could we get a ref to JsonParser?
            _throwAsIOE(e, value);
        }
    }

    @Override
    public Object setAndReturn(Object instance, Object value) throws IOException
    {
        try {
            _field.set(instance, value);
        } catch (Exception e) {
            // 15-Sep-2015, tatu: How could we get a ref to JsonParser?
            _throwAsIOE(e, value);
        }
        return instance;
    }

    /*
    /**********************************************************
    /* JDK serialization handling
    /**********************************************************
     */

    Object readResolve() {
        return new FieldProperty(this);
    }
}