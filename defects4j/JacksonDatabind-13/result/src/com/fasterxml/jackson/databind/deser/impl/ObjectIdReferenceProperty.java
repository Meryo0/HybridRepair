package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;
import java.lang.annotation.Annotation;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.DeserializationContext;

public class ObjectIdReferenceProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1L;

    private final SettableBeanProperty _forward;

    public ObjectIdReferenceProperty(SettableBeanProperty forward, ObjectIdInfo objectIdInfo)
    {
        super(forward);
        int PROBE_START_LINE_22 = 22;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_forward_2231_line_22 = forward;
		int PROBE_END_LINE_22 = 22;
		_forward = p_forward_2231_line_22;
        int PROBE_START_LINE_23 = 23;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo p_object_id_info_2232_line_23 = objectIdInfo;
		int PROBE_END_LINE_23 = 23;
		_objectIdInfo = p_object_id_info_2232_line_23;
    }

    public ObjectIdReferenceProperty(ObjectIdReferenceProperty src, JsonDeserializer<?> deser)
    {
        super(src, deser);
        _forward = src._forward;
        _objectIdInfo = src._objectIdInfo;
    }

    public ObjectIdReferenceProperty(ObjectIdReferenceProperty src, PropertyName newName)
    {
        super(src, newName);
        _forward = src._forward;
        _objectIdInfo = src._objectIdInfo;
    }

    @Override
    public SettableBeanProperty withValueDeserializer(JsonDeserializer<?> deser) {
        return new ObjectIdReferenceProperty(this, deser);
    }

    @Override
    public SettableBeanProperty withName(PropertyName newName) {
        return new ObjectIdReferenceProperty(this, newName);
    }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> acls) {
        return _forward.getAnnotation(acls);
    }

    @Override
    public AnnotatedMember getMember() {
        int PROBE_START_LINE_57 = 57;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty f__forward_2233_line_57 = _forward;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember object_id_reference_property_1_expr4_line_57 = f__forward_2233_line_57
				.getMember();
		int PROBE_END_LINE_57 = 57;
		return object_id_reference_property_1_expr4_line_57;
    }

    @Override
    public void deserializeAndSet(JsonParser jp, DeserializationContext ctxt, Object instance) throws IOException {
        int PROBE_START_LINE_62 = 62;
		com.fasterxml.jackson.core.JsonParser p_jp_2241_line_62 = jp;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2242_line_62 = ctxt;
		Object p_instance_2243_line_62 = instance;
		int PROBE_END_LINE_62 = 62;
		deserializeSetAndReturn(p_jp_2241_line_62, p_ctxt_2242_line_62, p_instance_2243_line_62);
    }

    @Override
    public Object deserializeSetAndReturn(JsonParser jp, DeserializationContext ctxt, Object instance)
        throws IOException
    {
        try {
            int PROBE_START_LINE_70 = 70;
			Object p_instance_2246_line_70 = instance;
			com.fasterxml.jackson.core.JsonParser p_jp_2244_line_70 = jp;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2245_line_70 = ctxt;
			Object object_id_reference_property_1_expr7_line_70 = deserialize(p_jp_2244_line_70, p_ctxt_2245_line_70);
			Object object_id_reference_property_1_expr6_line_70 = setAndReturn(p_instance_2246_line_70,
					object_id_reference_property_1_expr7_line_70);
			int PROBE_END_LINE_70 = 70;
			return object_id_reference_property_1_expr6_line_70;
        } catch (UnresolvedForwardReference reference) {
            boolean usingIdentityInfo = (_objectIdInfo != null) || (_valueDeserializer.getObjectIdReader() != null);
            if (!usingIdentityInfo) {
                throw JsonMappingException.from(jp, "Unresolved forward reference but no identity info.", reference);
            }
            reference.getRoid().appendReferring(new PropertyReferring(this, reference, _type.getRawClass(), instance));
            return null;
        }
    }

    @Override
    public void set(Object instance, Object value) throws IOException {
        _forward.set(instance, value);
    }

    @Override
    public Object setAndReturn(Object instance, Object value) throws IOException {
        int PROBE_START_LINE_88 = 88;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty f__forward_2233_line_88 = _forward;
		Object p_instance_2249_line_88 = instance;
		Object p_value_2250_line_88 = value;
		Object object_id_reference_property_1_expr8_line_88 = f__forward_2233_line_88
				.setAndReturn(p_instance_2249_line_88, p_value_2250_line_88);
		int PROBE_END_LINE_88 = 88;
		return object_id_reference_property_1_expr8_line_88;
    }

    public final static class PropertyReferring extends Referring {
        private final ObjectIdReferenceProperty _parent;
        public final Object _pojo;

        public PropertyReferring(ObjectIdReferenceProperty parent,
                UnresolvedForwardReference ref, Class<?> type, Object ob)
        {
            super(ref, type);
            _parent = parent;
            _pojo = ob;
        }

        @Override
        public void handleResolvedForwardReference(Object id, Object value) throws IOException
        {
            if (!hasId(id)) {
                throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + id
                        + "] that wasn't previously seen as unresolved.");
            }
            _parent.set(_pojo, value);
        }
    }
}
