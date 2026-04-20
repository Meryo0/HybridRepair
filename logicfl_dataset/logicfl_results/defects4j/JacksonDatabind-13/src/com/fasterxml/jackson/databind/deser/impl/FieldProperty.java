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
import com.fasterxml.jackson.databind.DeserializationContext;
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
        int PROBE_START_LINE_38 = 38;
		com.fasterxml.jackson.databind.introspect.AnnotatedField p_field_2171_line_38 = field;
		int PROBE_END_LINE_38 = 38;
		_annotated = p_field_2171_line_38;
        int PROBE_START_LINE_39 = 39;
		com.fasterxml.jackson.databind.introspect.AnnotatedField p_field_2171_line_39 = field;
		java.lang.reflect.Field field_property_1_expr4_line_39 = p_field_2171_line_39.getAnnotated();
		int PROBE_END_LINE_39 = 39;
		_field = field_property_1_expr4_line_39;
    }

    protected FieldProperty(FieldProperty src, JsonDeserializer<?> deser) {
        super(src, deser);
        int PROBE_START_LINE_44 = 44;
		com.fasterxml.jackson.databind.deser.impl.FieldProperty p_src_2174_line_44 = src;
		com.fasterxml.jackson.databind.introspect.AnnotatedField q__annotated_77_line_44 = p_src_2174_line_44._annotated;
		int PROBE_END_LINE_44 = 44;
		_annotated = q__annotated_77_line_44;
        int PROBE_START_LINE_45 = 45;
		com.fasterxml.jackson.databind.deser.impl.FieldProperty p_src_2174_line_45 = src;
		java.lang.reflect.Field q__field_78_line_45 = p_src_2174_line_45._field;
		int PROBE_END_LINE_45 = 45;
		_field = q__field_78_line_45;
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
        int PROBE_START_LINE_75 = 75;
		JsonDeserializer<?> p_deser_2180_line_75 = deser;
		int PROBE_END_LINE_75 = 75;
		return new FieldProperty(this, p_deser_2180_line_75);
    }
    
    /*
    /**********************************************************
    /* BeanProperty impl
    /**********************************************************
     */
    
    @Override
    public <A extends Annotation> A getAnnotation(Class<A> acls) {
        return _annotated.getAnnotation(acls);
    }

    @Override public AnnotatedMember getMember() {  int PROBE_START_LINE_89 = 89;
		com.fasterxml.jackson.databind.introspect.AnnotatedField f__annotated_2172_line_89 = _annotated;
		int PROBE_END_LINE_89 = 89;
	return f__annotated_2172_line_89; }

    /*
    /**********************************************************
    /* Overridden methods
    /**********************************************************
     */

    @Override
    public void deserializeAndSet(JsonParser jp,
    		DeserializationContext ctxt, Object instance) throws IOException
    {
        int PROBE_START_LINE_101 = 101;
		com.fasterxml.jackson.core.JsonParser p_jp_2182_line_101 = jp;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2183_line_101 = ctxt;
		Object field_property_1_expr11_line_101 = deserialize(p_jp_2182_line_101, p_ctxt_2183_line_101);
		int PROBE_END_LINE_101 = 101;
		Object value = field_property_1_expr11_line_101;
        try {
            int PROBE_START_LINE_103 = 103;
			java.lang.reflect.Field f__field_2173_line_103 = _field;
			Object p_instance_2184_line_103 = instance;
			Object v_value_2185_line_103 = value;
			int PROBE_END_LINE_103 = 103;
			f__field_2173_line_103.set(p_instance_2184_line_103, v_value_2185_line_103);
        } catch (Exception e) {
            _throwAsIOE(e, value);
        }
    }

    @Override
    public Object deserializeSetAndReturn(JsonParser jp,
    		DeserializationContext ctxt, Object instance) throws IOException
    {
        Object value = deserialize(jp, ctxt);
        try {
            _field.set(instance, value);
        } catch (Exception e) {
            _throwAsIOE(e, value);
        }
        return instance;
    }
    
    @Override
    public final void set(Object instance, Object value) throws IOException
    {
        try {
            _field.set(instance, value);
        } catch (Exception e) {
            _throwAsIOE(e, value);
        }
    }

    @Override
    public Object setAndReturn(Object instance, Object value) throws IOException
    {
        try {
            int PROBE_START_LINE_136 = 136;
			java.lang.reflect.Field f__field_2173_line_136 = _field;
			Object p_instance_2191_line_136 = instance;
			Object p_value_2192_line_136 = value;
			int PROBE_END_LINE_136 = 136;
			f__field_2173_line_136.set(p_instance_2191_line_136, p_value_2192_line_136);
        } catch (Exception e) {
            _throwAsIOE(e, value);
        }
        int PROBE_START_LINE_140 = 140;
		Object p_instance_2191_line_140 = instance;
		int PROBE_END_LINE_140 = 140;
		return p_instance_2191_line_140;
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