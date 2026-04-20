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
 * rarely interact directly with these instance (unlike core Jackson code)
 */
public final class DeserializationConfig
    extends MapperConfigBase<DeserializationFeature, DeserializationConfig>
    implements java.io.Serializable // since 2.1
{
    // for 2.1.0
    private static final long serialVersionUID = -4227480407273773599L;

    /**
     * Set of features enabled; actual type (kind of features)
     * depends on sub-classes.
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
        int PROBE_START_LINE_77 = 77;
		int deserialization_config_1_expr3_line_77 = collectFeatureDefaults(DeserializationFeature.class);
		int PROBE_END_LINE_77 = 77;
		_deserFeatures = deserialization_config_1_expr3_line_77;
        int PROBE_START_LINE_78 = 78;
		com.fasterxml.jackson.databind.node.JsonNodeFactory q_instance_1_line_78 = JsonNodeFactory.instance;
		int PROBE_END_LINE_78 = 78;
		_nodeFactory = q_instance_1_line_78;
        _problemHandlers = null;
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
    }

    private DeserializationConfig(DeserializationConfig src,
            int mapperFeatures, int deserFeatures)
    {
        super(src, mapperFeatures);
        _deserFeatures = deserFeatures;
        _nodeFactory = src._nodeFactory;
        _problemHandlers = src._problemHandlers;
    }
    
    private DeserializationConfig(DeserializationConfig src, BaseSettings base)
    {
        super(src, base);
        _deserFeatures = src._deserFeatures;
        _nodeFactory = src._nodeFactory;
        _problemHandlers = src._problemHandlers;
    }
    
    private DeserializationConfig(DeserializationConfig src, JsonNodeFactory f)
    {
        super(src);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = f;
    }

    private DeserializationConfig(DeserializationConfig src,
            LinkedNode<DeserializationProblemHandler> problemHandlers)
    {
        super(src);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = problemHandlers;
        _nodeFactory = src._nodeFactory;
    }

    private DeserializationConfig(DeserializationConfig src, String rootName)
    {
        super(src, rootName);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
    }

    private DeserializationConfig(DeserializationConfig src, Class<?> view)
    {
        super(src, view);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
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
            new DeserializationConfig(this, newMapperFlags, _deserFeatures);
    }

    @Override
    public DeserializationConfig without(MapperFeature... features)
    {
        int newMapperFlags = _mapperFeatures;
        for (MapperFeature f : features) {
             newMapperFlags &= ~f.getMask();
        }
        return (newMapperFlags == _mapperFeatures) ? this :
            new DeserializationConfig(this, newMapperFlags, _deserFeatures);
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
            new DeserializationConfig(this, newMapperFlags, _deserFeatures);
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

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     */
    public DeserializationConfig with(DeserializationFeature feature)
    {
        int newDeserFeatures = (_deserFeatures | feature.getMask());
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures);
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
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures);
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
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures);
    }
    
    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified feature disabled.
     */
    public DeserializationConfig without(DeserializationFeature feature)
    {
        int newDeserFeatures = _deserFeatures & ~feature.getMask();
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures);
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
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures);
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
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures);
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
        int PROBE_START_LINE_450 = 452;
		com.fasterxml.jackson.databind.MapperFeature q_use_annotations_2_line_450 = MapperFeature.USE_ANNOTATIONS;
		boolean deserialization_config_1_expr7_line_450 = isEnabled(q_use_annotations_2_line_450);
		int PROBE_END_LINE_450 = 452;
		/* 29-Jul-2009, tatu: it's now possible to disable use of
         *   annotations; can be done using "no-op" introspector
         */
        if (deserialization_config_1_expr7_line_450) {
            int PROBE_START_LINE_451 = 451;
			com.fasterxml.jackson.databind.AnnotationIntrospector deserialization_config_1_expr8_line_451 = super.getAnnotationIntrospector();
			int PROBE_END_LINE_451 = 451;
			return deserialization_config_1_expr8_line_451;
        }
        return NopAnnotationIntrospector.instance;
    }

    @Override
    public boolean useRootWrapping()
    {
        int PROBE_START_LINE_459 = 461;
		String f__root_name_164_line_459 = _rootName;
		boolean deserialization_config_1_expr9_line_459 = f__root_name_164_line_459 != null;
		int PROBE_END_LINE_459 = 461;
		if (deserialization_config_1_expr9_line_459) { // empty String disables wrapping; non-empty enables
            return (_rootName.length() > 0);
        }
        int PROBE_START_LINE_462 = 462;
		com.fasterxml.jackson.databind.DeserializationFeature q_unwrap_root_value_3_line_462 = DeserializationFeature.UNWRAP_ROOT_VALUE;
		boolean deserialization_config_1_expr10_line_462 = isEnabled(q_unwrap_root_value_3_line_462);
		int PROBE_END_LINE_462 = 462;
		return deserialization_config_1_expr10_line_462;
    }
    
    /**
     * Accessor for getting bean description that only contains class
     * annotations: useful if no getter/setter/creator information is needed.
     */
    @Override
    public BeanDescription introspectClassAnnotations(JavaType type) {
        int PROBE_START_LINE_471 = 471;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector deserialization_config_1_expr14_line_471 = getClassIntrospector();
		com.fasterxml.jackson.databind.JavaType p_type_165_line_471 = type;
		com.fasterxml.jackson.databind.BeanDescription deserialization_config_1_expr11_line_471 = deserialization_config_1_expr14_line_471
				.forClassAnnotations(this, p_type_165_line_471, this);
		int PROBE_END_LINE_471 = 471;
		return deserialization_config_1_expr11_line_471;
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
        int PROBE_START_LINE_487 = 487;
		VisibilityChecker<?> deserialization_config_1_expr15_line_487 = super.getDefaultVisibilityChecker();
		int PROBE_END_LINE_487 = 487;
		VisibilityChecker<?> vchecker = deserialization_config_1_expr15_line_487;
        int PROBE_START_LINE_488 = 490;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_setters_4_line_488 = MapperFeature.AUTO_DETECT_SETTERS;
		boolean deserialization_config_1_expr17_line_488 = isEnabled(q_auto_detect_setters_4_line_488);
		boolean deserialization_config_1_expr16_line_488 = !deserialization_config_1_expr17_line_488;
		int PROBE_END_LINE_488 = 490;
		if (deserialization_config_1_expr16_line_488) {
            vchecker = vchecker.withSetterVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_491 = 493;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_creators_5_line_491 = MapperFeature.AUTO_DETECT_CREATORS;
		boolean deserialization_config_1_expr19_line_491 = isEnabled(q_auto_detect_creators_5_line_491);
		boolean deserialization_config_1_expr18_line_491 = !deserialization_config_1_expr19_line_491;
		int PROBE_END_LINE_491 = 493;
		if (deserialization_config_1_expr18_line_491) {
            vchecker = vchecker.withCreatorVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_494 = 496;
		com.fasterxml.jackson.databind.MapperFeature q_auto_detect_fields_6_line_494 = MapperFeature.AUTO_DETECT_FIELDS;
		boolean deserialization_config_1_expr21_line_494 = isEnabled(q_auto_detect_fields_6_line_494);
		boolean deserialization_config_1_expr20_line_494 = !deserialization_config_1_expr21_line_494;
		int PROBE_END_LINE_494 = 496;
		if (deserialization_config_1_expr20_line_494) {
            vchecker = vchecker.withFieldVisibility(Visibility.NONE);
        }
        int PROBE_START_LINE_497 = 497;
		VisibilityChecker<?> v_vchecker_167_line_497 = vchecker;
		int PROBE_END_LINE_497 = 497;
		return v_vchecker_167_line_497;
    }

    public final boolean isEnabled(DeserializationFeature f) {
        int PROBE_START_LINE_501 = 501;
		int f__deser_features_108_line_501 = _deserFeatures;
		com.fasterxml.jackson.databind.DeserializationFeature p_f_168_line_501 = f;
		int deserialization_config_1_expr25_line_501 = p_f_168_line_501.getMask();
		int deserialization_config_1_expr24_line_501 = f__deser_features_108_line_501
				& deserialization_config_1_expr25_line_501;
		int deserialization_config_1_expr23_line_501 = (deserialization_config_1_expr24_line_501);
		boolean deserialization_config_1_expr22_line_501 = deserialization_config_1_expr23_line_501 != 0;
		int PROBE_END_LINE_501 = 501;
		return deserialization_config_1_expr22_line_501;
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
        int PROBE_START_LINE_515 = 515;
		int f__deser_features_108_line_515 = _deserFeatures;
		int PROBE_END_LINE_515 = 515;
		return f__deser_features_108_line_515;
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
        int PROBE_START_LINE_550 = 550;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector deserialization_config_1_expr30_line_550 = getClassIntrospector();
		com.fasterxml.jackson.databind.JavaType p_type_170_line_550 = type;
		com.fasterxml.jackson.databind.BeanDescription deserialization_config_1_expr27_line_550 = deserialization_config_1_expr30_line_550
				.forDeserialization(this, p_type_170_line_550, this);
		int PROBE_END_LINE_550 = 550;
		return (T) deserialization_config_1_expr27_line_550;
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
