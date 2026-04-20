package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.*;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.*;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.ext.Java7Support;
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
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.annotation.JsonTypeResolver;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonPropertyDescription;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.databind.annotation.JsonValueInstantiator;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
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

    @SuppressWarnings("unchecked")
    private final static Class<? extends Annotation>[] ANNOTATIONS_TO_INFER_SER = (Class<? extends Annotation>[])
            new Class<?>[] {
        JsonSerialize.class,
        JsonView.class,
        JsonFormat.class,
        JsonTypeInfo.class,
        JsonRawValue.class,
        JsonUnwrapped.class,
        JsonBackReference.class,
        JsonManagedReference.class
    };

    @SuppressWarnings("unchecked")
    private final static Class<? extends Annotation>[] ANNOTATIONS_TO_INFER_DESER = (Class<? extends Annotation>[])
            new Class<?>[] {
        JsonDeserialize.class,
        JsonView.class,
        JsonFormat.class,
        JsonTypeInfo.class,
        JsonUnwrapped.class,
        JsonBackReference.class,
        JsonManagedReference.class
    };

    // NOTE: loading of Java7 dependencies is encapsulated by handlers in Java7Support,
    //  here we do not really need any handling; but for extra-safety use try-catch
    private static final Java7Support _java7Helper;
    static {
        Java7Support x = null;
        try {
            int PROBE_START_LINE_65 = 65;
			com.fasterxml.jackson.databind.ext.Java7Support jackson_annotation_introspector_1_expr6_line_65 = Java7Support
					.instance();
			int PROBE_END_LINE_65 = 65;
			x = jackson_annotation_introspector_1_expr6_line_65;
        } catch (Throwable t) { }
        int PROBE_START_LINE_67 = 67;
		com.fasterxml.jackson.databind.ext.Java7Support v_x_3097_line_67 = x;
		int PROBE_END_LINE_67 = 67;
		_java7Helper = v_x_3097_line_67;
    }
    
    /**
     * Since introspection of annotation types is a performance issue in some
     * use cases (rare, but do exist), let's try a simple cache to reduce
     * need for actual meta-annotation introspection.
     *<p>
     * Non-final only because it needs to be re-created after deserialization.
     *
     * @since 2.7
     */
    protected transient LRUMap<Class<?>,Boolean> _annotationsInside = new LRUMap<Class<?>,Boolean>(48, 48);

    /*
    /**********************************************************
    /* Local configuration settings
    /**********************************************************
     */

    /**
     * See {@link #setConstructorPropertiesImpliesCreator(boolean)} for
     * explanation.
     *<p>
     * Defaults to true.
     * 
     * @since 2.7.4
     */
    protected boolean _cfgConstructorPropertiesImpliesCreator = true;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    public JacksonAnnotationIntrospector() { }

    @Override
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.PackageVersion.VERSION;
    }

    protected Object readResolve() {
        if (_annotationsInside == null) {
            _annotationsInside = new LRUMap<Class<?>,Boolean>(48, 48);
        }
        return this;
    }

    /*
    /**********************************************************
    /* Configuration
    /**********************************************************
     */

    /**
     * Method for changing behavior of {@link java.beans.ConstructorProperties}:
     * if set to `true`, existence DOES indicate that the given constructor should
     * be considered a creator; `false` that it should NOT be considered a creator
     * without explicit use of <code>JsonCreator</code> annotation.
     *<p>
     * Default setting is `true`
     *
     * @since 2.7.4
     */
    public JacksonAnnotationIntrospector setConstructorPropertiesImpliesCreator(boolean b)
    {
        _cfgConstructorPropertiesImpliesCreator = b;
        return this;
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
        // 22-Sep-2015, tatu: Caching here has modest effect on JavaSE, and only
        //   mostly in degenerate cases where introspection used more often than
        //   it should (like recreating ObjectMapper once per read/write).
        //   But it may be more beneficial on platforms like Android (should verify)
        Class<?> type = ann.annotationType();
        Boolean b = _annotationsInside.get(type);
        if (b == null) {
            b = type.getAnnotation(JacksonAnnotationsInside.class) != null;
            _annotationsInside.putIfAbsent(type, b);
        }
        return b.booleanValue();
    }

    /*
    /**********************************************************
    /* General annotations
    /**********************************************************
     */

    /**
     * Since 2.6, we have supported use of {@link JsonProperty} for specifying
     * explicit serialized name
     */
    @Override
    @Deprecated
    public String findEnumValue(Enum<?> value)
    {
        // 11-Jun-2015, tatu: As per [databind#677], need to allow explicit naming.
        //   Unfortunately can not quite use standard AnnotatedClass here (due to various
        //   reasons, including odd representation JVM uses); has to do for now
        try {
            // We know that values are actually static fields with matching name so:
            Field f = value.getClass().getField(value.name());
            if (f != null) {
                JsonProperty prop = f.getAnnotation(JsonProperty.class);
                if (prop != null) {
                    String n = prop.value();
                    if (n != null && !n.isEmpty()) {
                        return n;
                    }
                }
            }
        } catch (SecurityException e) {
            // 17-Sep-2015, tatu: Anything we could/should do here?
        } catch (NoSuchFieldException e) {
            // 17-Sep-2015, tatu: should not really happen. But... can we do anything?
        }
        return value.name();
    }

    @Override // since 2.7
    public String[] findEnumValues(Class<?> enumType, Enum<?>[] enumValues, String[] names) {
        HashMap<String,String> expl = null;
        for (Field f : ClassUtil.getDeclaredFields(enumType)) {
            if (!f.isEnumConstant()) {
                continue;
            }
            JsonProperty prop = f.getAnnotation(JsonProperty.class);
            if (prop == null) {
                continue;
            }
            String n = prop.value();
            if (n.isEmpty()) {
                continue;
            }
            if (expl == null) {
                expl = new HashMap<String,String>();
            }
            expl.put(f.getName(), n);
        }
        // and then stitch them together if and as necessary
        if (expl != null) {
            for (int i = 0, end = enumValues.length; i < end; ++i) {
                String defName = enumValues[i].name();
                String explValue = expl.get(defName);
                if (explValue != null) {
                    names[i] = explValue;
                }
            }
        }
        return names;
    }

    /**
     * Finds the Enum value that should be considered the default value, if possible.
     * <p>
     * This implementation relies on {@link JsonEnumDefaultValue} annotation to determine the default value if present.
     *
     * @param enumCls The Enum class to scan for the default value.
     * @return null if none found or it's not possible to determine one.
     * @since 2.8
     */
    @Override
    public Enum<?> findDefaultEnumValue(Class<Enum<?>> enumCls) {
        return ClassUtil.findFirstAnnotatedEnumValue(enumCls, JsonEnumDefaultValue.class);
    }

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

    @Override // since 2.8
    public JsonIgnoreProperties.Value findPropertyIgnorals(Annotated a)
    {
        int PROBE_START_LINE_271 = 271;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3110_line_271 = a;
		JsonIgnoreProperties jackson_annotation_introspector_1_expr9_line_271 = _findAnnotation(p_a_3110_line_271,
				JsonIgnoreProperties.class);
		int PROBE_END_LINE_271 = 271;
		JsonIgnoreProperties v = jackson_annotation_introspector_1_expr9_line_271;
        int PROBE_START_LINE_272 = 275;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties v_v_3111_line_272 = v;
		boolean jackson_annotation_introspector_1_expr11_line_272 = v_v_3111_line_272 == null;
		int PROBE_END_LINE_272 = 275;
		if (jackson_annotation_introspector_1_expr11_line_272) {
            // could alternatively return `Value.empty()`?
            return null;
        }
        return JsonIgnoreProperties.Value.from(v);
    }
    
    @Override // since 2.6
    @Deprecated // since 2.8
    public String[] findPropertiesToIgnore(Annotated a, boolean forSerialization) {
        JsonIgnoreProperties.Value v = findPropertyIgnorals(a);
        if (v == null) {
            return null;
        }
        // 13-May-2015, tatu: As per [databind#95], allow read-only/write-only props
        if (forSerialization) {
            if (v.getAllowGetters()) {
                return null;
            }
        } else {
            if (v.getAllowSetters()) {
                return null;
            }
        }
        Set<String> ignored = v.getIgnored();
        return ignored.toArray(new String[ignored.size()]);
    }

    @Override
    @Deprecated // since 2.8
    public Boolean findIgnoreUnknownProperties(AnnotatedClass a) {
        JsonIgnoreProperties.Value v = findPropertyIgnorals(a);
        return (v == null) ? null : v.getIgnoreUnknown();
    }

    @Override
    public Boolean isIgnorableType(AnnotatedClass ac) {
        int PROBE_START_LINE_309 = 309;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3115_line_309 = ac;
		JsonIgnoreType jackson_annotation_introspector_1_expr12_line_309 = _findAnnotation(p_ac_3115_line_309,
				JsonIgnoreType.class);
		int PROBE_END_LINE_309 = 309;
		JsonIgnoreType ignore = jackson_annotation_introspector_1_expr12_line_309;
        int PROBE_START_LINE_310 = 310;
		com.fasterxml.jackson.annotation.JsonIgnoreType v_ignore_3116_line_310 = ignore;
		boolean jackson_annotation_introspector_1_expr17_line_310 = v_ignore_3116_line_310 == null;
		boolean jackson_annotation_introspector_1_expr15_line_310 = (jackson_annotation_introspector_1_expr17_line_310);
		boolean jackson_annotation_introspector_1_expr16_line_310 = false;
		if (!jackson_annotation_introspector_1_expr15_line_310) {
			com.fasterxml.jackson.annotation.JsonIgnoreType v_ignore_3116_line_310_v1 = ignore;
			jackson_annotation_introspector_1_expr16_line_310 = v_ignore_3116_line_310_v1.value();
		}
		Boolean jackson_annotation_introspector_1_expr14_line_310 = jackson_annotation_introspector_1_expr15_line_310
				? null
				: jackson_annotation_introspector_1_expr16_line_310;
		int PROBE_END_LINE_310 = 310;
		return jackson_annotation_introspector_1_expr14_line_310;
    }
 
    @Override
    public Object findFilterId(Annotated a) {
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
        int PROBE_START_LINE_329 = 329;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3118_line_329 = ac;
		JsonNaming jackson_annotation_introspector_1_expr18_line_329 = _findAnnotation(p_ac_3118_line_329,
				JsonNaming.class);
		int PROBE_END_LINE_329 = 329;
		JsonNaming ann = jackson_annotation_introspector_1_expr18_line_329;
        int PROBE_START_LINE_330 = 330;
		com.fasterxml.jackson.databind.annotation.JsonNaming v_ann_3119_line_330 = ann;
		boolean jackson_annotation_introspector_1_expr23_line_330 = v_ann_3119_line_330 == null;
		boolean jackson_annotation_introspector_1_expr21_line_330 = (jackson_annotation_introspector_1_expr23_line_330);
		Class<? extends com.fasterxml.jackson.databind.PropertyNamingStrategy> jackson_annotation_introspector_1_expr22_line_330 = null;
		if (!jackson_annotation_introspector_1_expr21_line_330) {
			com.fasterxml.jackson.databind.annotation.JsonNaming v_ann_3119_line_330_v1 = ann;
			jackson_annotation_introspector_1_expr22_line_330 = v_ann_3119_line_330_v1.value();
		}
		Object jackson_annotation_introspector_1_expr20_line_330 = jackson_annotation_introspector_1_expr21_line_330
				? null
				: jackson_annotation_introspector_1_expr22_line_330;
		int PROBE_END_LINE_330 = 330;
		return jackson_annotation_introspector_1_expr20_line_330;
    }

    @Override
    public String findClassDescription(AnnotatedClass ac) {
        JsonClassDescription ann = _findAnnotation(ac, JsonClassDescription.class);
        return (ann == null) ? null : ann.value();
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
        int PROBE_START_LINE_349 = 349;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3121_line_349 = ac;
		JsonAutoDetect jackson_annotation_introspector_1_expr24_line_349 = _findAnnotation(p_ac_3121_line_349,
				JsonAutoDetect.class);
		int PROBE_END_LINE_349 = 349;
		JsonAutoDetect ann = jackson_annotation_introspector_1_expr24_line_349;
        int PROBE_START_LINE_350 = 350;
		com.fasterxml.jackson.annotation.JsonAutoDetect v_ann_3123_line_350 = ann;
		boolean jackson_annotation_introspector_1_expr29_line_350 = v_ann_3123_line_350 == null;
		boolean jackson_annotation_introspector_1_expr27_line_350 = (jackson_annotation_introspector_1_expr29_line_350);
		VisibilityChecker<?> p_checker_3122_line_350 = null;
		VisibilityChecker<?> jackson_annotation_introspector_1_expr28_line_350 = null;
		if (jackson_annotation_introspector_1_expr27_line_350) {
			p_checker_3122_line_350 = checker;
		} else {
			VisibilityChecker<?> p_checker_3122_line_350_v1 = checker;
			com.fasterxml.jackson.annotation.JsonAutoDetect v_ann_3123_line_350_v1 = ann;
			jackson_annotation_introspector_1_expr28_line_350 = p_checker_3122_line_350_v1.with(v_ann_3123_line_350_v1);
		}
		VisibilityChecker<?> jackson_annotation_introspector_1_expr26_line_350 = jackson_annotation_introspector_1_expr27_line_350
				? p_checker_3122_line_350
				: jackson_annotation_introspector_1_expr28_line_350;
		int PROBE_END_LINE_350 = 350;
		return jackson_annotation_introspector_1_expr26_line_350;
    }

    /*
    /**********************************************************
    /* General member (field, method/constructor) annotations
    /**********************************************************
     */

    @Override
    public String findImplicitPropertyName(AnnotatedMember m) {
        int PROBE_START_LINE_361 = 361;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_3124_line_361 = m;
		PropertyName jackson_annotation_introspector_1_expr30_line_361 = _findConstructorName(p_m_3124_line_361);
		int PROBE_END_LINE_361 = 361;
		PropertyName n = jackson_annotation_introspector_1_expr30_line_361;
        int PROBE_START_LINE_362 = 362;
		com.fasterxml.jackson.databind.PropertyName v_n_3125_line_362 = n;
		boolean jackson_annotation_introspector_1_expr34_line_362 = v_n_3125_line_362 == null;
		boolean jackson_annotation_introspector_1_expr32_line_362 = (jackson_annotation_introspector_1_expr34_line_362);
		String jackson_annotation_introspector_1_expr33_line_362 = null;
		if (!jackson_annotation_introspector_1_expr32_line_362) {
			com.fasterxml.jackson.databind.PropertyName v_n_3125_line_362_v1 = n;
			jackson_annotation_introspector_1_expr33_line_362 = v_n_3125_line_362_v1.getSimpleName();
		}
		String jackson_annotation_introspector_1_expr31_line_362 = jackson_annotation_introspector_1_expr32_line_362
				? null
				: jackson_annotation_introspector_1_expr33_line_362;
		int PROBE_END_LINE_362 = 362;
		return jackson_annotation_introspector_1_expr31_line_362;
    }
    
    @Override
    public boolean hasIgnoreMarker(AnnotatedMember m) {
        int PROBE_START_LINE_367 = 367;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_3126_line_367 = m;
		boolean jackson_annotation_introspector_1_expr35_line_367 = _isIgnorable(p_m_3126_line_367);
		int PROBE_END_LINE_367 = 367;
		return jackson_annotation_introspector_1_expr35_line_367;
    }

    @Override
    public Boolean hasRequiredMarker(AnnotatedMember m)
    {
        int PROBE_START_LINE_373 = 373;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_3127_line_373 = m;
		JsonProperty jackson_annotation_introspector_1_expr36_line_373 = _findAnnotation(p_m_3127_line_373,
				JsonProperty.class);
		int PROBE_END_LINE_373 = 373;
		JsonProperty ann = jackson_annotation_introspector_1_expr36_line_373;
        int PROBE_START_LINE_374 = 376;
		com.fasterxml.jackson.annotation.JsonProperty v_ann_3128_line_374 = ann;
		boolean jackson_annotation_introspector_1_expr38_line_374 = v_ann_3128_line_374 != null;
		int PROBE_END_LINE_374 = 376;
		if (jackson_annotation_introspector_1_expr38_line_374) {
            return ann.required();
        }
        return null;
    }

    @Override
    public JsonProperty.Access findPropertyAccess(Annotated m) {
        int PROBE_START_LINE_382 = 382;
		com.fasterxml.jackson.databind.introspect.Annotated p_m_3129_line_382 = m;
		JsonProperty jackson_annotation_introspector_1_expr39_line_382 = _findAnnotation(p_m_3129_line_382,
				JsonProperty.class);
		int PROBE_END_LINE_382 = 382;
		JsonProperty ann = jackson_annotation_introspector_1_expr39_line_382;
        int PROBE_START_LINE_383 = 385;
		com.fasterxml.jackson.annotation.JsonProperty v_ann_3130_line_383 = ann;
		boolean jackson_annotation_introspector_1_expr41_line_383 = v_ann_3130_line_383 != null;
		int PROBE_END_LINE_383 = 385;
		if (jackson_annotation_introspector_1_expr41_line_383) {
            return ann.access();
        }
        return null;
    }

    @Override
    public String findPropertyDescription(Annotated ann) {
        int PROBE_START_LINE_391 = 391;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3131_line_391 = ann;
		JsonPropertyDescription jackson_annotation_introspector_1_expr42_line_391 = _findAnnotation(p_ann_3131_line_391,
				JsonPropertyDescription.class);
		int PROBE_END_LINE_391 = 391;
		JsonPropertyDescription desc = jackson_annotation_introspector_1_expr42_line_391;
        int PROBE_START_LINE_392 = 392;
		com.fasterxml.jackson.annotation.JsonPropertyDescription v_desc_3132_line_392 = desc;
		boolean jackson_annotation_introspector_1_expr47_line_392 = v_desc_3132_line_392 == null;
		boolean jackson_annotation_introspector_1_expr45_line_392 = (jackson_annotation_introspector_1_expr47_line_392);
		String jackson_annotation_introspector_1_expr46_line_392 = null;
		if (!jackson_annotation_introspector_1_expr45_line_392) {
			com.fasterxml.jackson.annotation.JsonPropertyDescription v_desc_3132_line_392_v1 = desc;
			jackson_annotation_introspector_1_expr46_line_392 = v_desc_3132_line_392_v1.value();
		}
		String jackson_annotation_introspector_1_expr44_line_392 = jackson_annotation_introspector_1_expr45_line_392
				? null
				: jackson_annotation_introspector_1_expr46_line_392;
		int PROBE_END_LINE_392 = 392;
		return jackson_annotation_introspector_1_expr44_line_392;
    }

    @Override
    public Integer findPropertyIndex(Annotated ann) {
        int PROBE_START_LINE_397 = 397;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3133_line_397 = ann;
		JsonProperty jackson_annotation_introspector_1_expr48_line_397 = _findAnnotation(p_ann_3133_line_397,
				JsonProperty.class);
		int PROBE_END_LINE_397 = 397;
		JsonProperty prop = jackson_annotation_introspector_1_expr48_line_397;
        int PROBE_START_LINE_398 = 403;
		com.fasterxml.jackson.annotation.JsonProperty v_prop_3134_line_398 = prop;
		boolean jackson_annotation_introspector_1_expr50_line_398 = v_prop_3134_line_398 != null;
		int PROBE_END_LINE_398 = 403;
		if (jackson_annotation_introspector_1_expr50_line_398) {
          int ix = prop.index();
          if (ix != JsonProperty.INDEX_UNKNOWN) {
               return Integer.valueOf(ix);
          }
        }
        return null;
    }
    
    @Override
    public String findPropertyDefaultValue(Annotated ann) {
        int PROBE_START_LINE_409 = 409;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3135_line_409 = ann;
		JsonProperty jackson_annotation_introspector_1_expr51_line_409 = _findAnnotation(p_ann_3135_line_409,
				JsonProperty.class);
		int PROBE_END_LINE_409 = 409;
		JsonProperty prop = jackson_annotation_introspector_1_expr51_line_409;
        int PROBE_START_LINE_410 = 412;
		com.fasterxml.jackson.annotation.JsonProperty v_prop_3136_line_410 = prop;
		boolean jackson_annotation_introspector_1_expr53_line_410 = v_prop_3136_line_410 == null;
		int PROBE_END_LINE_410 = 412;
		if (jackson_annotation_introspector_1_expr53_line_410) {
            return null;
        }
        String str = prop.defaultValue();
        // Since annotations do not allow nulls, need to assume empty means "none"
        return str.isEmpty() ? null : str;
    }
    
    @Override
    public JsonFormat.Value findFormat(Annotated ann) {
        int PROBE_START_LINE_420 = 420;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3137_line_420 = ann;
		JsonFormat jackson_annotation_introspector_1_expr54_line_420 = _findAnnotation(p_ann_3137_line_420,
				JsonFormat.class);
		int PROBE_END_LINE_420 = 420;
		JsonFormat f = jackson_annotation_introspector_1_expr54_line_420;
        int PROBE_START_LINE_421 = 421;
		com.fasterxml.jackson.annotation.JsonFormat v_f_3138_line_421 = f;
		boolean jackson_annotation_introspector_1_expr59_line_421 = v_f_3138_line_421 == null;
		boolean jackson_annotation_introspector_1_expr57_line_421 = (jackson_annotation_introspector_1_expr59_line_421);
		com.fasterxml.jackson.annotation.JsonFormat v_f_3138_line_421_v1 = null;
		if (!jackson_annotation_introspector_1_expr57_line_421) {
			v_f_3138_line_421_v1 = f;
		}
		com.fasterxml.jackson.annotation.JsonFormat.Value jackson_annotation_introspector_1_expr56_line_421 = jackson_annotation_introspector_1_expr57_line_421
				? null
				: new JsonFormat.Value(v_f_3138_line_421_v1);
		int PROBE_END_LINE_421 = 421;
		return jackson_annotation_introspector_1_expr56_line_421;
    }

    @Override        
    public ReferenceProperty findReferenceType(AnnotatedMember member)
    {
        int PROBE_START_LINE_427 = 427;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3139_line_427 = member;
		JsonManagedReference jackson_annotation_introspector_1_expr60_line_427 = _findAnnotation(p_member_3139_line_427,
				JsonManagedReference.class);
		int PROBE_END_LINE_427 = 427;
		JsonManagedReference ref1 = jackson_annotation_introspector_1_expr60_line_427;
        int PROBE_START_LINE_428 = 430;
		com.fasterxml.jackson.annotation.JsonManagedReference v_ref_1_3140_line_428 = ref1;
		boolean jackson_annotation_introspector_1_expr62_line_428 = v_ref_1_3140_line_428 != null;
		int PROBE_END_LINE_428 = 430;
		if (jackson_annotation_introspector_1_expr62_line_428) {
            return AnnotationIntrospector.ReferenceProperty.managed(ref1.value());
        }
        int PROBE_START_LINE_431 = 431;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3139_line_431 = member;
		JsonBackReference jackson_annotation_introspector_1_expr63_line_431 = _findAnnotation(p_member_3139_line_431,
				JsonBackReference.class);
		int PROBE_END_LINE_431 = 431;
		JsonBackReference ref2 = jackson_annotation_introspector_1_expr63_line_431;
        int PROBE_START_LINE_432 = 434;
		com.fasterxml.jackson.annotation.JsonBackReference v_ref_2_3141_line_432 = ref2;
		boolean jackson_annotation_introspector_1_expr65_line_432 = v_ref_2_3141_line_432 != null;
		int PROBE_END_LINE_432 = 434;
		if (jackson_annotation_introspector_1_expr65_line_432) {
            return AnnotationIntrospector.ReferenceProperty.back(ref2.value());
        }
        return null;
    }

    @Override
    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember member)
    {
        JsonUnwrapped ann = _findAnnotation(member, JsonUnwrapped.class);
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
    public Object findInjectableValueId(AnnotatedMember m)
    {
        int PROBE_START_LINE_455 = 455;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_3143_line_455 = m;
		JacksonInject jackson_annotation_introspector_1_expr66_line_455 = _findAnnotation(p_m_3143_line_455,
				JacksonInject.class);
		int PROBE_END_LINE_455 = 455;
		JacksonInject ann = jackson_annotation_introspector_1_expr66_line_455;
        int PROBE_START_LINE_456 = 458;
		com.fasterxml.jackson.annotation.JacksonInject v_ann_3144_line_456 = ann;
		boolean jackson_annotation_introspector_1_expr68_line_456 = v_ann_3144_line_456 == null;
		int PROBE_END_LINE_456 = 458;
		if (jackson_annotation_introspector_1_expr68_line_456) {
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

    @Override
    public Class<?>[] findViews(Annotated a)
    {
        int PROBE_START_LINE_480 = 480;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3145_line_480 = a;
		JsonView jackson_annotation_introspector_1_expr69_line_480 = _findAnnotation(p_a_3145_line_480, JsonView.class);
		int PROBE_END_LINE_480 = 480;
		JsonView ann = jackson_annotation_introspector_1_expr69_line_480;
        int PROBE_START_LINE_481 = 481;
		com.fasterxml.jackson.annotation.JsonView v_ann_3146_line_481 = ann;
		boolean jackson_annotation_introspector_1_expr74_line_481 = v_ann_3146_line_481 == null;
		boolean jackson_annotation_introspector_1_expr72_line_481 = (jackson_annotation_introspector_1_expr74_line_481);
		Class<?>[] jackson_annotation_introspector_1_expr73_line_481 = null;
		if (!jackson_annotation_introspector_1_expr72_line_481) {
			com.fasterxml.jackson.annotation.JsonView v_ann_3146_line_481_v1 = ann;
			jackson_annotation_introspector_1_expr73_line_481 = v_ann_3146_line_481_v1.value();
		}
		Class<?>[] jackson_annotation_introspector_1_expr71_line_481 = jackson_annotation_introspector_1_expr72_line_481
				? null
				: jackson_annotation_introspector_1_expr73_line_481;
		int PROBE_END_LINE_481 = 481;
		return jackson_annotation_introspector_1_expr71_line_481;
    }

    @Override // since 2.7
    public AnnotatedMethod resolveSetterConflict(MapperConfig<?> config,
            AnnotatedMethod setter1, AnnotatedMethod setter2)
    {
        Class<?> cls1 = setter1.getRawParameterType(0);
        Class<?> cls2 = setter2.getRawParameterType(0);
        
        // First: prefer primitives over non-primitives
        // 11-Dec-2015, tatu: TODO, perhaps consider wrappers for primitives too?
        if (cls1.isPrimitive()) {
            if (!cls2.isPrimitive()) {
                return setter1;
            }
        } else if (cls2.isPrimitive()) {
            return setter2;
        }
        
        if (cls1 == String.class) {
            if (cls2 != String.class) {
                return setter1;
            }
        } else if (cls2 == String.class) {
            return setter2;
        }

        return null;
    }

    /*
    /**********************************************************
    /* Annotations for Polymorphic Type handling
    /**********************************************************
     */

    @Override
    public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> config,
            AnnotatedClass ac, JavaType baseType)
    {
        int PROBE_START_LINE_522 = 522;
		MapperConfig<?> p_config_3150_line_522 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3151_line_522 = ac;
		com.fasterxml.jackson.databind.JavaType p_base_type_3152_line_522 = baseType;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr75_line_522 = _findTypeResolver(
				p_config_3150_line_522, p_ac_3151_line_522, p_base_type_3152_line_522);
		int PROBE_END_LINE_522 = 522;
		return jackson_annotation_introspector_1_expr75_line_522;
    }

    @Override
    public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> config,
            AnnotatedMember am, JavaType baseType)
    {
        int PROBE_START_LINE_533 = 535;
		com.fasterxml.jackson.databind.JavaType p_base_type_3155_line_533 = baseType;
		boolean jackson_annotation_introspector_1_expr77_line_533 = p_base_type_3155_line_533.isContainerType();
		boolean jackson_annotation_introspector_1_expr78_line_533 = false;
		if (!jackson_annotation_introspector_1_expr77_line_533) {
			com.fasterxml.jackson.databind.JavaType p_base_type_3155_line_533_v1 = baseType;
			jackson_annotation_introspector_1_expr78_line_533 = p_base_type_3155_line_533_v1.isReferenceType();
		}
		boolean jackson_annotation_introspector_1_expr76_line_533 = jackson_annotation_introspector_1_expr77_line_533
				|| jackson_annotation_introspector_1_expr78_line_533;
		int PROBE_END_LINE_533 = 535;
		/* As per definition of @JsonTypeInfo, should only apply to contents of container
         * (collection, map) types, not container types themselves:
         */
        // 17-Apr-2016, tatu: For 2.7.4 make sure ReferenceType also included
        if (jackson_annotation_introspector_1_expr76_line_533) {
            return null;
        }
        // No per-member type overrides (yet)
        return _findTypeResolver(config, am, baseType);
    }

    @Override
    public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> config,
            AnnotatedMember am, JavaType containerType)
    {
        int PROBE_START_LINE_547 = 549;
		com.fasterxml.jackson.databind.JavaType p_container_type_3158_line_547 = containerType;
		com.fasterxml.jackson.databind.JavaType jackson_annotation_introspector_1_expr80_line_547 = p_container_type_3158_line_547
				.getContentType();
		boolean jackson_annotation_introspector_1_expr79_line_547 = jackson_annotation_introspector_1_expr80_line_547 == null;
		int PROBE_END_LINE_547 = 549;
		/* First: let's ensure property is a container type: caller should have
         * verified but just to be sure
         */
        if (jackson_annotation_introspector_1_expr79_line_547) {
            throw new IllegalArgumentException("Must call method with a container or reference type (got "+containerType+")");
        }
        int PROBE_START_LINE_550 = 550;
		MapperConfig<?> p_config_3156_line_550 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_am_3157_line_550 = am;
		com.fasterxml.jackson.databind.JavaType p_container_type_3158_line_550 = containerType;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr81_line_550 = _findTypeResolver(
				p_config_3156_line_550, p_am_3157_line_550, p_container_type_3158_line_550);
		int PROBE_END_LINE_550 = 550;
		return jackson_annotation_introspector_1_expr81_line_550;
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

    @Override
    public Boolean isTypeId(AnnotatedMember member) {
        return _hasAnnotation(member, JsonTypeId.class);
    }

    /*
    /**********************************************************
    /* Annotations for Object Id handling
    /**********************************************************
     */

    @Override
    public ObjectIdInfo findObjectIdInfo(Annotated ann) {
        int PROBE_START_LINE_586 = 586;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3162_line_586 = ann;
		JsonIdentityInfo jackson_annotation_introspector_1_expr82_line_586 = _findAnnotation(p_ann_3162_line_586,
				JsonIdentityInfo.class);
		int PROBE_END_LINE_586 = 586;
		JsonIdentityInfo info = jackson_annotation_introspector_1_expr82_line_586;
        int PROBE_START_LINE_587 = 589;
		com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_3163_line_587 = info;
		boolean jackson_annotation_introspector_1_expr85_line_587 = v_info_3163_line_587 == null;
		boolean jackson_annotation_introspector_1_expr86_line_587 = false;
		if (!jackson_annotation_introspector_1_expr85_line_587) {
			com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_3163_line_587_v1 = info;
			Class<? extends ObjectIdGenerator<?>> jackson_annotation_introspector_1_expr87_line_587 = v_info_3163_line_587_v1
					.generator();
			jackson_annotation_introspector_1_expr86_line_587 = jackson_annotation_introspector_1_expr87_line_587 == ObjectIdGenerators.None.class;
		}
		boolean jackson_annotation_introspector_1_expr84_line_587 = jackson_annotation_introspector_1_expr85_line_587
				|| jackson_annotation_introspector_1_expr86_line_587;
		int PROBE_END_LINE_587 = 589;
		if (jackson_annotation_introspector_1_expr84_line_587) {
            return null;
        }
        // In future may need to allow passing namespace?
        PropertyName name = PropertyName.construct(info.property());
        return new ObjectIdInfo(name, info.scope(), info.generator(), info.resolver());
    }

    @Override
    public ObjectIdInfo findObjectReferenceInfo(Annotated ann, ObjectIdInfo objectIdInfo) {
        JsonIdentityReference ref = _findAnnotation(ann, JsonIdentityReference.class);
        if (ref == null) {
            return objectIdInfo;
        }
        if (objectIdInfo == null) {
            objectIdInfo = ObjectIdInfo.empty();
        }
        return objectIdInfo.withAlwaysAsId(ref.alwaysAsId());
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
            @SuppressWarnings("rawtypes")
            Class<? extends JsonSerializer> serClass = ann.using();
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
    public Object findKeySerializer(Annotated a)
    {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
            @SuppressWarnings("rawtypes")
            Class<? extends JsonSerializer> serClass = ann.keyUsing();
            if (serClass != JsonSerializer.None.class) {
                return serClass;
            }
        }
        return null;
    }

    @Override
    public Object findContentSerializer(Annotated a)
    {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
            @SuppressWarnings("rawtypes")
            Class<? extends JsonSerializer> serClass = ann.contentUsing();
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
            @SuppressWarnings("rawtypes")
            Class<? extends JsonSerializer> serClass = ann.nullsUsing();
            if (serClass != JsonSerializer.None.class) {
                return serClass;
            }
        }
        return null;
    }

    @Override
    @SuppressWarnings("deprecation")
    public JsonInclude.Include findSerializationInclusion(Annotated a, JsonInclude.Include defValue)
    {
        JsonInclude inc = _findAnnotation(a, JsonInclude.class);
        if (inc != null) {
            JsonInclude.Include v = inc.value();
            if (v != JsonInclude.Include.USE_DEFAULTS) {
                return v;
            }
        }
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
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
    @Deprecated
    public JsonInclude.Include findSerializationInclusionForContent(Annotated a, JsonInclude.Include defValue)
    {
        JsonInclude inc = _findAnnotation(a, JsonInclude.class);
        if (inc != null) {
            JsonInclude.Include incl = inc.content();
            if (incl != JsonInclude.Include.USE_DEFAULTS) {
                return incl;
            }
        }
        return defValue;
    }

    @Override
    @SuppressWarnings("deprecation")
    public JsonInclude.Value findPropertyInclusion(Annotated a)
    {
        JsonInclude inc = _findAnnotation(a, JsonInclude.class);
        JsonInclude.Include valueIncl = (inc == null) ? JsonInclude.Include.USE_DEFAULTS : inc.value();
        if (valueIncl == JsonInclude.Include.USE_DEFAULTS) {
            JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
            if (ann != null) {
                JsonSerialize.Inclusion i2 = ann.include();
                switch (i2) {
                case ALWAYS:
                    valueIncl = JsonInclude.Include.ALWAYS;
                    break;
                case NON_NULL:
                    valueIncl = JsonInclude.Include.NON_NULL;
                    break;
                case NON_DEFAULT:
                    valueIncl = JsonInclude.Include.NON_DEFAULT;
                    break;
                case NON_EMPTY:
                    valueIncl = JsonInclude.Include.NON_EMPTY;
                    break;
                case DEFAULT_INCLUSION:
                default:
                }
            }
        }
        JsonInclude.Include contentIncl = (inc == null) ? JsonInclude.Include.USE_DEFAULTS : inc.content();
        return JsonInclude.Value.construct(valueIncl, contentIncl);
    }

    @Override
    @Deprecated
    public Class<?> findSerializationType(Annotated am)
    {
        JsonSerialize ann = _findAnnotation(am, JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.as());
    }

    @Override
    @Deprecated
    public Class<?> findSerializationKeyType(Annotated am, JavaType baseType)
    {
        JsonSerialize ann = _findAnnotation(am, JsonSerialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.keyAs());
    }

    @Override
    @Deprecated
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

    /*
    /**********************************************************
    /* Serialization: class annotations
    /**********************************************************
     */

    @Override
    public String[] findSerializationPropertyOrder(AnnotatedClass ac) {
        int PROBE_START_LINE_807 = 807;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3183_line_807 = ac;
		JsonPropertyOrder jackson_annotation_introspector_1_expr89_line_807 = _findAnnotation(p_ac_3183_line_807,
				JsonPropertyOrder.class);
		int PROBE_END_LINE_807 = 807;
		JsonPropertyOrder order = jackson_annotation_introspector_1_expr89_line_807;
        int PROBE_START_LINE_808 = 808;
		com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_3184_line_808 = order;
		boolean jackson_annotation_introspector_1_expr94_line_808 = v_order_3184_line_808 == null;
		boolean jackson_annotation_introspector_1_expr92_line_808 = (jackson_annotation_introspector_1_expr94_line_808);
		String[] jackson_annotation_introspector_1_expr93_line_808 = null;
		if (!jackson_annotation_introspector_1_expr92_line_808) {
			com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_3184_line_808_v1 = order;
			jackson_annotation_introspector_1_expr93_line_808 = v_order_3184_line_808_v1.value();
		}
		String[] jackson_annotation_introspector_1_expr91_line_808 = jackson_annotation_introspector_1_expr92_line_808
				? null
				: jackson_annotation_introspector_1_expr93_line_808;
		int PROBE_END_LINE_808 = 808;
		return jackson_annotation_introspector_1_expr91_line_808;
    }

    @Override
    public Boolean findSerializationSortAlphabetically(Annotated ann) {
        int PROBE_START_LINE_813 = 813;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3185_line_813 = ann;
		Boolean jackson_annotation_introspector_1_expr95_line_813 = _findSortAlpha(p_ann_3185_line_813);
		int PROBE_END_LINE_813 = 813;
		return jackson_annotation_introspector_1_expr95_line_813;
    }

    private final Boolean _findSortAlpha(Annotated ann) {
        int PROBE_START_LINE_817 = 817;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3186_line_817 = ann;
		JsonPropertyOrder jackson_annotation_introspector_1_expr96_line_817 = _findAnnotation(p_ann_3186_line_817,
				JsonPropertyOrder.class);
		int PROBE_END_LINE_817 = 817;
		JsonPropertyOrder order = jackson_annotation_introspector_1_expr96_line_817;
        int PROBE_START_LINE_821 = 823;
		com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_3187_line_821 = order;
		boolean jackson_annotation_introspector_1_expr100_line_821 = v_order_3187_line_821 != null;
		boolean jackson_annotation_introspector_1_expr99_line_821 = (jackson_annotation_introspector_1_expr100_line_821);
		boolean jackson_annotation_introspector_1_expr101_line_821 = true;
		if (jackson_annotation_introspector_1_expr99_line_821) {
			com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_3187_line_821_v1 = order;
			jackson_annotation_introspector_1_expr101_line_821 = v_order_3187_line_821_v1.alphabetic();
		}
		boolean jackson_annotation_introspector_1_expr98_line_821 = jackson_annotation_introspector_1_expr99_line_821
				&& jackson_annotation_introspector_1_expr101_line_821;
		int PROBE_END_LINE_821 = 823;
		/* 23-Jun-2015, tatu: as per [databind#840], let's only consider
         *  `true` to have any significance.
         */
        if (jackson_annotation_introspector_1_expr98_line_821) {
            return Boolean.TRUE;
        }
        return null;
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
            propName = PropertyName.construct(attrName);
        }
        // now, then, we need a placeholder for member (no real Field/Method):
        AnnotatedMember member = new VirtualAnnotatedMember(ac, ac.getRawType(),
                attrName, type);
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
                propName.getSimpleName(), type);
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
        JsonGetter jg = _findAnnotation(a, JsonGetter.class);
        if (jg != null) {
            return PropertyName.construct(jg.value());
        }
        JsonProperty pann = _findAnnotation(a, JsonProperty.class);
        if (pann != null) {
            return PropertyName.construct(pann.value());
        }
        if (_hasOneOf(a, ANNOTATIONS_TO_INFER_SER)) {
            return PropertyName.USE_DEFAULT;
        }
        return null;
    }

    @Override
    public boolean hasAsValueAnnotation(AnnotatedMethod am) {
        JsonValue ann = _findAnnotation(am, JsonValue.class);
        // value of 'false' means disabled...
        return (ann != null && ann.value());
    }

    /*
    /**********************************************************
    /* Deserialization: general annotations
    /**********************************************************
     */

    @Override
    public Object findDeserializer(Annotated a)
    {
        int PROBE_START_LINE_956 = 956;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3200_line_956 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr102_line_956 = _findAnnotation(p_a_3200_line_956,
				JsonDeserialize.class);
		int PROBE_END_LINE_956 = 956;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr102_line_956;
        int PROBE_START_LINE_957 = 963;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3201_line_957 = ann;
		boolean jackson_annotation_introspector_1_expr104_line_957 = v_ann_3201_line_957 != null;
		int PROBE_END_LINE_957 = 963;
		if (jackson_annotation_introspector_1_expr104_line_957) {
            @SuppressWarnings("rawtypes")
            Class<? extends JsonDeserializer> deserClass = ann.using();
            if (deserClass != JsonDeserializer.None.class) {
                return deserClass;
            }
        }
        return null;
    }

    @Override
    public Object findKeyDeserializer(Annotated a)
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
    public Object findContentDeserializer(Annotated a)
    {
        int PROBE_START_LINE_983 = 983;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3203_line_983 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr105_line_983 = _findAnnotation(p_a_3203_line_983,
				JsonDeserialize.class);
		int PROBE_END_LINE_983 = 983;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr105_line_983;
        int PROBE_START_LINE_984 = 990;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3204_line_984 = ann;
		boolean jackson_annotation_introspector_1_expr107_line_984 = v_ann_3204_line_984 != null;
		int PROBE_END_LINE_984 = 990;
		if (jackson_annotation_introspector_1_expr107_line_984) {
            @SuppressWarnings("rawtypes")
            Class<? extends JsonDeserializer> deserClass = ann.contentUsing();
            if (deserClass != JsonDeserializer.None.class) {
                return deserClass;
            }
        }
        return null;
    }

    @Override
    public Object findDeserializationConverter(Annotated a)
    {
        int PROBE_START_LINE_997 = 997;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3205_line_997 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr108_line_997 = _findAnnotation(p_a_3205_line_997,
				JsonDeserialize.class);
		int PROBE_END_LINE_997 = 997;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr108_line_997;
        int PROBE_START_LINE_998 = 998;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3206_line_998 = ann;
		boolean jackson_annotation_introspector_1_expr113_line_998 = v_ann_3206_line_998 == null;
		boolean jackson_annotation_introspector_1_expr111_line_998 = (jackson_annotation_introspector_1_expr113_line_998);
		Class<?> jackson_annotation_introspector_1_expr112_line_998 = null;
		if (!jackson_annotation_introspector_1_expr111_line_998) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3206_line_998_v1 = ann;
			Class<? extends com.fasterxml.jackson.databind.util.Converter> jackson_annotation_introspector_1_expr114_line_998 = v_ann_3206_line_998_v1
					.converter();
			jackson_annotation_introspector_1_expr112_line_998 = _classIfExplicit(
					jackson_annotation_introspector_1_expr114_line_998, Converter.None.class);
		}
		Object jackson_annotation_introspector_1_expr110_line_998 = jackson_annotation_introspector_1_expr111_line_998
				? null
				: jackson_annotation_introspector_1_expr112_line_998;
		int PROBE_END_LINE_998 = 998;
		return jackson_annotation_introspector_1_expr110_line_998;
    }

    @Override
    public Object findDeserializationContentConverter(AnnotatedMember a)
    {
        int PROBE_START_LINE_1004 = 1004;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_a_3207_line_1004 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr116_line_1004 = _findAnnotation(p_a_3207_line_1004,
				JsonDeserialize.class);
		int PROBE_END_LINE_1004 = 1004;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr116_line_1004;
        int PROBE_START_LINE_1005 = 1005;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3208_line_1005 = ann;
		boolean jackson_annotation_introspector_1_expr121_line_1005 = v_ann_3208_line_1005 == null;
		boolean jackson_annotation_introspector_1_expr119_line_1005 = (jackson_annotation_introspector_1_expr121_line_1005);
		Class<?> jackson_annotation_introspector_1_expr120_line_1005 = null;
		if (!jackson_annotation_introspector_1_expr119_line_1005) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3208_line_1005_v1 = ann;
			Class<? extends com.fasterxml.jackson.databind.util.Converter> jackson_annotation_introspector_1_expr122_line_1005 = v_ann_3208_line_1005_v1
					.contentConverter();
			jackson_annotation_introspector_1_expr120_line_1005 = _classIfExplicit(
					jackson_annotation_introspector_1_expr122_line_1005, Converter.None.class);
		}
		Object jackson_annotation_introspector_1_expr118_line_1005 = jackson_annotation_introspector_1_expr119_line_1005
				? null
				: jackson_annotation_introspector_1_expr120_line_1005;
		int PROBE_END_LINE_1005 = 1005;
		return jackson_annotation_introspector_1_expr118_line_1005;
    }

    /*
    /**********************************************************
    /* Deserialization: type modifications
    /**********************************************************
     */

    @Override
    @Deprecated
    public Class<?> findDeserializationContentType(Annotated am, JavaType baseContentType)
    {
        int PROBE_START_LINE_1018 = 1018;
		com.fasterxml.jackson.databind.introspect.Annotated p_am_3209_line_1018 = am;
		JsonDeserialize jackson_annotation_introspector_1_expr124_line_1018 = _findAnnotation(p_am_3209_line_1018,
				JsonDeserialize.class);
		int PROBE_END_LINE_1018 = 1018;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr124_line_1018;
        int PROBE_START_LINE_1019 = 1019;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3211_line_1019 = ann;
		boolean jackson_annotation_introspector_1_expr129_line_1019 = v_ann_3211_line_1019 == null;
		boolean jackson_annotation_introspector_1_expr127_line_1019 = (jackson_annotation_introspector_1_expr129_line_1019);
		Class<?> jackson_annotation_introspector_1_expr128_line_1019 = null;
		if (!jackson_annotation_introspector_1_expr127_line_1019) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3211_line_1019_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr130_line_1019 = v_ann_3211_line_1019_v1.contentAs();
			jackson_annotation_introspector_1_expr128_line_1019 = _classIfExplicit(
					jackson_annotation_introspector_1_expr130_line_1019);
		}
		Class<?> jackson_annotation_introspector_1_expr126_line_1019 = jackson_annotation_introspector_1_expr127_line_1019
				? null
				: jackson_annotation_introspector_1_expr128_line_1019;
		int PROBE_END_LINE_1019 = 1019;
		return jackson_annotation_introspector_1_expr126_line_1019;
    }
    
    @Deprecated
    @Override
    public Class<?> findDeserializationType(Annotated am, JavaType baseType) {
        int PROBE_START_LINE_1025 = 1025;
		com.fasterxml.jackson.databind.introspect.Annotated p_am_3212_line_1025 = am;
		JsonDeserialize jackson_annotation_introspector_1_expr131_line_1025 = _findAnnotation(p_am_3212_line_1025,
				JsonDeserialize.class);
		int PROBE_END_LINE_1025 = 1025;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr131_line_1025;
        int PROBE_START_LINE_1026 = 1026;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3214_line_1026 = ann;
		boolean jackson_annotation_introspector_1_expr136_line_1026 = v_ann_3214_line_1026 == null;
		boolean jackson_annotation_introspector_1_expr134_line_1026 = (jackson_annotation_introspector_1_expr136_line_1026);
		Class<?> jackson_annotation_introspector_1_expr135_line_1026 = null;
		if (!jackson_annotation_introspector_1_expr134_line_1026) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3214_line_1026_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr137_line_1026 = v_ann_3214_line_1026_v1.as();
			jackson_annotation_introspector_1_expr135_line_1026 = _classIfExplicit(
					jackson_annotation_introspector_1_expr137_line_1026);
		}
		Class<?> jackson_annotation_introspector_1_expr133_line_1026 = jackson_annotation_introspector_1_expr134_line_1026
				? null
				: jackson_annotation_introspector_1_expr135_line_1026;
		int PROBE_END_LINE_1026 = 1026;
		return jackson_annotation_introspector_1_expr133_line_1026;
    }

    @Override
    @Deprecated
    public Class<?> findDeserializationKeyType(Annotated am, JavaType baseKeyType) {
        JsonDeserialize ann = _findAnnotation(am, JsonDeserialize.class);
        return (ann == null) ? null : _classIfExplicit(ann.keyAs());
    }
    
    /*
    /**********************************************************
    /* Deserialization: Class annotations
    /**********************************************************
     */
    
    @Override
    public Object findValueInstantiator(AnnotatedClass ac)
    {
        int PROBE_START_LINE_1045 = 1045;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3217_line_1045 = ac;
		JsonValueInstantiator jackson_annotation_introspector_1_expr138_line_1045 = _findAnnotation(p_ac_3217_line_1045,
				JsonValueInstantiator.class);
		int PROBE_END_LINE_1045 = 1045;
		JsonValueInstantiator ann = jackson_annotation_introspector_1_expr138_line_1045;
        int PROBE_START_LINE_1047 = 1047;
		com.fasterxml.jackson.databind.annotation.JsonValueInstantiator v_ann_3218_line_1047 = ann;
		boolean jackson_annotation_introspector_1_expr143_line_1047 = v_ann_3218_line_1047 == null;
		boolean jackson_annotation_introspector_1_expr141_line_1047 = (jackson_annotation_introspector_1_expr143_line_1047);
		Class<? extends com.fasterxml.jackson.databind.deser.ValueInstantiator> jackson_annotation_introspector_1_expr142_line_1047 = null;
		if (!jackson_annotation_introspector_1_expr141_line_1047) {
			com.fasterxml.jackson.databind.annotation.JsonValueInstantiator v_ann_3218_line_1047_v1 = ann;
			jackson_annotation_introspector_1_expr142_line_1047 = v_ann_3218_line_1047_v1.value();
		}
		Object jackson_annotation_introspector_1_expr140_line_1047 = jackson_annotation_introspector_1_expr141_line_1047
				? null
				: jackson_annotation_introspector_1_expr142_line_1047;
		int PROBE_END_LINE_1047 = 1047;
		// no 'null' marker yet, so:
        return jackson_annotation_introspector_1_expr140_line_1047;
    }

    @Override
    public Class<?> findPOJOBuilder(AnnotatedClass ac)
    {
        int PROBE_START_LINE_1053 = 1053;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3219_line_1053 = ac;
		JsonDeserialize jackson_annotation_introspector_1_expr144_line_1053 = _findAnnotation(p_ac_3219_line_1053,
				JsonDeserialize.class);
		int PROBE_END_LINE_1053 = 1053;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr144_line_1053;
        int PROBE_START_LINE_1054 = 1054;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3220_line_1054 = ann;
		boolean jackson_annotation_introspector_1_expr149_line_1054 = v_ann_3220_line_1054 == null;
		boolean jackson_annotation_introspector_1_expr147_line_1054 = (jackson_annotation_introspector_1_expr149_line_1054);
		Class<?> jackson_annotation_introspector_1_expr148_line_1054 = null;
		if (!jackson_annotation_introspector_1_expr147_line_1054) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_3220_line_1054_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr150_line_1054 = v_ann_3220_line_1054_v1.builder();
			jackson_annotation_introspector_1_expr148_line_1054 = _classIfExplicit(
					jackson_annotation_introspector_1_expr150_line_1054);
		}
		Class<?> jackson_annotation_introspector_1_expr146_line_1054 = jackson_annotation_introspector_1_expr147_line_1054
				? null
				: jackson_annotation_introspector_1_expr148_line_1054;
		int PROBE_END_LINE_1054 = 1054;
		return jackson_annotation_introspector_1_expr146_line_1054;
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
        int PROBE_START_LINE_1075 = 1075;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3222_line_1075 = a;
		JsonSetter jackson_annotation_introspector_1_expr151_line_1075 = _findAnnotation(p_a_3222_line_1075,
				JsonSetter.class);
		int PROBE_END_LINE_1075 = 1075;
		// @JsonSetter has precedence over @JsonProperty, being more specific
        // @JsonDeserialize implies that there is a property, but no name
        JsonSetter js = jackson_annotation_introspector_1_expr151_line_1075;
        int PROBE_START_LINE_1076 = 1078;
		com.fasterxml.jackson.annotation.JsonSetter v_js_3223_line_1076 = js;
		boolean jackson_annotation_introspector_1_expr153_line_1076 = v_js_3223_line_1076 != null;
		int PROBE_END_LINE_1076 = 1078;
		if (jackson_annotation_introspector_1_expr153_line_1076) {
            return PropertyName.construct(js.value());
        }
        int PROBE_START_LINE_1079 = 1079;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3222_line_1079 = a;
		JsonProperty jackson_annotation_introspector_1_expr154_line_1079 = _findAnnotation(p_a_3222_line_1079,
				JsonProperty.class);
		int PROBE_END_LINE_1079 = 1079;
		JsonProperty pann = jackson_annotation_introspector_1_expr154_line_1079;
        int PROBE_START_LINE_1080 = 1082;
		com.fasterxml.jackson.annotation.JsonProperty v_pann_3224_line_1080 = pann;
		boolean jackson_annotation_introspector_1_expr156_line_1080 = v_pann_3224_line_1080 != null;
		int PROBE_END_LINE_1080 = 1082;
		if (jackson_annotation_introspector_1_expr156_line_1080) {
            return PropertyName.construct(pann.value());
        }
        int PROBE_START_LINE_1083 = 1085;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3222_line_1083 = a;
		Class<? extends java.lang.annotation.Annotation>[] f_annotations_to_infer_deser_3096_line_1083 = ANNOTATIONS_TO_INFER_DESER;
		boolean jackson_annotation_introspector_1_expr157_line_1083 = _hasOneOf(p_a_3222_line_1083,
				f_annotations_to_infer_deser_3096_line_1083);
		int PROBE_END_LINE_1083 = 1085;
		if (jackson_annotation_introspector_1_expr157_line_1083) {
            return PropertyName.USE_DEFAULT;
        }
        return null;
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
        /* No dedicated disabling; regular @JsonIgnore used
         * if needs to be ignored (handled separately
         */
        return _hasAnnotation(am, JsonAnyGetter.class);
    }

    @Override
    public boolean hasCreatorAnnotation(Annotated a)
    {
        int PROBE_START_LINE_1114 = 1114;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3227_line_1114 = a;
		JsonCreator jackson_annotation_introspector_1_expr158_line_1114 = _findAnnotation(p_a_3227_line_1114,
				JsonCreator.class);
		int PROBE_END_LINE_1114 = 1114;
		/* No dedicated disabling; regular @JsonIgnore used if needs to be
         * ignored (and if so, is handled prior to this method getting called)
         */
         JsonCreator ann = jackson_annotation_introspector_1_expr158_line_1114;
         int PROBE_START_LINE_1115 = 1117;
		com.fasterxml.jackson.annotation.JsonCreator v_ann_3228_line_1115 = ann;
		boolean jackson_annotation_introspector_1_expr160_line_1115 = v_ann_3228_line_1115 != null;
		int PROBE_END_LINE_1115 = 1117;
		if (jackson_annotation_introspector_1_expr160_line_1115) {
             return (ann.mode() != JsonCreator.Mode.DISABLED);
         }
         int PROBE_START_LINE_1120 = 1129;
		boolean f__cfg_constructor_properties_implies_creator_3101_line_1120 = _cfgConstructorPropertiesImpliesCreator;
		int PROBE_END_LINE_1120 = 1129;
		// 19-Apr-2016, tatu: As per [databind#1197], [databind#1122] (and some related),
         //    may or may not consider it a creator
         if (f__cfg_constructor_properties_implies_creator_3101_line_1120 ) {
             int PROBE_START_LINE_1121 = 1128;
			com.fasterxml.jackson.databind.introspect.Annotated p_a_3227_line_1121 = a;
			boolean jackson_annotation_introspector_1_expr161_line_1121 = p_a_3227_line_1121 instanceof AnnotatedConstructor;
			int PROBE_END_LINE_1121 = 1128;
			if (jackson_annotation_introspector_1_expr161_line_1121) {
                 int PROBE_START_LINE_1122 = 1127;
				com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3099_line_1122 = _java7Helper;
				boolean jackson_annotation_introspector_1_expr162_line_1122 = f__java_7helper_3099_line_1122 != null;
				int PROBE_END_LINE_1122 = 1127;
				if (jackson_annotation_introspector_1_expr162_line_1122) {
                     int PROBE_START_LINE_1123 = 1123;
					com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3099_line_1123 = _java7Helper;
					com.fasterxml.jackson.databind.introspect.Annotated p_a_3227_line_1123 = a;
					Boolean jackson_annotation_introspector_1_expr163_line_1123 = f__java_7helper_3099_line_1123
							.hasCreatorAnnotation(p_a_3227_line_1123);
					int PROBE_END_LINE_1123 = 1123;
					Boolean b = jackson_annotation_introspector_1_expr163_line_1123;
                     int PROBE_START_LINE_1124 = 1126;
					Boolean v_b_3229_line_1124 = b;
					boolean jackson_annotation_introspector_1_expr164_line_1124 = v_b_3229_line_1124 != null;
					int PROBE_END_LINE_1124 = 1126;
					if (jackson_annotation_introspector_1_expr164_line_1124) {
                         return b.booleanValue();
                     }
                 }
             }
         }
         return false;
    }

    @Override
    public JsonCreator.Mode findCreatorBinding(Annotated a) {
        int PROBE_START_LINE_1135 = 1135;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3230_line_1135 = a;
		JsonCreator jackson_annotation_introspector_1_expr165_line_1135 = _findAnnotation(p_a_3230_line_1135,
				JsonCreator.class);
		int PROBE_END_LINE_1135 = 1135;
		JsonCreator ann = jackson_annotation_introspector_1_expr165_line_1135;
        int PROBE_START_LINE_1136 = 1136;
		com.fasterxml.jackson.annotation.JsonCreator v_ann_3231_line_1136 = ann;
		boolean jackson_annotation_introspector_1_expr170_line_1136 = v_ann_3231_line_1136 == null;
		boolean jackson_annotation_introspector_1_expr168_line_1136 = (jackson_annotation_introspector_1_expr170_line_1136);
		com.fasterxml.jackson.annotation.JsonCreator.Mode jackson_annotation_introspector_1_expr169_line_1136 = null;
		if (!jackson_annotation_introspector_1_expr168_line_1136) {
			com.fasterxml.jackson.annotation.JsonCreator v_ann_3231_line_1136_v1 = ann;
			jackson_annotation_introspector_1_expr169_line_1136 = v_ann_3231_line_1136_v1.mode();
		}
		com.fasterxml.jackson.annotation.JsonCreator.Mode jackson_annotation_introspector_1_expr167_line_1136 = jackson_annotation_introspector_1_expr168_line_1136
				? null
				: jackson_annotation_introspector_1_expr169_line_1136;
		int PROBE_END_LINE_1136 = 1136;
		return jackson_annotation_introspector_1_expr167_line_1136;
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    protected boolean _isIgnorable(Annotated a)
    {
        int PROBE_START_LINE_1147 = 1147;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3232_line_1147 = a;
		JsonIgnore jackson_annotation_introspector_1_expr171_line_1147 = _findAnnotation(p_a_3232_line_1147,
				JsonIgnore.class);
		int PROBE_END_LINE_1147 = 1147;
		JsonIgnore ann = jackson_annotation_introspector_1_expr171_line_1147;
        int PROBE_START_LINE_1148 = 1150;
		com.fasterxml.jackson.annotation.JsonIgnore v_ann_3233_line_1148 = ann;
		boolean jackson_annotation_introspector_1_expr173_line_1148 = v_ann_3233_line_1148 != null;
		int PROBE_END_LINE_1148 = 1150;
		if (jackson_annotation_introspector_1_expr173_line_1148) {
            return ann.value();
        }
        int PROBE_START_LINE_1151 = 1156;
		com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3099_line_1151 = _java7Helper;
		boolean jackson_annotation_introspector_1_expr174_line_1151 = f__java_7helper_3099_line_1151 != null;
		int PROBE_END_LINE_1151 = 1156;
		if (jackson_annotation_introspector_1_expr174_line_1151) {
            int PROBE_START_LINE_1152 = 1152;
			com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3099_line_1152 = _java7Helper;
			com.fasterxml.jackson.databind.introspect.Annotated p_a_3232_line_1152 = a;
			Boolean jackson_annotation_introspector_1_expr175_line_1152 = f__java_7helper_3099_line_1152
					.findTransient(p_a_3232_line_1152);
			int PROBE_END_LINE_1152 = 1152;
			Boolean b = jackson_annotation_introspector_1_expr175_line_1152;
            int PROBE_START_LINE_1153 = 1155;
			Boolean v_b_3234_line_1153 = b;
			boolean jackson_annotation_introspector_1_expr176_line_1153 = v_b_3234_line_1153 != null;
			int PROBE_END_LINE_1153 = 1155;
			if (jackson_annotation_introspector_1_expr176_line_1153) {
                return b.booleanValue();
            }
        }
        return false;
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
            return PropertyName.construct(localName);
        }
        return PropertyName.construct(localName, namespace);
    }

    protected PropertyName _findConstructorName(Annotated a)
    {
        int PROBE_START_LINE_1184 = 1196;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3240_line_1184 = a;
		boolean jackson_annotation_introspector_1_expr177_line_1184 = p_a_3240_line_1184 instanceof AnnotatedParameter;
		int PROBE_END_LINE_1184 = 1196;
		if (jackson_annotation_introspector_1_expr177_line_1184) {
            AnnotatedParameter p = (AnnotatedParameter) a;
            AnnotatedWithParams ctor = p.getOwner();

            if (ctor != null) {
                if (_java7Helper != null) {
                    PropertyName name = _java7Helper.findConstructorName(p);
                    if (name != null) {
                        return name;
                    }
                }
            }
        }
        return null;
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
        int PROBE_START_LINE_1210 = 1210;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3242_line_1210 = ann;
		JsonTypeInfo jackson_annotation_introspector_1_expr178_line_1210 = _findAnnotation(p_ann_3242_line_1210,
				JsonTypeInfo.class);
		int PROBE_END_LINE_1210 = 1210;
		JsonTypeInfo info = jackson_annotation_introspector_1_expr178_line_1210;
        int PROBE_START_LINE_1211 = 1211;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3242_line_1211 = ann;
		JsonTypeResolver jackson_annotation_introspector_1_expr180_line_1211 = _findAnnotation(p_ann_3242_line_1211,
				JsonTypeResolver.class);
		int PROBE_END_LINE_1211 = 1211;
		JsonTypeResolver resAnn = jackson_annotation_introspector_1_expr180_line_1211;
        
        int PROBE_START_LINE_1213 = 1231;
		com.fasterxml.jackson.databind.annotation.JsonTypeResolver v_res_ann_3245_line_1213 = resAnn;
		boolean jackson_annotation_introspector_1_expr182_line_1213 = v_res_ann_3245_line_1213 != null;
		int PROBE_END_LINE_1213 = 1231;
		if (jackson_annotation_introspector_1_expr182_line_1213) {
            if (info == null) {
                return null;
            }
            /* let's not try to force access override (would need to pass
             * settings through if we did, since that's not doable on some
             * platforms)
             */
            b = config.typeResolverBuilderInstance(ann, resAnn.value());
        } else { // if not, use standard one, if indicated by annotations
            int PROBE_START_LINE_1223 = 1225;
			com.fasterxml.jackson.annotation.JsonTypeInfo v_info_3244_line_1223 = info;
			boolean jackson_annotation_introspector_1_expr183_line_1223 = v_info_3244_line_1223 == null;
			int PROBE_END_LINE_1223 = 1225;
			if (jackson_annotation_introspector_1_expr183_line_1223) {
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
        if (idRes != null) {
            idRes.init(baseType);
        }
        b = b.init(info.use(), idRes);
        /* 13-Aug-2011, tatu: One complication; external id
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

        // 08-Dec-2014, tatu: To deprecate `JsonTypeInfo.None` we need to use other placeholder(s);
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

    /*
    /**********************************************************
    /* Helper classes
    /**********************************************************
     */
}
