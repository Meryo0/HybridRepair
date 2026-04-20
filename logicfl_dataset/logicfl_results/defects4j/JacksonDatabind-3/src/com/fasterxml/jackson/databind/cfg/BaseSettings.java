package com.fasterxml.jackson.databind.cfg;

import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.introspect.AnnotationIntrospectorPair;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
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
    implements java.io.Serializable // since 2.1
{
    // for 2.1.0:
    private static final long serialVersionUID = 4939673998947122190L;

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
     * Object used for determining whether specific property elements
     * (method, constructors, fields) can be auto-detected based on
     * their visibility (access modifiers). Can be changed to allow
     * different minimum visibility levels for auto-detection. Note
     * that this is the global handler; individual types (classes)
     * can further override active checker used (using
     * {@link JsonAutoDetect} annotation)
     */
    protected final VisibilityChecker<?> _visibilityChecker;

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
     * Default {@link java.util.TimeZone} used with serialization formats.
     * Default value is {@link TimeZone#getDefault()}, which is typically the
     * local time zone (unless overridden for JVM).
     *<p>
     * Note that if a new value is set, time zone is also assigned to
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
            VisibilityChecker<?> vc, PropertyNamingStrategy pns, TypeFactory tf,
            TypeResolverBuilder<?> typer, DateFormat dateFormat, HandlerInstantiator hi,
            Locale locale, TimeZone tz, Base64Variant defaultBase64)
    {
        int PROBE_START_LINE_141 = 141;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector p_ci_849_line_141 = ci;
		int PROBE_END_LINE_141 = 141;
		_classIntrospector = p_ci_849_line_141;
        int PROBE_START_LINE_142 = 142;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_850_line_142 = ai;
		int PROBE_END_LINE_142 = 142;
		_annotationIntrospector = p_ai_850_line_142;
        int PROBE_START_LINE_143 = 143;
		VisibilityChecker<?> p_vc_851_line_143 = vc;
		int PROBE_END_LINE_143 = 143;
		_visibilityChecker = p_vc_851_line_143;
        int PROBE_START_LINE_144 = 144;
		com.fasterxml.jackson.databind.PropertyNamingStrategy p_pns_852_line_144 = pns;
		int PROBE_END_LINE_144 = 144;
		_propertyNamingStrategy = p_pns_852_line_144;
        int PROBE_START_LINE_145 = 145;
		com.fasterxml.jackson.databind.type.TypeFactory p_tf_853_line_145 = tf;
		int PROBE_END_LINE_145 = 145;
		_typeFactory = p_tf_853_line_145;
        int PROBE_START_LINE_146 = 146;
		TypeResolverBuilder<?> p_typer_854_line_146 = typer;
		int PROBE_END_LINE_146 = 146;
		_typeResolverBuilder = p_typer_854_line_146;
        int PROBE_START_LINE_147 = 147;
		java.text.DateFormat p_date_format_855_line_147 = dateFormat;
		int PROBE_END_LINE_147 = 147;
		_dateFormat = p_date_format_855_line_147;
        int PROBE_START_LINE_148 = 148;
		com.fasterxml.jackson.databind.cfg.HandlerInstantiator p_hi_856_line_148 = hi;
		int PROBE_END_LINE_148 = 148;
		_handlerInstantiator = p_hi_856_line_148;
        int PROBE_START_LINE_149 = 149;
		java.util.Locale p_locale_857_line_149 = locale;
		int PROBE_END_LINE_149 = 149;
		_locale = p_locale_857_line_149;
        int PROBE_START_LINE_150 = 150;
		java.util.TimeZone p_tz_858_line_150 = tz;
		int PROBE_END_LINE_150 = 150;
		_timeZone = p_tz_858_line_150;
        int PROBE_START_LINE_151 = 151;
		com.fasterxml.jackson.core.Base64Variant p_default_base64_859_line_151 = defaultBase64;
		int PROBE_END_LINE_151 = 151;
		_defaultBase64 = p_default_base64_859_line_151;
    }

    /*
    /**********************************************************
    /* Factory methods
    /**********************************************************
     */
    
    public BaseSettings withClassIntrospector(ClassIntrospector ci) {
        if (_classIntrospector == ci) {
            return this;
        }
        return new BaseSettings(ci, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }
    
    public BaseSettings withAnnotationIntrospector(AnnotationIntrospector ai) {
        if (_annotationIntrospector == ai) {
            return this;
        }
        return new BaseSettings(_classIntrospector, ai, _visibilityChecker, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withInsertedAnnotationIntrospector(AnnotationIntrospector ai) {
        return withAnnotationIntrospector(AnnotationIntrospectorPair.create(ai, _annotationIntrospector));
    }

    public BaseSettings withAppendedAnnotationIntrospector(AnnotationIntrospector ai) {
        return withAnnotationIntrospector(AnnotationIntrospectorPair.create(_annotationIntrospector, ai));
    }
    
    public BaseSettings withVisibilityChecker(VisibilityChecker<?> vc) {
        if (_visibilityChecker == vc) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, vc, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withVisibility(PropertyAccessor forMethod, JsonAutoDetect.Visibility visibility) {
        return new BaseSettings(_classIntrospector, _annotationIntrospector,
                _visibilityChecker.withVisibility(forMethod, visibility),
                _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }
    
    public BaseSettings withPropertyNamingStrategy(PropertyNamingStrategy pns) {
        if (_propertyNamingStrategy == pns) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, pns, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withTypeFactory(TypeFactory tf) {
        if (_typeFactory == tf) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, tf,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withTypeResolverBuilder(TypeResolverBuilder<?> typer) {
        if (_typeResolverBuilder == typer) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory,
                typer, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }
    
    public BaseSettings withDateFormat(DateFormat df) {
        if (_dateFormat == df) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, df, _handlerInstantiator, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings withHandlerInstantiator(HandlerInstantiator hi) {
        if (_handlerInstantiator == hi) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, hi, _locale,
                _timeZone, _defaultBase64);
    }

    public BaseSettings with(Locale l) {
        if (_locale == l) {
            return this;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory,
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
        DateFormat df = _dateFormat;
        if (df instanceof StdDateFormat) {
            df = ((StdDateFormat) df).withTimeZone(tz);
        } else {
            // we don't know if original format might be shared; better create a clone:
            df = (DateFormat) df.clone();
            df.setTimeZone(tz);
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector,
                _visibilityChecker, _propertyNamingStrategy, _typeFactory,
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
                _visibilityChecker, _propertyNamingStrategy, _typeFactory,
                _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale,
                _timeZone, base64);
    }
    
    /*
    /**********************************************************
    /* API
    /**********************************************************
     */

    public ClassIntrospector getClassIntrospector() {
        int PROBE_START_LINE_301 = 301;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector f__class_introspector_860_line_301 = _classIntrospector;
		int PROBE_END_LINE_301 = 301;
		return f__class_introspector_860_line_301;
    }
    
    public AnnotationIntrospector getAnnotationIntrospector() {
        int PROBE_START_LINE_305 = 305;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_861_line_305 = _annotationIntrospector;
		int PROBE_END_LINE_305 = 305;
		return f__annotation_introspector_861_line_305;
    }

    public VisibilityChecker<?> getVisibilityChecker() {
        int PROBE_START_LINE_309 = 309;
		VisibilityChecker<?> f__visibility_checker_862_line_309 = _visibilityChecker;
		int PROBE_END_LINE_309 = 309;
		return f__visibility_checker_862_line_309;
    }

    public PropertyNamingStrategy getPropertyNamingStrategy() {
        int PROBE_START_LINE_313 = 313;
		com.fasterxml.jackson.databind.PropertyNamingStrategy f__property_naming_strategy_863_line_313 = _propertyNamingStrategy;
		int PROBE_END_LINE_313 = 313;
		return f__property_naming_strategy_863_line_313;
    }

    public TypeFactory getTypeFactory() {
        int PROBE_START_LINE_317 = 317;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_864_line_317 = _typeFactory;
		int PROBE_END_LINE_317 = 317;
		return f__type_factory_864_line_317;
    }

    public TypeResolverBuilder<?> getTypeResolverBuilder() {
        int PROBE_START_LINE_321 = 321;
		TypeResolverBuilder<?> f__type_resolver_builder_865_line_321 = _typeResolverBuilder;
		int PROBE_END_LINE_321 = 321;
		return f__type_resolver_builder_865_line_321;
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
        return _timeZone;
    }

    public Base64Variant getBase64Variant() {
        return _defaultBase64;
    }
}
