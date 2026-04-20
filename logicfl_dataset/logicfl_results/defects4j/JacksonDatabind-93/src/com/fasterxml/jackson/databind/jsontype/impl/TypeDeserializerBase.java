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
     * missing or can not be resolved.
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
		com.fasterxml.jackson.databind.JavaType p_base_type_3686_line_75 = baseType;
		int PROBE_END_LINE_75 = 75;
		_baseType = p_base_type_3686_line_75;
        int PROBE_START_LINE_76 = 76;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver p_id_res_3687_line_76 = idRes;
		int PROBE_END_LINE_76 = 76;
		_idResolver = p_id_res_3687_line_76;
        int PROBE_START_LINE_78 = 78;
		String p_type_property_name_3688_line_78 = typePropertyName;
		boolean type_deserializer_base_1_expr6_line_78 = p_type_property_name_3688_line_78 == null;
		boolean type_deserializer_base_1_expr5_line_78 = (type_deserializer_base_1_expr6_line_78);
		String p_type_property_name_3688_line_78_v1 = null;
		if (!type_deserializer_base_1_expr5_line_78) {
			p_type_property_name_3688_line_78_v1 = typePropertyName;
		}
		String type_deserializer_base_1_expr4_line_78 = type_deserializer_base_1_expr5_line_78
				? ""
				: p_type_property_name_3688_line_78_v1;
		int PROBE_END_LINE_78 = 78;
		// 22-Dec-2015, tatu: as per [databind#1055], avoid NPE
        _typePropertyName = type_deserializer_base_1_expr4_line_78;
        int PROBE_START_LINE_79 = 79;
		boolean p_type_id_visible_3689_line_79 = typeIdVisible;
		int PROBE_END_LINE_79 = 79;
		_typeIdVisible = p_type_id_visible_3689_line_79;
        // defaults are fine, although shouldn't need much concurrency
        _deserializers = new ConcurrentHashMap<String, JsonDeserializer<Object>>(16, 0.75f, 2);
        int PROBE_START_LINE_82 = 82;
		com.fasterxml.jackson.databind.JavaType p_default_impl_3690_line_82 = defaultImpl;
		int PROBE_END_LINE_82 = 82;
		_defaultImpl = p_default_impl_3690_line_82;
        _property = null;
    }

    protected TypeDeserializerBase(TypeDeserializerBase src, BeanProperty property)
    {
        int PROBE_START_LINE_88 = 88;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_3697_line_88 = src;
		com.fasterxml.jackson.databind.JavaType q__base_type_111_line_88 = p_src_3697_line_88._baseType;
		int PROBE_END_LINE_88 = 88;
		_baseType = q__base_type_111_line_88;
        int PROBE_START_LINE_89 = 89;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_3697_line_89 = src;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver q__id_resolver_112_line_89 = p_src_3697_line_89._idResolver;
		int PROBE_END_LINE_89 = 89;
		_idResolver = q__id_resolver_112_line_89;
        int PROBE_START_LINE_90 = 90;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_3697_line_90 = src;
		String q__type_property_name_113_line_90 = p_src_3697_line_90._typePropertyName;
		int PROBE_END_LINE_90 = 90;
		_typePropertyName = q__type_property_name_113_line_90;
        int PROBE_START_LINE_91 = 91;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_3697_line_91 = src;
		boolean q__type_id_visible_114_line_91 = p_src_3697_line_91._typeIdVisible;
		int PROBE_END_LINE_91 = 91;
		_typeIdVisible = q__type_id_visible_114_line_91;
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_3697_line_92 = src;
		Map<String, JsonDeserializer<Object>> q__deserializers_115_line_92 = p_src_3697_line_92._deserializers;
		int PROBE_END_LINE_92 = 92;
		_deserializers = q__deserializers_115_line_92;
        int PROBE_START_LINE_93 = 93;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_3697_line_93 = src;
		com.fasterxml.jackson.databind.JavaType q__default_impl_116_line_93 = p_src_3697_line_93._defaultImpl;
		int PROBE_END_LINE_93 = 93;
		_defaultImpl = q__default_impl_116_line_93;
        int PROBE_START_LINE_94 = 94;
		com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase p_src_3697_line_94 = src;
		JsonDeserializer<Object> q__default_impl_deserializer_117_line_94 = p_src_3697_line_94._defaultImplDeserializer;
		int PROBE_END_LINE_94 = 94;
		_defaultImplDeserializer = q__default_impl_deserializer_117_line_94;
        int PROBE_START_LINE_95 = 95;
		com.fasterxml.jackson.databind.BeanProperty p_property_3698_line_95 = property;
		int PROBE_END_LINE_95 = 95;
		_property = p_property_3698_line_95;
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
        return (_defaultImpl == null) ? null : _defaultImpl.getRawClass();
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
        JsonDeserializer<Object> deser = _deserializers.get(typeId);
        if (deser == null) {
            /* As per [Databind#305], need to provide contextual info. But for
             * backwards compatibility, let's start by only supporting this
             * for base class, not via interface. Later on we can add this
             * to the interface, assuming deprecation at base class helps.
             */
            JavaType type = _idResolver.typeFromId(ctxt, typeId);
            if (type == null) {
                // As per [JACKSON-614], use the default impl if no type id available:
                deser = _findDefaultImplDeserializer(ctxt);
                if (deser == null) {
                    // 10-May-2016, tatu: We may get some help...
                    JavaType actual = _handleUnknownTypeId(ctxt, typeId, _idResolver, _baseType);
                    if (actual == null) { // what should this be taken to mean?
                        // TODO: try to figure out something better
                        return null;
                    }
                    // ... would this actually work?
                    deser = ctxt.findContextualValueDeserializer(actual, _property);
                }
            } else {
                /* 16-Dec-2010, tatu: Since nominal type we get here has no (generic) type parameters,
                 *   we actually now need to explicitly narrow from base type (which may have parameterization)
                 *   using raw type.
                 *
                 *   One complication, though; can not change 'type class' (simple type to container); otherwise
                 *   we may try to narrow a SimpleType (Object.class) into MapType (Map.class), losing actual
                 *   type in process (getting SimpleType of Map.class which will not work as expected)
                 */
                if ((_baseType != null)
                        && _baseType.getClass() == type.getClass()) {
                    /* 09-Aug-2015, tatu: Not sure if the second part of the check makes sense;
                     *   but it appears to check that JavaType impl class is the same which is
                     *   important for some reason?
                     *   Disabling the check will break 2 Enum-related tests.
                     */
                    // 19-Jun-2016, tatu: As per [databind#1270] we may actually get full
                    //   generic type with custom type resolvers. If so, should try to retain them.
                    //  Whether this is sufficient to avoid problems remains to be seen, but for
                    //  now it should improve things.
                    if (!type.hasGenericTypes()) {
                        type = ctxt.getTypeFactory().constructSpecializedType(_baseType, type.getRawClass());
                    }
                }
                deser = ctxt.findContextualValueDeserializer(type, _property);
            }
            _deserializers.put(typeId, deser);
        }
        return deser;
    }

    protected final JsonDeserializer<Object> _findDefaultImplDeserializer(DeserializationContext ctxt) throws IOException
    {
        /* 06-Feb-2013, tatu: As per [databind#148], consider default implementation value of
         *   {@link java.lang.Void} to mean "serialize as null"; as well as DeserializationFeature
         *   to do swift mapping to null
         */
        if (_defaultImpl == null) {
            if (!ctxt.isEnabled(DeserializationFeature.FAIL_ON_INVALID_SUBTYPE)) {
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
                ctxt.reportMappingException("No (native) type id found when one was expected for polymorphic type handling");
                return null;
            }
        } else {
            String typeIdStr = (typeId instanceof String) ? (String) typeId : String.valueOf(typeId);
            deser = _findDeserializer(ctxt, typeIdStr);
        }
        return deser.deserialize(jp, ctxt);
    }

    /**
     * Helper method called when given type id can not be resolved into 
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
    protected JavaType _handleUnknownTypeId(DeserializationContext ctxt, String typeId,
            TypeIdResolver idResolver, JavaType baseType)
        throws IOException
    {
        String extraDesc = idResolver.getDescForKnownTypeIds();
        if (extraDesc == null) {
            extraDesc = "known type ids are not statically known";
        } else {
            extraDesc = "known type ids = " + extraDesc;
        }
        return ctxt.handleUnknownTypeId(_baseType, typeId, idResolver, extraDesc);
    }
}
