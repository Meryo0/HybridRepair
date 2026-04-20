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
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;

@SuppressWarnings("serial")
public abstract class MapperConfigBase<CFG extends ConfigFeature,
    T extends MapperConfigBase<CFG,T>>
    extends MapperConfig<T>
    implements java.io.Serializable
{
    int PROBE_START_LINE_27 = 30;

	protected static final com.fasterxml.jackson.databind.cfg.ConfigOverride mapper_config_base_1_expr1_line_30 = ConfigOverride
			.empty();

	int PROBE_END_LINE_27 = 30;

	/**
     * @since 2.9
     */
    protected final static ConfigOverride EMPTY_OVERRIDE = mapper_config_base_1_expr1_line_30;

    int PROBE_START_LINE_32 = 32;

	private static final int mapper_config_base_1_expr2_line_32 = collectFeatureDefaults(MapperFeature.class);

	int PROBE_END_LINE_32 = 32;

	private final static int DEFAULT_MAPPER_FEATURES = mapper_config_base_1_expr2_line_32;

    /**
     * @since 2.9
     */
    private final static int AUTO_DETECT_MASK =
            MapperFeature.AUTO_DETECT_FIELDS.getMask()
            | MapperFeature.AUTO_DETECT_GETTERS.getMask()
            | MapperFeature.AUTO_DETECT_IS_GETTERS.getMask()
            | MapperFeature.AUTO_DETECT_SETTERS.getMask()
            | MapperFeature.AUTO_DETECT_CREATORS.getMask()
            ;

    /*
    /**********************************************************
    /* Immutable config
    /**********************************************************
     */

    /**
     * Mix-in annotation mappings to use, if any: immutable,
     * cannot be changed once defined.
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
            SubtypeResolver str, SimpleMixInResolver mixins, RootNameLookup rootNames,
            ConfigOverrides configOverrides)
    {
        super(base, DEFAULT_MAPPER_FEATURES);
        int PROBE_START_LINE_126 = 126;
		com.fasterxml.jackson.databind.introspect.SimpleMixInResolver p_mixins_1437_line_126 = mixins;
		int PROBE_END_LINE_126 = 126;
		_mixIns = p_mixins_1437_line_126;
        int PROBE_START_LINE_127 = 127;
		com.fasterxml.jackson.databind.jsontype.SubtypeResolver p_str_1436_line_127 = str;
		int PROBE_END_LINE_127 = 127;
		_subtypeResolver = p_str_1436_line_127;
        int PROBE_START_LINE_128 = 128;
		com.fasterxml.jackson.databind.util.RootNameLookup p_root_names_1438_line_128 = rootNames;
		int PROBE_END_LINE_128 = 128;
		_rootNames = p_root_names_1438_line_128;
        _rootName = null;
        _view = null;
        int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.cfg.ContextAttributes mapper_config_base_1_expr12_line_132 = ContextAttributes
				.getEmpty();
		int PROBE_END_LINE_132 = 132;
		// default to "no attributes"
        _attributes = mapper_config_base_1_expr12_line_132;
        int PROBE_START_LINE_133 = 133;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides p_config_overrides_1439_line_133 = configOverrides;
		int PROBE_END_LINE_133 = 133;
		_configOverrides = p_config_overrides_1439_line_133;
    }

    /**
     * Copy constructor usually called to make a copy for use by
     * ObjectMapper that is copied.
     *
     * @since 2.8
     */
    protected MapperConfigBase(MapperConfigBase<CFG,T> src,
            SimpleMixInResolver mixins, RootNameLookup rootNames,
            ConfigOverrides configOverrides)
    {
        // 18-Apr-2018, tatu: [databind#1898] need to force copying of `ClassIntrospector`
        //    (to clear its cache) to avoid leakage
        super(src, src._base.copy());
        _mixIns = mixins;
        _subtypeResolver = src._subtypeResolver;
        _rootNames = rootNames;
        _rootName = src._rootName;
        _view = src._view;
        _attributes = src._attributes;
        _configOverrides = configOverrides;
    }

    /**
     * Pass-through constructor used when no changes are needed to the
     * base class.
     */
    protected MapperConfigBase(MapperConfigBase<CFG,T> src)
    {
        super(src);
        int PROBE_START_LINE_165 = 165;
		MapperConfigBase<CFG, T> p_src_1452_line_165 = src;
		com.fasterxml.jackson.databind.introspect.SimpleMixInResolver q__mix_ins_51_line_165 = p_src_1452_line_165._mixIns;
		int PROBE_END_LINE_165 = 165;
		_mixIns = q__mix_ins_51_line_165;
        int PROBE_START_LINE_166 = 166;
		MapperConfigBase<CFG, T> p_src_1452_line_166 = src;
		com.fasterxml.jackson.databind.jsontype.SubtypeResolver q__subtype_resolver_52_line_166 = p_src_1452_line_166._subtypeResolver;
		int PROBE_END_LINE_166 = 166;
		_subtypeResolver = q__subtype_resolver_52_line_166;
        int PROBE_START_LINE_167 = 167;
		MapperConfigBase<CFG, T> p_src_1452_line_167 = src;
		com.fasterxml.jackson.databind.util.RootNameLookup q__root_names_53_line_167 = p_src_1452_line_167._rootNames;
		int PROBE_END_LINE_167 = 167;
		_rootNames = q__root_names_53_line_167;
        int PROBE_START_LINE_168 = 168;
		MapperConfigBase<CFG, T> p_src_1452_line_168 = src;
		com.fasterxml.jackson.databind.PropertyName q__root_name_54_line_168 = p_src_1452_line_168._rootName;
		int PROBE_END_LINE_168 = 168;
		_rootName = q__root_name_54_line_168;
        int PROBE_START_LINE_169 = 169;
		MapperConfigBase<CFG, T> p_src_1452_line_169 = src;
		Class<?> q__view_55_line_169 = p_src_1452_line_169._view;
		int PROBE_END_LINE_169 = 169;
		_view = q__view_55_line_169;
        int PROBE_START_LINE_170 = 170;
		MapperConfigBase<CFG, T> p_src_1452_line_170 = src;
		com.fasterxml.jackson.databind.cfg.ContextAttributes q__attributes_56_line_170 = p_src_1452_line_170._attributes;
		int PROBE_END_LINE_170 = 170;
		_attributes = q__attributes_56_line_170;
        int PROBE_START_LINE_171 = 171;
		MapperConfigBase<CFG, T> p_src_1452_line_171 = src;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides q__config_overrides_57_line_171 = p_src_1452_line_171._configOverrides;
		int PROBE_END_LINE_171 = 171;
		_configOverrides = q__config_overrides_57_line_171;
    }

    protected MapperConfigBase(MapperConfigBase<CFG,T> src, BaseSettings base)
    {
        super(src, base);
        int PROBE_START_LINE_177 = 177;
		MapperConfigBase<CFG, T> p_src_1453_line_177 = src;
		com.fasterxml.jackson.databind.introspect.SimpleMixInResolver q__mix_ins_58_line_177 = p_src_1453_line_177._mixIns;
		int PROBE_END_LINE_177 = 177;
		_mixIns = q__mix_ins_58_line_177;
        int PROBE_START_LINE_178 = 178;
		MapperConfigBase<CFG, T> p_src_1453_line_178 = src;
		com.fasterxml.jackson.databind.jsontype.SubtypeResolver q__subtype_resolver_59_line_178 = p_src_1453_line_178._subtypeResolver;
		int PROBE_END_LINE_178 = 178;
		_subtypeResolver = q__subtype_resolver_59_line_178;
        int PROBE_START_LINE_179 = 179;
		MapperConfigBase<CFG, T> p_src_1453_line_179 = src;
		com.fasterxml.jackson.databind.util.RootNameLookup q__root_names_60_line_179 = p_src_1453_line_179._rootNames;
		int PROBE_END_LINE_179 = 179;
		_rootNames = q__root_names_60_line_179;
        int PROBE_START_LINE_180 = 180;
		MapperConfigBase<CFG, T> p_src_1453_line_180 = src;
		com.fasterxml.jackson.databind.PropertyName q__root_name_61_line_180 = p_src_1453_line_180._rootName;
		int PROBE_END_LINE_180 = 180;
		_rootName = q__root_name_61_line_180;
        int PROBE_START_LINE_181 = 181;
		MapperConfigBase<CFG, T> p_src_1453_line_181 = src;
		Class<?> q__view_62_line_181 = p_src_1453_line_181._view;
		int PROBE_END_LINE_181 = 181;
		_view = q__view_62_line_181;
        int PROBE_START_LINE_182 = 182;
		MapperConfigBase<CFG, T> p_src_1453_line_182 = src;
		com.fasterxml.jackson.databind.cfg.ContextAttributes q__attributes_63_line_182 = p_src_1453_line_182._attributes;
		int PROBE_END_LINE_182 = 182;
		_attributes = q__attributes_63_line_182;
        int PROBE_START_LINE_183 = 183;
		MapperConfigBase<CFG, T> p_src_1453_line_183 = src;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides q__config_overrides_64_line_183 = p_src_1453_line_183._configOverrides;
		int PROBE_END_LINE_183 = 183;
		_configOverrides = q__config_overrides_64_line_183;
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

    /*
    /**********************************************************
    /* Abstract fluent factory methods to be implemented by subtypes
    /**********************************************************
     */

    /**
     * @since 2.9 (in this case, demoted from sub-classes)
     */
    protected abstract T _withBase(BaseSettings newBase);

    /**
     * @since 2.9 (in this case, demoted from sub-classes)
     */
    protected abstract T _withMapperFeatures(int mapperFeatures);

    /*
    /**********************************************************
    /* Additional shared fluent factory methods; features
    /**********************************************************
     */
    
    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     */
    @SuppressWarnings("unchecked")
    @Override
    public final T with(MapperFeature... features)
    {
        int newMapperFlags = _mapperFeatures;
        for (MapperFeature f : features) {
            newMapperFlags |= f.getMask();
        }
        if (newMapperFlags == _mapperFeatures) {
            return (T) this;
        }
        return _withMapperFeatures(newMapperFlags);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features disabled.
     */
    @SuppressWarnings("unchecked")
    @Override
    public final T without(MapperFeature... features)
    {
        int newMapperFlags = _mapperFeatures;
        for (MapperFeature f : features) {
             newMapperFlags &= ~f.getMask();
        }
        if (newMapperFlags == _mapperFeatures) {
            return (T) this;
        }
        return _withMapperFeatures(newMapperFlags);
    }

    @SuppressWarnings("unchecked")
    @Override
    public final T with(MapperFeature feature, boolean state)
    {
        int newMapperFlags;
        if (state) {
            newMapperFlags = _mapperFeatures | feature.getMask();
        } else {
            newMapperFlags = _mapperFeatures & ~feature.getMask();
        }
        if (newMapperFlags == _mapperFeatures) {
            return (T) this;
        }
        return _withMapperFeatures(newMapperFlags);
    }

    /*
    /**********************************************************
    /* Additional shared fluent factory methods; introspectors
    /**********************************************************
     */
    
    /**
     * Method for constructing and returning a new instance with different
     * {@link AnnotationIntrospector} to use (replacing old one).
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public final T with(AnnotationIntrospector ai) {
        return _withBase(_base.withAnnotationIntrospector(ai));
    }

    /**
     * Method for constructing and returning a new instance with additional
     * {@link AnnotationIntrospector} appended (as the lowest priority one)
     */
    public final T withAppendedAnnotationIntrospector(AnnotationIntrospector ai) {
        return _withBase(_base.withAppendedAnnotationIntrospector(ai));
    }

    /**
     * Method for constructing and returning a new instance with additional
     * {@link AnnotationIntrospector} inserted (as the highest priority one)
     */
    public final T withInsertedAnnotationIntrospector(AnnotationIntrospector ai) {
        return _withBase(_base.withInsertedAnnotationIntrospector(ai));
    }
    
    /**
     * Method for constructing and returning a new instance with different
     * {@link ClassIntrospector}
     * to use.
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public final T with(ClassIntrospector ci) {
        return _withBase(_base.withClassIntrospector(ci));
    }

    /*
    /**********************************************************
    /* Additional shared fluent factory methods; attributes
    /**********************************************************
     */

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
    /* Additional shared fluent factory methods; factories
    /**********************************************************
     */

    /**
     * Method for constructing and returning a new instance with different
     * {@link TypeFactory}
     * to use.
     */
    public final T with(TypeFactory tf) {
        return _withBase( _base.withTypeFactory(tf));
    }

    /**
     * Method for constructing and returning a new instance with different
     * {@link TypeResolverBuilder} to use.
     */
    public final T with(TypeResolverBuilder<?> trb) {
        int PROBE_START_LINE_445 = 445;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_1484_line_445 = _base;
		TypeResolverBuilder<?> p_trb_1483_line_445 = trb;
		com.fasterxml.jackson.databind.cfg.BaseSettings mapper_config_base_1_expr31_line_445 = f__base_1484_line_445
				.withTypeResolverBuilder(p_trb_1483_line_445);
		T mapper_config_base_1_expr30_line_445 = _withBase(mapper_config_base_1_expr31_line_445);
		int PROBE_END_LINE_445 = 445;
		return mapper_config_base_1_expr30_line_445;
    }

    /**
     * Method for constructing and returning a new instance with different
     * {@link PropertyNamingStrategy}
     * to use.
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public final T with(PropertyNamingStrategy pns) {
        return _withBase(_base.withPropertyNamingStrategy(pns));
    }

    /**
     * Method for constructing and returning a new instance with different
     * {@link HandlerInstantiator}
     * to use.
     *<p>
     * NOTE: make sure to register new instance with <code>ObjectMapper</code>
     * if directly calling this method.
     */
    public final T with(HandlerInstantiator hi) {
        return _withBase(_base.withHandlerInstantiator(hi));
    }

    /*
    /**********************************************************
    /* Additional shared fluent factory methods; other
    /**********************************************************
     */

    /**
     * Method for constructing and returning a new instance with different
     * default {@link Base64Variant} to use with base64-encoded binary values.
     */
    public final T with(Base64Variant base64) {
        return _withBase(_base.with(base64));
    }

    /**
     * Method for constructing and returning a new instance with different
     * {@link DateFormat}
     * to use.
     *<p>
     * NOTE: non-final since <code>SerializationConfig</code> needs to override this
     */
    public T with(DateFormat df) {
        return _withBase(_base.withDateFormat(df));
    }

    /**
     * Method for constructing and returning a new instance with different
     * default {@link java.util.Locale} to use for formatting.
     */
    public final T with(Locale l) {
        return _withBase(_base.with(l));
    }

    /**
     * Method for constructing and returning a new instance with different
     * default {@link java.util.TimeZone} to use for formatting of date values.
     */
    public final T with(TimeZone tz) {
        return _withBase(_base.with(tz));
    }

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
     * view to use.
     */
    public abstract T withView(Class<?> view);

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
        int PROBE_START_LINE_567 = 567;
		com.fasterxml.jackson.databind.jsontype.SubtypeResolver f__subtype_resolver_1442_line_567 = _subtypeResolver;
		int PROBE_END_LINE_567 = 567;
		return f__subtype_resolver_1442_line_567;
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
        int PROBE_START_LINE_587 = 587;
		Class<?> f__view_1445_line_587 = _view;
		int PROBE_END_LINE_587 = 587;
		return f__view_1445_line_587;
    }

    @Override
    public final ContextAttributes getAttributes() {
        int PROBE_START_LINE_592 = 592;
		com.fasterxml.jackson.databind.cfg.ContextAttributes f__attributes_1446_line_592 = _attributes;
		int PROBE_END_LINE_592 = 592;
		return f__attributes_1446_line_592;
    }

    /*
    /**********************************************************
    /* Configuration access; default/overrides
    /**********************************************************
     */

    @Override
    public final ConfigOverride getConfigOverride(Class<?> type) {
        int PROBE_START_LINE_603 = 603;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1447_line_603 = _configOverrides;
		Class<?> p_type_1495_line_603 = type;
		ConfigOverride mapper_config_base_1_expr32_line_603 = f__config_overrides_1447_line_603
				.findOverride(p_type_1495_line_603);
		int PROBE_END_LINE_603 = 603;
		ConfigOverride override = mapper_config_base_1_expr32_line_603;
        int PROBE_START_LINE_604 = 604;
		com.fasterxml.jackson.databind.cfg.ConfigOverride v_override_1496_line_604 = override;
		boolean mapper_config_base_1_expr35_line_604 = v_override_1496_line_604 == null;
		boolean mapper_config_base_1_expr34_line_604 = (mapper_config_base_1_expr35_line_604);
		com.fasterxml.jackson.databind.cfg.ConfigOverride f_empty_override_1497_line_604 = null;
		com.fasterxml.jackson.databind.cfg.ConfigOverride v_override_1496_line_604_v1 = null;
		if (mapper_config_base_1_expr34_line_604) {
			f_empty_override_1497_line_604 = EMPTY_OVERRIDE;
		} else {
			v_override_1496_line_604_v1 = override;
		}
		com.fasterxml.jackson.databind.cfg.ConfigOverride mapper_config_base_1_expr33_line_604 = mapper_config_base_1_expr34_line_604
				? f_empty_override_1497_line_604
				: v_override_1496_line_604_v1;
		int PROBE_END_LINE_604 = 604;
		return mapper_config_base_1_expr33_line_604;
    }

    @Override
    public final ConfigOverride findConfigOverride(Class<?> type) {
        return _configOverrides.findOverride(type);
    }

    @Override
    public final JsonInclude.Value getDefaultPropertyInclusion() {
        return _configOverrides.getDefaultInclusion();
    }

    @Override
    public final JsonInclude.Value getDefaultPropertyInclusion(Class<?> baseType) {
        JsonInclude.Value v = getConfigOverride(baseType).getInclude();
        JsonInclude.Value def = getDefaultPropertyInclusion();
        if (def == null) {
            return v;
        }
        return def.withOverrides(v);
    }

    @Override
    public final JsonInclude.Value getDefaultInclusion(Class<?> baseType,
            Class<?> propertyType) {
        JsonInclude.Value v = getConfigOverride(propertyType).getIncludeAsProperty();
        JsonInclude.Value def = getDefaultPropertyInclusion(baseType);
        if (def == null) {
            return v;
        }
        return def.withOverrides(v);
    }

    @Override
    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> type) {
        int PROBE_START_LINE_640 = 640;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1447_line_640 = _configOverrides;
		Class<?> p_type_1502_line_640 = type;
		ConfigOverride mapper_config_base_1_expr36_line_640 = f__config_overrides_1447_line_640
				.findOverride(p_type_1502_line_640);
		int PROBE_END_LINE_640 = 640;
		ConfigOverride overrides = mapper_config_base_1_expr36_line_640;
        int PROBE_START_LINE_641 = 646;
		com.fasterxml.jackson.databind.cfg.ConfigOverride v_overrides_1503_line_641 = overrides;
		boolean mapper_config_base_1_expr37_line_641 = v_overrides_1503_line_641 != null;
		int PROBE_END_LINE_641 = 646;
		if (mapper_config_base_1_expr37_line_641) {
            JsonFormat.Value v = overrides.getFormat();
            if (v != null) {
                return v;
            }
        }
        int PROBE_START_LINE_647 = 647;
		com.fasterxml.jackson.annotation.JsonFormat.Value f_empty_format_1504_line_647 = EMPTY_FORMAT;
		int PROBE_END_LINE_647 = 647;
		return f_empty_format_1504_line_647;
    }

    @Override
    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> type) {
        int PROBE_START_LINE_652 = 652;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1447_line_652 = _configOverrides;
		Class<?> p_type_1505_line_652 = type;
		ConfigOverride mapper_config_base_1_expr38_line_652 = f__config_overrides_1447_line_652
				.findOverride(p_type_1505_line_652);
		int PROBE_END_LINE_652 = 652;
		ConfigOverride overrides = mapper_config_base_1_expr38_line_652;
        int PROBE_START_LINE_653 = 658;
		com.fasterxml.jackson.databind.cfg.ConfigOverride v_overrides_1506_line_653 = overrides;
		boolean mapper_config_base_1_expr39_line_653 = v_overrides_1506_line_653 != null;
		int PROBE_END_LINE_653 = 658;
		if (mapper_config_base_1_expr39_line_653) {
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
        int PROBE_START_LINE_668 = 668;
		AnnotationIntrospector mapper_config_base_1_expr40_line_668 = getAnnotationIntrospector();
		int PROBE_END_LINE_668 = 668;
		AnnotationIntrospector intr = mapper_config_base_1_expr40_line_668;
        int PROBE_START_LINE_669 = 670;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1509_line_669 = intr;
		boolean mapper_config_base_1_expr44_line_669 = v_intr_1509_line_669 == null;
		boolean mapper_config_base_1_expr42_line_669 = (mapper_config_base_1_expr44_line_669);
		JsonIgnoreProperties.Value mapper_config_base_1_expr41_line_669 = mapper_config_base_1_expr42_line_669
				? null
				: intr.findPropertyIgnorals(actualClass);
		int PROBE_END_LINE_669 = 670;
		JsonIgnoreProperties.Value base = mapper_config_base_1_expr41_line_669;
        int PROBE_START_LINE_671 = 671;
		Class<?> p_base_type_1507_line_671 = baseType;
		JsonIgnoreProperties.Value mapper_config_base_1_expr45_line_671 = getDefaultPropertyIgnorals(
				p_base_type_1507_line_671);
		int PROBE_END_LINE_671 = 671;
		JsonIgnoreProperties.Value overrides = mapper_config_base_1_expr45_line_671;
        int PROBE_START_LINE_672 = 672;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_base_1510_line_672 = base;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_overrides_1511_line_672 = overrides;
		com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value mapper_config_base_1_expr46_line_672 = JsonIgnoreProperties.Value
				.merge(v_base_1510_line_672, v_overrides_1511_line_672);
		int PROBE_END_LINE_672 = 672;
		return mapper_config_base_1_expr46_line_672;
    }

    @Override
    public final VisibilityChecker<?> getDefaultVisibilityChecker()
    {
        int PROBE_START_LINE_678 = 678;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1447_line_678 = _configOverrides;
		VisibilityChecker<?> mapper_config_base_1_expr47_line_678 = f__config_overrides_1447_line_678
				.getDefaultVisibility();
		int PROBE_END_LINE_678 = 678;
		VisibilityChecker<?> vchecker = mapper_config_base_1_expr47_line_678;
        int PROBE_START_LINE_681 = 697;
		int f__mapper_features_1513_line_681 = _mapperFeatures;
		int f_auto_detect_mask_1514_line_681 = AUTO_DETECT_MASK;
		int mapper_config_base_1_expr50_line_681 = f__mapper_features_1513_line_681 & f_auto_detect_mask_1514_line_681;
		int mapper_config_base_1_expr49_line_681 = (mapper_config_base_1_expr50_line_681);
		int f_auto_detect_mask_1514_line_681_v1 = AUTO_DETECT_MASK;
		boolean mapper_config_base_1_expr48_line_681 = mapper_config_base_1_expr49_line_681 != f_auto_detect_mask_1514_line_681_v1;
		int PROBE_END_LINE_681 = 697;
		// then global overrides (disabling)
        // 05-Mar-2018, tatu: As per [databind#1947], need to see if any disabled
        if (mapper_config_base_1_expr48_line_681) {
            if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS)) {
                vchecker = vchecker.withFieldVisibility(Visibility.NONE);
            }
            if (!isEnabled(MapperFeature.AUTO_DETECT_GETTERS)) {
                vchecker = vchecker.withGetterVisibility(Visibility.NONE);
            }
            if (!isEnabled(MapperFeature.AUTO_DETECT_IS_GETTERS)) {
                vchecker = vchecker.withIsGetterVisibility(Visibility.NONE);
            }
            if (!isEnabled(MapperFeature.AUTO_DETECT_SETTERS)) {
                vchecker = vchecker.withSetterVisibility(Visibility.NONE);
            }
            if (!isEnabled(MapperFeature.AUTO_DETECT_CREATORS)) {
                vchecker = vchecker.withCreatorVisibility(Visibility.NONE);
            }
        }
        int PROBE_START_LINE_698 = 698;
		VisibilityChecker<?> v_vchecker_1512_line_698 = vchecker;
		int PROBE_END_LINE_698 = 698;
		return v_vchecker_1512_line_698;
    }

    @Override // since 2.9
    public final VisibilityChecker<?> getDefaultVisibilityChecker(Class<?> baseType,
            AnnotatedClass actualClass) {
        int PROBE_START_LINE_704 = 704;
				VisibilityChecker<?> mapper_config_base_1_expr51_line_704 = getDefaultVisibilityChecker();
				int PROBE_END_LINE_704 = 704;
		VisibilityChecker<?> vc = mapper_config_base_1_expr51_line_704;
        int PROBE_START_LINE_705 = 705;
		AnnotationIntrospector mapper_config_base_1_expr52_line_705 = getAnnotationIntrospector();
		int PROBE_END_LINE_705 = 705;
		AnnotationIntrospector intr = mapper_config_base_1_expr52_line_705;
        int PROBE_START_LINE_706 = 708;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1518_line_706 = intr;
		boolean mapper_config_base_1_expr53_line_706 = v_intr_1518_line_706 != null;
		int PROBE_END_LINE_706 = 708;
		if (mapper_config_base_1_expr53_line_706) {
            int PROBE_START_LINE_707 = 707;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1518_line_707 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass p_actual_class_1516_line_707 = actualClass;
			VisibilityChecker<?> v_vc_1517_line_707 = vc;
			VisibilityChecker<?> mapper_config_base_1_expr55_line_707 = v_intr_1518_line_707
					.findAutoDetectVisibility(p_actual_class_1516_line_707, v_vc_1517_line_707);
			int PROBE_END_LINE_707 = 707;
			vc = mapper_config_base_1_expr55_line_707;
        }
        int PROBE_START_LINE_709 = 709;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1447_line_709 = _configOverrides;
		Class<?> p_base_type_1515_line_709 = baseType;
		ConfigOverride mapper_config_base_1_expr56_line_709 = f__config_overrides_1447_line_709
				.findOverride(p_base_type_1515_line_709);
		int PROBE_END_LINE_709 = 709;
		ConfigOverride overrides = mapper_config_base_1_expr56_line_709;
        int PROBE_START_LINE_710 = 712;
		com.fasterxml.jackson.databind.cfg.ConfigOverride v_overrides_1519_line_710 = overrides;
		boolean mapper_config_base_1_expr57_line_710 = v_overrides_1519_line_710 != null;
		int PROBE_END_LINE_710 = 712;
		if (mapper_config_base_1_expr57_line_710) {
            vc = vc.withOverrides(overrides.getVisibility()); // ok to pass null
        }
        int PROBE_START_LINE_713 = 713;
		VisibilityChecker<?> v_vc_1517_line_713 = vc;
		int PROBE_END_LINE_713 = 713;
		return v_vc_1517_line_713;
    }

    @Override
    public final JsonSetter.Value getDefaultSetterInfo() {
        int PROBE_START_LINE_718 = 718;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1447_line_718 = _configOverrides;
		com.fasterxml.jackson.annotation.JsonSetter.Value mapper_config_base_1_expr58_line_718 = f__config_overrides_1447_line_718
				.getDefaultSetterInfo();
		int PROBE_END_LINE_718 = 718;
		return mapper_config_base_1_expr58_line_718;
    }

    @Override
    public Boolean getDefaultMergeable() {
        int PROBE_START_LINE_723 = 723;
		com.fasterxml.jackson.databind.cfg.ConfigOverrides f__config_overrides_1447_line_723 = _configOverrides;
		Boolean mapper_config_base_1_expr59_line_723 = f__config_overrides_1447_line_723.getDefaultMergeable();
		int PROBE_END_LINE_723 = 723;
		return mapper_config_base_1_expr59_line_723;
    }

    @Override
    public Boolean getDefaultMergeable(Class<?> baseType) {
        Boolean b;
        ConfigOverride cfg = _configOverrides.findOverride(baseType);
        if (cfg != null) {
            b = cfg.getMergeable();
            if (b != null) {
                return b;
            }
        }
        return _configOverrides.getDefaultMergeable();
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
        int PROBE_START_LINE_773 = 773;
		com.fasterxml.jackson.databind.introspect.SimpleMixInResolver f__mix_ins_1441_line_773 = _mixIns;
		Class<?> p_cls_1523_line_773 = cls;
		Class<?> mapper_config_base_1_expr60_line_773 = f__mix_ins_1441_line_773.findMixInClassFor(p_cls_1523_line_773);
		int PROBE_END_LINE_773 = 773;
		return mapper_config_base_1_expr60_line_773;
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
