package com.fasterxml.jackson.databind.jsontype.impl;

import java.util.Collection;

import com.fasterxml.jackson.annotation.JsonTypeInfo;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.*;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;

/**
 * Default {@link TypeResolverBuilder} implementation.
 */
public class StdTypeResolverBuilder
    implements TypeResolverBuilder<StdTypeResolverBuilder>
{
    // Configuration settings:

    protected JsonTypeInfo.Id _idType;

    protected JsonTypeInfo.As _includeAs;

    protected String _typeProperty;

    /**
     * Whether type id should be exposed to deserializers or not
     */
    protected boolean _typeIdVisible = false;
    
    /**
     * Default class to use in case type information is not available
     * or is broken.
     */
    protected Class<?> _defaultImpl;
    
    // Objects
    
    protected TypeIdResolver _customIdResolver;
    
    /*
    /**********************************************************
    /* Construction, initialization, actual building
    /**********************************************************
     */

    public StdTypeResolverBuilder() { }

    public static StdTypeResolverBuilder noTypeInfoBuilder() {
        return new StdTypeResolverBuilder().init(JsonTypeInfo.Id.NONE, null);
    }

    @Override
    public StdTypeResolverBuilder init(JsonTypeInfo.Id idType, TypeIdResolver idRes)
    {
        int PROBE_START_LINE_57 = 59;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id p_id_type_3651_line_57 = idType;
		boolean std_type_resolver_builder_1_expr1_line_57 = p_id_type_3651_line_57 == null;
		int PROBE_END_LINE_57 = 59;
		// sanity checks
        if (std_type_resolver_builder_1_expr1_line_57) {
            throw new IllegalArgumentException("idType can not be null");
        }
        int PROBE_START_LINE_60 = 60;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id p_id_type_3651_line_60 = idType;
		int PROBE_END_LINE_60 = 60;
		_idType = p_id_type_3651_line_60;
        int PROBE_START_LINE_61 = 61;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver p_id_res_3652_line_61 = idRes;
		int PROBE_END_LINE_61 = 61;
		_customIdResolver = p_id_res_3652_line_61;
        int PROBE_START_LINE_63 = 63;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id p_id_type_3651_line_63 = idType;
		String std_type_resolver_builder_1_expr5_line_63 = p_id_type_3651_line_63.getDefaultPropertyName();
		int PROBE_END_LINE_63 = 63;
		// Let's also initialize property name as per idType default
        _typeProperty = std_type_resolver_builder_1_expr5_line_63;
        return this;
    }

    @Override
    public TypeSerializer buildTypeSerializer(SerializationConfig config,
            JavaType baseType, Collection<NamedType> subtypes)
    {
        if (_idType == JsonTypeInfo.Id.NONE) { return null; }
        // 03-Oct-2016, tatu: As per [databind#1395] better prevent use for primitives,
        //    regardless of setting
        if (baseType.isPrimitive()) {
            return null;
        }
        TypeIdResolver idRes = idResolver(config, baseType, subtypes, true, false);
        switch (_includeAs) {
        case WRAPPER_ARRAY:
            return new AsArrayTypeSerializer(idRes, null);
        case PROPERTY:
            return new AsPropertyTypeSerializer(idRes, null, _typeProperty);
        case WRAPPER_OBJECT:
            return new AsWrapperTypeSerializer(idRes, null);
        case EXTERNAL_PROPERTY:
            return new AsExternalTypeSerializer(idRes, null, _typeProperty);
        case EXISTING_PROPERTY:
        	// as per [#528]
        	return new AsExistingPropertyTypeSerializer(idRes, null, _typeProperty);
        }
        throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: "+_includeAs);
    }

    // as per [#368]
    // removed when fix [#528]
    //private IllegalArgumentException _noExisting() {
    //    return new IllegalArgumentException("Inclusion type "+_includeAs+" not yet supported");
    //}

    @Override
    public TypeDeserializer buildTypeDeserializer(DeserializationConfig config,
            JavaType baseType, Collection<NamedType> subtypes)
    {
        int PROBE_START_LINE_104 = 104;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id f__id_type_3653_line_104 = _idType;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id q_none_110_line_104 = JsonTypeInfo.Id.NONE;
		boolean std_type_resolver_builder_1_expr7_line_104 = f__id_type_3653_line_104 == q_none_110_line_104;
		int PROBE_END_LINE_104 = 104;
		if (std_type_resolver_builder_1_expr7_line_104) { return null; }
        int PROBE_START_LINE_107 = 109;
		com.fasterxml.jackson.databind.JavaType p_base_type_3660_line_107 = baseType;
		boolean std_type_resolver_builder_1_expr8_line_107 = p_base_type_3660_line_107.isPrimitive();
		int PROBE_END_LINE_107 = 109;
		// 03-Oct-2016, tatu: As per [databind#1395] better prevent use for primitives,
        //    regardless of setting
        if (std_type_resolver_builder_1_expr8_line_107) {
            return null;
        }

        int PROBE_START_LINE_111 = 111;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_3659_line_111 = config;
		com.fasterxml.jackson.databind.JavaType p_base_type_3660_line_111 = baseType;
		Collection<com.fasterxml.jackson.databind.jsontype.NamedType> p_subtypes_3661_line_111 = subtypes;
		TypeIdResolver std_type_resolver_builder_1_expr9_line_111 = idResolver(p_config_3659_line_111,
				p_base_type_3660_line_111, p_subtypes_3661_line_111, false, true);
		int PROBE_END_LINE_111 = 111;
		TypeIdResolver idRes = std_type_resolver_builder_1_expr9_line_111;

        JavaType defaultImpl;

        int PROBE_START_LINE_115 = 131;
		Class<?> f__default_impl_3663_line_115 = _defaultImpl;
		boolean std_type_resolver_builder_1_expr10_line_115 = f__default_impl_3663_line_115 == null;
		int PROBE_END_LINE_115 = 131;
		if (std_type_resolver_builder_1_expr10_line_115) {
            defaultImpl = null;
        } else {
            // 20-Mar-2016, tatu: It is important to do specialization go through
            //   TypeFactory to ensure proper resolution; with 2.7 and before, direct
            //   call to JavaType was used, but that can not work reliably with 2.7
            // 20-Mar-2016, tatu: Can finally add a check for type compatibility BUT
            //   if so, need to add explicit checks for marker types. Not ideal, but
            //   seems like a reasonable compromise.
            if ((_defaultImpl == Void.class)
                     || (_defaultImpl == NoClass.class)) {
                defaultImpl = config.getTypeFactory().constructType(_defaultImpl);
            } else {
                defaultImpl = config.getTypeFactory()
                    .constructSpecializedType(baseType, _defaultImpl);
            }
        }

        int PROBE_START_LINE_134 = 148;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As f__include_as_3665_line_134 = _includeAs;
		int PROBE_END_LINE_134 = 148;
		// First, method for converting type info to type id:
        switch (f__include_as_3665_line_134) {
        case WRAPPER_ARRAY:
            return new AsArrayTypeDeserializer(baseType, idRes,
                    _typeProperty, _typeIdVisible, defaultImpl);
        case PROPERTY:
        case EXISTING_PROPERTY: // as per [#528] same class as PROPERTY
		int PROBE_START_LINE_140 = 141;
		com.fasterxml.jackson.databind.JavaType p_base_type_3660_line_140 = baseType;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver v_id_res_3662_line_140 = idRes;
		int PROBE_END_LINE_140 = 141;
		return new AsPropertyTypeDeserializer(p_base_type_3660_line_140, v_id_res_3662_line_140,
                    _typeProperty, _typeIdVisible, defaultImpl, _includeAs);
        case WRAPPER_OBJECT:
            return new AsWrapperTypeDeserializer(baseType, idRes,
                    _typeProperty, _typeIdVisible, defaultImpl);
        case EXTERNAL_PROPERTY:
            return new AsExternalTypeDeserializer(baseType, idRes,
                    _typeProperty, _typeIdVisible, defaultImpl);
        }
        throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: "+_includeAs);
    }

    /*
    /**********************************************************
    /* Construction, configuration
    /**********************************************************
     */

    @Override
    public StdTypeResolverBuilder inclusion(JsonTypeInfo.As includeAs) {
        int PROBE_START_LINE_160 = 162;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As p_include_as_3666_line_160 = includeAs;
		boolean std_type_resolver_builder_1_expr13_line_160 = p_include_as_3666_line_160 == null;
		int PROBE_END_LINE_160 = 162;
		if (std_type_resolver_builder_1_expr13_line_160) {
            throw new IllegalArgumentException("includeAs can not be null");
        }
        int PROBE_START_LINE_163 = 163;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As p_include_as_3666_line_163 = includeAs;
		int PROBE_END_LINE_163 = 163;
		_includeAs = p_include_as_3666_line_163;
        return this;
    }

    /**
     * Method for constructing an instance with specified type property name
     * (property name to use for type id when using "as-property" inclusion).
     */
    @Override
    public StdTypeResolverBuilder typeProperty(String typeIdPropName) {
        // ok to have null/empty; will restore to use defaults
        if (typeIdPropName == null || typeIdPropName.length() == 0) {
            typeIdPropName = _idType.getDefaultPropertyName();
        }
        _typeProperty = typeIdPropName;
        return this;
    }

    @Override
    public StdTypeResolverBuilder defaultImpl(Class<?> defaultImpl) {
        _defaultImpl = defaultImpl;
        return this;
    }

    @Override
    public StdTypeResolverBuilder typeIdVisibility(boolean isVisible) {
        _typeIdVisible = isVisible;
        return this;
    }
    
    /*
    /**********************************************************
    /* Accessors
    /**********************************************************
     */

    @Override public Class<?> getDefaultImpl() { int PROBE_START_LINE_199 = 199;
		Class<?> f__default_impl_3663_line_199 = _defaultImpl;
		int PROBE_END_LINE_199 = 199;
	return f__default_impl_3663_line_199; }

    public String getTypeProperty() { return _typeProperty; }
    public boolean isTypeIdVisible() { return _typeIdVisible; }
    
    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */
    
    /**
     * Helper method that will either return configured custom
     * type id resolver, or construct a standard resolver
     * given configuration.
     */
    protected TypeIdResolver idResolver(MapperConfig<?> config,
            JavaType baseType, Collection<NamedType> subtypes, boolean forSer, boolean forDeser)
    {
        int PROBE_START_LINE_219 = 219;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver f__custom_id_resolver_3654_line_219 = _customIdResolver;
		boolean std_type_resolver_builder_1_expr17_line_219 = f__custom_id_resolver_3654_line_219 != null;
		// Custom id resolver?
        if (std_type_resolver_builder_1_expr17_line_219) { com.fasterxml.jackson.databind.jsontype.TypeIdResolver f__custom_id_resolver_3654_line_219_v1 = _customIdResolver;
			int PROBE_END_LINE_219 = 219;
		return f__custom_id_resolver_3654_line_219_v1; }
        int PROBE_START_LINE_220 = 220;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id f__id_type_3653_line_220 = _idType;
		boolean std_type_resolver_builder_1_expr18_line_220 = f__id_type_3653_line_220 == null;
		int PROBE_END_LINE_220 = 220;
		if (std_type_resolver_builder_1_expr18_line_220) throw new IllegalStateException("Can not build, 'init()' not yet called");
        int PROBE_START_LINE_221 = 231;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id f__id_type_3653_line_221 = _idType;
		int PROBE_END_LINE_221 = 231;
		switch (f__id_type_3653_line_221) {
        case CLASS:
		int PROBE_START_LINE_223 = 223;
		com.fasterxml.jackson.databind.JavaType p_base_type_3671_line_223 = baseType;
		MapperConfig<?> p_config_3670_line_223 = config;
		com.fasterxml.jackson.databind.type.TypeFactory std_type_resolver_builder_1_expr21_line_223 = p_config_3670_line_223
				.getTypeFactory();
		int PROBE_END_LINE_223 = 223;
		return new ClassNameIdResolver(p_base_type_3671_line_223, std_type_resolver_builder_1_expr21_line_223);
        case MINIMAL_CLASS:
            return new MinimalClassNameIdResolver(baseType, config.getTypeFactory());
        case NAME:
            return TypeNameIdResolver.construct(config, baseType, subtypes, forSer, forDeser);
        case NONE: // hmmh. should never get this far with 'none'
            return null;
        case CUSTOM: // need custom resolver...
        }
        throw new IllegalStateException("Do not know how to construct standard type id resolver for idType: "+_idType);
    }
}
