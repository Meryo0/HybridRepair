package com.fasterxml.jackson.databind.deser.std;

import java.io.IOException;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonFormat;

import com.fasterxml.jackson.core.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.*;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring;
import com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.BeanProperty;
import java.util.Collection;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.DeserializationFeature;

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
        this(collectionType, valueDeser, valueTypeDeser, valueInstantiator, null, null, null);
    }

    /**
     * Constructor used when creating contextualized instances.
     *
     * @since 2.9
     */
    protected CollectionDeserializer(JavaType collectionType,
            JsonDeserializer<Object> valueDeser, TypeDeserializer valueTypeDeser,
            ValueInstantiator valueInstantiator, JsonDeserializer<Object> delegateDeser,
            NullValueProvider nuller, Boolean unwrapSingle)
    {
        super(collectionType, nuller, unwrapSingle);
        int PROBE_START_LINE_87 = 87;
		JsonDeserializer<Object> p_value_deser_2810_line_87 = valueDeser;
		int PROBE_END_LINE_87 = 87;
		_valueDeserializer = p_value_deser_2810_line_87;
        int PROBE_START_LINE_88 = 88;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_value_type_deser_2811_line_88 = valueTypeDeser;
		int PROBE_END_LINE_88 = 88;
		_valueTypeDeserializer = p_value_type_deser_2811_line_88;
        int PROBE_START_LINE_89 = 89;
		com.fasterxml.jackson.databind.deser.ValueInstantiator p_value_instantiator_2812_line_89 = valueInstantiator;
		int PROBE_END_LINE_89 = 89;
		_valueInstantiator = p_value_instantiator_2812_line_89;
        int PROBE_START_LINE_90 = 90;
		JsonDeserializer<Object> p_delegate_deser_2813_line_90 = delegateDeser;
		int PROBE_END_LINE_90 = 90;
		_delegateDeserializer = p_delegate_deser_2813_line_90;
    }

    /**
     * Copy-constructor that can be used by sub-classes to allow
     * copy-on-write styling copying of settings of an existing instance.
     */
    protected CollectionDeserializer(CollectionDeserializer src)
    {
        super(src);
        _valueDeserializer = src._valueDeserializer;
        _valueTypeDeserializer = src._valueTypeDeserializer;
        _valueInstantiator = src._valueInstantiator;
        _delegateDeserializer = src._delegateDeserializer;
    }

    /**
     * Fluent-factory method call to construct contextual instance.
     *
     * @since 2.9
     */
    @SuppressWarnings("unchecked")
    protected CollectionDeserializer withResolved(JsonDeserializer<?> dd,
            JsonDeserializer<?> vd, TypeDeserializer vtd,
            NullValueProvider nuller, Boolean unwrapSingle)
    {
int PROBE_START_LINE_117 = 120;
		com.fasterxml.jackson.databind.JavaType f__container_type_2826_line_117 = _containerType;
		int PROBE_END_LINE_117 = 120;
		//if (true) throw new Error();
        return new CollectionDeserializer(f__container_type_2826_line_117,
                (JsonDeserializer<Object>) vd, vtd,
                _valueInstantiator, (JsonDeserializer<Object>) dd,
                nuller, unwrapSingle);
    }

    // Important: do NOT cache if polymorphic values
    @Override // since 2.5
    public boolean isCachable() {
        int PROBE_START_LINE_127 = 130;
		JsonDeserializer<Object> f__value_deserializer_2816_line_127 = _valueDeserializer;
		boolean collection_deserializer_1_expr13_line_127 = f__value_deserializer_2816_line_127 == null;
		boolean collection_deserializer_1_expr12_line_127 = (collection_deserializer_1_expr13_line_127);
		boolean collection_deserializer_1_expr11_line_127 = collection_deserializer_1_expr12_line_127
				&& (_valueTypeDeserializer == null) && (_delegateDeserializer == null);
		int PROBE_END_LINE_127 = 130;
		// 26-Mar-2015, tatu: As per [databind#735], need to be careful
        return collection_deserializer_1_expr11_line_127
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
        int PROBE_START_LINE_150 = 170;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_2818_line_150 = _valueInstantiator;
		boolean collection_deserializer_1_expr14_line_150 = f__value_instantiator_2818_line_150 != null;
		int PROBE_END_LINE_150 = 170;
		if (collection_deserializer_1_expr14_line_150) {
            int PROBE_START_LINE_151 = 169;
			com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_2818_line_151 = _valueInstantiator;
			boolean collection_deserializer_1_expr15_line_151 = f__value_instantiator_2818_line_151
					.canCreateUsingDelegate();
			int PROBE_END_LINE_151 = 169;
			if (collection_deserializer_1_expr15_line_151) {
                JavaType delegateType = _valueInstantiator.getDelegateType(ctxt.getConfig());
                if (delegateType == null) {
                    ctxt.reportBadDefinition(_containerType, String.format(
"Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'",
_containerType,
                            _valueInstantiator.getClass().getName()));
                }
                delegateDeser = findDeserializer(ctxt, delegateType, property);
            } else {
				int PROBE_START_LINE_160 = 169;
				com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_2818_line_160 = _valueInstantiator;
				boolean collection_deserializer_1_expr16_line_160 = f__value_instantiator_2818_line_160
						.canCreateUsingArrayDelegate();
				int PROBE_END_LINE_160 = 169;
				if (collection_deserializer_1_expr16_line_160) {
					JavaType delegateType = _valueInstantiator.getArrayDelegateType(ctxt.getConfig());
					if (delegateType == null) {
						ctxt.reportBadDefinition(_containerType, String.format(
								"Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'",
								_containerType, _valueInstantiator.getClass().getName()));
					}
					delegateDeser = findDeserializer(ctxt, delegateType, property);
				}
			}
        }
        int PROBE_START_LINE_174 = 175;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2827_line_174 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_property_2828_line_174 = property;
		Boolean collection_deserializer_1_expr17_line_174 = findFormatFeature(p_ctxt_2827_line_174,
				p_property_2828_line_174, Collection.class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
		int PROBE_END_LINE_174 = 175;
		// [databind#1043]: allow per-property allow-wrapping of single overrides:
        // 11-Dec-2015, tatu: Should we pass basic `Collection.class`, or more refined? Mostly
        //   comes down to "List vs Collection" I suppose... for now, pass Collection
        Boolean unwrapSingle = collection_deserializer_1_expr17_line_174;
        int PROBE_START_LINE_177 = 177;
		JsonDeserializer<?> f__value_deserializer_2816_line_177 = _valueDeserializer;
		int PROBE_END_LINE_177 = 177;
		// also, often value deserializer is resolved here:
        JsonDeserializer<?> valueDeser = f__value_deserializer_2816_line_177;
        
        int PROBE_START_LINE_180 = 180;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2827_line_180 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_property_2828_line_180 = property;
		JsonDeserializer<?> v_value_deser_2831_line_180 = valueDeser;
		JsonDeserializer<?> collection_deserializer_1_expr20_line_180 = findConvertingContentDeserializer(
				p_ctxt_2827_line_180, p_property_2828_line_180, v_value_deser_2831_line_180);
		int PROBE_END_LINE_180 = 180;
		// May have a content converter
        valueDeser = collection_deserializer_1_expr20_line_180;
        int PROBE_START_LINE_181 = 181;
		com.fasterxml.jackson.databind.JavaType f__container_type_2826_line_181 = _containerType;
		JavaType collection_deserializer_1_expr21_line_181 = f__container_type_2826_line_181.getContentType();
		int PROBE_END_LINE_181 = 181;
		final JavaType vt = collection_deserializer_1_expr21_line_181;
        int PROBE_START_LINE_182 = 186;
		JsonDeserializer<?> v_value_deser_2831_line_182 = valueDeser;
		boolean collection_deserializer_1_expr22_line_182 = v_value_deser_2831_line_182 == null;
		int PROBE_END_LINE_182 = 186;
		if (collection_deserializer_1_expr22_line_182) {
            int PROBE_START_LINE_183 = 183;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2827_line_183 = ctxt;
			com.fasterxml.jackson.databind.JavaType v_vt_2832_line_183 = vt;
			com.fasterxml.jackson.databind.BeanProperty p_property_2828_line_183 = property;
			JsonDeserializer<Object> collection_deserializer_1_expr24_line_183 = p_ctxt_2827_line_183
					.findContextualValueDeserializer(v_vt_2832_line_183, p_property_2828_line_183);
			int PROBE_END_LINE_183 = 183;
			valueDeser = collection_deserializer_1_expr24_line_183;
        } else { // if directly assigned, probably not yet contextual, so:
            valueDeser = ctxt.handleSecondaryContextualization(valueDeser, property, vt);
        }
        int PROBE_START_LINE_188 = 188;
		TypeDeserializer f__value_type_deserializer_2817_line_188 = _valueTypeDeserializer;
		int PROBE_END_LINE_188 = 188;
		// and finally, type deserializer needs context as well
        TypeDeserializer valueTypeDeser = f__value_type_deserializer_2817_line_188;
        int PROBE_START_LINE_189 = 191;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_value_type_deser_2833_line_189 = valueTypeDeser;
		boolean collection_deserializer_1_expr25_line_189 = v_value_type_deser_2833_line_189 != null;
		int PROBE_END_LINE_189 = 191;
		if (collection_deserializer_1_expr25_line_189) {
            int PROBE_START_LINE_190 = 190;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_value_type_deser_2833_line_190 = valueTypeDeser;
			com.fasterxml.jackson.databind.BeanProperty p_property_2828_line_190 = property;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer collection_deserializer_1_expr27_line_190 = v_value_type_deser_2833_line_190
					.forProperty(p_property_2828_line_190);
			int PROBE_END_LINE_190 = 190;
			valueTypeDeser = collection_deserializer_1_expr27_line_190;
        }
        int PROBE_START_LINE_192 = 192;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2827_line_192 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_property_2828_line_192 = property;
		JsonDeserializer<?> v_value_deser_2831_line_192 = valueDeser;
		NullValueProvider collection_deserializer_1_expr28_line_192 = findContentNullProvider(p_ctxt_2827_line_192,
				p_property_2828_line_192, v_value_deser_2831_line_192);
		int PROBE_END_LINE_192 = 192;
		NullValueProvider nuller = collection_deserializer_1_expr28_line_192;
        int PROBE_START_LINE_193 = 201;
		Boolean v_unwrap_single_2830_line_193 = unwrapSingle;
		Boolean f__unwrap_single_2835_line_193 = _unwrapSingle;
		boolean collection_deserializer_1_expr31_line_193 = v_unwrap_single_2830_line_193 != f__unwrap_single_2835_line_193;
		boolean collection_deserializer_1_expr30_line_193 = (collection_deserializer_1_expr31_line_193);
		boolean collection_deserializer_1_expr29_line_193 = collection_deserializer_1_expr30_line_193
				|| (nuller != _nullProvider) || (delegateDeser != _delegateDeserializer)
				|| (valueDeser != _valueDeserializer) || (valueTypeDeser != _valueTypeDeserializer);
		int PROBE_END_LINE_193 = 201;
		if ( collection_deserializer_1_expr29_line_193
        ) {
            int PROBE_START_LINE_199 = 200;
			JsonDeserializer<Object> v_delegate_deser_2829_line_199 = delegateDeser;
			JsonDeserializer<?> v_value_deser_2831_line_199 = valueDeser;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_value_type_deser_2833_line_199 = valueTypeDeser;
			com.fasterxml.jackson.databind.deser.std.CollectionDeserializer collection_deserializer_1_expr32_line_199 = withResolved(
					v_delegate_deser_2829_line_199, v_value_deser_2831_line_199, v_value_type_deser_2833_line_199,
					nuller, unwrapSingle);
			int PROBE_END_LINE_199 = 200;
			return collection_deserializer_1_expr32_line_199;
        }
        return this;
    }

    /*
    /**********************************************************
    /* ContainerDeserializerBase API
    /**********************************************************
     */

    @Override
    public JsonDeserializer<Object> getContentDeserializer() {
        return _valueDeserializer;
    }

    @Override
    public ValueInstantiator getValueInstantiator() {
        return _valueInstantiator;
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
        int PROBE_START_LINE_232 = 235;
		JsonDeserializer<Object> f__delegate_deserializer_2819_line_232 = _delegateDeserializer;
		boolean collection_deserializer_1_expr33_line_232 = f__delegate_deserializer_2819_line_232 != null;
		int PROBE_END_LINE_232 = 235;
		if (collection_deserializer_1_expr33_line_232) {
            return (Collection<Object>) _valueInstantiator.createUsingDelegate(ctxt,
                    _delegateDeserializer.deserialize(p, ctxt));
        }
        int PROBE_START_LINE_239 = 244;
		com.fasterxml.jackson.core.JsonParser p_p_2836_line_239 = p;
		com.fasterxml.jackson.core.JsonToken q_value_string_94_line_239 = JsonToken.VALUE_STRING;
		boolean collection_deserializer_1_expr34_line_239 = p_p_2836_line_239.hasToken(q_value_string_94_line_239);
		int PROBE_END_LINE_239 = 244;
		// Empty String may be ok; bit tricky to check, however, since
        // there is also possibility of "auto-wrapping" of single-element arrays.
        // Hence we only accept empty String here.
        if (collection_deserializer_1_expr34_line_239) {
            String str = p.getText();
            if (str.length() == 0) {
                return (Collection<Object>) _valueInstantiator.createFromString(ctxt, str);
            }
        }
        int PROBE_START_LINE_245 = 245;
		com.fasterxml.jackson.core.JsonParser p_p_2836_line_245 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2837_line_245 = ctxt;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2837_line_245_v1 = ctxt;
		Collection<Object> collection_deserializer_1_expr36_line_245 = createDefaultInstance(p_ctxt_2837_line_245_v1);
		Collection<Object> collection_deserializer_1_expr35_line_245 = deserialize(p_p_2836_line_245,
				p_ctxt_2837_line_245, collection_deserializer_1_expr36_line_245);
		int PROBE_END_LINE_245 = 245;
		return collection_deserializer_1_expr35_line_245;
    }

    /**
     * @since 2.9
     */
    @SuppressWarnings("unchecked")
    protected Collection<Object> createDefaultInstance(DeserializationContext ctxt)
        throws IOException
    {
        int PROBE_START_LINE_255 = 255;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_2818_line_255 = _valueInstantiator;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2838_line_255 = ctxt;
		Object collection_deserializer_1_expr38_line_255 = f__value_instantiator_2818_line_255
				.createUsingDefault(p_ctxt_2838_line_255);
		int PROBE_END_LINE_255 = 255;
		return (Collection<Object>) collection_deserializer_1_expr38_line_255;
    }
    
    @Override
    public Collection<Object> deserialize(JsonParser p, DeserializationContext ctxt,
            Collection<Object> result)
        throws IOException
    {
        int PROBE_START_LINE_264 = 266;
		com.fasterxml.jackson.core.JsonParser p_p_2839_line_264 = p;
		boolean collection_deserializer_1_expr40_line_264 = p_p_2839_line_264.isExpectedStartArrayToken();
		boolean collection_deserializer_1_expr39_line_264 = !collection_deserializer_1_expr40_line_264;
		int PROBE_END_LINE_264 = 266;
		// Ok: must point to START_ARRAY (or equivalent)
        if (collection_deserializer_1_expr39_line_264) {
            return handleNonArray(p, ctxt, result);
        }
        int PROBE_START_LINE_268 = 268;
		com.fasterxml.jackson.core.JsonParser p_p_2839_line_268 = p;
		Collection<Object> p_result_2841_line_268 = result;
		int PROBE_END_LINE_268 = 268;
		// [databind#631]: Assign current value, to be accessible by custom serializers
        p_p_2839_line_268.setCurrentValue(p_result_2841_line_268);

        int PROBE_START_LINE_270 = 270;
		JsonDeserializer<Object> f__value_deserializer_2816_line_270 = _valueDeserializer;
		int PROBE_END_LINE_270 = 270;
		JsonDeserializer<Object> valueDes = f__value_deserializer_2816_line_270;
        int PROBE_START_LINE_272 = 274;
		JsonDeserializer<Object> v_value_des_2842_line_272 = valueDes;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader collection_deserializer_1_expr43_line_272 = v_value_des_2842_line_272
				.getObjectIdReader();
		boolean collection_deserializer_1_expr42_line_272 = collection_deserializer_1_expr43_line_272 != null;
		int PROBE_END_LINE_272 = 274;
		// Let's offline handling of values with Object Ids (simplifies code here)
        if (collection_deserializer_1_expr42_line_272) {
            return _deserializeWithObjectId(p, ctxt, result);
        }
        int PROBE_START_LINE_275 = 275;
		TypeDeserializer f__value_type_deserializer_2817_line_275 = _valueTypeDeserializer;
		int PROBE_END_LINE_275 = 275;
		final TypeDeserializer typeDeser = f__value_type_deserializer_2817_line_275;
        JsonToken t = null;
        while (true) {
            int PROBE_START_LINE_277 = 277;
			com.fasterxml.jackson.core.JsonParser p_p_2839_line_277 = p;
			com.fasterxml.jackson.core.JsonToken collection_deserializer_1_expr47_line_277 = p_p_2839_line_277
					.nextToken();
			com.fasterxml.jackson.core.JsonToken collection_deserializer_1_expr45_line_277 = (t = collection_deserializer_1_expr47_line_277);
			com.fasterxml.jackson.core.JsonToken q_end_array_95_line_277 = JsonToken.END_ARRAY;
			boolean collection_deserializer_1_expr44_line_277 = collection_deserializer_1_expr45_line_277 != q_end_array_95_line_277;
			if (!(collection_deserializer_1_expr44_line_277)) {
				break;
			}
			int PROBE_END_LINE_277 = 277;
			try {
                Object value = null;
                int PROBE_START_LINE_280 = 289;
				com.fasterxml.jackson.core.JsonToken v_t_2844_line_280 = t;
				com.fasterxml.jackson.core.JsonToken q_value_null_95_line_280 = JsonToken.VALUE_NULL;
				boolean collection_deserializer_1_expr48_line_280 = v_t_2844_line_280 == q_value_null_95_line_280;
				int PROBE_END_LINE_280 = 289;
				if (collection_deserializer_1_expr48_line_280) {
                    if (_skipNullValues) {
                        continue;
                    }
                    value = _nullProvider.getNullValue(ctxt);
                } else {
					int PROBE_START_LINE_285 = 289;
					com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_type_deser_2843_line_285 = typeDeser;
					boolean collection_deserializer_1_expr49_line_285 = v_type_deser_2843_line_285 == null;
					int PROBE_END_LINE_285 = 289;
					if (collection_deserializer_1_expr49_line_285) {
						value = valueDes.deserialize(p, ctxt);
					} else {
						int PROBE_START_LINE_288 = 288;
						JsonDeserializer<Object> v_value_des_2842_line_288 = valueDes;
						com.fasterxml.jackson.core.JsonParser p_p_2839_line_288 = p;
						com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2840_line_288 = ctxt;
						com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_type_deser_2843_line_288 = typeDeser;
						Object collection_deserializer_1_expr51_line_288 = v_value_des_2842_line_288
								.deserializeWithType(p_p_2839_line_288, p_ctxt_2840_line_288,
										v_type_deser_2843_line_288);
						int PROBE_END_LINE_288 = 288;
						value = collection_deserializer_1_expr51_line_288;
					}
				}
                int PROBE_START_LINE_290 = 290;
				Collection<Object> p_result_2841_line_290 = result;
				Object v_value_2845_line_290 = value;
				int PROBE_END_LINE_290 = 290;
				p_result_2841_line_290.add(v_value_2845_line_290);

                /* 17-Dec-2017, tatu: should not occur at this level...
            } catch (UnresolvedForwardReference reference) {
                throw JsonMappingException
                    .from(p, "Unresolved forward reference but no identity info", reference);
                */
            } catch (Exception e) {
                int PROBE_START_LINE_298 = 298;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2840_line_298 = ctxt;
				boolean collection_deserializer_1_expr55_line_298 = p_ctxt_2840_line_298 == null;
				boolean collection_deserializer_1_expr54_line_298 = (collection_deserializer_1_expr55_line_298);
				boolean collection_deserializer_1_expr56_line_298 = false;
				if (!collection_deserializer_1_expr54_line_298) {
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2840_line_298_v1 = ctxt;
					com.fasterxml.jackson.databind.DeserializationFeature q_wrap_exceptions_95_line_298 = DeserializationFeature.WRAP_EXCEPTIONS;
					collection_deserializer_1_expr56_line_298 = p_ctxt_2840_line_298_v1
							.isEnabled(q_wrap_exceptions_95_line_298);
				}
				boolean collection_deserializer_1_expr53_line_298 = collection_deserializer_1_expr54_line_298
						|| collection_deserializer_1_expr56_line_298;
				int PROBE_END_LINE_298 = 298;
				boolean wrap = collection_deserializer_1_expr53_line_298;
                int PROBE_START_LINE_299 = 301;
				boolean v_wrap_2847_line_299 = wrap;
				boolean collection_deserializer_1_expr57_line_299 = !v_wrap_2847_line_299;
				int PROBE_END_LINE_299 = 301;
				if (collection_deserializer_1_expr57_line_299) {
                    ClassUtil.throwIfRTE(e);
                }
                int PROBE_START_LINE_302 = 302;
				Exception v_e_2846_line_302 = e;
				Collection<Object> p_result_2841_line_302 = result;
				Collection<Object> p_result_2841_line_302_v1 = result;
				int collection_deserializer_1_expr59_line_302 = p_result_2841_line_302_v1.size();
				com.fasterxml.jackson.databind.JsonMappingException collection_deserializer_1_expr58_line_302 = JsonMappingException
						.wrapWithPath(v_e_2846_line_302, p_result_2841_line_302,
								collection_deserializer_1_expr59_line_302);
				int PROBE_END_LINE_302 = 302;
				throw collection_deserializer_1_expr58_line_302;
            }
        }
        return result;
    }

    @Override
    public Object deserializeWithType(JsonParser p, DeserializationContext ctxt,
            TypeDeserializer typeDeserializer)
        throws IOException
    {
        int PROBE_START_LINE_314 = 314;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deserializer_2850_line_314 = typeDeserializer;
		com.fasterxml.jackson.core.JsonParser p_p_2848_line_314 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2849_line_314 = ctxt;
		Object collection_deserializer_1_expr60_line_314 = p_type_deserializer_2850_line_314
				.deserializeTypedFromArray(p_p_2848_line_314, p_ctxt_2849_line_314);
		int PROBE_END_LINE_314 = 314;
		// In future could check current token... for now this should be enough:
        return collection_deserializer_1_expr60_line_314;
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
            return (Collection<Object>) ctxt.handleUnexpectedToken(_containerType.getRawClass(), p);
        }
        JsonDeserializer<Object> valueDes = _valueDeserializer;
        final TypeDeserializer typeDeser = _valueTypeDeserializer;
        JsonToken t = p.getCurrentToken();

        Object value;

        try {
            if (t == JsonToken.VALUE_NULL) {
                // 03-Feb-2017, tatu: Hmmh. I wonder... let's try skipping here, too
                if (_skipNullValues) {
                    return result;
                }
                value = _nullProvider.getNullValue(ctxt);
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

    protected Collection<Object> _deserializeWithObjectId(JsonParser p, DeserializationContext ctxt,
            Collection<Object> result)
        throws IOException
    {
        // Ok: must point to START_ARRAY (or equivalent)
        if (!p.isExpectedStartArrayToken()) {
            return handleNonArray(p, ctxt, result);
        }
        // [databind#631]: Assign current value, to be accessible by custom serializers
        p.setCurrentValue(result);

        final JsonDeserializer<Object> valueDes = _valueDeserializer;
        final TypeDeserializer typeDeser = _valueTypeDeserializer;
        CollectionReferringAccumulator referringAccumulator =
                new CollectionReferringAccumulator(_containerType.getContentType().getRawClass(), result);

        JsonToken t;
        while ((t = p.nextToken()) != JsonToken.END_ARRAY) {
            try {
                Object value;
                if (t == JsonToken.VALUE_NULL) {
                    if (_skipNullValues) {
                        continue;
                    }
                    value = _nullProvider.getNullValue(ctxt);
                } else if (typeDeser == null) {
                    value = valueDes.deserialize(p, ctxt);
                } else {
                    value = valueDes.deserializeWithType(p, ctxt, typeDeser);
                }
                referringAccumulator.add(value);
            } catch (UnresolvedForwardReference reference) {
                Referring ref = referringAccumulator.handleUnresolvedReference(reference);
                reference.getRoid().appendReferring(ref);
            } catch (Exception e) {
                boolean wrap = (ctxt == null) || ctxt.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
                if (!wrap) {
                    ClassUtil.throwIfRTE(e);
                }
                throw JsonMappingException.wrapWithPath(e, result, result.size());
            }
        }
        return result;
    }

    /**
     * Helper class for dealing with Object Id references for values contained in
     * collections being deserialized.
     */
    public static class CollectionReferringAccumulator {
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
