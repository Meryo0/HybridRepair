package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;


import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;

/**
 * Interface for object used for determine which property elements
 * (methods, fields, constructors) can be auto-detected, with respect
 * to their visibility modifiers.
 *<p>
 * Note on type declaration: funky recursive type is necessary to
 * support builder/fluent pattern.
 */
public interface VisibilityChecker<T extends VisibilityChecker<T>>
{
    // // Builder methods

    /**
     * Builder method that will return an instance that has same
     * settings as this instance has, except for values that
     * given annotation overrides.
     */
    public T with(JsonAutoDetect ann);

    /**
     * Method that can be used for merging default values from `this`
     * instance with specified overrides; and either return `this`
     * if overrides had no effect (that is, result would be equal),
     * or a new instance with merged visibility settings.
     *
     * @since 2.9
     */
    public T withOverrides(JsonAutoDetect.Value vis);

    /**
     * Builder method that will create and return an instance that has specified
     * {@link Visibility} value to use for all property elements.
     * Typical usage would be something like:
     *<pre>
     *  mapper.setVisibilityChecker(
     *     mapper.getVisibilityChecker().with(Visibility.NONE));
     *</pre>
     * (which would basically disable all auto-detection)
     */
    public T with(Visibility v);

    /**
     * Builder method that will create and return an instance that has specified
     * {@link Visibility} value to use for specified property.
     * Typical usage would be:
     *<pre>
     *  mapper.setVisibilityChecker(
     *     mapper.getVisibilityChecker().withVisibility(JsonMethod.FIELD, Visibility.ANY));
     *</pre>
     * (which would basically enable auto-detection for all member fields)
     */
    public T withVisibility(PropertyAccessor method, Visibility v);
    
    /**
     * Builder method that will return a checker instance that has
     * specified minimum visibility level for regular ("getXxx") getters.
     */
    public T withGetterVisibility(Visibility v);

    /**
     * Builder method that will return a checker instance that has
     * specified minimum visibility level for "is-getters" ("isXxx").
     */
    public T withIsGetterVisibility(Visibility v);
    
    /**
     * Builder method that will return a checker instance that has
     * specified minimum visibility level for setters.
     */
    public T withSetterVisibility(Visibility v);

    /**
     * Builder method that will return a checker instance that has
     * specified minimum visibility level for creator methods
     * (constructors, factory methods)
     */
    public T withCreatorVisibility(Visibility v);

    /**
     * Builder method that will return a checker instance that has
     * specified minimum visibility level for fields.
     */
    public T withFieldVisibility(Visibility v);
	
    // // Accessors
	
    /**
     * Method for checking whether given method is auto-detectable
     * as regular getter, with respect to its visibility (not considering
     * method signature or name, just visibility)
     */
    public boolean isGetterVisible(Method m);
    public boolean isGetterVisible(AnnotatedMethod m);

    /**
     * Method for checking whether given method is auto-detectable
     * as is-getter, with respect to its visibility (not considering
     * method signature or name, just visibility)
     */
    public boolean isIsGetterVisible(Method m);
    public boolean isIsGetterVisible(AnnotatedMethod m);
    
    /**
     * Method for checking whether given method is auto-detectable
     * as setter, with respect to its visibility (not considering
     * method signature or name, just visibility)
     */
    public boolean isSetterVisible(Method m);
    public boolean isSetterVisible(AnnotatedMethod m);

    /**
     * Method for checking whether given method is auto-detectable
     * as Creator, with respect to its visibility (not considering
     * method signature or name, just visibility)
     */
    public boolean isCreatorVisible(Member m);
    public boolean isCreatorVisible(AnnotatedMember m);

    /**
     * Method for checking whether given field is auto-detectable
     * as property, with respect to its visibility (not considering
     * method signature or name, just visibility)
     */
    public boolean isFieldVisible(Field f);
    public boolean isFieldVisible(AnnotatedField f);

    /*
    /********************************************************
    /* Standard implementation suitable for basic use
    /********************************************************
    */

   /**
    * Default standard implementation is purely based on visibility
    * modifier of given class members, and its configured minimum
    * levels.
    * Implemented using "builder" (or "Fluent") pattern, whereas instances
    * are immutable, and configuration is achieved by chainable factory
    * methods. As a result, type is declared is funky recursive generic
    * type, to allow for sub-classing of build methods with property type
    * co-variance.
    */
    public static class Std
        implements VisibilityChecker<Std>,
            java.io.Serializable
    {
        private static final long serialVersionUID = 1;

        /**
         * This is the canonical base instance, configured with default
         * visibility values
         */
        protected final static Std DEFAULT = new Std(
                Visibility.PUBLIC_ONLY, // getter
                Visibility.PUBLIC_ONLY, // is-getter
                Visibility.ANY, // setter
                Visibility.ANY, // creator -- legacy, to support single-arg ctors
                Visibility.PUBLIC_ONLY // field
                );

        protected final Visibility _getterMinLevel;
        protected final Visibility _isGetterMinLevel;
        protected final Visibility _setterMinLevel;
        protected final Visibility _creatorMinLevel;
        protected final Visibility _fieldMinLevel;
		
        public static Std defaultInstance() { int PROBE_START_LINE_178 = 178;
			com.fasterxml.jackson.databind.introspect.VisibilityChecker.Std f_default_4442_line_178 = DEFAULT;
			int PROBE_END_LINE_178 = 178;
		return f_default_4442_line_178; }
        
        /**
         * Constructor used for building instance that has minumum visibility
         * levels as indicated by given annotation instance
         * 
         * @param ann Annotations to use for determining minimum visibility levels
         */
        public Std(JsonAutoDetect ann)
        {
            // let's combine checks for enabled/disabled, with minimum level checks:
            _getterMinLevel = ann.getterVisibility();
            _isGetterMinLevel = ann.isGetterVisibility();
            _setterMinLevel = ann.setterVisibility();
            _creatorMinLevel = ann.creatorVisibility();
            _fieldMinLevel = ann.fieldVisibility();
        }

        /**
         * Constructor that allows directly specifying minimum visibility levels to use
         */
        public Std(Visibility getter, Visibility isGetter, Visibility setter,
                Visibility creator, Visibility field)
        {
            int PROBE_START_LINE_202 = 202;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility p_getter_4444_line_202 = getter;
			int PROBE_END_LINE_202 = 202;
			_getterMinLevel = p_getter_4444_line_202;
            int PROBE_START_LINE_203 = 203;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility p_is_getter_4445_line_203 = isGetter;
			int PROBE_END_LINE_203 = 203;
			_isGetterMinLevel = p_is_getter_4445_line_203;
            int PROBE_START_LINE_204 = 204;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility p_setter_4446_line_204 = setter;
			int PROBE_END_LINE_204 = 204;
			_setterMinLevel = p_setter_4446_line_204;
            int PROBE_START_LINE_205 = 205;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility p_creator_4447_line_205 = creator;
			int PROBE_END_LINE_205 = 205;
			_creatorMinLevel = p_creator_4447_line_205;
            int PROBE_START_LINE_206 = 206;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility p_field_4448_line_206 = field;
			int PROBE_END_LINE_206 = 206;
			_fieldMinLevel = p_field_4448_line_206;
        }

        /**
         * Constructor that will assign given visibility value for all
         * properties.
         * 
         * @param v level to use for all property types
         */
        public Std(Visibility v)
        {
            // typically we shouldn't get this value; but let's handle it if we do:
            if (v == Visibility.DEFAULT) {
                _getterMinLevel = DEFAULT._getterMinLevel;
                _isGetterMinLevel = DEFAULT._isGetterMinLevel;
                _setterMinLevel = DEFAULT._setterMinLevel;
                _creatorMinLevel = DEFAULT._creatorMinLevel;
                _fieldMinLevel = DEFAULT._fieldMinLevel;
            } else {
                _getterMinLevel = v;
                _isGetterMinLevel = v;
                _setterMinLevel = v;
                _creatorMinLevel = v;
                _fieldMinLevel = v;
            }
        }

        /**
         * @since 2.9
         */
        public static Std construct(JsonAutoDetect.Value vis) {
            return DEFAULT.withOverrides(vis);
        }

        /*
        /********************************************************
        /* Builder/fluent methods for instantiating configured
        /* instances
        /********************************************************
         */

        protected Std _with(Visibility g, Visibility isG, Visibility s,
                Visibility cr, Visibility f) {
            if ((g == _getterMinLevel)
                    && (isG == _isGetterMinLevel)
                    && (s == _setterMinLevel)
                    && (cr == _creatorMinLevel)
                    && (f == _fieldMinLevel)
                    ) {
                return this;
            }
            return new Std(g, isG, s, cr, f);
        }

        @Override
        public Std with(JsonAutoDetect ann)
        {
            Std curr = this;
            if (ann != null) {
                return _with(
                        _defaultOrOverride(_getterMinLevel, ann.getterVisibility()),
                        _defaultOrOverride(_isGetterMinLevel, ann.isGetterVisibility()),
                        _defaultOrOverride(_setterMinLevel, ann.setterVisibility()),
                        _defaultOrOverride(_creatorMinLevel, ann.creatorVisibility()),
                        _defaultOrOverride(_fieldMinLevel, ann.fieldVisibility())
                        );
            }
            return curr;
        }

        @Override // since 2.9
        public Std withOverrides(JsonAutoDetect.Value vis)
        {
            Std curr = this;
            if (vis != null) {
                return _with(
                        _defaultOrOverride(_getterMinLevel, vis.getGetterVisibility()),
                        _defaultOrOverride(_isGetterMinLevel, vis.getIsGetterVisibility()),
                        _defaultOrOverride(_setterMinLevel, vis.getSetterVisibility()),
                        _defaultOrOverride(_creatorMinLevel, vis.getCreatorVisibility()),
                        _defaultOrOverride(_fieldMinLevel, vis.getFieldVisibility())
                        );
            }
            return curr;
        }

        private Visibility _defaultOrOverride(Visibility defaults, Visibility override) {
            if (override == Visibility.DEFAULT) {
                return defaults;
            }
            return override;
        }

        @Override
        public Std with(Visibility v)
        {
            if (v == Visibility.DEFAULT) {
                return DEFAULT;
            }
            return new Std(v);
        }

        @Override
        public Std withVisibility(PropertyAccessor method, Visibility v)
        {
            switch (method) {
            case GETTER:
                return withGetterVisibility(v);
            case SETTER:
                return withSetterVisibility(v);
            case CREATOR:
                return withCreatorVisibility(v);
            case FIELD:
                return withFieldVisibility(v);
            case IS_GETTER:
                return withIsGetterVisibility(v);
            case ALL:
                return with(v);
            //case NONE:
            default:
                // break;
                return this;
            }
        }
	
        @Override
        public Std withGetterVisibility(Visibility v) {
            if (v == Visibility.DEFAULT) v = DEFAULT._getterMinLevel;
            if (_getterMinLevel == v) return this;
            return new Std(v, _isGetterMinLevel, _setterMinLevel, _creatorMinLevel, _fieldMinLevel);
        }

        @Override
        public Std withIsGetterVisibility(Visibility v) {
            if (v == Visibility.DEFAULT) v = DEFAULT._isGetterMinLevel;
            if (_isGetterMinLevel == v) return this;
            return new Std(_getterMinLevel, v, _setterMinLevel, _creatorMinLevel, _fieldMinLevel);
        }

        @Override
        public Std withSetterVisibility(Visibility v) {
            if (v == Visibility.DEFAULT) v = DEFAULT._setterMinLevel;
            if (_setterMinLevel == v) return this;
            return new Std(_getterMinLevel, _isGetterMinLevel, v, _creatorMinLevel, _fieldMinLevel);
        }

        @Override
        public Std withCreatorVisibility(Visibility v) {
            if (v == Visibility.DEFAULT) v = DEFAULT._creatorMinLevel;
            if (_creatorMinLevel == v) return this;
            return new Std(_getterMinLevel, _isGetterMinLevel, _setterMinLevel, v, _fieldMinLevel);
        }

        @Override
        public Std withFieldVisibility(Visibility v) {
            if (v == Visibility.DEFAULT)  v = DEFAULT._fieldMinLevel;
            if (_fieldMinLevel == v) return this;
            return new Std(_getterMinLevel, _isGetterMinLevel, _setterMinLevel, _creatorMinLevel, v);
        }

        /*
        /********************************************************
        /* Public API impl
        /********************************************************
         */

        @Override
        public boolean isCreatorVisible(Member m) {
            int PROBE_START_LINE_374 = 374;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility f__creator_min_level_4452_line_374 = _creatorMinLevel;
			java.lang.reflect.Member p_m_4473_line_374 = m;
			boolean visibility_checker_1_expr7_line_374 = f__creator_min_level_4452_line_374
					.isVisible(p_m_4473_line_374);
			int PROBE_END_LINE_374 = 374;
			return visibility_checker_1_expr7_line_374;
        }

        @Override
        public boolean isCreatorVisible(AnnotatedMember m) {
            int PROBE_START_LINE_379 = 379;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember p_m_4474_line_379 = m;
			java.lang.reflect.Member visibility_checker_1_expr9_line_379 = p_m_4474_line_379.getMember();
			boolean visibility_checker_1_expr8_line_379 = isCreatorVisible(visibility_checker_1_expr9_line_379);
			int PROBE_END_LINE_379 = 379;
			return visibility_checker_1_expr8_line_379;
        }

        @Override
        public boolean isFieldVisible(Field f) {
            int PROBE_START_LINE_384 = 384;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility f__field_min_level_4453_line_384 = _fieldMinLevel;
			java.lang.reflect.Field p_f_4475_line_384 = f;
			boolean visibility_checker_1_expr10_line_384 = f__field_min_level_4453_line_384
					.isVisible(p_f_4475_line_384);
			int PROBE_END_LINE_384 = 384;
			return visibility_checker_1_expr10_line_384;
        }

        @Override
        public boolean isFieldVisible(AnnotatedField f) {
            int PROBE_START_LINE_389 = 389;
			com.fasterxml.jackson.databind.introspect.AnnotatedField p_f_4476_line_389 = f;
			java.lang.reflect.Field visibility_checker_1_expr12_line_389 = p_f_4476_line_389.getAnnotated();
			boolean visibility_checker_1_expr11_line_389 = isFieldVisible(visibility_checker_1_expr12_line_389);
			int PROBE_END_LINE_389 = 389;
			return visibility_checker_1_expr11_line_389;
        }

        @Override
        public boolean isGetterVisible(Method m) {
            int PROBE_START_LINE_394 = 394;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility f__getter_min_level_4449_line_394 = _getterMinLevel;
			java.lang.reflect.Method p_m_4477_line_394 = m;
			boolean visibility_checker_1_expr13_line_394 = f__getter_min_level_4449_line_394
					.isVisible(p_m_4477_line_394);
			int PROBE_END_LINE_394 = 394;
			return visibility_checker_1_expr13_line_394;
        }

        @Override
        public boolean isGetterVisible(AnnotatedMethod m) {
             int PROBE_START_LINE_399 = 399;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4478_line_399 = m;
			java.lang.reflect.Method visibility_checker_1_expr15_line_399 = p_m_4478_line_399.getAnnotated();
			boolean visibility_checker_1_expr14_line_399 = isGetterVisible(visibility_checker_1_expr15_line_399);
			int PROBE_END_LINE_399 = 399;
			return visibility_checker_1_expr14_line_399;
        }
    
        @Override
        public boolean isIsGetterVisible(Method m) {
            return _isGetterMinLevel.isVisible(m);
        }    
    
        @Override
        public boolean isIsGetterVisible(AnnotatedMethod m) {
            return isIsGetterVisible(m.getAnnotated());
        }
    
        @Override
        public boolean isSetterVisible(Method m) {
            int PROBE_START_LINE_414 = 414;
			com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility f__setter_min_level_4451_line_414 = _setterMinLevel;
			java.lang.reflect.Method p_m_4481_line_414 = m;
			boolean visibility_checker_1_expr16_line_414 = f__setter_min_level_4451_line_414
					.isVisible(p_m_4481_line_414);
			int PROBE_END_LINE_414 = 414;
			return visibility_checker_1_expr16_line_414;
        }
        
        @Override
        public boolean isSetterVisible(AnnotatedMethod m) {
            int PROBE_START_LINE_419 = 419;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4482_line_419 = m;
			java.lang.reflect.Method visibility_checker_1_expr18_line_419 = p_m_4482_line_419.getAnnotated();
			boolean visibility_checker_1_expr17_line_419 = isSetterVisible(visibility_checker_1_expr18_line_419);
			int PROBE_END_LINE_419 = 419;
			return visibility_checker_1_expr17_line_419;
        }

        /*
        /********************************************************
        /* Standard methods
        /********************************************************
         */
    
        @Override
        public String toString() {
            return String.format("[Visibility: getter=%s,isGetter=%s,setter=%s,creator=%s,field=%s]",
                    _getterMinLevel, _isGetterMinLevel, _setterMinLevel, _creatorMinLevel, _fieldMinLevel);
        }
    }
}
