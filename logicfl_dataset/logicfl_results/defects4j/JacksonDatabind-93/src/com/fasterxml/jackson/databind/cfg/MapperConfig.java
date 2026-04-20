package com.fasterxml.jackson.databind.cfg;

import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.annotation.JsonInclude.Value;
import com.fasterxml.jackson.databind.JavaType;

/**
 * Interface that defines functionality accessible through both
 * serialization and deserialization configuration objects;
 * accessors to mode-independent configuration settings
 * and such.
 * In addition, shared features are defined
 * in {@link MapperFeature}.
 *<p>
 * Small part of implementation is included here by aggregating
 * {@link BaseSettings} instance that contains configuration
 * that is shared between different types of instances.
 */
public abstract class MapperConfig<T extends MapperConfig<T>>
    implements ClassIntrospector.MixInResolver,
        java.io.Serializable
{
    private static final long serialVersionUID = 1L; // since 2.5

    int PROBE_START_LINE_41 = 44;

	protected static final com.fasterxml.jackson.annotation.JsonInclude.Value mapper_config_1_expr1_line_44 = JsonInclude.Value
			.empty();

	int PROBE_END_LINE_41 = 44;

	/**
     * @since 2.7
     */
    protected final static JsonInclude.Value EMPTY_INCLUDE = mapper_config_1_expr1_line_44;

    int PROBE_START_LINE_46 = 49;

	protected static final com.fasterxml.jackson.annotation.JsonFormat.Value mapper_config_1_expr2_line_49 = JsonFormat.Value
			.empty();

	int PROBE_END_LINE_46 = 49;

	/**
     * @since 2.7
     */
    protected final static JsonFormat.Value EMPTY_FORMAT = mapper_config_1_expr2_line_49;

    /**
     * Set of shared mapper features enabled.
     */
    protected final int _mapperFeatures;
    
    /**
     * Immutable container object for simple configuration settings.
     */
    protected final BaseSettings _base;
    
    /*
    /**********************************************************
    /* Life-cycle: constructors
    /**********************************************************
     */

    protected MapperConfig(BaseSettings base, int mapperFeatures)
    {
        int PROBE_START_LINE_69 = 69;
		com.fasterxml.jackson.databind.cfg.BaseSettings p_base_1237_line_69 = base;
		int PROBE_END_LINE_69 = 69;
		_base = p_base_1237_line_69;
        int PROBE_START_LINE_70 = 70;
		int p_mapper_features_1238_line_70 = mapperFeatures;
		int PROBE_END_LINE_70 = 70;
		_mapperFeatures = p_mapper_features_1238_line_70;
    }

    protected MapperConfig(MapperConfig<T> src, int mapperFeatures)
    {
        _base = src._base;
        _mapperFeatures = mapperFeatures;
    }

    protected MapperConfig(MapperConfig<T> src, BaseSettings base)
    {
        int PROBE_START_LINE_81 = 81;
		com.fasterxml.jackson.databind.cfg.BaseSettings p_base_1244_line_81 = base;
		int PROBE_END_LINE_81 = 81;
		_base = p_base_1244_line_81;
        int PROBE_START_LINE_82 = 82;
		MapperConfig<T> p_src_1243_line_82 = src;
		int q__mapper_features_37_line_82 = p_src_1243_line_82._mapperFeatures;
		int PROBE_END_LINE_82 = 82;
		_mapperFeatures = q__mapper_features_37_line_82;
    }
    
    protected MapperConfig(MapperConfig<T> src)
    {
        _base = src._base;
        _mapperFeatures = src._mapperFeatures;
    }
    
    /**
     * Method that calculates bit set (flags) of all features that
     * are enabled by default.
     */
    public static <F extends Enum<F> & ConfigFeature> int collectFeatureDefaults(Class<F> enumClass)
    {
        int flags = 0;
        int PROBE_START_LINE_98 = 102;
		Class<F> p_enum_class_1246_line_98 = enumClass;
		F[] mapper_config_1_expr7_line_98 = p_enum_class_1246_line_98.getEnumConstants();
		int PROBE_END_LINE_98 = 102;
		for (F value : mapper_config_1_expr7_line_98) {
            int PROBE_START_LINE_99 = 101;
			F v_value_1248_line_99 = value;
			boolean mapper_config_1_expr8_line_99 = v_value_1248_line_99.enabledByDefault();
			int PROBE_END_LINE_99 = 101;
			if (mapper_config_1_expr8_line_99) {
                int PROBE_START_LINE_100 = 100;
				F v_value_1248_line_100 = value;
				int mapper_config_1_expr10_line_100 = v_value_1248_line_100.getMask();
				int PROBE_END_LINE_100 = 100;
				flags |= mapper_config_1_expr10_line_100;
            }
        }
        int PROBE_START_LINE_103 = 103;
		int v_flags_1247_line_103 = flags;
		int PROBE_END_LINE_103 = 103;
		return v_flags_1247_line_103;
    }

    /*
    /**********************************************************
    /* Life-cycle: factory methods
    /**********************************************************
     */
    
    /**
     * Method for constructing and returning a new instance with specified
     * mapper features enabled.
     */
    public abstract T with(MapperFeature... features);

    /**
     * Method for constructing and returning a new instance with specified
     * mapper features disabled.
     */
    public abstract T without(MapperFeature... features);

    /**
     * @since 2.3
     */
    public abstract T with(MapperFeature feature, boolean state);
    
    /*
    /**********************************************************
    /* Configuration: simple features
    /**********************************************************
     */

    /**
     * Accessor for simple mapper features (which are shared for
     * serialization, deserialization)
     */
    public final boolean isEnabled(MapperFeature f) {
        int PROBE_START_LINE_140 = 140;
		int f__mapper_features_1240_line_140 = _mapperFeatures;
		com.fasterxml.jackson.databind.MapperFeature p_f_1253_line_140 = f;
		int mapper_config_1_expr14_line_140 = p_f_1253_line_140.getMask();
		int mapper_config_1_expr13_line_140 = f__mapper_features_1240_line_140 & mapper_config_1_expr14_line_140;
		int mapper_config_1_expr12_line_140 = (mapper_config_1_expr13_line_140);
		boolean mapper_config_1_expr11_line_140 = mapper_config_1_expr12_line_140 != 0;
		int PROBE_END_LINE_140 = 140;
		return mapper_config_1_expr11_line_140;
    }

    /**
     * "Bulk" access method for checking that all features specified by
     * mask are enabled.
     * 
     * @since 2.3
     */
    public final boolean hasMapperFeatures(int featureMask) {
        return (_mapperFeatures & featureMask) == featureMask;
    }
    
    /**
     * Method for determining whether annotation processing is enabled or not
     * (default settings are typically that it is enabled; must explicitly disable).
     * 
     * @return True if annotation processing is enabled; false if not
     */
    public final boolean isAnnotationProcessingEnabled() {
        int PROBE_START_LINE_160 = 160;
		com.fasterxml.jackson.databind.MapperFeature q_use_annotations_38_line_160 = MapperFeature.USE_ANNOTATIONS;
		boolean mapper_config_1_expr15_line_160 = isEnabled(q_use_annotations_38_line_160);
		int PROBE_END_LINE_160 = 160;
		return mapper_config_1_expr15_line_160;
    }

    /**
     * Accessor for determining whether it is ok to try to force override of access
     * modifiers to be able to get or set values of non-public Methods, Fields;
     * to invoke non-public Constructors, Methods; or to instantiate non-public
     * Classes. By default this is enabled, but on some platforms it needs to be
     * prevented since if this would violate security constraints and cause failures.
     * 
     * @return True if access modifier overriding is allowed (and may be done for
     *   any Field, Method, Constructor or Class); false to prevent any attempts
     *   to override.
     */
    public final boolean canOverrideAccessModifiers() {
        int PROBE_START_LINE_175 = 175;
		com.fasterxml.jackson.databind.MapperFeature q_can_override_access_modifiers_38_line_175 = MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS;
		boolean mapper_config_1_expr16_line_175 = isEnabled(q_can_override_access_modifiers_38_line_175);
		int PROBE_END_LINE_175 = 175;
		return mapper_config_1_expr16_line_175;
    }

    /**
     * Accessor for checking whether default settings for property handling
     * indicate that properties should be alphabetically ordered or not.
     */
    public final boolean shouldSortPropertiesAlphabetically() {
        int PROBE_START_LINE_183 = 183;
		com.fasterxml.jackson.databind.MapperFeature q_sort_properties_alphabetically_39_line_183 = MapperFeature.SORT_PROPERTIES_ALPHABETICALLY;
		boolean mapper_config_1_expr17_line_183 = isEnabled(q_sort_properties_alphabetically_39_line_183);
		int PROBE_END_LINE_183 = 183;
		return mapper_config_1_expr17_line_183;
    }

    /**
     * Accessor for checking whether configuration indicates that
     * "root wrapping" (use of an extra property/name pair at root level)
     * is expected or not.
     */
    public abstract boolean useRootWrapping();

    /*
    /**********************************************************
    /* Configuration: factory methods
    /**********************************************************
     */

    /**
     * Method for constructing a specialized textual object that can typically
     * be serialized faster than basic {@link java.lang.String} (depending
     * on escaping needed if any, char-to-byte encoding if needed).
     * 
     * @param src Text to represent
     * 
     * @return Optimized text object constructed
     * 
     * @since 2.4
     */
    public SerializableString compileString(String src) {
        /* 20-Jan-2014, tatu: For now we will just construct it directly, but
         *    for 2.4 need to allow overriding to support non-standard extensions
         *    to be used by extensions like Afterburner.
         */
        return new SerializedString(src);
    }
    
    /*
    /**********************************************************
    /* Configuration: introspectors, mix-ins
    /**********************************************************
     */
    
    public ClassIntrospector getClassIntrospector() {
        int PROBE_START_LINE_225 = 225;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1239_line_225 = _base;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector mapper_config_1_expr18_line_225 = f__base_1239_line_225
				.getClassIntrospector();
		int PROBE_END_LINE_225 = 225;
		return mapper_config_1_expr18_line_225;
    }

    /**
     * Method for getting {@link AnnotationIntrospector} configured
     * to introspect annotation values used for configuration.
     *<p>
     * Non-final since it is actually overridden by sub-classes (for now?)
     */
    public AnnotationIntrospector getAnnotationIntrospector() {
        int PROBE_START_LINE_235 = 235;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1239_line_235 = _base;
		com.fasterxml.jackson.databind.AnnotationIntrospector mapper_config_1_expr19_line_235 = f__base_1239_line_235
				.getAnnotationIntrospector();
		int PROBE_END_LINE_235 = 235;
		return mapper_config_1_expr19_line_235;
    }

    /**
     * Accessor for object used for determining whether specific property elements
     * (method, constructors, fields) can be auto-detected based on
     * their visibility (access modifiers). Can be changed to allow
     * different minimum visibility levels for auto-detection. Note
     * that this is the global handler; individual types (classes)
     * can further override active checker used (using
     * {@link JsonAutoDetect} annotation)
     */
    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        int PROBE_START_LINE_248 = 248;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1239_line_248 = _base;
		VisibilityChecker<?> mapper_config_1_expr20_line_248 = f__base_1239_line_248.getVisibilityChecker();
		int PROBE_END_LINE_248 = 248;
		return mapper_config_1_expr20_line_248;
    }
    
    public final PropertyNamingStrategy getPropertyNamingStrategy() {
        int PROBE_START_LINE_252 = 252;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1239_line_252 = _base;
		com.fasterxml.jackson.databind.PropertyNamingStrategy mapper_config_1_expr21_line_252 = f__base_1239_line_252
				.getPropertyNamingStrategy();
		int PROBE_END_LINE_252 = 252;
		return mapper_config_1_expr21_line_252;
    }

    public final HandlerInstantiator getHandlerInstantiator() {
        return _base.getHandlerInstantiator();
    }
    
    /*
    /**********************************************************
    /* Configuration: type and subtype handling
    /**********************************************************
     */

    /**
     * Method called to locate a type info handler for types that do not have
     * one explicitly declared via annotations (or other configuration).
     * If such default handler is configured, it is returned; otherwise
     * null is returned.
     */
    public final TypeResolverBuilder<?> getDefaultTyper(JavaType baseType) {
        int PROBE_START_LINE_272 = 272;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1239_line_272 = _base;
		TypeResolverBuilder<?> mapper_config_1_expr22_line_272 = f__base_1239_line_272.getTypeResolverBuilder();
		int PROBE_END_LINE_272 = 272;
		return mapper_config_1_expr22_line_272;
    }
    
    public abstract SubtypeResolver getSubtypeResolver();

    public final TypeFactory getTypeFactory() {
        int PROBE_START_LINE_278 = 278;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1239_line_278 = _base;
		com.fasterxml.jackson.databind.type.TypeFactory mapper_config_1_expr23_line_278 = f__base_1239_line_278
				.getTypeFactory();
		int PROBE_END_LINE_278 = 278;
		return mapper_config_1_expr23_line_278;
    }

    /**
     * Helper method that will construct {@link JavaType} for given
     * raw class.
     * This is a simple short-cut for:
     *<pre>
     *    getTypeFactory().constructType(cls);
     *</pre>
     */
    public final JavaType constructType(Class<?> cls) {
        int PROBE_START_LINE_290 = 290;
		com.fasterxml.jackson.databind.type.TypeFactory mapper_config_1_expr25_line_290 = getTypeFactory();
		Class<?> p_cls_1257_line_290 = cls;
		com.fasterxml.jackson.databind.JavaType mapper_config_1_expr24_line_290 = mapper_config_1_expr25_line_290
				.constructType(p_cls_1257_line_290);
		int PROBE_END_LINE_290 = 290;
		return mapper_config_1_expr24_line_290;
    }

    /**
     * Helper method that will construct {@link JavaType} for given
     * type reference
     * This is a simple short-cut for:
     *<pre>
     *    getTypeFactory().constructType(valueTypeRef);
     *</pre>
     */
    public final JavaType constructType(TypeReference<?> valueTypeRef) {
        return getTypeFactory().constructType(valueTypeRef.getType());
    }

    public JavaType constructSpecializedType(JavaType baseType, Class<?> subclass) {
        int PROBE_START_LINE_306 = 306;
		com.fasterxml.jackson.databind.type.TypeFactory mapper_config_1_expr27_line_306 = getTypeFactory();
		com.fasterxml.jackson.databind.JavaType p_base_type_1259_line_306 = baseType;
		Class<?> p_subclass_1260_line_306 = subclass;
		com.fasterxml.jackson.databind.JavaType mapper_config_1_expr26_line_306 = mapper_config_1_expr27_line_306
				.constructSpecializedType(p_base_type_1259_line_306, p_subclass_1260_line_306);
		int PROBE_END_LINE_306 = 306;
		return mapper_config_1_expr26_line_306;
    }

    /*
    /**********************************************************
    /* Configuration: introspection support
    /**********************************************************
     */

    /**
     * Accessor for getting bean description that only contains class
     * annotations: useful if no getter/setter/creator information is needed.
     */
    public BeanDescription introspectClassAnnotations(Class<?> cls) {
        int PROBE_START_LINE_320 = 320;
		Class<?> p_cls_1261_line_320 = cls;
		com.fasterxml.jackson.databind.JavaType mapper_config_1_expr29_line_320 = constructType(p_cls_1261_line_320);
		com.fasterxml.jackson.databind.BeanDescription mapper_config_1_expr28_line_320 = introspectClassAnnotations(
				mapper_config_1_expr29_line_320);
		int PROBE_END_LINE_320 = 320;
		return mapper_config_1_expr28_line_320;
    }
    
    /**
     * Accessor for getting bean description that only contains class
     * annotations: useful if no getter/setter/creator information is needed.
     */
    public abstract BeanDescription introspectClassAnnotations(JavaType type);

    /**
     * Accessor for getting bean description that only contains immediate class
     * annotations: ones from the class, and its direct mix-in, if any, but
     * not from super types.
     */
    public BeanDescription introspectDirectClassAnnotations(Class<?> cls) {
        return introspectDirectClassAnnotations(constructType(cls));
    }
    /**
     * Accessor for getting bean description that only contains immediate class
     * annotations: ones from the class, and its direct mix-in, if any, but
     * not from super types.
     */
    public abstract BeanDescription introspectDirectClassAnnotations(JavaType type);

    /*
    /**********************************************************
    /* Configuration: default settings with per-type overrides
    /**********************************************************
     */

    /**
     * Accessor for default property inclusion to use for serialization,
     * used unless overridden by per-type or per-property overrides.
     *
     * @since 2.7
     */
    public abstract JsonInclude.Value getDefaultPropertyInclusion();

    /**
     * Accessor for default property inclusion to use for serialization,
     * considering possible per-type override for given base type.<br>
     * NOTE: if no override found, defaults to value returned by
     * {@link #getDefaultPropertyInclusion()}.
     *
     * @since 2.7
     */
    public abstract JsonInclude.Value getDefaultPropertyInclusion(Class<?> baseType);

    /**
     * Accessor for default property inclusion to use for serialization,
     * considering possible per-type override for given base type; but
     * if none found, returning given <code>defaultIncl</code>
     *
     * @param defaultIncl Inclusion setting to return if no overrides found.
     * 
     * @since 2.8.2
     */
    public abstract JsonInclude.Value getDefaultPropertyInclusion(Class<?> baseType,
            JsonInclude.Value defaultIncl);

    /**
     * Accessor for default format settings to use for serialization (and, to a degree
     * deserialization), considering baseline settings and per-type defaults
     * for given base type (if any).
     *
     * @since 2.7
     */
    public abstract JsonFormat.Value getDefaultPropertyFormat(Class<?> baseType);

    /**
     * Accessor for default property ignorals to use, if any, for given base type,
     * based on config overrides settings (see {@link #findConfigOverride(Class)}).
     *
     * @since 2.8
     */
    public abstract JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> baseType);

    /**
     * Helper method that may be called to see if there are property ignoral
     * definitions from annotations (via {@link AnnotatedClass}) or through
     * "config overrides". If both exist, config overrides have precedence
     * over class annotations.
     *
     * @since 2.8
     */
    public abstract JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> baseType,
            AnnotatedClass actualClass);

    /**
     * Accessor for finding possible {@link ConfigOverride} to use for
     * properties of given type. Note that only directly associate override
     * is found; no type hierarchy traversal is performed.
     *
     * @since 2.8
     * 
     * @return Override object if there is an override for specified type; `null` if not
     */
    public abstract ConfigOverride findConfigOverride(Class<?> type);

    /*
    /**********************************************************
    /* Configuration: other
    /**********************************************************
     */
    
    /**
     * Method for accessing currently configured (textual) date format
     * that will be used for reading or writing date values (in case
     * of writing, only if textual output is configured; not if dates
     * are to be serialized as time stamps).
     *<p>
     * Note that typically {@link DateFormat} instances are <b>not thread-safe</b>
     * (at least ones provided by JDK):
     * this means that calling code should clone format instance before
     * using it.
     *<p>
     * This method is usually only called by framework itself, since there
     * are convenience methods available via
     * {@link DeserializationContext} and {@link SerializerProvider} that
     * take care of cloning and thread-safe reuse.
     */
    public final DateFormat getDateFormat() { return _base.getDateFormat(); }

    /**
     * Method for accessing the default {@link java.util.Locale} to use
     * for formatting, unless overridden by local annotations.
     * Initially set to {@link Locale#getDefault()}.
     */
    public final Locale getLocale() { return _base.getLocale(); }
    
    /**
     * Method for accessing the default {@link java.util.TimeZone} to use
     * for formatting, unless overridden by local annotations.
     * Initially set to {@link TimeZone#getDefault()}.
     */
    public final TimeZone getTimeZone() { return _base.getTimeZone(); }
    
    /**
     * Accessor for finding currently active view, if any (null if none)
     */
    public abstract Class<?> getActiveView();

    /**
     * Method called during deserialization if Base64 encoded content
     * needs to be decoded. Default version just returns default Jackson
     * uses, which is modified-mime which does not add linefeeds (because
     * those would have to be escaped in JSON strings); but this can
     * be configured on {@link ObjectWriter}.
     */
    public Base64Variant getBase64Variant() {
        return _base.getBase64Variant();
    }

    /**
     * Method for accessing per-instance shared (baseline/default)
     * attribute values; these are used as the basis for per-call
     * attributes.
     * 
     * @since 2.3
     */
    public abstract ContextAttributes getAttributes();

    /**
     * @since 2.6
     */
    public abstract PropertyName findRootName(JavaType rootType);

    /**
     * @since 2.6
     */
    public abstract PropertyName findRootName(Class<?> rawRootType);

    /*
    /**********************************************************
    /* Methods for instantiating handlers
    /**********************************************************
     */

    /**
     * Method that can be called to obtain an instance of <code>TypeIdResolver</code> of
     * specified type.
     */
    public TypeResolverBuilder<?> typeResolverBuilderInstance(Annotated annotated,
            Class<? extends TypeResolverBuilder<?>> builderClass)
    {
        HandlerInstantiator hi = getHandlerInstantiator();
        if (hi != null) {
            TypeResolverBuilder<?> builder = hi.typeResolverBuilderInstance(this, annotated, builderClass);
            if (builder != null) {
                return builder;
            }
        }
        return (TypeResolverBuilder<?>) ClassUtil.createInstance(builderClass, canOverrideAccessModifiers());
    }

    /**
     * Method that can be called to obtain an instance of <code>TypeIdResolver</code> of
     * specified type.
     */
    public TypeIdResolver typeIdResolverInstance(Annotated annotated,
            Class<? extends TypeIdResolver> resolverClass)
    {
        HandlerInstantiator hi = getHandlerInstantiator();
        if (hi != null) {
            TypeIdResolver builder = hi.typeIdResolverInstance(this, annotated, resolverClass);
            if (builder != null) {
                return builder;
            }
        }
        return (TypeIdResolver) ClassUtil.createInstance(resolverClass, canOverrideAccessModifiers());
    }
}
