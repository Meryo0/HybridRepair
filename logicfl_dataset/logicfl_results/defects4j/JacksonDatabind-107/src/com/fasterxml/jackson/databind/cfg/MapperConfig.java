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
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
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
    private static final long serialVersionUID = 2L; // since 2.9

    int PROBE_START_LINE_42 = 45;

	protected static final com.fasterxml.jackson.annotation.JsonInclude.Value mapper_config_1_expr1_line_45 = JsonInclude.Value
			.empty();

	int PROBE_END_LINE_42 = 45;

	/**
     * @since 2.7
     */
    protected final static JsonInclude.Value EMPTY_INCLUDE = mapper_config_1_expr1_line_45;

    int PROBE_START_LINE_47 = 50;

	protected static final com.fasterxml.jackson.annotation.JsonFormat.Value mapper_config_1_expr2_line_50 = JsonFormat.Value
			.empty();

	int PROBE_END_LINE_47 = 50;

	/**
     * @since 2.7
     */
    protected final static JsonFormat.Value EMPTY_FORMAT = mapper_config_1_expr2_line_50;

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
        int PROBE_START_LINE_70 = 70;
		com.fasterxml.jackson.databind.cfg.BaseSettings p_base_1381_line_70 = base;
		int PROBE_END_LINE_70 = 70;
		_base = p_base_1381_line_70;
        int PROBE_START_LINE_71 = 71;
		int p_mapper_features_1382_line_71 = mapperFeatures;
		int PROBE_END_LINE_71 = 71;
		_mapperFeatures = p_mapper_features_1382_line_71;
    }

    protected MapperConfig(MapperConfig<T> src, int mapperFeatures)
    {
        _base = src._base;
        _mapperFeatures = mapperFeatures;
    }

    protected MapperConfig(MapperConfig<T> src, BaseSettings base)
    {
        int PROBE_START_LINE_82 = 82;
		com.fasterxml.jackson.databind.cfg.BaseSettings p_base_1388_line_82 = base;
		int PROBE_END_LINE_82 = 82;
		_base = p_base_1388_line_82;
        int PROBE_START_LINE_83 = 83;
		MapperConfig<T> p_src_1387_line_83 = src;
		int q__mapper_features_46_line_83 = p_src_1387_line_83._mapperFeatures;
		int PROBE_END_LINE_83 = 83;
		_mapperFeatures = q__mapper_features_46_line_83;
    }
    
    protected MapperConfig(MapperConfig<T> src)
    {
        int PROBE_START_LINE_88 = 88;
		MapperConfig<T> p_src_1389_line_88 = src;
		com.fasterxml.jackson.databind.cfg.BaseSettings q__base_47_line_88 = p_src_1389_line_88._base;
		int PROBE_END_LINE_88 = 88;
		_base = q__base_47_line_88;
        int PROBE_START_LINE_89 = 89;
		MapperConfig<T> p_src_1389_line_89 = src;
		int q__mapper_features_48_line_89 = p_src_1389_line_89._mapperFeatures;
		int PROBE_END_LINE_89 = 89;
		_mapperFeatures = q__mapper_features_48_line_89;
    }
    
    /**
     * Method that calculates bit set (flags) of all features that
     * are enabled by default.
     */
    public static <F extends Enum<F> & ConfigFeature> int collectFeatureDefaults(Class<F> enumClass)
    {
        int flags = 0;
        int PROBE_START_LINE_99 = 103;
		Class<F> p_enum_class_1390_line_99 = enumClass;
		F[] mapper_config_1_expr9_line_99 = p_enum_class_1390_line_99.getEnumConstants();
		int PROBE_END_LINE_99 = 103;
		for (F value : mapper_config_1_expr9_line_99) {
            int PROBE_START_LINE_100 = 102;
			F v_value_1392_line_100 = value;
			boolean mapper_config_1_expr10_line_100 = v_value_1392_line_100.enabledByDefault();
			int PROBE_END_LINE_100 = 102;
			if (mapper_config_1_expr10_line_100) {
                int PROBE_START_LINE_101 = 101;
				F v_value_1392_line_101 = value;
				int mapper_config_1_expr12_line_101 = v_value_1392_line_101.getMask();
				int PROBE_END_LINE_101 = 101;
				flags |= mapper_config_1_expr12_line_101;
            }
        }
        int PROBE_START_LINE_104 = 104;
		int v_flags_1391_line_104 = flags;
		int PROBE_END_LINE_104 = 104;
		return v_flags_1391_line_104;
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
        int PROBE_START_LINE_141 = 141;
		int f__mapper_features_1384_line_141 = _mapperFeatures;
		com.fasterxml.jackson.databind.MapperFeature p_f_1397_line_141 = f;
		int mapper_config_1_expr16_line_141 = p_f_1397_line_141.getMask();
		int mapper_config_1_expr15_line_141 = f__mapper_features_1384_line_141 & mapper_config_1_expr16_line_141;
		int mapper_config_1_expr14_line_141 = (mapper_config_1_expr15_line_141);
		boolean mapper_config_1_expr13_line_141 = mapper_config_1_expr14_line_141 != 0;
		int PROBE_END_LINE_141 = 141;
		return mapper_config_1_expr13_line_141;
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
        int PROBE_START_LINE_161 = 161;
		com.fasterxml.jackson.databind.MapperFeature q_use_annotations_49_line_161 = MapperFeature.USE_ANNOTATIONS;
		boolean mapper_config_1_expr17_line_161 = isEnabled(q_use_annotations_49_line_161);
		int PROBE_END_LINE_161 = 161;
		return mapper_config_1_expr17_line_161;
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
        int PROBE_START_LINE_176 = 176;
		com.fasterxml.jackson.databind.MapperFeature q_can_override_access_modifiers_50_line_176 = MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS;
		boolean mapper_config_1_expr18_line_176 = isEnabled(q_can_override_access_modifiers_50_line_176);
		int PROBE_END_LINE_176 = 176;
		return mapper_config_1_expr18_line_176;
    }

    /**
     * Accessor for checking whether default settings for property handling
     * indicate that properties should be alphabetically ordered or not.
     */
    public final boolean shouldSortPropertiesAlphabetically() {
        int PROBE_START_LINE_184 = 184;
		com.fasterxml.jackson.databind.MapperFeature q_sort_properties_alphabetically_51_line_184 = MapperFeature.SORT_PROPERTIES_ALPHABETICALLY;
		boolean mapper_config_1_expr19_line_184 = isEnabled(q_sort_properties_alphabetically_51_line_184);
		int PROBE_END_LINE_184 = 184;
		return mapper_config_1_expr19_line_184;
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
        int PROBE_START_LINE_226 = 226;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1383_line_226 = _base;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector mapper_config_1_expr20_line_226 = f__base_1383_line_226
				.getClassIntrospector();
		int PROBE_END_LINE_226 = 226;
		return mapper_config_1_expr20_line_226;
    }

    /**
     * Method for getting {@link AnnotationIntrospector} configured
     * to introspect annotation values used for configuration.
     *<p>
     * Non-final since it is actually overridden by sub-classes (for now?)
     */
    public AnnotationIntrospector getAnnotationIntrospector() {
        int PROBE_START_LINE_236 = 238;
		com.fasterxml.jackson.databind.MapperFeature q_use_annotations_51_line_236 = MapperFeature.USE_ANNOTATIONS;
		boolean mapper_config_1_expr21_line_236 = isEnabled(q_use_annotations_51_line_236);
		int PROBE_END_LINE_236 = 238;
		if (mapper_config_1_expr21_line_236) {
            int PROBE_START_LINE_237 = 237;
			com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1383_line_237 = _base;
			com.fasterxml.jackson.databind.AnnotationIntrospector mapper_config_1_expr22_line_237 = f__base_1383_line_237
					.getAnnotationIntrospector();
			int PROBE_END_LINE_237 = 237;
			return mapper_config_1_expr22_line_237;
        }
        return NopAnnotationIntrospector.instance;
    }

    public final PropertyNamingStrategy getPropertyNamingStrategy() {
        int PROBE_START_LINE_243 = 243;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1383_line_243 = _base;
		com.fasterxml.jackson.databind.PropertyNamingStrategy mapper_config_1_expr23_line_243 = f__base_1383_line_243
				.getPropertyNamingStrategy();
		int PROBE_END_LINE_243 = 243;
		return mapper_config_1_expr23_line_243;
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
        int PROBE_START_LINE_263 = 263;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1383_line_263 = _base;
		TypeResolverBuilder<?> mapper_config_1_expr24_line_263 = f__base_1383_line_263.getTypeResolverBuilder();
		int PROBE_END_LINE_263 = 263;
		return mapper_config_1_expr24_line_263;
    }
    
    public abstract SubtypeResolver getSubtypeResolver();

    public final TypeFactory getTypeFactory() {
        int PROBE_START_LINE_269 = 269;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1383_line_269 = _base;
		com.fasterxml.jackson.databind.type.TypeFactory mapper_config_1_expr25_line_269 = f__base_1383_line_269
				.getTypeFactory();
		int PROBE_END_LINE_269 = 269;
		return mapper_config_1_expr25_line_269;
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
        int PROBE_START_LINE_281 = 281;
		com.fasterxml.jackson.databind.type.TypeFactory mapper_config_1_expr27_line_281 = getTypeFactory();
		Class<?> p_cls_1401_line_281 = cls;
		com.fasterxml.jackson.databind.JavaType mapper_config_1_expr26_line_281 = mapper_config_1_expr27_line_281
				.constructType(p_cls_1401_line_281);
		int PROBE_END_LINE_281 = 281;
		return mapper_config_1_expr26_line_281;
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
        int PROBE_START_LINE_297 = 297;
		com.fasterxml.jackson.databind.type.TypeFactory mapper_config_1_expr29_line_297 = getTypeFactory();
		com.fasterxml.jackson.databind.JavaType p_base_type_1403_line_297 = baseType;
		Class<?> p_subclass_1404_line_297 = subclass;
		com.fasterxml.jackson.databind.JavaType mapper_config_1_expr28_line_297 = mapper_config_1_expr29_line_297
				.constructSpecializedType(p_base_type_1403_line_297, p_subclass_1404_line_297);
		int PROBE_END_LINE_297 = 297;
		return mapper_config_1_expr28_line_297;
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
        int PROBE_START_LINE_311 = 311;
		Class<?> p_cls_1405_line_311 = cls;
		com.fasterxml.jackson.databind.JavaType mapper_config_1_expr31_line_311 = constructType(p_cls_1405_line_311);
		com.fasterxml.jackson.databind.BeanDescription mapper_config_1_expr30_line_311 = introspectClassAnnotations(
				mapper_config_1_expr31_line_311);
		int PROBE_END_LINE_311 = 311;
		return mapper_config_1_expr30_line_311;
    }

    /**
     * Accessor for getting bean description that only contains class
     * annotations: useful if no getter/setter/creator information is needed.
     */
    public BeanDescription introspectClassAnnotations(JavaType type) {
        int PROBE_START_LINE_319 = 319;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector mapper_config_1_expr35_line_319 = getClassIntrospector();
		com.fasterxml.jackson.databind.JavaType p_type_1406_line_319 = type;
		com.fasterxml.jackson.databind.BeanDescription mapper_config_1_expr32_line_319 = mapper_config_1_expr35_line_319
				.forClassAnnotations(this, p_type_1406_line_319, this);
		int PROBE_END_LINE_319 = 319;
		return mapper_config_1_expr32_line_319;
    }

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
    public final BeanDescription introspectDirectClassAnnotations(JavaType type) {
        return getClassIntrospector().forDirectClassAnnotations(this, type, this);
    }

    /*
    /**********************************************************
    /* Configuration: default settings with per-type overrides
    /**********************************************************
     */

    /**
     * Accessor for finding {@link ConfigOverride} to use for
     * properties of given type, if any exist; or return `null` if not.
     *<p>
     * Note that only directly associated override
     * is found; no type hierarchy traversal is performed.
     *
     * @since 2.8
     * 
     * @return Override object to use for the type, if defined; null if none.
     */
    public abstract ConfigOverride findConfigOverride(Class<?> type);

    /**
     * Accessor for finding {@link ConfigOverride} to use for
     * properties of given type, if any exist; or if none, return an immutable
     * "empty" instance with no overrides.
     *<p>
     * Note that only directly associated override
     * is found; no type hierarchy traversal is performed.
     *
     * @since 2.9
     * 
     * @return Override object to use for the type, never null (but may be empty)
     */
    public abstract ConfigOverride getConfigOverride(Class<?> type);

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
    public JsonInclude.Value getDefaultPropertyInclusion(Class<?> baseType,
            JsonInclude.Value defaultIncl)
    {
        JsonInclude.Value v = getConfigOverride(baseType).getInclude();
        if (v != null) {
            return v;
        }
        return defaultIncl;
    }

    /**
     * Accessor for default property inclusion to use for serialization,
     * considering possible per-type override for given base type and
     * possible per-type override for given property type.<br>
     * NOTE: if no override found, defaults to value returned by
     * {@link #getDefaultPropertyInclusion()}.
     *
     * @param baseType Type of the instance containing the targeted property.
     * @param propertyType Type of the property to look up inclusion setting for.
     *
     * @since 2.9
     */
    public abstract JsonInclude.Value getDefaultInclusion(Class<?> baseType,
            Class<?> propertyType);

    /**
     * Accessor for default property inclusion to use for serialization,
     * considering possible per-type override for given base type and
     * possible per-type override for given property type; but
     * if none found, returning given <code>defaultIncl</code>
     *
     * @param baseType Type of the instance containing the targeted property.
     * @param propertyType Type of the property to look up inclusion setting for.
     * @param defaultIncl Inclusion setting to return if no overrides found.
     *
     * @since 2.9
     */
    public JsonInclude.Value getDefaultInclusion(Class<?> baseType,
            Class<?> propertyType, JsonInclude.Value defaultIncl)
    {
        JsonInclude.Value baseOverride = getConfigOverride(baseType).getInclude();
        JsonInclude.Value propOverride = getConfigOverride(propertyType).getIncludeAsProperty();

        JsonInclude.Value result = JsonInclude.Value.mergeAll(defaultIncl, baseOverride, propOverride);
        return result;
    }

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
     * Accessor for object used for determining whether specific property elements
     * (method, constructors, fields) can be auto-detected based on
     * their visibility (access modifiers). Can be changed to allow
     * different minimum visibility levels for auto-detection. Note
     * that this is the global handler; individual types (classes)
     * can further override active checker used (using
     * {@link JsonAutoDetect} annotation)
     */
    public abstract VisibilityChecker<?> getDefaultVisibilityChecker();

    /**
     * Accessor for object used for determining whether specific property elements
     * (method, constructors, fields) can be auto-detected based on
     * their visibility (access modifiers). This is based on global defaults
     * (as would be returned by {@link #getDefaultVisibilityChecker()}, but
     * then modified by possible class annotation (see {@link JsonAutoDetect})
     * and/or per-type config override (see {@link ConfigOverride#getVisibility()}).
     *
     * @since 2.9
     */
    public abstract VisibilityChecker<?> getDefaultVisibilityChecker(Class<?> baseType,
            AnnotatedClass actualClass);

    /**
     * Accessor for the baseline setter info used as the global baseline,
     * not considering possible per-type overrides.
     *
     * @return Global base settings; never null
     *
     * @since 2.9
     */
    public abstract JsonSetter.Value getDefaultSetterInfo();

    /**
     * Accessor for the baseline merge info used as the global baseline,
     * not considering possible per-type overrides.
     *
     * @return Global base settings, if any; `null` if none.
     *
     * @since 2.9
     */
    public abstract Boolean getDefaultMergeable();

    /**
     * Accessor for the baseline merge info used for given type, including global
     * defaults if no type-specific overrides defined.
     *
     * @return Type-specific settings (if any); global defaults (same as
     *    {@link #getDefaultMergeable()}) otherwise, if any defined; or `null`
     *    if neither defined
     *
     * @since 2.9
     */
    public abstract Boolean getDefaultMergeable(Class<?> baseType);

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
