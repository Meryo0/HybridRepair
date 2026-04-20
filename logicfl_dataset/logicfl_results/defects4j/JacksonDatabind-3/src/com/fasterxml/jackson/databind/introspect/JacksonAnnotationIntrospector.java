package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.*;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.annotation.JsonTypeResolver;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

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
    public boolean isAnnotationBundle(Annotation ann)
    {
        return ann.annotationType().getAnnotation(JacksonAnnotationsInside.class) != null;
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
        JsonRootName ann = ac.getAnnotation(JsonRootName.class);
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
        JsonIgnoreProperties ignore = ac.getAnnotation(JsonIgnoreProperties.class);
        return (ignore == null) ? null : ignore.value();
    }

    @Override
    public Boolean findIgnoreUnknownProperties(AnnotatedClass ac) {
        JsonIgnoreProperties ignore = ac.getAnnotation(JsonIgnoreProperties.class);
        return (ignore == null) ? null : ignore.ignoreUnknown();
    }

    @Override
    public Boolean isIgnorableType(AnnotatedClass ac) {
        JsonIgnoreType ignore = ac.getAnnotation(JsonIgnoreType.class);
        return (ignore == null) ? null : ignore.value();
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
        JsonFilter ann = a.getAnnotation(JsonFilter.class);
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
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_1730_line_131 = ac;
		JsonNaming jackson_annotation_introspector_1_expr1_line_131 = p_ac_1730_line_131
				.getAnnotation(JsonNaming.class);
		int PROBE_END_LINE_131 = 131;
		JsonNaming ann = jackson_annotation_introspector_1_expr1_line_131;
        int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.annotation.JsonNaming v_ann_1731_line_132 = ann;
		boolean jackson_annotation_introspector_1_expr6_line_132 = v_ann_1731_line_132 == null;
		boolean jackson_annotation_introspector_1_expr4_line_132 = (jackson_annotation_introspector_1_expr6_line_132);
		Class<? extends com.fasterxml.jackson.databind.PropertyNamingStrategy> jackson_annotation_introspector_1_expr5_line_132 = null;
		if (!jackson_annotation_introspector_1_expr4_line_132) {
			com.fasterxml.jackson.databind.annotation.JsonNaming v_ann_1731_line_132_v1 = ann;
			jackson_annotation_introspector_1_expr5_line_132 = v_ann_1731_line_132_v1.value();
		}
		Object jackson_annotation_introspector_1_expr3_line_132 = jackson_annotation_introspector_1_expr4_line_132
				? null
				: jackson_annotation_introspector_1_expr5_line_132;
		int PROBE_END_LINE_132 = 132;
		return jackson_annotation_introspector_1_expr3_line_132;
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
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_1732_line_145 = ac;
		JsonAutoDetect jackson_annotation_introspector_1_expr7_line_145 = p_ac_1732_line_145
				.getAnnotation(JsonAutoDetect.class);
		int PROBE_END_LINE_145 = 145;
		JsonAutoDetect ann = jackson_annotation_introspector_1_expr7_line_145;
        int PROBE_START_LINE_146 = 146;
		com.fasterxml.jackson.annotation.JsonAutoDetect v_ann_1734_line_146 = ann;
		boolean jackson_annotation_introspector_1_expr12_line_146 = v_ann_1734_line_146 == null;
		boolean jackson_annotation_introspector_1_expr10_line_146 = (jackson_annotation_introspector_1_expr12_line_146);
		VisibilityChecker<?> p_checker_1733_line_146 = null;
		VisibilityChecker<?> jackson_annotation_introspector_1_expr11_line_146 = null;
		if (jackson_annotation_introspector_1_expr10_line_146) {
			p_checker_1733_line_146 = checker;
		} else {
			VisibilityChecker<?> p_checker_1733_line_146_v1 = checker;
			com.fasterxml.jackson.annotation.JsonAutoDetect v_ann_1734_line_146_v1 = ann;
			jackson_annotation_introspector_1_expr11_line_146 = p_checker_1733_line_146_v1.with(v_ann_1734_line_146_v1);
		}
		VisibilityChecker<?> jackson_annotation_introspector_1_expr9_line_146 = jackson_annotation_introspector_1_expr10_line_146
				? p_checker_1733_line_146
				: jackson_annotation_introspector_1_expr11_line_146;
		int PROBE_END_LINE_146 = 146;
		return jackson_annotation_introspector_1_expr9_line_146;
    }

    /*
    /**********************************************************
    /* General member (field, method/constructor) annotations
    /**********************************************************
     */

    @Override        
    public ReferenceProperty findReferenceType(AnnotatedMember member)
    {
        JsonManagedReference ref1 = member.getAnnotation(JsonManagedReference.class);
        if (ref1 != null) {
            return AnnotationIntrospector.ReferenceProperty.managed(ref1.value());
        }
        JsonBackReference ref2 = member.getAnnotation(JsonBackReference.class);
        if (ref2 != null) {
            return AnnotationIntrospector.ReferenceProperty.back(ref2.value());
        }
        return null;
    }

    @Override
    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember member)
    {
        JsonUnwrapped ann = member.getAnnotation(JsonUnwrapped.class);
        // if not enabled, just means annotation is not enabled; not necessarily
        // that unwrapping should not be done (relevant when using chained introspectors)
        if (ann == null || !ann.enabled()) {
            return null;
        }
        String prefix = ann.prefix();
        String suffix = ann.suffix();
        return NameTransformer.simpleTransformer(prefix, suffix);
    }

    @Override
    public boolean hasIgnoreMarker(AnnotatedMember m) {
        return _isIgnorable(m);
    }

    @Override
    public Boolean hasRequiredMarker(AnnotatedMember m)
    {
        JsonProperty ann = m.getAnnotation(JsonProperty.class);
        if (ann != null) {
            return ann.required();
        }
        return null;
    }
    
    @Override
    public Object findInjectableValueId(AnnotatedMember m)
    {
        JacksonInject ann = m.getAnnotation(JacksonInject.class);
        if (ann == null) {
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
		MapperConfig<?> p_config_1740_line_233 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_1741_line_233 = ac;
		com.fasterxml.jackson.databind.JavaType p_base_type_1742_line_233 = baseType;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr13_line_233 = _findTypeResolver(
				p_config_1740_line_233, p_ac_1741_line_233, p_base_type_1742_line_233);
		int PROBE_END_LINE_233 = 233;
		return jackson_annotation_introspector_1_expr13_line_233;
    }

    @Override
    public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> config,
            AnnotatedMember am, JavaType baseType)
    {
        /* As per definition of @JsonTypeInfo, should only apply to contents of container
         * (collection, map) types, not container types themselves:
         */
        if (baseType.isContainerType()) return null;
        // No per-member type overrides (yet)
        return _findTypeResolver(config, am, baseType);
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
        JsonSubTypes t = a.getAnnotation(JsonSubTypes.class);
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
        JsonTypeName tn = ac.getAnnotation(JsonTypeName.class);
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
        JsonSerialize ann = a.getAnnotation(JsonSerialize.class);
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
        JsonRawValue annRaw =  a.getAnnotation(JsonRawValue.class);
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
        JsonSerialize ann = a.getAnnotation(JsonSerialize.class);
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
        JsonSerialize ann = a.getAnnotation(JsonSerialize.class);
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
        JsonSerialize ann = a.getAnnotation(JsonSerialize.class);
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
        JsonInclude inc = a.getAnnotation(JsonInclude.class);
        if (inc != null) {
            return inc.value();
        }
        JsonSerialize ann = a.getAnnotation(JsonSerialize.class);
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
    public Class<?> findSerializationType(Annotated am)
    {
        JsonSerialize ann = am.getAnnotation(JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.as());
    }
    
    @Override
    public Class<?> findSerializationKeyType(Annotated am, JavaType baseType)
    {
        JsonSerialize ann = am.getAnnotation(JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.keyAs());
    }

    @Override
    public Class<?> findSerializationContentType(Annotated am, JavaType baseType)
    {
        JsonSerialize ann = am.getAnnotation(JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.contentAs());
    }
    
    @Override
    public JsonSerialize.Typing findSerializationTyping(Annotated a)
    {
        JsonSerialize ann = a.getAnnotation(JsonSerialize.class);
        return (ann == null) ? null : ann.typing();
    }

    @Override
    public Object findSerializationConverter(Annotated a) {
        JsonSerialize ann = a.getAnnotation(JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.converter(), Converter.None.class);
    }

    @Override
    public Object findSerializationContentConverter(AnnotatedMember a) {
        JsonSerialize ann = a.getAnnotation(JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.contentConverter(), Converter.None.class);
    }
    
    @Override
    public Class<?>[] findViews(Annotated a)
    {
        JsonView ann = a.getAnnotation(JsonView.class);
        return (ann == null) ? null : ann.value();
    }

    @Override
    public Boolean isTypeId(AnnotatedMember member) {
        return member.hasAnnotation(JsonTypeId.class);
    }

    @Override
    public ObjectIdInfo findObjectIdInfo(Annotated ann) {
        int PROBE_START_LINE_431 = 431;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_1767_line_431 = ann;
		JsonIdentityInfo jackson_annotation_introspector_1_expr14_line_431 = p_ann_1767_line_431
				.getAnnotation(JsonIdentityInfo.class);
		int PROBE_END_LINE_431 = 431;
		JsonIdentityInfo info = jackson_annotation_introspector_1_expr14_line_431;
        int PROBE_START_LINE_432 = 434;
		com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_1768_line_432 = info;
		boolean jackson_annotation_introspector_1_expr17_line_432 = v_info_1768_line_432 == null;
		boolean jackson_annotation_introspector_1_expr18_line_432 = false;
		if (!jackson_annotation_introspector_1_expr17_line_432) {
			com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_1768_line_432_v1 = info;
			Class<? extends ObjectIdGenerator<?>> jackson_annotation_introspector_1_expr19_line_432 = v_info_1768_line_432_v1
					.generator();
			jackson_annotation_introspector_1_expr18_line_432 = jackson_annotation_introspector_1_expr19_line_432 == ObjectIdGenerators.None.class;
		}
		boolean jackson_annotation_introspector_1_expr16_line_432 = jackson_annotation_introspector_1_expr17_line_432
				|| jackson_annotation_introspector_1_expr18_line_432;
		int PROBE_END_LINE_432 = 434;
		if (jackson_annotation_introspector_1_expr16_line_432) {
            return null;
        }
        // In future may need to allow passing namespace?
        PropertyName name = new PropertyName(info.property());
        return new ObjectIdInfo(name, info.scope(), info.generator(), info.resolver());
    }

    @Override
    public ObjectIdInfo findObjectReferenceInfo(Annotated ann, ObjectIdInfo objectIdInfo) {
        JsonIdentityReference ref = ann.getAnnotation(JsonIdentityReference.class);
        if (ref != null) {
            objectIdInfo = objectIdInfo.withAlwaysAsId(ref.alwaysAsId());
        }
        return objectIdInfo;
    }
    
    @Override
    public JsonFormat.Value findFormat(Annotated annotated) {
        JsonFormat ann = annotated.getAnnotation(JsonFormat.class);
        return (ann == null)  ? null : new JsonFormat.Value(ann);
    }

    @Override
    public String findPropertyDescription(Annotated annotated) {
        JsonPropertyDescription desc = annotated.getAnnotation(JsonPropertyDescription.class);
        return (desc == null) ? null : desc.value();
    }

    @Override
    public Integer findPropertyIndex(Annotated annotated) {
        JsonProperty ann = annotated.getAnnotation(JsonProperty.class);
        if (ann != null) {
        	int ix = ann.index();
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
        int PROBE_START_LINE_488 = 488;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_1775_line_488 = ac;
		JsonPropertyOrder jackson_annotation_introspector_1_expr21_line_488 = p_ac_1775_line_488
				.getAnnotation(JsonPropertyOrder.class);
		int PROBE_END_LINE_488 = 488;
		JsonPropertyOrder order = jackson_annotation_introspector_1_expr21_line_488;
        int PROBE_START_LINE_489 = 489;
		com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_1776_line_489 = order;
		boolean jackson_annotation_introspector_1_expr26_line_489 = v_order_1776_line_489 == null;
		boolean jackson_annotation_introspector_1_expr24_line_489 = (jackson_annotation_introspector_1_expr26_line_489);
		String[] jackson_annotation_introspector_1_expr25_line_489 = null;
		if (!jackson_annotation_introspector_1_expr24_line_489) {
			com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_1776_line_489_v1 = order;
			jackson_annotation_introspector_1_expr25_line_489 = v_order_1776_line_489_v1.value();
		}
		String[] jackson_annotation_introspector_1_expr23_line_489 = jackson_annotation_introspector_1_expr24_line_489
				? null
				: jackson_annotation_introspector_1_expr25_line_489;
		int PROBE_END_LINE_489 = 489;
		return jackson_annotation_introspector_1_expr23_line_489;
    }

    @Override
    public Boolean findSerializationSortAlphabetically(Annotated ann) {
        int PROBE_START_LINE_494 = 494;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_1777_line_494 = ann;
		Boolean jackson_annotation_introspector_1_expr27_line_494 = _findSortAlpha(p_ann_1777_line_494);
		int PROBE_END_LINE_494 = 494;
		return jackson_annotation_introspector_1_expr27_line_494;
    }

    @Override
    @Deprecated
    public Boolean findSerializationSortAlphabetically(AnnotatedClass ac) {
        return _findSortAlpha(ac);
    }

    private final Boolean _findSortAlpha(Annotated ann) {
        int PROBE_START_LINE_504 = 504;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_1779_line_504 = ann;
		JsonPropertyOrder jackson_annotation_introspector_1_expr28_line_504 = p_ann_1779_line_504
				.getAnnotation(JsonPropertyOrder.class);
		int PROBE_END_LINE_504 = 504;
		JsonPropertyOrder order = jackson_annotation_introspector_1_expr28_line_504;
        int PROBE_START_LINE_505 = 505;
		com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_1780_line_505 = order;
		boolean jackson_annotation_introspector_1_expr33_line_505 = v_order_1780_line_505 == null;
		boolean jackson_annotation_introspector_1_expr31_line_505 = (jackson_annotation_introspector_1_expr33_line_505);
		boolean jackson_annotation_introspector_1_expr32_line_505 = false;
		if (!jackson_annotation_introspector_1_expr31_line_505) {
			com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_1780_line_505_v1 = order;
			jackson_annotation_introspector_1_expr32_line_505 = v_order_1780_line_505_v1.alphabetic();
		}
		Boolean jackson_annotation_introspector_1_expr30_line_505 = jackson_annotation_introspector_1_expr31_line_505
				? null
				: jackson_annotation_introspector_1_expr32_line_505;
		int PROBE_END_LINE_505 = 505;
		return jackson_annotation_introspector_1_expr30_line_505;
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

        JsonGetter jg = a.getAnnotation(JsonGetter.class);
        if (jg != null) {
            name = jg.value();
        } else {
            JsonProperty pann = a.getAnnotation(JsonProperty.class);
            if (pann != null) {
                name = pann.value();
            } else if (a.hasAnnotation(JsonSerialize.class) || a.hasAnnotation(JsonView.class)) {
                name = "";
            } else {
                return null;
            }
        }
        if (name.length() == 0) { // empty String means 'default'
            return PropertyName.USE_DEFAULT;
        }
        return new PropertyName(name);
    }

    @Override
    public boolean hasAsValueAnnotation(AnnotatedMethod am) {
        JsonValue ann = am.getAnnotation(JsonValue.class);
        // value of 'false' means disabled...
        return (ann != null && ann.value());
    }

    /*
    /**********************************************************
    /* Deserialization: general annotations
    /**********************************************************
     */

    @Override
    public Class<? extends JsonDeserializer<?>> findDeserializer(Annotated a)
    {
        int PROBE_START_LINE_554 = 554;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_1783_line_554 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr34_line_554 = p_a_1783_line_554
				.getAnnotation(JsonDeserialize.class);
		int PROBE_END_LINE_554 = 554;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr34_line_554;
        int PROBE_START_LINE_555 = 560;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1784_line_555 = ann;
		boolean jackson_annotation_introspector_1_expr36_line_555 = v_ann_1784_line_555 != null;
		int PROBE_END_LINE_555 = 560;
		if (jackson_annotation_introspector_1_expr36_line_555) {
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
        JsonDeserialize ann = a.getAnnotation(JsonDeserialize.class);
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
        int PROBE_START_LINE_580 = 580;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_1786_line_580 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr37_line_580 = p_a_1786_line_580
				.getAnnotation(JsonDeserialize.class);
		int PROBE_END_LINE_580 = 580;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr37_line_580;
        int PROBE_START_LINE_581 = 586;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1787_line_581 = ann;
		boolean jackson_annotation_introspector_1_expr39_line_581 = v_ann_1787_line_581 != null;
		int PROBE_END_LINE_581 = 586;
		if (jackson_annotation_introspector_1_expr39_line_581) {
            Class<? extends JsonDeserializer<?>> deserClass = ann.contentUsing();
            if (deserClass != JsonDeserializer.None.class) {
                return deserClass;
            }
        }
        return null;
    }

    @Override
    public Class<?> findDeserializationType(Annotated am, JavaType baseType) {
        int PROBE_START_LINE_592 = 592;
		com.fasterxml.jackson.databind.introspect.Annotated p_am_1788_line_592 = am;
		JsonDeserialize jackson_annotation_introspector_1_expr40_line_592 = p_am_1788_line_592
				.getAnnotation(JsonDeserialize.class);
		int PROBE_END_LINE_592 = 592;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr40_line_592;
        int PROBE_START_LINE_593 = 593;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1790_line_593 = ann;
		boolean jackson_annotation_introspector_1_expr45_line_593 = v_ann_1790_line_593 == null;
		boolean jackson_annotation_introspector_1_expr43_line_593 = (jackson_annotation_introspector_1_expr45_line_593);
		Class<?> jackson_annotation_introspector_1_expr44_line_593 = null;
		if (!jackson_annotation_introspector_1_expr43_line_593) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1790_line_593_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr46_line_593 = v_ann_1790_line_593_v1.as();
			jackson_annotation_introspector_1_expr44_line_593 = _classIfExplicit(
					jackson_annotation_introspector_1_expr46_line_593);
		}
		Class<?> jackson_annotation_introspector_1_expr42_line_593 = jackson_annotation_introspector_1_expr43_line_593
				? null
				: jackson_annotation_introspector_1_expr44_line_593;
		int PROBE_END_LINE_593 = 593;
		return jackson_annotation_introspector_1_expr42_line_593;
    }

    @Override
    public Class<?> findDeserializationKeyType(Annotated am, JavaType baseKeyType) {
        int PROBE_START_LINE_598 = 598;
		com.fasterxml.jackson.databind.introspect.Annotated p_am_1791_line_598 = am;
		JsonDeserialize jackson_annotation_introspector_1_expr47_line_598 = p_am_1791_line_598
				.getAnnotation(JsonDeserialize.class);
		int PROBE_END_LINE_598 = 598;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr47_line_598;
        int PROBE_START_LINE_599 = 599;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1793_line_599 = ann;
		boolean jackson_annotation_introspector_1_expr52_line_599 = v_ann_1793_line_599 == null;
		boolean jackson_annotation_introspector_1_expr50_line_599 = (jackson_annotation_introspector_1_expr52_line_599);
		Class<?> jackson_annotation_introspector_1_expr51_line_599 = null;
		if (!jackson_annotation_introspector_1_expr50_line_599) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1793_line_599_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr53_line_599 = v_ann_1793_line_599_v1.keyAs();
			jackson_annotation_introspector_1_expr51_line_599 = _classIfExplicit(
					jackson_annotation_introspector_1_expr53_line_599);
		}
		Class<?> jackson_annotation_introspector_1_expr49_line_599 = jackson_annotation_introspector_1_expr50_line_599
				? null
				: jackson_annotation_introspector_1_expr51_line_599;
		int PROBE_END_LINE_599 = 599;
		return jackson_annotation_introspector_1_expr49_line_599;
    }

    @Override
    public Class<?> findDeserializationContentType(Annotated am, JavaType baseContentType)
    {
        int PROBE_START_LINE_605 = 605;
		com.fasterxml.jackson.databind.introspect.Annotated p_am_1794_line_605 = am;
		JsonDeserialize jackson_annotation_introspector_1_expr54_line_605 = p_am_1794_line_605
				.getAnnotation(JsonDeserialize.class);
		int PROBE_END_LINE_605 = 605;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr54_line_605;
        int PROBE_START_LINE_606 = 606;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1796_line_606 = ann;
		boolean jackson_annotation_introspector_1_expr59_line_606 = v_ann_1796_line_606 == null;
		boolean jackson_annotation_introspector_1_expr57_line_606 = (jackson_annotation_introspector_1_expr59_line_606);
		Class<?> jackson_annotation_introspector_1_expr58_line_606 = null;
		if (!jackson_annotation_introspector_1_expr57_line_606) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1796_line_606_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr60_line_606 = v_ann_1796_line_606_v1.contentAs();
			jackson_annotation_introspector_1_expr58_line_606 = _classIfExplicit(
					jackson_annotation_introspector_1_expr60_line_606);
		}
		Class<?> jackson_annotation_introspector_1_expr56_line_606 = jackson_annotation_introspector_1_expr57_line_606
				? null
				: jackson_annotation_introspector_1_expr58_line_606;
		int PROBE_END_LINE_606 = 606;
		return jackson_annotation_introspector_1_expr56_line_606;
    }

    @Override
    public Object findDeserializationConverter(Annotated a)
    {
        int PROBE_START_LINE_612 = 612;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_1797_line_612 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr61_line_612 = p_a_1797_line_612
				.getAnnotation(JsonDeserialize.class);
		int PROBE_END_LINE_612 = 612;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr61_line_612;
        int PROBE_START_LINE_613 = 613;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1798_line_613 = ann;
		boolean jackson_annotation_introspector_1_expr66_line_613 = v_ann_1798_line_613 == null;
		boolean jackson_annotation_introspector_1_expr64_line_613 = (jackson_annotation_introspector_1_expr66_line_613);
		Class<?> jackson_annotation_introspector_1_expr65_line_613 = null;
		if (!jackson_annotation_introspector_1_expr64_line_613) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1798_line_613_v1 = ann;
			Class<? extends Converter<?, ?>> jackson_annotation_introspector_1_expr67_line_613 = v_ann_1798_line_613_v1
					.converter();
			jackson_annotation_introspector_1_expr65_line_613 = _classIfExplicit(
					jackson_annotation_introspector_1_expr67_line_613, Converter.None.class);
		}
		Object jackson_annotation_introspector_1_expr63_line_613 = jackson_annotation_introspector_1_expr64_line_613
				? null
				: jackson_annotation_introspector_1_expr65_line_613;
		int PROBE_END_LINE_613 = 613;
		return jackson_annotation_introspector_1_expr63_line_613;
    }

    @Override
    public Object findDeserializationContentConverter(AnnotatedMember a)
    {
        JsonDeserialize ann = a.getAnnotation(JsonDeserialize.class);
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
        JsonValueInstantiator ann = ac.getAnnotation(JsonValueInstantiator.class);
        // no 'null' marker yet, so:
        return (ann == null) ? null : ann.value();
    }

    @Override
    public Class<?> findPOJOBuilder(AnnotatedClass ac)
    {
        int PROBE_START_LINE_640 = 640;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_1801_line_640 = ac;
		JsonDeserialize jackson_annotation_introspector_1_expr69_line_640 = p_ac_1801_line_640
				.getAnnotation(JsonDeserialize.class);
		int PROBE_END_LINE_640 = 640;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr69_line_640;
        int PROBE_START_LINE_641 = 641;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1802_line_641 = ann;
		boolean jackson_annotation_introspector_1_expr74_line_641 = v_ann_1802_line_641 == null;
		boolean jackson_annotation_introspector_1_expr72_line_641 = (jackson_annotation_introspector_1_expr74_line_641);
		Class<?> jackson_annotation_introspector_1_expr73_line_641 = null;
		if (!jackson_annotation_introspector_1_expr72_line_641) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_1802_line_641_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr75_line_641 = v_ann_1802_line_641_v1.builder();
			jackson_annotation_introspector_1_expr73_line_641 = _classIfExplicit(
					jackson_annotation_introspector_1_expr75_line_641);
		}
		Class<?> jackson_annotation_introspector_1_expr71_line_641 = jackson_annotation_introspector_1_expr72_line_641
				? null
				: jackson_annotation_introspector_1_expr73_line_641;
		int PROBE_END_LINE_641 = 641;
		return jackson_annotation_introspector_1_expr71_line_641;
    }

    @Override
    public JsonPOJOBuilder.Value findPOJOBuilderConfig(AnnotatedClass ac)
    {
        JsonPOJOBuilder ann = ac.getAnnotation(JsonPOJOBuilder.class);
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

        // @JsonSetter has precedence over @JsonProperty, being more specific
        // @JsonDeserialize implies that there is a property, but no name
        JsonSetter js = a.getAnnotation(JsonSetter.class);
        if (js != null) {
            name = js.value();
        } else {
            JsonProperty pann = a.getAnnotation(JsonProperty.class);
            if (pann != null) {
                name = pann.value();
                /* 22-Apr-2014, tatu: Should figure out a better way to do this, but
                 *   it's actually bit tricky to do it more efficiently (meta-annotations
                 *   add more lookups; AnnotationMap costs etc)
                 */
            } else if (a.hasAnnotation(JsonDeserialize.class)
                    || a.hasAnnotation(JsonView.class)
                    || a.hasAnnotation(JsonUnwrapped.class) // [#442]
                    || a.hasAnnotation(JsonBackReference.class)
                    || a.hasAnnotation(JsonManagedReference.class)) {
                    name = "";
            } else {
                return null;
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
        return am.hasAnnotation(JsonAnySetter.class);
    }

    @Override
    public boolean hasAnyGetterAnnotation(AnnotatedMethod am)
    {
        /* No dedicated disabling; regular @JsonIgnore used
         * if needs to be ignored (handled separately
         */
        return am.hasAnnotation(JsonAnyGetter.class);
    }
    
    @Override
    public boolean hasCreatorAnnotation(Annotated a)
    {
        /* No dedicated disabling; regular @JsonIgnore used
         * if needs to be ignored (and if so, is handled prior
         * to this method getting called)
         */
        return a.hasAnnotation(JsonCreator.class);
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    protected boolean _isIgnorable(Annotated a)
    {
        JsonIgnore ann = a.getAnnotation(JsonIgnore.class);
        return (ann != null && ann.value());
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
    
    /**
     * Helper method called to construct and initialize instance of {@link TypeResolverBuilder}
     * if given annotated element indicates one is needed.
     */
    protected TypeResolverBuilder<?> _findTypeResolver(MapperConfig<?> config,
            Annotated ann, JavaType baseType)
    {
        // First: maybe we have explicit type resolver?
        TypeResolverBuilder<?> b;
        int PROBE_START_LINE_753 = 753;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_1813_line_753 = ann;
		JsonTypeInfo jackson_annotation_introspector_1_expr76_line_753 = p_ann_1813_line_753
				.getAnnotation(JsonTypeInfo.class);
		int PROBE_END_LINE_753 = 753;
		JsonTypeInfo info = jackson_annotation_introspector_1_expr76_line_753;
        int PROBE_START_LINE_754 = 754;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_1813_line_754 = ann;
		JsonTypeResolver jackson_annotation_introspector_1_expr78_line_754 = p_ann_1813_line_754
				.getAnnotation(JsonTypeResolver.class);
		int PROBE_END_LINE_754 = 754;
		JsonTypeResolver resAnn = jackson_annotation_introspector_1_expr78_line_754;
        
        int PROBE_START_LINE_756 = 774;
		com.fasterxml.jackson.databind.annotation.JsonTypeResolver v_res_ann_1816_line_756 = resAnn;
		boolean jackson_annotation_introspector_1_expr80_line_756 = v_res_ann_1816_line_756 != null;
		int PROBE_END_LINE_756 = 774;
		if (jackson_annotation_introspector_1_expr80_line_756) {
            if (info == null) {
                return null;
            }
            /* let's not try to force access override (would need to pass
             * settings through if we did, since that's not doable on some
             * platforms)
             */
            b = config.typeResolverBuilderInstance(ann, resAnn.value());
        } else { // if not, use standard one, if indicated by annotations
            int PROBE_START_LINE_766 = 768;
			com.fasterxml.jackson.annotation.JsonTypeInfo v_info_1815_line_766 = info;
			boolean jackson_annotation_introspector_1_expr81_line_766 = v_info_1815_line_766 == null;
			int PROBE_END_LINE_766 = 768;
			if (jackson_annotation_introspector_1_expr81_line_766) {
                return null;
            }
            // bit special; must return 'marker' to block use of default typing:
            if (info.use() == JsonTypeInfo.Id.NONE) {
                return _constructNoTypeResolverBuilder();
            }
            b = _constructStdTypeResolverBuilder();
        }
        // Does it define a custom type id resolver?
        JsonTypeIdResolver idResInfo = ann.getAnnotation(JsonTypeIdResolver.class);
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
        if (defaultImpl != JsonTypeInfo.None.class) {
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
