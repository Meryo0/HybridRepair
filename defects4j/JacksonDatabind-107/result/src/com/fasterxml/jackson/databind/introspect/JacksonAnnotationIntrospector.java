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
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.annotation.JsonMerge;
import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.databind.util.LRUMap;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver;
import com.fasterxml.jackson.databind.annotation.JsonTypeResolver;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonPropertyDescription;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.annotation.JacksonAnnotationsInside;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value;
import com.fasterxml.jackson.annotation.OptBoolean;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.annotation.JsonValueInstantiator;
import com.fasterxml.jackson.annotation.JsonAnySetter;
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
        JsonManagedReference.class,
        JsonMerge.class // since 2.9
    };

    // NOTE: loading of Java7 dependencies is encapsulated by handlers in Java7Support,
    //  here we do not really need any handling; but for extra-safety use try-catch
    private static final Java7Support _java7Helper;
    static {
        Java7Support x = null;
        try {
            int PROBE_START_LINE_68 = 68;
			com.fasterxml.jackson.databind.ext.Java7Support jackson_annotation_introspector_1_expr6_line_68 = Java7Support
					.instance();
			int PROBE_END_LINE_68 = 68;
			x = jackson_annotation_introspector_1_expr6_line_68;
        } catch (Throwable t) { }
        int PROBE_START_LINE_70 = 70;
		com.fasterxml.jackson.databind.ext.Java7Support v_x_3948_line_70 = x;
		int PROBE_END_LINE_70 = 70;
		_java7Helper = v_x_3948_line_70;
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
        int PROBE_START_LINE_158 = 158;
		java.lang.annotation.Annotation p_ann_3954_line_158 = ann;
		Class<?> jackson_annotation_introspector_1_expr9_line_158 = p_ann_3954_line_158.annotationType();
		int PROBE_END_LINE_158 = 158;
		// 22-Sep-2015, tatu: Caching here has modest effect on JavaSE, and only
        //   mostly in degenerate cases where introspection used more often than
        //   it should (like recreating ObjectMapper once per read/write).
        //   But it may be more beneficial on platforms like Android (should verify)
        Class<?> type = jackson_annotation_introspector_1_expr9_line_158;
        int PROBE_START_LINE_159 = 159;
		LRUMap<Class<?>, Boolean> f__annotations_inside_3951_line_159 = _annotationsInside;
		Class<?> v_type_3955_line_159 = type;
		Boolean jackson_annotation_introspector_1_expr10_line_159 = f__annotations_inside_3951_line_159
				.get(v_type_3955_line_159);
		int PROBE_END_LINE_159 = 159;
		Boolean b = jackson_annotation_introspector_1_expr10_line_159;
        int PROBE_START_LINE_160 = 163;
		Boolean v_b_3956_line_160 = b;
		boolean jackson_annotation_introspector_1_expr11_line_160 = v_b_3956_line_160 == null;
		int PROBE_END_LINE_160 = 163;
		if (jackson_annotation_introspector_1_expr11_line_160) {
            int PROBE_START_LINE_161 = 161;
			Class<?> v_type_3955_line_161 = type;
			com.fasterxml.jackson.annotation.JacksonAnnotationsInside jackson_annotation_introspector_1_expr14_line_161 = v_type_3955_line_161
					.getAnnotation(JacksonAnnotationsInside.class);
			boolean jackson_annotation_introspector_1_expr13_line_161 = jackson_annotation_introspector_1_expr14_line_161 != null;
			int PROBE_END_LINE_161 = 161;
			b = jackson_annotation_introspector_1_expr13_line_161;
            int PROBE_START_LINE_162 = 162;
			LRUMap<Class<?>, Boolean> f__annotations_inside_3951_line_162 = _annotationsInside;
			Class<?> v_type_3955_line_162 = type;
			Boolean v_b_3956_line_162 = b;
			int PROBE_END_LINE_162 = 162;
			f__annotations_inside_3951_line_162.putIfAbsent(v_type_3955_line_162, v_b_3956_line_162);
        }
        int PROBE_START_LINE_164 = 164;
		Boolean v_b_3956_line_164 = b;
		boolean jackson_annotation_introspector_1_expr17_line_164 = v_b_3956_line_164.booleanValue();
		int PROBE_END_LINE_164 = 164;
		return jackson_annotation_introspector_1_expr17_line_164;
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
    @Deprecated // since 2.8
    public String findEnumValue(Enum<?> value)
    {
        // 11-Jun-2015, tatu: As per [databind#677], need to allow explicit naming.
        //   Unfortunately cannot quite use standard AnnotatedClass here (due to various
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
        int PROBE_START_LINE_274 = 274;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3963_line_274 = a;
		JsonIgnoreProperties jackson_annotation_introspector_1_expr18_line_274 = _findAnnotation(p_a_3963_line_274,
				JsonIgnoreProperties.class);
		int PROBE_END_LINE_274 = 274;
		JsonIgnoreProperties v = jackson_annotation_introspector_1_expr18_line_274;
        int PROBE_START_LINE_275 = 277;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties v_v_3964_line_275 = v;
		boolean jackson_annotation_introspector_1_expr20_line_275 = v_v_3964_line_275 == null;
		int PROBE_END_LINE_275 = 277;
		if (jackson_annotation_introspector_1_expr20_line_275) {
            int PROBE_START_LINE_276 = 276;
			com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value jackson_annotation_introspector_1_expr21_line_276 = JsonIgnoreProperties.Value
					.empty();
			int PROBE_END_LINE_276 = 276;
			return jackson_annotation_introspector_1_expr21_line_276;
        }
        return JsonIgnoreProperties.Value.from(v);
    }

    @Override
    public Boolean isIgnorableType(AnnotatedClass ac) {
        int PROBE_START_LINE_283 = 283;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3965_line_283 = ac;
		JsonIgnoreType jackson_annotation_introspector_1_expr22_line_283 = _findAnnotation(p_ac_3965_line_283,
				JsonIgnoreType.class);
		int PROBE_END_LINE_283 = 283;
		JsonIgnoreType ignore = jackson_annotation_introspector_1_expr22_line_283;
        int PROBE_START_LINE_284 = 284;
		com.fasterxml.jackson.annotation.JsonIgnoreType v_ignore_3966_line_284 = ignore;
		boolean jackson_annotation_introspector_1_expr27_line_284 = v_ignore_3966_line_284 == null;
		boolean jackson_annotation_introspector_1_expr25_line_284 = (jackson_annotation_introspector_1_expr27_line_284);
		boolean jackson_annotation_introspector_1_expr26_line_284 = false;
		if (!jackson_annotation_introspector_1_expr25_line_284) {
			com.fasterxml.jackson.annotation.JsonIgnoreType v_ignore_3966_line_284_v1 = ignore;
			jackson_annotation_introspector_1_expr26_line_284 = v_ignore_3966_line_284_v1.value();
		}
		Boolean jackson_annotation_introspector_1_expr24_line_284 = jackson_annotation_introspector_1_expr25_line_284
				? null
				: jackson_annotation_introspector_1_expr26_line_284;
		int PROBE_END_LINE_284 = 284;
		return jackson_annotation_introspector_1_expr24_line_284;
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
        int PROBE_START_LINE_303 = 303;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3968_line_303 = ac;
		JsonNaming jackson_annotation_introspector_1_expr28_line_303 = _findAnnotation(p_ac_3968_line_303,
				JsonNaming.class);
		int PROBE_END_LINE_303 = 303;
		JsonNaming ann = jackson_annotation_introspector_1_expr28_line_303;
        int PROBE_START_LINE_304 = 304;
		com.fasterxml.jackson.databind.annotation.JsonNaming v_ann_3969_line_304 = ann;
		boolean jackson_annotation_introspector_1_expr33_line_304 = v_ann_3969_line_304 == null;
		boolean jackson_annotation_introspector_1_expr31_line_304 = (jackson_annotation_introspector_1_expr33_line_304);
		Class<? extends com.fasterxml.jackson.databind.PropertyNamingStrategy> jackson_annotation_introspector_1_expr32_line_304 = null;
		if (!jackson_annotation_introspector_1_expr31_line_304) {
			com.fasterxml.jackson.databind.annotation.JsonNaming v_ann_3969_line_304_v1 = ann;
			jackson_annotation_introspector_1_expr32_line_304 = v_ann_3969_line_304_v1.value();
		}
		Object jackson_annotation_introspector_1_expr30_line_304 = jackson_annotation_introspector_1_expr31_line_304
				? null
				: jackson_annotation_introspector_1_expr32_line_304;
		int PROBE_END_LINE_304 = 304;
		return jackson_annotation_introspector_1_expr30_line_304;
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
        int PROBE_START_LINE_323 = 323;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_3971_line_323 = ac;
		JsonAutoDetect jackson_annotation_introspector_1_expr34_line_323 = _findAnnotation(p_ac_3971_line_323,
				JsonAutoDetect.class);
		int PROBE_END_LINE_323 = 323;
		JsonAutoDetect ann = jackson_annotation_introspector_1_expr34_line_323;
        int PROBE_START_LINE_324 = 324;
		com.fasterxml.jackson.annotation.JsonAutoDetect v_ann_3973_line_324 = ann;
		boolean jackson_annotation_introspector_1_expr39_line_324 = v_ann_3973_line_324 == null;
		boolean jackson_annotation_introspector_1_expr37_line_324 = (jackson_annotation_introspector_1_expr39_line_324);
		VisibilityChecker<?> p_checker_3972_line_324 = null;
		VisibilityChecker<?> jackson_annotation_introspector_1_expr38_line_324 = null;
		if (jackson_annotation_introspector_1_expr37_line_324) {
			p_checker_3972_line_324 = checker;
		} else {
			VisibilityChecker<?> p_checker_3972_line_324_v1 = checker;
			com.fasterxml.jackson.annotation.JsonAutoDetect v_ann_3973_line_324_v1 = ann;
			jackson_annotation_introspector_1_expr38_line_324 = p_checker_3972_line_324_v1.with(v_ann_3973_line_324_v1);
		}
		VisibilityChecker<?> jackson_annotation_introspector_1_expr36_line_324 = jackson_annotation_introspector_1_expr37_line_324
				? p_checker_3972_line_324
				: jackson_annotation_introspector_1_expr38_line_324;
		int PROBE_END_LINE_324 = 324;
		return jackson_annotation_introspector_1_expr36_line_324;
    }

    /*
    /**********************************************************
    /* General member (field, method/constructor) annotations
    /**********************************************************
     */

    @Override
    public String findImplicitPropertyName(AnnotatedMember m) {
        int PROBE_START_LINE_335 = 335;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_3974_line_335 = m;
		PropertyName jackson_annotation_introspector_1_expr40_line_335 = _findConstructorName(p_m_3974_line_335);
		int PROBE_END_LINE_335 = 335;
		PropertyName n = jackson_annotation_introspector_1_expr40_line_335;
        int PROBE_START_LINE_336 = 336;
		com.fasterxml.jackson.databind.PropertyName v_n_3975_line_336 = n;
		boolean jackson_annotation_introspector_1_expr44_line_336 = v_n_3975_line_336 == null;
		boolean jackson_annotation_introspector_1_expr42_line_336 = (jackson_annotation_introspector_1_expr44_line_336);
		String jackson_annotation_introspector_1_expr43_line_336 = null;
		if (!jackson_annotation_introspector_1_expr42_line_336) {
			com.fasterxml.jackson.databind.PropertyName v_n_3975_line_336_v1 = n;
			jackson_annotation_introspector_1_expr43_line_336 = v_n_3975_line_336_v1.getSimpleName();
		}
		String jackson_annotation_introspector_1_expr41_line_336 = jackson_annotation_introspector_1_expr42_line_336
				? null
				: jackson_annotation_introspector_1_expr43_line_336;
		int PROBE_END_LINE_336 = 336;
		return jackson_annotation_introspector_1_expr41_line_336;
    }

    @Override
    public List<PropertyName> findPropertyAliases(Annotated m) {
        int PROBE_START_LINE_341 = 341;
		com.fasterxml.jackson.databind.introspect.Annotated p_m_3976_line_341 = m;
		JsonAlias jackson_annotation_introspector_1_expr45_line_341 = _findAnnotation(p_m_3976_line_341,
				JsonAlias.class);
		int PROBE_END_LINE_341 = 341;
		JsonAlias ann = jackson_annotation_introspector_1_expr45_line_341;
        int PROBE_START_LINE_342 = 344;
		com.fasterxml.jackson.annotation.JsonAlias v_ann_3977_line_342 = ann;
		boolean jackson_annotation_introspector_1_expr47_line_342 = v_ann_3977_line_342 == null;
		int PROBE_END_LINE_342 = 344;
		if (jackson_annotation_introspector_1_expr47_line_342) {
            return null;
        }
        String[] strs = ann.value();
        final int len = strs.length;
        if (len == 0) {
            return Collections.emptyList();
        }
        List<PropertyName> result = new ArrayList<>(len);
        for (int i = 0; i < len; ++i) {
            result.add(PropertyName.construct(strs[i]));
        }
        return result;
    }

    @Override
    public boolean hasIgnoreMarker(AnnotatedMember m) {
        int PROBE_START_LINE_359 = 359;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_3978_line_359 = m;
		boolean jackson_annotation_introspector_1_expr48_line_359 = _isIgnorable(p_m_3978_line_359);
		int PROBE_END_LINE_359 = 359;
		return jackson_annotation_introspector_1_expr48_line_359;
    }

    @Override
    public Boolean hasRequiredMarker(AnnotatedMember m)
    {
        int PROBE_START_LINE_365 = 365;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_3979_line_365 = m;
		JsonProperty jackson_annotation_introspector_1_expr49_line_365 = _findAnnotation(p_m_3979_line_365,
				JsonProperty.class);
		int PROBE_END_LINE_365 = 365;
		JsonProperty ann = jackson_annotation_introspector_1_expr49_line_365;
        int PROBE_START_LINE_366 = 368;
		com.fasterxml.jackson.annotation.JsonProperty v_ann_3980_line_366 = ann;
		boolean jackson_annotation_introspector_1_expr51_line_366 = v_ann_3980_line_366 != null;
		int PROBE_END_LINE_366 = 368;
		if (jackson_annotation_introspector_1_expr51_line_366) {
            return ann.required();
        }
        return null;
    }

    @Override
    public JsonProperty.Access findPropertyAccess(Annotated m) {
        int PROBE_START_LINE_374 = 374;
		com.fasterxml.jackson.databind.introspect.Annotated p_m_3981_line_374 = m;
		JsonProperty jackson_annotation_introspector_1_expr52_line_374 = _findAnnotation(p_m_3981_line_374,
				JsonProperty.class);
		int PROBE_END_LINE_374 = 374;
		JsonProperty ann = jackson_annotation_introspector_1_expr52_line_374;
        int PROBE_START_LINE_375 = 377;
		com.fasterxml.jackson.annotation.JsonProperty v_ann_3982_line_375 = ann;
		boolean jackson_annotation_introspector_1_expr54_line_375 = v_ann_3982_line_375 != null;
		int PROBE_END_LINE_375 = 377;
		if (jackson_annotation_introspector_1_expr54_line_375) {
            return ann.access();
        }
        return null;
    }

    @Override
    public String findPropertyDescription(Annotated ann) {
        int PROBE_START_LINE_383 = 383;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3983_line_383 = ann;
		JsonPropertyDescription jackson_annotation_introspector_1_expr55_line_383 = _findAnnotation(p_ann_3983_line_383,
				JsonPropertyDescription.class);
		int PROBE_END_LINE_383 = 383;
		JsonPropertyDescription desc = jackson_annotation_introspector_1_expr55_line_383;
        int PROBE_START_LINE_384 = 384;
		com.fasterxml.jackson.annotation.JsonPropertyDescription v_desc_3984_line_384 = desc;
		boolean jackson_annotation_introspector_1_expr60_line_384 = v_desc_3984_line_384 == null;
		boolean jackson_annotation_introspector_1_expr58_line_384 = (jackson_annotation_introspector_1_expr60_line_384);
		String jackson_annotation_introspector_1_expr59_line_384 = null;
		if (!jackson_annotation_introspector_1_expr58_line_384) {
			com.fasterxml.jackson.annotation.JsonPropertyDescription v_desc_3984_line_384_v1 = desc;
			jackson_annotation_introspector_1_expr59_line_384 = v_desc_3984_line_384_v1.value();
		}
		String jackson_annotation_introspector_1_expr57_line_384 = jackson_annotation_introspector_1_expr58_line_384
				? null
				: jackson_annotation_introspector_1_expr59_line_384;
		int PROBE_END_LINE_384 = 384;
		return jackson_annotation_introspector_1_expr57_line_384;
    }

    @Override
    public Integer findPropertyIndex(Annotated ann) {
        int PROBE_START_LINE_389 = 389;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3985_line_389 = ann;
		JsonProperty jackson_annotation_introspector_1_expr61_line_389 = _findAnnotation(p_ann_3985_line_389,
				JsonProperty.class);
		int PROBE_END_LINE_389 = 389;
		JsonProperty prop = jackson_annotation_introspector_1_expr61_line_389;
        int PROBE_START_LINE_390 = 395;
		com.fasterxml.jackson.annotation.JsonProperty v_prop_3986_line_390 = prop;
		boolean jackson_annotation_introspector_1_expr63_line_390 = v_prop_3986_line_390 != null;
		int PROBE_END_LINE_390 = 395;
		if (jackson_annotation_introspector_1_expr63_line_390) {
          int ix = prop.index();
          if (ix != JsonProperty.INDEX_UNKNOWN) {
               return Integer.valueOf(ix);
          }
        }
        return null;
    }
    
    @Override
    public String findPropertyDefaultValue(Annotated ann) {
        int PROBE_START_LINE_401 = 401;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3987_line_401 = ann;
		JsonProperty jackson_annotation_introspector_1_expr64_line_401 = _findAnnotation(p_ann_3987_line_401,
				JsonProperty.class);
		int PROBE_END_LINE_401 = 401;
		JsonProperty prop = jackson_annotation_introspector_1_expr64_line_401;
        int PROBE_START_LINE_402 = 404;
		com.fasterxml.jackson.annotation.JsonProperty v_prop_3988_line_402 = prop;
		boolean jackson_annotation_introspector_1_expr66_line_402 = v_prop_3988_line_402 == null;
		int PROBE_END_LINE_402 = 404;
		if (jackson_annotation_introspector_1_expr66_line_402) {
            return null;
        }
        String str = prop.defaultValue();
        // Since annotations do not allow nulls, need to assume empty means "none"
        return str.isEmpty() ? null : str;
    }
    
    @Override
    public JsonFormat.Value findFormat(Annotated ann) {
        int PROBE_START_LINE_412 = 412;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_3989_line_412 = ann;
		JsonFormat jackson_annotation_introspector_1_expr67_line_412 = _findAnnotation(p_ann_3989_line_412,
				JsonFormat.class);
		int PROBE_END_LINE_412 = 412;
		JsonFormat f = jackson_annotation_introspector_1_expr67_line_412;
        int PROBE_START_LINE_413 = 413;
		com.fasterxml.jackson.annotation.JsonFormat v_f_3990_line_413 = f;
		boolean jackson_annotation_introspector_1_expr72_line_413 = v_f_3990_line_413 == null;
		boolean jackson_annotation_introspector_1_expr70_line_413 = (jackson_annotation_introspector_1_expr72_line_413);
		com.fasterxml.jackson.annotation.JsonFormat v_f_3990_line_413_v1 = null;
		if (!jackson_annotation_introspector_1_expr70_line_413) {
			v_f_3990_line_413_v1 = f;
		}
		com.fasterxml.jackson.annotation.JsonFormat.Value jackson_annotation_introspector_1_expr69_line_413 = jackson_annotation_introspector_1_expr70_line_413
				? null
				: new JsonFormat.Value(v_f_3990_line_413_v1);
		int PROBE_END_LINE_413 = 413;
		return jackson_annotation_introspector_1_expr69_line_413;
    }

    @Override        
    public ReferenceProperty findReferenceType(AnnotatedMember member)
    {
        int PROBE_START_LINE_419 = 419;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3991_line_419 = member;
		JsonManagedReference jackson_annotation_introspector_1_expr73_line_419 = _findAnnotation(p_member_3991_line_419,
				JsonManagedReference.class);
		int PROBE_END_LINE_419 = 419;
		JsonManagedReference ref1 = jackson_annotation_introspector_1_expr73_line_419;
        int PROBE_START_LINE_420 = 422;
		com.fasterxml.jackson.annotation.JsonManagedReference v_ref_1_3992_line_420 = ref1;
		boolean jackson_annotation_introspector_1_expr75_line_420 = v_ref_1_3992_line_420 != null;
		int PROBE_END_LINE_420 = 422;
		if (jackson_annotation_introspector_1_expr75_line_420) {
            return AnnotationIntrospector.ReferenceProperty.managed(ref1.value());
        }
        int PROBE_START_LINE_423 = 423;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3991_line_423 = member;
		JsonBackReference jackson_annotation_introspector_1_expr76_line_423 = _findAnnotation(p_member_3991_line_423,
				JsonBackReference.class);
		int PROBE_END_LINE_423 = 423;
		JsonBackReference ref2 = jackson_annotation_introspector_1_expr76_line_423;
        int PROBE_START_LINE_424 = 426;
		com.fasterxml.jackson.annotation.JsonBackReference v_ref_2_3993_line_424 = ref2;
		boolean jackson_annotation_introspector_1_expr78_line_424 = v_ref_2_3993_line_424 != null;
		int PROBE_END_LINE_424 = 426;
		if (jackson_annotation_introspector_1_expr78_line_424) {
            return AnnotationIntrospector.ReferenceProperty.back(ref2.value());
        }
        return null;
    }

    @Override
    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember member)
    {
        int PROBE_START_LINE_433 = 433;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3994_line_433 = member;
		JsonUnwrapped jackson_annotation_introspector_1_expr79_line_433 = _findAnnotation(p_member_3994_line_433,
				JsonUnwrapped.class);
		int PROBE_END_LINE_433 = 433;
		JsonUnwrapped ann = jackson_annotation_introspector_1_expr79_line_433;
        int PROBE_START_LINE_436 = 438;
		com.fasterxml.jackson.annotation.JsonUnwrapped v_ann_3995_line_436 = ann;
		boolean jackson_annotation_introspector_1_expr82_line_436 = v_ann_3995_line_436 == null;
		boolean jackson_annotation_introspector_1_expr83_line_436 = false;
		if (!jackson_annotation_introspector_1_expr82_line_436) {
			com.fasterxml.jackson.annotation.JsonUnwrapped v_ann_3995_line_436_v1 = ann;
			boolean jackson_annotation_introspector_1_expr84_line_436 = v_ann_3995_line_436_v1.enabled();
			jackson_annotation_introspector_1_expr83_line_436 = !jackson_annotation_introspector_1_expr84_line_436;
		}
		boolean jackson_annotation_introspector_1_expr81_line_436 = jackson_annotation_introspector_1_expr82_line_436
				|| jackson_annotation_introspector_1_expr83_line_436;
		int PROBE_END_LINE_436 = 438;
		// if not enabled, just means annotation is not enabled; not necessarily
        // that unwrapping should not be done (relevant when using chained introspectors)
        if (jackson_annotation_introspector_1_expr81_line_436) {
            return null;
        }
        String prefix = ann.prefix();
        String suffix = ann.suffix();
        return NameTransformer.simpleTransformer(prefix, suffix);
    }

    @Override // since 2.9
    public JacksonInject.Value findInjectableValue(AnnotatedMember m) {
        int PROBE_START_LINE_446 = 446;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_3996_line_446 = m;
		JacksonInject jackson_annotation_introspector_1_expr85_line_446 = _findAnnotation(p_m_3996_line_446,
				JacksonInject.class);
		int PROBE_END_LINE_446 = 446;
		JacksonInject ann = jackson_annotation_introspector_1_expr85_line_446;
        int PROBE_START_LINE_447 = 449;
		com.fasterxml.jackson.annotation.JacksonInject v_ann_3997_line_447 = ann;
		boolean jackson_annotation_introspector_1_expr87_line_447 = v_ann_3997_line_447 == null;
		int PROBE_END_LINE_447 = 449;
		if (jackson_annotation_introspector_1_expr87_line_447) {
            return null;
        }
        // Empty String means that we should use name of declared value class.
        JacksonInject.Value v = JacksonInject.Value.from(ann);
        if (!v.hasId()) {
            Object id;
            // slight complication; for setters, type 
            if (!(m instanceof AnnotatedMethod)) {
                id = m.getRawType().getName();
            } else {
                AnnotatedMethod am = (AnnotatedMethod) m;
                if (am.getParameterCount() == 0) { // getter
                    id = m.getRawType().getName();
                } else { // setter
                    id = am.getRawParameterType(0).getName();
                }
            }
            v = v.withId(id);
        }
        return v;
    }

    @Override
    @Deprecated // since 2.9
    public Object findInjectableValueId(AnnotatedMember m) {
        JacksonInject.Value v = findInjectableValue(m);
        return (v == null) ? null : v.getId();
    }

    @Override
    public Class<?>[] findViews(Annotated a)
    {
        int PROBE_START_LINE_480 = 480;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_3999_line_480 = a;
		JsonView jackson_annotation_introspector_1_expr88_line_480 = _findAnnotation(p_a_3999_line_480, JsonView.class);
		int PROBE_END_LINE_480 = 480;
		JsonView ann = jackson_annotation_introspector_1_expr88_line_480;
        int PROBE_START_LINE_481 = 481;
		com.fasterxml.jackson.annotation.JsonView v_ann_4000_line_481 = ann;
		boolean jackson_annotation_introspector_1_expr93_line_481 = v_ann_4000_line_481 == null;
		boolean jackson_annotation_introspector_1_expr91_line_481 = (jackson_annotation_introspector_1_expr93_line_481);
		Class<?>[] jackson_annotation_introspector_1_expr92_line_481 = null;
		if (!jackson_annotation_introspector_1_expr91_line_481) {
			com.fasterxml.jackson.annotation.JsonView v_ann_4000_line_481_v1 = ann;
			jackson_annotation_introspector_1_expr92_line_481 = v_ann_4000_line_481_v1.value();
		}
		Class<?>[] jackson_annotation_introspector_1_expr90_line_481 = jackson_annotation_introspector_1_expr91_line_481
				? null
				: jackson_annotation_introspector_1_expr92_line_481;
		int PROBE_END_LINE_481 = 481;
		return jackson_annotation_introspector_1_expr90_line_481;
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
		MapperConfig<?> p_config_4004_line_522 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_4005_line_522 = ac;
		com.fasterxml.jackson.databind.JavaType p_base_type_4006_line_522 = baseType;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr94_line_522 = _findTypeResolver(
				p_config_4004_line_522, p_ac_4005_line_522, p_base_type_4006_line_522);
		int PROBE_END_LINE_522 = 522;
		return jackson_annotation_introspector_1_expr94_line_522;
    }

    @Override
    public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> config,
            AnnotatedMember am, JavaType baseType)
    {
        int PROBE_START_LINE_533 = 535;
		com.fasterxml.jackson.databind.JavaType p_base_type_4009_line_533 = baseType;
		boolean jackson_annotation_introspector_1_expr96_line_533 = p_base_type_4009_line_533.isContainerType();
		boolean jackson_annotation_introspector_1_expr97_line_533 = false;
		if (!jackson_annotation_introspector_1_expr96_line_533) {
			com.fasterxml.jackson.databind.JavaType p_base_type_4009_line_533_v1 = baseType;
			jackson_annotation_introspector_1_expr97_line_533 = p_base_type_4009_line_533_v1.isReferenceType();
		}
		boolean jackson_annotation_introspector_1_expr95_line_533 = jackson_annotation_introspector_1_expr96_line_533
				|| jackson_annotation_introspector_1_expr97_line_533;
		int PROBE_END_LINE_533 = 535;
		/* As per definition of @JsonTypeInfo, should only apply to contents of container
         * (collection, map) types, not container types themselves:
         */
        // 17-Apr-2016, tatu: For 2.7.4 make sure ReferenceType also included
        if (jackson_annotation_introspector_1_expr95_line_533) {
            return null;
        }
        int PROBE_START_LINE_537 = 537;
		MapperConfig<?> p_config_4007_line_537 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_am_4008_line_537 = am;
		com.fasterxml.jackson.databind.JavaType p_base_type_4009_line_537 = baseType;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr98_line_537 = _findTypeResolver(
				p_config_4007_line_537, p_am_4008_line_537, p_base_type_4009_line_537);
		int PROBE_END_LINE_537 = 537;
		// No per-member type overrides (yet)
        return jackson_annotation_introspector_1_expr98_line_537;
    }

    @Override
    public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> config,
            AnnotatedMember am, JavaType containerType)
    {
        int PROBE_START_LINE_547 = 549;
		com.fasterxml.jackson.databind.JavaType p_container_type_4012_line_547 = containerType;
		com.fasterxml.jackson.databind.JavaType jackson_annotation_introspector_1_expr100_line_547 = p_container_type_4012_line_547
				.getContentType();
		boolean jackson_annotation_introspector_1_expr99_line_547 = jackson_annotation_introspector_1_expr100_line_547 == null;
		int PROBE_END_LINE_547 = 549;
		/* First: let's ensure property is a container type: caller should have
         * verified but just to be sure
         */
        if (jackson_annotation_introspector_1_expr99_line_547) {
            throw new IllegalArgumentException("Must call method with a container or reference type (got "+containerType+")");
        }
        int PROBE_START_LINE_550 = 550;
		MapperConfig<?> p_config_4010_line_550 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_am_4011_line_550 = am;
		com.fasterxml.jackson.databind.JavaType p_container_type_4012_line_550 = containerType;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr101_line_550 = _findTypeResolver(
				p_config_4010_line_550, p_am_4011_line_550, p_container_type_4012_line_550);
		int PROBE_END_LINE_550 = 550;
		return jackson_annotation_introspector_1_expr101_line_550;
    }
    
    @Override
    public List<NamedType> findSubtypes(Annotated a)
    {
        int PROBE_START_LINE_556 = 556;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4013_line_556 = a;
		JsonSubTypes jackson_annotation_introspector_1_expr102_line_556 = _findAnnotation(p_a_4013_line_556,
				JsonSubTypes.class);
		int PROBE_END_LINE_556 = 556;
		JsonSubTypes t = jackson_annotation_introspector_1_expr102_line_556;
        int PROBE_START_LINE_557 = 557;
		com.fasterxml.jackson.annotation.JsonSubTypes v_t_4014_line_557 = t;
		boolean jackson_annotation_introspector_1_expr104_line_557 = v_t_4014_line_557 == null;
		int PROBE_END_LINE_557 = 557;
		if (jackson_annotation_introspector_1_expr104_line_557) return null;
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
        int PROBE_START_LINE_569 = 569;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_4015_line_569 = ac;
		JsonTypeName jackson_annotation_introspector_1_expr105_line_569 = _findAnnotation(p_ac_4015_line_569,
				JsonTypeName.class);
		int PROBE_END_LINE_569 = 569;
		JsonTypeName tn = jackson_annotation_introspector_1_expr105_line_569;
        int PROBE_START_LINE_570 = 570;
		com.fasterxml.jackson.annotation.JsonTypeName v_tn_4016_line_570 = tn;
		boolean jackson_annotation_introspector_1_expr110_line_570 = v_tn_4016_line_570 == null;
		boolean jackson_annotation_introspector_1_expr108_line_570 = (jackson_annotation_introspector_1_expr110_line_570);
		String jackson_annotation_introspector_1_expr109_line_570 = null;
		if (!jackson_annotation_introspector_1_expr108_line_570) {
			com.fasterxml.jackson.annotation.JsonTypeName v_tn_4016_line_570_v1 = tn;
			jackson_annotation_introspector_1_expr109_line_570 = v_tn_4016_line_570_v1.value();
		}
		String jackson_annotation_introspector_1_expr107_line_570 = jackson_annotation_introspector_1_expr108_line_570
				? null
				: jackson_annotation_introspector_1_expr109_line_570;
		int PROBE_END_LINE_570 = 570;
		return jackson_annotation_introspector_1_expr107_line_570;
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
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_4018_line_586 = ann;
		JsonIdentityInfo jackson_annotation_introspector_1_expr111_line_586 = _findAnnotation(p_ann_4018_line_586,
				JsonIdentityInfo.class);
		int PROBE_END_LINE_586 = 586;
		JsonIdentityInfo info = jackson_annotation_introspector_1_expr111_line_586;
        int PROBE_START_LINE_587 = 589;
		com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_4019_line_587 = info;
		boolean jackson_annotation_introspector_1_expr114_line_587 = v_info_4019_line_587 == null;
		boolean jackson_annotation_introspector_1_expr115_line_587 = false;
		if (!jackson_annotation_introspector_1_expr114_line_587) {
			com.fasterxml.jackson.annotation.JsonIdentityInfo v_info_4019_line_587_v1 = info;
			Class<? extends ObjectIdGenerator<?>> jackson_annotation_introspector_1_expr116_line_587 = v_info_4019_line_587_v1
					.generator();
			jackson_annotation_introspector_1_expr115_line_587 = jackson_annotation_introspector_1_expr116_line_587 == ObjectIdGenerators.None.class;
		}
		boolean jackson_annotation_introspector_1_expr113_line_587 = jackson_annotation_introspector_1_expr114_line_587
				|| jackson_annotation_introspector_1_expr115_line_587;
		int PROBE_END_LINE_587 = 589;
		if (jackson_annotation_introspector_1_expr113_line_587) {
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
    public JsonInclude.Value findPropertyInclusion(Annotated a)
    {
        JsonInclude inc = _findAnnotation(a, JsonInclude.class);
        JsonInclude.Value value = (inc == null) ? JsonInclude.Value.empty() : JsonInclude.Value.from(inc);

        // only consider deprecated variant if we didn't have non-deprecated one:
        if (value.getValueInclusion() == JsonInclude.Include.USE_DEFAULTS) {
            value = _refinePropertyInclusion(a, value);
        }
        return value;
    }

    @SuppressWarnings("deprecation")
    private JsonInclude.Value _refinePropertyInclusion(Annotated a, JsonInclude.Value value) {
        JsonSerialize ann = _findAnnotation(a, JsonSerialize.class);
        if (ann != null) {
            switch (ann.include()) {
            case ALWAYS:
                return value.withValueInclusion(JsonInclude.Include.ALWAYS);
            case NON_NULL:
                return value.withValueInclusion(JsonInclude.Include.NON_NULL);
            case NON_DEFAULT:
                return value.withValueInclusion(JsonInclude.Include.NON_DEFAULT);
            case NON_EMPTY:
                return value.withValueInclusion(JsonInclude.Include.NON_EMPTY);
            case DEFAULT_INCLUSION:
            default:
            }
        }
        return value;
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
    /* Serialization: type refinements
    /**********************************************************
     */
    
    @Override
    public JavaType refineSerializationType(final MapperConfig<?> config,
            final Annotated a, final JavaType baseType) throws JsonMappingException
    {
        JavaType type = baseType;
        final TypeFactory tf = config.getTypeFactory();

        final JsonSerialize jsonSer = _findAnnotation(a, JsonSerialize.class);
        
        // Ok: start by refining the main type itself; common to all types

        final Class<?> serClass = (jsonSer == null) ? null : _classIfExplicit(jsonSer.as());
        if (serClass != null) {
            if (type.hasRawClass(serClass)) {
                // 30-Nov-2015, tatu: As per [databind#1023], need to allow forcing of
                //    static typing this way
                type = type.withStaticTyping();
            } else {
                Class<?> currRaw = type.getRawClass();
                try {
                    // 11-Oct-2015, tatu: For deser, we call `TypeFactory.constructSpecializedType()`,
                    //   may be needed here too in future?
                    if (serClass.isAssignableFrom(currRaw)) { // common case
                        type = tf.constructGeneralizedType(type, serClass);
                    } else if (currRaw.isAssignableFrom(serClass)) { // specialization, ok as well
                        type = tf.constructSpecializedType(type, serClass);
                    } else if (_primitiveAndWrapper(currRaw, serClass)) {
                        // 27-Apr-2017, tatu: [databind#1592] ignore primitive<->wrapper refinements
                        type = type.withStaticTyping();
                    } else {
                        throw new JsonMappingException(null,
                                String.format("Cannot refine serialization type %s into %s; types not related",
                                        type, serClass.getName()));
                    }
                } catch (IllegalArgumentException iae) {
                    throw new JsonMappingException(null,
                            String.format("Failed to widen type %s with annotation (value %s), from '%s': %s",
                                    type, serClass.getName(), a.getName(), iae.getMessage()),
                                    iae);
                }
            }
        }
        // Then further processing for container types

        // First, key type (for Maps, Map-like types):
        if (type.isMapLikeType()) {
            JavaType keyType = type.getKeyType();
            final Class<?> keyClass = (jsonSer == null) ? null : _classIfExplicit(jsonSer.keyAs());
            if (keyClass != null) {
                if (keyType.hasRawClass(keyClass)) {
                    keyType = keyType.withStaticTyping();
                } else {
                    Class<?> currRaw = keyType.getRawClass();
                    try {
                        // 19-May-2016, tatu: As per [databind#1231], [databind#1178] may need to actually
                        //   specialize (narrow) type sometimes, even if more commonly opposite
                        //   is needed.
                        if (keyClass.isAssignableFrom(currRaw)) { // common case
                            keyType = tf.constructGeneralizedType(keyType, keyClass);
                        } else if (currRaw.isAssignableFrom(keyClass)) { // specialization, ok as well
                            keyType = tf.constructSpecializedType(keyType, keyClass);
                        } else if (_primitiveAndWrapper(currRaw, keyClass)) {
                            // 27-Apr-2017, tatu: [databind#1592] ignore primitive<->wrapper refinements
                            keyType = keyType.withStaticTyping();
                        } else {
                            throw new JsonMappingException(null,
                                    String.format("Cannot refine serialization key type %s into %s; types not related",
                                            keyType, keyClass.getName()));
                        }
                    } catch (IllegalArgumentException iae) {
                        throw new JsonMappingException(null,
                                String.format("Failed to widen key type of %s with concrete-type annotation (value %s), from '%s': %s",
                                        type, keyClass.getName(), a.getName(), iae.getMessage()),
                                        iae);
                    }
                }
                type = ((MapLikeType) type).withKeyType(keyType);
            }
        }

        JavaType contentType = type.getContentType();
        if (contentType != null) { // collection[like], map[like], array, reference
            // And then value types for all containers:
           final Class<?> contentClass = (jsonSer == null) ? null : _classIfExplicit(jsonSer.contentAs());
           if (contentClass != null) {
               if (contentType.hasRawClass(contentClass)) {
                   contentType = contentType.withStaticTyping();
               } else {
                   // 03-Apr-2016, tatu: As per [databind#1178], may need to actually
                   //   specialize (narrow) type sometimes, even if more commonly opposite
                   //   is needed.
                   Class<?> currRaw = contentType.getRawClass();
                   try {
                       if (contentClass.isAssignableFrom(currRaw)) { // common case
                           contentType = tf.constructGeneralizedType(contentType, contentClass);
                       } else if (currRaw.isAssignableFrom(contentClass)) { // specialization, ok as well
                           contentType = tf.constructSpecializedType(contentType, contentClass);
                       } else if (_primitiveAndWrapper(currRaw, contentClass)) {
                           // 27-Apr-2017, tatu: [databind#1592] ignore primitive<->wrapper refinements
                           contentType = contentType.withStaticTyping();
                       } else {
                           throw new JsonMappingException(null,
                                   String.format("Cannot refine serialization content type %s into %s; types not related",
                                           contentType, contentClass.getName()));
                       }
                   } catch (IllegalArgumentException iae) { // shouldn't really happen
                       throw new JsonMappingException(null,
                               String.format("Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from '%s': %s",
                                       type, contentClass.getName(), a.getName(), iae.getMessage()),
                                       iae);
                   }
               }
               type = type.withContentType(contentType);
           }
        }
        return type;
    }

    @Override
    @Deprecated // since 2.7
    public Class<?> findSerializationType(Annotated am) {
        return null;
    }

    @Override
    @Deprecated // since 2.7
    public Class<?> findSerializationKeyType(Annotated am, JavaType baseType) {
        return null;
    }

    @Override
    @Deprecated // since 2.7
    public Class<?> findSerializationContentType(Annotated am, JavaType baseType) {
        return null;
    }

    /*
    /**********************************************************
    /* Serialization: class annotations
    /**********************************************************
     */

    @Override
    public String[] findSerializationPropertyOrder(AnnotatedClass ac) {
        int PROBE_START_LINE_882 = 882;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_4040_line_882 = ac;
		JsonPropertyOrder jackson_annotation_introspector_1_expr118_line_882 = _findAnnotation(p_ac_4040_line_882,
				JsonPropertyOrder.class);
		int PROBE_END_LINE_882 = 882;
		JsonPropertyOrder order = jackson_annotation_introspector_1_expr118_line_882;
        int PROBE_START_LINE_883 = 883;
		com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_4041_line_883 = order;
		boolean jackson_annotation_introspector_1_expr123_line_883 = v_order_4041_line_883 == null;
		boolean jackson_annotation_introspector_1_expr121_line_883 = (jackson_annotation_introspector_1_expr123_line_883);
		String[] jackson_annotation_introspector_1_expr122_line_883 = null;
		if (!jackson_annotation_introspector_1_expr121_line_883) {
			com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_4041_line_883_v1 = order;
			jackson_annotation_introspector_1_expr122_line_883 = v_order_4041_line_883_v1.value();
		}
		String[] jackson_annotation_introspector_1_expr120_line_883 = jackson_annotation_introspector_1_expr121_line_883
				? null
				: jackson_annotation_introspector_1_expr122_line_883;
		int PROBE_END_LINE_883 = 883;
		return jackson_annotation_introspector_1_expr120_line_883;
    }

    @Override
    public Boolean findSerializationSortAlphabetically(Annotated ann) {
        int PROBE_START_LINE_888 = 888;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_4042_line_888 = ann;
		Boolean jackson_annotation_introspector_1_expr124_line_888 = _findSortAlpha(p_ann_4042_line_888);
		int PROBE_END_LINE_888 = 888;
		return jackson_annotation_introspector_1_expr124_line_888;
    }

    private final Boolean _findSortAlpha(Annotated ann) {
        int PROBE_START_LINE_892 = 892;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_4043_line_892 = ann;
		JsonPropertyOrder jackson_annotation_introspector_1_expr125_line_892 = _findAnnotation(p_ann_4043_line_892,
				JsonPropertyOrder.class);
		int PROBE_END_LINE_892 = 892;
		JsonPropertyOrder order = jackson_annotation_introspector_1_expr125_line_892;
        int PROBE_START_LINE_895 = 897;
		com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_4044_line_895 = order;
		boolean jackson_annotation_introspector_1_expr129_line_895 = v_order_4044_line_895 != null;
		boolean jackson_annotation_introspector_1_expr128_line_895 = (jackson_annotation_introspector_1_expr129_line_895);
		boolean jackson_annotation_introspector_1_expr130_line_895 = true;
		if (jackson_annotation_introspector_1_expr128_line_895) {
			com.fasterxml.jackson.annotation.JsonPropertyOrder v_order_4044_line_895_v1 = order;
			jackson_annotation_introspector_1_expr130_line_895 = v_order_4044_line_895_v1.alphabetic();
		}
		boolean jackson_annotation_introspector_1_expr127_line_895 = jackson_annotation_introspector_1_expr128_line_895
				&& jackson_annotation_introspector_1_expr130_line_895;
		int PROBE_END_LINE_895 = 897;
		// 23-Jun-2015, tatu: as per [databind#840], let's only consider
        //  `true` to have any significance.
        if (jackson_annotation_introspector_1_expr127_line_895) {
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
        boolean useDefault = false;
        int PROBE_START_LINE_1001 = 1001;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4055_line_1001 = a;
		JsonGetter jackson_annotation_introspector_1_expr131_line_1001 = _findAnnotation(p_a_4055_line_1001,
				JsonGetter.class);
		int PROBE_END_LINE_1001 = 1001;
		JsonGetter jg = jackson_annotation_introspector_1_expr131_line_1001;
        int PROBE_START_LINE_1002 = 1009;
		com.fasterxml.jackson.annotation.JsonGetter v_jg_4057_line_1002 = jg;
		boolean jackson_annotation_introspector_1_expr133_line_1002 = v_jg_4057_line_1002 != null;
		int PROBE_END_LINE_1002 = 1009;
		if (jackson_annotation_introspector_1_expr133_line_1002) {
            String s = jg.value();
            // 04-May-2018, tatu: Should allow for "nameless" `@JsonGetter` too
            if (!s.isEmpty()) {
                return PropertyName.construct(s);
            }
            useDefault = true;
        }
        int PROBE_START_LINE_1010 = 1010;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4055_line_1010 = a;
		JsonProperty jackson_annotation_introspector_1_expr134_line_1010 = _findAnnotation(p_a_4055_line_1010,
				JsonProperty.class);
		int PROBE_END_LINE_1010 = 1010;
		JsonProperty pann = jackson_annotation_introspector_1_expr134_line_1010;
        int PROBE_START_LINE_1011 = 1013;
		com.fasterxml.jackson.annotation.JsonProperty v_pann_4058_line_1011 = pann;
		boolean jackson_annotation_introspector_1_expr136_line_1011 = v_pann_4058_line_1011 != null;
		int PROBE_END_LINE_1011 = 1013;
		if (jackson_annotation_introspector_1_expr136_line_1011) {
            return PropertyName.construct(pann.value());
        }
        int PROBE_START_LINE_1014 = 1016;
		boolean v_use_default_4056_line_1014 = useDefault;
		boolean jackson_annotation_introspector_1_expr138_line_1014 = false;
		if (!v_use_default_4056_line_1014) {
			com.fasterxml.jackson.databind.introspect.Annotated p_a_4055_line_1014 = a;
			Class<? extends java.lang.annotation.Annotation>[] f_annotations_to_infer_ser_3946_line_1014 = ANNOTATIONS_TO_INFER_SER;
			jackson_annotation_introspector_1_expr138_line_1014 = _hasOneOf(p_a_4055_line_1014,
					f_annotations_to_infer_ser_3946_line_1014);
		}
		boolean jackson_annotation_introspector_1_expr137_line_1014 = v_use_default_4056_line_1014
				|| jackson_annotation_introspector_1_expr138_line_1014;
		int PROBE_END_LINE_1014 = 1016;
		if (jackson_annotation_introspector_1_expr137_line_1014) {
            return PropertyName.USE_DEFAULT;
        }
        return null;
    }

    @Override // since 2.9
    public Boolean hasAsValue(Annotated a) {
        int PROBE_START_LINE_1022 = 1022;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4059_line_1022 = a;
		JsonValue jackson_annotation_introspector_1_expr139_line_1022 = _findAnnotation(p_a_4059_line_1022,
				JsonValue.class);
		int PROBE_END_LINE_1022 = 1022;
		JsonValue ann = jackson_annotation_introspector_1_expr139_line_1022;
        int PROBE_START_LINE_1023 = 1025;
		com.fasterxml.jackson.annotation.JsonValue v_ann_4060_line_1023 = ann;
		boolean jackson_annotation_introspector_1_expr141_line_1023 = v_ann_4060_line_1023 == null;
		int PROBE_END_LINE_1023 = 1025;
		if (jackson_annotation_introspector_1_expr141_line_1023) {
            return null;
        }
        return ann.value();
    }

    @Override // since 2.9
    public Boolean hasAnyGetter(Annotated a) {
        int PROBE_START_LINE_1031 = 1031;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4061_line_1031 = a;
		JsonAnyGetter jackson_annotation_introspector_1_expr142_line_1031 = _findAnnotation(p_a_4061_line_1031,
				JsonAnyGetter.class);
		int PROBE_END_LINE_1031 = 1031;
		JsonAnyGetter ann = jackson_annotation_introspector_1_expr142_line_1031;
        int PROBE_START_LINE_1032 = 1034;
		com.fasterxml.jackson.annotation.JsonAnyGetter v_ann_4062_line_1032 = ann;
		boolean jackson_annotation_introspector_1_expr144_line_1032 = v_ann_4062_line_1032 == null;
		int PROBE_END_LINE_1032 = 1034;
		if (jackson_annotation_introspector_1_expr144_line_1032) {
            return null;
        }
        return ann.enabled();
    }

    @Override
    @Deprecated // since 2.9
    public boolean hasAnyGetterAnnotation(AnnotatedMethod am) {
        // No dedicated disabling; regular @JsonIgnore used if needs to be ignored (handled separately)
        return _hasAnnotation(am, JsonAnyGetter.class);
    }

    @Override
    @Deprecated // since 2.9
    public boolean hasAsValueAnnotation(AnnotatedMethod am) {
        JsonValue ann = _findAnnotation(am, JsonValue.class);
        // value of 'false' means disabled...
        return (ann != null) && ann.value();
    }

    /*
    /**********************************************************
    /* Deserialization: general annotations
    /**********************************************************
     */

    @Override
    public Object findDeserializer(Annotated a)
    {
        int PROBE_START_LINE_1062 = 1062;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4065_line_1062 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr145_line_1062 = _findAnnotation(p_a_4065_line_1062,
				JsonDeserialize.class);
		int PROBE_END_LINE_1062 = 1062;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr145_line_1062;
        int PROBE_START_LINE_1063 = 1069;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4066_line_1063 = ann;
		boolean jackson_annotation_introspector_1_expr147_line_1063 = v_ann_4066_line_1063 != null;
		int PROBE_END_LINE_1063 = 1069;
		if (jackson_annotation_introspector_1_expr147_line_1063) {
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
        int PROBE_START_LINE_1076 = 1076;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4067_line_1076 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr148_line_1076 = _findAnnotation(p_a_4067_line_1076,
				JsonDeserialize.class);
		int PROBE_END_LINE_1076 = 1076;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr148_line_1076;
        int PROBE_START_LINE_1077 = 1082;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4068_line_1077 = ann;
		boolean jackson_annotation_introspector_1_expr150_line_1077 = v_ann_4068_line_1077 != null;
		int PROBE_END_LINE_1077 = 1082;
		if (jackson_annotation_introspector_1_expr150_line_1077) {
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
        int PROBE_START_LINE_1089 = 1089;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4069_line_1089 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr151_line_1089 = _findAnnotation(p_a_4069_line_1089,
				JsonDeserialize.class);
		int PROBE_END_LINE_1089 = 1089;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr151_line_1089;
        int PROBE_START_LINE_1090 = 1096;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4070_line_1090 = ann;
		boolean jackson_annotation_introspector_1_expr153_line_1090 = v_ann_4070_line_1090 != null;
		int PROBE_END_LINE_1090 = 1096;
		if (jackson_annotation_introspector_1_expr153_line_1090) {
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
        int PROBE_START_LINE_1103 = 1103;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4071_line_1103 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr154_line_1103 = _findAnnotation(p_a_4071_line_1103,
				JsonDeserialize.class);
		int PROBE_END_LINE_1103 = 1103;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr154_line_1103;
        int PROBE_START_LINE_1104 = 1104;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4072_line_1104 = ann;
		boolean jackson_annotation_introspector_1_expr159_line_1104 = v_ann_4072_line_1104 == null;
		boolean jackson_annotation_introspector_1_expr157_line_1104 = (jackson_annotation_introspector_1_expr159_line_1104);
		Class<?> jackson_annotation_introspector_1_expr158_line_1104 = null;
		if (!jackson_annotation_introspector_1_expr157_line_1104) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4072_line_1104_v1 = ann;
			Class<? extends com.fasterxml.jackson.databind.util.Converter> jackson_annotation_introspector_1_expr160_line_1104 = v_ann_4072_line_1104_v1
					.converter();
			jackson_annotation_introspector_1_expr158_line_1104 = _classIfExplicit(
					jackson_annotation_introspector_1_expr160_line_1104, Converter.None.class);
		}
		Object jackson_annotation_introspector_1_expr156_line_1104 = jackson_annotation_introspector_1_expr157_line_1104
				? null
				: jackson_annotation_introspector_1_expr158_line_1104;
		int PROBE_END_LINE_1104 = 1104;
		return jackson_annotation_introspector_1_expr156_line_1104;
    }

    @Override
    public Object findDeserializationContentConverter(AnnotatedMember a)
    {
        int PROBE_START_LINE_1110 = 1110;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_a_4073_line_1110 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr162_line_1110 = _findAnnotation(p_a_4073_line_1110,
				JsonDeserialize.class);
		int PROBE_END_LINE_1110 = 1110;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr162_line_1110;
        int PROBE_START_LINE_1111 = 1111;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4074_line_1111 = ann;
		boolean jackson_annotation_introspector_1_expr167_line_1111 = v_ann_4074_line_1111 == null;
		boolean jackson_annotation_introspector_1_expr165_line_1111 = (jackson_annotation_introspector_1_expr167_line_1111);
		Class<?> jackson_annotation_introspector_1_expr166_line_1111 = null;
		if (!jackson_annotation_introspector_1_expr165_line_1111) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4074_line_1111_v1 = ann;
			Class<? extends com.fasterxml.jackson.databind.util.Converter> jackson_annotation_introspector_1_expr168_line_1111 = v_ann_4074_line_1111_v1
					.contentConverter();
			jackson_annotation_introspector_1_expr166_line_1111 = _classIfExplicit(
					jackson_annotation_introspector_1_expr168_line_1111, Converter.None.class);
		}
		Object jackson_annotation_introspector_1_expr164_line_1111 = jackson_annotation_introspector_1_expr165_line_1111
				? null
				: jackson_annotation_introspector_1_expr166_line_1111;
		int PROBE_END_LINE_1111 = 1111;
		return jackson_annotation_introspector_1_expr164_line_1111;
    }

    /*
    /**********************************************************
    /* Deserialization: type modifications
    /**********************************************************
     */

    @Override
    public JavaType refineDeserializationType(final MapperConfig<?> config,
            final Annotated a, final JavaType baseType) throws JsonMappingException
    {
        int PROBE_START_LINE_1124 = 1124;
		JavaType p_base_type_4077_line_1124 = baseType;
		int PROBE_END_LINE_1124 = 1124;
		JavaType type = p_base_type_4077_line_1124;
        int PROBE_START_LINE_1125 = 1125;
		MapperConfig<?> p_config_4075_line_1125 = config;
		TypeFactory jackson_annotation_introspector_1_expr170_line_1125 = p_config_4075_line_1125.getTypeFactory();
		int PROBE_END_LINE_1125 = 1125;
		final TypeFactory tf = jackson_annotation_introspector_1_expr170_line_1125;

        int PROBE_START_LINE_1127 = 1127;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4076_line_1127 = a;
		JsonDeserialize jackson_annotation_introspector_1_expr171_line_1127 = _findAnnotation(p_a_4076_line_1127,
				JsonDeserialize.class);
		int PROBE_END_LINE_1127 = 1127;
		final JsonDeserialize jsonDeser = jackson_annotation_introspector_1_expr171_line_1127;
        
        int PROBE_START_LINE_1130 = 1130;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_json_deser_4080_line_1130 = jsonDeser;
		boolean jackson_annotation_introspector_1_expr176_line_1130 = v_json_deser_4080_line_1130 == null;
		boolean jackson_annotation_introspector_1_expr174_line_1130 = (jackson_annotation_introspector_1_expr176_line_1130);
		Class<?> jackson_annotation_introspector_1_expr175_line_1130 = null;
		if (!jackson_annotation_introspector_1_expr174_line_1130) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_json_deser_4080_line_1130_v1 = jsonDeser;
			Class<?> jackson_annotation_introspector_1_expr177_line_1130 = v_json_deser_4080_line_1130_v1.as();
			jackson_annotation_introspector_1_expr175_line_1130 = _classIfExplicit(
					jackson_annotation_introspector_1_expr177_line_1130);
		}
		Class<?> jackson_annotation_introspector_1_expr173_line_1130 = jackson_annotation_introspector_1_expr174_line_1130
				? null
				: jackson_annotation_introspector_1_expr175_line_1130;
		int PROBE_END_LINE_1130 = 1130;
		// Ok: start by refining the main type itself; common to all types
        final Class<?> valueClass = jackson_annotation_introspector_1_expr173_line_1130;
        int PROBE_START_LINE_1131 = 1141;
		Class<?> v_value_class_4081_line_1131 = valueClass;
		boolean jackson_annotation_introspector_1_expr180_line_1131 = v_value_class_4081_line_1131 != null;
		boolean jackson_annotation_introspector_1_expr179_line_1131 = (jackson_annotation_introspector_1_expr180_line_1131);
		boolean jackson_annotation_introspector_1_expr181_line_1131 = true;
		if (jackson_annotation_introspector_1_expr179_line_1131) {
			com.fasterxml.jackson.databind.JavaType v_type_4078_line_1131 = type;
			Class<?> v_value_class_4081_line_1131_v1 = valueClass;
			boolean jackson_annotation_introspector_1_expr182_line_1131 = v_type_4078_line_1131
					.hasRawClass(v_value_class_4081_line_1131_v1);
			jackson_annotation_introspector_1_expr181_line_1131 = !jackson_annotation_introspector_1_expr182_line_1131;
		}
		boolean jackson_annotation_introspector_1_expr178_line_1131 = jackson_annotation_introspector_1_expr179_line_1131
				&& jackson_annotation_introspector_1_expr181_line_1131 && !_primitiveAndWrapper(type, valueClass);
		int PROBE_END_LINE_1131 = 1141;
		if (jackson_annotation_introspector_1_expr178_line_1131) {
            try {
                type = tf.constructSpecializedType(type, valueClass);
            } catch (IllegalArgumentException iae) {
                throw new JsonMappingException(null,
                        String.format("Failed to narrow type %s with annotation (value %s), from '%s': %s",
                                type, valueClass.getName(), a.getName(), iae.getMessage()),
                                iae);
            }
        }
        // Then further processing for container types

        int PROBE_START_LINE_1145 = 1160;
		com.fasterxml.jackson.databind.JavaType v_type_4078_line_1145 = type;
		boolean jackson_annotation_introspector_1_expr183_line_1145 = v_type_4078_line_1145.isMapLikeType();
		int PROBE_END_LINE_1145 = 1160;
		// First, key type (for Maps, Map-like types):
        if (jackson_annotation_introspector_1_expr183_line_1145) {
            int PROBE_START_LINE_1146 = 1146;
			com.fasterxml.jackson.databind.JavaType v_type_4078_line_1146 = type;
			JavaType jackson_annotation_introspector_1_expr184_line_1146 = v_type_4078_line_1146.getKeyType();
			int PROBE_END_LINE_1146 = 1146;
			JavaType keyType = jackson_annotation_introspector_1_expr184_line_1146;
            int PROBE_START_LINE_1147 = 1147;
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_json_deser_4080_line_1147 = jsonDeser;
			boolean jackson_annotation_introspector_1_expr188_line_1147 = v_json_deser_4080_line_1147 == null;
			boolean jackson_annotation_introspector_1_expr186_line_1147 = (jackson_annotation_introspector_1_expr188_line_1147);
			Class<?> jackson_annotation_introspector_1_expr187_line_1147 = null;
			if (!jackson_annotation_introspector_1_expr186_line_1147) {
				com.fasterxml.jackson.databind.annotation.JsonDeserialize v_json_deser_4080_line_1147_v1 = jsonDeser;
				Class<?> jackson_annotation_introspector_1_expr189_line_1147 = v_json_deser_4080_line_1147_v1.keyAs();
				jackson_annotation_introspector_1_expr187_line_1147 = _classIfExplicit(
						jackson_annotation_introspector_1_expr189_line_1147);
			}
			Class<?> jackson_annotation_introspector_1_expr185_line_1147 = jackson_annotation_introspector_1_expr186_line_1147
					? null
					: jackson_annotation_introspector_1_expr187_line_1147;
			int PROBE_END_LINE_1147 = 1147;
			final Class<?> keyClass = jackson_annotation_introspector_1_expr185_line_1147;
            int PROBE_START_LINE_1148 = 1159;
			Class<?> v_key_class_4083_line_1148 = keyClass;
			boolean jackson_annotation_introspector_1_expr192_line_1148 = v_key_class_4083_line_1148 != null;
			boolean jackson_annotation_introspector_1_expr191_line_1148 = (jackson_annotation_introspector_1_expr192_line_1148);
			boolean jackson_annotation_introspector_1_expr190_line_1148 = jackson_annotation_introspector_1_expr191_line_1148
					&& !_primitiveAndWrapper(keyType, keyClass);
			int PROBE_END_LINE_1148 = 1159;
			if (jackson_annotation_introspector_1_expr190_line_1148) {
                try {
                    keyType = tf.constructSpecializedType(keyType, keyClass);
                    type = ((MapLikeType) type).withKeyType(keyType);
                } catch (IllegalArgumentException iae) {
                    throw new JsonMappingException(null,
                            String.format("Failed to narrow key type of %s with concrete-type annotation (value %s), from '%s': %s",
                                    type, keyClass.getName(), a.getName(), iae.getMessage()),
                                    iae);
                }
            }
        }
        int PROBE_START_LINE_1161 = 1161;
		com.fasterxml.jackson.databind.JavaType v_type_4078_line_1161 = type;
		JavaType jackson_annotation_introspector_1_expr193_line_1161 = v_type_4078_line_1161.getContentType();
		int PROBE_END_LINE_1161 = 1161;
		JavaType contentType = jackson_annotation_introspector_1_expr193_line_1161;
        int PROBE_START_LINE_1162 = 1177;
		com.fasterxml.jackson.databind.JavaType v_content_type_4084_line_1162 = contentType;
		boolean jackson_annotation_introspector_1_expr194_line_1162 = v_content_type_4084_line_1162 != null;
		int PROBE_END_LINE_1162 = 1177;
		if (jackson_annotation_introspector_1_expr194_line_1162) { // collection[like], map[like], array, reference
            int PROBE_START_LINE_1164 = 1164;
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_json_deser_4080_line_1164 = jsonDeser;
			boolean jackson_annotation_introspector_1_expr198_line_1164 = v_json_deser_4080_line_1164 == null;
			boolean jackson_annotation_introspector_1_expr196_line_1164 = (jackson_annotation_introspector_1_expr198_line_1164);
			Class<?> jackson_annotation_introspector_1_expr197_line_1164 = null;
			if (!jackson_annotation_introspector_1_expr196_line_1164) {
				com.fasterxml.jackson.databind.annotation.JsonDeserialize v_json_deser_4080_line_1164_v1 = jsonDeser;
				Class<?> jackson_annotation_introspector_1_expr199_line_1164 = v_json_deser_4080_line_1164_v1
						.contentAs();
				jackson_annotation_introspector_1_expr197_line_1164 = _classIfExplicit(
						jackson_annotation_introspector_1_expr199_line_1164);
			}
			Class<?> jackson_annotation_introspector_1_expr195_line_1164 = jackson_annotation_introspector_1_expr196_line_1164
					? null
					: jackson_annotation_introspector_1_expr197_line_1164;
			int PROBE_END_LINE_1164 = 1164;
			// And then value types for all containers:
            final Class<?> contentClass = jackson_annotation_introspector_1_expr195_line_1164;
            int PROBE_START_LINE_1165 = 1176;
			Class<?> v_content_class_4085_line_1165 = contentClass;
			boolean jackson_annotation_introspector_1_expr202_line_1165 = v_content_class_4085_line_1165 != null;
			boolean jackson_annotation_introspector_1_expr201_line_1165 = (jackson_annotation_introspector_1_expr202_line_1165);
			boolean jackson_annotation_introspector_1_expr200_line_1165 = jackson_annotation_introspector_1_expr201_line_1165
					&& !_primitiveAndWrapper(contentType, contentClass);
			int PROBE_END_LINE_1165 = 1176;
			if (jackson_annotation_introspector_1_expr200_line_1165) {
                try {
                    contentType = tf.constructSpecializedType(contentType, contentClass);
                    type = type.withContentType(contentType);
                } catch (IllegalArgumentException iae) {
                    throw new JsonMappingException(null,
                            String.format("Failed to narrow value type of %s with concrete-type annotation (value %s), from '%s': %s",
                                    type, contentClass.getName(), a.getName(), iae.getMessage()),
                            iae);
                }
            }
        }
        int PROBE_START_LINE_1178 = 1178;
		com.fasterxml.jackson.databind.JavaType v_type_4078_line_1178 = type;
		int PROBE_END_LINE_1178 = 1178;
		return v_type_4078_line_1178;
    }

    @Override
    @Deprecated // since 2.7
    public Class<?> findDeserializationContentType(Annotated am, JavaType baseContentType) {
        return null;
    }

    @Override
    @Deprecated // since 2.7
    public Class<?> findDeserializationType(Annotated am, JavaType baseType) {
        return null;
    }

    @Override
    @Deprecated // since 2.7
    public Class<?> findDeserializationKeyType(Annotated am, JavaType baseKeyType) {
        return null;
    }

    /*
    /**********************************************************
    /* Deserialization: Class annotations
    /**********************************************************
     */

    @Override
    public Object findValueInstantiator(AnnotatedClass ac)
    {
        int PROBE_START_LINE_1208 = 1208;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_4092_line_1208 = ac;
		JsonValueInstantiator jackson_annotation_introspector_1_expr203_line_1208 = _findAnnotation(p_ac_4092_line_1208,
				JsonValueInstantiator.class);
		int PROBE_END_LINE_1208 = 1208;
		JsonValueInstantiator ann = jackson_annotation_introspector_1_expr203_line_1208;
        int PROBE_START_LINE_1210 = 1210;
		com.fasterxml.jackson.databind.annotation.JsonValueInstantiator v_ann_4093_line_1210 = ann;
		boolean jackson_annotation_introspector_1_expr208_line_1210 = v_ann_4093_line_1210 == null;
		boolean jackson_annotation_introspector_1_expr206_line_1210 = (jackson_annotation_introspector_1_expr208_line_1210);
		Class<? extends com.fasterxml.jackson.databind.deser.ValueInstantiator> jackson_annotation_introspector_1_expr207_line_1210 = null;
		if (!jackson_annotation_introspector_1_expr206_line_1210) {
			com.fasterxml.jackson.databind.annotation.JsonValueInstantiator v_ann_4093_line_1210_v1 = ann;
			jackson_annotation_introspector_1_expr207_line_1210 = v_ann_4093_line_1210_v1.value();
		}
		Object jackson_annotation_introspector_1_expr205_line_1210 = jackson_annotation_introspector_1_expr206_line_1210
				? null
				: jackson_annotation_introspector_1_expr207_line_1210;
		int PROBE_END_LINE_1210 = 1210;
		// no 'null' marker yet, so:
        return jackson_annotation_introspector_1_expr205_line_1210;
    }

    @Override
    public Class<?> findPOJOBuilder(AnnotatedClass ac)
    {
        int PROBE_START_LINE_1216 = 1216;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_ac_4094_line_1216 = ac;
		JsonDeserialize jackson_annotation_introspector_1_expr209_line_1216 = _findAnnotation(p_ac_4094_line_1216,
				JsonDeserialize.class);
		int PROBE_END_LINE_1216 = 1216;
		JsonDeserialize ann = jackson_annotation_introspector_1_expr209_line_1216;
        int PROBE_START_LINE_1217 = 1217;
		com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4095_line_1217 = ann;
		boolean jackson_annotation_introspector_1_expr214_line_1217 = v_ann_4095_line_1217 == null;
		boolean jackson_annotation_introspector_1_expr212_line_1217 = (jackson_annotation_introspector_1_expr214_line_1217);
		Class<?> jackson_annotation_introspector_1_expr213_line_1217 = null;
		if (!jackson_annotation_introspector_1_expr212_line_1217) {
			com.fasterxml.jackson.databind.annotation.JsonDeserialize v_ann_4095_line_1217_v1 = ann;
			Class<?> jackson_annotation_introspector_1_expr215_line_1217 = v_ann_4095_line_1217_v1.builder();
			jackson_annotation_introspector_1_expr213_line_1217 = _classIfExplicit(
					jackson_annotation_introspector_1_expr215_line_1217);
		}
		Class<?> jackson_annotation_introspector_1_expr211_line_1217 = jackson_annotation_introspector_1_expr212_line_1217
				? null
				: jackson_annotation_introspector_1_expr213_line_1217;
		int PROBE_END_LINE_1217 = 1217;
		return jackson_annotation_introspector_1_expr211_line_1217;
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
        // @JsonSetter has precedence over @JsonProperty, being more specific

        boolean useDefault = false;
        int PROBE_START_LINE_1239 = 1239;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4097_line_1239 = a;
		JsonSetter jackson_annotation_introspector_1_expr216_line_1239 = _findAnnotation(p_a_4097_line_1239,
				JsonSetter.class);
		int PROBE_END_LINE_1239 = 1239;
		JsonSetter js = jackson_annotation_introspector_1_expr216_line_1239;
        int PROBE_START_LINE_1240 = 1248;
		com.fasterxml.jackson.annotation.JsonSetter v_js_4099_line_1240 = js;
		boolean jackson_annotation_introspector_1_expr218_line_1240 = v_js_4099_line_1240 != null;
		int PROBE_END_LINE_1240 = 1248;
		if (jackson_annotation_introspector_1_expr218_line_1240) {
            String s = js.value();
            // 04-May-2018, tatu: Need to allow for "nameless" `@JsonSetter` too
            if (s.isEmpty()) {
                useDefault = true;
            } else {
                return PropertyName.construct(s);
            }
        }
        int PROBE_START_LINE_1249 = 1249;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4097_line_1249 = a;
		JsonProperty jackson_annotation_introspector_1_expr219_line_1249 = _findAnnotation(p_a_4097_line_1249,
				JsonProperty.class);
		int PROBE_END_LINE_1249 = 1249;
		JsonProperty pann = jackson_annotation_introspector_1_expr219_line_1249;
        int PROBE_START_LINE_1250 = 1252;
		com.fasterxml.jackson.annotation.JsonProperty v_pann_4100_line_1250 = pann;
		boolean jackson_annotation_introspector_1_expr221_line_1250 = v_pann_4100_line_1250 != null;
		int PROBE_END_LINE_1250 = 1252;
		if (jackson_annotation_introspector_1_expr221_line_1250) {
            return PropertyName.construct(pann.value());
        }
        int PROBE_START_LINE_1253 = 1255;
		boolean v_use_default_4098_line_1253 = useDefault;
		boolean jackson_annotation_introspector_1_expr223_line_1253 = false;
		if (!v_use_default_4098_line_1253) {
			com.fasterxml.jackson.databind.introspect.Annotated p_a_4097_line_1253 = a;
			Class<? extends java.lang.annotation.Annotation>[] f_annotations_to_infer_deser_3947_line_1253 = ANNOTATIONS_TO_INFER_DESER;
			jackson_annotation_introspector_1_expr223_line_1253 = _hasOneOf(p_a_4097_line_1253,
					f_annotations_to_infer_deser_3947_line_1253);
		}
		boolean jackson_annotation_introspector_1_expr222_line_1253 = v_use_default_4098_line_1253
				|| jackson_annotation_introspector_1_expr223_line_1253;
		int PROBE_END_LINE_1253 = 1255;
		if (jackson_annotation_introspector_1_expr222_line_1253) {
            return PropertyName.USE_DEFAULT;
        }
        return null;
    }

    @Override
    public Boolean hasAnySetter(Annotated a) {
        int PROBE_START_LINE_1261 = 1261;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4101_line_1261 = a;
		JsonAnySetter jackson_annotation_introspector_1_expr224_line_1261 = _findAnnotation(p_a_4101_line_1261,
				JsonAnySetter.class);
		int PROBE_END_LINE_1261 = 1261;
		JsonAnySetter ann = jackson_annotation_introspector_1_expr224_line_1261;
        int PROBE_START_LINE_1262 = 1262;
		com.fasterxml.jackson.annotation.JsonAnySetter v_ann_4102_line_1262 = ann;
		boolean jackson_annotation_introspector_1_expr229_line_1262 = v_ann_4102_line_1262 == null;
		boolean jackson_annotation_introspector_1_expr227_line_1262 = (jackson_annotation_introspector_1_expr229_line_1262);
		boolean jackson_annotation_introspector_1_expr228_line_1262 = false;
		if (!jackson_annotation_introspector_1_expr227_line_1262) {
			com.fasterxml.jackson.annotation.JsonAnySetter v_ann_4102_line_1262_v1 = ann;
			jackson_annotation_introspector_1_expr228_line_1262 = v_ann_4102_line_1262_v1.enabled();
		}
		Boolean jackson_annotation_introspector_1_expr226_line_1262 = jackson_annotation_introspector_1_expr227_line_1262
				? null
				: jackson_annotation_introspector_1_expr228_line_1262;
		int PROBE_END_LINE_1262 = 1262;
		return jackson_annotation_introspector_1_expr226_line_1262;
    }

    @Override
    public JsonSetter.Value findSetterInfo(Annotated a) {
        int PROBE_START_LINE_1267 = 1267;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4103_line_1267 = a;
		com.fasterxml.jackson.annotation.JsonSetter jackson_annotation_introspector_1_expr231_line_1267 = _findAnnotation(
				p_a_4103_line_1267, JsonSetter.class);
		com.fasterxml.jackson.annotation.JsonSetter.Value jackson_annotation_introspector_1_expr230_line_1267 = JsonSetter.Value
				.from(jackson_annotation_introspector_1_expr231_line_1267);
		int PROBE_END_LINE_1267 = 1267;
		return jackson_annotation_introspector_1_expr230_line_1267;
    }

    @Override // since 2.9
    public Boolean findMergeInfo(Annotated a) {
        int PROBE_START_LINE_1272 = 1272;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4104_line_1272 = a;
		JsonMerge jackson_annotation_introspector_1_expr233_line_1272 = _findAnnotation(p_a_4104_line_1272,
				JsonMerge.class);
		int PROBE_END_LINE_1272 = 1272;
		JsonMerge ann = jackson_annotation_introspector_1_expr233_line_1272;
        int PROBE_START_LINE_1273 = 1273;
		com.fasterxml.jackson.annotation.JsonMerge v_ann_4105_line_1273 = ann;
		boolean jackson_annotation_introspector_1_expr238_line_1273 = v_ann_4105_line_1273 == null;
		boolean jackson_annotation_introspector_1_expr236_line_1273 = (jackson_annotation_introspector_1_expr238_line_1273);
		Boolean jackson_annotation_introspector_1_expr237_line_1273 = null;
		if (!jackson_annotation_introspector_1_expr236_line_1273) {
			com.fasterxml.jackson.annotation.JsonMerge v_ann_4105_line_1273_v1 = ann;
			com.fasterxml.jackson.annotation.OptBoolean jackson_annotation_introspector_1_expr239_line_1273 = v_ann_4105_line_1273_v1
					.value();
			jackson_annotation_introspector_1_expr237_line_1273 = jackson_annotation_introspector_1_expr239_line_1273
					.asBoolean();
		}
		Boolean jackson_annotation_introspector_1_expr235_line_1273 = jackson_annotation_introspector_1_expr236_line_1273
				? null
				: jackson_annotation_introspector_1_expr237_line_1273;
		int PROBE_END_LINE_1273 = 1273;
		return jackson_annotation_introspector_1_expr235_line_1273;
    }

    @Override
    @Deprecated // since 2.9
    public boolean hasAnySetterAnnotation(AnnotatedMethod am) {
        return _hasAnnotation(am, JsonAnySetter.class);
    }

    @Override
    @Deprecated // since 2.9
    public boolean hasCreatorAnnotation(Annotated a)
    {
        /* No dedicated disabling; regular @JsonIgnore used if needs to be
         * ignored (and if so, is handled prior to this method getting called)
         */
         JsonCreator ann = _findAnnotation(a, JsonCreator.class);
         if (ann != null) {
             return (ann.mode() != JsonCreator.Mode.DISABLED);
         }
         // 19-Apr-2016, tatu: As per [databind#1197], [databind#1122] (and some related),
         //    may or may not consider it a creator
         if (_cfgConstructorPropertiesImpliesCreator ) {
             if (a instanceof AnnotatedConstructor) {
                 if (_java7Helper != null) {
                     Boolean b = _java7Helper.hasCreatorAnnotation(a);
                     if (b != null) {
                         return b.booleanValue();
                     }
                 }
             }
         }
         return false;
    }

    @Override
    @Deprecated // since 2.9
    public JsonCreator.Mode findCreatorBinding(Annotated a) {
        JsonCreator ann = _findAnnotation(a, JsonCreator.class);
        return (ann == null) ? null : ann.mode();
    }

    @Override
    public JsonCreator.Mode findCreatorAnnotation(MapperConfig<?> config, Annotated a) {
        int PROBE_START_LINE_1317 = 1317;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4110_line_1317 = a;
		JsonCreator jackson_annotation_introspector_1_expr240_line_1317 = _findAnnotation(p_a_4110_line_1317,
				JsonCreator.class);
		int PROBE_END_LINE_1317 = 1317;
		JsonCreator ann = jackson_annotation_introspector_1_expr240_line_1317;
        int PROBE_START_LINE_1318 = 1320;
		com.fasterxml.jackson.annotation.JsonCreator v_ann_4111_line_1318 = ann;
		boolean jackson_annotation_introspector_1_expr242_line_1318 = v_ann_4111_line_1318 != null;
		int PROBE_END_LINE_1318 = 1320;
		if (jackson_annotation_introspector_1_expr242_line_1318) {
            return ann.mode();
        }
        int PROBE_START_LINE_1321 = 1334;
		boolean f__cfg_constructor_properties_implies_creator_3952_line_1321 = _cfgConstructorPropertiesImpliesCreator;
		boolean jackson_annotation_introspector_1_expr243_line_1321 = f__cfg_constructor_properties_implies_creator_3952_line_1321
				&& config.isEnabled(MapperFeature.INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES);
		int PROBE_END_LINE_1321 = 1334;
		if (jackson_annotation_introspector_1_expr243_line_1321
            ) {
            int PROBE_START_LINE_1324 = 1333;
				com.fasterxml.jackson.databind.introspect.Annotated p_a_4110_line_1324 = a;
				boolean jackson_annotation_introspector_1_expr244_line_1324 = p_a_4110_line_1324 instanceof AnnotatedConstructor;
				int PROBE_END_LINE_1324 = 1333;
			if (jackson_annotation_introspector_1_expr244_line_1324) {
                int PROBE_START_LINE_1325 = 1332;
				com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3950_line_1325 = _java7Helper;
				boolean jackson_annotation_introspector_1_expr245_line_1325 = f__java_7helper_3950_line_1325 != null;
				int PROBE_END_LINE_1325 = 1332;
				if (jackson_annotation_introspector_1_expr245_line_1325) {
                    int PROBE_START_LINE_1326 = 1326;
					com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3950_line_1326 = _java7Helper;
					com.fasterxml.jackson.databind.introspect.Annotated p_a_4110_line_1326 = a;
					Boolean jackson_annotation_introspector_1_expr246_line_1326 = f__java_7helper_3950_line_1326
							.hasCreatorAnnotation(p_a_4110_line_1326);
					int PROBE_END_LINE_1326 = 1326;
					Boolean b = jackson_annotation_introspector_1_expr246_line_1326;
                    int PROBE_START_LINE_1327 = 1331;
					Boolean v_b_4112_line_1327 = b;
					boolean jackson_annotation_introspector_1_expr249_line_1327 = v_b_4112_line_1327 != null;
					boolean jackson_annotation_introspector_1_expr248_line_1327 = (jackson_annotation_introspector_1_expr249_line_1327);
					boolean jackson_annotation_introspector_1_expr250_line_1327 = true;
					if (jackson_annotation_introspector_1_expr248_line_1327) {
						Boolean v_b_4112_line_1327_v1 = b;
						jackson_annotation_introspector_1_expr250_line_1327 = v_b_4112_line_1327_v1.booleanValue();
					}
					boolean jackson_annotation_introspector_1_expr247_line_1327 = jackson_annotation_introspector_1_expr248_line_1327
							&& jackson_annotation_introspector_1_expr250_line_1327;
					int PROBE_END_LINE_1327 = 1331;
					if (jackson_annotation_introspector_1_expr247_line_1327) {
                        // 13-Sep-2016, tatu: Judgment call, but I don't think JDK ever implies
                        //    use of delegate; assumes as-properties implicitly
                        return JsonCreator.Mode.PROPERTIES;
                    }
                }
            }
        }
        return null;
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    protected boolean _isIgnorable(Annotated a)
    {
        int PROBE_START_LINE_1346 = 1346;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4113_line_1346 = a;
		JsonIgnore jackson_annotation_introspector_1_expr251_line_1346 = _findAnnotation(p_a_4113_line_1346,
				JsonIgnore.class);
		int PROBE_END_LINE_1346 = 1346;
		JsonIgnore ann = jackson_annotation_introspector_1_expr251_line_1346;
        int PROBE_START_LINE_1347 = 1349;
		com.fasterxml.jackson.annotation.JsonIgnore v_ann_4114_line_1347 = ann;
		boolean jackson_annotation_introspector_1_expr253_line_1347 = v_ann_4114_line_1347 != null;
		int PROBE_END_LINE_1347 = 1349;
		if (jackson_annotation_introspector_1_expr253_line_1347) {
            return ann.value();
        }
        int PROBE_START_LINE_1350 = 1355;
		com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3950_line_1350 = _java7Helper;
		boolean jackson_annotation_introspector_1_expr254_line_1350 = f__java_7helper_3950_line_1350 != null;
		int PROBE_END_LINE_1350 = 1355;
		if (jackson_annotation_introspector_1_expr254_line_1350) {
            int PROBE_START_LINE_1351 = 1351;
			com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3950_line_1351 = _java7Helper;
			com.fasterxml.jackson.databind.introspect.Annotated p_a_4113_line_1351 = a;
			Boolean jackson_annotation_introspector_1_expr255_line_1351 = f__java_7helper_3950_line_1351
					.findTransient(p_a_4113_line_1351);
			int PROBE_END_LINE_1351 = 1351;
			Boolean b = jackson_annotation_introspector_1_expr255_line_1351;
            int PROBE_START_LINE_1352 = 1354;
			Boolean v_b_4115_line_1352 = b;
			boolean jackson_annotation_introspector_1_expr256_line_1352 = v_b_4115_line_1352 != null;
			int PROBE_END_LINE_1352 = 1354;
			if (jackson_annotation_introspector_1_expr256_line_1352) {
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
        int PROBE_START_LINE_1383 = 1395;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_4121_line_1383 = a;
		boolean jackson_annotation_introspector_1_expr257_line_1383 = p_a_4121_line_1383 instanceof AnnotatedParameter;
		int PROBE_END_LINE_1383 = 1395;
		if (jackson_annotation_introspector_1_expr257_line_1383) {
            int PROBE_START_LINE_1384 = 1384;
			com.fasterxml.jackson.databind.introspect.Annotated p_a_4121_line_1384 = a;
			int PROBE_END_LINE_1384 = 1384;
			AnnotatedParameter p = (AnnotatedParameter) p_a_4121_line_1384;
            int PROBE_START_LINE_1385 = 1385;
			com.fasterxml.jackson.databind.introspect.AnnotatedParameter v_p_4122_line_1385 = p;
			AnnotatedWithParams jackson_annotation_introspector_1_expr259_line_1385 = v_p_4122_line_1385.getOwner();
			int PROBE_END_LINE_1385 = 1385;
			AnnotatedWithParams ctor = jackson_annotation_introspector_1_expr259_line_1385;

            int PROBE_START_LINE_1387 = 1394;
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams v_ctor_4123_line_1387 = ctor;
			boolean jackson_annotation_introspector_1_expr260_line_1387 = v_ctor_4123_line_1387 != null;
			int PROBE_END_LINE_1387 = 1394;
			if (jackson_annotation_introspector_1_expr260_line_1387) {
                int PROBE_START_LINE_1388 = 1393;
				com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3950_line_1388 = _java7Helper;
				boolean jackson_annotation_introspector_1_expr261_line_1388 = f__java_7helper_3950_line_1388 != null;
				int PROBE_END_LINE_1388 = 1393;
				if (jackson_annotation_introspector_1_expr261_line_1388) {
                    int PROBE_START_LINE_1389 = 1389;
					com.fasterxml.jackson.databind.ext.Java7Support f__java_7helper_3950_line_1389 = _java7Helper;
					com.fasterxml.jackson.databind.introspect.AnnotatedParameter v_p_4122_line_1389 = p;
					PropertyName jackson_annotation_introspector_1_expr262_line_1389 = f__java_7helper_3950_line_1389
							.findConstructorName(v_p_4122_line_1389);
					int PROBE_END_LINE_1389 = 1389;
					PropertyName name = jackson_annotation_introspector_1_expr262_line_1389;
                    int PROBE_START_LINE_1390 = 1392;
					com.fasterxml.jackson.databind.PropertyName v_name_4124_line_1390 = name;
					boolean jackson_annotation_introspector_1_expr263_line_1390 = v_name_4124_line_1390 != null;
					int PROBE_END_LINE_1390 = 1392;
					if (jackson_annotation_introspector_1_expr263_line_1390) {
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
        TypeResolverBuilder<?> b = null;
        int PROBE_START_LINE_1409 = 1409;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_4126_line_1409 = ann;
		JsonTypeInfo jackson_annotation_introspector_1_expr264_line_1409 = _findAnnotation(p_ann_4126_line_1409,
				JsonTypeInfo.class);
		int PROBE_END_LINE_1409 = 1409;
		JsonTypeInfo info = jackson_annotation_introspector_1_expr264_line_1409;
        int PROBE_START_LINE_1410 = 1410;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_4126_line_1410 = ann;
		JsonTypeResolver jackson_annotation_introspector_1_expr266_line_1410 = _findAnnotation(p_ann_4126_line_1410,
				JsonTypeResolver.class);
		int PROBE_END_LINE_1410 = 1410;
		JsonTypeResolver resAnn = jackson_annotation_introspector_1_expr266_line_1410;
        
        int PROBE_START_LINE_1412 = 1430;
		com.fasterxml.jackson.databind.annotation.JsonTypeResolver v_res_ann_4129_line_1412 = resAnn;
		boolean jackson_annotation_introspector_1_expr268_line_1412 = v_res_ann_4129_line_1412 != null;
		int PROBE_END_LINE_1412 = 1430;
		if (jackson_annotation_introspector_1_expr268_line_1412) {
            if (info == null) {
                return null;
            }
            /* let's not try to force access override (would need to pass
             * settings through if we did, since that's not doable on some
             * platforms)
             */
            b = config.typeResolverBuilderInstance(ann, resAnn.value());
        } else { // if not, use standard one, if indicated by annotations
            int PROBE_START_LINE_1422 = 1424;
			com.fasterxml.jackson.annotation.JsonTypeInfo v_info_4128_line_1422 = info;
			boolean jackson_annotation_introspector_1_expr269_line_1422 = v_info_4128_line_1422 == null;
			int PROBE_END_LINE_1422 = 1424;
			if (jackson_annotation_introspector_1_expr269_line_1422) {
                return null;
            }
            int PROBE_START_LINE_1426 = 1428;
			com.fasterxml.jackson.annotation.JsonTypeInfo v_info_4128_line_1426 = info;
			com.fasterxml.jackson.annotation.JsonTypeInfo.Id jackson_annotation_introspector_1_expr271_line_1426 = v_info_4128_line_1426
					.use();
			com.fasterxml.jackson.annotation.JsonTypeInfo.Id q_none_119_line_1426 = JsonTypeInfo.Id.NONE;
			boolean jackson_annotation_introspector_1_expr270_line_1426 = jackson_annotation_introspector_1_expr271_line_1426 == q_none_119_line_1426;
			int PROBE_END_LINE_1426 = 1428;
			// bit special; must return 'marker' to block use of default typing:
            if (jackson_annotation_introspector_1_expr270_line_1426) {
                return _constructNoTypeResolverBuilder();
            }
            int PROBE_START_LINE_1429 = 1429;
			com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder jackson_annotation_introspector_1_expr273_line_1429 = _constructStdTypeResolverBuilder();
			int PROBE_END_LINE_1429 = 1429;
			b = jackson_annotation_introspector_1_expr273_line_1429;
        }
        int PROBE_START_LINE_1432 = 1432;
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_4126_line_1432 = ann;
		JsonTypeIdResolver jackson_annotation_introspector_1_expr274_line_1432 = _findAnnotation(p_ann_4126_line_1432,
				JsonTypeIdResolver.class);
		int PROBE_END_LINE_1432 = 1432;
		// Does it define a custom type id resolver?
        JsonTypeIdResolver idResInfo = jackson_annotation_introspector_1_expr274_line_1432;
        int PROBE_START_LINE_1433 = 1434;
		com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver v_id_res_info_4131_line_1433 = idResInfo;
		boolean jackson_annotation_introspector_1_expr279_line_1433 = v_id_res_info_4131_line_1433 == null;
		boolean jackson_annotation_introspector_1_expr277_line_1433 = (jackson_annotation_introspector_1_expr279_line_1433);
		TypeIdResolver jackson_annotation_introspector_1_expr276_line_1433 = jackson_annotation_introspector_1_expr277_line_1433
				? null
				: config.typeIdResolverInstance(ann, idResInfo.value());
		int PROBE_END_LINE_1433 = 1434;
		TypeIdResolver idRes = jackson_annotation_introspector_1_expr276_line_1433;
        int PROBE_START_LINE_1435 = 1437;
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver v_id_res_4132_line_1435 = idRes;
		boolean jackson_annotation_introspector_1_expr280_line_1435 = v_id_res_4132_line_1435 != null;
		int PROBE_END_LINE_1435 = 1437;
		if (jackson_annotation_introspector_1_expr280_line_1435) {
            idRes.init(baseType);
        }
        int PROBE_START_LINE_1438 = 1438;
		TypeResolverBuilder<?> v_b_4130_line_1438 = b;
		com.fasterxml.jackson.annotation.JsonTypeInfo v_info_4128_line_1438 = info;
		com.fasterxml.jackson.annotation.JsonTypeInfo.Id jackson_annotation_introspector_1_expr283_line_1438 = v_info_4128_line_1438
				.use();
		com.fasterxml.jackson.databind.jsontype.TypeIdResolver v_id_res_4132_line_1438 = idRes;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr282_line_1438 = v_b_4130_line_1438
				.init(jackson_annotation_introspector_1_expr283_line_1438, v_id_res_4132_line_1438);
		int PROBE_END_LINE_1438 = 1438;
		b = jackson_annotation_introspector_1_expr282_line_1438;
        int PROBE_START_LINE_1443 = 1443;
		com.fasterxml.jackson.annotation.JsonTypeInfo v_info_4128_line_1443 = info;
		JsonTypeInfo.As jackson_annotation_introspector_1_expr284_line_1443 = v_info_4128_line_1443.include();
		int PROBE_END_LINE_1443 = 1443;
		/* 13-Aug-2011, tatu: One complication; external id
         *   only works for properties; so if declared for a Class, we will need
         *   to map it to "PROPERTY" instead of "EXTERNAL_PROPERTY"
         */
        JsonTypeInfo.As inclusion = jackson_annotation_introspector_1_expr284_line_1443;
        int PROBE_START_LINE_1444 = 1446;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As v_inclusion_4133_line_1444 = inclusion;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As q_external_property_120_line_1444 = JsonTypeInfo.As.EXTERNAL_PROPERTY;
		boolean jackson_annotation_introspector_1_expr286_line_1444 = v_inclusion_4133_line_1444 == q_external_property_120_line_1444;
		boolean jackson_annotation_introspector_1_expr287_line_1444 = true;
		if (jackson_annotation_introspector_1_expr286_line_1444) {
			com.fasterxml.jackson.databind.introspect.Annotated p_ann_4126_line_1444 = ann;
			boolean jackson_annotation_introspector_1_expr288_line_1444 = p_ann_4126_line_1444 instanceof AnnotatedClass;
			jackson_annotation_introspector_1_expr287_line_1444 = (jackson_annotation_introspector_1_expr288_line_1444);
		}
		boolean jackson_annotation_introspector_1_expr285_line_1444 = jackson_annotation_introspector_1_expr286_line_1444
				&& jackson_annotation_introspector_1_expr287_line_1444;
		int PROBE_END_LINE_1444 = 1446;
		if (jackson_annotation_introspector_1_expr285_line_1444) {
            inclusion = JsonTypeInfo.As.PROPERTY;
        }
        int PROBE_START_LINE_1447 = 1447;
		TypeResolverBuilder<?> v_b_4130_line_1447 = b;
		com.fasterxml.jackson.annotation.JsonTypeInfo.As v_inclusion_4133_line_1447 = inclusion;
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr290_line_1447 = v_b_4130_line_1447
				.inclusion(v_inclusion_4133_line_1447);
		int PROBE_END_LINE_1447 = 1447;
		b = jackson_annotation_introspector_1_expr290_line_1447;
        int PROBE_START_LINE_1448 = 1448;
		TypeResolverBuilder<?> v_b_4130_line_1448 = b;
		com.fasterxml.jackson.annotation.JsonTypeInfo v_info_4128_line_1448 = info;
		String jackson_annotation_introspector_1_expr293_line_1448 = v_info_4128_line_1448.property();
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr292_line_1448 = v_b_4130_line_1448
				.typeProperty(jackson_annotation_introspector_1_expr293_line_1448);
		int PROBE_END_LINE_1448 = 1448;
		b = jackson_annotation_introspector_1_expr292_line_1448;
        int PROBE_START_LINE_1449 = 1449;
		com.fasterxml.jackson.annotation.JsonTypeInfo v_info_4128_line_1449 = info;
		Class<?> jackson_annotation_introspector_1_expr294_line_1449 = v_info_4128_line_1449.defaultImpl();
		int PROBE_END_LINE_1449 = 1449;
		Class<?> defaultImpl = jackson_annotation_introspector_1_expr294_line_1449;

        int PROBE_START_LINE_1455 = 1457;
		Class<?> v_default_impl_4134_line_1455 = defaultImpl;
		boolean jackson_annotation_introspector_1_expr296_line_1455 = v_default_impl_4134_line_1455 != JsonTypeInfo.None.class;
		boolean jackson_annotation_introspector_1_expr298_line_1455 = true;
		if (jackson_annotation_introspector_1_expr296_line_1455) {
			Class<?> v_default_impl_4134_line_1455_v1 = defaultImpl;
			boolean jackson_annotation_introspector_1_expr299_line_1455 = v_default_impl_4134_line_1455_v1
					.isAnnotation();
			jackson_annotation_introspector_1_expr298_line_1455 = !jackson_annotation_introspector_1_expr299_line_1455;
		}
		boolean jackson_annotation_introspector_1_expr295_line_1455 = jackson_annotation_introspector_1_expr296_line_1455
				&& jackson_annotation_introspector_1_expr298_line_1455;
		int PROBE_END_LINE_1455 = 1457;
		// 08-Dec-2014, tatu: To deprecate `JsonTypeInfo.None` we need to use other placeholder(s);
        //   and since `java.util.Void` has other purpose (to indicate "deser as null"), we'll instead
        //   use `JsonTypeInfo.class` itself. But any annotation type will actually do, as they have no
        //   valid use (cannot instantiate as default)
        if (jackson_annotation_introspector_1_expr295_line_1455) {
            b = b.defaultImpl(defaultImpl);
        }
        int PROBE_START_LINE_1458 = 1458;
		TypeResolverBuilder<?> v_b_4130_line_1458 = b;
		com.fasterxml.jackson.annotation.JsonTypeInfo v_info_4128_line_1458 = info;
		boolean jackson_annotation_introspector_1_expr302_line_1458 = v_info_4128_line_1458.visible();
		TypeResolverBuilder<?> jackson_annotation_introspector_1_expr301_line_1458 = v_b_4130_line_1458
				.typeIdVisibility(jackson_annotation_introspector_1_expr302_line_1458);
		int PROBE_END_LINE_1458 = 1458;
		b = jackson_annotation_introspector_1_expr301_line_1458;
        int PROBE_START_LINE_1459 = 1459;
		TypeResolverBuilder<?> v_b_4130_line_1459 = b;
		int PROBE_END_LINE_1459 = 1459;
		return v_b_4130_line_1459;
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

    private boolean _primitiveAndWrapper(Class<?> baseType, Class<?> refinement)
    {
        if (baseType.isPrimitive()) {
            return baseType == ClassUtil.primitiveType(refinement);
        }
        if (refinement.isPrimitive()) {
            return refinement == ClassUtil.primitiveType(baseType);
        }
        return false;
    }

    private boolean _primitiveAndWrapper(JavaType baseType, Class<?> refinement)
    {
        if (baseType.isPrimitive()) {
            return baseType.hasRawClass(ClassUtil.primitiveType(refinement));
        }
        if (refinement.isPrimitive()) {
            return refinement == ClassUtil.primitiveType(baseType.getRawClass());
        }
        return false;
    }
}
