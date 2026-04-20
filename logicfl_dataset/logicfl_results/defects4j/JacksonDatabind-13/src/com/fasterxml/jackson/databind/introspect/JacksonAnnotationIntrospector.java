package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.util.*;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.*;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.AttributePropertyWriter;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.util.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.annotation.JsonTypeResolver;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.annotation.JsonPropertyDescription;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.annotation.JacksonAnnotationsInside;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.databind.annotation.JsonValueInstantiator;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonUnwrapped;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.fasterxml.jackson.annotation.JsonIgnoreType;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * {@link AnnotationIntrospector} implementation that handles standard
 * Jackson annotations.
 */
public class JacksonAnnotationIntrospector
    extends AnnotationIntrospector
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    public JacksonAnnotationIntrospector() { }

    @Override
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.PackageVersion.VERSION;
    }

    /*
    /**********************************************************
    /* General annotation properties
    /**********************************************************
     */

    /**
     * Annotations with meta-annotation {@link JacksonAnnotationsInside}
     * are considered bundles.
     */
    @Override
    public boolean isAnnotationBundle(Annotation ann) {
        int PROBE_START_LINE_51 = 51;
		java.lang.annotation.Annotation p_ann_2855_line_51 = ann;
		Class<? extends java.lang.annotation.Annotation> jackson_annotation_introspector_1_expr4_line_51 = p_ann_2855_line_51
				.annotationType();
		com.fasterxml.jackson.annotation.JacksonAnnotationsInside jackson_annotation_introspector_1_expr2_line_51 = jackson_annotation_introspector_1_expr4_line_51
				.getAnnotation(JacksonAnnotationsInside.class);
		boolean jackson_annotation_introspector_1_expr1_line_51 = jackson_annotation_introspector_1_expr2_line_51 != null;
		int PROBE_END_LINE_51 = 51;
		return jackson_annotation_introspector_1_expr1_line_51;
    }

    /*
    /**********************************************************
    /* General annotations
    /**********************************************************
     */

    // default impl is fine:
    //public String findEnumValue(Enum<?> value) { return value.name(); }

    /*
    /**********************************************************
    /* General class annotations
    /**********************************************************
     */

    @Override
    public PropertyName findRootName(AnnotatedClass ac)
    {
        JsonRootName ann = _findAnnotation(ac, JsonRootName.class);
        if (ann == null) {
            return null;
        }
        String ns = ann.namespace();
        if (ns != null && ns.length() == 0) {
            ns = null;
        }
        return PropertyName.construct(ann.value(), ns);
    }

    @Override
    public String[] findPropertiesToIgnore(Annotated ac) {
        int PROBE_START_LINE_85 = 85;
		com.fasterxml.jackson.databind.introspect.Annotated p_ac_2857_line_85 = ac;
		JsonIgnoreProperties jackson_annotation_introspector_1_expr5_line_85 = _findAnnotation(p_ac_2857_line_85,
				JsonIgnoreProperties.class);
		int PROBE_END_LINE_85 = 85;
		JsonIgnoreProperties ignore = jackson_annotation_introspector_1_expr5_line_85;
        int PROBE_START_LINE_86 = 86;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties v_ignore_2858_line_86 = ignore;
		boolean jackson_annotation_introspector_1_expr10_line_86 = v_ignore_2858_line_86 == null;
		boolean jackson_annotation_introspector_1_expr8_line_86 = (jackson_annotation_introspector_1_expr10_line_86);
		String[] jackson_annotation_introspector_1_expr9_line_86 = null;
		if (!jackson_annotation_introspector_1_expr8_line_86) {
			com.fasterxml.jackson.annotation.JsonIgnoreProperties v_ignore_2858_line_86_v1 = ignore;
			jackson_annotation_introspector_1_expr9_line_86 = v_ignore_2858_line_86_v1.value();
		}
		String[] jackson_annotation_introspector_1_expr7_line_86 = jackson_annotation_introspector_1_expr8_line_86
				? null
				: jackson_annotation_introspector_1_expr9_line_86;
		int PROBE_END_LINE_86 = 86;
		return jackson_annotation_introspector_1_expr7_line_86;
    }

    @Override
    public Boolean findIgnoreUnknownProperties(AnnotatedClass ac) {
        int PROBE_START_LINE_91 = 91;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2859_line_91 = ac;
		JsonIgnoreProperties jackson_annotation_introspector_1_expr11_line_91 = _findAnnotation(p_ac_2859_line_91,
				JsonIgnoreProperties.class);
		int PROBE_END_LINE_91 = 91;
		JsonIgnoreProperties ignore = jackson_annotation_introspector_1_expr11_line_91;
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties v_ignore_2860_line_92 = ignore;
		boolean jackson_annotation_introspector_1_expr16_line_92 = v_ignore_2860_line_92 == null;
		boolean jackson_annotation_introspector_1_expr14_line_92 = (jackson_annotation_introspector_1_expr16_line_92);
		boolean jackson_annotation_introspector_1_expr15_line_92 = false;
		if (!jackson_annotation_introspector_1_expr14_line_92) {
			com.fasterxml.jackson.annotation.JsonIgnoreProperties v_ignore_2860_line_92_v1 = ignore;
			jackson_annotation_introspector_1_expr15_line_92 = v_ignore_2860_line_92_v1.ignoreUnknown();
		}
		Boolean jackson_annotation_introspector_1_expr13_line_92 = jackson_annotation_introspector_1_expr14_line_92
				? null
				: jackson_annotation_introspector_1_expr15_line_92;
		int PROBE_END_LINE_92 = 92;
		return jackson_annotation_introspector_1_expr13_line_92;
    }

    @Override
    public Boolean isIgnorableType(AnnotatedClass ac) {
        int PROBE_START_LINE_97 = 97;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2861_line_97 = ac;
		JsonIgnoreType jackson_annotation_introspector_1_expr17_line_97 = _findAnnotation(p_ac_2861_line_97,
				JsonIgnoreType.class);
		int PROBE_END_LINE_97 = 97;
		JsonIgnoreType ignore = jackson_annotation_introspector_1_expr17_line_97;
        int PROBE_START_LINE_98 = 98;
		com.fasterxml.jackson.annotation.JsonIgnoreType v_ignore_2862_line_98 = ignore;
		boolean jackson_annotation_introspector_1_expr22_line_98 = v_ignore_2862_line_98 == null;
		boolean jackson_annotation_introspector_1_expr20_line_98 = (jackson_annotation_introspector_1_expr22_line_98);
		boolean jackson_annotation_introspector_1_expr21_line_98 = false;
		if (!jackson_annotation_introspector_1_expr20_line_98) {
			com.fasterxml.jackson.annotation.JsonIgnoreType v_ignore_2862_line_98_v1 = ignore;
			jackson_annotation_introspector_1_expr21_line_98 = v_ignore_2862_line_98_v1.value();
		}
		Boolean jackson_annotation_introspector_1_expr19_line_98 = jackson_annotation_introspector_1_expr20_line_98
				? null
				: jackson_annotation_introspector_1_expr21_line_98;
		int PROBE_END_LINE_98 = 98;
		return jackson_annotation_introspector_1_expr19_line_98;
    }

    /**
     * @deprecated (since 2.3) Use {@link #findFilterId(Annotated)} instead
     */
    @Deprecated
    @Override
    public Object findFilterId(AnnotatedClass ac) {
        return _findFilterId(ac);
    }
    
    @Override
    public Object findFilterId(Annotated a) {
        return _findFilterId(a);
    }

    protected final Object _findFilterId(Annotated a)
    {
        JsonFilter ann = _findAnnotation(a, JsonFilter.class);
        if (ann != null) {
            String id = ann.value();
            // Empty String is same as not having annotation, to allow overrides
            if (id.length() > 0) {
                return id;
            }
        }
        return null;
    }

    @Override
    public Object findNamingStrategy(AnnotatedClass ac)
    {
        int PROBE_START_LINE_131 = 131;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2866_line_131 = ac;
		JsonNaming jackson_annotation_introspector_1_expr23_line_131 = _findAnnotation(p_ac_2866_line_131,
				JsonNaming.class);
		int PROBE_END_LINE_131 = 131;
		JsonNaming ann = jackson_annotation_introspector_1_expr23_line_131;
        int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.annotation.JsonNaming v_ann_2867_line_132 = ann;
		boolean jackson_annotation_introspector_1_expr28_line_132 = v_ann_2867_line_132 == null;
		boolean jackson_annotation_introspector_1_expr26_line_132 = (jackson_annotation_introspector_1_expr28_line_132);
		Class<? extends com.fasterxml.jackson.databind.PropertyNamingStrategy> jackson_annotation_introspector_1_expr27_line_132 = null;
		if (!jackson_annotation_introspector_1_expr26_line_132) {
			com.fasterxml.jackson.databind.annotation.JsonNaming v_ann_2867_line_132_v1 = ann;
			jackson_annotation_introspector_1_expr27_line_132 = v_ann_2867_line_132_v1.value();
		}
		Object jackson_annotation_introspector_1_expr25_line_132 = jackson_annotation_introspector_1_expr26_line_132
				? null
				: jackson_annotation_introspector_1_expr27_line_132;
		int PROBE_END_LINE_132 = 132;
		return jackson_annotation_introspector_1_expr25_line_132;
    } 

    /*
    /**********************************************************
    /* Property auto-detection
    /**********************************************************
     */
    
    @Override
    public VisibilityChecker<?> findAutoDetectVisibility(AnnotatedClass ac,
        VisibilityChecker<?> checker)
    {
        int PROBE_START_LINE_145 = 145;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2868_line_145 = ac;
		JsonAutoDetect jackson_annotation_introspector_1_expr29_line_145 = _findAnnotation(p_ac_2868_line_145,
				JsonAutoDetect.class);
		int PROBE_END_LINE_145 = 145;
		JsonAutoDetect ann = jackson_annotation_introspector_1_expr29_line_145;
        int PROBE_START_LINE_146 = 146;
		com.fasterxml.jackson.annotation.JsonAutoDetect v_ann_2870_line_146 = ann;
		boolean jackson_annotation_introspector_1_expr34_line_146 = v_ann_2870_line_146 == null;
		boolean jackson_annotation_introspector_1_expr32_line_146 = (jackson_annotation_introspector_1_expr34_line_146);
		VisibilityChecker<?> p_checker_2869_line_146 = null;
		VisibilityChecker<?> jackson_annotation_introspector_1_expr33_line_146 = null;
		if (jackson_annotation_introspector_1_expr32_line_146) {
			p_checker_2869_line_146 = checker;
		} else {
			VisibilityChecker<?> p_checker_2869_line_146_v1 = checker;
			com.fasterxml.jackson.annotation.JsonAutoDetect v_ann_2870_line_146_v1 = ann;
			jackson_annotation_introspector_1_expr33_line_146 = p_checker_2869_line_146_v1.with(v_ann_2870_line_146_v1);
		}
		VisibilityChecker<?> jackson_annotation_introspector_1_expr31_line_146 = jackson_annotation_introspector_1_expr32_line_146
				? p_checker_2869_line_146
				: jackson_annotation_introspector_1_expr33_line_146;
		int PROBE_END_LINE_146 = 146;
		return jackson_annotation_introspector_1_expr31_line_146;
    }

    /*
    /**********************************************************
    /* General member (field, method/constructor) annotations
    /**********************************************************
     */

    @Override        
    public ReferenceProperty findReferenceType(AnnotatedMember member)
    {
        int PROBE_START_LINE_158 = 158;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_2871_line_158 = member;
		JsonManagedReference jackson_annotation_introspector_1_expr35_line_158 = _findAnnotation(p_member_2871_line_158,
				JsonManagedReference.class);
		int PROBE_END_LINE_158 = 158;
		JsonManagedReference ref1 = jackson_annotation_introspector_1_expr35_line_158;
        int PROBE_START_LINE_159 = 161;
		com.fasterxml.jackson.annotation.JsonManagedReference v_ref_1_2872_line_159 = ref1;
		boolean jackson_annotation_introspector_1_expr37_line_159 = v_ref_1_2872_line_159 != null;
		int PROBE_END_LINE_159 = 161;
		if (jackson_annotation_introspector_1_expr37_line_159) {
            return AnnotationIntrospector.ReferenceProperty.managed(ref1.value());
        }
        int PROBE_START_LINE_162 = 162;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_2871_line_162 = member;
		JsonBackReference jackson_annotation_introspector_1_expr38_line_162 = _findAnnotation(p_member_2871_line_162,
				JsonBackReference.class);
		int PROBE_END_LINE_162 = 162;
		JsonBackReference ref2 = jackson_annotation_introspector_1_expr38_line_162;
        int PROBE_START_LINE_163 = 165;
		com.fasterxml.jackson.annotation.JsonBackReference v_ref_2_2873_line_163 = ref2;
		boolean jackson_annotation_introspector_1_expr40_line_163 = v_ref_2_2873_line_163 != null;
		int PROBE_END_LINE_163 = 165;
		if (jackson_annotation_introspector_1_expr40_line_163) {
            return AnnotationIntrospector.ReferenceProperty.back(ref2.value());
        }
        return null;
    }

    @Override
    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember member)
    {
        int PROBE_START_LINE_172 = 172;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_2874_line_172 = member;
		JsonUnwrapped jackson_annotation_introspector_1_expr41_line_172 = _findAnnotation(p_member_2874_line_172,
				JsonUnwrapped.class);
		int PROBE_END_LINE_172 = 172;
		JsonUnwrapped ann = jackson_annotation_introspector_1_expr41_line_172;
        int PROBE_START_LINE_175 = 177;
		com.fasterxml.jackson.annotation.JsonUnwrapped v_ann_2875_line_175 = ann;
		boolean jackson_annotation_introspector_1_expr44_line_175 = v_ann_2875_line_175 == null;
		boolean jackson_annotation_introspector_1_expr45_line_175 = false;
		if (!jackson_annotation_introspector_1_expr44_line_175) {
			com.fasterxml.jackson.annotation.JsonUnwrapped v_ann_2875_line_175_v1 = ann;
			boolean jackson_annotation_introspector_1_expr46_line_175 = v_ann_2875_line_175_v1.enabled();
			jackson_annotation_introspector_1_expr45_line_175 = !jackson_annotation_introspector_1_expr46_line_175;
		}
		boolean jackson_annotation_introspector_1_expr43_line_175 = jackson_annotation_introspector_1_expr44_line_175
				|| jackson_annotation_introspector_1_expr45_line_175;
		int PROBE_END_LINE_175 = 177;
		// if not enabled, just means annotation is not enabled; not necessarily
        // that unwrapping should not be done (relevant when using chained introspectors)
        if (jackson_annotation_introspector_1_expr43_line_175) {
            return null;
        }
        String prefix = ann.prefix();
        String suffix = ann.suffix();
        return NameTransformer.simpleTransformer(prefix, suffix);
    }

    @Override
    public boolean hasIgnoreMarker(AnnotatedMember m) {
        int PROBE_START_LINE_185 = 185;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_2876_line_185 = m;
		boolean jackson_annotation_introspector_1_expr47_line_185 = _isIgnorable(p_m_2876_line_185);
		int PROBE_END_LINE_185 = 185;
		return jackson_annotation_introspector_1_expr47_line_185;
    }

    @Override
    public Boolean hasRequiredMarker(AnnotatedMember m)
    {
        int PROBE_START_LINE_191 = 191;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_2877_line_191 = m;
		JsonProperty jackson_annotation_introspector_1_expr48_line_191 = _findAnnotation(p_m_2877_line_191,
				JsonProperty.class);
		int PROBE_END_LINE_191 = 191;
		JsonProperty ann = jackson_annotation_introspector_1_expr48_line_191;
        int PROBE_START_LINE_192 = 194;
		com.fasterxml.jackson.annotation.JsonProperty v_ann_2878_line_192 = ann;
		boolean jackson_annotation_introspector_1_expr50_line_192 = v_ann_2878_line_192 != null;
		int PROBE_END_LINE_192 = 194;
		if (jackson_annotation_introspector_1_expr50_line_192) {
            return ann.required();
        }
        return null;
    }
    
    @Override
    public Object findInjectableValueId(AnnotatedMember m)
    {
        int PROBE_START_LINE_201 = 201;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_2879_line_201 = m;
		JacksonInject jackson_annotation_introspector_1_expr51_line_201 = _findAnnotation(p_m_2879_line_201,
				JacksonInject.class);
		int PROBE_END_LINE_201 = 201;
		JacksonInject ann = jackson_annotation_introspector_1_expr51_line_201;
        int PROBE_START_LINE_202 = 204;
		com.fasterxml.jackson.annotation.JacksonInject v_ann_2880_line_202 = ann;
		boolean jackson_annotation_introspector_1_expr53_line_202 = v_ann_2880_line_202 == null;
		int PROBE_END_LINE_202 = 204;
		if (jackson_annotation_introspector_1_expr53_line_202) {
            return null;
        }
        /* Empty String means that we should use name of declared
         * value class.
         */
        String id = ann.value();
        if (id.length() == 0) {
            // slight complication; for setters, type 
            if (!(m instanceof AnnotatedMethod)) {
                return m.getRawType().getName();
            }
            AnnotatedMethod am = (AnnotatedMethod) m;
            if (am.getParameterCount() == 0) {
                return m.getRawType().getName();
            }
            return am.getRawParameterType(0).getName();
        }
        return id;
    }
    
    /*
    /**********************************************************
    /* Class annotations for PM type handling (1.5+)
    /**********************************************************
     */

    @Override
    public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> config,
            AnnotatedClass ac, JavaType baseType)
    {
        int PROBE_START_LINE_233 = 233;
		MapperConfig<?> p_config_2881_line_233 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2882_line_233 = ac;
		com.fasterxml.jackson.databind.JavaType p_base_type_2883_line_233 = baseType;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr54_line_233 = _findTypeResolver(
				p_config_2881_line_233, p_ac_2882_line_233, p_base_type_2883_line_233);
		int PROBE_END_LINE_233 = 233;
		return jackson_annotation_introspector_1_expr54_line_233;
    }

    @Override
    public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> config,
            AnnotatedMember am, JavaType baseType)
    {
        int PROBE_START_LINE_243 = 243;
		com.fasterxml.jackson.databind.JavaType p_base_type_2886_line_243 = baseType;
		boolean jackson_annotation_introspector_1_expr55_line_243 = p_base_type_2886_line_243.isContainerType();
		int PROBE_END_LINE_243 = 243;
		/* As per definition of @JsonTypeInfo, should only apply to contents of container
         * (collection, map) types, not container types themselves:
         */
        if (jackson_annotation_introspector_1_expr55_line_243) return null;
        int PROBE_START_LINE_245 = 245;
		MapperConfig<?> p_config_2884_line_245 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_am_2885_line_245 = am;
		com.fasterxml.jackson.databind.JavaType p_base_type_2886_line_245 = baseType;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr56_line_245 = _findTypeResolver(
				p_config_2884_line_245, p_am_2885_line_245, p_base_type_2886_line_245);
		int PROBE_END_LINE_245 = 245;
		// No per-member type overrides (yet)
        return jackson_annotation_introspector_1_expr56_line_245;
    }

    @Override
    public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> config,
            AnnotatedMember am, JavaType containerType)
    {
        /* First: let's ensure property is a container type: caller should have
         * verified but just to be sure
         */
        if (!containerType.isContainerType()) {
            throw new IllegalArgumentException("Must call method with a container type (got "+containerType+")");
        }
        return _findTypeResolver(config, am, containerType);
    }
    
    @Override
    public List<NamedType> findSubtypes(Annotated a)
    {
        JsonSubTypes t = _findAnnotation(a, JsonSubTypes.class);
        if (t == null) return null;
        JsonSubTypes.Type[] types = t.value();
        ArrayList<NamedType> result = new ArrayList<NamedType>(types.length);
        for (JsonSubTypes.Type type : types) {
            result.add(new NamedType(type.value(), type.name()));
        }
        return result;
    }

    @Override        
    public String findTypeName(AnnotatedClass ac)
    {
        JsonTypeName tn = _findAnnotation(ac, JsonTypeName.class);
        return (tn == null) ? null : tn.value();
    }

    /*
    /**********************************************************
    /* Serialization: general annotations
    /**********************************************************
    */

    @Override
    public Object findSerializer(Annotated a)
    {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
            Class<? extends JsonSerializer<?>> serClass = ann.using();
            if (serClass != JsonSerializer.None.class) {
                return serClass;
            }
        }
        
        /* 18-Oct-2010, tatu: [JACKSON-351] @JsonRawValue handled just here, for now;
         *  if we need to get raw indicator from other sources need to add
         *  separate accessor within {@link AnnotationIntrospector} interface.
         */
        JsonRawValue annRaw =  _findAnnotation(a, JsonRawValue.class);
        if ((annRaw != null) && annRaw.value()) {
            // let's construct instance with nominal type:
            Class<?> cls = a.getRawType();
            return new RawSerializer<Object>(cls);
        }       
        return null;
    }

    @Override
    public Class<? extends JsonSerializer<?>> findKeySerializer(Annotated a)
    {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
            Class<? extends JsonSerializer<?>> serClass = ann.keyUsing();
            if (serClass != JsonSerializer.None.class) {
                return serClass;
            }
        }
        return null;
    }

    @Override
    public Class<? extends JsonSerializer<?>> findContentSerializer(Annotated a)
    {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
            Class<? extends JsonSerializer<?>> serClass = ann.contentUsing();
            if (serClass != JsonSerializer.None.class) {
                return serClass;
            }
        }
        return null;
    }

    @Override
    public Object findNullSerializer(Annotated a)
    {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
            Class<? extends JsonSerializer<?>> serClass = ann.nullsUsing();
            if (serClass != JsonSerializer.None.class) {
                return serClass;
            }
        }
        return null;
    }

    @Override
    public JsonInclude.Include findSerializationInclusion(Annotated a, JsonInclude.Include defValue)
    {
        JsonInclude inc = _findAnnotation(a, JsonInclude.class);
        if (inc != null) {
            return inc.value();
        }
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
            @SuppressWarnings("deprecation")
            JsonSerialize.Inclusion i2 = ann.include();
            switch (i2) {
            case ALWAYS:
                return JsonInclude.Include.ALWAYS;
            case NON_NULL:
                return JsonInclude.Include.NON_NULL;
            case NON_DEFAULT:
                return JsonInclude.Include.NON_DEFAULT;
            case NON_EMPTY:
                return JsonInclude.Include.NON_EMPTY;
            case DEFAULT_INCLUSION: // since 2.3 -- fall through, use default
                break;
            }
        }
        return defValue;
    }

    @Override
    public JsonInclude.Include findSerializationInclusionForContent(Annotated a, JsonInclude.Include defValue)
    {
        JsonInclude inc = _findAnnotation(a, JsonInclude.class);
        return (inc == null) ? defValue : inc.content();
    }

    @Override
    public Class<?> findSerializationType(Annotated am)
    {
        JsonSerialize ann = _findAnnotation(am, JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.as());
    }
    
    @Override
    public Class<?> findSerializationKeyType(Annotated am, JavaType baseType)
    {
        JsonSerialize ann = _findAnnotation(am, JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.keyAs());
    }

    @Override
    public Class<?> findSerializationContentType(Annotated am, JavaType baseType)
    {
        JsonSerialize ann = _findAnnotation(am, JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.contentAs());
    }
    
    @Override
    public JsonSerialize.Typing findSerializationTyping(Annotated a)
    {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        return (ann == null) ? null : ann.typing();
    }

    @Override
    public Object findSerializationConverter(Annotated a) {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.converter(), Converter.None.class);
    }

    @Override
    public Object findSerializationContentConverter(AnnotatedMember a) {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.contentConverter(), Converter.None.class);
    }
    
    @Override
    public Class<?>[] findViews(Annotated a)
    {
        int PROBE_START_LINE_427 = 427;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2908_line_427 = a;
		JsonView jackson_annotation_introspector_1_expr57_line_427 = _findAnnotation(p_a_2908_line_427, JsonView.class);
		int PROBE_END_LINE_427 = 427;
		JsonView ann = jackson_annotation_introspector_1_expr57_line_427;
        int PROBE_START_LINE_428 = 428;
		com.fasterxml.jackson.annotation.JsonView v_ann_2909_line_428 = ann;
		boolean jackson_annotation_introspector_1_expr62_line_428 = v_ann_2909_line_428 == null;
		boolean jackson_annotation_introspector_1_expr60_line_428 = (jackson_annotation_introspector_1_expr62_line_428);
		Class<?>[] jackson_annotation_introspector_1_expr61_line_428 = null;
		if (!jackson_annotation_introspector_1_expr60_line_428) {
			com.fasterxml.jackson.annotation.JsonView v_ann_2909_line_428_v1 = ann;
			jackson_annotation_introspector_1_expr61_line_428 = v_ann_2909_line_428_v1.value();
		}
		Class<?>[] jackson_annotation_introspector_1_expr59_line_428 = jackson_annotation_introspector_1_expr60_line_428
				? null
				: jackson_annotation_introspector_1_expr61_line_428;
		int PROBE_END_LINE_428 = 428;
		return jackson_annotation_introspector_1_expr59_line_428;
    }

    @Override
    public Boolean isTypeId(AnnotatedMember member) {
        return _hasAnnotation(member, JsonTypeId.class);
    }

    @Override
    public ObjectIdInfo findObjectIdInfo(Annotated ann) {
        int PROBE_START_LINE_438 = 438;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2911_line_438 = ann;
		JsonIdentityInfo jackson_annotation_introspector_1_expr63_line_438 = _findAnnotation(p_ann_2911_line_438,
				JsonIdentityInfo.class);
		int PROBE_END_LINE_438 = 438;
		JsonIdentityInfo info = jackson_annotation_introspector_1_expr63_line_438;
        int PROBE_START_LINE_439 = 441;
		com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_2912_line_439 = info;
		boolean jackson_annotation_introspector_1_expr66_line_439 = v_info_2912_line_439 == null;
		boolean jackson_annotation_introspector_1_expr67_line_439 = false;
		if (!jackson_annotation_introspector_1_expr66_line_439) {
			com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_2912_line_439_v1 = info;
			Class<? extends ObjectIdGenerator<?>> jackson_annotation_introspector_1_expr68_line_439 = v_info_2912_line_439_v1
					.generator();
			jackson_annotation_introspector_1_expr67_line_439 = jackson_annotation_introspector_1_expr68_line_439 == ObjectIdGenerators.None.class;
		}
		boolean jackson_annotation_introspector_1_expr65_line_439 = jackson_annotation_introspector_1_expr66_line_439
				|| jackson_annotation_introspector_1_expr67_line_439;
		int PROBE_END_LINE_439 = 441;
		if (jackson_annotation_introspector_1_expr65_line_439) {
            return null;
        }
        int PROBE_START_LINE_443 = 443;
		com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_2912_line_443 = info;
		String jackson_annotation_introspector_1_expr71_line_443 = v_info_2912_line_443.property();
		int PROBE_END_LINE_443 = 443;
		// In future may need to allow passing namespace?
        PropertyName name = new PropertyName(jackson_annotation_introspector_1_expr71_line_443);
        int PROBE_START_LINE_444 = 444;
		com.fasterxml.jackson.databind.PropertyName v_name_2913_line_444 = name;
		com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_2912_line_444 = info;
		Class<?> jackson_annotation_introspector_1_expr73_line_444 = v_info_2912_line_444.scope();
		com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_2912_line_444_v1 = info;
		Class<? extends ObjectIdGenerator<?>> jackson_annotation_introspector_1_expr74_line_444 = v_info_2912_line_444_v1
				.generator();
		com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_2912_line_444_v2 = info;
		Class<? extends com.fasterxml.jackson.annotation.ObjectIdResolver> jackson_annotation_introspector_1_expr75_line_444 = v_info_2912_line_444_v2
				.resolver();
		int PROBE_END_LINE_444 = 444;
		return new ObjectIdInfo(v_name_2913_line_444, jackson_annotation_introspector_1_expr73_line_444, jackson_annotation_introspector_1_expr74_line_444, jackson_annotation_introspector_1_expr75_line_444);
    }

    @Override
    public ObjectIdInfo findObjectReferenceInfo(Annotated ann, ObjectIdInfo objectIdInfo) {
        int PROBE_START_LINE_449 = 449;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2914_line_449 = ann;
		JsonIdentityReference jackson_annotation_introspector_1_expr76_line_449 = _findAnnotation(p_ann_2914_line_449,
				JsonIdentityReference.class);
		int PROBE_END_LINE_449 = 449;
		JsonIdentityReference ref = jackson_annotation_introspector_1_expr76_line_449;
        int PROBE_START_LINE_450 = 452;
		com.fasterxml.jackson.annotation.JsonIdentityReference v_ref_2916_line_450 = ref;
		boolean jackson_annotation_introspector_1_expr78_line_450 = v_ref_2916_line_450 != null;
		int PROBE_END_LINE_450 = 452;
		if (jackson_annotation_introspector_1_expr78_line_450) {
            objectIdInfo = objectIdInfo.withAlwaysAsId(ref.alwaysAsId());
        }
        int PROBE_START_LINE_453 = 453;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo p_object_id_info_2915_line_453 = objectIdInfo;
		int PROBE_END_LINE_453 = 453;
		return p_object_id_info_2915_line_453;
    }
    
    @Override
    public JsonFormat.Value findFormat(Annotated ann) {
        int PROBE_START_LINE_458 = 458;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2917_line_458 = ann;
		JsonFormat jackson_annotation_introspector_1_expr79_line_458 = _findAnnotation(p_ann_2917_line_458,
				JsonFormat.class);
		int PROBE_END_LINE_458 = 458;
		JsonFormat f = jackson_annotation_introspector_1_expr79_line_458;
        int PROBE_START_LINE_459 = 459;
		com.fasterxml.jackson.annotation.JsonFormat v_f_2918_line_459 = f;
		boolean jackson_annotation_introspector_1_expr84_line_459 = v_f_2918_line_459 == null;
		boolean jackson_annotation_introspector_1_expr82_line_459 = (jackson_annotation_introspector_1_expr84_line_459);
		com.fasterxml.jackson.annotation.JsonFormat v_f_2918_line_459_v1 = null;
		if (!jackson_annotation_introspector_1_expr82_line_459) {
			v_f_2918_line_459_v1 = f;
		}
		com.fasterxml.jackson.annotation.JsonFormat.Value jackson_annotation_introspector_1_expr81_line_459 = jackson_annotation_introspector_1_expr82_line_459
				? null
				: new JsonFormat.Value(v_f_2918_line_459_v1);
		int PROBE_END_LINE_459 = 459;
		return jackson_annotation_introspector_1_expr81_line_459;
    }

    @Override
    public String findPropertyDefaultValue(Annotated ann) {
        int PROBE_START_LINE_464 = 464;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2919_line_464 = ann;
		JsonProperty jackson_annotation_introspector_1_expr85_line_464 = _findAnnotation(p_ann_2919_line_464,
				JsonProperty.class);
		int PROBE_END_LINE_464 = 464;
		JsonProperty prop = jackson_annotation_introspector_1_expr85_line_464;
        int PROBE_START_LINE_465 = 467;
		com.fasterxml.jackson.annotation.JsonProperty v_prop_2920_line_465 = prop;
		boolean jackson_annotation_introspector_1_expr87_line_465 = v_prop_2920_line_465 == null;
		int PROBE_END_LINE_465 = 467;
		if (jackson_annotation_introspector_1_expr87_line_465) {
            return null;
        }
        String str = prop.defaultValue();
        // Since annotations do not allow nulls, need to assume empty means "none"
        return str.isEmpty() ? null : str;
    }

    @Override
    public String findPropertyDescription(Annotated ann) {
        int PROBE_START_LINE_475 = 475;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2921_line_475 = ann;
		JsonPropertyDescription jackson_annotation_introspector_1_expr88_line_475 = _findAnnotation(p_ann_2921_line_475,
				JsonPropertyDescription.class);
		int PROBE_END_LINE_475 = 475;
		JsonPropertyDescription desc = jackson_annotation_introspector_1_expr88_line_475;
        int PROBE_START_LINE_476 = 476;
		com.fasterxml.jackson.annotation.JsonPropertyDescription v_desc_2922_line_476 = desc;
		boolean jackson_annotation_introspector_1_expr93_line_476 = v_desc_2922_line_476 == null;
		boolean jackson_annotation_introspector_1_expr91_line_476 = (jackson_annotation_introspector_1_expr93_line_476);
		String jackson_annotation_introspector_1_expr92_line_476 = null;
		if (!jackson_annotation_introspector_1_expr91_line_476) {
			com.fasterxml.jackson.annotation.JsonPropertyDescription v_desc_2922_line_476_v1 = desc;
			jackson_annotation_introspector_1_expr92_line_476 = v_desc_2922_line_476_v1.value();
		}
		String jackson_annotation_introspector_1_expr90_line_476 = jackson_annotation_introspector_1_expr91_line_476
				? null
				: jackson_annotation_introspector_1_expr92_line_476;
		int PROBE_END_LINE_476 = 476;
		return jackson_annotation_introspector_1_expr90_line_476;
    }

    @Override
    public Integer findPropertyIndex(Annotated ann) {
        int PROBE_START_LINE_481 = 481;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2923_line_481 = ann;
		JsonProperty jackson_annotation_introspector_1_expr94_line_481 = _findAnnotation(p_ann_2923_line_481,
				JsonProperty.class);
		int PROBE_END_LINE_481 = 481;
		JsonProperty prop = jackson_annotation_introspector_1_expr94_line_481;
        int PROBE_START_LINE_482 = 487;
		com.fasterxml.jackson.annotation.JsonProperty v_prop_2924_line_482 = prop;
		boolean jackson_annotation_introspector_1_expr96_line_482 = v_prop_2924_line_482 != null;
		int PROBE_END_LINE_482 = 487;
		if (jackson_annotation_introspector_1_expr96_line_482) {
        	int ix = prop.index();
        	if (ix != JsonProperty.INDEX_UNKNOWN) {
        		return Integer.valueOf(ix);
        	}
        }
        return null;
    }

    @Override
    public String findImplicitPropertyName(AnnotatedMember param) {
        // not known by default (until JDK8) for creators; default 
        //
        return null;
    }
    
    /*
    /**********************************************************
    /* Serialization: class annotations
    /**********************************************************
     */

    @Override
    public String[] findSerializationPropertyOrder(AnnotatedClass ac) {
        int PROBE_START_LINE_506 = 506;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2926_line_506 = ac;
		JsonPropertyOrder jackson_annotation_introspector_1_expr97_line_506 = _findAnnotation(p_ac_2926_line_506,
				JsonPropertyOrder.class);
		int PROBE_END_LINE_506 = 506;
		JsonPropertyOrder order = jackson_annotation_introspector_1_expr97_line_506;
        int PROBE_START_LINE_507 = 507;
		com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_2927_line_507 = order;
		boolean jackson_annotation_introspector_1_expr102_line_507 = v_order_2927_line_507 == null;
		boolean jackson_annotation_introspector_1_expr100_line_507 = (jackson_annotation_introspector_1_expr102_line_507);
		String[] jackson_annotation_introspector_1_expr101_line_507 = null;
		if (!jackson_annotation_introspector_1_expr100_line_507) {
			com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_2927_line_507_v1 = order;
			jackson_annotation_introspector_1_expr101_line_507 = v_order_2927_line_507_v1.value();
		}
		String[] jackson_annotation_introspector_1_expr99_line_507 = jackson_annotation_introspector_1_expr100_line_507
				? null
				: jackson_annotation_introspector_1_expr101_line_507;
		int PROBE_END_LINE_507 = 507;
		return jackson_annotation_introspector_1_expr99_line_507;
    }

    @Override
    public Boolean findSerializationSortAlphabetically(Annotated ann) {
        int PROBE_START_LINE_512 = 512;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2928_line_512 = ann;
		Boolean jackson_annotation_introspector_1_expr103_line_512 = _findSortAlpha(p_ann_2928_line_512);
		int PROBE_END_LINE_512 = 512;
		return jackson_annotation_introspector_1_expr103_line_512;
    }

    @Override
    @Deprecated
    public Boolean findSerializationSortAlphabetically(AnnotatedClass ac) {
        return _findSortAlpha(ac);
    }

    private final Boolean _findSortAlpha(Annotated ann) {
        int PROBE_START_LINE_522 = 522;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2930_line_522 = ann;
		JsonPropertyOrder jackson_annotation_introspector_1_expr104_line_522 = _findAnnotation(p_ann_2930_line_522,
				JsonPropertyOrder.class);
		int PROBE_END_LINE_522 = 522;
		JsonPropertyOrder order = jackson_annotation_introspector_1_expr104_line_522;
        int PROBE_START_LINE_523 = 523;
		com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_2931_line_523 = order;
		boolean jackson_annotation_introspector_1_expr109_line_523 = v_order_2931_line_523 == null;
		boolean jackson_annotation_introspector_1_expr107_line_523 = (jackson_annotation_introspector_1_expr109_line_523);
		boolean jackson_annotation_introspector_1_expr108_line_523 = false;
		if (!jackson_annotation_introspector_1_expr107_line_523) {
			com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_2931_line_523_v1 = order;
			jackson_annotation_introspector_1_expr108_line_523 = v_order_2931_line_523_v1.alphabetic();
		}
		Boolean jackson_annotation_introspector_1_expr106_line_523 = jackson_annotation_introspector_1_expr107_line_523
				? null
				: jackson_annotation_introspector_1_expr108_line_523;
		int PROBE_END_LINE_523 = 523;
		return jackson_annotation_introspector_1_expr106_line_523;
    }

    @Override
    public void findAndAddVirtualProperties(MapperConfig<?> config, AnnotatedClass ac,
            List<BeanPropertyWriter> properties) {
        JsonAppend ann = _findAnnotation(ac, JsonAppend.class);
        if (ann == null) {
            return;
        }
        final boolean prepend = ann.prepend();
        JavaType propType = null;

        // First: any attribute-backed properties?
        JsonAppend.Attr[] attrs = ann.attrs();
        for (int i = 0, len = attrs.length; i < len; ++i) {
            if (propType == null) {
                propType = config.constructType(Object.class);
            }
            BeanPropertyWriter bpw = _constructVirtualProperty(attrs[i],
                    config, ac, propType);
            if (prepend) {
                properties.add(i, bpw);
            } else {
                properties.add(bpw);
            }
        }

        // Then: general-purpose virtual properties?
        JsonAppend.Prop[] props = ann.props();
        for (int i = 0, len = props.length; i < len; ++i) {
            BeanPropertyWriter bpw = _constructVirtualProperty(props[i],
                    config, ac);
            if (prepend) {
                properties.add(i, bpw);
            } else {
                properties.add(bpw);
            }
        }
    }

    protected BeanPropertyWriter _constructVirtualProperty(JsonAppend.Attr attr,
            MapperConfig<?> config, AnnotatedClass ac, JavaType type)
    {
        PropertyMetadata metadata = attr.required() ?
                    PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
        // could add Index, Description in future, if those matter
        String attrName = attr.value();

        // allow explicit renaming; if none, default to attribute name
        PropertyName propName = _propertyName(attr.propName(), attr.propNamespace());
        if (!propName.hasSimpleName()) {
            propName = new PropertyName(attrName);
        }
        // now, then, we need a placeholder for member (no real Field/Method):
        AnnotatedMember member = new VirtualAnnotatedMember(ac, ac.getRawType(),
                attrName, type.getRawClass());
        // and with that and property definition
        SimpleBeanPropertyDefinition propDef = SimpleBeanPropertyDefinition.construct(config,
                member, propName, metadata, attr.include());
        // can construct the property writer
        return AttributePropertyWriter.construct(attrName, propDef,
                ac.getAnnotations(), type);
    }

    protected BeanPropertyWriter _constructVirtualProperty(JsonAppend.Prop prop,
            MapperConfig<?> config, AnnotatedClass ac)
    {
        PropertyMetadata metadata = prop.required() ?
                    PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
        PropertyName propName = _propertyName(prop.name(), prop.namespace());
        JavaType type = config.constructType(prop.type());
        // now, then, we need a placeholder for member (no real Field/Method):
        AnnotatedMember member = new VirtualAnnotatedMember(ac, ac.getRawType(),
                propName.getSimpleName(), type.getRawClass());
        // and with that and property definition
        SimpleBeanPropertyDefinition propDef = SimpleBeanPropertyDefinition.construct(config,
                member, propName, metadata, prop.include());

        Class<?> implClass = prop.value();

        HandlerInstantiator hi = config.getHandlerInstantiator();
        VirtualBeanPropertyWriter bpw = (hi == null) ? null
                : hi.virtualPropertyWriterInstance(config, implClass);
        if (bpw == null) {
            bpw = (VirtualBeanPropertyWriter) ClassUtil.createInstance(implClass,
                    config.canOverrideAccessModifiers());
        }

        // one more thing: give it necessary contextual information
        return bpw.withConfig(config, ac, propDef, type);
    }

    /*
    /**********************************************************
    /* Serialization: property annotations
    /**********************************************************
     */

    @Override
    public PropertyName findNameForSerialization(Annotated a)
    {
        String name = null;

        int PROBE_START_LINE_627 = 627;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2942_line_627 = a;
		JsonGetter jackson_annotation_introspector_1_expr110_line_627 = _findAnnotation(p_a_2942_line_627,
				JsonGetter.class);
		int PROBE_END_LINE_627 = 627;
		JsonGetter jg = jackson_annotation_introspector_1_expr110_line_627;
        int PROBE_START_LINE_628 = 639;
		com.fasterxml.jackson.annotation.JsonGetter v_jg_2944_line_628 = jg;
		boolean jackson_annotation_introspector_1_expr112_line_628 = v_jg_2944_line_628 != null;
		int PROBE_END_LINE_628 = 639;
		if (jackson_annotation_introspector_1_expr112_line_628) {
            name = jg.value();
        } else {
            int PROBE_START_LINE_631 = 631;
			com.fasterxml.jackson.databind.introspect.Annotated p_a_2942_line_631 = a;
			JsonProperty jackson_annotation_introspector_1_expr113_line_631 = _findAnnotation(p_a_2942_line_631,
					JsonProperty.class);
			int PROBE_END_LINE_631 = 631;
			JsonProperty pann = jackson_annotation_introspector_1_expr113_line_631;
            int PROBE_START_LINE_632 = 638;
			com.fasterxml.jackson.annotation.JsonProperty v_pann_2945_line_632 = pann;
			boolean jackson_annotation_introspector_1_expr115_line_632 = v_pann_2945_line_632 != null;
			int PROBE_END_LINE_632 = 638;
			if (jackson_annotation_introspector_1_expr115_line_632) {
                name = pann.value();
            } else {
				int PROBE_START_LINE_634 = 638;
				com.fasterxml.jackson.databind.introspect.Annotated p_a_2942_line_634 = a;
				boolean jackson_annotation_introspector_1_expr117_line_634 = _hasAnnotation(p_a_2942_line_634,
						JsonSerialize.class);
				boolean jackson_annotation_introspector_1_expr119_line_634 = false;
				if (!jackson_annotation_introspector_1_expr117_line_634) {
					com.fasterxml.jackson.databind.introspect.Annotated p_a_2942_line_634_v1 = a;
					jackson_annotation_introspector_1_expr119_line_634 = _hasAnnotation(p_a_2942_line_634_v1,
							JsonView.class);
				}
				boolean jackson_annotation_introspector_1_expr116_line_634 = jackson_annotation_introspector_1_expr117_line_634
						|| jackson_annotation_introspector_1_expr119_line_634;
				int PROBE_END_LINE_634 = 638;
				if (jackson_annotation_introspector_1_expr116_line_634) {
					name = "";
				} else {
					return null;
				}
			}
        }
        if (name.length() == 0) { // empty String means 'default'
            return PropertyName.USE_DEFAULT;
        }
        return new PropertyName(name);
    }

    @Override
    public boolean hasAsValueAnnotation(AnnotatedMethod am) {
        int PROBE_START_LINE_648 = 648;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_2946_line_648 = am;
		JsonValue jackson_annotation_introspector_1_expr121_line_648 = _findAnnotation(p_am_2946_line_648,
				JsonValue.class);
		int PROBE_END_LINE_648 = 648;
		JsonValue ann = jackson_annotation_introspector_1_expr121_line_648;
        int PROBE_START_LINE_650 = 650;
		com.fasterxml.jackson.annotation.JsonValue v_ann_2947_line_650 = ann;
		boolean jackson_annotation_introspector_1_expr125_line_650 = v_ann_2947_line_650 != null;
		boolean jackson_annotation_introspector_1_expr126_line_650 = true;
		if (jackson_annotation_introspector_1_expr125_line_650) {
			com.fasterxml.jackson.annotation.JsonValue v_ann_2947_line_650_v1 = ann;
			jackson_annotation_introspector_1_expr126_line_650 = v_ann_2947_line_650_v1.value();
		}
		boolean jackson_annotation_introspector_1_expr124_line_650 = jackson_annotation_introspector_1_expr125_line_650
				&& jackson_annotation_introspector_1_expr126_line_650;
		boolean jackson_annotation_introspector_1_expr123_line_650 = (jackson_annotation_introspector_1_expr124_line_650);
		int PROBE_END_LINE_650 = 650;
		// value of 'false' means disabled...
        return jackson_annotation_introspector_1_expr123_line_650;
    }

    /*
    /**********************************************************
    /* Deserialization: general annotations
    /**********************************************************
     */

    @Override
    public Class<? extends JsonDeserializer<?>> findDeserializer(Annotated a)
    {
        int PROBE_START_LINE_662 = 662;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2948_line_662 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr127_line_662 = _findAnnotation(p_a_2948_line_662,
				JsonDeserialize.class);
		int PROBE_END_LINE_662 = 662;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr127_line_662;
        int PROBE_START_LINE_663 = 668;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_2949_line_663 = ann;
		boolean jackson_annotation_introspector_1_expr129_line_663 = v_ann_2949_line_663 != null;
		int PROBE_END_LINE_663 = 668;
		if (jackson_annotation_introspector_1_expr129_line_663) {
            Class<? extends JsonDeserializer<?>> deserClass = ann.using();
            if (deserClass != JsonDeserializer.None.class) {
                return deserClass;
            }
        }
        return null;
    }

    @Override
    public Class<? extends KeyDeserializer> findKeyDeserializer(Annotated a)
    {
        JsonDeserialize ann = _findAnnotation(a, JsonDeserialize.class);
        if (ann != null) {
            Class<? extends KeyDeserializer> deserClass = ann.keyUsing();
            if (deserClass != KeyDeserializer.None.class) {
                return deserClass;
            }
        }
        return null;
    }

    @Override
    public Class<? extends JsonDeserializer<?>> findContentDeserializer(Annotated a)
    {
        JsonDeserialize ann = _findAnnotation(a, JsonDeserialize.class);
        if (ann != null) {
            Class<? extends JsonDeserializer<?>> deserClass = ann.contentUsing();
            if (deserClass != JsonDeserializer.None.class) {
                return deserClass;
            }
        }
        return null;
    }

    @Override
    public Class<?> findDeserializationType(Annotated am, JavaType baseType) {
        int PROBE_START_LINE_700 = 700;
		com.fasterxml.jackson.databind.introspect.Annotated p_am_2952_line_700 = am;
		JsonDeserialize jackson_annotation_introspector_1_expr130_line_700 = _findAnnotation(p_am_2952_line_700,
				JsonDeserialize.class);
		int PROBE_END_LINE_700 = 700;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr130_line_700;
        int PROBE_START_LINE_701 = 701;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_2954_line_701 = ann;
		boolean jackson_annotation_introspector_1_expr135_line_701 = v_ann_2954_line_701 == null;
		boolean jackson_annotation_introspector_1_expr133_line_701 = (jackson_annotation_introspector_1_expr135_line_701);
		Class<?> jackson_annotation_introspector_1_expr134_line_701 = null;
		if (!jackson_annotation_introspector_1_expr133_line_701) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_2954_line_701_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr136_line_701 = v_ann_2954_line_701_v1.as();
			jackson_annotation_introspector_1_expr134_line_701 = _classIfExplicit(
					jackson_annotation_introspector_1_expr136_line_701);
		}
		Class<?> jackson_annotation_introspector_1_expr132_line_701 = jackson_annotation_introspector_1_expr133_line_701
				? null
				: jackson_annotation_introspector_1_expr134_line_701;
		int PROBE_END_LINE_701 = 701;
		return jackson_annotation_introspector_1_expr132_line_701;
    }

    @Override
    public Class<?> findDeserializationKeyType(Annotated am, JavaType baseKeyType) {
        JsonDeserialize ann = _findAnnotation(am, JsonDeserialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.keyAs());
    }

    @Override
    public Class<?> findDeserializationContentType(Annotated am, JavaType baseContentType)
    {
        JsonDeserialize ann = _findAnnotation(am, JsonDeserialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.contentAs());
    }

    @Override
    public Object findDeserializationConverter(Annotated a)
    {
        int PROBE_START_LINE_720 = 720;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2959_line_720 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr137_line_720 = _findAnnotation(p_a_2959_line_720,
				JsonDeserialize.class);
		int PROBE_END_LINE_720 = 720;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr137_line_720;
        int PROBE_START_LINE_721 = 721;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_2960_line_721 = ann;
		boolean jackson_annotation_introspector_1_expr142_line_721 = v_ann_2960_line_721 == null;
		boolean jackson_annotation_introspector_1_expr140_line_721 = (jackson_annotation_introspector_1_expr142_line_721);
		Class<?> jackson_annotation_introspector_1_expr141_line_721 = null;
		if (!jackson_annotation_introspector_1_expr140_line_721) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_2960_line_721_v1 = ann;
			Class<? extends Converter<?, ?>> jackson_annotation_introspector_1_expr143_line_721 = v_ann_2960_line_721_v1
					.converter();
			jackson_annotation_introspector_1_expr141_line_721 = _classIfExplicit(
					jackson_annotation_introspector_1_expr143_line_721, Converter.None.class);
		}
		Object jackson_annotation_introspector_1_expr139_line_721 = jackson_annotation_introspector_1_expr140_line_721
				? null
				: jackson_annotation_introspector_1_expr141_line_721;
		int PROBE_END_LINE_721 = 721;
		return jackson_annotation_introspector_1_expr139_line_721;
    }

    @Override
    public Object findDeserializationContentConverter(AnnotatedMember a)
    {
        JsonDeserialize ann = _findAnnotation(a, JsonDeserialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.contentConverter(), Converter.None.class);
    }

    /*
    /**********************************************************
    /* Deserialization: Class annotations
    /**********************************************************
     */
    
    @Override
    public Object findValueInstantiator(AnnotatedClass ac)
    {
        int PROBE_START_LINE_740 = 740;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2962_line_740 = ac;
		JsonValueInstantiator jackson_annotation_introspector_1_expr145_line_740 = _findAnnotation(p_ac_2962_line_740,
				JsonValueInstantiator.class);
		int PROBE_END_LINE_740 = 740;
		JsonValueInstantiator ann = jackson_annotation_introspector_1_expr145_line_740;
        int PROBE_START_LINE_742 = 742;
		com.fasterxml.jackson.databind.annotation.JsonValueInstantiator v_ann_2963_line_742 = ann;
		boolean jackson_annotation_introspector_1_expr150_line_742 = v_ann_2963_line_742 == null;
		boolean jackson_annotation_introspector_1_expr148_line_742 = (jackson_annotation_introspector_1_expr150_line_742);
		Class<? extends com.fasterxml.jackson.databind.deser.ValueInstantiator> jackson_annotation_introspector_1_expr149_line_742 = null;
		if (!jackson_annotation_introspector_1_expr148_line_742) {
			com.fasterxml.jackson.databind.annotation.JsonValueInstantiator v_ann_2963_line_742_v1 = ann;
			jackson_annotation_introspector_1_expr149_line_742 = v_ann_2963_line_742_v1.value();
		}
		Object jackson_annotation_introspector_1_expr147_line_742 = jackson_annotation_introspector_1_expr148_line_742
				? null
				: jackson_annotation_introspector_1_expr149_line_742;
		int PROBE_END_LINE_742 = 742;
		// no 'null' marker yet, so:
        return jackson_annotation_introspector_1_expr147_line_742;
    }

    @Override
    public Class<?> findPOJOBuilder(AnnotatedClass ac)
    {
        int PROBE_START_LINE_748 = 748;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_2964_line_748 = ac;
		JsonDeserialize jackson_annotation_introspector_1_expr151_line_748 = _findAnnotation(p_ac_2964_line_748,
				JsonDeserialize.class);
		int PROBE_END_LINE_748 = 748;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr151_line_748;
        int PROBE_START_LINE_749 = 749;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_2965_line_749 = ann;
		boolean jackson_annotation_introspector_1_expr156_line_749 = v_ann_2965_line_749 == null;
		boolean jackson_annotation_introspector_1_expr154_line_749 = (jackson_annotation_introspector_1_expr156_line_749);
		Class<?> jackson_annotation_introspector_1_expr155_line_749 = null;
		if (!jackson_annotation_introspector_1_expr154_line_749) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_2965_line_749_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr157_line_749 = v_ann_2965_line_749_v1.builder();
			jackson_annotation_introspector_1_expr155_line_749 = _classIfExplicit(
					jackson_annotation_introspector_1_expr157_line_749);
		}
		Class<?> jackson_annotation_introspector_1_expr153_line_749 = jackson_annotation_introspector_1_expr154_line_749
				? null
				: jackson_annotation_introspector_1_expr155_line_749;
		int PROBE_END_LINE_749 = 749;
		return jackson_annotation_introspector_1_expr153_line_749;
    }

    @Override
    public JsonPOJOBuilder.Value findPOJOBuilderConfig(AnnotatedClass ac)
    {
        JsonPOJOBuilder ann = _findAnnotation(ac, JsonPOJOBuilder.class);
        return (ann == null) ? null : new JsonPOJOBuilder.Value(ann);
    }
    
    /*
    /**********************************************************
    /* Deserialization: property annotations
    /**********************************************************
     */

    @Override
    public PropertyName findNameForDeserialization(Annotated a)
    {
        String name;

        int PROBE_START_LINE_772 = 772;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2967_line_772 = a;
		JsonSetter jackson_annotation_introspector_1_expr158_line_772 = _findAnnotation(p_a_2967_line_772,
				JsonSetter.class);
		int PROBE_END_LINE_772 = 772;
		// @JsonSetter has precedence over @JsonProperty, being more specific
        // @JsonDeserialize implies that there is a property, but no name
        JsonSetter js = jackson_annotation_introspector_1_expr158_line_772;
        int PROBE_START_LINE_773 = 792;
		com.fasterxml.jackson.annotation.JsonSetter v_js_2968_line_773 = js;
		boolean jackson_annotation_introspector_1_expr160_line_773 = v_js_2968_line_773 != null;
		int PROBE_END_LINE_773 = 792;
		if (jackson_annotation_introspector_1_expr160_line_773) {
            name = js.value();
        } else {
            int PROBE_START_LINE_776 = 776;
			com.fasterxml.jackson.databind.introspect.Annotated p_a_2967_line_776 = a;
			JsonProperty jackson_annotation_introspector_1_expr161_line_776 = _findAnnotation(p_a_2967_line_776,
					JsonProperty.class);
			int PROBE_END_LINE_776 = 776;
			JsonProperty pann = jackson_annotation_introspector_1_expr161_line_776;
            int PROBE_START_LINE_777 = 791;
			com.fasterxml.jackson.annotation.JsonProperty v_pann_2969_line_777 = pann;
			boolean jackson_annotation_introspector_1_expr163_line_777 = v_pann_2969_line_777 != null;
			int PROBE_END_LINE_777 = 791;
			if (jackson_annotation_introspector_1_expr163_line_777) {
                name = pann.value();
                /* 22-Apr-2014, tatu: Should figure out a better way to do this, but
                 *   it's actually bit tricky to do it more efficiently (meta-annotations
                 *   add more lookups; AnnotationMap costs etc)
                 */
            } else {
				int PROBE_START_LINE_783 = 791;
				com.fasterxml.jackson.databind.introspect.Annotated p_a_2967_line_783 = a;
				boolean jackson_annotation_introspector_1_expr165_line_783 = _hasAnnotation(p_a_2967_line_783,
						JsonDeserialize.class);
				boolean jackson_annotation_introspector_1_expr164_line_783 = jackson_annotation_introspector_1_expr165_line_783
						|| _hasAnnotation(a, JsonView.class) || _hasAnnotation(a, JsonUnwrapped.class)
						|| _hasAnnotation(a, JsonBackReference.class) || _hasAnnotation(a, JsonManagedReference.class);
				int PROBE_END_LINE_783 = 791;
				if (jackson_annotation_introspector_1_expr164_line_783) {
					name = "";
				} else {
					return null;
				}
			}
        }
        if (name.length() == 0) { // empty String means 'default'
            return PropertyName.USE_DEFAULT;
        }
        return new PropertyName(name);
    }
    
    @Override
    public boolean hasAnySetterAnnotation(AnnotatedMethod am)
    {
        /* No dedicated disabling; regular @JsonIgnore used
         * if needs to be ignored (and if so, is handled prior
         * to this method getting called)
         */
        return _hasAnnotation(am, JsonAnySetter.class);
    }

    @Override
    public boolean hasAnyGetterAnnotation(AnnotatedMethod am)
    {
        int PROBE_START_LINE_815 = 815;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_2971_line_815 = am;
		boolean jackson_annotation_introspector_1_expr167_line_815 = _hasAnnotation(p_am_2971_line_815,
				JsonAnyGetter.class);
		int PROBE_END_LINE_815 = 815;
		/* No dedicated disabling; regular @JsonIgnore used
         * if needs to be ignored (handled separately
         */
        return jackson_annotation_introspector_1_expr167_line_815;
    }

    @Override
    public boolean hasCreatorAnnotation(Annotated a)
    {
        int PROBE_START_LINE_825 = 825;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2972_line_825 = a;
		JsonCreator jackson_annotation_introspector_1_expr169_line_825 = _findAnnotation(p_a_2972_line_825,
				JsonCreator.class);
		int PROBE_END_LINE_825 = 825;
		/* No dedicated disabling; regular @JsonIgnore used
         * if needs to be ignored (and if so, is handled prior
         * to this method getting called)
         */
         JsonCreator ann = jackson_annotation_introspector_1_expr169_line_825;
         int PROBE_START_LINE_826 = 826;
		com.fasterxml.jackson.annotation.JsonCreator v_ann_2973_line_826 = ann;
		boolean jackson_annotation_introspector_1_expr173_line_826 = v_ann_2973_line_826 != null;
		boolean jackson_annotation_introspector_1_expr174_line_826 = true;
		if (jackson_annotation_introspector_1_expr173_line_826) {
			com.fasterxml.jackson.annotation.JsonCreator v_ann_2973_line_826_v1 = ann;
			com.fasterxml.jackson.annotation.JsonCreator.Mode jackson_annotation_introspector_1_expr175_line_826 = v_ann_2973_line_826_v1
					.mode();
			com.fasterxml.jackson.annotation.JsonCreator.Mode q_disabled_102_line_826 = JsonCreator.Mode.DISABLED;
			jackson_annotation_introspector_1_expr174_line_826 = jackson_annotation_introspector_1_expr175_line_826 != q_disabled_102_line_826;
		}
		boolean jackson_annotation_introspector_1_expr172_line_826 = jackson_annotation_introspector_1_expr173_line_826
				&& jackson_annotation_introspector_1_expr174_line_826;
		boolean jackson_annotation_introspector_1_expr171_line_826 = (jackson_annotation_introspector_1_expr172_line_826);
		int PROBE_END_LINE_826 = 826;
		return jackson_annotation_introspector_1_expr171_line_826;
    }

    @Override
    public JsonCreator.Mode findCreatorBinding(Annotated a) {
        int PROBE_START_LINE_831 = 831;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2974_line_831 = a;
		JsonCreator jackson_annotation_introspector_1_expr176_line_831 = _findAnnotation(p_a_2974_line_831,
				JsonCreator.class);
		int PROBE_END_LINE_831 = 831;
		JsonCreator ann = jackson_annotation_introspector_1_expr176_line_831;
        int PROBE_START_LINE_832 = 832;
		com.fasterxml.jackson.annotation.JsonCreator v_ann_2975_line_832 = ann;
		boolean jackson_annotation_introspector_1_expr181_line_832 = v_ann_2975_line_832 == null;
		boolean jackson_annotation_introspector_1_expr179_line_832 = (jackson_annotation_introspector_1_expr181_line_832);
		com.fasterxml.jackson.annotation.JsonCreator.Mode jackson_annotation_introspector_1_expr180_line_832 = null;
		if (!jackson_annotation_introspector_1_expr179_line_832) {
			com.fasterxml.jackson.annotation.JsonCreator v_ann_2975_line_832_v1 = ann;
			jackson_annotation_introspector_1_expr180_line_832 = v_ann_2975_line_832_v1.mode();
		}
		com.fasterxml.jackson.annotation.JsonCreator.Mode jackson_annotation_introspector_1_expr178_line_832 = jackson_annotation_introspector_1_expr179_line_832
				? null
				: jackson_annotation_introspector_1_expr180_line_832;
		int PROBE_END_LINE_832 = 832;
		return jackson_annotation_introspector_1_expr178_line_832;
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    protected boolean _isIgnorable(Annotated a)
    {
        int PROBE_START_LINE_843 = 843;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_2976_line_843 = a;
		JsonIgnore jackson_annotation_introspector_1_expr182_line_843 = _findAnnotation(p_a_2976_line_843,
				JsonIgnore.class);
		int PROBE_END_LINE_843 = 843;
		JsonIgnore ann = jackson_annotation_introspector_1_expr182_line_843;
        int PROBE_START_LINE_844 = 844;
		com.fasterxml.jackson.annotation.JsonIgnore v_ann_2977_line_844 = ann;
		boolean jackson_annotation_introspector_1_expr186_line_844 = v_ann_2977_line_844 != null;
		boolean jackson_annotation_introspector_1_expr187_line_844 = true;
		if (jackson_annotation_introspector_1_expr186_line_844) {
			com.fasterxml.jackson.annotation.JsonIgnore v_ann_2977_line_844_v1 = ann;
			jackson_annotation_introspector_1_expr187_line_844 = v_ann_2977_line_844_v1.value();
		}
		boolean jackson_annotation_introspector_1_expr185_line_844 = jackson_annotation_introspector_1_expr186_line_844
				&& jackson_annotation_introspector_1_expr187_line_844;
		boolean jackson_annotation_introspector_1_expr184_line_844 = (jackson_annotation_introspector_1_expr185_line_844);
		int PROBE_END_LINE_844 = 844;
		return jackson_annotation_introspector_1_expr184_line_844;
    }

    protected Class<?> _classIfExplicit(Class<?> cls) {
        if (cls == null || ClassUtil.isBogusClass(cls)) {
            return null;
        }
        return cls;
    }

    protected Class<?> _classIfExplicit(Class<?> cls, Class<?> implicit) {
        cls = _classIfExplicit(cls);
        return (cls == null || cls == implicit) ? null : cls;
    }

    protected PropertyName _propertyName(String localName, String namespace) {
        if (localName.isEmpty()) {
            return PropertyName.USE_DEFAULT;
        }
        if (namespace == null || namespace.isEmpty()) {
            return new PropertyName(localName);
        }
        return new PropertyName(localName, namespace);
    }

    /**
     * Helper method called to construct and initialize instance of {@link TypeResolverBuilder}
     * if given annotated element indicates one is needed.
     */
    @SuppressWarnings("deprecation")
    protected TypeResolverBuilder<?> _findTypeResolver(MapperConfig<?> config,
            Annotated ann, JavaType baseType)
    {
        // First: maybe we have explicit type resolver?
        TypeResolverBuilder<?> b;
        int PROBE_START_LINE_879 = 879;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2984_line_879 = ann;
		JsonTypeInfo jackson_annotation_introspector_1_expr188_line_879 = _findAnnotation(p_ann_2984_line_879,
				JsonTypeInfo.class);
		int PROBE_END_LINE_879 = 879;
		JsonTypeInfo info = jackson_annotation_introspector_1_expr188_line_879;
        int PROBE_START_LINE_880 = 880;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_2984_line_880 = ann;
		JsonTypeResolver jackson_annotation_introspector_1_expr190_line_880 = _findAnnotation(p_ann_2984_line_880,
				JsonTypeResolver.class);
		int PROBE_END_LINE_880 = 880;
		JsonTypeResolver resAnn = jackson_annotation_introspector_1_expr190_line_880;
        
        int PROBE_START_LINE_882 = 900;
		com.fasterxml.jackson.databind.annotation.JsonTypeResolver v_res_ann_2987_line_882 = resAnn;
		boolean jackson_annotation_introspector_1_expr192_line_882 = v_res_ann_2987_line_882 != null;
		int PROBE_END_LINE_882 = 900;
		if (jackson_annotation_introspector_1_expr192_line_882) {
            if (info == null) {
                return null;
            }
            /* let's not try to force access override (would need to pass
             * settings through if we did, since that's not doable on some
             * platforms)
             */
            b = config.typeResolverBuilderInstance(ann, resAnn.value());
        } else { // if not, use standard one, if indicated by annotations
            int PROBE_START_LINE_892 = 894;
			com.fasterxml.jackson.annotation.JsonTypeInfo v_info_2986_line_892 = info;
			boolean jackson_annotation_introspector_1_expr193_line_892 = v_info_2986_line_892 == null;
			int PROBE_END_LINE_892 = 894;
			if (jackson_annotation_introspector_1_expr193_line_892) {
                return null;
            }
            // bit special; must return 'marker' to block use of default typing:
            if (info.use() == JsonTypeInfo.Id.NONE) {
                return _constructNoTypeResolverBuilder();
            }
            b = _constructStdTypeResolverBuilder();
        }
        // Does it define a custom type id resolver?
        JsonTypeIdResolver idResInfo = _findAnnotation(ann, JsonTypeIdResolver.class);
        TypeIdResolver idRes = (idResInfo == null) ? null
                : config.typeIdResolverInstance(ann, idResInfo.value());
        if (idRes != null) { // [JACKSON-359]
            idRes.init(baseType);
        }
        b = b.init(info.use(), idRes);
        /* 13-Aug-2011, tatu: One complication wrt [JACKSON-453]; external id
         *   only works for properties; so if declared for a Class, we will need
         *   to map it to "PROPERTY" instead of "EXTERNAL_PROPERTY"
         */
        JsonTypeInfo.As inclusion = info.include();
        if (inclusion == JsonTypeInfo.As.EXTERNAL_PROPERTY && (ann instanceof AnnotatedClass)) {
            inclusion = JsonTypeInfo.As.PROPERTY;
        }
        b = b.inclusion(inclusion);
        b = b.typeProperty(info.property());
        Class<?> defaultImpl = info.defaultImpl();

        // 08-Dec-2014, tatu: To deprecated `JsonTypeInfo.None` we need to use other placeholder(s);
        //   and since `java.util.Void` has other purpose (to indicate "deser as null"), we'll instead
        //   use `JsonTypeInfo.class` itself. But any annotation type will actually do, as they have no
        //   valid use (can not instantiate as default)
        if (defaultImpl != JsonTypeInfo.None.class && !defaultImpl.isAnnotation()) {
            b = b.defaultImpl(defaultImpl);
        }
        b = b.typeIdVisibility(info.visible());
        return b;
    }

    /**
     * Helper method for constructing standard {@link TypeResolverBuilder}
     * implementation.
     */
    protected StdTypeResolverBuilder _constructStdTypeResolverBuilder() {
        return new StdTypeResolverBuilder();
    }

    /**
     * Helper method for dealing with "no type info" marker; can't be null
     * (as it'd be replaced by default typing)
     */
    protected StdTypeResolverBuilder _constructNoTypeResolverBuilder() {
        return StdTypeResolverBuilder.noTypeInfoBuilder();
    }
}
