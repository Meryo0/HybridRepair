package com.fasterxml.jackson.databind.deser;

import java.util.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ValueInjector;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.MapperFeature;
import java.util.List;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
import java.util.Map;
import java.util.Collection;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;

/**
 * Builder class used for aggregating deserialization information about
 * a POJO, in order to build a {@link JsonDeserializer} for deserializing
 * instances.
 */
public class BeanDeserializerBuilder
{
    /*
    /**********************************************************
    /* Configuration
    /**********************************************************
     */

    final protected DeserializationConfig _config;

    /**
     * @since 2.9
     */
    final protected DeserializationContext _context;

    /*
    /**********************************************************
    /* General information about POJO
    /**********************************************************
     */

    /**
     * Introspected information about POJO for deserializer to handle
     */
    final protected BeanDescription _beanDesc;

    /*
    /**********************************************************
    /* Accumulated information about properties
    /**********************************************************
     */

    /**
     * Properties to deserialize collected so far.
     */
    final protected Map<String, SettableBeanProperty> _properties
        = new LinkedHashMap<String, SettableBeanProperty>();

    /**
     * Value injectors for deserialization
     */
    protected List<ValueInjector> _injectables;

    /**
     * Back-reference properties this bean contains (if any)
     */
    protected HashMap<String, SettableBeanProperty> _backRefProperties;

    /**
     * Set of names of properties that are recognized but are to be ignored for deserialization
     * purposes (meaning no exception is thrown, value is just skipped).
     */
    protected HashSet<String> _ignorableProps;

    /**
     * Object that will handle value instantiation for the bean type.
     */
    protected ValueInstantiator _valueInstantiator;

    /**
     * Handler for Object Id values, if Object Ids are enabled for the
     * bean type.
     */
    protected ObjectIdReader _objectIdReader;

    /**
     * Fallback setter used for handling any properties that are not
     * mapped to regular setters. If setter is not null, it will be
     * called once for each such property.
     */
    protected SettableAnyProperty _anySetter;

    /**
     * Flag that can be set to ignore and skip unknown properties.
     * If set, will not throw an exception for unknown properties.
     */
    protected boolean _ignoreAllUnknown;

    /**
     * When creating Builder-based deserializers, this indicates
     * method to call on builder to finalize value.
     */
    protected AnnotatedMethod _buildMethod;

    /**
     * In addition, Builder may have additional configuration
     */
    protected JsonPOJOBuilder.Value _builderConfig;

    /*
    /**********************************************************
    /* Life-cycle: construction
    /**********************************************************
     */

    public BeanDeserializerBuilder(BeanDescription beanDesc,
            DeserializationContext ctxt)
    { 
        int PROBE_START_LINE_117 = 117;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2071_line_117 = beanDesc;
		int PROBE_END_LINE_117 = 117;
		_beanDesc = p_bean_desc_2071_line_117;
        int PROBE_START_LINE_118 = 118;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2072_line_118 = ctxt;
		int PROBE_END_LINE_118 = 118;
		_context = p_ctxt_2072_line_118;
        int PROBE_START_LINE_119 = 119;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2072_line_119 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig bean_deserializer_builder_1_expr5_line_119 = p_ctxt_2072_line_119
				.getConfig();
		int PROBE_END_LINE_119 = 119;
		_config = bean_deserializer_builder_1_expr5_line_119;
    }

    /**
     * Copy constructor for sub-classes to use, when constructing
     * custom builder instances
     */
    protected BeanDeserializerBuilder(BeanDeserializerBuilder src)
    {
        _beanDesc = src._beanDesc;
        _context = src._context;
        _config = src._config;

        // let's make copy of properties
        _properties.putAll(src._properties);
        _injectables = _copy(src._injectables);
        _backRefProperties = _copy(src._backRefProperties);
        // Hmmh. Should we create defensive copies here? For now, not yet
        _ignorableProps = src._ignorableProps;        
        _valueInstantiator = src._valueInstantiator;
        _objectIdReader = src._objectIdReader;

        _anySetter = src._anySetter;
        _ignoreAllUnknown = src._ignoreAllUnknown;

        _buildMethod = src._buildMethod;
        _builderConfig = src._builderConfig;
    }

    private static HashMap<String, SettableBeanProperty> _copy(HashMap<String, SettableBeanProperty> src) {
        return (src == null) ? null
                : new HashMap<String, SettableBeanProperty>(src);
    }

    private static <T> List<T> _copy(List<T> src) {
        return (src == null) ? null : new ArrayList<T>(src);
    }

    /*
    /**********************************************************
    /* Life-cycle: state modification (adders, setters)
    /**********************************************************
     */

    /**
     * Method for adding a new property or replacing a property.
     */
    public void addOrReplaceProperty(SettableBeanProperty prop, boolean allowOverride) {
        _properties.put(prop.getName(), prop);
    }

    /**
     * Method to add a property setter. Will ensure that there is no
     * unexpected override; if one is found will throw a
     * {@link IllegalArgumentException}.
     */
    public void addProperty(SettableBeanProperty prop)
    {
        int PROBE_START_LINE_177 = 177;
		Map<String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> f__properties_2070_line_177 = _properties;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2081_line_177 = prop;
		String bean_deserializer_builder_1_expr7_line_177 = p_prop_2081_line_177.getName();
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2081_line_177_v1 = prop;
		SettableBeanProperty bean_deserializer_builder_1_expr6_line_177 = f__properties_2070_line_177
				.put(bean_deserializer_builder_1_expr7_line_177, p_prop_2081_line_177_v1);
		int PROBE_END_LINE_177 = 177;
		SettableBeanProperty old =  bean_deserializer_builder_1_expr6_line_177;
        int PROBE_START_LINE_178 = 180;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty v_old_2082_line_178 = old;
		boolean bean_deserializer_builder_1_expr9_line_178 = v_old_2082_line_178 != null;
		boolean bean_deserializer_builder_1_expr10_line_178 = true;
		if (bean_deserializer_builder_1_expr9_line_178) {
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_old_2082_line_178_v1 = old;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2081_line_178 = prop;
			bean_deserializer_builder_1_expr10_line_178 = v_old_2082_line_178_v1 != p_prop_2081_line_178;
		}
		boolean bean_deserializer_builder_1_expr8_line_178 = bean_deserializer_builder_1_expr9_line_178
				&& bean_deserializer_builder_1_expr10_line_178;
		int PROBE_END_LINE_178 = 180;
		if (bean_deserializer_builder_1_expr8_line_178) { // should never occur...
            throw new IllegalArgumentException("Duplicate property '"+prop.getName()+"' for "+_beanDesc.getType());
        }
    }

    /**
     * Method called to add a property that represents so-called back reference;
     * reference that "points back" to object that has forward reference to
     * currently built bean.
     */
    public void  addBackReferenceProperty(String referenceName, SettableBeanProperty prop)
    {
        if (_backRefProperties == null) {
            _backRefProperties = new HashMap<String, SettableBeanProperty>(4);
        }
        // 15-Sep-2016, tatu: For some reason fixing access at point of `build()` does
        //    NOT work (2 failing unit tests). Not 100% clear why, but for now force
        //    access set early; unfortunate, but since it works....
        prop.fixAccess(_config);
        _backRefProperties.put(referenceName, prop);
        // 16-Jan-2018, tatu: As per [databind#1878] we may want to leave it as is, to allow
        //    population for cases of "wrong direction", traversing parent first
        //   If this causes problems should probably instead include in "ignored properties" list
        //   Alternatively could also extend annotation to allow/disallow explicit value from input
        /*
        if (_properties != null) {
            _properties.remove(prop.getName());
        }
        */
    }

    public void addInjectable(PropertyName propName, JavaType propType,
            Annotations contextAnnotations, AnnotatedMember member,
            Object valueId)
    {
        if (_injectables == null) {
            _injectables = new ArrayList<ValueInjector>();
        }
        boolean fixAccess = _config.canOverrideAccessModifiers();
        boolean forceAccess = fixAccess && _config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
        if (fixAccess) {
            member.fixAccess(forceAccess);
        }
        _injectables.add(new ValueInjector(propName, propType, member, valueId));
    }

    /**
     * Method that will add property name as one of properties that can
     * be ignored if not recognized.
     */
    public void addIgnorable(String propName)
    {
        if (_ignorableProps == null) {
            _ignorableProps = new HashSet<String>();
        }
        _ignorableProps.add(propName);
    }

    /**
     * Method called by deserializer factory, when a "creator property"
     * (something that is passed via constructor- or factory method argument;
     * instead of setter or field).
     *<p>
     * Default implementation does not do anything; we may need to revisit this
     * decision if these properties need to be available through accessors.
     * For now, however, we just have to ensure that we don't try to resolve
     * types that masked setter/field has (see [JACKSON-700] for details).
     */
    public void addCreatorProperty(SettableBeanProperty prop)
    {
        addProperty(prop);
    }

    public void setAnySetter(SettableAnyProperty s)
    {
        if (_anySetter != null && s != null) {
            throw new IllegalStateException("_anySetter already set to non-null");
        }
        _anySetter = s;
    }

    public void setIgnoreUnknownProperties(boolean ignore) {
        int PROBE_START_LINE_260 = 260;
		boolean p_ignore_2093_line_260 = ignore;
		int PROBE_END_LINE_260 = 260;
		_ignoreAllUnknown = p_ignore_2093_line_260;
    }

    public void setValueInstantiator(ValueInstantiator inst) {
        int PROBE_START_LINE_264 = 264;
		com.fasterxml.jackson.databind.deser.ValueInstantiator p_inst_2095_line_264 = inst;
		int PROBE_END_LINE_264 = 264;
		_valueInstantiator = p_inst_2095_line_264;
    }

    public void setObjectIdReader(ObjectIdReader r) {
        _objectIdReader = r;
    }

    public void setPOJOBuilder(AnnotatedMethod buildMethod, JsonPOJOBuilder.Value config) {
        _buildMethod = buildMethod;
        _builderConfig = config;
    }
    
    /*
    /**********************************************************
    /* Public accessors
    /**********************************************************
     */
    
    /**
     * Method that allows accessing all properties that this
     * builder currently contains.
     *<p>
     * Note that properties are returned in order that properties
     * are ordered (explictly, or by rule), which is the serialization
     * order.
     */
    public Iterator<SettableBeanProperty> getProperties() {
        return _properties.values().iterator();
    }

    public SettableBeanProperty findProperty(PropertyName propertyName) {
        return _properties.get(propertyName.getSimpleName());
    }

    public boolean hasProperty(PropertyName propertyName) {
        return findProperty(propertyName) != null;
    }

    public SettableBeanProperty removeProperty(PropertyName name) {
        return _properties.remove(name.getSimpleName());
    }

    public SettableAnyProperty getAnySetter() {
        int PROBE_START_LINE_307 = 307;
		com.fasterxml.jackson.databind.deser.SettableAnyProperty f__any_setter_2103_line_307 = _anySetter;
		int PROBE_END_LINE_307 = 307;
		return f__any_setter_2103_line_307;
    }
    
    public ValueInstantiator getValueInstantiator() {
        int PROBE_START_LINE_311 = 311;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_2096_line_311 = _valueInstantiator;
		int PROBE_END_LINE_311 = 311;
		return f__value_instantiator_2096_line_311;
    }

    public List<ValueInjector> getInjectables() {
        int PROBE_START_LINE_315 = 315;
		List<com.fasterxml.jackson.databind.deser.impl.ValueInjector> f__injectables_2104_line_315 = _injectables;
		int PROBE_END_LINE_315 = 315;
		return f__injectables_2104_line_315;
    }

    public ObjectIdReader getObjectIdReader() {
        int PROBE_START_LINE_319 = 319;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_2105_line_319 = _objectIdReader;
		int PROBE_END_LINE_319 = 319;
		return f__object_id_reader_2105_line_319;
    }

    public AnnotatedMethod getBuildMethod() {
    	return _buildMethod;
    }

    public JsonPOJOBuilder.Value getBuilderConfig() {
        return _builderConfig;
    }

    /**
     * @since 2.9.4
     */
    public boolean hasIgnorable(String name) {
        return (_ignorableProps != null) && _ignorableProps.contains(name);
    }

    /*
    /**********************************************************
    /* Build method(s)
    /**********************************************************
     */

    /**
     * Method for constructing a {@link BeanDeserializer}, given all
     * information collected.
     */
    public JsonDeserializer<?> build()
    {
        int PROBE_START_LINE_349 = 349;
		Map<String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> f__properties_2070_line_349 = _properties;
		Collection<SettableBeanProperty> bean_deserializer_builder_1_expr13_line_349 = f__properties_2070_line_349
				.values();
		int PROBE_END_LINE_349 = 349;
		Collection<SettableBeanProperty> props = bean_deserializer_builder_1_expr13_line_349;
        int PROBE_START_LINE_350 = 350;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_props_2107_line_350 = props;
		int PROBE_END_LINE_350 = 350;
		_fixAccess(v_props_2107_line_350);
        int PROBE_START_LINE_351 = 353;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_props_2107_line_351 = props;
		BeanPropertyMap bean_deserializer_builder_1_expr15_line_351 = BeanPropertyMap.construct(v_props_2107_line_351,
				_config.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES), _collectAliases(props));
		int PROBE_END_LINE_351 = 353;
		BeanPropertyMap propertyMap = bean_deserializer_builder_1_expr15_line_351;
        int PROBE_START_LINE_354 = 354;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap v_property_map_2108_line_354 = propertyMap;
		int PROBE_END_LINE_354 = 354;
		v_property_map_2108_line_354.assignIndexes();

        int PROBE_START_LINE_359 = 359;
		com.fasterxml.jackson.databind.DeserializationConfig f__config_2075_line_359 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_default_view_inclusion_75_line_359 = MapperFeature.DEFAULT_VIEW_INCLUSION;
		boolean bean_deserializer_builder_1_expr20_line_359 = f__config_2075_line_359
				.isEnabled(q_default_view_inclusion_75_line_359);
		boolean bean_deserializer_builder_1_expr19_line_359 = !bean_deserializer_builder_1_expr20_line_359;
		int PROBE_END_LINE_359 = 359;
		// view processing must be enabled if:
        // (a) fields are not included by default (when deserializing with view), OR
        // (b) one of properties has view(s) to included in defined
        boolean anyViews = bean_deserializer_builder_1_expr19_line_359;
        int PROBE_START_LINE_360 = 367;
		boolean v_any_views_2109_line_360 = anyViews;
		boolean bean_deserializer_builder_1_expr21_line_360 = !v_any_views_2109_line_360;
		int PROBE_END_LINE_360 = 367;
		if (bean_deserializer_builder_1_expr21_line_360) {
            int PROBE_START_LINE_361 = 366;
			Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_props_2107_line_361 = props;
			int PROBE_END_LINE_361 = 366;
			for (SettableBeanProperty prop : v_props_2107_line_361) {
                int PROBE_START_LINE_362 = 365;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2110_line_362 = prop;
				boolean bean_deserializer_builder_1_expr22_line_362 = v_prop_2110_line_362.hasViews();
				int PROBE_END_LINE_362 = 365;
				if (bean_deserializer_builder_1_expr22_line_362) {
                    anyViews = true;
                    break;
                }
            }
        }

        int PROBE_START_LINE_370 = 377;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_2105_line_370 = _objectIdReader;
		boolean bean_deserializer_builder_1_expr23_line_370 = f__object_id_reader_2105_line_370 != null;
		int PROBE_END_LINE_370 = 377;
		// one more thing: may need to create virtual ObjectId property:
        if (bean_deserializer_builder_1_expr23_line_370) {
            /* 18-Nov-2012, tatu: May or may not have annotations for id property;
             *   but no easy access. But hard to see id property being optional,
             *   so let's consider required at this point.
             */
            ObjectIdValueProperty prop = new ObjectIdValueProperty(_objectIdReader, PropertyMetadata.STD_REQUIRED);
            propertyMap = propertyMap.withProperty(prop);
        }

        return new BeanDeserializer(this,
                _beanDesc, propertyMap, _backRefProperties, _ignorableProps, _ignoreAllUnknown,
                anyViews);
    }

    /**
     * Alternate build method used when we must be using some form of
     * abstract resolution, usually by using addition Type Id
     * ("polymorphic deserialization")
     * 
     * @since 2.0
     */
    public AbstractDeserializer buildAbstract() {
        return new AbstractDeserializer(this, _beanDesc, _backRefProperties, _properties);
    }

    /**
     * Method for constructing a specialized deserializer that uses
     * additional external Builder object during data binding.
     */
    public JsonDeserializer<?> buildBuilderBased(JavaType valueType, String expBuildMethodName)
        throws JsonMappingException
    {
        // First: validation; must have build method that returns compatible type
        if (_buildMethod == null) {
            // as per [databind#777], allow empty name
            if (!expBuildMethodName.isEmpty()) {
                _context.reportBadDefinition(_beanDesc.getType(),
                        String.format("Builder class %s does not have build method (name: '%s')",
                        _beanDesc.getBeanClass().getName(),
                        expBuildMethodName));
            }
        } else {
            // also: type of the method must be compatible
            Class<?> rawBuildType = _buildMethod.getRawReturnType();
            Class<?> rawValueType = valueType.getRawClass();
            if ((rawBuildType != rawValueType)
                    && !rawBuildType.isAssignableFrom(rawValueType)
                    && !rawValueType.isAssignableFrom(rawBuildType)) {
                _context.reportBadDefinition(_beanDesc.getType(),
                        String.format("Build method '%s' has wrong return type (%s), not compatible with POJO type (%s)",
                        _buildMethod.getFullName(),
                        rawBuildType.getName(),
                        valueType.getRawClass().getName()));
            }
        }
        // And if so, we can try building the deserializer
        Collection<SettableBeanProperty> props = _properties.values();
        _fixAccess(props);
        BeanPropertyMap propertyMap = BeanPropertyMap.construct(props,
                _config.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES),
                _collectAliases(props));
        propertyMap.assignIndexes();

        boolean anyViews = !_config.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);

        if (!anyViews) {
            for (SettableBeanProperty prop : props) {
                if (prop.hasViews()) {
                    anyViews = true;
                    break;
                }
            }
        }

        if (_objectIdReader != null) {
            // May or may not have annotations for id property; but no easy access.
            // But hard to see id property being optional, so let's consider required at this point.
            ObjectIdValueProperty prop = new ObjectIdValueProperty(_objectIdReader,
                    PropertyMetadata.STD_REQUIRED);
            propertyMap = propertyMap.withProperty(prop);
        }

        return new BuilderBasedDeserializer(this,
                _beanDesc, valueType, propertyMap, _backRefProperties, _ignorableProps, _ignoreAllUnknown,
                anyViews);
    }

    /*
    /**********************************************************
    /* Internal helper method(s)
    /**********************************************************
     */

    protected void _fixAccess(Collection<SettableBeanProperty> mainProps)
    {
        int PROBE_START_LINE_477 = 485;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_main_props_2115_line_477 = mainProps;
		int PROBE_END_LINE_477 = 485;
		/* 07-Sep-2016, tatu: Ideally we should be able to avoid forcing
         *   access to properties that are likely ignored, but due to
         *   renaming it seems this is not a safe thing to do (there was
         *   at least one failing test). May need to dig deeper in future;
         *   for now let's just play it safe.
         */
        /*
        Set<String> ignorable = _ignorableProps;
        if (ignorable == null) {
            ignorable = Collections.emptySet();
        }
        */
        for (SettableBeanProperty prop : p_main_props_2115_line_477) {
            int PROBE_START_LINE_484 = 484;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2116_line_484 = prop;
			com.fasterxml.jackson.databind.DeserializationConfig f__config_2075_line_484 = _config;
			int PROBE_END_LINE_484 = 484;
			/*
            // first: no point forcing access on to-be-ignored properties
            if (ignorable.contains(prop.getName())) {
                continue;
            }
            */
            v_prop_2116_line_484.fixAccess(f__config_2075_line_484);
        }
        int PROBE_START_LINE_495 = 497;
		com.fasterxml.jackson.databind.deser.SettableAnyProperty f__any_setter_2103_line_495 = _anySetter;
		boolean bean_deserializer_builder_1_expr27_line_495 = f__any_setter_2103_line_495 != null;
		int PROBE_END_LINE_495 = 497;
		// 15-Sep-2016, tatu: Access via back-ref properties has been done earlier
        //   as it has to, for some reason, so not repeated here.
/*        
        if (_backRefProperties != null) {
            for (SettableBeanProperty prop : _backRefProperties.values()) {
                prop.fixAccess(_config);
            }
        }
        */
        if (bean_deserializer_builder_1_expr27_line_495) {
            _anySetter.fixAccess(_config);
        }
        int PROBE_START_LINE_498 = 500;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod f__build_method_2117_line_498 = _buildMethod;
		boolean bean_deserializer_builder_1_expr28_line_498 = f__build_method_2117_line_498 != null;
		int PROBE_END_LINE_498 = 500;
		if (bean_deserializer_builder_1_expr28_line_498) {
            _buildMethod.fixAccess(_config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
    }

    protected Map<String,List<PropertyName>> _collectAliases(Collection<SettableBeanProperty> props)
    {
        Map<String,List<PropertyName>> mapping = null;
        int PROBE_START_LINE_506 = 506;
		com.fasterxml.jackson.databind.DeserializationConfig f__config_2075_line_506 = _config;
		AnnotationIntrospector bean_deserializer_builder_1_expr29_line_506 = f__config_2075_line_506
				.getAnnotationIntrospector();
		int PROBE_END_LINE_506 = 506;
		AnnotationIntrospector intr = bean_deserializer_builder_1_expr29_line_506;
        int PROBE_START_LINE_507 = 518;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2120_line_507 = intr;
		boolean bean_deserializer_builder_1_expr30_line_507 = v_intr_2120_line_507 != null;
		int PROBE_END_LINE_507 = 518;
		if (bean_deserializer_builder_1_expr30_line_507) {
            int PROBE_START_LINE_508 = 517;
			Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2118_line_508 = props;
			int PROBE_END_LINE_508 = 517;
			for (SettableBeanProperty prop : p_props_2118_line_508) {
                int PROBE_START_LINE_509 = 509;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_2120_line_509 = intr;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2121_line_509 = prop;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember bean_deserializer_builder_1_expr32_line_509 = v_prop_2121_line_509
						.getMember();
				List<PropertyName> bean_deserializer_builder_1_expr31_line_509 = v_intr_2120_line_509
						.findPropertyAliases(bean_deserializer_builder_1_expr32_line_509);
				int PROBE_END_LINE_509 = 509;
				List<PropertyName> aliases = bean_deserializer_builder_1_expr31_line_509;
                int PROBE_START_LINE_510 = 512;
				List<com.fasterxml.jackson.databind.PropertyName> v_aliases_2122_line_510 = aliases;
				boolean bean_deserializer_builder_1_expr35_line_510 = v_aliases_2122_line_510 == null;
				boolean bean_deserializer_builder_1_expr34_line_510 = (bean_deserializer_builder_1_expr35_line_510);
				boolean bean_deserializer_builder_1_expr36_line_510 = false;
				if (!bean_deserializer_builder_1_expr34_line_510) {
					List<com.fasterxml.jackson.databind.PropertyName> v_aliases_2122_line_510_v1 = aliases;
					bean_deserializer_builder_1_expr36_line_510 = v_aliases_2122_line_510_v1.isEmpty();
				}
				boolean bean_deserializer_builder_1_expr33_line_510 = bean_deserializer_builder_1_expr34_line_510
						|| bean_deserializer_builder_1_expr36_line_510;
				int PROBE_END_LINE_510 = 512;
				if (bean_deserializer_builder_1_expr33_line_510) {
                    continue;
                }
                if (mapping == null) {
                    mapping = new HashMap<>();
                }
                mapping.put(prop.getName(), aliases);
            }
        }
        int PROBE_START_LINE_519 = 521;
		Map<String, List<com.fasterxml.jackson.databind.PropertyName>> v_mapping_2119_line_519 = mapping;
		boolean bean_deserializer_builder_1_expr37_line_519 = v_mapping_2119_line_519 == null;
		int PROBE_END_LINE_519 = 521;
		if (bean_deserializer_builder_1_expr37_line_519) {
            int PROBE_START_LINE_520 = 520;
			Map<String, List<com.fasterxml.jackson.databind.PropertyName>> bean_deserializer_builder_1_expr38_line_520 = Collections
					.emptyMap();
			int PROBE_END_LINE_520 = 520;
			return bean_deserializer_builder_1_expr38_line_520;
        }
        return mapping;
    }
}
