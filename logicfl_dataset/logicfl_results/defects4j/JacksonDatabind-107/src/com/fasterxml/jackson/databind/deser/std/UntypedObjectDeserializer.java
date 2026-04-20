package com.fasterxml.jackson.databind.deser.std;

import java.io.IOException;
import java.util.*;

import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapType;

/**
 * Deserializer implementation that is used if it is necessary to bind content of
 * "unknown" type; something declared as basic {@link java.lang.Object}
 * (either explicitly, or due to type erasure).
 * If so, "natural" mapping is used to convert JSON values to their natural
 * Java object matches: JSON arrays to Java {@link java.util.List}s (or, if configured,
 * Object[]), JSON objects to {@link java.util.Map}s, numbers to
 * {@link java.lang.Number}s, booleans to {@link java.lang.Boolean}s and
 * strings to {@link java.lang.String} (and nulls to nulls).
 */
@JacksonStdImpl
public class UntypedObjectDeserializer
    extends StdDeserializer<Object>
    implements ResolvableDeserializer, ContextualDeserializer
{
    private static final long serialVersionUID = 1L;

    protected final static Object[] NO_OBJECTS = new Object[0];

    /*
    /**********************************************************
    /* Possible custom deserializer overrides we need to use
    /**********************************************************
     */

    protected JsonDeserializer<Object> _mapDeserializer;

    protected JsonDeserializer<Object> _listDeserializer;

    protected JsonDeserializer<Object> _stringDeserializer;

    protected JsonDeserializer<Object> _numberDeserializer;

    /**
     * If {@link java.util.List} has been mapped to non-default implementation,
     * we'll store type here
     *
     * @since 2.6
     */
    protected JavaType _listType;

    /**
     * If {@link java.util.Map} has been mapped to non-default implementation,
     * we'll store type here
     *
     * @since 2.6
     */
    protected JavaType _mapType;

    /**
     * @since 2.9
     */
    protected final boolean _nonMerging;
    
    /**
     * @deprecated Since 2.6 use variant takes type arguments
     */
    @Deprecated
    public UntypedObjectDeserializer() {
        this(null, null);
    }

    public UntypedObjectDeserializer(JavaType listType, JavaType mapType) {
        super(Object.class);
        int PROBE_START_LINE_86 = 86;
		com.fasterxml.jackson.databind.JavaType p_list_type_3278_line_86 = listType;
		int PROBE_END_LINE_86 = 86;
		_listType = p_list_type_3278_line_86;
        int PROBE_START_LINE_87 = 87;
		com.fasterxml.jackson.databind.JavaType p_map_type_3279_line_87 = mapType;
		int PROBE_END_LINE_87 = 87;
		_mapType = p_map_type_3279_line_87;
        _nonMerging = false;
    }

    @SuppressWarnings("unchecked")
    public UntypedObjectDeserializer(UntypedObjectDeserializer base,
            JsonDeserializer<?> mapDeser, JsonDeserializer<?> listDeser,
            JsonDeserializer<?> stringDeser, JsonDeserializer<?> numberDeser)
    {
        super(Object.class);
        _mapDeserializer = (JsonDeserializer<Object>) mapDeser;
        _listDeserializer = (JsonDeserializer<Object>) listDeser;
        _stringDeserializer = (JsonDeserializer<Object>) stringDeser;
        _numberDeserializer = (JsonDeserializer<Object>) numberDeser;
        _listType = base._listType;
        _mapType = base._mapType;
        _nonMerging = base._nonMerging;
    }

    /**
     * @since 2.9
     */
    protected UntypedObjectDeserializer(UntypedObjectDeserializer base,
            boolean nonMerging)
    {
        super(Object.class);
        _mapDeserializer = base._mapDeserializer;
        _listDeserializer = base._listDeserializer;
        _stringDeserializer = base._stringDeserializer;
        _numberDeserializer = base._numberDeserializer;
        _listType = base._listType;
        _mapType = base._mapType;
        _nonMerging = nonMerging;
    }

    /*
    /**********************************************************
    /* Initialization
    /**********************************************************
     */

    /**
     * We need to implement this method to properly find things to delegate
     * to: it cannot be done earlier since delegated deserializers almost
     * certainly require access to this instance (at least "List" and "Map" ones)
     */
    @SuppressWarnings("unchecked")
    @Override
    public void resolve(DeserializationContext ctxt) throws JsonMappingException
    {
        int PROBE_START_LINE_137 = 137;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_137 = ctxt;
		JavaType untyped_object_deserializer_1_expr7_line_137 = p_ctxt_3290_line_137.constructType(Object.class);
		int PROBE_END_LINE_137 = 137;
		JavaType obType = untyped_object_deserializer_1_expr7_line_137;
        int PROBE_START_LINE_138 = 138;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_138 = ctxt;
		JavaType untyped_object_deserializer_1_expr9_line_138 = p_ctxt_3290_line_138.constructType(String.class);
		int PROBE_END_LINE_138 = 138;
		JavaType stringType = untyped_object_deserializer_1_expr9_line_138;
        int PROBE_START_LINE_139 = 139;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_139 = ctxt;
		TypeFactory untyped_object_deserializer_1_expr11_line_139 = p_ctxt_3290_line_139.getTypeFactory();
		int PROBE_END_LINE_139 = 139;
		TypeFactory tf = untyped_object_deserializer_1_expr11_line_139;

        /* 26-Nov-2014, tatu: This is highly unusual, as in general contextualization
         *    should always be called separately, from within "createContextual()".
         *    But this is a very singular deserializer since it operates on `Object`
         *    (and often for `?` type parameter), and as a result, easily and commonly
         *    results in cycles, being value deserializer for various Maps and Collections.
         *    Because of this, we must somehow break the cycles. This is done here by
         *    forcing pseudo-contextualization with null property.
         */

        int PROBE_START_LINE_151 = 156;
		com.fasterxml.jackson.databind.JavaType f__list_type_3280_line_151 = _listType;
		boolean untyped_object_deserializer_1_expr12_line_151 = f__list_type_3280_line_151 == null;
		int PROBE_END_LINE_151 = 156;
		// So: first find possible custom instances
        if (untyped_object_deserializer_1_expr12_line_151) {
            int PROBE_START_LINE_152 = 152;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_152 = ctxt;
			com.fasterxml.jackson.databind.type.TypeFactory v_tf_3293_line_152 = tf;
			com.fasterxml.jackson.databind.JavaType v_ob_type_3291_line_152 = obType;
			com.fasterxml.jackson.databind.type.CollectionType untyped_object_deserializer_1_expr16_line_152 = v_tf_3293_line_152
					.constructCollectionType(List.class, v_ob_type_3291_line_152);
			JsonDeserializer<Object> untyped_object_deserializer_1_expr15_line_152 = _findCustomDeser(
					p_ctxt_3290_line_152, untyped_object_deserializer_1_expr16_line_152);
			JsonDeserializer<Object> untyped_object_deserializer_1_expr14_line_152 = _clearIfStdImpl(
					untyped_object_deserializer_1_expr15_line_152);
			int PROBE_END_LINE_152 = 152;
			_listDeserializer = untyped_object_deserializer_1_expr14_line_152;
        } else {
            // NOTE: if non-default List type, always consider to be non-standard deser
            _listDeserializer = _findCustomDeser(ctxt, _listType);
        }
        int PROBE_START_LINE_157 = 162;
		com.fasterxml.jackson.databind.JavaType f__map_type_3281_line_157 = _mapType;
		boolean untyped_object_deserializer_1_expr18_line_157 = f__map_type_3281_line_157 == null;
		int PROBE_END_LINE_157 = 162;
		if (untyped_object_deserializer_1_expr18_line_157) {
            int PROBE_START_LINE_158 = 158;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_158 = ctxt;
			com.fasterxml.jackson.databind.type.TypeFactory v_tf_3293_line_158 = tf;
			com.fasterxml.jackson.databind.JavaType v_string_type_3292_line_158 = stringType;
			com.fasterxml.jackson.databind.JavaType v_ob_type_3291_line_158 = obType;
			com.fasterxml.jackson.databind.type.MapType untyped_object_deserializer_1_expr22_line_158 = v_tf_3293_line_158
					.constructMapType(Map.class, v_string_type_3292_line_158, v_ob_type_3291_line_158);
			JsonDeserializer<Object> untyped_object_deserializer_1_expr21_line_158 = _findCustomDeser(
					p_ctxt_3290_line_158, untyped_object_deserializer_1_expr22_line_158);
			JsonDeserializer<Object> untyped_object_deserializer_1_expr20_line_158 = _clearIfStdImpl(
					untyped_object_deserializer_1_expr21_line_158);
			int PROBE_END_LINE_158 = 158;
			_mapDeserializer = untyped_object_deserializer_1_expr20_line_158;
        } else {
            // NOTE: if non-default Map type, always consider to be non-standard deser
            _mapDeserializer = _findCustomDeser(ctxt, _mapType);
        }
        int PROBE_START_LINE_163 = 163;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_163 = ctxt;
		com.fasterxml.jackson.databind.JavaType v_string_type_3292_line_163 = stringType;
		JsonDeserializer<Object> untyped_object_deserializer_1_expr26_line_163 = _findCustomDeser(p_ctxt_3290_line_163,
				v_string_type_3292_line_163);
		JsonDeserializer<Object> untyped_object_deserializer_1_expr25_line_163 = _clearIfStdImpl(
				untyped_object_deserializer_1_expr26_line_163);
		int PROBE_END_LINE_163 = 163;
		_stringDeserializer = untyped_object_deserializer_1_expr25_line_163;
        int PROBE_START_LINE_164 = 164;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_164 = ctxt;
		com.fasterxml.jackson.databind.type.TypeFactory v_tf_3293_line_164 = tf;
		com.fasterxml.jackson.databind.JavaType untyped_object_deserializer_1_expr30_line_164 = v_tf_3293_line_164
				.constructType(Number.class);
		JsonDeserializer<Object> untyped_object_deserializer_1_expr29_line_164 = _findCustomDeser(p_ctxt_3290_line_164,
				untyped_object_deserializer_1_expr30_line_164);
		JsonDeserializer<Object> untyped_object_deserializer_1_expr28_line_164 = _clearIfStdImpl(
				untyped_object_deserializer_1_expr29_line_164);
		int PROBE_END_LINE_164 = 164;
		_numberDeserializer = untyped_object_deserializer_1_expr28_line_164;

        int PROBE_START_LINE_168 = 168;
		JavaType untyped_object_deserializer_1_expr32_line_168 = TypeFactory.unknownType();
		int PROBE_END_LINE_168 = 168;
		// and then do bogus contextualization, in case custom ones need to resolve dependencies of
        // their own
        JavaType unknown = untyped_object_deserializer_1_expr32_line_168;
        int PROBE_START_LINE_169 = 169;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_169 = ctxt;
		JsonDeserializer<Object> f__map_deserializer_3295_line_169 = _mapDeserializer;
		com.fasterxml.jackson.databind.JavaType v_unknown_3298_line_169 = unknown;
		JsonDeserializer<?> untyped_object_deserializer_1_expr35_line_169 = p_ctxt_3290_line_169
				.handleSecondaryContextualization(f__map_deserializer_3295_line_169, null, v_unknown_3298_line_169);
		int PROBE_END_LINE_169 = 169;
		_mapDeserializer = (JsonDeserializer<Object>) untyped_object_deserializer_1_expr35_line_169;
        int PROBE_START_LINE_170 = 170;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_170 = ctxt;
		JsonDeserializer<Object> f__list_deserializer_3294_line_170 = _listDeserializer;
		com.fasterxml.jackson.databind.JavaType v_unknown_3298_line_170 = unknown;
		JsonDeserializer<?> untyped_object_deserializer_1_expr38_line_170 = p_ctxt_3290_line_170
				.handleSecondaryContextualization(f__list_deserializer_3294_line_170, null, v_unknown_3298_line_170);
		int PROBE_END_LINE_170 = 170;
		_listDeserializer = (JsonDeserializer<Object>) untyped_object_deserializer_1_expr38_line_170;
        int PROBE_START_LINE_171 = 171;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_171 = ctxt;
		JsonDeserializer<Object> f__string_deserializer_3296_line_171 = _stringDeserializer;
		com.fasterxml.jackson.databind.JavaType v_unknown_3298_line_171 = unknown;
		JsonDeserializer<?> untyped_object_deserializer_1_expr41_line_171 = p_ctxt_3290_line_171
				.handleSecondaryContextualization(f__string_deserializer_3296_line_171, null, v_unknown_3298_line_171);
		int PROBE_END_LINE_171 = 171;
		_stringDeserializer = (JsonDeserializer<Object>) untyped_object_deserializer_1_expr41_line_171;
        int PROBE_START_LINE_172 = 172;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3290_line_172 = ctxt;
		JsonDeserializer<Object> f__number_deserializer_3297_line_172 = _numberDeserializer;
		com.fasterxml.jackson.databind.JavaType v_unknown_3298_line_172 = unknown;
		JsonDeserializer<?> untyped_object_deserializer_1_expr44_line_172 = p_ctxt_3290_line_172
				.handleSecondaryContextualization(f__number_deserializer_3297_line_172, null, v_unknown_3298_line_172);
		int PROBE_END_LINE_172 = 172;
		_numberDeserializer = (JsonDeserializer<Object>) untyped_object_deserializer_1_expr44_line_172;
    }

    protected JsonDeserializer<Object> _findCustomDeser(DeserializationContext ctxt, JavaType type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_180 = 180;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3299_line_180 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_3300_line_180 = type;
		JsonDeserializer<Object> untyped_object_deserializer_1_expr45_line_180 = p_ctxt_3299_line_180
				.findNonContextualValueDeserializer(p_type_3300_line_180);
		int PROBE_END_LINE_180 = 180;
		// Since we are calling from `resolve`, we should NOT try to contextualize yet;
        // contextualization will only occur at a later point
        return untyped_object_deserializer_1_expr45_line_180;
    }

    protected JsonDeserializer<Object> _clearIfStdImpl(JsonDeserializer<Object> deser) {
        int PROBE_START_LINE_184 = 184;
		JsonDeserializer<Object> p_deser_3301_line_184 = deser;
		boolean untyped_object_deserializer_1_expr47_line_184 = ClassUtil.isJacksonStdImpl(p_deser_3301_line_184);
		JsonDeserializer<Object> p_deser_3301_line_184_v1 = null;
		if (!untyped_object_deserializer_1_expr47_line_184) {
			p_deser_3301_line_184_v1 = deser;
		}
		JsonDeserializer<Object> untyped_object_deserializer_1_expr46_line_184 = untyped_object_deserializer_1_expr47_line_184
				? null
				: p_deser_3301_line_184_v1;
		int PROBE_END_LINE_184 = 184;
		return untyped_object_deserializer_1_expr46_line_184;
    }

    /**
     * We only use contextualization for optimizing the case where no customization
     * occurred; if so, can slip in a more streamlined version.
     */
    @Override
    public JsonDeserializer<?> createContextual(DeserializationContext ctxt,
            BeanProperty property) throws JsonMappingException
    {
        int PROBE_START_LINE_196 = 197;
		com.fasterxml.jackson.databind.BeanProperty p_property_3303_line_196 = property;
		boolean untyped_object_deserializer_1_expr50_line_196 = p_property_3303_line_196 == null;
		boolean untyped_object_deserializer_1_expr49_line_196 = (untyped_object_deserializer_1_expr50_line_196);
		boolean untyped_object_deserializer_1_expr48_line_196 = untyped_object_deserializer_1_expr49_line_196
				&& Boolean.FALSE.equals(ctxt.getConfig().getDefaultMergeable(Object.class));
		int PROBE_END_LINE_196 = 197;
		// 14-Jun-2017, tatu: [databind#1625]: may want to block merging, for root value
        boolean preventMerge = untyped_object_deserializer_1_expr48_line_196;
        int PROBE_START_LINE_200 = 204;
		JsonDeserializer<Object> f__string_deserializer_3296_line_200 = _stringDeserializer;
		boolean untyped_object_deserializer_1_expr53_line_200 = f__string_deserializer_3296_line_200 == null;
		boolean untyped_object_deserializer_1_expr52_line_200 = (untyped_object_deserializer_1_expr53_line_200);
		boolean untyped_object_deserializer_1_expr54_line_200 = true;
		if (untyped_object_deserializer_1_expr52_line_200) {
			JsonDeserializer<Object> f__number_deserializer_3297_line_200 = _numberDeserializer;
			boolean untyped_object_deserializer_1_expr55_line_200 = f__number_deserializer_3297_line_200 == null;
			untyped_object_deserializer_1_expr54_line_200 = (untyped_object_deserializer_1_expr55_line_200);
		}
		boolean untyped_object_deserializer_1_expr51_line_200 = untyped_object_deserializer_1_expr52_line_200
				&& untyped_object_deserializer_1_expr54_line_200 && (_mapDeserializer == null)
				&& (_listDeserializer == null) && getClass() == UntypedObjectDeserializer.class;
		int PROBE_END_LINE_200 = 204;
		// 20-Apr-2014, tatu: If nothing custom, let's use "vanilla" instance,
        //     simpler and can avoid some of delegation
        if (untyped_object_deserializer_1_expr51_line_200) {
            int PROBE_START_LINE_203 = 203;
					boolean v_prevent_merge_3304_line_203 = preventMerge;
					com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer.Vanilla untyped_object_deserializer_1_expr56_line_203 = Vanilla
							.instance(v_prevent_merge_3304_line_203);
					int PROBE_END_LINE_203 = 203;
			return untyped_object_deserializer_1_expr56_line_203;
        }
        if (preventMerge != _nonMerging) {
            return new UntypedObjectDeserializer(this, preventMerge);
        }
        return this;
    }

    /*
    /**********************************************************
    /* Deserializer API
    /**********************************************************
     */

    /* 07-Nov-2014, tatu: When investigating [databind#604], realized that it makes
     *   sense to also mark this is cachable, since lookup not exactly free, and
     *   since it's not uncommon to "read anything"
     */
    @Override
    public boolean isCachable() {
        /* 26-Mar-2015, tatu: With respect to [databind#735], there are concerns over
         *   cachability. It seems like we SHOULD be safe here; but just in case there
         *   are problems with false sharing, this may need to be revisited.
         */
        return true;
    }

    @Override // since 2.9
    public Boolean supportsUpdate(DeserializationConfig config) {
        // 21-Apr-2017, tatu: Bit tricky... some values, yes. So let's say "dunno"
        return null;
    }

    @Override
    public Object deserialize(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        switch (p.getCurrentTokenId()) {
        case JsonTokenId.ID_START_OBJECT:
        case JsonTokenId.ID_FIELD_NAME:
            // 28-Oct-2015, tatu: [databind#989] We may also be given END_OBJECT (similar to FIELD_NAME),
            //    if caller has advanced to the first token of Object, but for empty Object
        case JsonTokenId.ID_END_OBJECT:
            if (_mapDeserializer != null) {
                return _mapDeserializer.deserialize(p, ctxt);
            }
            return mapObject(p, ctxt);
        case JsonTokenId.ID_START_ARRAY:
            if (ctxt.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                return mapArrayToArray(p, ctxt);
            }
            if (_listDeserializer != null) {
                return _listDeserializer.deserialize(p, ctxt);
            }
            return mapArray(p, ctxt);
        case JsonTokenId.ID_EMBEDDED_OBJECT:
            return p.getEmbeddedObject();
        case JsonTokenId.ID_STRING:
            if (_stringDeserializer != null) {
                return _stringDeserializer.deserialize(p, ctxt);
            }
            return p.getText();

        case JsonTokenId.ID_NUMBER_INT:
            if (_numberDeserializer != null) {
                return _numberDeserializer.deserialize(p, ctxt);
            }
            /* Caller may want to get all integral values returned as {@link java.math.BigInteger},
             * or {@link java.lang.Long} for consistency
             */
            if (ctxt.hasSomeOfFeatures(F_MASK_INT_COERCIONS)) {
                return _coerceIntegral(p, ctxt);
            }
            return p.getNumberValue(); // should be optimal, whatever it is

        case JsonTokenId.ID_NUMBER_FLOAT:
            if (_numberDeserializer != null) {
                return _numberDeserializer.deserialize(p, ctxt);
            }
            // Need to allow overriding the behavior regarding which type to use
            if (ctxt.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                return p.getDecimalValue();
            }
            // as per [databind#1453] should not assume Double but:
            return p.getNumberValue();

        case JsonTokenId.ID_TRUE:
            return Boolean.TRUE;
        case JsonTokenId.ID_FALSE:
            return Boolean.FALSE;

        case JsonTokenId.ID_NULL: // 08-Nov-2016, tatu: yes, occurs
            return null;

//        case JsonTokenId.ID_END_ARRAY: // invalid
        default:
        }
        return ctxt.handleUnexpectedToken(Object.class, p);
    }

    @Override
    public Object deserializeWithType(JsonParser p, DeserializationContext ctxt,
            TypeDeserializer typeDeserializer) throws IOException
    {
        switch (p.getCurrentTokenId()) {
        // First: does it look like we had type id wrapping of some kind?
        case JsonTokenId.ID_START_ARRAY:
        case JsonTokenId.ID_START_OBJECT:
        case JsonTokenId.ID_FIELD_NAME:
            // Output can be as JSON Object, Array or scalar: no way to know at this point:
            return typeDeserializer.deserializeTypedFromAny(p, ctxt);

        case JsonTokenId.ID_EMBEDDED_OBJECT:
            return p.getEmbeddedObject();
            
        /* Otherwise we probably got a "native" type (ones that map
         * naturally and thus do not need or use type ids)
         */
        case JsonTokenId.ID_STRING:
            if (_stringDeserializer != null) {
                return _stringDeserializer.deserialize(p, ctxt);
            }
            return p.getText();

        case JsonTokenId.ID_NUMBER_INT:
            if (_numberDeserializer != null) {
                return _numberDeserializer.deserialize(p, ctxt);
            }
            // May need coercion to "bigger" types:
            if (ctxt.hasSomeOfFeatures(F_MASK_INT_COERCIONS)) {
                return _coerceIntegral(p, ctxt);
            }
            return p.getNumberValue(); // should be optimal, whatever it is

        case JsonTokenId.ID_NUMBER_FLOAT:
            if (_numberDeserializer != null) {
                return _numberDeserializer.deserialize(p, ctxt);
            }
            if (ctxt.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                return p.getDecimalValue();
            }
            return p.getNumberValue();

        case JsonTokenId.ID_TRUE:
            return Boolean.TRUE;
        case JsonTokenId.ID_FALSE:
            return Boolean.FALSE;

        case JsonTokenId.ID_NULL: // should not get this far really but...
            return null;
        default:
        }
        return ctxt.handleUnexpectedToken(Object.class, p);
    }

    @SuppressWarnings("unchecked")
    @Override // since 2.9 (to support deep merge)
    public Object deserialize(JsonParser p, DeserializationContext ctxt, Object intoValue)
        throws IOException
    {
        if (_nonMerging) {
            return deserialize(p, ctxt);
        }

        switch (p.getCurrentTokenId()) {
        case JsonTokenId.ID_START_OBJECT:
        case JsonTokenId.ID_FIELD_NAME:
            // 28-Oct-2015, tatu: [databind#989] We may also be given END_OBJECT (similar to FIELD_NAME),
            //    if caller has advanced to the first token of Object, but for empty Object
        case JsonTokenId.ID_END_OBJECT:
            if (_mapDeserializer != null) {
                return _mapDeserializer.deserialize(p, ctxt, intoValue);
            }
            if (intoValue instanceof Map<?,?>) {
                return mapObject(p, ctxt, (Map<Object,Object>) intoValue);
            }
            return mapObject(p, ctxt);
        case JsonTokenId.ID_START_ARRAY:
            if (_listDeserializer != null) {
                return _listDeserializer.deserialize(p, ctxt, intoValue);
            }
            if (intoValue instanceof Collection<?>) {
                return mapArray(p, ctxt, (Collection<Object>) intoValue);
            }
            if (ctxt.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                return mapArrayToArray(p, ctxt);
            }
            return mapArray(p, ctxt);
        case JsonTokenId.ID_EMBEDDED_OBJECT:
            return p.getEmbeddedObject();
        case JsonTokenId.ID_STRING:
            if (_stringDeserializer != null) {
                return _stringDeserializer.deserialize(p, ctxt, intoValue);
            }
            return p.getText();

        case JsonTokenId.ID_NUMBER_INT:
            if (_numberDeserializer != null) {
                return _numberDeserializer.deserialize(p, ctxt, intoValue);
            }
            if (ctxt.hasSomeOfFeatures(F_MASK_INT_COERCIONS)) {
                return _coerceIntegral(p, ctxt);
            }
            return p.getNumberValue();

        case JsonTokenId.ID_NUMBER_FLOAT:
            if (_numberDeserializer != null) {
                return _numberDeserializer.deserialize(p, ctxt, intoValue);
            }
            if (ctxt.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                return p.getDecimalValue();
            }
            return p.getNumberValue();
        case JsonTokenId.ID_TRUE:
            return Boolean.TRUE;
        case JsonTokenId.ID_FALSE:
            return Boolean.FALSE;

        case JsonTokenId.ID_NULL:
            // 21-Apr-2017, tatu: May need to consider "skip nulls" at some point but...
            return null;
        default:
        }
        // easiest to just delegate to "dumb" version for the rest?
        return deserialize(p, ctxt);
    }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    /**
     * Method called to map a JSON Array into a Java value.
     */
    protected Object mapArray(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        // Minor optimization to handle small lists (default size for ArrayList is 10)
        if (p.nextToken()  == JsonToken.END_ARRAY) {
            return new ArrayList<Object>(2);
        }
        Object value = deserialize(p, ctxt);
        if (p.nextToken()  == JsonToken.END_ARRAY) {
            ArrayList<Object> l = new ArrayList<Object>(2);
            l.add(value);
            return l;
        }
        Object value2 = deserialize(p, ctxt);
        if (p.nextToken()  == JsonToken.END_ARRAY) {
            ArrayList<Object> l = new ArrayList<Object>(2);
            l.add(value);
            l.add(value2);
            return l;
        }
        ObjectBuffer buffer = ctxt.leaseObjectBuffer();
        Object[] values = buffer.resetAndStart();
        int ptr = 0;
        values[ptr++] = value;
        values[ptr++] = value2;
        int totalSize = ptr;
        do {
            value = deserialize(p, ctxt);
            ++totalSize;
            if (ptr >= values.length) {
                values = buffer.appendCompletedChunk(values);
                ptr = 0;
            }
            values[ptr++] = value;
        } while (p.nextToken() != JsonToken.END_ARRAY);
        // let's create full array then
        ArrayList<Object> result = new ArrayList<Object>(totalSize);
        buffer.completeAndClearBuffer(values, ptr, result);
        return result;
    }

    protected Object mapArray(JsonParser p, DeserializationContext ctxt,
            Collection<Object> result) throws IOException
    {
        // we start by pointing to START_ARRAY. Also, no real merging; array/Collection
        // just appends always
        while (p.nextToken() != JsonToken.END_ARRAY) {
            result.add(deserialize(p, ctxt));
        }
        return result;
    }

    /**
     * Method called to map a JSON Object into a Java value.
     */
    protected Object mapObject(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        String key1;

        JsonToken t = p.getCurrentToken();
        
        if (t == JsonToken.START_OBJECT) {
            key1 = p.nextFieldName();
        } else if (t == JsonToken.FIELD_NAME) {
            key1 = p.getCurrentName();
        } else {
            if (t != JsonToken.END_OBJECT) {
                return ctxt.handleUnexpectedToken(handledType(), p);
            }
            key1 = null;
        }
        if (key1 == null) {
            // empty map might work; but caller may want to modify... so better just give small modifiable
            return new LinkedHashMap<String,Object>(2);
        }
        // minor optimization; let's handle 1 and 2 entry cases separately
        // 24-Mar-2015, tatu: Ideally, could use one of 'nextXxx()' methods, but for
        //   that we'd need new method(s) in JsonDeserializer. So not quite yet.
        p.nextToken();
        Object value1 = deserialize(p, ctxt);

        String key2 = p.nextFieldName();
        if (key2 == null) { // has to be END_OBJECT, then
            // single entry; but we want modifiable
            LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>(2);
            result.put(key1, value1);
            return result;
        }
        p.nextToken();
        Object value2 = deserialize(p, ctxt);

        String key = p.nextFieldName();

        if (key == null) {
            LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>(4);
            result.put(key1, value1);
            result.put(key2, value2);
            return result;
        }
        // And then the general case; default map size is 16
        LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>();
        result.put(key1, value1);
        result.put(key2, value2);

        do {
            p.nextToken();
            result.put(key, deserialize(p, ctxt));
        } while ((key = p.nextFieldName()) != null);
        return result;
    }

    /**
     * Method called to map a JSON Array into a Java Object array (Object[]).
     */
    protected Object[] mapArrayToArray(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        // Minor optimization to handle small lists (default size for ArrayList is 10)
        if (p.nextToken()  == JsonToken.END_ARRAY) {
            return NO_OBJECTS;
        }
        ObjectBuffer buffer = ctxt.leaseObjectBuffer();
        Object[] values = buffer.resetAndStart();
        int ptr = 0;
        do {
            Object value = deserialize(p, ctxt);
            if (ptr >= values.length) {
                values = buffer.appendCompletedChunk(values);
                ptr = 0;
            }
            values[ptr++] = value;
        } while (p.nextToken() != JsonToken.END_ARRAY);
        return buffer.completeAndClearBuffer(values, ptr);
    }

    protected Object mapObject(JsonParser p, DeserializationContext ctxt,
            Map<Object,Object> m) throws IOException
    {
        JsonToken t = p.getCurrentToken();
        if (t == JsonToken.START_OBJECT) {
            t = p.nextToken();
        }
        if (t == JsonToken.END_OBJECT) {
            return m;
        }
        // NOTE: we are guaranteed to point to FIELD_NAME
        String key = p.getCurrentName();
        do {
            p.nextToken();
            // and possibly recursive merge here
            Object old = m.get(key);
            Object newV;

            if (old != null) {
                newV = deserialize(p, ctxt, old);
            } else {
                newV = deserialize(p, ctxt);
            }
            if (newV != old) {
                m.put(key, newV);
            }
        } while ((key = p.nextFieldName()) != null);
        return m;
    }

    /*
    /**********************************************************
    /* Separate "vanilla" implementation for common case of
    /* no custom deserializer overrides
    /**********************************************************
     */

    @JacksonStdImpl
    public static class Vanilla
        extends StdDeserializer<Object>
    {
        private static final long serialVersionUID = 1L;

        public final static Vanilla std = new Vanilla();

        /**
         * @since 2.9
         */
        protected final boolean _nonMerging;
        
        public Vanilla() { this(false); }

        protected Vanilla(boolean nonMerging) {
            super(Object.class);
            int PROBE_START_LINE_625 = 625;
			boolean p_non_merging_3327_line_625 = nonMerging;
			int PROBE_END_LINE_625 = 625;
			_nonMerging = p_non_merging_3327_line_625;
        }

        public static Vanilla instance(boolean nonMerging) {
            int PROBE_START_LINE_629 = 631;
			boolean p_non_merging_3329_line_629 = nonMerging;
			int PROBE_END_LINE_629 = 631;
			if (p_non_merging_3329_line_629) {
                return new Vanilla(true);
            }
            int PROBE_START_LINE_632 = 632;
			com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer.Vanilla f_std_3326_line_632 = std;
			int PROBE_END_LINE_632 = 632;
			return f_std_3326_line_632;
        }
        
        @Override // since 2.9
        public Boolean supportsUpdate(DeserializationConfig config) {
            // 21-Apr-2017, tatu: Bit tricky... some values, yes. So let's say "dunno"
            // 14-Jun-2017, tatu: Well, if merging blocked, can say no, as well.
            return _nonMerging ? Boolean.FALSE : null;
        }

        @Override
        public Object deserialize(JsonParser p, DeserializationContext ctxt) throws IOException
        {
            switch (p.getCurrentTokenId()) {
            case JsonTokenId.ID_START_OBJECT:
                {
                    JsonToken t = p.nextToken();
                    if (t == JsonToken.END_OBJECT) {
                        return new LinkedHashMap<String,Object>(2);
                    }
                }
            case JsonTokenId.ID_FIELD_NAME:
                return mapObject(p, ctxt);
            case JsonTokenId.ID_START_ARRAY:
                {
                    JsonToken t = p.nextToken();
                    if (t == JsonToken.END_ARRAY) { // and empty one too
                        if (ctxt.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                            return NO_OBJECTS;
                        }
                        return new ArrayList<Object>(2);
                    }
                }
                if (ctxt.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                    return mapArrayToArray(p, ctxt);
                }
                return mapArray(p, ctxt);
            case JsonTokenId.ID_EMBEDDED_OBJECT:
                return p.getEmbeddedObject();
            case JsonTokenId.ID_STRING:
                return p.getText();

            case JsonTokenId.ID_NUMBER_INT:
                if (ctxt.hasSomeOfFeatures(F_MASK_INT_COERCIONS)) {
                    return _coerceIntegral(p, ctxt);
                }
                return p.getNumberValue(); // should be optimal, whatever it is

            case JsonTokenId.ID_NUMBER_FLOAT:
                if (ctxt.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return p.getDecimalValue();
                }
                return p.getNumberValue();

            case JsonTokenId.ID_TRUE:
                return Boolean.TRUE;
            case JsonTokenId.ID_FALSE:
                return Boolean.FALSE;

            case JsonTokenId.ID_END_OBJECT:
                // 28-Oct-2015, tatu: [databind#989] We may also be given END_OBJECT (similar to FIELD_NAME),
                //    if caller has advanced to the first token of Object, but for empty Object
                return new LinkedHashMap<String,Object>(2);

            case JsonTokenId.ID_NULL: // 08-Nov-2016, tatu: yes, occurs
                return null;

            //case JsonTokenId.ID_END_ARRAY: // invalid
            default:
            }
            return ctxt.handleUnexpectedToken(Object.class, p);
        }

        @Override
        public Object deserializeWithType(JsonParser p, DeserializationContext ctxt, TypeDeserializer typeDeserializer) throws IOException
        {
            int PROBE_START_LINE_708 = 739;
			com.fasterxml.jackson.core.JsonParser p_p_3333_line_708 = p;
			int untyped_object_deserializer_1_expr62_line_708 = p_p_3333_line_708.getCurrentTokenId();
			int PROBE_END_LINE_708 = 739;
			switch (untyped_object_deserializer_1_expr62_line_708) {
            case JsonTokenId.ID_START_ARRAY:
            case JsonTokenId.ID_START_OBJECT:
            case JsonTokenId.ID_FIELD_NAME:
			int PROBE_START_LINE_712 = 712;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deserializer_3335_line_712 = typeDeserializer;
			com.fasterxml.jackson.core.JsonParser p_p_3333_line_712 = p;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_3334_line_712 = ctxt;
			Object untyped_object_deserializer_1_expr63_line_712 = p_type_deserializer_3335_line_712
					.deserializeTypedFromAny(p_p_3333_line_712, p_ctxt_3334_line_712);
			int PROBE_END_LINE_712 = 712;
			return untyped_object_deserializer_1_expr63_line_712;

            case JsonTokenId.ID_STRING:
                return p.getText();

            case JsonTokenId.ID_NUMBER_INT:
                if (ctxt.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                    return p.getBigIntegerValue();
                }
                return p.getNumberValue();

            case JsonTokenId.ID_NUMBER_FLOAT:
                if (ctxt.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return p.getDecimalValue();
                }
                return p.getNumberValue();

            case JsonTokenId.ID_TRUE:
                return Boolean.TRUE;
            case JsonTokenId.ID_FALSE:
                return Boolean.FALSE;
            case JsonTokenId.ID_EMBEDDED_OBJECT:
                return p.getEmbeddedObject();

            case JsonTokenId.ID_NULL: // should not get this far really but...
                return null;
            default:
            }
            return ctxt.handleUnexpectedToken(Object.class, p);
        }

        @SuppressWarnings("unchecked")
        @Override // since 2.9 (to support deep merge)
        public Object deserialize(JsonParser p, DeserializationContext ctxt, Object intoValue)
            throws IOException
        {
            if (_nonMerging) {
                return deserialize(p, ctxt);
            }

            switch (p.getCurrentTokenId()) {
            case JsonTokenId.ID_END_OBJECT:
            case JsonTokenId.ID_END_ARRAY:
                return intoValue;
            case JsonTokenId.ID_START_OBJECT:
                {
                    JsonToken t = p.nextToken(); // to get to FIELD_NAME or END_OBJECT
                    if (t == JsonToken.END_OBJECT) {
                        return intoValue;
                    }
                }
            case JsonTokenId.ID_FIELD_NAME:
                if (intoValue instanceof Map<?,?>) {
                    Map<Object,Object> m = (Map<Object,Object>) intoValue;
                    // NOTE: we are guaranteed to point to FIELD_NAME
                    String key = p.getCurrentName();
                    do {
                        p.nextToken();
                        // and possibly recursive merge here
                        Object old = m.get(key);
                        Object newV;
                        if (old != null) {
                            newV = deserialize(p, ctxt, old);
                        } else {
                            newV = deserialize(p, ctxt);
                        }
                        if (newV != old) {
                            m.put(key, newV);
                        }
                    } while ((key = p.nextFieldName()) != null);
                    return intoValue;
                }
                break;
            case JsonTokenId.ID_START_ARRAY:
                {
                    JsonToken t = p.nextToken(); // to get to FIELD_NAME or END_OBJECT
                    if (t == JsonToken.END_ARRAY) {
                        return intoValue;
                    }
                }

                if (intoValue instanceof Collection<?>) {
                    Collection<Object> c = (Collection<Object>) intoValue;
                    // NOTE: merge for arrays/Collections means append, can't merge contents
                    do {
                        c.add(deserialize(p, ctxt));
                    } while (p.nextToken() != JsonToken.END_ARRAY);
                    return intoValue;
                }
                // 21-Apr-2017, tatu: Should we try to support merging of Object[] values too?
                //    ... maybe future improvement
                break;
            }
            // Easiest handling for the rest, delegate. Only (?) question: how about nulls?
            return deserialize(p, ctxt);
        }

        protected Object mapArray(JsonParser p, DeserializationContext ctxt) throws IOException
        {
            Object value = deserialize(p, ctxt);
            if (p.nextToken()  == JsonToken.END_ARRAY) {
                ArrayList<Object> l = new ArrayList<Object>(2);
                l.add(value);
                return l;
            }
            Object value2 = deserialize(p, ctxt);
            if (p.nextToken()  == JsonToken.END_ARRAY) {
                ArrayList<Object> l = new ArrayList<Object>(2);
                l.add(value);
                l.add(value2);
                return l;
            }
            ObjectBuffer buffer = ctxt.leaseObjectBuffer();
            Object[] values = buffer.resetAndStart();
            int ptr = 0;
            values[ptr++] = value;
            values[ptr++] = value2;
            int totalSize = ptr;
            do {
                value = deserialize(p, ctxt);
                ++totalSize;
                if (ptr >= values.length) {
                    values = buffer.appendCompletedChunk(values);
                    ptr = 0;
                }
                values[ptr++] = value;
            } while (p.nextToken() != JsonToken.END_ARRAY);
            // let's create full array then
            ArrayList<Object> result = new ArrayList<Object>(totalSize);
            buffer.completeAndClearBuffer(values, ptr, result);
            return result;
        }

        /**
         * Method called to map a JSON Array into a Java Object array (Object[]).
         */
        protected Object[] mapArrayToArray(JsonParser p, DeserializationContext ctxt) throws IOException {
            ObjectBuffer buffer = ctxt.leaseObjectBuffer();
            Object[] values = buffer.resetAndStart();
            int ptr = 0;
            do {
                Object value = deserialize(p, ctxt);
                if (ptr >= values.length) {
                    values = buffer.appendCompletedChunk(values);
                    ptr = 0;
                }
                values[ptr++] = value;
            } while (p.nextToken() != JsonToken.END_ARRAY);
            return buffer.completeAndClearBuffer(values, ptr);
        }

        /**
         * Method called to map a JSON Object into a Java value.
         */
        protected Object mapObject(JsonParser p, DeserializationContext ctxt) throws IOException
        {
            // will point to FIELD_NAME at this point, guaranteed
            String key1 = p.getText();
            p.nextToken();
            Object value1 = deserialize(p, ctxt);

            String key2 = p.nextFieldName();
            if (key2 == null) { // single entry; but we want modifiable
                LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>(2);
                result.put(key1, value1);
                return result;
            }
            p.nextToken();
            Object value2 = deserialize(p, ctxt);

            String key = p.nextFieldName();
            if (key == null) {
                LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>(4);
                result.put(key1, value1);
                result.put(key2, value2);
                return result;
            }
            // And then the general case; default map size is 16
            LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>();
            result.put(key1, value1);
            result.put(key2, value2);
            do {
                p.nextToken();
                result.put(key, deserialize(p, ctxt));
            } while ((key = p.nextFieldName()) != null);
            return result;
        }
    }
}
