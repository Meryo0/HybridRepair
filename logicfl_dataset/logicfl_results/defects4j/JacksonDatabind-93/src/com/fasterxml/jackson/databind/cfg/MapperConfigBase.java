package com.fasterxml.jackson.databind.cfg;

import java.text.DateFormat;
import java.util.*;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;

@SuppressWarnings("serial")
public abstract class MapperConfigBase<CFG extends ConfigFeature,
    T extends MapperConfigBase<CFG,T>>
    extends MapperConfig<T>
    implements java.io.Serializable
{
    int PROBE_START_LINE_26 = 26;

	private static final int mapper_config_base_1_expr1_line_26 = collectFeatureDefaults(MapperFeature.class);

	int PROBE_END_LINE_26 = 26;

	private final static int DEFAULT_MAPPER_FEATURES = mapper_config_base_1_expr1_line_26;

    /*
    /**********************************************************
    /* Immutable config
    /**********************************************************
     */

    /**
     * Mix-in annotation mappings to use, if any: immutable,
     * can not be changed once defined.
     * 
     * @since 2.6
     */
    protected final SimpleMixInResolver _mixIns;

    /**
     * Registered concrete subtypes that can be used instead of (or
     * in addition to) ones declared using annotations.
     *<p>
     * Note that instances are stateful and as such may need to be copied,
     * and may NOT be demoted down to {@link BaseSettings}.
     */
    protected final SubtypeResolver _subtypeResolver;

    /**
     * Explicitly defined root name to use, if any; if empty
     * String, will disable root-name wrapping; if null, will
     * use defaults
     */
    protected final PropertyName _rootName;

    /**
     * View to use for filtering out properties to serialize
     * or deserialize.
     * Null if none (will also be assigned null if <code>Object.class</code>
     * is defined), meaning that all properties are to be included.
     */
    protected final Class<?> _view;

    /**
     * Contextual attributes accessible (get and set) during processing,
     * on per-call basis.
     * 
     * @since 2.3
     */
    protected final ContextAttributes _attributes;

    /**
     * Simple cache used for finding out possible root name for root name
     * wrapping.
     *<p>
     * Note that instances are stateful (for caching) and as such may need to be copied,
     * and may NOT be demoted down to {@link BaseSettings}.
     *
     * @since 2.6
     */
    protected final RootNameLookup _rootNames;

    /**
     * Configuration overrides to apply, keyed by type of property.
     *
     * @since 2.8
     */
    protected final ConfigOverrides _configOverrides;

    /*
    /**********************************************************
    /* Construction
    /**********************************************************
     */

    /**
     * Constructor used when creating a new instance (compared to
     * that of creating fluent copies)
     *
     * @since 2.8
     */
    protected MapperConfigBase(BaseSettings base,
            SubtypeResolver str, SimpleMixInResolver mixins,
            RootNameLookup rootNames, ConfigOverrides configOverrides)
    {
        super(base, DEFAULT_MAPPER_FEATURES);
        int PROBE_START_LINE_109 = 109;
		com.fasterxml.jackson.databind.introspect.SimpleMixInResolver p_mixins_1282_line_109 = mixins;
		int PROBE_END_LINE_109 = 109;
		_mixIns = p_mixins_1282_line_109;
        int PROBE_START_LINE_110 = 110;
		com.fasterxml.jackson.databind.jsontype.SubtypeResolver p_str_1281_line_110 = str;
		int PROBE_END_LINE_110 = 110;
		_subtypeResolver = p_str_1281_line_110;
        int PROBE_START_LINE_111 = 111;
		com.fasterxml.jackson.databind.util.RootNameLookup p_root_names_1283_line_111 = rootNames;
		int PROBE_END_LINE_111 = 111;
		_rootNames = p_root_names_1283_line_111;
        _rootName = null;
        _view = null;
        int PROBE_START_LINE_115 = 115;
		com.fasterxml.jackson.databind.cfg.ContextAttributes mapper_config_base_1_expr10_line_115 = ContextAttributes
				.getEmpty();
		int PROBE_END_LINE_115 = 115;
		// default to "no attributes"
        _attributes = mapper_config_base_1_expr10_line_115;
        int PROBE_START_LINE_116 = 116;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides p_config_overrides_1284_line_116 = configOverrides;
		int PROBE_END_LINE_116 = 116;
		_configOverrides = p_config_overrides_1284_line_116;
    }

    /**
     * @deprecated Since 2.8, remove from 2.9 or later
     */
    @Deprecated
    protected MapperConfigBase(BaseSettings base,
            SubtypeResolver str, SimpleMixInResolver mixins,
            RootNameLookup rootNames)
    {
        this(base, str, mixins, rootNames, null);
    }

    /**
     * Pass-through constructor used when no changes are needed to the
     * base class.
     */
    protected MapperConfigBase(MapperConfigBase<CFG,T> src)
    {
        super(src);
        _mixIns = src._mixIns;
        _subtypeResolver = src._subtypeResolver;
        _rootNames = src._rootNames;
        _rootName = src._rootName;
        _view = src._view;
        _attributes = src._attributes;
        _configOverrides = src._configOverrides;
    }

    protected MapperConfigBase(MapperConfigBase<CFG,T> src, BaseSettings base)
    {
        super(src, base);
        int PROBE_START_LINE_149 = 149;
		MapperConfigBase<CFG, T> p_src_1298_line_149 = src;
		com.fasterxml.jackson.databind.introspect.SimpleMixInResolver q__mix_ins_39_line_149 = p_src_1298_line_149._mixIns;
		int PROBE_END_LINE_149 = 149;
		_mixIns = q__mix_ins_39_line_149;
        int PROBE_START_LINE_150 = 150;
		MapperConfigBase<CFG, T> p_src_1298_line_150 = src;
		com.fasterxml.jackson.databind.jsontype.SubtypeResolver q__subtype_resolver_40_line_150 = p_src_1298_line_150._subtypeResolver;
		int PROBE_END_LINE_150 = 150;
		_subtypeResolver = q__subtype_resolver_40_line_150;
        int PROBE_START_LINE_151 = 151;
		MapperConfigBase<CFG, T> p_src_1298_line_151 = src;
		com.fasterxml.jackson.databind.util.RootNameLookup q__root_names_41_line_151 = p_src_1298_line_151._rootNames;
		int PROBE_END_LINE_151 = 151;
		_rootNames = q__root_names_41_line_151;
        int PROBE_START_LINE_152 = 152;
		MapperConfigBase<CFG, T> p_src_1298_line_152 = src;
		com.fasterxml.jackson.databind.PropertyName q__root_name_42_line_152 = p_src_1298_line_152._rootName;
		int PROBE_END_LINE_152 = 152;
		_rootName = q__root_name_42_line_152;
        int PROBE_START_LINE_153 = 153;
		MapperConfigBase<CFG, T> p_src_1298_line_153 = src;
		Class<?> q__view_43_line_153 = p_src_1298_line_153._view;
		int PROBE_END_LINE_153 = 153;
		_view = q__view_43_line_153;
        int PROBE_START_LINE_154 = 154;
		MapperConfigBase<CFG, T> p_src_1298_line_154 = src;
		com.fasterxml.jackson.databind.cfg.ContextAttributes q__attributes_44_line_154 = p_src_1298_line_154._attributes;
		int PROBE_END_LINE_154 = 154;
		_attributes = q__attributes_44_line_154;
        int PROBE_START_LINE_155 = 155;
		MapperConfigBase<CFG, T> p_src_1298_line_155 = src;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides q__config_overrides_45_line_155 = p_src_1298_line_155._configOverrides;
		int PROBE_END_LINE_155 = 155;
		_configOverrides = q__config_overrides_45_line_155;
    }
    
    protected MapperConfigBase(MapperConfigBase<CFG,T> src, int mapperFeatures)
    {
        super(src, mapperFeatures);
        _mixIns = src._mixIns;
        _subtypeResolver = src._subtypeResolver;
        _rootNames = src._rootNames;
        _rootName = src._rootName;
        _view = src._view;
        _attributes = src._attributes;
        _configOverrides = src._configOverrides;
    }

    protected MapperConfigBase(MapperConfigBase<CFG,T> src, SubtypeResolver str) {
        super(src);
        _mixIns = src._mixIns;
        _subtypeResolver = str;
        _rootNames = src._rootNames;
        _rootName = src._rootName;
        _view = src._view;
        _attributes = src._attributes;
        _configOverrides = src._configOverrides;
    }

    protected MapperConfigBase(MapperConfigBase<CFG,T> src, PropertyName rootName) {
        super(src);
        _mixIns = src._mixIns;
        _subtypeResolver = src._subtypeResolver;
        _rootNames = src._rootNames;
        _rootName = rootName;
        _view = src._view;
        _attributes = src._attributes;
        _configOverrides = src._configOverrides;
    }

    protected MapperConfigBase(MapperConfigBase<CFG,T> src, Class<?> view)
    {
        super(src);
        _mixIns = src._mixIns;
        _subtypeResolver = src._subtypeResolver;
        _rootNames = src._rootNames;
        _rootName = src._rootName;
        _view = view;
        _attributes = src._attributes;
        _configOverrides = src._configOverrides;
    }

    /**
     * @since 2.1
     */
    protected MapperConfigBase(MapperConfigBase<CFG,T> src, SimpleMixInResolver mixins)
    {
        super(src);
        _mixIns = mixins;
        _subtypeResolver = src._subtypeResolver;
        _rootNames = src._rootNames;
        _rootName = src._rootName;
        _view = src._view;
        _attributes = src._attributes;
        _configOverrides = src._configOverrides;
    }
    
    /**
     * @since 2.3
     */
    protected MapperConfigBase(MapperConfigBase<CFG,T> src, ContextAttributes attr)
    {
        super(src);
        _mixIns = src._mixIns;
        _subtypeResolver = src._subtypeResolver;
        _rootNames = src._rootNames;
        _rootName = src._rootName;
        _view = src._view;
        _attributes = attr;
        _configOverrides = src._configOverrides;
    }

    /**
     * @since 2.8
     */
    protected MapperConfigBase(MapperConfigBase<CFG,T> src, SimpleMixInResolver mixins,
            RootNameLookup rootNames, ConfigOverrides configOverrides)
    {
        super(src);
        _mixIns = mixins;
        _subtypeResolver = src._subtypeResolver;
        _rootNames = rootNames;
        _rootName = src._rootName;
        _view = src._view;
        _attributes = src._attributes;
        _configOverrides = configOverrides;
    }

    /*
    /**********************************************************
    /* Overrides
    /**********************************************************
     */

    // note: demoted in 2.8 from sub-classes, as there's no difference
    @Override
    public VisibilityChecker<?> getDefaultVisibilityChecker()
    {
        int PROBE_START_LINE_260 = 260;
		VisibilityChecker<?> mapper_config_base_1_expr20_line_260 = super.getDefaultVisibilityChecker();
		int PROBE_END_LINE_260 = 260;
		VisibilityChecker<?> vchecker = mapper_config_base_1_expr20_line_260;
        int PROBE_START_LINE_262 = 264;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_setters_46_line_262 = MapperFeature.AUTO_DETECT_SETTERS;
		boolean mapper_config_base_1_expr22_line_262 = isEnabled(q_auto_detect_setters_46_line_262);
		boolean mapper_config_base_1_expr21_line_262 = !mapper_config_base_1_expr22_line_262;
		int PROBE_END_LINE_262 = 264;
		// then global overrides (disabling)
        if (mapper_config_base_1_expr21_line_262) {
            vchecker = vchecker.withSetterVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_265 = 267;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_creators_47_line_265 = MapperFeature.AUTO_DETECT_CREATORS;
		boolean mapper_config_base_1_expr24_line_265 = isEnabled(q_auto_detect_creators_47_line_265);
		boolean mapper_config_base_1_expr23_line_265 = !mapper_config_base_1_expr24_line_265;
		int PROBE_END_LINE_265 = 267;
		if (mapper_config_base_1_expr23_line_265) {
            vchecker = vchecker.withCreatorVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_268 = 270;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_getters_48_line_268 = MapperFeature.AUTO_DETECT_GETTERS;
		boolean mapper_config_base_1_expr26_line_268 = isEnabled(q_auto_detect_getters_48_line_268);
		boolean mapper_config_base_1_expr25_line_268 = !mapper_config_base_1_expr26_line_268;
		int PROBE_END_LINE_268 = 270;
		if (mapper_config_base_1_expr25_line_268) {
            vchecker = vchecker.withGetterVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_271 = 273;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_is_getters_49_line_271 = MapperFeature.AUTO_DETECT_IS_GETTERS;
		boolean mapper_config_base_1_expr28_line_271 = isEnabled(q_auto_detect_is_getters_49_line_271);
		boolean mapper_config_base_1_expr27_line_271 = !mapper_config_base_1_expr28_line_271;
		int PROBE_END_LINE_271 = 273;
		if (mapper_config_base_1_expr27_line_271) {
            vchecker = vchecker.withIsGetterVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_274 = 276;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_fields_50_line_274 = MapperFeature.AUTO_DETECT_FIELDS;
		boolean mapper_config_base_1_expr30_line_274 = isEnabled(q_auto_detect_fields_50_line_274);
		boolean mapper_config_base_1_expr29_line_274 = !mapper_config_base_1_expr30_line_274;
		int PROBE_END_LINE_274 = 276;
		if (mapper_config_base_1_expr29_line_274) {
            vchecker = vchecker.withFieldVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_277 = 277;
		VisibilityChecker<?> v_vchecker_1316_line_277 = vchecker;
		int PROBE_END_LINE_277 = 277;
		return v_vchecker_1316_line_277;
    }

    /*
    /**********************************************************
    /* Addition fluent factory methods, common to all sub-types
    /**********************************************************
     */

    /**
     * Method for constructing and returning a new instance with different
     * {@link AnnotationIntrospector} to use (replacing old one).
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public abstract T with(AnnotationIntrospector ai);

    /**
     * Method for constructing and returning a new instance with additional
     * {@link AnnotationIntrospector} appended (as the lowest priority one)
     */
    public abstract T withAppendedAnnotationIntrospector(AnnotationIntrospector introspector);

    /**
     * Method for constructing and returning a new instance with additional
     * {@link AnnotationIntrospector} inserted (as the highest priority one)
     */
    public abstract T withInsertedAnnotationIntrospector(AnnotationIntrospector introspector);
    
    /**
     * Method for constructing and returning a new instance with different
     * {@link ClassIntrospector}
     * to use.
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public abstract T with(ClassIntrospector ci);

    /**
     * Method for constructing and returning a new instance with different
     * {@link DateFormat}
     * to use.
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public abstract T with(DateFormat df);

    /**
     * Method for constructing and returning a new instance with different
     * {@link HandlerInstantiator}
     * to use.
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public abstract T with(HandlerInstantiator hi);
    
    /**
     * Method for constructing and returning a new instance with different
     * {@link PropertyNamingStrategy}
     * to use.
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public abstract T with(PropertyNamingStrategy strategy);
    
    /**
     * Method for constructing and returning a new instance with different
     * root name to use (none, if null).
     *<p>
     * Note that when a root name is set to a non-Empty String, this will automatically force use
     * of root element wrapping with given name. If empty String passed, will
     * disable root name wrapping; and if null used, will instead use
     * <code>SerializationFeature</code> to determine if to use wrapping, and annotation
     * (or default name) for actual root name to use.
     * 
     * @param rootName to use: if null, means "use default" (clear setting);
     *   if empty String ("") means that no root name wrapping is used;
     *   otherwise defines root name to use.
     *   
     * @since 2.6
     */
    public abstract T withRootName(PropertyName rootName);

    public T withRootName(String rootName) {
        if (rootName == null) {
            return withRootName((PropertyName) null);
        }
        return withRootName(PropertyName.construct(rootName));
    }
    
    /**
     * Method for constructing and returning a new instance with different
     * {@link SubtypeResolver}
     * to use.
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public abstract T with(SubtypeResolver str);
    
    /**
     * Method for constructing and returning a new instance with different
     * {@link TypeFactory}
     * to use.
     */
    public abstract T with(TypeFactory typeFactory);

    /**
     * Method for constructing and returning a new instance with different
     * {@link TypeResolverBuilder} to use.
     */
    public abstract T with(TypeResolverBuilder<?> trb);

    /**
     * Method for constructing and returning a new instance with different
     * view to use.
     */
    public abstract T withView(Class<?> view);
    
    /**
     * Method for constructing and returning a new instance with different
     * {@link VisibilityChecker}
     * to use.
     */
    public abstract T with(VisibilityChecker<?> vc);

    /**
     * Method for constructing and returning a new instance with different
     * minimal visibility level for specified property type
     */
    public abstract T withVisibility(PropertyAccessor forMethod, JsonAutoDetect.Visibility visibility);

    /**
     * Method for constructing and returning a new instance with different
     * default {@link java.util.Locale} to use for formatting.
     */
    public abstract T with(Locale l);

    /**
     * Method for constructing and returning a new instance with different
     * default {@link java.util.TimeZone} to use for formatting of date values.
     */
    public abstract T with(TimeZone tz);

    /**
     * Method for constructing and returning a new instance with different
     * default {@link Base64Variant} to use with base64-encoded binary values.
     */
    public abstract T with(Base64Variant base64);

    /**
     * Method for constructing an instance that has specified
     * contextual attributes.
     * 
     * @since 2.3
     */
    public abstract T with(ContextAttributes attrs);

    /**
     * Method for constructing an instance that has only specified
     * attributes, removing any attributes that exist before the call.
     * 
     * @since 2.3
     */
    public T withAttributes(Map<?,?> attributes) {
        return with(getAttributes().withSharedAttributes(attributes));
    }
    
    /**
     * Method for constructing an instance that has specified
     * value for attribute for given key.
     * 
     * @since 2.3
     */
    public T withAttribute(Object key, Object value) {
        return with(getAttributes().withSharedAttribute(key, value));
    }

    /**
     * Method for constructing an instance that has no
     * value for attribute for given key.
     * 
     * @since 2.3
     */
    public T withoutAttribute(Object key) {
        return with(getAttributes().withoutSharedAttribute(key));
    }
    
    /*
    /**********************************************************
    /* Simple accessors
    /**********************************************************
     */
    
    /**
     * Accessor for object used for finding out all reachable subtypes
     * for supertypes; needed when a logical type name is used instead
     * of class name (or custom scheme).
     */
    @Override
    public final SubtypeResolver getSubtypeResolver() {
        return _subtypeResolver;
    }

    /**
     * @deprecated Since 2.6 use {@link #getFullRootName} instead.
     */
    @Deprecated // since 2.6
    public final String getRootName() {
        return (_rootName == null) ? null : _rootName.getSimpleName();
    }

    /**
     * @since 2.6
     */
    public final PropertyName getFullRootName() {
        return _rootName;
    }

    @Override
    public final Class<?> getActiveView() {
        int PROBE_START_LINE_503 = 503;
		Class<?> f__view_1290_line_503 = _view;
		int PROBE_END_LINE_503 = 503;
		return f__view_1290_line_503;
    }

    @Override
    public final ContextAttributes getAttributes() {
        int PROBE_START_LINE_508 = 508;
		com.fasterxml.jackson.databind.cfg.ContextAttributes f__attributes_1291_line_508 = _attributes;
		int PROBE_END_LINE_508 = 508;
		return f__attributes_1291_line_508;
    }

    /*
    /**********************************************************
    /* Property config override access
    /**********************************************************
     */
    
    @Override
    public final ConfigOverride findConfigOverride(Class<?> type) {
        int PROBE_START_LINE_519 = 519;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1292_line_519 = _configOverrides;
		Class<?> p_type_1341_line_519 = type;
		com.fasterxml.jackson.databind.cfg.ConfigOverride mapper_config_base_1_expr31_line_519 = f__config_overrides_1292_line_519
				.findOverride(p_type_1341_line_519);
		int PROBE_END_LINE_519 = 519;
		return mapper_config_base_1_expr31_line_519;
    }

    @Override
    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> type) {
        int PROBE_START_LINE_524 = 524;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1292_line_524 = _configOverrides;
		Class<?> p_type_1342_line_524 = type;
		ConfigOverride mapper_config_base_1_expr32_line_524 = f__config_overrides_1292_line_524
				.findOverride(p_type_1342_line_524);
		int PROBE_END_LINE_524 = 524;
		ConfigOverride overrides = mapper_config_base_1_expr32_line_524;
        int PROBE_START_LINE_525 = 530;
		com.fasterxml.jackson.databind.cfg.ConfigOverride v_overrides_1343_line_525 = overrides;
		boolean mapper_config_base_1_expr33_line_525 = v_overrides_1343_line_525 != null;
		int PROBE_END_LINE_525 = 530;
		if (mapper_config_base_1_expr33_line_525) {
            JsonFormat.Value v = overrides.getFormat();
            if (v != null) {
                return v;
            }
        }
        int PROBE_START_LINE_531 = 531;
		com.fasterxml.jackson.annotation.JsonFormat.Value f_empty_format_1344_line_531 = EMPTY_FORMAT;
		int PROBE_END_LINE_531 = 531;
		return f_empty_format_1344_line_531;
    }

    @Override
    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> type) {
        int PROBE_START_LINE_536 = 536;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1292_line_536 = _configOverrides;
		Class<?> p_type_1345_line_536 = type;
		ConfigOverride mapper_config_base_1_expr34_line_536 = f__config_overrides_1292_line_536
				.findOverride(p_type_1345_line_536);
		int PROBE_END_LINE_536 = 536;
		ConfigOverride overrides = mapper_config_base_1_expr34_line_536;
        int PROBE_START_LINE_537 = 542;
		com.fasterxml.jackson.databind.cfg.ConfigOverride v_overrides_1346_line_537 = overrides;
		boolean mapper_config_base_1_expr35_line_537 = v_overrides_1346_line_537 != null;
		int PROBE_END_LINE_537 = 542;
		if (mapper_config_base_1_expr35_line_537) {
            JsonIgnoreProperties.Value v = overrides.getIgnorals();
            if (v != null) {
                return v;
            }
        }
        // 01-May-2015, tatu: Could return `Value.empty()` but for now `null`
        //   seems simpler as callers can avoid processing.
        return null;
    }

    @Override
    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> baseType,
            AnnotatedClass actualClass)
    {
        int PROBE_START_LINE_552 = 552;
		AnnotationIntrospector mapper_config_base_1_expr36_line_552 = getAnnotationIntrospector();
		int PROBE_END_LINE_552 = 552;
		AnnotationIntrospector intr = mapper_config_base_1_expr36_line_552;
        int PROBE_START_LINE_553 = 554;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1349_line_553 = intr;
		boolean mapper_config_base_1_expr40_line_553 = v_intr_1349_line_553 == null;
		boolean mapper_config_base_1_expr38_line_553 = (mapper_config_base_1_expr40_line_553);
		JsonIgnoreProperties.Value mapper_config_base_1_expr37_line_553 = mapper_config_base_1_expr38_line_553
				? null
				: intr.findPropertyIgnorals(actualClass);
		int PROBE_END_LINE_553 = 554;
		JsonIgnoreProperties.Value base = mapper_config_base_1_expr37_line_553;
        int PROBE_START_LINE_555 = 555;
		Class<?> p_base_type_1347_line_555 = baseType;
		JsonIgnoreProperties.Value mapper_config_base_1_expr41_line_555 = getDefaultPropertyIgnorals(
				p_base_type_1347_line_555);
		int PROBE_END_LINE_555 = 555;
		JsonIgnoreProperties.Value overrides = mapper_config_base_1_expr41_line_555;
        int PROBE_START_LINE_556 = 556;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_base_1350_line_556 = base;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_overrides_1351_line_556 = overrides;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value mapper_config_base_1_expr42_line_556 = JsonIgnoreProperties.Value
				.merge(v_base_1350_line_556, v_overrides_1351_line_556);
		int PROBE_END_LINE_556 = 556;
		return mapper_config_base_1_expr42_line_556;
    }

    /*
    /**********************************************************
    /* Other config access
    /**********************************************************
     */

    @Override
    public PropertyName findRootName(JavaType rootType) {
        if (_rootName != null) {
            return _rootName;
        }
        return _rootNames.findRootName(rootType, this);
    }

    @Override
    public PropertyName findRootName(Class<?> rawRootType) {
        if (_rootName != null) {
            return _rootName;
        }
        return _rootNames.findRootName(rawRootType, this);
    }

    /*
    /**********************************************************
    /* ClassIntrospector.MixInResolver impl:
    /**********************************************************
     */

    /**
     * Method that will check if there are "mix-in" classes (with mix-in
     * annotations) for given class
     */
    @Override
    public final Class<?> findMixInClassFor(Class<?> cls) {
        int PROBE_START_LINE_593 = 593;
		com.fasterxml.jackson.databind.introspect.SimpleMixInResolver f__mix_ins_1286_line_593 = _mixIns;
		Class<?> p_cls_1354_line_593 = cls;
		Class<?> mapper_config_base_1_expr43_line_593 = f__mix_ins_1286_line_593.findMixInClassFor(p_cls_1354_line_593);
		int PROBE_END_LINE_593 = 593;
		return mapper_config_base_1_expr43_line_593;
    }

    // Not really relevant here (should not get called)
    @Override
    public MixInResolver copy() {
        throw new UnsupportedOperationException();
    }
    
    /**
     * Test-only method -- does not reflect possibly open-ended set that external
     * mix-in resolver might provide.
     */
    public final int mixInCount() {
        return _mixIns.localSize();
    }
}
