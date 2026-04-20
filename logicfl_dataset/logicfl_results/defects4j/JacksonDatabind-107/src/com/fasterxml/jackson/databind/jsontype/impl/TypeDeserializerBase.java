package com.fasterxml.jackson.databind.jsontype.impl;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.std.NullifyingDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.type.TypeFactory;

/**
 * Base class for all standard Jackson {@link TypeDeserializer}s.
 */
public abstract class TypeDeserializerBase
    extends TypeDeserializer
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1;
    
    protected final TypeIdResolver _idResolver;
    
    protected final JavaType _baseType;

    /**
     * Property that contains value for which type information
     * is included; null if value is a root value.
     * Note that this value is not assigned during construction
     * but only when {@link #forProperty} is called to create
     * a copy.
     */
    protected final BeanProperty _property;

    /**
     * Type to use as the default implementation, if type id is
     * missing or cannot be resolved.
     */
    protected final JavaType _defaultImpl;

    /**
     * Name of type property used; needed for non-property versions too,
     * in cases where type id is to be exposed as part of JSON.
     */
    protected final String _typePropertyName;
    
    protected final boolean _typeIdVisible;
    
    /**
     * For efficient operation we will lazily build mappings from type ids
     * to actual deserializers, once needed.
     */
    protected final Map<String,JsonDeserializer<Object>> _deserializers;

    protected JsonDeserializer<Object> _defaultImplDeserializer;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    /**
     * @since 2.8
     */
    protected TypeDeserializerBase(JavaType baseType, TypeIdResolver idRes,
            String typePropertyName, boolean typeIdVisible, JavaType defaultImpl)
    {
        int PROBE_START_LINE_75 = 75;
		com.fasterxml.jackson.databind.JavaType p_base_type_4680_line_75 = baseType;
		int PROBE_END_LINE_75 = 75;
		_baseType = p_base_type_4680_line_75;
        int PROBE_START_LINE_76 = 76;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver p_id_res_4681_line_76 = idRes;
		int PROBE_END_LINE_76 = 76;
		_idResolver = p_id_res_4681_line_76;
        int PROBE_START_LINE_77 = 77;
		String p_type_property_name_4682_line_77 = typePropertyName;
		String type_deserializer_base_1_expr4_line_77 = ClassUtil.nonNullString(p_type_property_name_4682_line_77);
		int PROBE_END_LINE_77 = 77;
		_typePropertyName = type_deserializer_base_1_expr4_line_77;
        int PROBE_START_LINE_78 = 78;
		boolean p_type_id_visible_4683_line_78 = typeIdVisible;
		int PROBE_END_LINE_78 = 78;
		_typeIdVisible = p_type_id_visible_4683_line_78;
        // defaults are fine, although shouldn't need much concurrency
        _deserializers = new ConcurrentHashMap<String, JsonDeserializer<Object>>(16, 0.75f, 2);
        int PROBE_START_LINE_81 = 81;
		com.fasterxml.jackson.databind.JavaType p_default_impl_4684_line_81 = defaultImpl;
		int PROBE_END_LINE_81 = 81;
		_defaultImpl = p_default_impl_4684_line_81;
        _property = null;
    }

    protected TypeDeserializerBase(TypeDeserializerBase src, BeanProperty property)
    {
        int PROBE_START_LINE_87 = 87;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_4689_line_87 = src;
		com.fasterxml.jackson.databind.JavaType q__base_type_153_line_87 = p_src_4689_line_87._baseType;
		int PROBE_END_LINE_87 = 87;
		_baseType = q__base_type_153_line_87;
        int PROBE_START_LINE_88 = 88;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_4689_line_88 = src;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver q__id_resolver_154_line_88 = p_src_4689_line_88._idResolver;
		int PROBE_END_LINE_88 = 88;
		_idResolver = q__id_resolver_154_line_88;
        int PROBE_START_LINE_89 = 89;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_4689_line_89 = src;
		String q__type_property_name_155_line_89 = p_src_4689_line_89._typePropertyName;
		int PROBE_END_LINE_89 = 89;
		_typePropertyName = q__type_property_name_155_line_89;
        int PROBE_START_LINE_90 = 90;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_4689_line_90 = src;
		boolean q__type_id_visible_156_line_90 = p_src_4689_line_90._typeIdVisible;
		int PROBE_END_LINE_90 = 90;
		_typeIdVisible = q__type_id_visible_156_line_90;
        int PROBE_START_LINE_91 = 91;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_4689_line_91 = src;
		Map<String, JsonDeserializer<Object>> q__deserializers_157_line_91 = p_src_4689_line_91._deserializers;
		int PROBE_END_LINE_91 = 91;
		_deserializers = q__deserializers_157_line_91;
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_4689_line_92 = src;
		com.fasterxml.jackson.databind.JavaType q__default_impl_158_line_92 = p_src_4689_line_92._defaultImpl;
		int PROBE_END_LINE_92 = 92;
		_defaultImpl = q__default_impl_158_line_92;
        int PROBE_START_LINE_93 = 93;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_4689_line_93 = src;
		JsonDeserializer<Object> q__default_impl_deserializer_159_line_93 = p_src_4689_line_93._defaultImplDeserializer;
		int PROBE_END_LINE_93 = 93;
		_defaultImplDeserializer = q__default_impl_deserializer_159_line_93;
        int PROBE_START_LINE_94 = 94;
		com.fasterxml.jackson.databind.BeanProperty p_property_4690_line_94 = property;
		int PROBE_END_LINE_94 = 94;
		_property = p_property_4690_line_94;
    }

    @Override
    public abstract TypeDeserializer forProperty(BeanProperty prop);

    /*
    /**********************************************************
    /* Accessors
    /**********************************************************
     */
    
    @Override
    public abstract JsonTypeInfo.As getTypeInclusion();

    public String baseTypeName() { return _baseType.getRawClass().getName(); }

    @Override
    public final String getPropertyName() { return _typePropertyName; }
    
    @Override    
    public TypeIdResolver getTypeIdResolver() { return _idResolver; }

    @Override    
    public Class<?> getDefaultImpl() {
        return ClassUtil.rawClass(_defaultImpl);
    }

    /**
     * @since 2.9
     */
    public JavaType baseType() {
        return _baseType;
    }

    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append('[').append(getClass().getName());
        sb.append("; base-type:").append(_baseType);
        sb.append("; id-resolver: ").append(_idResolver);
    	    sb.append(']');
    	    return sb.toString();
    }
    
    /*
    /**********************************************************
    /* Helper methods for sub-classes
    /**********************************************************
     */

    protected final JsonDeserializer<Object> _findDeserializer(DeserializationContext ctxt,
            String typeId) throws IOException
    {
        int PROBE_START_LINE_149 = 149;
		Map<String, JsonDeserializer<Object>> f__deserializers_4687_line_149 = _deserializers;
		String p_type_id_4694_line_149 = typeId;
		JsonDeserializer<Object> type_deserializer_base_1_expr18_line_149 = f__deserializers_4687_line_149
				.get(p_type_id_4694_line_149);
		int PROBE_END_LINE_149 = 149;
		JsonDeserializer<Object> deser = type_deserializer_base_1_expr18_line_149;
        int PROBE_START_LINE_150 = 197;
		JsonDeserializer<Object> v_deser_4695_line_150 = deser;
		boolean type_deserializer_base_1_expr19_line_150 = v_deser_4695_line_150 == null;
		int PROBE_END_LINE_150 = 197;
		if (type_deserializer_base_1_expr19_line_150) {
            int PROBE_START_LINE_156 = 156;
			com.fasterxml.jackson.databind.jsontype.TypeIdResolver f__id_resolver_4686_line_156 = _idResolver;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4693_line_156 = ctxt;
			String p_type_id_4694_line_156 = typeId;
			JavaType type_deserializer_base_1_expr20_line_156 = f__id_resolver_4686_line_156
					.typeFromId(p_ctxt_4693_line_156, p_type_id_4694_line_156);
			int PROBE_END_LINE_156 = 156;
			/* As per [databind#305], need to provide contextual info. But for
             * backwards compatibility, let's start by only supporting this
             * for base class, not via interface. Later on we can add this
             * to the interface, assuming deprecation at base class helps.
             */
            JavaType type = type_deserializer_base_1_expr20_line_156;
            int PROBE_START_LINE_157 = 195;
			com.fasterxml.jackson.databind.JavaType v_type_4696_line_157 = type;
			boolean type_deserializer_base_1_expr21_line_157 = v_type_4696_line_157 == null;
			int PROBE_END_LINE_157 = 195;
			if (type_deserializer_base_1_expr21_line_157) {
                int PROBE_START_LINE_159 = 159;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4693_line_159 = ctxt;
				JsonDeserializer<Object> type_deserializer_base_1_expr23_line_159 = _findDefaultImplDeserializer(
						p_ctxt_4693_line_159);
				int PROBE_END_LINE_159 = 159;
				// use the default impl if no type id available:
                deser = type_deserializer_base_1_expr23_line_159;
                int PROBE_START_LINE_160 = 169;
				JsonDeserializer<Object> v_deser_4695_line_160 = deser;
				boolean type_deserializer_base_1_expr24_line_160 = v_deser_4695_line_160 == null;
				int PROBE_END_LINE_160 = 169;
				if (type_deserializer_base_1_expr24_line_160) {
                    int PROBE_START_LINE_162 = 162;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4693_line_162 = ctxt;
					String p_type_id_4694_line_162 = typeId;
					JavaType type_deserializer_base_1_expr25_line_162 = _handleUnknownTypeId(p_ctxt_4693_line_162,
							p_type_id_4694_line_162);
					int PROBE_END_LINE_162 = 162;
					// 10-May-2016, tatu: We may get some help...
                    JavaType actual = type_deserializer_base_1_expr25_line_162;
                    int PROBE_START_LINE_163 = 166;
					com.fasterxml.jackson.databind.JavaType v_actual_4697_line_163 = actual;
					boolean type_deserializer_base_1_expr26_line_163 = v_actual_4697_line_163 == null;
					int PROBE_END_LINE_163 = 166;
					if (type_deserializer_base_1_expr26_line_163) { // what should this be taken to mean?
                        // 17-Jan-2019, tatu: As per [databind#2221], better NOT return `null` but...
                        return null;
                    }
                    // ... would this actually work?
                    deser = ctxt.findContextualValueDeserializer(actual, _property);
                }
            } else {
                int PROBE_START_LINE_179 = 193;
				com.fasterxml.jackson.databind.JavaType f__base_type_4685_line_179 = _baseType;
				boolean type_deserializer_base_1_expr29_line_179 = f__base_type_4685_line_179 != null;
				boolean type_deserializer_base_1_expr28_line_179 = (type_deserializer_base_1_expr29_line_179);
				boolean type_deserializer_base_1_expr27_line_179 = type_deserializer_base_1_expr28_line_179
						&& _baseType.getClass() == type.getClass();
				int PROBE_END_LINE_179 = 193;
				/* 16-Dec-2010, tatu: Since nominal type we get here has no (generic) type parameters,
                 *   we actually now need to explicitly narrow from base type (which may have parameterization)
                 *   using raw type.
                 *
                 *   One complication, though; cannot change 'type class' (simple type to container); otherwise
                 *   we may try to narrow a SimpleType (Object.class) into MapType (Map.class), losing actual
                 *   type in process (getting SimpleType of Map.class which will not work as expected)
                 */
                if (type_deserializer_base_1_expr27_line_179) {
                    int PROBE_START_LINE_190 = 192;
							com.fasterxml.jackson.databind.JavaType v_type_4696_line_190 = type;
							boolean type_deserializer_base_1_expr31_line_190 = v_type_4696_line_190.hasGenericTypes();
							boolean type_deserializer_base_1_expr30_line_190 = !type_deserializer_base_1_expr31_line_190;
							int PROBE_END_LINE_190 = 192;
					/* 09-Aug-2015, tatu: Not sure if the second part of the check makes sense;
                     *   but it appears to check that JavaType impl class is the same which is
                     *   important for some reason?
                     *   Disabling the check will break 2 Enum-related tests.
                     */
                    // 19-Jun-2016, tatu: As per [databind#1270] we may actually get full
                    //   generic type with custom type resolvers. If so, should try to retain them.
                    //  Whether this is sufficient to avoid problems remains to be seen, but for
                    //  now it should improve things.
                    if (type_deserializer_base_1_expr30_line_190) {
                        int PROBE_START_LINE_191 = 191;
						com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4693_line_191 = ctxt;
						com.fasterxml.jackson.databind.type.TypeFactory type_deserializer_base_1_expr35_line_191 = p_ctxt_4693_line_191
								.getTypeFactory();
						com.fasterxml.jackson.databind.JavaType f__base_type_4685_line_191 = _baseType;
						com.fasterxml.jackson.databind.JavaType v_type_4696_line_191 = type;
						Class<?> type_deserializer_base_1_expr34_line_191 = v_type_4696_line_191.getRawClass();
						com.fasterxml.jackson.databind.JavaType type_deserializer_base_1_expr33_line_191 = type_deserializer_base_1_expr35_line_191
								.constructSpecializedType(f__base_type_4685_line_191,
										type_deserializer_base_1_expr34_line_191);
						int PROBE_END_LINE_191 = 191;
						type = type_deserializer_base_1_expr33_line_191;
                    }
                }
                int PROBE_START_LINE_194 = 194;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4693_line_194 = ctxt;
				com.fasterxml.jackson.databind.JavaType v_type_4696_line_194 = type;
				com.fasterxml.jackson.databind.BeanProperty f__property_4534_line_194 = _property;
				JsonDeserializer<Object> type_deserializer_base_1_expr37_line_194 = p_ctxt_4693_line_194
						.findContextualValueDeserializer(v_type_4696_line_194, f__property_4534_line_194);
				int PROBE_END_LINE_194 = 194;
				deser = type_deserializer_base_1_expr37_line_194;
            }
            int PROBE_START_LINE_196 = 196;
			Map<String, JsonDeserializer<Object>> f__deserializers_4687_line_196 = _deserializers;
			String p_type_id_4694_line_196 = typeId;
			JsonDeserializer<Object> v_deser_4695_line_196 = deser;
			int PROBE_END_LINE_196 = 196;
			f__deserializers_4687_line_196.put(p_type_id_4694_line_196, v_deser_4695_line_196);
        }
        int PROBE_START_LINE_198 = 198;
		JsonDeserializer<Object> v_deser_4695_line_198 = deser;
		int PROBE_END_LINE_198 = 198;
		return v_deser_4695_line_198;
    }

    protected final JsonDeserializer<Object> _findDefaultImplDeserializer(DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_207 = 212;
		com.fasterxml.jackson.databind.JavaType f__default_impl_4688_line_207 = _defaultImpl;
		boolean type_deserializer_base_1_expr39_line_207 = f__default_impl_4688_line_207 == null;
		int PROBE_END_LINE_207 = 212;
		/* 06-Feb-2013, tatu: As per [databind#148], consider default implementation value of
         *   {@link java.lang.Void} to mean "serialize as null"; as well as DeserializationFeature
         *   to do swift mapping to null
         */
        if (type_deserializer_base_1_expr39_line_207) {
            int PROBE_START_LINE_208 = 210;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4698_line_208 = ctxt;
			com.fasterxml.jackson.databind.DeserializationFeature q_fail_on_invalid_subtype_160_line_208 = DeserializationFeature.FAIL_ON_INVALID_SUBTYPE;
			boolean type_deserializer_base_1_expr41_line_208 = p_ctxt_4698_line_208
					.isEnabled(q_fail_on_invalid_subtype_160_line_208);
			boolean type_deserializer_base_1_expr40_line_208 = !type_deserializer_base_1_expr41_line_208;
			int PROBE_END_LINE_208 = 210;
			if (type_deserializer_base_1_expr40_line_208) {
                return NullifyingDeserializer.instance;
            }
            return null;
        }
        Class<?> raw = _defaultImpl.getRawClass();
        if (ClassUtil.isBogusClass(raw)) {
            return NullifyingDeserializer.instance;
        }
        
        synchronized (_defaultImpl) {
            if (_defaultImplDeserializer == null) {
                _defaultImplDeserializer = ctxt.findContextualValueDeserializer(
                        _defaultImpl, _property);
            }
            return _defaultImplDeserializer;
        }
    }

    /**
     * Helper method called when {@link JsonParser} indicates that it can use
     * so-called native type ids. Assumption from there is that only native
     * type ids are to be used.
     * 
     * @since 2.3
     */
    @Deprecated
    protected Object _deserializeWithNativeTypeId(JsonParser jp, DeserializationContext ctxt) throws IOException {
        return _deserializeWithNativeTypeId(jp, ctxt, jp.getTypeId());
    }

    /**
     * Helper method called when {@link JsonParser} indicates that it can use
     * so-called native type ids, and such type id has been found.
     * 
     * @since 2.4
     */
    protected Object _deserializeWithNativeTypeId(JsonParser jp, DeserializationContext ctxt, Object typeId)
        throws IOException
    {
        JsonDeserializer<Object> deser;
        if (typeId == null) {
            /* 04-May-2014, tatu: Should error be obligatory, or should there be another method
             *   for "try to deserialize with native tpye id"?
             */
            deser = _findDefaultImplDeserializer(ctxt);
            if (deser == null) {
                return ctxt.reportInputMismatch(baseType(),
                        "No (native) type id found when one was expected for polymorphic type handling");
            }
        } else {
            String typeIdStr = (typeId instanceof String) ? (String) typeId : String.valueOf(typeId);
            deser = _findDeserializer(ctxt, typeIdStr);
        }
        return deser.deserialize(jp, ctxt);
    }

    /**
     * Helper method called when given type id cannot be resolved into 
     * concrete deserializer either directly (using given {@link  TypeIdResolver}),
     * or using default type.
     * Default implementation simply throws a {@link com.fasterxml.jackson.databind.JsonMappingException} to
     * indicate the problem; sub-classes may choose
     *
     * @return If it is possible to resolve type id into a {@link JsonDeserializer}
     *   should return that deserializer; otherwise throw an exception to indicate
     *   the problem.
     *
     * @since 2.8
     */
    protected JavaType _handleUnknownTypeId(DeserializationContext ctxt, String typeId)
        throws IOException
    {
        int PROBE_START_LINE_281 = 281;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver f__id_resolver_4686_line_281 = _idResolver;
		String type_deserializer_base_1_expr42_line_281 = f__id_resolver_4686_line_281.getDescForKnownTypeIds();
		int PROBE_END_LINE_281 = 281;
		String extraDesc = type_deserializer_base_1_expr42_line_281;
        int PROBE_START_LINE_282 = 286;
		String v_extra_desc_4706_line_282 = extraDesc;
		boolean type_deserializer_base_1_expr43_line_282 = v_extra_desc_4706_line_282 == null;
		int PROBE_END_LINE_282 = 286;
		if (type_deserializer_base_1_expr43_line_282) {
            extraDesc = "type ids are not statically known";
        } else {
            int PROBE_START_LINE_285 = 285;
			String v_extra_desc_4706_line_285 = extraDesc;
			String type_deserializer_base_1_expr45_line_285 = "known type ids = " + v_extra_desc_4706_line_285;
			int PROBE_END_LINE_285 = 285;
			extraDesc = type_deserializer_base_1_expr45_line_285;
        }
        int PROBE_START_LINE_287 = 290;
		com.fasterxml.jackson.databind.BeanProperty f__property_4534_line_287 = _property;
		boolean type_deserializer_base_1_expr46_line_287 = f__property_4534_line_287 != null;
		int PROBE_END_LINE_287 = 290;
		if (type_deserializer_base_1_expr46_line_287) {
            int PROBE_START_LINE_288 = 289;
			String v_extra_desc_4706_line_288 = extraDesc;
			String type_deserializer_base_1_expr48_line_288 = String.format("%s (for POJO property '%s')",
					v_extra_desc_4706_line_288, _property.getName());
			int PROBE_END_LINE_288 = 289;
			extraDesc = type_deserializer_base_1_expr48_line_288;
        }
        int PROBE_START_LINE_291 = 291;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_4704_line_291 = ctxt;
		com.fasterxml.jackson.databind.JavaType f__base_type_4685_line_291 = _baseType;
		String p_type_id_4705_line_291 = typeId;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver f__id_resolver_4686_line_291 = _idResolver;
		String v_extra_desc_4706_line_291 = extraDesc;
		com.fasterxml.jackson.databind.JavaType type_deserializer_base_1_expr50_line_291 = p_ctxt_4704_line_291
				.handleUnknownTypeId(f__base_type_4685_line_291, p_type_id_4705_line_291, f__id_resolver_4686_line_291,
						v_extra_desc_4706_line_291);
		int PROBE_END_LINE_291 = 291;
		return type_deserializer_base_1_expr50_line_291;
    }

    /**
     * @since 2.9
     */
    protected JavaType _handleMissingTypeId(DeserializationContext ctxt, String extraDesc)
        throws IOException
    {
        return ctxt.handleMissingTypeId(_baseType, _idResolver, extraDesc);
    }
}
