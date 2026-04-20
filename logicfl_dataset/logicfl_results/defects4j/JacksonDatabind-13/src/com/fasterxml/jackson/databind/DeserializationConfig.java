package com.fasterxml.jackson.databind;

import java.text.DateFormat;
import java.util.*;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.LinkedNode;

/**
 * Object that contains baseline configuration for deserialization
 * process. An instance is owned by {@link ObjectMapper}, which
 * passes an immutable instance to be used for deserialization process.
 *<p>
 * Note that instances are considered immutable and as such no copies
 * should need to be created for sharing; all copying is done with
 * "fluent factory" methods.
 * Note also that unlike with Jackson 1, these instances can not be
 * assigned to {@link ObjectMapper}; in fact, application code should
 * rarely interact directly with these instances.
 */
public final class DeserializationConfig
    extends MapperConfigBase<DeserializationFeature, DeserializationConfig>
    implements java.io.Serializable // since 2.1
{
    // since 2.5
    private static final long serialVersionUID = 1;

    /**
     * Set of {@link DeserializationFeature}s enabled.
     */
    protected final int _deserFeatures;

    /**
     * Linked list that contains all registered problem handlers.
     * Implementation as front-added linked list allows for sharing
     * of the list (tail) without copying the list.
     */
    protected final LinkedNode<DeserializationProblemHandler> _problemHandlers;
    
    /**
     * Factory used for constructing {@link com.fasterxml.jackson.databind.JsonNode} instances.
     */
    protected final JsonNodeFactory _nodeFactory;

    /**
     * States of {@link com.fasterxml.jackson.core.JsonParser.Feature}s to enable/disable.
     */
    protected final int _parserFeatures;

    /**
     * Bitflag of {@link com.fasterxml.jackson.core.JsonParser.Feature}s to enable/disable
     */
    protected final int _parserFeaturesToChange;

    /*
    /**********************************************************
    /* Life-cycle, constructors
    /**********************************************************
     */

    /**
     * Constructor used by ObjectMapper to create default configuration object instance.
     */
    public DeserializationConfig(BaseSettings base,
            SubtypeResolver str, Map<ClassKey,Class<?>> mixins)
    {
        super(base, str, mixins);
        int PROBE_START_LINE_86 = 86;
		int deserialization_config_1_expr3_line_86 = collectFeatureDefaults(DeserializationFeature.class);
		int PROBE_END_LINE_86 = 86;
		_deserFeatures = deserialization_config_1_expr3_line_86;
        int PROBE_START_LINE_87 = 87;
		com.fasterxml.jackson.databind.node.JsonNodeFactory q_instance_1_line_87 = JsonNodeFactory.instance;
		int PROBE_END_LINE_87 = 87;
		_nodeFactory = q_instance_1_line_87;
        _problemHandlers = null;
        _parserFeatures = 0;
        _parserFeaturesToChange = 0;
    }

    private DeserializationConfig(DeserializationConfig src,
            int mapperFeatures, int deserFeatures,
            int parserFeatures, int parserFeatureMask)
    {
        super(src, mapperFeatures);
        _deserFeatures = deserFeatures;
        _nodeFactory = src._nodeFactory;
        _problemHandlers = src._problemHandlers;
        _parserFeatures = parserFeatures;
        _parserFeaturesToChange = parserFeatureMask;
    }
    
    /**
     * Copy constructor used to create a non-shared instance with given mix-in
     * annotation definitions and subtype resolver.
     */
    private DeserializationConfig(DeserializationConfig src, SubtypeResolver str)
    {
        super(src, str);
        _deserFeatures = src._deserFeatures;
        _nodeFactory = src._nodeFactory;
        _problemHandlers = src._problemHandlers;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
    }
    
    private DeserializationConfig(DeserializationConfig src, BaseSettings base)
    {
        super(src, base);
        _deserFeatures = src._deserFeatures;
        _nodeFactory = src._nodeFactory;
        _problemHandlers = src._problemHandlers;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
    }
    
    private DeserializationConfig(DeserializationConfig src, JsonNodeFactory f)
    {
        super(src);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = f;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig src,
            LinkedNode<DeserializationProblemHandler> problemHandlers)
    {
        super(src);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig src, String rootName)
    {
        super(src, rootName);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig src, Class<?> view)
    {
        super(src, view);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
    }

    /**
     * @since 2.1
     */
    protected DeserializationConfig(DeserializationConfig src, Map<ClassKey,Class<?>> mixins)
    {
        super(src, mixins);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
    }

    /**
     * @since 2.3
     */
    protected DeserializationConfig(DeserializationConfig src, ContextAttributes attrs)
    {
        super(src, attrs);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
    }
    
    // for unit tests only:
    protected BaseSettings getBaseSettings() { return _base; }
    
    /*
    /**********************************************************
    /* Life-cycle, factory methods from MapperConfig
    /**********************************************************
     */
    
    @Override
    public DeserializationConfig with(MapperFeature... features)
    {
        int newMapperFlags = _mapperFeatures;
        for (MapperFeature f : features) {
            newMapperFlags |= f.getMask();
        }
        return (newMapperFlags == _mapperFeatures) ? this :
            new DeserializationConfig(this, newMapperFlags, _deserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
                    
    }

    @Override
    public DeserializationConfig without(MapperFeature... features)
    {
        int newMapperFlags = _mapperFeatures;
        for (MapperFeature f : features) {
             newMapperFlags &= ~f.getMask();
        }
        return (newMapperFlags == _mapperFeatures) ? this :
            new DeserializationConfig(this, newMapperFlags, _deserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
    }

    @Override
    public DeserializationConfig with(MapperFeature feature, boolean state)
    {
        int newMapperFlags;
        if (state) {
            newMapperFlags = _mapperFeatures | feature.getMask();
        } else {
            newMapperFlags = _mapperFeatures & ~feature.getMask();
        }
        return (newMapperFlags == _mapperFeatures) ? this :
            new DeserializationConfig(this, newMapperFlags, _deserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
    }

    @Override
    public DeserializationConfig with(ClassIntrospector ci) {
        return _withBase(_base.withClassIntrospector(ci));
    }

    @Override
    public DeserializationConfig with(AnnotationIntrospector ai) {
        return _withBase(_base.withAnnotationIntrospector(ai));
    }

    @Override
    public DeserializationConfig with(VisibilityChecker<?> vc) {
        return _withBase(_base.withVisibilityChecker(vc));
    }

    @Override
    public DeserializationConfig withVisibility(PropertyAccessor forMethod, JsonAutoDetect.Visibility visibility) {
        return _withBase( _base.withVisibility(forMethod, visibility));
    }
    
    @Override
    public DeserializationConfig with(TypeResolverBuilder<?> trb) {
        return _withBase(_base.withTypeResolverBuilder(trb));
    }

    @Override
    public DeserializationConfig with(SubtypeResolver str) {
        return (_subtypeResolver == str) ? this : new DeserializationConfig(this, str);
    }
    
    @Override
    public DeserializationConfig with(PropertyNamingStrategy pns) {
        return _withBase(_base.withPropertyNamingStrategy(pns));
    }

    @Override
    public DeserializationConfig withRootName(String rootName) {
        if (rootName == null) {
            if (_rootName == null) {
                return this;
            }
        } else if (rootName.equals(_rootName)) {
            return this;
        }
        return new DeserializationConfig(this, rootName);
    }
    
    @Override
    public DeserializationConfig with(TypeFactory tf) {
        return _withBase( _base.withTypeFactory(tf));
    }

    @Override
    public DeserializationConfig with(DateFormat df) {
        return _withBase(_base.withDateFormat(df));
    }
    
    @Override
    public DeserializationConfig with(HandlerInstantiator hi) {
        return _withBase(_base.withHandlerInstantiator(hi));
    }

    @Override
    public DeserializationConfig withInsertedAnnotationIntrospector(AnnotationIntrospector ai) {
        return _withBase(_base.withInsertedAnnotationIntrospector(ai));
    }

    @Override
    public DeserializationConfig withAppendedAnnotationIntrospector(AnnotationIntrospector ai) {
        return _withBase(_base.withAppendedAnnotationIntrospector(ai));
    }

    @Override
    public DeserializationConfig withView(Class<?> view) {
        return (_view == view) ? this : new DeserializationConfig(this, view);
    }

    @Override
    public DeserializationConfig with(Locale l) {
        return _withBase(_base.with(l));
    }

    @Override
    public DeserializationConfig with(TimeZone tz) {
        return _withBase(_base.with(tz));
    }

    @Override
    public DeserializationConfig with(Base64Variant base64) {
        return _withBase(_base.with(base64));
    }

    @Override
    public DeserializationConfig with(ContextAttributes attrs) {
        return (attrs == _attributes) ? this : new DeserializationConfig(this, attrs);
    }
    
    private final DeserializationConfig _withBase(BaseSettings newBase) {
        return (_base == newBase) ? this : new DeserializationConfig(this, newBase);
    }

    /*
    /**********************************************************
    /* Life-cycle, DeserializationFeature-based factory methods
    /**********************************************************
     */

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     */
    public DeserializationConfig with(DeserializationFeature feature)
    {
        int newDeserFeatures = (_deserFeatures | feature.getMask());
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     */
    public DeserializationConfig with(DeserializationFeature first,
            DeserializationFeature... features)
    {
        int newDeserFeatures = _deserFeatures | first.getMask();
        for (DeserializationFeature f : features) {
            newDeserFeatures |= f.getMask();
        }
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     */
    public DeserializationConfig withFeatures(DeserializationFeature... features)
    {
        int newDeserFeatures = _deserFeatures;
        for (DeserializationFeature f : features) {
            newDeserFeatures |= f.getMask();
        }
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
    }
    
    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified feature disabled.
     */
    public DeserializationConfig without(DeserializationFeature feature)
    {
        int newDeserFeatures = _deserFeatures & ~feature.getMask();
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features disabled.
     */
    public DeserializationConfig without(DeserializationFeature first,
            DeserializationFeature... features)
    {
        int newDeserFeatures = _deserFeatures & ~first.getMask();
        for (DeserializationFeature f : features) {
            newDeserFeatures &= ~f.getMask();
        }
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features disabled.
     */
    public DeserializationConfig withoutFeatures(DeserializationFeature... features)
    {
        int newDeserFeatures = _deserFeatures;
        for (DeserializationFeature f : features) {
            newDeserFeatures &= ~f.getMask();
        }
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange);
    }

    /*
    /**********************************************************
    /* Life-cycle, JsonParser.Feature-based factory methods
    /**********************************************************
     */

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     *
     * @since 2.5
     */
    public DeserializationConfig with(JsonParser.Feature feature)
    {
        int newSet = _parserFeatures | feature.getMask();
        int newMask = _parserFeaturesToChange | feature.getMask();
        return ((_parserFeatures == newSet) && (_parserFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    newSet, newMask);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     *
     * @since 2.5
     */
    public DeserializationConfig withFeatures(JsonParser.Feature... features)
    {
        int newSet = _parserFeatures;
        int newMask = _parserFeaturesToChange;
        for (JsonParser.Feature f : features) {
            int mask = f.getMask();
            newSet |= mask;
            newMask |= mask;
        }
        return ((_parserFeatures == newSet) && (_parserFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    newSet, newMask);
    }
    
    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified feature disabled.
     *
     * @since 2.5
     */
    public DeserializationConfig without(JsonParser.Feature feature)
    {
        int newSet = _parserFeatures & ~feature.getMask();
        int newMask = _parserFeaturesToChange | feature.getMask();
        return ((_parserFeatures == newSet) && (_parserFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    newSet, newMask);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features disabled.
     *
     * @since 2.5
     */
    public DeserializationConfig withoutFeatures(JsonParser.Feature... features)
    {
        int newSet = _parserFeatures;
        int newMask = _parserFeaturesToChange;
        for (JsonParser.Feature f : features) {
            int mask = f.getMask();
            newSet &= ~mask;
            newMask |= mask;
        }
        return ((_parserFeatures == newSet) && (_parserFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    newSet, newMask);
    }    

    /*
    /**********************************************************
    /* Life-cycle, deserialization-specific factory methods
    /**********************************************************
     */

    /**
     * Fluent factory method that will construct a new instance with
     * specified {@link JsonNodeFactory}
     */
    public DeserializationConfig with(JsonNodeFactory f) {
        if (_nodeFactory == f) {
            return this;
        }
        return new DeserializationConfig(this, f);
    }

    /**
     * Method that can be used to add a handler that can (try to)
     * resolve non-fatal deserialization problems.
     */
    public DeserializationConfig withHandler(DeserializationProblemHandler h)
    {
        // Sanity check: let's prevent adding same handler multiple times
        if (LinkedNode.contains(_problemHandlers, h)) {
            return this;
        }
        return new DeserializationConfig(this,
                new LinkedNode<DeserializationProblemHandler>(h, _problemHandlers));
    }

    /**
     * Method for removing all configured problem handlers; usually done to replace
     * existing handler(s) with different one(s)
     */
    public DeserializationConfig withNoProblemHandlers() {
        if (_problemHandlers == null) {
            return this;
        }
        return new DeserializationConfig(this,
                (LinkedNode<DeserializationProblemHandler>) null);
    }

    /*
    /**********************************************************
    /* JsonParser initialization
    /**********************************************************
     */

    /**
     * Method called by {@link ObjectMapper} and {@link ObjectReader}
     * to modify those {@link com.fasterxml.jackson.core.JsonParser.Feature} settings
     * that have been configured via this config instance.
     * 
     * @since 2.5
     */
    public void initialize(JsonParser p) {
        int PROBE_START_LINE_570 = 576;
		int f__parser_features_to_change_157_line_570 = _parserFeaturesToChange;
		boolean deserialization_config_1_expr9_line_570 = f__parser_features_to_change_157_line_570 != 0;
		int PROBE_END_LINE_570 = 576;
		if (deserialization_config_1_expr9_line_570) {
            int orig = p.getFeatureMask();
            int newFlags = (orig & ~_parserFeaturesToChange) | _parserFeatures;
            if (orig != newFlags) {
                p.setFeatureMask(newFlags);
            }
        }
    }
    
    /*
    /**********************************************************
    /* MapperConfig implementation
    /**********************************************************
     */
    
    /**
     * Method for getting {@link AnnotationIntrospector} configured
     * to introspect annotation values used for configuration.
     */
    @Override
    public AnnotationIntrospector getAnnotationIntrospector()
    {
        int PROBE_START_LINE_595 = 597;
		com.fasterxml.jackson.databind.MapperFeature q_use_annotations_2_line_595 = MapperFeature.USE_ANNOTATIONS;
		boolean deserialization_config_1_expr10_line_595 = isEnabled(q_use_annotations_2_line_595);
		int PROBE_END_LINE_595 = 597;
		/* 29-Jul-2009, tatu: it's now possible to disable use of
         *   annotations; can be done using "no-op" introspector
         */
        if (deserialization_config_1_expr10_line_595) {
            int PROBE_START_LINE_596 = 596;
			com.fasterxml.jackson.databind.AnnotationIntrospector deserialization_config_1_expr11_line_596 = super.getAnnotationIntrospector();
			int PROBE_END_LINE_596 = 596;
			return deserialization_config_1_expr11_line_596;
        }
        return NopAnnotationIntrospector.instance;
    }

    @Override
    public boolean useRootWrapping()
    {
        int PROBE_START_LINE_604 = 606;
		String f__root_name_218_line_604 = _rootName;
		boolean deserialization_config_1_expr12_line_604 = f__root_name_218_line_604 != null;
		int PROBE_END_LINE_604 = 606;
		if (deserialization_config_1_expr12_line_604) { // empty String disables wrapping; non-empty enables
            return (_rootName.length() > 0);
        }
        int PROBE_START_LINE_607 = 607;
		com.fasterxml.jackson.databind.DeserializationFeature q_unwrap_root_value_3_line_607 = DeserializationFeature.UNWRAP_ROOT_VALUE;
		boolean deserialization_config_1_expr13_line_607 = isEnabled(q_unwrap_root_value_3_line_607);
		int PROBE_END_LINE_607 = 607;
		return deserialization_config_1_expr13_line_607;
    }
    
    /**
     * Accessor for getting bean description that only contains class
     * annotations: useful if no getter/setter/creator information is needed.
     */
    @Override
    public BeanDescription introspectClassAnnotations(JavaType type) {
        int PROBE_START_LINE_616 = 616;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector deserialization_config_1_expr17_line_616 = getClassIntrospector();
		com.fasterxml.jackson.databind.JavaType p_type_219_line_616 = type;
		com.fasterxml.jackson.databind.BeanDescription deserialization_config_1_expr14_line_616 = deserialization_config_1_expr17_line_616
				.forClassAnnotations(this, p_type_219_line_616, this);
		int PROBE_END_LINE_616 = 616;
		return deserialization_config_1_expr14_line_616;
    }

    /**
     * Accessor for getting bean description that only contains immediate class
     * annotations: ones from the class, and its direct mix-in, if any, but
     * not from super types.
     */
    @Override
    public BeanDescription introspectDirectClassAnnotations(JavaType type) {
        return getClassIntrospector().forDirectClassAnnotations(this, type, this);
    }

    @Override
    public VisibilityChecker<?> getDefaultVisibilityChecker()
    {
        int PROBE_START_LINE_632 = 632;
		VisibilityChecker<?> deserialization_config_1_expr18_line_632 = super.getDefaultVisibilityChecker();
		int PROBE_END_LINE_632 = 632;
		VisibilityChecker<?> vchecker = deserialization_config_1_expr18_line_632;
        int PROBE_START_LINE_633 = 635;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_setters_4_line_633 = MapperFeature.AUTO_DETECT_SETTERS;
		boolean deserialization_config_1_expr20_line_633 = isEnabled(q_auto_detect_setters_4_line_633);
		boolean deserialization_config_1_expr19_line_633 = !deserialization_config_1_expr20_line_633;
		int PROBE_END_LINE_633 = 635;
		if (deserialization_config_1_expr19_line_633) {
            vchecker = vchecker.withSetterVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_636 = 638;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_creators_5_line_636 = MapperFeature.AUTO_DETECT_CREATORS;
		boolean deserialization_config_1_expr22_line_636 = isEnabled(q_auto_detect_creators_5_line_636);
		boolean deserialization_config_1_expr21_line_636 = !deserialization_config_1_expr22_line_636;
		int PROBE_END_LINE_636 = 638;
		if (deserialization_config_1_expr21_line_636) {
            vchecker = vchecker.withCreatorVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_639 = 641;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_fields_6_line_639 = MapperFeature.AUTO_DETECT_FIELDS;
		boolean deserialization_config_1_expr24_line_639 = isEnabled(q_auto_detect_fields_6_line_639);
		boolean deserialization_config_1_expr23_line_639 = !deserialization_config_1_expr24_line_639;
		int PROBE_END_LINE_639 = 641;
		if (deserialization_config_1_expr23_line_639) {
            vchecker = vchecker.withFieldVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_642 = 642;
		VisibilityChecker<?> v_vchecker_221_line_642 = vchecker;
		int PROBE_END_LINE_642 = 642;
		return v_vchecker_221_line_642;
    }

    public final boolean isEnabled(DeserializationFeature f) {
        int PROBE_START_LINE_646 = 646;
		int f__deser_features_153_line_646 = _deserFeatures;
		com.fasterxml.jackson.databind.DeserializationFeature p_f_222_line_646 = f;
		int deserialization_config_1_expr28_line_646 = p_f_222_line_646.getMask();
		int deserialization_config_1_expr27_line_646 = f__deser_features_153_line_646
				& deserialization_config_1_expr28_line_646;
		int deserialization_config_1_expr26_line_646 = (deserialization_config_1_expr27_line_646);
		boolean deserialization_config_1_expr25_line_646 = deserialization_config_1_expr26_line_646 != 0;
		int PROBE_END_LINE_646 = 646;
		return deserialization_config_1_expr25_line_646;
    }

    public final boolean isEnabled(JsonParser.Feature f, JsonFactory factory) {
        int mask = f.getMask();
        if ((_parserFeaturesToChange & mask) != 0) {
            return (_parserFeatures & f.getMask()) != 0;
        }
        return factory.isEnabled(f);
    }

    /**
     * "Bulk" access method for checking that all features specified by
     * mask are enabled.
     * 
     * @since 2.3
     */
    public final boolean hasDeserializationFeatures(int featureMask) {
        return (_deserFeatures & featureMask) == featureMask;
    }

    public final int getDeserializationFeatures() {
        int PROBE_START_LINE_668 = 668;
		int f__deser_features_153_line_668 = _deserFeatures;
		int PROBE_END_LINE_668 = 668;
		return f__deser_features_153_line_668;
    }

    /*
    /**********************************************************
    /* Other configuration
    /**********************************************************
     */

    /**
     * Method for getting head of the problem handler chain. May be null,
     * if no handlers have been added.
     */
    public LinkedNode<DeserializationProblemHandler> getProblemHandlers() {
        return _problemHandlers;
    }

    public final JsonNodeFactory getNodeFactory() {
        return _nodeFactory;
    }

    /*
    /**********************************************************
    /* Introspection methods
    /**********************************************************
     */

    /**
     * Method that will introspect full bean properties for the purpose
     * of building a bean deserializer
     *
     * @param type Type of class to be introspected
     */
    @SuppressWarnings("unchecked")
    public <T extends BeanDescription> T introspect(JavaType type) {
        int PROBE_START_LINE_703 = 703;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector deserialization_config_1_expr33_line_703 = getClassIntrospector();
		com.fasterxml.jackson.databind.JavaType p_type_226_line_703 = type;
		com.fasterxml.jackson.databind.BeanDescription deserialization_config_1_expr30_line_703 = deserialization_config_1_expr33_line_703
				.forDeserialization(this, p_type_226_line_703, this);
		int PROBE_END_LINE_703 = 703;
		return (T) deserialization_config_1_expr30_line_703;
    }

    /**
     * Method that will introspect subset of bean properties needed to
     * construct bean instance.
     */
    @SuppressWarnings("unchecked")
    public <T extends BeanDescription> T introspectForCreation(JavaType type) {
        return (T) getClassIntrospector().forCreation(this, type, this);
    }

    /**
     * @since 2.0
     */
    @SuppressWarnings("unchecked")
    public <T extends BeanDescription> T introspectForBuilder(JavaType type) {
        return (T) getClassIntrospector().forDeserializationWithBuilder(this, type, this);
    }

    /*
    /**********************************************************
    /* Support for polymorphic type handling
    /**********************************************************
     */
    
    /**
     * Helper method that is needed to properly handle polymorphic referenced
     * types, such as types referenced by {@link java.util.concurrent.atomic.AtomicReference},
     * or various "optional" types.
     * 
     * @since 2.4
     */
    public TypeDeserializer findTypeDeserializer(JavaType baseType)
        throws JsonMappingException
    {
        BeanDescription bean = introspectClassAnnotations(baseType.getRawClass());
        AnnotatedClass ac = bean.getClassInfo();
        TypeResolverBuilder<?> b = getAnnotationIntrospector().findTypeResolver(this, ac, baseType);

        /* Ok: if there is no explicit type info handler, we may want to
         * use a default. If so, config object knows what to use.
         */
        Collection<NamedType> subtypes = null;
        if (b == null) {
            b = getDefaultTyper(baseType);
            if (b == null) {
                return null;
            }
        } else {
            subtypes = getSubtypeResolver().collectAndResolveSubtypes(ac, this, getAnnotationIntrospector());
        }
        /* 04-May-2014, tatu: When called from DeserializerFactory, additional code like
         *   this is invoked. But here we do not actually have access to mappings, so not
         *   quite sure what to do, if anything. May need to revisit if the underlying
         *   problem re-surfaces...
         */
        /*
        if ((b.getDefaultImpl() == null) && baseType.isAbstract()) {
            JavaType defaultType = mapAbstractType(config, baseType);
            if (defaultType != null && defaultType.getRawClass() != baseType.getRawClass()) {
                b = b.defaultImpl(defaultType.getRawClass());
            }
        }
        */
        return b.buildTypeDeserializer(this, baseType, subtypes);
    }
}
