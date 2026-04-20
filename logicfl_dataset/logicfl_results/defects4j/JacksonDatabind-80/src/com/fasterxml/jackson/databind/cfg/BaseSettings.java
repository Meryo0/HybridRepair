package com.fasterxml.jackson.databind.cfg;

import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.introspect.AnnotationIntrospectorPair;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.AnnotationIntrospector;

/**
 * Immutable container class used to store simple configuration
 * settings. Since instances are fully immutable, instances can
 * be freely shared and used without synchronization.
 */
public final class BaseSettings
    implements java.io.Serializable
{
    // for 2.6
    private static final long serialVersionUID = 1L;

    /**
     * We will use a default TimeZone as the baseline.
     */
    private static final TimeZone DEFAULT_TIMEZONE = 
            //  TimeZone.getDefault()
            /* [databind#915] 05-Nov-2015, tatu: Changed to UTC, from earlier
             * baseline of GMT (up to 2.6)
             */
            TimeZone.getTimeZone("UTC");
    
    /*
    /**********************************************************
    /* Configuration settings; introspection, related
    /**********************************************************
     */
    
    /**
     * Introspector used to figure out Bean properties needed for bean serialization
     * and deserialization. Overridable so that it is possible to change low-level
     * details of introspection, like adding new annotation types.
     */
    protected final ClassIntrospector _classIntrospector;

    /**
     * Introspector used for accessing annotation value based configuration.
     */
    protected final AnnotationIntrospector _annotationIntrospector;

    /**
     * Custom property naming strategy in use, if any.
     */
    protected final PropertyNamingStrategy _propertyNamingStrategy;

    /**
     * Specific factory used for creating {@link JavaType} instances;
     * needed to allow modules to add more custom type handling
     * (mostly to support types of non-Java JVM languages)
     */
    protected final TypeFactory _typeFactory;

    /*
    /**********************************************************
    /* Configuration settings; type resolution
    /**********************************************************
     */

    /**
     * Type information handler used for "untyped" values (ones declared
     * to have type <code>Object.class</code>)
     */
    protected final TypeResolverBuilder<?> _typeResolverBuilder;
    
    /*
    /**********************************************************
    /* Configuration settings; other
    /**********************************************************
     */
    
    /**
     * Custom date format to use for de-serialization. If specified, will be
     * used instead of {@link com.fasterxml.jackson.databind.util.StdDateFormat}.
     *<p>
     * Note that the configured format object will be cloned once per
     * deserialization process (first time it is needed)
     */
    protected final DateFormat _dateFormat;

    /**
     * Object used for creating instances of handlers (serializers, deserializers,
     * type and type id resolvers), given class to instantiate. This is typically
     * used to do additional configuration (with dependency injection, for example)
     * beyond simply construction of instances; or to use alternative constructors.
     */
    protected final HandlerInstantiator _handlerInstantiator;

    /**
     * Default {@link java.util.Locale} used with serialization formats.
     * Default value is {@link Locale#getDefault()}.
     */
    protected final Locale _locale;

    /**
     * Default {@link java.util.TimeZone} used with serialization formats,
     * if (and only if!) explicitly set by use; otherwise `null` to indicate
     * "use default", which means "UTC" (from Jackson 2.7); earlier versions
     * (up to 2.6) used "GMT".
     *<p>
     * Note that if a new value is set, timezone is also assigned to
     * {@link #_dateFormat} of this object.
     */
    protected final TimeZone _timeZone;

    /**
     * Explicitly default {@link Base64Variant} to use for handling
     * binary data (<code>byte[]</code>), used with data formats
     * that use base64 encoding (like JSON, CSV).
     * 
     * @since 2.1
     */
    protected final Base64Variant _defaultBase64;
    
    /*
    /**********************************************************
    /* Construction
    /**********************************************************
     */

    public BaseSettings(ClassIntrospector ci, AnnotationIntrospector ai,
            PropertyNamingStrategy pns, TypeFactory tf,
            TypeResolverBuilder<?> typer, DateFormat dateFormat, HandlerInstantiator hi,
            Locale locale, TimeZone tz, Base64Variant defaultBase64)
    {
        int PROBE_START_LINE_138 = 138;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector p_ci_1092_line_138 = ci;
		int PROBE_END_LINE_138 = 138;
		_classIntrospector = p_ci_1092_line_138;
        int PROBE_START_LINE_139 = 139;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_1093_line_139 = ai;
		int PROBE_END_LINE_139 = 139;
		_annotationIntrospector = p_ai_1093_line_139;
        int PROBE_START_LINE_140 = 140;
		com.fasterxml.jackson.databind.PropertyNamingStrategy p_pns_1094_line_140 = pns;
		int PROBE_END_LINE_140 = 140;
		_propertyNamingStrategy = p_pns_1094_line_140;
        int PROBE_START_LINE_141 = 141;
		com.fasterxml.jackson.databind.type.TypeFactory p_tf_1095_line_141 = tf;
		int PROBE_END_LINE_141 = 141;
		_typeFactory = p_tf_1095_line_141;
        int PROBE_START_LINE_142 = 142;
		TypeResolverBuilder<?> p_typer_1096_line_142 = typer;
		int PROBE_END_LINE_142 = 142;
		_typeResolverBuilder = p_typer_1096_line_142;
        int PROBE_START_LINE_143 = 143;
		java.text.DateFormat p_date_format_1097_line_143 = dateFormat;
		int PROBE_END_LINE_143 = 143;
		_dateFormat = p_date_format_1097_line_143;
        int PROBE_START_LINE_144 = 144;
		com.fasterxml.jackson.databind.cfg.HandlerInstantiator p_hi_1098_line_144 = hi;
		int PROBE_END_LINE_144 = 144;
		_handlerInstantiator = p_hi_1098_line_144;
        int PROBE_START_LINE_145 = 145;
		java.util.Locale p_locale_1099_line_145 = locale;
		int PROBE_END_LINE_145 = 145;
		_locale = p_locale_1099_line_145;
        int PROBE_START_LINE_146 = 146;
		java.util.TimeZone p_tz_1100_line_146 = tz;
		int PROBE_END_LINE_146 = 146;
		_timeZone = p_tz_1100_line_146;
        int PROBE_START_LINE_147 = 147;
		com.fasterxml.jackson.core.Base64Variant p_default_base64_1101_line_147 = defaultBase64;
		int PROBE_END_LINE_147 = 147;
		_defaultBase64 = p_default_base64_1101_line_147;
    }

    /*
    /**********************************************************
    /* Factory methods
    /**********************************************************
     */
    
    public BaseSettings withClassIntrospector(ClassIntrospector ci) {
        int PROBE_START_LINE_157 = 159;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector f__class_introspector_1102_line_157 = _classIntrospector;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector p_ci_1112_line_157 = ci;
		boolean base_settings_1_expr12_line_157 = f__class_introspector_1102_line_157 == p_ci_1112_line_157;
		int PROBE_END_LINE_157 = 159;
		if (base_settings_1_expr12_line_157) {
            return this;
        }
        int PROBE_START_LINE_160 = 162;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector p_ci_1112_line_160 = ci;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1103_line_160 = _annotationIntrospector;
		com.fasterxml.jackson.databind.PropertyNamingStrategy f__property_naming_strategy_1104_line_160 = _propertyNamingStrategy;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_1105_line_160 = _typeFactory;
		int PROBE_END_LINE_160 = 162;
		return new BaseSettings(p_ci_1112_line_160, f__annotation_introspector_1103_line_160, f__property_naming_strategy_1104_line_160, f__type_factory_1105_line_160,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }
    
    public BaseSettings withAnnotationIntrospector(AnnotationIntrospector ai) {
        if (_annotationIntrospector == ai) {
            return this;
        }
        return new BaseSettings(_classIntrospector, ai, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withInsertedAnnotationIntrospector(AnnotationIntrospector ai) {
        return withAnnotationIntrospector(AnnotationIntrospectorPair.create(ai, _annotationIntrospector));
    }

    public BaseSettings withAppendedAnnotationIntrospector(AnnotationIntrospector ai) {
        return withAnnotationIntrospector(AnnotationIntrospectorPair.create(_annotationIntrospector, ai));
    }

    /*
    public BaseSettings withVisibility(PropertyAccessor forMethod, JsonAutoDetect.Visibility visibility) {
        return new BaseSettings(_classIntrospector, _annotationIntrospector,
                _visibilityChecker.withVisibility(forMethod, visibility),
                _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }
    */
    
    public BaseSettings withPropertyNamingStrategy(PropertyNamingStrategy pns) {
        if (_propertyNamingStrategy == pns) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, pns, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withTypeFactory(TypeFactory tf) {
        if (_typeFactory == tf) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _propertyNamingStrategy, tf,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withTypeResolverBuilder(TypeResolverBuilder<?> typer) {
        if (_typeResolverBuilder == typer) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _propertyNamingStrategy, _typeFactory,
                typer, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }
    
    public BaseSettings withDateFormat(DateFormat df) {
        if (_dateFormat == df) {
            return this;
        }
        // 26-Sep-2015, tatu: Related to [databind#939], let's try to force TimeZone if
        //   (but only if!) it has been set explicitly.
        if ((df != null) && hasExplicitTimeZone()) {
            df = _force(df, _timeZone);
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, df, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withHandlerInstantiator(HandlerInstantiator hi) {
        if (_handlerInstantiator == hi) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, hi, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings with(Locale l) {
        if (_locale == l) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, l,
                _timeZone, _defaultBase64);
    }

    /**
     * Fluent factory for constructing a new instance that uses specified TimeZone.
     * Note that timezone used with also be assigned to configured {@link DateFormat},
     * changing time formatting defaults.
     */
    public BaseSettings with(TimeZone tz)
    {
        if (tz == null) {
            throw new IllegalArgumentException();
        }
        if (tz == _timeZone) {
            return this;
        }
        
        DateFormat df = _force(_dateFormat, tz);
        return new BaseSettings(_classIntrospector, _annotationIntrospector,
                _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, df, _handlerInstantiator, _locale,
                tz, _defaultBase64);
    }

    /**
     * @since 2.1
     */
    public BaseSettings with(Base64Variant base64) {
        if (base64 == _defaultBase64) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector,
                _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, base64);
    }
    
    /*
    /**********************************************************
    /* API
    /**********************************************************
     */

    public ClassIntrospector getClassIntrospector() {
        return _classIntrospector;
    }
    
    public AnnotationIntrospector getAnnotationIntrospector() {
        int PROBE_START_LINE_296 = 296;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1103_line_296 = _annotationIntrospector;
		int PROBE_END_LINE_296 = 296;
		return f__annotation_introspector_1103_line_296;
    }

    public PropertyNamingStrategy getPropertyNamingStrategy() {
        return _propertyNamingStrategy;
    }

    public TypeFactory getTypeFactory() {
        int PROBE_START_LINE_304 = 304;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_1105_line_304 = _typeFactory;
		int PROBE_END_LINE_304 = 304;
		return f__type_factory_1105_line_304;
    }

    public TypeResolverBuilder<?> getTypeResolverBuilder() {
        return _typeResolverBuilder;
    }
    
    public DateFormat getDateFormat() {
        return _dateFormat;
    }

    public HandlerInstantiator getHandlerInstantiator() {
        return _handlerInstantiator;
    }

    public Locale getLocale() {
        return _locale;
    }

    public TimeZone getTimeZone() {
        TimeZone tz = _timeZone;
        return (tz == null) ? DEFAULT_TIMEZONE : tz;
    }

    /**
     * Accessor that may be called to determine whether this settings object
     * has been explicitly configured with a TimeZone (true), or is still
     * relying on the default settings (false).
     *
     * @since 2.7
     */
    public boolean hasExplicitTimeZone() {
        return (_timeZone != null);
    }
    
    public Base64Variant getBase64Variant() {
        return _defaultBase64;
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    private DateFormat _force(DateFormat df, TimeZone tz)
    {
        if (df instanceof StdDateFormat) {
            return ((StdDateFormat) df).withTimeZone(tz);
        }
        // we don't know if original format might be shared; better create a clone:
        df = (DateFormat) df.clone();
        df.setTimeZone(tz);
        return df;
    }
}
