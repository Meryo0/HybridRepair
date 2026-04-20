package com.fasterxml.jackson.databind.jsontype.impl;

import java.util.Collection;

import com.fasterxml.jackson.annotation.JsonTypeInfo;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.*;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.databind.MapperFeature;
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

    /**
     * @since 2.9
     */
    protected StdTypeResolverBuilder(JsonTypeInfo.Id idType,
            JsonTypeInfo.As idAs, String propName) {
        _idType = idType;
        _includeAs = idAs;
        _typeProperty = propName;
    }

    public static StdTypeResolverBuilder noTypeInfoBuilder() {
        return new StdTypeResolverBuilder().init(JsonTypeInfo.Id.NONE, null);
    }

    @Override
    public StdTypeResolverBuilder init(JsonTypeInfo.Id idType, TypeIdResolver idRes)
    {
        int PROBE_START_LINE_67 = 69;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id p_id_type_4642_line_67 = idType;
		boolean std_type_resolver_builder_1_expr1_line_67 = p_id_type_4642_line_67 == null;
		int PROBE_END_LINE_67 = 69;
		// sanity checks
        if (std_type_resolver_builder_1_expr1_line_67) {
            throw new IllegalArgumentException("idType cannot be null");
        }
        int PROBE_START_LINE_70 = 70;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id p_id_type_4642_line_70 = idType;
		int PROBE_END_LINE_70 = 70;
		_idType = p_id_type_4642_line_70;
        int PROBE_START_LINE_71 = 71;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver p_id_res_4643_line_71 = idRes;
		int PROBE_END_LINE_71 = 71;
		_customIdResolver = p_id_res_4643_line_71;
        int PROBE_START_LINE_73 = 73;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id p_id_type_4642_line_73 = idType;
		String std_type_resolver_builder_1_expr5_line_73 = p_id_type_4642_line_73.getDefaultPropertyName();
		int PROBE_END_LINE_73 = 73;
		// Let's also initialize property name as per idType default
        _typeProperty = std_type_resolver_builder_1_expr5_line_73;
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
        int PROBE_START_LINE_114 = 114;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id f__id_type_4644_line_114 = _idType;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id q_none_152_line_114 = JsonTypeInfo.Id.NONE;
		boolean std_type_resolver_builder_1_expr7_line_114 = f__id_type_4644_line_114 == q_none_152_line_114;
		int PROBE_END_LINE_114 = 114;
		if (std_type_resolver_builder_1_expr7_line_114) { return null; }
        int PROBE_START_LINE_117 = 119;
		com.fasterxml.jackson.databind.JavaType p_base_type_4651_line_117 = baseType;
		boolean std_type_resolver_builder_1_expr8_line_117 = p_base_type_4651_line_117.isPrimitive();
		int PROBE_END_LINE_117 = 119;
		// 03-Oct-2016, tatu: As per [databind#1395] better prevent use for primitives,
        //    regardless of setting
        if (std_type_resolver_builder_1_expr8_line_117) {
            return null;
        }

        int PROBE_START_LINE_121 = 121;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_4650_line_121 = config;
		com.fasterxml.jackson.databind.JavaType p_base_type_4651_line_121 = baseType;
		Collection<com.fasterxml.jackson.databind.jsontype.NamedType> p_subtypes_4652_line_121 = subtypes;
		TypeIdResolver std_type_resolver_builder_1_expr9_line_121 = idResolver(p_config_4650_line_121,
				p_base_type_4651_line_121, p_subtypes_4652_line_121, false, true);
		int PROBE_END_LINE_121 = 121;
		TypeIdResolver idRes = std_type_resolver_builder_1_expr9_line_121;

        int PROBE_START_LINE_123 = 123;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_4650_line_123 = config;
		com.fasterxml.jackson.databind.JavaType p_base_type_4651_line_123 = baseType;
		JavaType std_type_resolver_builder_1_expr10_line_123 = defineDefaultImpl(p_config_4650_line_123,
				p_base_type_4651_line_123);
		int PROBE_END_LINE_123 = 123;
		JavaType defaultImpl = std_type_resolver_builder_1_expr10_line_123;

        int PROBE_START_LINE_126 = 140;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As f__include_as_4655_line_126 = _includeAs;
		int PROBE_END_LINE_126 = 140;
		// First, method for converting type info to type id:
        switch (f__include_as_4655_line_126) {
        case WRAPPER_ARRAY:
		int PROBE_START_LINE_128 = 129;
		com.fasterxml.jackson.databind.JavaType p_base_type_4651_line_128 = baseType;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver v_id_res_4653_line_128 = idRes;
		int PROBE_END_LINE_128 = 129;
		return new AsArrayTypeDeserializer(p_base_type_4651_line_128, v_id_res_4653_line_128,
                    _typeProperty, _typeIdVisible, defaultImpl);
        case PROPERTY:
        case EXISTING_PROPERTY: // as per [#528] same class as PROPERTY
		int PROBE_START_LINE_132 = 133;
		com.fasterxml.jackson.databind.JavaType p_base_type_4651_line_132 = baseType;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver v_id_res_4653_line_132 = idRes;
		int PROBE_END_LINE_132 = 133;
		return new AsPropertyTypeDeserializer(p_base_type_4651_line_132, v_id_res_4653_line_132,
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

    protected JavaType defineDefaultImpl(DeserializationConfig config, JavaType baseType) {
        JavaType defaultImpl = null;
        int PROBE_START_LINE_146 = 184;
		Class<?> f__default_impl_4658_line_146 = _defaultImpl;
		boolean std_type_resolver_builder_1_expr13_line_146 = f__default_impl_4658_line_146 == null;
		int PROBE_END_LINE_146 = 184;
		if (std_type_resolver_builder_1_expr13_line_146) {
            int PROBE_START_LINE_148 = 152;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_4656_line_148 = config;
			com.fasterxml.jackson.databind.MapperFeature q_use_base_type_as_default_impl_152_line_148 = MapperFeature.USE_BASE_TYPE_AS_DEFAULT_IMPL;
			boolean std_type_resolver_builder_1_expr15_line_148 = p_config_4656_line_148
					.isEnabled(q_use_base_type_as_default_impl_152_line_148);
			boolean std_type_resolver_builder_1_expr16_line_148 = true;
			if (std_type_resolver_builder_1_expr15_line_148) {
				com.fasterxml.jackson.databind.JavaType p_base_type_4657_line_148 = baseType;
				boolean std_type_resolver_builder_1_expr17_line_148 = p_base_type_4657_line_148.isAbstract();
				std_type_resolver_builder_1_expr16_line_148 = !std_type_resolver_builder_1_expr17_line_148;
			}
			boolean std_type_resolver_builder_1_expr14_line_148 = std_type_resolver_builder_1_expr15_line_148
					&& std_type_resolver_builder_1_expr16_line_148;
			int PROBE_END_LINE_148 = 152;
			//Fis of issue #955
            if (std_type_resolver_builder_1_expr14_line_148) {
                defaultImpl = baseType;
            } else {
                defaultImpl = null;
            }
        } else {
            // 20-Mar-2016, tatu: It is important to do specialization go through
            //   TypeFactory to ensure proper resolution; with 2.7 and before, direct
            //   call to JavaType was used, but that cannot work reliably with 2.7
            // 20-Mar-2016, tatu: Can finally add a check for type compatibility BUT
            //   if so, need to add explicit checks for marker types. Not ideal, but
            //   seems like a reasonable compromise.
            if ((_defaultImpl == Void.class)
                    || (_defaultImpl == NoClass.class)) {
                defaultImpl = config.getTypeFactory().constructType(_defaultImpl);
            } else {
                if (baseType.hasRawClass(_defaultImpl)) { // common enough to check
                    defaultImpl = baseType;
                } else if (baseType.isTypeOrSuperTypeOf(_defaultImpl)) {
                    // most common case with proper base type...
                    defaultImpl = config.getTypeFactory()
                            .constructSpecializedType(baseType, _defaultImpl);
                } else {
                    // 05-Apr-2018, tatu: As [databind#1565] and [databind#1861] need to allow
                    //    some cases of seemingly incompatible `defaultImpl`. Easiest to just clear
                    //    the setting.

                    /*
                    throw new IllegalArgumentException(
                            String.format("Invalid \"defaultImpl\" (%s): not a subtype of basetype (%s)",
                                    ClassUtil.nameOf(_defaultImpl), ClassUtil.nameOf(baseType.getRawClass()))
                            );
                            */
                    defaultImpl = null;
                }
            }
        }
        int PROBE_START_LINE_185 = 185;
		com.fasterxml.jackson.databind.JavaType v_default_impl_4659_line_185 = defaultImpl;
		int PROBE_END_LINE_185 = 185;
		return v_default_impl_4659_line_185;
    }

    /*
    /**********************************************************
    /* Construction, configuration
    /**********************************************************
     */

    @Override
    public StdTypeResolverBuilder inclusion(JsonTypeInfo.As includeAs) {
        int PROBE_START_LINE_196 = 198;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As p_include_as_4660_line_196 = includeAs;
		boolean std_type_resolver_builder_1_expr19_line_196 = p_include_as_4660_line_196 == null;
		int PROBE_END_LINE_196 = 198;
		if (std_type_resolver_builder_1_expr19_line_196) {
            throw new IllegalArgumentException("includeAs cannot be null");
        }
        int PROBE_START_LINE_199 = 199;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As p_include_as_4660_line_199 = includeAs;
		int PROBE_END_LINE_199 = 199;
		_includeAs = p_include_as_4660_line_199;
        return this;
    }

    /**
     * Method for constructing an instance with specified type property name
     * (property name to use for type id when using "as-property" inclusion).
     */
    @Override
    public StdTypeResolverBuilder typeProperty(String typeIdPropName) {
        int PROBE_START_LINE_210 = 212;
		String p_type_id_prop_name_4661_line_210 = typeIdPropName;
		boolean std_type_resolver_builder_1_expr23_line_210 = p_type_id_prop_name_4661_line_210 == null;
		boolean std_type_resolver_builder_1_expr24_line_210 = false;
		if (!std_type_resolver_builder_1_expr23_line_210) {
			String p_type_id_prop_name_4661_line_210_v1 = typeIdPropName;
			int std_type_resolver_builder_1_expr25_line_210 = p_type_id_prop_name_4661_line_210_v1.length();
			std_type_resolver_builder_1_expr24_line_210 = std_type_resolver_builder_1_expr25_line_210 == 0;
		}
		boolean std_type_resolver_builder_1_expr22_line_210 = std_type_resolver_builder_1_expr23_line_210
				|| std_type_resolver_builder_1_expr24_line_210;
		int PROBE_END_LINE_210 = 212;
		// ok to have null/empty; will restore to use defaults
        if (std_type_resolver_builder_1_expr22_line_210) {
            typeIdPropName = _idType.getDefaultPropertyName();
        }
        int PROBE_START_LINE_213 = 213;
		String p_type_id_prop_name_4661_line_213 = typeIdPropName;
		int PROBE_END_LINE_213 = 213;
		_typeProperty = p_type_id_prop_name_4661_line_213;
        return this;
    }

    @Override
    public StdTypeResolverBuilder defaultImpl(Class<?> defaultImpl) {
        _defaultImpl = defaultImpl;
        return this;
    }

    @Override
    public StdTypeResolverBuilder typeIdVisibility(boolean isVisible) {
        int PROBE_START_LINE_225 = 225;
		boolean p_is_visible_4663_line_225 = isVisible;
		int PROBE_END_LINE_225 = 225;
		_typeIdVisible = p_is_visible_4663_line_225;
        return this;
    }
    
    /*
    /**********************************************************
    /* Accessors
    /**********************************************************
     */

    @Override public Class<?> getDefaultImpl() { int PROBE_START_LINE_235 = 235;
		Class<?> f__default_impl_4658_line_235 = _defaultImpl;
		int PROBE_END_LINE_235 = 235;
	return f__default_impl_4658_line_235; }

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
        int PROBE_START_LINE_255 = 255;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver f__custom_id_resolver_4645_line_255 = _customIdResolver;
		boolean std_type_resolver_builder_1_expr31_line_255 = f__custom_id_resolver_4645_line_255 != null;
		// Custom id resolver?
        if (std_type_resolver_builder_1_expr31_line_255) { com.fasterxml.jackson.databind.jsontype.TypeIdResolver f__custom_id_resolver_4645_line_255_v1 = _customIdResolver;
			int PROBE_END_LINE_255 = 255;
		return f__custom_id_resolver_4645_line_255_v1; }
        int PROBE_START_LINE_256 = 256;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id f__id_type_4644_line_256 = _idType;
		boolean std_type_resolver_builder_1_expr32_line_256 = f__id_type_4644_line_256 == null;
		int PROBE_END_LINE_256 = 256;
		if (std_type_resolver_builder_1_expr32_line_256) throw new IllegalStateException("Cannot build, 'init()' not yet called");
        int PROBE_START_LINE_257 = 267;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id f__id_type_4644_line_257 = _idType;
		int PROBE_END_LINE_257 = 267;
		switch (f__id_type_4644_line_257) {
        case CLASS:
		int PROBE_START_LINE_259 = 259;
		com.fasterxml.jackson.databind.JavaType p_base_type_4665_line_259 = baseType;
		MapperConfig<?> p_config_4664_line_259 = config;
		com.fasterxml.jackson.databind.type.TypeFactory std_type_resolver_builder_1_expr35_line_259 = p_config_4664_line_259
				.getTypeFactory();
		int PROBE_END_LINE_259 = 259;
		return new ClassNameIdResolver(p_base_type_4665_line_259, std_type_resolver_builder_1_expr35_line_259);
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
