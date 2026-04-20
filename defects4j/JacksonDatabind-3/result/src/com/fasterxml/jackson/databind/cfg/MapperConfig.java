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
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
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
    private static final long serialVersionUID = 8891625428805876137L;

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
        int PROBE_START_LINE_59 = 59;
		com.fasterxml.jackson.databind.cfg.BaseSettings p_base_930_line_59 = base;
		int PROBE_END_LINE_59 = 59;
		_base = p_base_930_line_59;
        int PROBE_START_LINE_60 = 60;
		int p_mapper_features_931_line_60 = mapperFeatures;
		int PROBE_END_LINE_60 = 60;
		_mapperFeatures = p_mapper_features_931_line_60;
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
        int PROBE_START_LINE_76 = 80;
		Class<F> p_enum_class_935_line_76 = enumClass;
		F[] mapper_config_1_expr3_line_76 = p_enum_class_935_line_76.getEnumConstants();
		int PROBE_END_LINE_76 = 80;
		for (F value : mapper_config_1_expr3_line_76) {
            int PROBE_START_LINE_77 = 79;
			F v_value_937_line_77 = value;
			boolean mapper_config_1_expr4_line_77 = v_value_937_line_77.enabledByDefault();
			int PROBE_END_LINE_77 = 79;
			if (mapper_config_1_expr4_line_77) {
                int PROBE_START_LINE_78 = 78;
				F v_value_937_line_78 = value;
				int mapper_config_1_expr6_line_78 = v_value_937_line_78.getMask();
				int PROBE_END_LINE_78 = 78;
				flags |= mapper_config_1_expr6_line_78;
            }
        }
        int PROBE_START_LINE_81 = 81;
		int v_flags_936_line_81 = flags;
		int PROBE_END_LINE_81 = 81;
		return v_flags_936_line_81;
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
        int PROBE_START_LINE_118 = 118;
		int f__mapper_features_933_line_118 = _mapperFeatures;
		com.fasterxml.jackson.databind.MapperFeature p_f_942_line_118 = f;
		int mapper_config_1_expr10_line_118 = p_f_942_line_118.getMask();
		int mapper_config_1_expr9_line_118 = f__mapper_features_933_line_118 & mapper_config_1_expr10_line_118;
		int mapper_config_1_expr8_line_118 = (mapper_config_1_expr9_line_118);
		boolean mapper_config_1_expr7_line_118 = mapper_config_1_expr8_line_118 != 0;
		int PROBE_END_LINE_118 = 118;
		return mapper_config_1_expr7_line_118;
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
        int PROBE_START_LINE_138 = 138;
		com.fasterxml.jackson.databind.MapperFeature q_use_annotations_17_line_138 = MapperFeature.USE_ANNOTATIONS;
		boolean mapper_config_1_expr11_line_138 = isEnabled(q_use_annotations_17_line_138);
		int PROBE_END_LINE_138 = 138;
		return mapper_config_1_expr11_line_138;
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
        return isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS);
    }

    /**
     * Accessor for checking whether default settings for property handling
     * indicate that properties should be alphabetically ordered or not.
     */
    public final boolean shouldSortPropertiesAlphabetically() {
        int PROBE_START_LINE_161 = 161;
		com.fasterxml.jackson.databind.MapperFeature q_sort_properties_alphabetically_17_line_161 = MapperFeature.SORT_PROPERTIES_ALPHABETICALLY;
		boolean mapper_config_1_expr12_line_161 = isEnabled(q_sort_properties_alphabetically_17_line_161);
		int PROBE_END_LINE_161 = 161;
		return mapper_config_1_expr12_line_161;
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
        int PROBE_START_LINE_203 = 203;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_932_line_203 = _base;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector mapper_config_1_expr13_line_203 = f__base_932_line_203
				.getClassIntrospector();
		int PROBE_END_LINE_203 = 203;
		return mapper_config_1_expr13_line_203;
    }

    /**
     * Method for getting {@link AnnotationIntrospector} configured
     * to introspect annotation values used for configuration.
     *<p>
     * Non-final since it is actually overridden by sub-classes (for now?)
     */
    public AnnotationIntrospector getAnnotationIntrospector() {
        int PROBE_START_LINE_213 = 213;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_932_line_213 = _base;
		com.fasterxml.jackson.databind.AnnotationIntrospector mapper_config_1_expr14_line_213 = f__base_932_line_213
				.getAnnotationIntrospector();
		int PROBE_END_LINE_213 = 213;
		return mapper_config_1_expr14_line_213;
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
        int PROBE_START_LINE_226 = 226;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_932_line_226 = _base;
		VisibilityChecker<?> mapper_config_1_expr15_line_226 = f__base_932_line_226.getVisibilityChecker();
		int PROBE_END_LINE_226 = 226;
		return mapper_config_1_expr15_line_226;
    }
    
    public final PropertyNamingStrategy getPropertyNamingStrategy() {
        int PROBE_START_LINE_230 = 230;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_932_line_230 = _base;
		com.fasterxml.jackson.databind.PropertyNamingStrategy mapper_config_1_expr16_line_230 = f__base_932_line_230
				.getPropertyNamingStrategy();
		int PROBE_END_LINE_230 = 230;
		return mapper_config_1_expr16_line_230;
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
        int PROBE_START_LINE_250 = 250;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_932_line_250 = _base;
		TypeResolverBuilder<?> mapper_config_1_expr17_line_250 = f__base_932_line_250.getTypeResolverBuilder();
		int PROBE_END_LINE_250 = 250;
		return mapper_config_1_expr17_line_250;
    }
    
    public abstract SubtypeResolver getSubtypeResolver();

    public final TypeFactory getTypeFactory() {
        int PROBE_START_LINE_256 = 256;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_932_line_256 = _base;
		com.fasterxml.jackson.databind.type.TypeFactory mapper_config_1_expr18_line_256 = f__base_932_line_256
				.getTypeFactory();
		int PROBE_END_LINE_256 = 256;
		return mapper_config_1_expr18_line_256;
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
        int PROBE_START_LINE_268 = 268;
		com.fasterxml.jackson.databind.type.TypeFactory mapper_config_1_expr21_line_268 = getTypeFactory();
		Class<?> p_cls_946_line_268 = cls;
		com.fasterxml.jackson.databind.JavaType mapper_config_1_expr19_line_268 = mapper_config_1_expr21_line_268
				.constructType(p_cls_946_line_268, (TypeBindings) null);
		int PROBE_END_LINE_268 = 268;
		return mapper_config_1_expr19_line_268;
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
        return getTypeFactory().constructType(valueTypeRef.getType(), (TypeBindings) null);
    }

    public JavaType constructSpecializedType(JavaType baseType, Class<?> subclass) {
        return getTypeFactory().constructSpecializedType(baseType, subclass);
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
        int PROBE_START_LINE_298 = 298;
		Class<?> p_cls_950_line_298 = cls;
		com.fasterxml.jackson.databind.JavaType mapper_config_1_expr23_line_298 = constructType(p_cls_950_line_298);
		com.fasterxml.jackson.databind.BeanDescription mapper_config_1_expr22_line_298 = introspectClassAnnotations(
				mapper_config_1_expr23_line_298);
		int PROBE_END_LINE_298 = 298;
		return mapper_config_1_expr22_line_298;
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
