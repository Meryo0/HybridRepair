package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * This concrete sub-class implements property that is set
 * using regular "setter" method.
 */
public final class MethodProperty
    extends SettableBeanProperty
{
    private static final long serialVersionUID = 1;

    protected final AnnotatedMethod _annotated;
    
    /**
     * Setter method for modifying property value; used for
     * "regular" method-accessible properties.
     */
    protected final transient Method _setter;

    /**
     * @since 2.9
     */
    final protected boolean _skipNulls;
    
    public MethodProperty(BeanPropertyDefinition propDef,
            JavaType type, TypeDeserializer typeDeser,
            Annotations contextAnnotations, AnnotatedMethod method)
    {
        super(propDef, type, typeDeser, contextAnnotations);
        int PROBE_START_LINE_43 = 43;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_method_2754_line_43 = method;
		int PROBE_END_LINE_43 = 43;
		_annotated = p_method_2754_line_43;
        int PROBE_START_LINE_44 = 44;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_method_2754_line_44 = method;
		java.lang.reflect.Method method_property_1_expr4_line_44 = p_method_2754_line_44.getAnnotated();
		int PROBE_END_LINE_44 = 44;
		_setter = method_property_1_expr4_line_44;
        int PROBE_START_LINE_45 = 45;
		com.fasterxml.jackson.databind.deser.NullValueProvider f__null_provider_2449_line_45 = _nullProvider;
		boolean method_property_1_expr6_line_45 = NullsConstantProvider.isSkipper(f__null_provider_2449_line_45);
		int PROBE_END_LINE_45 = 45;
		_skipNulls = method_property_1_expr6_line_45;
    }

    protected MethodProperty(MethodProperty src, JsonDeserializer<?> deser,
            NullValueProvider nva) {
        super(src, deser, nva);
        int PROBE_START_LINE_51 = 51;
		com.fasterxml.jackson.databind.deser.impl.MethodProperty p_src_2758_line_51 = src;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod q__annotated_89_line_51 = p_src_2758_line_51._annotated;
		int PROBE_END_LINE_51 = 51;
		_annotated = q__annotated_89_line_51;
        int PROBE_START_LINE_52 = 52;
		com.fasterxml.jackson.databind.deser.impl.MethodProperty p_src_2758_line_52 = src;
		java.lang.reflect.Method q__setter_90_line_52 = p_src_2758_line_52._setter;
		int PROBE_END_LINE_52 = 52;
		_setter = q__setter_90_line_52;
        int PROBE_START_LINE_53 = 53;
		com.fasterxml.jackson.databind.deser.NullValueProvider p_nva_2760_line_53 = nva;
		boolean method_property_1_expr11_line_53 = NullsConstantProvider.isSkipper(p_nva_2760_line_53);
		int PROBE_END_LINE_53 = 53;
		_skipNulls = method_property_1_expr11_line_53;
    }

    protected MethodProperty(MethodProperty src, PropertyName newName) {
        super(src, newName);
        _annotated = src._annotated;
        _setter = src._setter;
        _skipNulls = src._skipNulls;
    }

    /**
     * Constructor used for JDK Serialization when reading persisted object
     */
    protected MethodProperty(MethodProperty src, Method m) {
        super(src);
        _annotated = src._annotated;
        _setter = m;
        _skipNulls = src._skipNulls;
    }

    @Override
    public SettableBeanProperty withName(PropertyName newName) {
        return new MethodProperty(this, newName);
    }
    
    @Override
    public SettableBeanProperty withValueDeserializer(JsonDeserializer<?> deser) {
        int PROBE_START_LINE_80 = 82;
		JsonDeserializer<Object> f__value_deserializer_2448_line_80 = _valueDeserializer;
		JsonDeserializer<?> p_deser_2766_line_80 = deser;
		boolean method_property_1_expr12_line_80 = f__value_deserializer_2448_line_80 == p_deser_2766_line_80;
		int PROBE_END_LINE_80 = 82;
		if (method_property_1_expr12_line_80) {
            return this;
        }
        int PROBE_START_LINE_83 = 83;
		JsonDeserializer<?> p_deser_2766_line_83 = deser;
		com.fasterxml.jackson.databind.deser.NullValueProvider f__null_provider_2449_line_83 = _nullProvider;
		int PROBE_END_LINE_83 = 83;
		return new MethodProperty(this, p_deser_2766_line_83, f__null_provider_2449_line_83);
    }

    @Override
    public SettableBeanProperty withNullProvider(NullValueProvider nva) {
        return new MethodProperty(this, _valueDeserializer, nva);
    }

    @Override
    public void fixAccess(DeserializationConfig config) {
        int PROBE_START_LINE_93 = 94;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod f__annotated_2755_line_93 = _annotated;
		int PROBE_END_LINE_93 = 94;
		f__annotated_2755_line_93.fixAccess(
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

    @Override public AnnotatedMember getMember() {  int PROBE_START_LINE_108 = 108;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod f__annotated_2755_line_108 = _annotated;
		int PROBE_END_LINE_108 = 108;
	return f__annotated_2755_line_108; }

    /*
    /**********************************************************
    /* Overridden methods
    /**********************************************************
     */

    @Override
    public void deserializeAndSet(JsonParser p, DeserializationContext ctxt,
            Object instance) throws IOException
    {
        Object value = null;
        int PROBE_START_LINE_121 = 137;
		com.fasterxml.jackson.core.JsonParser p_p_2770_line_121 = p;
		com.fasterxml.jackson.core.JsonToken q_value_null_91_line_121 = JsonToken.VALUE_NULL;
		boolean method_property_1_expr19_line_121 = p_p_2770_line_121.hasToken(q_value_null_91_line_121);
		int PROBE_END_LINE_121 = 137;
		if (method_property_1_expr19_line_121) {
            if (_skipNulls) {
                return;
            }
            value = _nullProvider.getNullValue(ctxt);
        } else {
			int PROBE_START_LINE_126 = 137;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer f__value_type_deserializer_2447_line_126 = _valueTypeDeserializer;
			boolean method_property_1_expr20_line_126 = f__value_type_deserializer_2447_line_126 == null;
			int PROBE_END_LINE_126 = 137;
			if (method_property_1_expr20_line_126) {
				int PROBE_START_LINE_127 = 127;
				JsonDeserializer<Object> f__value_deserializer_2448_line_127 = _valueDeserializer;
				com.fasterxml.jackson.core.JsonParser p_p_2770_line_127 = p;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2771_line_127 = ctxt;
				Object method_property_1_expr22_line_127 = f__value_deserializer_2448_line_127
						.deserialize(p_p_2770_line_127, p_ctxt_2771_line_127);
				int PROBE_END_LINE_127 = 127;
				value = method_property_1_expr22_line_127;
				int PROBE_START_LINE_129 = 134;
				Object v_value_2773_line_129 = value;
				boolean method_property_1_expr23_line_129 = v_value_2773_line_129 == null;
				int PROBE_END_LINE_129 = 134;
				if (method_property_1_expr23_line_129) {
					if (_skipNulls) {
						return;
					}
					value = _nullProvider.getNullValue(ctxt);
				}
			} else {
				int PROBE_START_LINE_136 = 136;
				JsonDeserializer<Object> f__value_deserializer_2448_line_136 = _valueDeserializer;
				com.fasterxml.jackson.core.JsonParser p_p_2770_line_136 = p;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2771_line_136 = ctxt;
				com.fasterxml.jackson.databind.jsontype.TypeDeserializer f__value_type_deserializer_2447_line_136 = _valueTypeDeserializer;
				Object method_property_1_expr25_line_136 = f__value_deserializer_2448_line_136.deserializeWithType(
						p_p_2770_line_136, p_ctxt_2771_line_136, f__value_type_deserializer_2447_line_136);
				int PROBE_END_LINE_136 = 136;
				value = method_property_1_expr25_line_136;
			}
		}
        try {
            int PROBE_START_LINE_139 = 139;
			java.lang.reflect.Method f__setter_2756_line_139 = _setter;
			Object p_instance_2772_line_139 = instance;
			Object v_value_2773_line_139 = value;
			int PROBE_END_LINE_139 = 139;
			f__setter_2756_line_139.invoke(p_instance_2772_line_139, v_value_2773_line_139);
        } catch (Exception e) {
            _throwAsIOE(p, e, value);
        }
    }

    @Override
    public Object deserializeSetAndReturn(JsonParser p,
    		DeserializationContext ctxt, Object instance) throws IOException
    {
        Object value;
        if (p.hasToken(JsonToken.VALUE_NULL)) {
            if (_skipNulls) {
                return instance;
            }
            value = _nullProvider.getNullValue(ctxt);
        } else if (_valueTypeDeserializer == null) {
            value = _valueDeserializer.deserialize(p, ctxt);
            // 04-May-2018, tatu: [databind#2023] Coercion from String (mostly) can give null
            if (value == null) {
                if (_skipNulls) {
                    return instance;
                }
                value = _nullProvider.getNullValue(ctxt);
            }
        } else {
            value = _valueDeserializer.deserializeWithType(p, ctxt, _valueTypeDeserializer);
        }
        try {
            Object result = _setter.invoke(instance, value);
            return (result == null) ? instance : result;
        } catch (Exception e) {
            _throwAsIOE(p, e, value);
            return null;
        }
    }

    @Override
    public final void set(Object instance, Object value) throws IOException
    {
        try {
            _setter.invoke(instance, value);
        } catch (Exception e) {
            // 15-Sep-2015, tatu: How could we get a ref to JsonParser?
            _throwAsIOE(e, value);
        }
    }

    @Override
    public Object setAndReturn(Object instance, Object value) throws IOException
    {
        try {
            Object result = _setter.invoke(instance, value);
            return (result == null) ? instance : result;
        } catch (Exception e) {
            // 15-Sep-2015, tatu: How could we get a ref to JsonParser?
            _throwAsIOE(e, value);
            return null;
        }
    }

    /*
    /**********************************************************
    /* JDK serialization handling
    /**********************************************************
     */

    Object readResolve() {
        return new MethodProperty(this, _annotated.getAnnotated());
    }
}
