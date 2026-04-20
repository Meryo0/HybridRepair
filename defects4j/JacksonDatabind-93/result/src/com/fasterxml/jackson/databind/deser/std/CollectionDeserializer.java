package com.fasterxml.jackson.databind.deser.std;

import java.io.IOException;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring;
import com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Basic serializer that can take JSON "Array" structure and
 * construct a {@link java.util.Collection} instance, with typed contents.
 *<p>
 * Note: for untyped content (one indicated by passing Object.class
 * as the type), {@link UntypedObjectDeserializer} is used instead.
 * It can also construct {@link java.util.List}s, but not with specific
 * POJO types, only other containers and primitives/wrappers.
 */
@JacksonStdImpl
public class CollectionDeserializer
    extends ContainerDeserializerBase<Collection<Object>>
    implements ContextualDeserializer
{
    private static final long serialVersionUID = -1L; // since 2.5

    // // Configuration

    protected final JavaType _collectionType;
    
    /**
     * Value deserializer.
     */
    protected final JsonDeserializer<Object> _valueDeserializer;

    /**
     * If element instances have polymorphic type information, this
     * is the type deserializer that can handle it
     */
    protected final TypeDeserializer _valueTypeDeserializer;

    // // Instance construction settings:

    protected final ValueInstantiator _valueInstantiator;

    /**
     * Deserializer that is used iff delegate-based creator is
     * to be used for deserializing from JSON Object.
     */
    protected final JsonDeserializer<Object> _delegateDeserializer;

    /**
     * Specific override for this instance (from proper, or global per-type overrides)
     * to indicate whether single value may be taken to mean an unwrapped one-element array
     * or not. If null, left to global defaults.
     *
     * @since 2.7
     */
    protected final Boolean _unwrapSingle;

    // NOTE: no PropertyBasedCreator, as JSON Arrays have no properties

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    /**
     * Constructor for context-free instances, where we do not yet know
     * which property is using this deserializer.
     */
    public CollectionDeserializer(JavaType collectionType,
            JsonDeserializer<Object> valueDeser,
            TypeDeserializer valueTypeDeser, ValueInstantiator valueInstantiator)
    {
        this(collectionType, valueDeser, valueTypeDeser, valueInstantiator, null, null);
    }

    /**
     * Constructor used when creating contextualized instances.
     */
    protected CollectionDeserializer(JavaType collectionType,
            JsonDeserializer<Object> valueDeser, TypeDeserializer valueTypeDeser,
            ValueInstantiator valueInstantiator,
            JsonDeserializer<Object> delegateDeser,
            Boolean unwrapSingle)
    {
        super(collectionType);
        int PROBE_START_LINE_96 = 96;
		com.fasterxml.jackson.databind.JavaType p_collection_type_2403_line_96 = collectionType;
		int PROBE_END_LINE_96 = 96;
		_collectionType = p_collection_type_2403_line_96;
        int PROBE_START_LINE_97 = 97;
		JsonDeserializer<Object> p_value_deser_2404_line_97 = valueDeser;
		int PROBE_END_LINE_97 = 97;
		_valueDeserializer = p_value_deser_2404_line_97;
        int PROBE_START_LINE_98 = 98;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_value_type_deser_2405_line_98 = valueTypeDeser;
		int PROBE_END_LINE_98 = 98;
		_valueTypeDeserializer = p_value_type_deser_2405_line_98;
        int PROBE_START_LINE_99 = 99;
		com.fasterxml.jackson.databind.deser.ValueInstantiator p_value_instantiator_2406_line_99 = valueInstantiator;
		int PROBE_END_LINE_99 = 99;
		_valueInstantiator = p_value_instantiator_2406_line_99;
        int PROBE_START_LINE_100 = 100;
		JsonDeserializer<Object> p_delegate_deser_2407_line_100 = delegateDeser;
		int PROBE_END_LINE_100 = 100;
		_delegateDeserializer = p_delegate_deser_2407_line_100;
        int PROBE_START_LINE_101 = 101;
		Boolean p_unwrap_single_2408_line_101 = unwrapSingle;
		int PROBE_END_LINE_101 = 101;
		_unwrapSingle = p_unwrap_single_2408_line_101;
    }

    /**
     * Copy-constructor that can be used by sub-classes to allow
     * copy-on-write styling copying of settings of an existing instance.
     */
    protected CollectionDeserializer(CollectionDeserializer src)
    {
        super(src._collectionType);
        _collectionType = src._collectionType;
        _valueDeserializer = src._valueDeserializer;
        _valueTypeDeserializer = src._valueTypeDeserializer;
        _valueInstantiator = src._valueInstantiator;
        _delegateDeserializer = src._delegateDeserializer;
        _unwrapSingle = src._unwrapSingle;
    }

    /**
     * Fluent-factory method call to construct contextual instance.
     *
     * @since 2.7
     */
    @SuppressWarnings("unchecked")
    protected CollectionDeserializer withResolved(JsonDeserializer<?> dd,
            JsonDeserializer<?> vd, TypeDeserializer vtd,
            Boolean unwrapSingle)
    {
        if ((dd == _delegateDeserializer) && (vd == _valueDeserializer) && (vtd == _valueTypeDeserializer)
                && (_unwrapSingle == unwrapSingle)) {
            return this;
        }
        return new CollectionDeserializer(_collectionType,
                (JsonDeserializer<Object>) vd, vtd,
                _valueInstantiator, (JsonDeserializer<Object>) dd, unwrapSingle);
    }

    /**
     * @deprecated Since 2.7 as it does not pass `unwrapSingle`
     */
    @Deprecated // since 2.7 -- will not retain "unwrapSingle" setting
    protected CollectionDeserializer withResolved(JsonDeserializer<?> dd,
            JsonDeserializer<?> vd, TypeDeserializer vtd)
    {
        return withResolved(dd, vd, vtd, _unwrapSingle);
    }

    // Important: do NOT cache if polymorphic values
    @Override // since 2.5
    public boolean isCachable() {
        // 26-Mar-2015, tatu: As per [databind#735], need to be careful
        return (_valueDeserializer == null)
                && (_valueTypeDeserializer == null)
                && (_delegateDeserializer == null)
                ;
    }

    /*
    /**********************************************************
    /* Validation, post-processing (ResolvableDeserializer)
    /**********************************************************
     */

    /**
     * Method called to finalize setup of this deserializer,
     * when it is known for which property deserializer is needed
     * for.
     */
    @Override
    public CollectionDeserializer createContextual(DeserializationContext ctxt,
            BeanProperty property) throws JsonMappingException
    {
        // May need to resolve types for delegate-based creators:
        JsonDeserializer<Object> delegateDeser = null;
        int PROBE_START_LINE_175 = 193;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_2412_line_175 = _valueInstantiator;
		boolean collection_deserializer_1_expr10_line_175 = f__value_instantiator_2412_line_175 != null;
		int PROBE_END_LINE_175 = 193;
		if (collection_deserializer_1_expr10_line_175) {
            int PROBE_START_LINE_176 = 192;
			com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_2412_line_176 = _valueInstantiator;
			boolean collection_deserializer_1_expr11_line_176 = f__value_instantiator_2412_line_176
					.canCreateUsingDelegate();
			int PROBE_END_LINE_176 = 192;
			if (collection_deserializer_1_expr11_line_176) {
                JavaType delegateType = _valueInstantiator.getDelegateType(ctxt.getConfig());
                if (delegateType == null) {
                    throw new IllegalArgumentException("Invalid delegate-creator definition for "+_collectionType
                            +": value instantiator ("+_valueInstantiator.getClass().getName()
                            +") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
                }
                delegateDeser = findDeserializer(ctxt, delegateType, property);
            } else {
				int PROBE_START_LINE_184 = 192;
				com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_2412_line_184 = _valueInstantiator;
				boolean collection_deserializer_1_expr12_line_184 = f__value_instantiator_2412_line_184
						.canCreateUsingArrayDelegate();
				int PROBE_END_LINE_184 = 192;
				if (collection_deserializer_1_expr12_line_184) {
					JavaType delegateType = _valueInstantiator.getArrayDelegateType(ctxt.getConfig());
					if (delegateType == null) {
						throw new IllegalArgumentException("Invalid array-delegate-creator definition for "
								+ _collectionType + ": value instantiator (" + _valueInstantiator.getClass().getName()
								+ ") returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'");
					}
					delegateDeser = findDeserializer(ctxt, delegateType, property);
				}
			}
        }
        int PROBE_START_LINE_197 = 198;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2423_line_197 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_property_2424_line_197 = property;
		Boolean collection_deserializer_1_expr13_line_197 = findFormatFeature(p_ctxt_2423_line_197,
				p_property_2424_line_197, Collection.class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
		int PROBE_END_LINE_197 = 198;
		// [databind#1043]: allow per-property allow-wrapping of single overrides:
        // 11-Dec-2015, tatu: Should we pass basic `Collection.class`, or more refined? Mostly
        //   comes down to "List vs Collection" I suppose... for now, pass Collection
        Boolean unwrapSingle = collection_deserializer_1_expr13_line_197;
        int PROBE_START_LINE_200 = 200;
		JsonDeserializer<?> f__value_deserializer_2410_line_200 = _valueDeserializer;
		int PROBE_END_LINE_200 = 200;
		// also, often value deserializer is resolved here:
        JsonDeserializer<?> valueDeser = f__value_deserializer_2410_line_200;
        
        int PROBE_START_LINE_203 = 203;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2423_line_203 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_property_2424_line_203 = property;
		JsonDeserializer<?> v_value_deser_2427_line_203 = valueDeser;
		JsonDeserializer<?> collection_deserializer_1_expr16_line_203 = findConvertingContentDeserializer(
				p_ctxt_2423_line_203, p_property_2424_line_203, v_value_deser_2427_line_203);
		int PROBE_END_LINE_203 = 203;
		// May have a content converter
        valueDeser = collection_deserializer_1_expr16_line_203;
        int PROBE_START_LINE_204 = 204;
		com.fasterxml.jackson.databind.JavaType f__collection_type_2409_line_204 = _collectionType;
		JavaType collection_deserializer_1_expr17_line_204 = f__collection_type_2409_line_204.getContentType();
		int PROBE_END_LINE_204 = 204;
		final JavaType vt = collection_deserializer_1_expr17_line_204;
        int PROBE_START_LINE_205 = 209;
		JsonDeserializer<?> v_value_deser_2427_line_205 = valueDeser;
		boolean collection_deserializer_1_expr18_line_205 = v_value_deser_2427_line_205 == null;
		int PROBE_END_LINE_205 = 209;
		if (collection_deserializer_1_expr18_line_205) {
            int PROBE_START_LINE_206 = 206;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2423_line_206 = ctxt;
			com.fasterxml.jackson.databind.JavaType v_vt_2428_line_206 = vt;
			com.fasterxml.jackson.databind.BeanProperty p_property_2424_line_206 = property;
			JsonDeserializer<Object> collection_deserializer_1_expr20_line_206 = p_ctxt_2423_line_206
					.findContextualValueDeserializer(v_vt_2428_line_206, p_property_2424_line_206);
			int PROBE_END_LINE_206 = 206;
			valueDeser = collection_deserializer_1_expr20_line_206;
        } else { // if directly assigned, probably not yet contextual, so:
            valueDeser = ctxt.handleSecondaryContextualization(valueDeser, property, vt);
        }
        // and finally, type deserializer needs context as well
        TypeDeserializer valueTypeDeser = _valueTypeDeserializer;
        if (valueTypeDeser != null) {
            valueTypeDeser = valueTypeDeser.forProperty(property);
        }
        return withResolved(delegateDeser, valueDeser, valueTypeDeser, unwrapSingle);
    }

    /*
    /**********************************************************
    /* ContainerDeserializerBase API
    /**********************************************************
     */

    @Override
    public JavaType getContentType() {
        return _collectionType.getContentType();
    }

    @Override
    public JsonDeserializer<Object> getContentDeserializer() {
        return _valueDeserializer;
    }
    
    /*
    /**********************************************************
    /* JsonDeserializer API
    /**********************************************************
     */
    
    @SuppressWarnings("unchecked")
    @Override
    public Collection<Object> deserialize(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        if (_delegateDeserializer != null) {
            return (Collection<Object>) _valueInstantiator.createUsingDelegate(ctxt,
                    _delegateDeserializer.deserialize(p, ctxt));
        }
        /* Empty String may be ok; bit tricky to check, however, since
         * there is also possibility of "auto-wrapping" of single-element arrays.
         * Hence we only accept empty String here.
         */
        if (p.hasToken(JsonToken.VALUE_STRING)) {
            String str = p.getText();
            if (str.length() == 0) {
                return (Collection<Object>) _valueInstantiator.createFromString(ctxt, str);
            }
        }
        return deserialize(p, ctxt, (Collection<Object>) _valueInstantiator.createUsingDefault(ctxt));
    }

    @Override
    public Collection<Object> deserialize(JsonParser p, DeserializationContext ctxt,
            Collection<Object> result)
        throws IOException
    {
        // Ok: must point to START_ARRAY (or equivalent)
        if (!p.isExpectedStartArrayToken()) {
            return handleNonArray(p, ctxt, result);
        }
        // [databind#631]: Assign current value, to be accessible by custom serializers
        p.setCurrentValue(result);

        JsonDeserializer<Object> valueDes = _valueDeserializer;
        final TypeDeserializer typeDeser = _valueTypeDeserializer;
        CollectionReferringAccumulator referringAccumulator =
            (valueDes.getObjectIdReader() == null) ? null :
                new CollectionReferringAccumulator(_collectionType.getContentType().getRawClass(), result);

        JsonToken t;
        while ((t = p.nextToken()) != JsonToken.END_ARRAY) {
            try {
                Object value;
                if (t == JsonToken.VALUE_NULL) {
                    value = valueDes.getNullValue(ctxt);
                } else if (typeDeser == null) {
                    value = valueDes.deserialize(p, ctxt);
                } else {
                    value = valueDes.deserializeWithType(p, ctxt, typeDeser);
                }
                if (referringAccumulator != null) {
                    referringAccumulator.add(value);
                } else {
                    result.add(value);
                }
            } catch (UnresolvedForwardReference reference) {
                if (referringAccumulator == null) {
                    throw JsonMappingException
                            .from(p, "Unresolved forward reference but no identity info", reference);
                }
                Referring ref = referringAccumulator.handleUnresolvedReference(reference);
                reference.getRoid().appendReferring(ref);
            } catch (Exception e) {
                boolean wrap = (ctxt == null) || ctxt.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
                if (!wrap && e instanceof RuntimeException) {
                    throw (RuntimeException)e;
                }
                throw JsonMappingException.wrapWithPath(e, result, result.size());
            }
        }
        return result;
    }

    @Override
    public Object deserializeWithType(JsonParser p, DeserializationContext ctxt,
            TypeDeserializer typeDeserializer)
        throws IOException
    {
        // In future could check current token... for now this should be enough:
        return typeDeserializer.deserializeTypedFromArray(p, ctxt);
    }

    /**
     * Helper method called when current token is no START_ARRAY. Will either
     * throw an exception, or try to handle value as if member of implicit
     * array, depending on configuration.
     */
    @SuppressWarnings("unchecked")
    protected final Collection<Object> handleNonArray(JsonParser p, DeserializationContext ctxt,
            Collection<Object> result)
        throws IOException
    {
        // Implicit arrays from single values?
        boolean canWrap = (_unwrapSingle == Boolean.TRUE) ||
                ((_unwrapSingle == null) &&
                        ctxt.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY));
        if (!canWrap) {
            return (Collection<Object>) ctxt.handleUnexpectedToken(_collectionType.getRawClass(), p);
        }
        JsonDeserializer<Object> valueDes = _valueDeserializer;
        final TypeDeserializer typeDeser = _valueTypeDeserializer;
        JsonToken t = p.getCurrentToken();

        Object value;

        try {
            if (t == JsonToken.VALUE_NULL) {
                value = valueDes.getNullValue(ctxt);
            } else if (typeDeser == null) {
                value = valueDes.deserialize(p, ctxt);
            } else {
                value = valueDes.deserializeWithType(p, ctxt, typeDeser);
            }
        } catch (Exception e) {
            // note: pass Object.class, not Object[].class, as we need element type for error info
            throw JsonMappingException.wrapWithPath(e, Object.class, result.size());
        }
        result.add(value);
        return result;
    }

    public final static class CollectionReferringAccumulator {
        private final Class<?> _elementType;
        private final Collection<Object> _result;

        /**
         * A list of {@link CollectionReferring} to maintain ordering.
         */
        private List<CollectionReferring> _accumulator = new ArrayList<CollectionReferring>();

        public CollectionReferringAccumulator(Class<?> elementType, Collection<Object> result) {
            _elementType = elementType;
            _result = result;
        }

        public void add(Object value)
        {
            if (_accumulator.isEmpty()) {
                _result.add(value);
            } else {
                CollectionReferring ref = _accumulator.get(_accumulator.size() - 1);
                ref.next.add(value);
            }
        }

        public Referring handleUnresolvedReference(UnresolvedForwardReference reference)
        {
            CollectionReferring id = new CollectionReferring(this, reference, _elementType);
            _accumulator.add(id);
            return id;
        }

        public void resolveForwardReference(Object id, Object value) throws IOException
        {
            Iterator<CollectionReferring> iterator = _accumulator.iterator();
            // Resolve ordering after resolution of an id. This mean either:
            // 1- adding to the result collection in case of the first unresolved id.
            // 2- merge the content of the resolved id with its previous unresolved id.
            Collection<Object> previous = _result;
            while (iterator.hasNext()) {
                CollectionReferring ref = iterator.next();
                if (ref.hasId(id)) {
                    iterator.remove();
                    previous.add(value);
                    previous.addAll(ref.next);
                    return;
                }
                previous = ref.next;
            }

            throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + id
                    + "] that wasn't previously seen as unresolved.");
        }
    }

    /**
     * Helper class to maintain processing order of value. The resolved
     * object associated with {@link #_id} comes before the values in
     * {@link #next}.
     */
    private final static class CollectionReferring extends Referring {
        private final CollectionReferringAccumulator _parent;
        public final List<Object> next = new ArrayList<Object>();
        
        CollectionReferring(CollectionReferringAccumulator parent,
                UnresolvedForwardReference reference, Class<?> contentType)
        {
            super(reference, contentType);
            _parent = parent;
        }
        
        @Override
        public void handleResolvedForwardReference(Object id, Object value) throws IOException {
            _parent.resolveForwardReference(id, value);
        }
    }
}
