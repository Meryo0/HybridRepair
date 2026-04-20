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
import java.util.Map;
import java.util.Collection;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.PropertyMetadata;

/**
 * Builder class used for aggregating deserialization information about
 * a POJO, in order to build a {@link JsonDeserializer} for deserializing
 * instances.
 */
public class BeanDeserializerBuilder
{
    /*
    /**********************************************************
    /* General information about POJO
    /**********************************************************
     */

    final protected BeanDescription _beanDesc;

    final protected boolean _defaultViewInclusion;
    
    final protected boolean _caseInsensitivePropertyComparison;
    
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
            DeserializationConfig config)
    { 
        int PROBE_START_LINE_102 = 102;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1642_line_102 = beanDesc;
		int PROBE_END_LINE_102 = 102;
		_beanDesc = p_bean_desc_1642_line_102;
        int PROBE_START_LINE_103 = 103;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1643_line_103 = config;
		com.fasterxml.jackson.databind.MapperFeature q_default_view_inclusion_32_line_103 = MapperFeature.DEFAULT_VIEW_INCLUSION;
		boolean bean_deserializer_builder_1_expr4_line_103 = p_config_1643_line_103
				.isEnabled(q_default_view_inclusion_32_line_103);
		int PROBE_END_LINE_103 = 103;
		_defaultViewInclusion = bean_deserializer_builder_1_expr4_line_103;
        int PROBE_START_LINE_104 = 104;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1643_line_104 = config;
		com.fasterxml.jackson.databind.MapperFeature q_accept_case_insensitive_properties_33_line_104 = MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES;
		boolean bean_deserializer_builder_1_expr6_line_104 = p_config_1643_line_104
				.isEnabled(q_accept_case_insensitive_properties_33_line_104);
		int PROBE_END_LINE_104 = 104;
		_caseInsensitivePropertyComparison = bean_deserializer_builder_1_expr6_line_104;
    }

    /**
     * Copy constructor for sub-classes to use, when constructing
     * custom builder instances
     */
    protected BeanDeserializerBuilder(BeanDeserializerBuilder src)
    {
        _beanDesc = src._beanDesc;
        _defaultViewInclusion = src._defaultViewInclusion;
        _caseInsensitivePropertyComparison = src._caseInsensitivePropertyComparison;

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
        int PROBE_START_LINE_162 = 162;
		Map<String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> f__properties_1641_line_162 = _properties;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1652_line_162 = prop;
		String bean_deserializer_builder_1_expr8_line_162 = p_prop_1652_line_162.getName();
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1652_line_162_v1 = prop;
		SettableBeanProperty bean_deserializer_builder_1_expr7_line_162 = f__properties_1641_line_162
				.put(bean_deserializer_builder_1_expr8_line_162, p_prop_1652_line_162_v1);
		int PROBE_END_LINE_162 = 162;
		SettableBeanProperty old =  bean_deserializer_builder_1_expr7_line_162;
        int PROBE_START_LINE_163 = 165;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty v_old_1653_line_163 = old;
		boolean bean_deserializer_builder_1_expr10_line_163 = v_old_1653_line_163 != null;
		boolean bean_deserializer_builder_1_expr11_line_163 = true;
		if (bean_deserializer_builder_1_expr10_line_163) {
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_old_1653_line_163_v1 = old;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1652_line_163 = prop;
			bean_deserializer_builder_1_expr11_line_163 = v_old_1653_line_163_v1 != p_prop_1652_line_163;
		}
		boolean bean_deserializer_builder_1_expr9_line_163 = bean_deserializer_builder_1_expr10_line_163
				&& bean_deserializer_builder_1_expr11_line_163;
		int PROBE_END_LINE_163 = 165;
		if (bean_deserializer_builder_1_expr9_line_163) { // should never occur...
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
        _backRefProperties.put(referenceName, prop);
        // also: if we had property with same name, actually remove it
        if (_properties != null) {
            _properties.remove(prop.getName());
        }
        // ??? 23-Jul-2012, tatu: Should it be included in list of all properties?
        //   For now, won't add, since it is inferred, not explicit...
    }

    public void addInjectable(PropertyName propName, JavaType propType,
            Annotations contextAnnotations, AnnotatedMember member,
            Object valueId)
    {
        if (_injectables == null) {
            _injectables = new ArrayList<ValueInjector>();
        }
        _injectables.add(new ValueInjector(propName, propType,
                contextAnnotations, member, valueId));
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
        _ignoreAllUnknown = ignore;
    }

    public void setValueInstantiator(ValueInstantiator inst) {
        int PROBE_START_LINE_238 = 238;
		com.fasterxml.jackson.databind.deser.ValueInstantiator p_inst_1665_line_238 = inst;
		int PROBE_END_LINE_238 = 238;
		_valueInstantiator = p_inst_1665_line_238;
    }

    public void setObjectIdReader(ObjectIdReader r) {
        int PROBE_START_LINE_242 = 242;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader p_r_1667_line_242 = r;
		int PROBE_END_LINE_242 = 242;
		_objectIdReader = p_r_1667_line_242;
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
        int PROBE_START_LINE_281 = 281;
		com.fasterxml.jackson.databind.deser.SettableAnyProperty f__any_setter_1674_line_281 = _anySetter;
		int PROBE_END_LINE_281 = 281;
		return f__any_setter_1674_line_281;
    }
    
    public ValueInstantiator getValueInstantiator() {
        int PROBE_START_LINE_285 = 285;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_1666_line_285 = _valueInstantiator;
		int PROBE_END_LINE_285 = 285;
		return f__value_instantiator_1666_line_285;
    }

    public List<ValueInjector> getInjectables() {
        int PROBE_START_LINE_289 = 289;
		List<com.fasterxml.jackson.databind.deser.impl.ValueInjector> f__injectables_1675_line_289 = _injectables;
		int PROBE_END_LINE_289 = 289;
		return f__injectables_1675_line_289;
    }

    public ObjectIdReader getObjectIdReader() {
        int PROBE_START_LINE_293 = 293;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_1668_line_293 = _objectIdReader;
		int PROBE_END_LINE_293 = 293;
		return f__object_id_reader_1668_line_293;
    }

    public AnnotatedMethod getBuildMethod() {
    	return _buildMethod;
    }

    public JsonPOJOBuilder.Value getBuilderConfig() {
        return _builderConfig;
    }
    
    /*
    /**********************************************************
    /* Build method(s)
    /**********************************************************
     */

    /**
     * Method for constructing a {@link BeanDeserializer}, given all
     * information collected.
     *<p>
     * NOTE: Signature of this method did unfortunately change between Jackson 2.1
     * and Jackson 2.2
     */
    public JsonDeserializer<?> build()
    {
        int PROBE_START_LINE_319 = 319;
		Map<String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> f__properties_1641_line_319 = _properties;
		Collection<SettableBeanProperty> bean_deserializer_builder_1_expr14_line_319 = f__properties_1641_line_319
				.values();
		int PROBE_END_LINE_319 = 319;
		Collection<SettableBeanProperty> props = bean_deserializer_builder_1_expr14_line_319;
        int PROBE_START_LINE_320 = 320;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_props_1676_line_320 = props;
		boolean f__case_insensitive_property_comparison_1646_line_320 = _caseInsensitivePropertyComparison;
		int PROBE_END_LINE_320 = 320;
		BeanPropertyMap propertyMap = new BeanPropertyMap(v_props_1676_line_320, f__case_insensitive_property_comparison_1646_line_320);
        int PROBE_START_LINE_321 = 321;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap v_property_map_1677_line_321 = propertyMap;
		int PROBE_END_LINE_321 = 321;
		v_property_map_1677_line_321.assignIndexes();

        int PROBE_START_LINE_326 = 326;
		boolean f__default_view_inclusion_1645_line_326 = _defaultViewInclusion;
		boolean bean_deserializer_builder_1_expr17_line_326 = !f__default_view_inclusion_1645_line_326;
		int PROBE_END_LINE_326 = 326;
		// view processing must be enabled if:
        // (a) fields are not included by default (when deserializing with view), OR
        // (b) one of properties has view(s) to included in defined
        boolean anyViews = bean_deserializer_builder_1_expr17_line_326;

        int PROBE_START_LINE_328 = 335;
		boolean v_any_views_1678_line_328 = anyViews;
		boolean bean_deserializer_builder_1_expr18_line_328 = !v_any_views_1678_line_328;
		int PROBE_END_LINE_328 = 335;
		if (bean_deserializer_builder_1_expr18_line_328) {
            int PROBE_START_LINE_329 = 334;
			Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_props_1676_line_329 = props;
			int PROBE_END_LINE_329 = 334;
			for (SettableBeanProperty prop : v_props_1676_line_329) {
                int PROBE_START_LINE_330 = 333;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1679_line_330 = prop;
				boolean bean_deserializer_builder_1_expr19_line_330 = v_prop_1679_line_330.hasViews();
				int PROBE_END_LINE_330 = 333;
				if (bean_deserializer_builder_1_expr19_line_330) {
                    anyViews = true;
                    break;
                }
            }
        }

        int PROBE_START_LINE_338 = 345;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_1668_line_338 = _objectIdReader;
		boolean bean_deserializer_builder_1_expr20_line_338 = f__object_id_reader_1668_line_338 != null;
		int PROBE_END_LINE_338 = 345;
		// one more thing: may need to create virtual ObjectId property:
        if (bean_deserializer_builder_1_expr20_line_338) {
            int PROBE_START_LINE_343 = 343;
			com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_1668_line_343 = _objectIdReader;
			com.fasterxml.jackson.databind.PropertyMetadata q_std_required_34_line_343 = PropertyMetadata.STD_REQUIRED;
			int PROBE_END_LINE_343 = 343;
			/* 18-Nov-2012, tatu: May or may not have annotations for id property;
             *   but no easy access. But hard to see id property being optional,
             *   so let's consider required at this point.
             */
            ObjectIdValueProperty prop = new ObjectIdValueProperty(f__object_id_reader_1668_line_343, q_std_required_34_line_343);
            int PROBE_START_LINE_344 = 344;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap v_property_map_1677_line_344 = propertyMap;
			com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty v_prop_1680_line_344 = prop;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap bean_deserializer_builder_1_expr23_line_344 = v_property_map_1677_line_344
					.withProperty(v_prop_1680_line_344);
			int PROBE_END_LINE_344 = 344;
			propertyMap = bean_deserializer_builder_1_expr23_line_344;
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
        return new AbstractDeserializer(this, _beanDesc, _backRefProperties);
    }
    
    /**
     * Method for constructing a specialized deserializer that uses
     * additional external Builder object during data binding.
     */
    public JsonDeserializer<?> buildBuilderBased(JavaType valueType,
    		String expBuildMethodName)
    {
        // First: validation; must have build method that returns compatible type
        if (_buildMethod == null) {
            throw new IllegalArgumentException("Builder class "+_beanDesc.getBeanClass().getName()
                    +" does not have build method '"+expBuildMethodName+"()'");
        }
        // also: type of the method must be compatible
        Class<?> rawBuildType = _buildMethod.getRawReturnType();
        if (!valueType.getRawClass().isAssignableFrom(rawBuildType)) {
            throw new IllegalArgumentException("Build method '"+_buildMethod.getFullName()
        			+" has bad return type ("+rawBuildType.getName()
        			+"), not compatible with POJO type ("+valueType.getRawClass().getName()+")");
        }
        // And if so, we can try building the deserializer
        Collection<SettableBeanProperty> props = _properties.values();
        BeanPropertyMap propertyMap = new BeanPropertyMap(props, _caseInsensitivePropertyComparison);
        propertyMap.assignIndexes();

        boolean anyViews = !_defaultViewInclusion;

        if (!anyViews) {
            for (SettableBeanProperty prop : props) {
                if (prop.hasViews()) {
                    anyViews = true;
                    break;
                }
            }
        }

        if (_objectIdReader != null) {
            /* 18-Nov-2012, tatu: May or may not have annotations for id property;
             *   but no easy access. But hard to see id property being optional,
             *   so let's consider required at this point.
             */
            ObjectIdValueProperty prop = new ObjectIdValueProperty(_objectIdReader,
                    PropertyMetadata.STD_REQUIRED);
            propertyMap = propertyMap.withProperty(prop);
        }
        
        return new BuilderBasedDeserializer(this,
                _beanDesc, propertyMap, _backRefProperties, _ignorableProps, _ignoreAllUnknown,
                anyViews);
    }
}
