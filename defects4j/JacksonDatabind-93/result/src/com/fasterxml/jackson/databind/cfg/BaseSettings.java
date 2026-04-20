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
            VisibilityChecker<?> vc, PropertyNamingStrategy pns, TypeFactory tf,
            TypeResolverBuilder<?> typer, DateFormat dateFormat, HandlerInstantiator hi,
            Locale locale, TimeZone tz, Base64Variant defaultBase64)
    {
        int PROBE_START_LINE_152 = 152;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector p_ci_1148_line_152 = ci;
		int PROBE_END_LINE_152 = 152;
		_classIntrospector = p_ci_1148_line_152;
        int PROBE_START_LINE_153 = 153;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_1149_line_153 = ai;
		int PROBE_END_LINE_153 = 153;
		_annotationIntrospector = p_ai_1149_line_153;
        int PROBE_START_LINE_154 = 154;
		VisibilityChecker<?> p_vc_1150_line_154 = vc;
		int PROBE_END_LINE_154 = 154;
		_visibilityChecker = p_vc_1150_line_154;
        int PROBE_START_LINE_155 = 155;
		com.fasterxml.jackson.databind.PropertyNamingStrategy p_pns_1151_line_155 = pns;
		int PROBE_END_LINE_155 = 155;
		_propertyNamingStrategy = p_pns_1151_line_155;
        int PROBE_START_LINE_156 = 156;
		com.fasterxml.jackson.databind.type.TypeFactory p_tf_1152_line_156 = tf;
		int PROBE_END_LINE_156 = 156;
		_typeFactory = p_tf_1152_line_156;
        int PROBE_START_LINE_157 = 157;
		TypeResolverBuilder<?> p_typer_1153_line_157 = typer;
		int PROBE_END_LINE_157 = 157;
		_typeResolverBuilder = p_typer_1153_line_157;
        int PROBE_START_LINE_158 = 158;
		java.text.DateFormat p_date_format_1154_line_158 = dateFormat;
		int PROBE_END_LINE_158 = 158;
		_dateFormat = p_date_format_1154_line_158;
        int PROBE_START_LINE_159 = 159;
		com.fasterxml.jackson.databind.cfg.HandlerInstantiator p_hi_1155_line_159 = hi;
		int PROBE_END_LINE_159 = 159;
		_handlerInstantiator = p_hi_1155_line_159;
        int PROBE_START_LINE_160 = 160;
		java.util.Locale p_locale_1156_line_160 = locale;
		int PROBE_END_LINE_160 = 160;
		_locale = p_locale_1156_line_160;
        int PROBE_START_LINE_161 = 161;
		java.util.TimeZone p_tz_1157_line_161 = tz;
		int PROBE_END_LINE_161 = 161;
		_timeZone = p_tz_1157_line_161;
        int PROBE_START_LINE_162 = 162;
		com.fasterxml.jackson.core.Base64Variant p_default_base64_1158_line_162 = defaultBase64;
		int PROBE_END_LINE_162 = 162;
		_defaultBase64 = p_default_base64_1158_line_162;
    }

    /*
    /**********************************************************
    /* Factory methods
    /**********************************************************
     */
    
    public BaseSettings withClassIntrospector(ClassIntrospector ci) {
        int PROBE_START_LINE_172 = 174;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector f__class_introspector_1159_line_172 = _classIntrospector;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector p_ci_1170_line_172 = ci;
		boolean base_settings_1_expr13_line_172 = f__class_introspector_1159_line_172 == p_ci_1170_line_172;
		int PROBE_END_LINE_172 = 174;
		if (base_settings_1_expr13_line_172) {
            return this;
        }
        int PROBE_START_LINE_175 = 177;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector p_ci_1170_line_175 = ci;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1160_line_175 = _annotationIntrospector;
		VisibilityChecker<?> f__visibility_checker_1161_line_175 = _visibilityChecker;
		com.fasterxml.jackson.databind.PropertyNamingStrategy f__property_naming_strategy_1162_line_175 = _propertyNamingStrategy;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_1163_line_175 = _typeFactory;
		int PROBE_END_LINE_175 = 177;
		return new BaseSettings(p_ci_1170_line_175, f__annotation_introspector_1160_line_175, f__visibility_checker_1161_line_175, f__property_naming_strategy_1162_line_175, f__type_factory_1163_line_175,
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
        int PROBE_START_LINE_233 = 235;
		TypeResolverBuilder<?> f__type_resolver_builder_1164_line_233 = _typeResolverBuilder;
		TypeResolverBuilder<?> p_typer_1179_line_233 = typer;
		boolean base_settings_1_expr15_line_233 = f__type_resolver_builder_1164_line_233 == p_typer_1179_line_233;
		int PROBE_END_LINE_233 = 235;
		if (base_settings_1_expr15_line_233) {
            return this;
        }
        int PROBE_START_LINE_236 = 238;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector f__class_introspector_1159_line_236 = _classIntrospector;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1160_line_236 = _annotationIntrospector;
		VisibilityChecker<?> f__visibility_checker_1161_line_236 = _visibilityChecker;
		com.fasterxml.jackson.databind.PropertyNamingStrategy f__property_naming_strategy_1162_line_236 = _propertyNamingStrategy;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_1163_line_236 = _typeFactory;
		int PROBE_END_LINE_236 = 238;
		return new BaseSettings(f__class_introspector_1159_line_236, f__annotation_introspector_1160_line_236, f__visibility_checker_1161_line_236, f__property_naming_strategy_1162_line_236, f__type_factory_1163_line_236,
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
        if (tz == _timeZone) {
            return this;
        }
        
        DateFormat df = _force(_dateFormat, tz);
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
        int PROBE_START_LINE_314 = 314;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector f__class_introspector_1159_line_314 = _classIntrospector;
		int PROBE_END_LINE_314 = 314;
		return f__class_introspector_1159_line_314;
    }
    
    public AnnotationIntrospector getAnnotationIntrospector() {
        int PROBE_START_LINE_318 = 318;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1160_line_318 = _annotationIntrospector;
		int PROBE_END_LINE_318 = 318;
		return f__annotation_introspector_1160_line_318;
    }

    public VisibilityChecker<?> getVisibilityChecker() {
        int PROBE_START_LINE_322 = 322;
		VisibilityChecker<?> f__visibility_checker_1161_line_322 = _visibilityChecker;
		int PROBE_END_LINE_322 = 322;
		return f__visibility_checker_1161_line_322;
    }

    public PropertyNamingStrategy getPropertyNamingStrategy() {
        int PROBE_START_LINE_326 = 326;
		com.fasterxml.jackson.databind.PropertyNamingStrategy f__property_naming_strategy_1162_line_326 = _propertyNamingStrategy;
		int PROBE_END_LINE_326 = 326;
		return f__property_naming_strategy_1162_line_326;
    }

    public TypeFactory getTypeFactory() {
        int PROBE_START_LINE_330 = 330;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_1163_line_330 = _typeFactory;
		int PROBE_END_LINE_330 = 330;
		return f__type_factory_1163_line_330;
    }

    public TypeResolverBuilder<?> getTypeResolverBuilder() {
        int PROBE_START_LINE_334 = 334;
		TypeResolverBuilder<?> f__type_resolver_builder_1164_line_334 = _typeResolverBuilder;
		int PROBE_END_LINE_334 = 334;
		return f__type_resolver_builder_1164_line_334;
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
