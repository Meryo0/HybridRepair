package com.fasterxml.jackson.databind.deser;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

import com.fasterxml.jackson.annotation.*;

import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.core.JsonParser.NumberType;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.impl.*;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.fasterxml.jackson.databind.exc.IgnoredPropertyException;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.util.*;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import java.util.Set;
import com.fasterxml.jackson.annotation.JsonFormat.Feature;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import java.util.List;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.Map;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.PropertyMetadata.MergeInfo;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

/**
 * Base class for <code>BeanDeserializer</code>.
 */
public abstract class BeanDeserializerBase
    extends StdDeserializer<Object>
    implements ContextualDeserializer, ResolvableDeserializer,
        ValueInstantiator.Gettable, // since 2.9
        java.io.Serializable // since 2.1
{
    private static final long serialVersionUID = 1;

    protected final static PropertyName TEMP_PROPERTY_NAME = new PropertyName("#temporary-name");

    /*
    /**********************************************************
    /* Information regarding type being deserialized
    /**********************************************************
     */

    /**
     * Declared type of the bean this deserializer handles.
     */
    final protected JavaType _beanType;

    /**
     * Requested shape from bean class annotations.
     */
    final protected JsonFormat.Shape _serializationShape;

    /*
    /**********************************************************
    /* Configuration for creating value instance
    /**********************************************************
     */

    /**
     * Object that handles details of constructing initial 
     * bean value (to which bind data to), unless instance
     * is passed (via updateValue())
     */
    protected final ValueInstantiator _valueInstantiator;

    /**
     * Deserializer that is used iff delegate-based creator is
     * to be used for deserializing from JSON Object.
     */
    protected JsonDeserializer<Object> _delegateDeserializer;

    /**
     * Deserializer that is used iff array-delegate-based creator
     * is to be used for deserializing from JSON Object.
     */
    protected JsonDeserializer<Object> _arrayDelegateDeserializer;

    /**
     * If the bean needs to be instantiated using constructor
     * or factory method
     * that takes one or more named properties as argument(s),
     * this creator is used for instantiation.
     * This value gets resolved during general resolution.
     */
    protected PropertyBasedCreator _propertyBasedCreator;

    /**
     * Flag that is set to mark "non-standard" cases; where either
     * we use one of non-default creators, or there are unwrapped
     * values to consider.
     */
    protected boolean _nonStandardCreation;

    /**
     * Flag that indicates that no "special features" whatsoever
     * are enabled, so the simplest processing is possible.
     */
    protected boolean _vanillaProcessing;

    /*
    /**********************************************************
    /* Property information, setters
    /**********************************************************
     */

    /**
     * Mapping of property names to properties, built when all properties
     * to use have been successfully resolved.
     */
    final protected BeanPropertyMap _beanProperties;

    /**
     * List of {@link ValueInjector}s, if any injectable values are
     * expected by the bean; otherwise null.
     * This includes injectors used for injecting values via setters
     * and fields, but not ones passed through constructor parameters.
     */
    final protected ValueInjector[] _injectables;

    /**
     * Fallback setter used for handling any properties that are not
     * mapped to regular setters. If setter is not null, it will be
     * called once for each such property.
     */
    protected SettableAnyProperty _anySetter;

    /**
     * In addition to properties that are set, we will also keep
     * track of recognized but ignorable properties: these will
     * be skipped without errors or warnings.
     */
    final protected Set<String> _ignorableProps;

    /**
     * Flag that can be set to ignore and skip unknown properties.
     * If set, will not throw an exception for unknown properties.
     */
    final protected boolean _ignoreAllUnknown;

    /**
     * Flag that indicates that some aspect of deserialization depends
     * on active view used (if any)
     */
    final protected boolean _needViewProcesing;

    /**
     * We may also have one or more back reference fields (usually
     * zero or one).
     */
    final protected Map<String, SettableBeanProperty> _backRefs;

    /*
    /**********************************************************
    /* Related handlers
    /**********************************************************
     */

    /**
     * Lazily constructed map used to contain deserializers needed
     * for polymorphic subtypes.
     * Note that this is <b>only needed</b> for polymorphic types,
     * that is, when the actual type is not statically known.
     * For other types this remains null.
     */
    protected transient HashMap<ClassKey, JsonDeserializer<Object>> _subDeserializers;

    /**
     * If one of properties has "unwrapped" value, we need separate
     * helper object
     */
    protected UnwrappedPropertyHandler _unwrappedPropertyHandler;

    /**
     * Handler that we need iff any of properties uses external
     * type id.
     */
    protected ExternalTypeHandler _externalTypeIdHandler;

    /**
     * If an Object Id is to be used for value handled by this
     * deserializer, this reader is used for handling.
     */
    protected final ObjectIdReader _objectIdReader;

    /*
    /**********************************************************
    /* Life-cycle, construction, initialization
    /**********************************************************
     */

    /**
     * Constructor used when initially building a deserializer
     * instance, given a {@link BeanDeserializerBuilder} that
     * contains configuration.
     */
    protected BeanDeserializerBase(BeanDeserializerBuilder builder,
            BeanDescription beanDesc,
            BeanPropertyMap properties, Map<String, SettableBeanProperty> backRefs,
            Set<String> ignorableProps, boolean ignoreAllUnknown,
            boolean hasViews)
    {
        super(beanDesc.getType());
        int PROBE_START_LINE_202 = 202;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1905_line_202 = beanDesc;
		com.fasterxml.jackson.databind.JavaType bean_deserializer_base_1_expr5_line_202 = p_bean_desc_1905_line_202
				.getType();
		int PROBE_END_LINE_202 = 202;
		_beanType = bean_deserializer_base_1_expr5_line_202;
        int PROBE_START_LINE_203 = 203;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1904_line_203 = builder;
		com.fasterxml.jackson.databind.deser.ValueInstantiator bean_deserializer_base_1_expr7_line_203 = p_builder_1904_line_203
				.getValueInstantiator();
		int PROBE_END_LINE_203 = 203;
		_valueInstantiator = bean_deserializer_base_1_expr7_line_203;
        
        int PROBE_START_LINE_205 = 205;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap p_properties_1906_line_205 = properties;
		int PROBE_END_LINE_205 = 205;
		_beanProperties = p_properties_1906_line_205;
        int PROBE_START_LINE_206 = 206;
		Map<String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_back_refs_1907_line_206 = backRefs;
		int PROBE_END_LINE_206 = 206;
		_backRefs = p_back_refs_1907_line_206;
        int PROBE_START_LINE_207 = 207;
		Set<String> p_ignorable_props_1908_line_207 = ignorableProps;
		int PROBE_END_LINE_207 = 207;
		_ignorableProps = p_ignorable_props_1908_line_207;
        int PROBE_START_LINE_208 = 208;
		boolean p_ignore_all_unknown_1909_line_208 = ignoreAllUnknown;
		int PROBE_END_LINE_208 = 208;
		_ignoreAllUnknown = p_ignore_all_unknown_1909_line_208;

        int PROBE_START_LINE_210 = 210;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1904_line_210 = builder;
		com.fasterxml.jackson.databind.deser.SettableAnyProperty bean_deserializer_base_1_expr13_line_210 = p_builder_1904_line_210
				.getAnySetter();
		int PROBE_END_LINE_210 = 210;
		_anySetter = bean_deserializer_base_1_expr13_line_210;
        int PROBE_START_LINE_211 = 211;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1904_line_211 = builder;
		List<ValueInjector> bean_deserializer_base_1_expr14_line_211 = p_builder_1904_line_211.getInjectables();
		int PROBE_END_LINE_211 = 211;
		List<ValueInjector> injectables = bean_deserializer_base_1_expr14_line_211;
        int PROBE_START_LINE_212 = 213;
		List<com.fasterxml.jackson.databind.deser.impl.ValueInjector> v_injectables_1916_line_212 = injectables;
		boolean bean_deserializer_base_1_expr20_line_212 = v_injectables_1916_line_212 == null;
		boolean bean_deserializer_base_1_expr21_line_212 = false;
		if (!bean_deserializer_base_1_expr20_line_212) {
			List<com.fasterxml.jackson.databind.deser.impl.ValueInjector> v_injectables_1916_line_212_v1 = injectables;
			bean_deserializer_base_1_expr21_line_212 = v_injectables_1916_line_212_v1.isEmpty();
		}
		boolean bean_deserializer_base_1_expr19_line_212 = bean_deserializer_base_1_expr20_line_212
				|| bean_deserializer_base_1_expr21_line_212;
		boolean bean_deserializer_base_1_expr17_line_212 = (bean_deserializer_base_1_expr19_line_212);
		com.fasterxml.jackson.databind.deser.impl.ValueInjector[] bean_deserializer_base_1_expr16_line_212 = bean_deserializer_base_1_expr17_line_212
				? null
				: injectables.toArray(new ValueInjector[injectables.size()]);
		int PROBE_END_LINE_212 = 213;
		_injectables = bean_deserializer_base_1_expr16_line_212;
        int PROBE_START_LINE_214 = 214;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1904_line_214 = builder;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader bean_deserializer_base_1_expr23_line_214 = p_builder_1904_line_214
				.getObjectIdReader();
		int PROBE_END_LINE_214 = 214;
		_objectIdReader = bean_deserializer_base_1_expr23_line_214;
        int PROBE_START_LINE_215 = 220;
		com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler f__unwrapped_property_handler_1920_line_215 = _unwrappedPropertyHandler;
		boolean bean_deserializer_base_1_expr27_line_215 = f__unwrapped_property_handler_1920_line_215 != null;
		boolean bean_deserializer_base_1_expr26_line_215 = (bean_deserializer_base_1_expr27_line_215);
		boolean bean_deserializer_base_1_expr25_line_215 = bean_deserializer_base_1_expr26_line_215
				|| _valueInstantiator.canCreateUsingDelegate() || _valueInstantiator.canCreateUsingArrayDelegate()
				|| _valueInstantiator.canCreateFromObjectWith() || !_valueInstantiator.canCreateUsingDefault();
		int PROBE_END_LINE_215 = 220;
		_nonStandardCreation = bean_deserializer_base_1_expr25_line_215
            ;

        int PROBE_START_LINE_223 = 223;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1905_line_223 = beanDesc;
		JsonFormat.Value bean_deserializer_base_1_expr28_line_223 = p_bean_desc_1905_line_223.findExpectedFormat(null);
		int PROBE_END_LINE_223 = 223;
		// Any transformation we may need to apply?
        JsonFormat.Value format = bean_deserializer_base_1_expr28_line_223;
        int PROBE_START_LINE_224 = 224;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1921_line_224 = format;
		boolean bean_deserializer_base_1_expr33_line_224 = v_format_1921_line_224 == null;
		boolean bean_deserializer_base_1_expr31_line_224 = (bean_deserializer_base_1_expr33_line_224);
		com.fasterxml.jackson.annotation.JsonFormat.Shape bean_deserializer_base_1_expr32_line_224 = null;
		if (!bean_deserializer_base_1_expr31_line_224) {
			com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1921_line_224_v1 = format;
			bean_deserializer_base_1_expr32_line_224 = v_format_1921_line_224_v1.getShape();
		}
		com.fasterxml.jackson.annotation.JsonFormat.Shape bean_deserializer_base_1_expr30_line_224 = bean_deserializer_base_1_expr31_line_224
				? null
				: bean_deserializer_base_1_expr32_line_224;
		int PROBE_END_LINE_224 = 224;
		_serializationShape = bean_deserializer_base_1_expr30_line_224;

        int PROBE_START_LINE_226 = 226;
		boolean p_has_views_1910_line_226 = hasViews;
		int PROBE_END_LINE_226 = 226;
		_needViewProcesing = p_has_views_1910_line_226;
        int PROBE_START_LINE_227 = 232;
		boolean f__non_standard_creation_1919_line_227 = _nonStandardCreation;
		boolean bean_deserializer_base_1_expr37_line_227 = !f__non_standard_creation_1919_line_227;
		boolean bean_deserializer_base_1_expr36_line_227 = bean_deserializer_base_1_expr37_line_227
				&& (_injectables == null) && !_needViewProcesing && (_objectIdReader == null);
		int PROBE_END_LINE_227 = 232;
		_vanillaProcessing = bean_deserializer_base_1_expr36_line_227
                ;
    }

    protected BeanDeserializerBase(BeanDeserializerBase src) {
        this(src, src._ignoreAllUnknown);
    }

    protected BeanDeserializerBase(BeanDeserializerBase src, boolean ignoreAllUnknown)
    {
        super(src._beanType);
        
        _beanType = src._beanType;
        
        _valueInstantiator = src._valueInstantiator;
        _delegateDeserializer = src._delegateDeserializer;
        _propertyBasedCreator = src._propertyBasedCreator;
        
        _beanProperties = src._beanProperties;
        _backRefs = src._backRefs;
        _ignorableProps = src._ignorableProps;
        _ignoreAllUnknown = ignoreAllUnknown;
        _anySetter = src._anySetter;
        _injectables = src._injectables;
        _objectIdReader = src._objectIdReader;
        
        _nonStandardCreation = src._nonStandardCreation;
        _unwrappedPropertyHandler = src._unwrappedPropertyHandler;
        _needViewProcesing = src._needViewProcesing;
        _serializationShape = src._serializationShape;

        _vanillaProcessing = src._vanillaProcessing;
    }

    protected BeanDeserializerBase(BeanDeserializerBase src, NameTransformer unwrapper)
    {
        super(src._beanType);

        _beanType = src._beanType;
        
        _valueInstantiator = src._valueInstantiator;
        _delegateDeserializer = src._delegateDeserializer;
        _propertyBasedCreator = src._propertyBasedCreator;

        _backRefs = src._backRefs;
        _ignorableProps = src._ignorableProps;
        _ignoreAllUnknown = (unwrapper != null) || src._ignoreAllUnknown;
        _anySetter = src._anySetter;
        _injectables = src._injectables;
        _objectIdReader = src._objectIdReader;

        _nonStandardCreation = src._nonStandardCreation;
        UnwrappedPropertyHandler uph = src._unwrappedPropertyHandler;

        if (unwrapper != null) {
            // delegate further unwraps, if any
            if (uph != null) { // got handler, delegate
                uph = uph.renameAll(unwrapper);
            }
            // and handle direct unwrapping as well:
            _beanProperties = src._beanProperties.renameAll(unwrapper);
        } else {
            _beanProperties = src._beanProperties;
        }
        _unwrappedPropertyHandler = uph;
        _needViewProcesing = src._needViewProcesing;
        _serializationShape = src._serializationShape;

        // probably adds a twist, so:
        _vanillaProcessing = false;
    }

    public BeanDeserializerBase(BeanDeserializerBase src, ObjectIdReader oir)
    {
        super(src._beanType);
        _beanType = src._beanType;
        
        _valueInstantiator = src._valueInstantiator;
        _delegateDeserializer = src._delegateDeserializer;
        _propertyBasedCreator = src._propertyBasedCreator;
        
        _backRefs = src._backRefs;
        _ignorableProps = src._ignorableProps;
        _ignoreAllUnknown = src._ignoreAllUnknown;
        _anySetter = src._anySetter;
        _injectables = src._injectables;
        
        _nonStandardCreation = src._nonStandardCreation;
        _unwrappedPropertyHandler = src._unwrappedPropertyHandler;
        _needViewProcesing = src._needViewProcesing;
        _serializationShape = src._serializationShape;

        // then actual changes:
        _objectIdReader = oir;

        if (oir == null) {
            _beanProperties = src._beanProperties;
            _vanillaProcessing = src._vanillaProcessing;
        } else {
            /* 18-Nov-2012, tatu: May or may not have annotations for id property;
             *   but no easy access. But hard to see id property being optional,
             *   so let's consider required at this point.
             */
            ObjectIdValueProperty idProp = new ObjectIdValueProperty(oir, PropertyMetadata.STD_REQUIRED);
            _beanProperties = src._beanProperties.withProperty(idProp);
            _vanillaProcessing = false;
        }
    }

    public BeanDeserializerBase(BeanDeserializerBase src, Set<String> ignorableProps)
    {
        super(src._beanType);
        _beanType = src._beanType;
        
        _valueInstantiator = src._valueInstantiator;
        _delegateDeserializer = src._delegateDeserializer;
        _propertyBasedCreator = src._propertyBasedCreator;

        _backRefs = src._backRefs;
        _ignorableProps = ignorableProps;
        _ignoreAllUnknown = src._ignoreAllUnknown;
        _anySetter = src._anySetter;
        _injectables = src._injectables;

        _nonStandardCreation = src._nonStandardCreation;
        _unwrappedPropertyHandler = src._unwrappedPropertyHandler;
        _needViewProcesing = src._needViewProcesing;
        _serializationShape = src._serializationShape;

        _vanillaProcessing = src._vanillaProcessing;
        _objectIdReader = src._objectIdReader;

        // 01-May-2016, tatu: [databind#1217]: Remove properties from mapping,
        //    to avoid them being deserialized
        _beanProperties = src._beanProperties.withoutProperties(ignorableProps);
    }

    /**
     * @since 2.8
     */
    protected BeanDeserializerBase(BeanDeserializerBase src, BeanPropertyMap beanProps)
    {
        super(src._beanType);
        _beanType = src._beanType;

        _valueInstantiator = src._valueInstantiator;
        _delegateDeserializer = src._delegateDeserializer;
        _propertyBasedCreator = src._propertyBasedCreator;

        _beanProperties = beanProps;
        _backRefs = src._backRefs;
        _ignorableProps = src._ignorableProps;
        _ignoreAllUnknown = src._ignoreAllUnknown;
        _anySetter = src._anySetter;
        _injectables = src._injectables;
        _objectIdReader = src._objectIdReader;
        
        _nonStandardCreation = src._nonStandardCreation;
        _unwrappedPropertyHandler = src._unwrappedPropertyHandler;
        _needViewProcesing = src._needViewProcesing;
        _serializationShape = src._serializationShape;

        _vanillaProcessing = src._vanillaProcessing;
    }
    
    @Override
    public abstract JsonDeserializer<Object> unwrappingDeserializer(NameTransformer unwrapper);

    public abstract BeanDeserializerBase withObjectIdReader(ObjectIdReader oir);

    public abstract BeanDeserializerBase withIgnorableProperties(Set<String> ignorableProps);

    /**
     * Mutant factory method that custom sub-classes must override; not left as
     * abstract to prevent more drastic backwards compatibility problems.
     *
     * @since 2.8
     */
    public BeanDeserializerBase withBeanProperties(BeanPropertyMap props) {
        throw new UnsupportedOperationException("Class "+getClass().getName()
                +" does not override `withBeanProperties()`, needs to");
    }
    
    /**
     * Fluent factory for creating a variant that can handle
     * POJO output as a JSON Array. Implementations may ignore this request
     * if no such input is possible.
     *
     * @since 2.1
     */
    protected abstract BeanDeserializerBase asArrayDeserializer();

    /*
    /**********************************************************
    /* Validation, post-processing
    /**********************************************************
     */

    /**
     * Method called to finalize setup of this deserializer,
     * after deserializer itself has been registered.
     * This is needed to handle recursive and transitive dependencies.
     */
    @Override
    public void resolve(DeserializationContext ctxt) throws JsonMappingException
    {
        ExternalTypeHandler.Builder extTypes = null;
        // if ValueInstantiator can use "creator" approach, need to resolve it here...
        SettableBeanProperty[] creatorProps = null;

        int PROBE_START_LINE_441 = 457;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_1859_line_441 = _valueInstantiator;
		boolean bean_deserializer_base_1_expr38_line_441 = f__value_instantiator_1859_line_441
				.canCreateFromObjectWith();
		int PROBE_END_LINE_441 = 457;
		if (bean_deserializer_base_1_expr38_line_441) {
            creatorProps = _valueInstantiator.getFromObjectArguments(ctxt.getConfig());

            // 22-Jan-2018, tatu: May need to propagate "ignorable" status (from `Access.READ_ONLY`
            //     or perhaps class-ignorables) into Creator properties too. Can not just delete,
            //     at this point, but is needed for further processing down the line
            if (_ignorableProps != null) {
                for (int i = 0, end = creatorProps.length; i < end; ++i) {
                    SettableBeanProperty prop  = creatorProps[i];
                    if (_ignorableProps.contains(prop.getName())) {
                        creatorProps[i].markAsIgnorable();
                    }
                }
            }
        } else {
            creatorProps = null;
        }
        UnwrappedPropertyHandler unwrapped = null;

        // 24-Mar-2017, tatu: Looks like we may have to iterate over
        //   properties twice, to handle potential issues with recursive
        //   types (see [databind#1575] f.ex).
        // First loop: find deserializer if not yet known, but do not yet
        // contextualize (since that can lead to problems with self-references)
        // 22-Jan-2018, tatu: NOTE! Need not check for `isIgnorable` as that can
        //   only happen for props in `creatorProps`

        int PROBE_START_LINE_468 = 478;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1862_line_468 = _beanProperties;
		int PROBE_END_LINE_468 = 478;
		for (SettableBeanProperty prop : f__bean_properties_1862_line_468) {
            int PROBE_START_LINE_469 = 477;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1943_line_469 = prop;
			boolean bean_deserializer_base_1_expr41_line_469 = v_prop_1943_line_469.hasValueDeserializer();
			boolean bean_deserializer_base_1_expr40_line_469 = !bean_deserializer_base_1_expr41_line_469;
			int PROBE_END_LINE_469 = 477;
			if (bean_deserializer_base_1_expr40_line_469) {
                int PROBE_START_LINE_471 = 471;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1939_line_471 = ctxt;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1943_line_471 = prop;
				JsonDeserializer<?> bean_deserializer_base_1_expr42_line_471 = findConvertingDeserializer(
						p_ctxt_1939_line_471, v_prop_1943_line_471);
				int PROBE_END_LINE_471 = 471;
				// [databind#125]: allow use of converters
                JsonDeserializer<?> deser = bean_deserializer_base_1_expr42_line_471;
                int PROBE_START_LINE_472 = 474;
				JsonDeserializer<?> v_deser_1944_line_472 = deser;
				boolean bean_deserializer_base_1_expr43_line_472 = v_deser_1944_line_472 == null;
				int PROBE_END_LINE_472 = 474;
				if (bean_deserializer_base_1_expr43_line_472) {
                    int PROBE_START_LINE_473 = 473;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1939_line_473 = ctxt;
					com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1943_line_473 = prop;
					com.fasterxml.jackson.databind.JavaType bean_deserializer_base_1_expr46_line_473 = v_prop_1943_line_473
							.getType();
					JsonDeserializer<Object> bean_deserializer_base_1_expr45_line_473 = p_ctxt_1939_line_473
							.findNonContextualValueDeserializer(bean_deserializer_base_1_expr46_line_473);
					int PROBE_END_LINE_473 = 473;
					deser = bean_deserializer_base_1_expr45_line_473;
                }
                int PROBE_START_LINE_475 = 475;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1943_line_475 = prop;
				JsonDeserializer<?> v_deser_1944_line_475 = deser;
				SettableBeanProperty bean_deserializer_base_1_expr47_line_475 = v_prop_1943_line_475
						.withValueDeserializer(v_deser_1944_line_475);
				int PROBE_END_LINE_475 = 475;
				SettableBeanProperty newProp = bean_deserializer_base_1_expr47_line_475;
                int PROBE_START_LINE_476 = 476;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1862_line_476 = _beanProperties;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty[] v_creator_props_1941_line_476 = creatorProps;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1943_line_476 = prop;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_new_prop_1945_line_476 = newProp;
				int PROBE_END_LINE_476 = 476;
				_replaceProperty(f__bean_properties_1862_line_476, v_creator_props_1941_line_476, v_prop_1943_line_476, v_new_prop_1945_line_476);
            }
        }

        int PROBE_START_LINE_481 = 538;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1862_line_481 = _beanProperties;
		int PROBE_END_LINE_481 = 538;
		// Second loop: contextualize, find other pieces
        for (SettableBeanProperty origProp : f__bean_properties_1862_line_481) {
            int PROBE_START_LINE_482 = 482;
			SettableBeanProperty v_orig_prop_1946_line_482 = origProp;
			int PROBE_END_LINE_482 = 482;
			SettableBeanProperty prop = v_orig_prop_1946_line_482;
            int PROBE_START_LINE_483 = 483;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_483 = prop;
			JsonDeserializer<?> bean_deserializer_base_1_expr49_line_483 = v_prop_1947_line_483.getValueDeserializer();
			int PROBE_END_LINE_483 = 483;
			JsonDeserializer<?> deser = bean_deserializer_base_1_expr49_line_483;
            int PROBE_START_LINE_484 = 484;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1939_line_484 = ctxt;
			JsonDeserializer<?> v_deser_1948_line_484 = deser;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_484 = prop;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_484_v1 = prop;
			com.fasterxml.jackson.databind.JavaType bean_deserializer_base_1_expr52_line_484 = v_prop_1947_line_484_v1
					.getType();
			JsonDeserializer<?> bean_deserializer_base_1_expr51_line_484 = p_ctxt_1939_line_484
					.handlePrimaryContextualization(v_deser_1948_line_484, v_prop_1947_line_484,
							bean_deserializer_base_1_expr52_line_484);
			int PROBE_END_LINE_484 = 484;
			deser = bean_deserializer_base_1_expr51_line_484;
            int PROBE_START_LINE_485 = 485;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_485 = prop;
			JsonDeserializer<?> v_deser_1948_line_485 = deser;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr54_line_485 = v_prop_1947_line_485
					.withValueDeserializer(v_deser_1948_line_485);
			int PROBE_END_LINE_485 = 485;
			prop = bean_deserializer_base_1_expr54_line_485;
            int PROBE_START_LINE_487 = 487;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1939_line_487 = ctxt;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_487 = prop;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr56_line_487 = _resolveManagedReferenceProperty(
					p_ctxt_1939_line_487, v_prop_1947_line_487);
			int PROBE_END_LINE_487 = 487;
			// Need to link managed references with matching back references
            prop = bean_deserializer_base_1_expr56_line_487;

            int PROBE_START_LINE_490 = 492;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_490 = prop;
			boolean bean_deserializer_base_1_expr59_line_490 = v_prop_1947_line_490 instanceof ManagedReferenceProperty;
			boolean bean_deserializer_base_1_expr58_line_490 = (bean_deserializer_base_1_expr59_line_490);
			boolean bean_deserializer_base_1_expr57_line_490 = !bean_deserializer_base_1_expr58_line_490;
			int PROBE_END_LINE_490 = 492;
			// [databind#351]: need to wrap properties that require object id resolution.
            if (bean_deserializer_base_1_expr57_line_490) {
                int PROBE_START_LINE_491 = 491;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1939_line_491 = ctxt;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_491 = prop;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr61_line_491 = _resolvedObjectIdProperty(
						p_ctxt_1939_line_491, v_prop_1947_line_491);
				int PROBE_END_LINE_491 = 491;
				prop = bean_deserializer_base_1_expr61_line_491;
            }
            int PROBE_START_LINE_494 = 494;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1939_line_494 = ctxt;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_494 = prop;
			NameTransformer bean_deserializer_base_1_expr62_line_494 = _findPropertyUnwrapper(p_ctxt_1939_line_494,
					v_prop_1947_line_494);
			int PROBE_END_LINE_494 = 494;
			// Support unwrapped values (via @JsonUnwrapped)
            NameTransformer xform = bean_deserializer_base_1_expr62_line_494;
            int PROBE_START_LINE_495 = 511;
			com.fasterxml.jackson.databind.util.NameTransformer v_xform_1949_line_495 = xform;
			boolean bean_deserializer_base_1_expr63_line_495 = v_xform_1949_line_495 != null;
			int PROBE_END_LINE_495 = 511;
			if (bean_deserializer_base_1_expr63_line_495) {
                JsonDeserializer<Object> orig = prop.getValueDeserializer();
                JsonDeserializer<Object> unwrapping = orig.unwrappingDeserializer(xform);
                if (unwrapping != orig && unwrapping != null) {
                    prop = prop.withValueDeserializer(unwrapping);
                    if (unwrapped == null) {
                        unwrapped = new UnwrappedPropertyHandler();
                    }
                    unwrapped.addProperty(prop);
                    // 12-Dec-2014, tatu: As per [databind#647], we will have problems if
                    //    the original property is left in place. So let's remove it now.
                    // 25-Mar-2017, tatu: Wonder if this could be problematic wrt creators?
                    //    (that is, should be remove it from creator too)
                    _beanProperties.remove(prop);
                    continue;
                }
            }

            int PROBE_START_LINE_515 = 515;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_515 = prop;
			PropertyMetadata bean_deserializer_base_1_expr64_line_515 = v_prop_1947_line_515.getMetadata();
			int PROBE_END_LINE_515 = 515;
			// 26-Oct-2016, tatu: Need to have access to value deserializer to know if
            //   merging needed, and now seems to be reasonable time to do that.
            final PropertyMetadata md = bean_deserializer_base_1_expr64_line_515;
            int PROBE_START_LINE_516 = 516;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1939_line_516 = ctxt;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_516 = prop;
			com.fasterxml.jackson.databind.PropertyMetadata v_md_1950_line_516 = md;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr66_line_516 = _resolveMergeAndNullSettings(
					p_ctxt_1939_line_516, v_prop_1947_line_516, v_md_1950_line_516);
			int PROBE_END_LINE_516 = 516;
			prop = bean_deserializer_base_1_expr66_line_516;

            int PROBE_START_LINE_519 = 519;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1939_line_519 = ctxt;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_519 = prop;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr68_line_519 = _resolveInnerClassValuedProperty(
					p_ctxt_1939_line_519, v_prop_1947_line_519);
			int PROBE_END_LINE_519 = 519;
			// non-static inner classes too:
            prop = bean_deserializer_base_1_expr68_line_519;
            int PROBE_START_LINE_520 = 522;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_520 = prop;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_orig_prop_1946_line_520 = origProp;
			boolean bean_deserializer_base_1_expr69_line_520 = v_prop_1947_line_520 != v_orig_prop_1946_line_520;
			int PROBE_END_LINE_520 = 522;
			if (bean_deserializer_base_1_expr69_line_520) {
                int PROBE_START_LINE_521 = 521;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1862_line_521 = _beanProperties;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty[] v_creator_props_1941_line_521 = creatorProps;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_orig_prop_1946_line_521 = origProp;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_521 = prop;
				int PROBE_END_LINE_521 = 521;
				_replaceProperty(f__bean_properties_1862_line_521, v_creator_props_1941_line_521, v_orig_prop_1946_line_521, v_prop_1947_line_521);
            }

            int PROBE_START_LINE_526 = 537;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_526 = prop;
			boolean bean_deserializer_base_1_expr71_line_526 = v_prop_1947_line_526.hasValueTypeDeserializer();
			int PROBE_END_LINE_526 = 537;
			// one more thing: if this property uses "external property" type inclusion,
            // it needs different handling altogether
            if (bean_deserializer_base_1_expr71_line_526) {
                int PROBE_START_LINE_527 = 527;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1947_line_527 = prop;
				TypeDeserializer bean_deserializer_base_1_expr72_line_527 = v_prop_1947_line_527
						.getValueTypeDeserializer();
				int PROBE_END_LINE_527 = 527;
				TypeDeserializer typeDeser = bean_deserializer_base_1_expr72_line_527;
                int PROBE_START_LINE_528 = 536;
				com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_type_deser_1951_line_528 = typeDeser;
				com.fasterxml.jackson.annotation.JsonTypeInfo.As bean_deserializer_base_1_expr74_line_528 = v_type_deser_1951_line_528
						.getTypeInclusion();
				com.fasterxml.jackson.annotation.JsonTypeInfo.As q_external_property_72_line_528 = JsonTypeInfo.As.EXTERNAL_PROPERTY;
				boolean bean_deserializer_base_1_expr73_line_528 = bean_deserializer_base_1_expr74_line_528 == q_external_property_72_line_528;
				int PROBE_END_LINE_528 = 536;
				if (bean_deserializer_base_1_expr73_line_528) {
                    if (extTypes == null) {
                        extTypes = ExternalTypeHandler.builder(_beanType);
                    }
                    extTypes.addExternal(prop, typeDeser);
                    // In fact, remove from list of known properties to simplify later handling
                    _beanProperties.remove(prop);
                    continue;
                }
            }
        }
        int PROBE_START_LINE_540 = 543;
		com.fasterxml.jackson.databind.deser.SettableAnyProperty f__any_setter_1915_line_540 = _anySetter;
		boolean bean_deserializer_base_1_expr77_line_540 = f__any_setter_1915_line_540 != null;
		boolean bean_deserializer_base_1_expr76_line_540 = (bean_deserializer_base_1_expr77_line_540);
		boolean bean_deserializer_base_1_expr78_line_540 = true;
		if (bean_deserializer_base_1_expr76_line_540) {
			com.fasterxml.jackson.databind.deser.SettableAnyProperty f__any_setter_1915_line_540_v1 = _anySetter;
			boolean bean_deserializer_base_1_expr79_line_540 = f__any_setter_1915_line_540_v1.hasValueDeserializer();
			bean_deserializer_base_1_expr78_line_540 = !bean_deserializer_base_1_expr79_line_540;
		}
		boolean bean_deserializer_base_1_expr75_line_540 = bean_deserializer_base_1_expr76_line_540
				&& bean_deserializer_base_1_expr78_line_540;
		int PROBE_END_LINE_540 = 543;
		// "any setter" may also need to be resolved now
        if (bean_deserializer_base_1_expr75_line_540) {
            _anySetter = _anySetter.withValueDeserializer(findDeserializer(ctxt,
                    _anySetter.getType(), _anySetter.getProperty()));
        }
        int PROBE_START_LINE_545 = 554;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_1859_line_545 = _valueInstantiator;
		boolean bean_deserializer_base_1_expr80_line_545 = f__value_instantiator_1859_line_545.canCreateUsingDelegate();
		int PROBE_END_LINE_545 = 554;
		// as well as delegate-based constructor:
        if (bean_deserializer_base_1_expr80_line_545) {
            JavaType delegateType = _valueInstantiator.getDelegateType(ctxt.getConfig());
            if (delegateType == null) {
                ctxt.reportBadDefinition(_beanType, String.format(
"Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'",
                    _beanType, _valueInstantiator.getClass().getName()));
            }
            _delegateDeserializer = _findDelegateDeserializer(ctxt, delegateType,
                    _valueInstantiator.getDelegateCreator());
        }

        int PROBE_START_LINE_557 = 566;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_1859_line_557 = _valueInstantiator;
		boolean bean_deserializer_base_1_expr81_line_557 = f__value_instantiator_1859_line_557
				.canCreateUsingArrayDelegate();
		int PROBE_END_LINE_557 = 566;
		// and array-delegate-based constructor:
        if (bean_deserializer_base_1_expr81_line_557) {
            JavaType delegateType = _valueInstantiator.getArrayDelegateType(ctxt.getConfig());
            if (delegateType == null) {
                ctxt.reportBadDefinition(_beanType, String.format(
"Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'",
                        _beanType, _valueInstantiator.getClass().getName()));
            }
            _arrayDelegateDeserializer = _findDelegateDeserializer(ctxt, delegateType,
                    _valueInstantiator.getArrayDelegateCreator());
        }

        int PROBE_START_LINE_569 = 572;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] v_creator_props_1941_line_569 = creatorProps;
		boolean bean_deserializer_base_1_expr82_line_569 = v_creator_props_1941_line_569 != null;
		int PROBE_END_LINE_569 = 572;
		// And now that we know CreatorProperty instances are also resolved can finally create the creator:
        if (bean_deserializer_base_1_expr82_line_569) {
            _propertyBasedCreator = PropertyBasedCreator.construct(ctxt, _valueInstantiator,
                    creatorProps, _beanProperties);
        }

        int PROBE_START_LINE_574 = 580;
		com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.Builder v_ext_types_1940_line_574 = extTypes;
		boolean bean_deserializer_base_1_expr83_line_574 = v_ext_types_1940_line_574 != null;
		int PROBE_END_LINE_574 = 580;
		if (bean_deserializer_base_1_expr83_line_574) {
            // 21-Jun-2016, tatu: related to [databind#999], may need to link type ids too,
            //    so need to pass collected properties
            _externalTypeIdHandler = extTypes.build(_beanProperties);
            // we consider this non-standard, to offline handling
            _nonStandardCreation = true;
        }
        
        int PROBE_START_LINE_582 = 582;
		com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler v_unwrapped_1942_line_582 = unwrapped;
		int PROBE_END_LINE_582 = 582;
		_unwrappedPropertyHandler = v_unwrapped_1942_line_582;
        int PROBE_START_LINE_583 = 585;
		com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler v_unwrapped_1942_line_583 = unwrapped;
		boolean bean_deserializer_base_1_expr85_line_583 = v_unwrapped_1942_line_583 != null;
		int PROBE_END_LINE_583 = 585;
		if (bean_deserializer_base_1_expr85_line_583) { // we consider this non-standard, to offline handling
            _nonStandardCreation = true;
        }
        int PROBE_START_LINE_587 = 587;
		boolean f__vanilla_processing_1846_line_587 = _vanillaProcessing;
		boolean bean_deserializer_base_1_expr88_line_587 = true;
		if (f__vanilla_processing_1846_line_587) {
			boolean f__non_standard_creation_1919_line_587 = _nonStandardCreation;
			bean_deserializer_base_1_expr88_line_587 = !f__non_standard_creation_1919_line_587;
		}
		boolean bean_deserializer_base_1_expr87_line_587 = f__vanilla_processing_1846_line_587
				&& bean_deserializer_base_1_expr88_line_587;
		int PROBE_END_LINE_587 = 587;
		// may need to disable vanilla processing, if unwrapped handling was enabled...
        _vanillaProcessing = bean_deserializer_base_1_expr87_line_587;
    }

    /**
     * @since 2.8.8
     */
    protected void _replaceProperty(BeanPropertyMap props, SettableBeanProperty[] creatorProps,
            SettableBeanProperty origProp, SettableBeanProperty newProp)
    {
        int PROBE_START_LINE_596 = 596;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap p_props_1952_line_596 = props;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_orig_prop_1954_line_596 = origProp;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_new_prop_1955_line_596 = newProp;
		int PROBE_END_LINE_596 = 596;
		p_props_1952_line_596.replace(p_orig_prop_1954_line_596, p_new_prop_1955_line_596);
        int PROBE_START_LINE_598 = 617;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] p_creator_props_1953_line_598 = creatorProps;
		boolean bean_deserializer_base_1_expr90_line_598 = p_creator_props_1953_line_598 != null;
		int PROBE_END_LINE_598 = 617;
		// [databind#795]: Make sure PropertyBasedCreator's properties stay in sync
        if (bean_deserializer_base_1_expr90_line_598) {
            // 18-May-2015, tatu: _Should_ start with consistent set. But can we really
            //   fully count on this? May need to revisit in future; seems to hold for now.
            for (int i = 0, len = creatorProps.length; i < len; ++i) {
                if (creatorProps[i] == origProp) {
                    creatorProps[i] = newProp;
                    return;
                }
            }
            /*
            // ... as per above, it is possible we'd need to add this as fallback
            // if (but only if) identity check fails?
            for (int i = 0, len = creatorProps.length; i < len; ++i) {
                if (creatorProps[i].getName().equals(origProp.getName())) {
                    creatorProps[i] = newProp;
                    return;
                }
            }
            */
        }
    }

    @SuppressWarnings("unchecked")
    private JsonDeserializer<Object> _findDelegateDeserializer(DeserializationContext ctxt,
            JavaType delegateType, AnnotatedWithParams delegateCreator) throws JsonMappingException
    {
        // Need to create a temporary property to allow contextual deserializers:
        BeanProperty.Std property = new BeanProperty.Std(TEMP_PROPERTY_NAME,
                delegateType, null, delegateCreator,
                PropertyMetadata.STD_OPTIONAL);
        TypeDeserializer td = delegateType.getTypeHandler();
        if (td == null) {
            td = ctxt.getConfig().findTypeDeserializer(delegateType);
        }
        // 04-May-2018, tatu: [databind#2021] check if there's custom deserializer attached
        //    to type (resolved from parameter)
        JsonDeserializer<Object> dd = delegateType.getValueHandler();
        if (dd == null) {
            dd = findDeserializer(ctxt, delegateType, property);
        } else {
            dd = (JsonDeserializer<Object>) ctxt.handleSecondaryContextualization(dd, property, delegateType);
        }
        if (td != null) {
            td = td.forProperty(property);
            return new TypeWrappedDeserializer(td, dd);
        }
        return dd;
    }

    /**
     * Helper method that can be used to see if specified property is annotated
     * to indicate use of a converter for property value (in case of container types,
     * it is container type itself, not key or content type).
     *<p>
     * NOTE: returned deserializer is NOT yet contextualized, caller needs to take
     * care to do that.
     *
     * @since 2.2
     */
    protected JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext ctxt,
            SettableBeanProperty prop)
        throws JsonMappingException
    {
        int PROBE_START_LINE_661 = 661;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1959_line_661 = ctxt;
		AnnotationIntrospector bean_deserializer_base_1_expr91_line_661 = p_ctxt_1959_line_661
				.getAnnotationIntrospector();
		int PROBE_END_LINE_661 = 661;
		final AnnotationIntrospector intr = bean_deserializer_base_1_expr91_line_661;
        int PROBE_START_LINE_662 = 672;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1961_line_662 = intr;
		boolean bean_deserializer_base_1_expr92_line_662 = v_intr_1961_line_662 != null;
		int PROBE_END_LINE_662 = 672;
		if (bean_deserializer_base_1_expr92_line_662) {
            int PROBE_START_LINE_663 = 663;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1961_line_663 = intr;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1960_line_663 = prop;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember bean_deserializer_base_1_expr94_line_663 = p_prop_1960_line_663
					.getMember();
			Object bean_deserializer_base_1_expr93_line_663 = v_intr_1961_line_663
					.findDeserializationConverter(bean_deserializer_base_1_expr94_line_663);
			int PROBE_END_LINE_663 = 663;
			Object convDef = bean_deserializer_base_1_expr93_line_663;
            int PROBE_START_LINE_664 = 671;
			Object v_conv_def_1962_line_664 = convDef;
			boolean bean_deserializer_base_1_expr95_line_664 = v_conv_def_1962_line_664 != null;
			int PROBE_END_LINE_664 = 671;
			if (bean_deserializer_base_1_expr95_line_664) {
                Converter<Object,Object> conv = ctxt.converterInstance(prop.getMember(), convDef);
                JavaType delegateType = conv.getInputType(ctxt.getTypeFactory());
                // 25-Mar-2017, tatu: should not yet contextualize
//                JsonDeserializer<?> deser = ctxt.findContextualValueDeserializer(delegateType, prop);
                JsonDeserializer<?> deser = ctxt.findNonContextualValueDeserializer(delegateType);
                return new StdDelegatingDeserializer<Object>(conv, delegateType, deser);
            }
        }
        return null;
    }

    /**
     * Although most of post-processing is done in resolve(), we only get
     * access to referring property's annotations here; and this is needed
     * to support per-property ObjectIds.
     * We will also consider Shape transformations (read from Array) at this
     * point, since it may come from either Class definition or property.
     */
    @Override
    public JsonDeserializer<?> createContextual(DeserializationContext ctxt,
            BeanProperty property) throws JsonMappingException
    {
        int PROBE_START_LINE_687 = 687;
		ObjectIdReader f__object_id_reader_1918_line_687 = _objectIdReader;
		int PROBE_END_LINE_687 = 687;
		ObjectIdReader oir = f__object_id_reader_1918_line_687;

        int PROBE_START_LINE_690 = 690;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1963_line_690 = ctxt;
		AnnotationIntrospector bean_deserializer_base_1_expr96_line_690 = p_ctxt_1963_line_690
				.getAnnotationIntrospector();
		int PROBE_END_LINE_690 = 690;
		// First: may have an override for Object Id:
        final AnnotationIntrospector intr = bean_deserializer_base_1_expr96_line_690;
        int PROBE_START_LINE_691 = 691;
		com.fasterxml.jackson.databind.BeanProperty p_property_1964_line_691 = property;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1966_line_691 = intr;
		boolean bean_deserializer_base_1_expr98_line_691 = _neitherNull(p_property_1964_line_691, v_intr_1966_line_691);
		com.fasterxml.jackson.databind.introspect.AnnotatedMember bean_deserializer_base_1_expr99_line_691 = null;
		if (bean_deserializer_base_1_expr98_line_691) {
			com.fasterxml.jackson.databind.BeanProperty p_property_1964_line_691_v1 = property;
			bean_deserializer_base_1_expr99_line_691 = p_property_1964_line_691_v1.getMember();
		}
		AnnotatedMember bean_deserializer_base_1_expr97_line_691 = bean_deserializer_base_1_expr98_line_691
				? bean_deserializer_base_1_expr99_line_691
				: null;
		int PROBE_END_LINE_691 = 691;
		final AnnotatedMember accessor = bean_deserializer_base_1_expr97_line_691;
        int PROBE_START_LINE_692 = 724;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1967_line_692 = accessor;
		boolean bean_deserializer_base_1_expr100_line_692 = v_accessor_1967_line_692 != null;
		int PROBE_END_LINE_692 = 724;
		if (bean_deserializer_base_1_expr100_line_692) {
            int PROBE_START_LINE_693 = 693;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1966_line_693 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1967_line_693 = accessor;
			ObjectIdInfo bean_deserializer_base_1_expr101_line_693 = v_intr_1966_line_693
					.findObjectIdInfo(v_accessor_1967_line_693);
			int PROBE_END_LINE_693 = 693;
			ObjectIdInfo objectIdInfo = bean_deserializer_base_1_expr101_line_693;
            int PROBE_START_LINE_694 = 723;
			com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1968_line_694 = objectIdInfo;
			boolean bean_deserializer_base_1_expr102_line_694 = v_object_id_info_1968_line_694 != null;
			int PROBE_END_LINE_694 = 723;
			if (bean_deserializer_base_1_expr102_line_694) { // some code duplication here as well (from BeanDeserializerFactory)
                // 2.1: allow modifications by "id ref" annotations as well:
                objectIdInfo = intr.findObjectReferenceInfo(accessor, objectIdInfo);
                
                Class<?> implClass = objectIdInfo.getGeneratorType();
                // Property-based generator is trickier
                JavaType idType;
                SettableBeanProperty idProp;
                ObjectIdGenerator<?> idGen;
                ObjectIdResolver resolver = ctxt.objectIdResolverInstance(accessor, objectIdInfo);
                if (implClass == ObjectIdGenerators.PropertyGenerator.class) {
                    PropertyName propName = objectIdInfo.getPropertyName();
                    idProp = findProperty(propName);
                    if (idProp == null) {
                        ctxt.reportBadDefinition(_beanType, String.format(
                                "Invalid Object Id definition for %s: cannot find property with name '%s'",
                                handledType().getName(), propName));
                    }
                    idType = idProp.getType();
                    idGen = new PropertyBasedObjectIdGenerator(objectIdInfo.getScope());
                } else { // other types are to be simpler
                    JavaType type = ctxt.constructType(implClass);
                    idType = ctxt.getTypeFactory().findTypeParameters(type, ObjectIdGenerator.class)[0];
                    idProp = null;
                    idGen = ctxt.objectIdGeneratorInstance(accessor, objectIdInfo);
                }
                JsonDeserializer<?> deser = ctxt.findRootValueDeserializer(idType);
                oir = ObjectIdReader.construct(idType, objectIdInfo.getPropertyName(),
                		idGen, deser, idProp, resolver);
            }
        }
        // either way, need to resolve serializer:
        BeanDeserializerBase contextual = this;
        int PROBE_START_LINE_727 = 729;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader v_oir_1965_line_727 = oir;
		boolean bean_deserializer_base_1_expr105_line_727 = v_oir_1965_line_727 != null;
		boolean bean_deserializer_base_1_expr106_line_727 = true;
		if (bean_deserializer_base_1_expr105_line_727) {
			com.fasterxml.jackson.databind.deser.impl.ObjectIdReader v_oir_1965_line_727_v1 = oir;
			com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_1918_line_727 = _objectIdReader;
			bean_deserializer_base_1_expr106_line_727 = v_oir_1965_line_727_v1 != f__object_id_reader_1918_line_727;
		}
		boolean bean_deserializer_base_1_expr104_line_727 = bean_deserializer_base_1_expr105_line_727
				&& bean_deserializer_base_1_expr106_line_727;
		int PROBE_END_LINE_727 = 729;
		if (bean_deserializer_base_1_expr104_line_727) {
            contextual = contextual.withObjectIdReader(oir);
        }
        int PROBE_START_LINE_731 = 744;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1967_line_731 = accessor;
		boolean bean_deserializer_base_1_expr107_line_731 = v_accessor_1967_line_731 != null;
		int PROBE_END_LINE_731 = 744;
		// And possibly add more properties to ignore
        if (bean_deserializer_base_1_expr107_line_731) {
            int PROBE_START_LINE_732 = 732;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1966_line_732 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1967_line_732 = accessor;
			JsonIgnoreProperties.Value bean_deserializer_base_1_expr108_line_732 = v_intr_1966_line_732
					.findPropertyIgnorals(v_accessor_1967_line_732);
			int PROBE_END_LINE_732 = 732;
			JsonIgnoreProperties.Value ignorals = bean_deserializer_base_1_expr108_line_732;
            int PROBE_START_LINE_733 = 743;
			com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_ignorals_1970_line_733 = ignorals;
			boolean bean_deserializer_base_1_expr109_line_733 = v_ignorals_1970_line_733 != null;
			int PROBE_END_LINE_733 = 743;
			if (bean_deserializer_base_1_expr109_line_733) {
                int PROBE_START_LINE_734 = 734;
				com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_ignorals_1970_line_734 = ignorals;
				Set<String> bean_deserializer_base_1_expr110_line_734 = v_ignorals_1970_line_734
						.findIgnoredForDeserialization();
				int PROBE_END_LINE_734 = 734;
				Set<String> ignored = bean_deserializer_base_1_expr110_line_734;
                int PROBE_START_LINE_735 = 742;
				Set<String> v_ignored_1971_line_735 = ignored;
				boolean bean_deserializer_base_1_expr112_line_735 = v_ignored_1971_line_735.isEmpty();
				boolean bean_deserializer_base_1_expr111_line_735 = !bean_deserializer_base_1_expr112_line_735;
				int PROBE_END_LINE_735 = 742;
				if (bean_deserializer_base_1_expr111_line_735) {
                    Set<String> prev = contextual._ignorableProps;
                    if ((prev != null) && !prev.isEmpty()) {
                        ignored = new HashSet<String>(ignored);
                        ignored.addAll(prev);
                    }
                    contextual = contextual.withIgnorableProperties(ignored);
                }
            }
        }

        int PROBE_START_LINE_747 = 747;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1963_line_747 = ctxt;
		com.fasterxml.jackson.databind.BeanProperty p_property_1964_line_747 = property;
		Class<?> bean_deserializer_base_1_expr114_line_747 = handledType();
		JsonFormat.Value bean_deserializer_base_1_expr113_line_747 = findFormatOverrides(p_ctxt_1963_line_747,
				p_property_1964_line_747, bean_deserializer_base_1_expr114_line_747);
		int PROBE_END_LINE_747 = 747;
		// One more thing: are we asked to serialize POJO as array?
        JsonFormat.Value format = bean_deserializer_base_1_expr113_line_747;
        JsonFormat.Shape shape = null;
        int PROBE_START_LINE_749 = 762;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1972_line_749 = format;
		boolean bean_deserializer_base_1_expr115_line_749 = v_format_1972_line_749 != null;
		int PROBE_END_LINE_749 = 762;
		if (bean_deserializer_base_1_expr115_line_749) {
            int PROBE_START_LINE_750 = 752;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1972_line_750 = format;
			boolean bean_deserializer_base_1_expr116_line_750 = v_format_1972_line_750.hasShape();
			int PROBE_END_LINE_750 = 752;
			if (bean_deserializer_base_1_expr116_line_750) {
                shape = format.getShape();
            }
            int PROBE_START_LINE_754 = 754;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1972_line_754 = format;
			com.fasterxml.jackson.annotation.JsonFormat.Feature q_accept_case_insensitive_properties_72_line_754 = JsonFormat.Feature.ACCEPT_CASE_INSENSITIVE_PROPERTIES;
			Boolean bean_deserializer_base_1_expr117_line_754 = v_format_1972_line_754
					.getFeature(q_accept_case_insensitive_properties_72_line_754);
			int PROBE_END_LINE_754 = 754;
			// 16-May-2016, tatu: How about per-property case-insensitivity?
            Boolean B = bean_deserializer_base_1_expr117_line_754;
            int PROBE_START_LINE_755 = 761;
			Boolean v_b_1974_line_755 = B;
			boolean bean_deserializer_base_1_expr118_line_755 = v_b_1974_line_755 != null;
			int PROBE_END_LINE_755 = 761;
			if (bean_deserializer_base_1_expr118_line_755) {
                BeanPropertyMap propsOrig = _beanProperties;
                BeanPropertyMap props = propsOrig.withCaseInsensitivity(B.booleanValue());
                if (props != propsOrig) {
                    contextual = contextual.withBeanProperties(props);
                }
            }
        }

        int PROBE_START_LINE_764 = 766;
		com.fasterxml.jackson.annotation.JsonFormat.Shape v_shape_1973_line_764 = shape;
		boolean bean_deserializer_base_1_expr119_line_764 = v_shape_1973_line_764 == null;
		int PROBE_END_LINE_764 = 766;
		if (bean_deserializer_base_1_expr119_line_764) {
            int PROBE_START_LINE_765 = 765;
			com.fasterxml.jackson.annotation.JsonFormat.Shape f__serialization_shape_1922_line_765 = _serializationShape;
			int PROBE_END_LINE_765 = 765;
			shape = f__serialization_shape_1922_line_765;
        }
        int PROBE_START_LINE_767 = 769;
		com.fasterxml.jackson.annotation.JsonFormat.Shape v_shape_1973_line_767 = shape;
		com.fasterxml.jackson.annotation.JsonFormat.Shape q_array_73_line_767 = JsonFormat.Shape.ARRAY;
		boolean bean_deserializer_base_1_expr121_line_767 = v_shape_1973_line_767 == q_array_73_line_767;
		int PROBE_END_LINE_767 = 769;
		if (bean_deserializer_base_1_expr121_line_767) {
            contextual = contextual.asArrayDeserializer();
        }
        int PROBE_START_LINE_770 = 770;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBase v_contextual_1969_line_770 = contextual;
		int PROBE_END_LINE_770 = 770;
		return v_contextual_1969_line_770;
    }

    /**
     * Helper method called to see if given property is part of 'managed' property
     * pair (managed + back reference), and if so, handle resolution details.
     */
    protected SettableBeanProperty _resolveManagedReferenceProperty(DeserializationContext ctxt,
            SettableBeanProperty prop)
        throws JsonMappingException
    {
        int PROBE_START_LINE_781 = 781;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1976_line_781 = prop;
		String bean_deserializer_base_1_expr122_line_781 = p_prop_1976_line_781.getManagedReferenceName();
		int PROBE_END_LINE_781 = 781;
		String refName = bean_deserializer_base_1_expr122_line_781;
        int PROBE_START_LINE_782 = 784;
		String v_ref_name_1977_line_782 = refName;
		boolean bean_deserializer_base_1_expr123_line_782 = v_ref_name_1977_line_782 == null;
		int PROBE_END_LINE_782 = 784;
		if (bean_deserializer_base_1_expr123_line_782) {
            int PROBE_START_LINE_783 = 783;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1976_line_783 = prop;
			int PROBE_END_LINE_783 = 783;
			return p_prop_1976_line_783;
        }
        JsonDeserializer<?> valueDeser = prop.getValueDeserializer();
        SettableBeanProperty backProp = valueDeser.findBackReference(refName);
        if (backProp == null) {
            ctxt.reportBadDefinition(_beanType, String.format(
"Cannot handle managed/back reference '%s': no back reference property found from type %s",
                    refName, prop.getType()));
        }
        // also: verify that type is compatible
        JavaType referredType = _beanType;
        JavaType backRefType = backProp.getType();
        boolean isContainer = prop.getType().isContainerType();
        if (!backRefType.getRawClass().isAssignableFrom(referredType.getRawClass())) {
            ctxt.reportBadDefinition(_beanType, String.format(
"Cannot handle managed/back reference '%s': back reference type (%s) not compatible with managed type (%s)",
                    refName, backRefType.getRawClass().getName(),
                    referredType.getRawClass().getName()));
        }
        return new ManagedReferenceProperty(prop, refName, backProp, isContainer);
    }

    /**
     * Method that wraps given property with {@link ObjectIdReferenceProperty}
     * in case where object id resolution is required.
     */
    protected SettableBeanProperty _resolvedObjectIdProperty(DeserializationContext ctxt,
            SettableBeanProperty prop) throws JsonMappingException
    {
        int PROBE_START_LINE_812 = 812;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1979_line_812 = prop;
		ObjectIdInfo bean_deserializer_base_1_expr124_line_812 = p_prop_1979_line_812.getObjectIdInfo();
		int PROBE_END_LINE_812 = 812;
		ObjectIdInfo objectIdInfo = bean_deserializer_base_1_expr124_line_812;
        int PROBE_START_LINE_813 = 813;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1979_line_813 = prop;
		JsonDeserializer<Object> bean_deserializer_base_1_expr125_line_813 = p_prop_1979_line_813
				.getValueDeserializer();
		int PROBE_END_LINE_813 = 813;
		JsonDeserializer<Object> valueDeser = bean_deserializer_base_1_expr125_line_813;
        int PROBE_START_LINE_814 = 814;
		JsonDeserializer<Object> v_value_deser_1981_line_814 = valueDeser;
		boolean bean_deserializer_base_1_expr129_line_814 = v_value_deser_1981_line_814 == null;
		boolean bean_deserializer_base_1_expr127_line_814 = (bean_deserializer_base_1_expr129_line_814);
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader bean_deserializer_base_1_expr128_line_814 = null;
		if (!bean_deserializer_base_1_expr127_line_814) {
			JsonDeserializer<Object> v_value_deser_1981_line_814_v1 = valueDeser;
			bean_deserializer_base_1_expr128_line_814 = v_value_deser_1981_line_814_v1.getObjectIdReader();
		}
		ObjectIdReader bean_deserializer_base_1_expr126_line_814 = bean_deserializer_base_1_expr127_line_814
				? null
				: bean_deserializer_base_1_expr128_line_814;
		int PROBE_END_LINE_814 = 814;
		ObjectIdReader objectIdReader = bean_deserializer_base_1_expr126_line_814;
        int PROBE_START_LINE_815 = 817;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1980_line_815 = objectIdInfo;
		boolean bean_deserializer_base_1_expr131_line_815 = v_object_id_info_1980_line_815 == null;
		boolean bean_deserializer_base_1_expr132_line_815 = true;
		if (bean_deserializer_base_1_expr131_line_815) {
			com.fasterxml.jackson.databind.deser.impl.ObjectIdReader v_object_id_reader_1982_line_815 = objectIdReader;
			bean_deserializer_base_1_expr132_line_815 = v_object_id_reader_1982_line_815 == null;
		}
		boolean bean_deserializer_base_1_expr130_line_815 = bean_deserializer_base_1_expr131_line_815
				&& bean_deserializer_base_1_expr132_line_815;
		int PROBE_END_LINE_815 = 817;
		if (bean_deserializer_base_1_expr130_line_815) {
            int PROBE_START_LINE_816 = 816;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1979_line_816 = prop;
			int PROBE_END_LINE_816 = 816;
			return p_prop_1979_line_816;
        }
        return new ObjectIdReferenceProperty(prop, objectIdInfo);
    }

    /**
     * Helper method called to see if given property might be so-called unwrapped
     * property: these require special handling.
     */
    protected NameTransformer _findPropertyUnwrapper(DeserializationContext ctxt,
            SettableBeanProperty prop)
        throws JsonMappingException
    {
        int PROBE_START_LINE_829 = 829;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1984_line_829 = prop;
		AnnotatedMember bean_deserializer_base_1_expr133_line_829 = p_prop_1984_line_829.getMember();
		int PROBE_END_LINE_829 = 829;
		AnnotatedMember am = bean_deserializer_base_1_expr133_line_829;
        int PROBE_START_LINE_830 = 842;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_am_1985_line_830 = am;
		boolean bean_deserializer_base_1_expr134_line_830 = v_am_1985_line_830 != null;
		int PROBE_END_LINE_830 = 842;
		if (bean_deserializer_base_1_expr134_line_830) {
            int PROBE_START_LINE_831 = 831;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1983_line_831 = ctxt;
			com.fasterxml.jackson.databind.AnnotationIntrospector bean_deserializer_base_1_expr136_line_831 = p_ctxt_1983_line_831
					.getAnnotationIntrospector();
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_am_1985_line_831 = am;
			NameTransformer bean_deserializer_base_1_expr135_line_831 = bean_deserializer_base_1_expr136_line_831
					.findUnwrappingNameTransformer(v_am_1985_line_831);
			int PROBE_END_LINE_831 = 831;
			NameTransformer unwrapper = bean_deserializer_base_1_expr135_line_831;
            int PROBE_START_LINE_832 = 841;
			com.fasterxml.jackson.databind.util.NameTransformer v_unwrapper_1986_line_832 = unwrapper;
			boolean bean_deserializer_base_1_expr137_line_832 = v_unwrapper_1986_line_832 != null;
			int PROBE_END_LINE_832 = 841;
			if (bean_deserializer_base_1_expr137_line_832) {
                // 01-Dec-2016, tatu: As per [databind#265] we cannot yet support passing
                //   of unwrapped values through creator properties, so fail fast
                if (prop instanceof CreatorProperty) {
                    ctxt.reportBadDefinition(getValueType(), String.format(
                            "Cannot define Creator property \"%s\" as `@JsonUnwrapped`: combination not yet supported",
                            prop.getName()));
                }
                return unwrapper;
            }
        }
        return null;
    }

    /**
     * Helper method that will handle gruesome details of dealing with properties
     * that have non-static inner class as value...
     */
    protected SettableBeanProperty _resolveInnerClassValuedProperty(DeserializationContext ctxt,
            SettableBeanProperty prop)
    {
        int PROBE_START_LINE_856 = 856;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1988_line_856 = prop;
		JsonDeserializer<Object> bean_deserializer_base_1_expr138_line_856 = p_prop_1988_line_856
				.getValueDeserializer();
		int PROBE_END_LINE_856 = 856;
		/* Should we encounter a property that has non-static inner-class
         * as value, we need to add some more magic to find the "hidden" constructor...
         */
        JsonDeserializer<Object> deser = bean_deserializer_base_1_expr138_line_856;
        int PROBE_START_LINE_858 = 880;
		JsonDeserializer<Object> v_deser_1989_line_858 = deser;
		boolean bean_deserializer_base_1_expr139_line_858 = v_deser_1989_line_858 instanceof BeanDeserializerBase;
		int PROBE_END_LINE_858 = 880;
		// ideally wouldn't rely on it being BeanDeserializerBase; but for now it'll have to do
        if (bean_deserializer_base_1_expr139_line_858) {
            BeanDeserializerBase bd = (BeanDeserializerBase) deser;
            ValueInstantiator vi = bd.getValueInstantiator();
            if (!vi.canCreateUsingDefault()) { // no default constructor
                Class<?> valueClass = prop.getType().getRawClass();
                // NOTE: almost same as `isNonStaticInnerClass()` but need to know enclosing...
                Class<?> enclosing = ClassUtil.getOuterClass(valueClass);
                // and is inner class of the bean class...
                if ((enclosing != null) && (enclosing == _beanType.getRawClass())) {
                    for (Constructor<?> ctor : valueClass.getConstructors()) {
                        Class<?>[] paramTypes = ctor.getParameterTypes();
                        if (paramTypes.length == 1) {
                            if (enclosing.equals(paramTypes[0])) {
                                if (ctxt.canOverrideAccessModifiers()) {
                                    ClassUtil.checkAndFixAccess(ctor, ctxt.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                                }
                                return new InnerClassProperty(prop, ctor);
                            }
                        }
                    }
                }
            }
        }
        int PROBE_START_LINE_881 = 881;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1988_line_881 = prop;
		int PROBE_END_LINE_881 = 881;
		return p_prop_1988_line_881;
    }

    // @since 2.9
    protected SettableBeanProperty _resolveMergeAndNullSettings(DeserializationContext ctxt,
            SettableBeanProperty prop, PropertyMetadata propMetadata)
        throws JsonMappingException
    {
        int PROBE_START_LINE_889 = 889;
		com.fasterxml.jackson.databind.PropertyMetadata p_prop_metadata_1992_line_889 = propMetadata;
		PropertyMetadata.MergeInfo bean_deserializer_base_1_expr140_line_889 = p_prop_metadata_1992_line_889
				.getMergeInfo();
		int PROBE_END_LINE_889 = 889;
		PropertyMetadata.MergeInfo merge = bean_deserializer_base_1_expr140_line_889;
        int PROBE_START_LINE_891 = 914;
		com.fasterxml.jackson.databind.PropertyMetadata.MergeInfo v_merge_1993_line_891 = merge;
		boolean bean_deserializer_base_1_expr141_line_891 = v_merge_1993_line_891 != null;
		int PROBE_END_LINE_891 = 914;
		// First mergeability
        if (bean_deserializer_base_1_expr141_line_891) {
            JsonDeserializer<?> valueDeser = prop.getValueDeserializer();
            Boolean mayMerge = valueDeser.supportsUpdate(ctxt.getConfig());
    
            if (mayMerge == null) {
                // we don't really know if it's ok; so only use if explicitly specified
                if (merge.fromDefaults) {
                    return prop;
                }
            } else if (!mayMerge.booleanValue()) { // prevented
                if (!merge.fromDefaults) {
                    // If attempts was made via explicit annotation/per-type config override,
                    // should be reported; may or may not result in exception
                    ctxt.reportBadMerge(valueDeser);
                }
                return prop;
            }
            // Anyway; if we get this far, do enable merging
            AnnotatedMember accessor = merge.getter;
            accessor.fixAccess(ctxt.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            if (!(prop instanceof SetterlessProperty)) {
                prop = MergingSettableBeanProperty.construct(prop, accessor);
            }
        }

        int PROBE_START_LINE_917 = 917;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1990_line_917 = ctxt;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1991_line_917 = prop;
		com.fasterxml.jackson.databind.PropertyMetadata p_prop_metadata_1992_line_917 = propMetadata;
		NullValueProvider bean_deserializer_base_1_expr142_line_917 = findValueNullProvider(p_ctxt_1990_line_917,
				p_prop_1991_line_917, p_prop_metadata_1992_line_917);
		int PROBE_END_LINE_917 = 917;
		// And after this, see if we require non-standard null handling
        NullValueProvider nuller = bean_deserializer_base_1_expr142_line_917;
        int PROBE_START_LINE_918 = 920;
		com.fasterxml.jackson.databind.deser.NullValueProvider v_nuller_1994_line_918 = nuller;
		boolean bean_deserializer_base_1_expr143_line_918 = v_nuller_1994_line_918 != null;
		int PROBE_END_LINE_918 = 920;
		if (bean_deserializer_base_1_expr143_line_918) {
            prop = prop.withNullProvider(nuller);
        }
        int PROBE_START_LINE_921 = 921;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1991_line_921 = prop;
		int PROBE_END_LINE_921 = 921;
		return p_prop_1991_line_921;
    }

    /*
    /**********************************************************
    /* Public accessors; null/empty value providers
    /**********************************************************
     */

    @Override
    public AccessPattern getNullAccessPattern() {
        // POJO types do not have custom `null` values
        return AccessPattern.ALWAYS_NULL;
    }

    @Override
    public AccessPattern getEmptyAccessPattern() {
        // Empty values cannot be shared
        return AccessPattern.DYNAMIC;
    }
    
    @Override // since 2.9
    public Object getEmptyValue(DeserializationContext ctxt) throws JsonMappingException {
        // alas, need to promote exception, if any:
        try {
            return _valueInstantiator.createUsingDefault(ctxt);
        } catch (IOException e) {
            return ClassUtil.throwAsMappingException(ctxt, e);
        }
    }

    /*
    /**********************************************************
    /* Public accessors; other
    /**********************************************************
     */

    @Override
    public boolean isCachable() { return true; }

    @Override // since 2.9
    public Boolean supportsUpdate(DeserializationConfig config) {
        // although with possible caveats, yes, values can be updated
        // 23-Oct-2016, tatu: Perhaps in future could and should verify from
        //   bean settings...
        return Boolean.TRUE;
    }
    
    @Override
    public Class<?> handledType() {
        int PROBE_START_LINE_971 = 971;
		com.fasterxml.jackson.databind.JavaType f__bean_type_1911_line_971 = _beanType;
		Class<?> bean_deserializer_base_1_expr144_line_971 = f__bean_type_1911_line_971.getRawClass();
		int PROBE_END_LINE_971 = 971;
		return bean_deserializer_base_1_expr144_line_971;
    }

    /**
     * Overridden to return true for those instances that are
     * handling value for which Object Identity handling is enabled
     * (either via value type or referring property).
     */
    @Override
    public ObjectIdReader getObjectIdReader() {
        return _objectIdReader;
    }
    
    public boolean hasProperty(String propertyName) {
        return _beanProperties.find(propertyName) != null;
    }

    public boolean hasViews() {
        return _needViewProcesing;
    }
    
    /**
     * Accessor for checking number of deserialized properties.
     */
    public int getPropertyCount() { 
        return _beanProperties.size();
    }

    @Override
    public Collection<Object> getKnownPropertyNames() {
        ArrayList<Object> names = new ArrayList<Object>();
        for (SettableBeanProperty prop : _beanProperties) {
            names.add(prop.getName());
        }
        return names;
    }

    /**
     * @deprecated Since 2.3, use {@link #handledType()} instead
     */
    @Deprecated
    public final Class<?> getBeanClass() { return _beanType.getRawClass(); }

    @Override
    public JavaType getValueType() { return _beanType; }

    /**
     * Accessor for iterating over properties this deserializer uses; with
     * the exception that properties passed via Creator methods
     * (specifically, "property-based constructor") are not included,
     * but can be accessed separate by calling
     * {@link #creatorProperties}
     */
    public Iterator<SettableBeanProperty> properties()
    {
        if (_beanProperties == null) {
            throw new IllegalStateException("Can only call after BeanDeserializer has been resolved");
        }
        return _beanProperties.iterator();
    }

    /**
     * Accessor for finding properties that represents values to pass
     * through property-based creator method (constructor or
     * factory method)
     *
     * @since 2.0
     */
    public Iterator<SettableBeanProperty> creatorProperties()
    {
        if (_propertyBasedCreator == null) {
            return Collections.<SettableBeanProperty>emptyList().iterator();
        }
        return _propertyBasedCreator.properties().iterator();
    }

    public SettableBeanProperty findProperty(PropertyName propertyName)
    {
        // TODO: start matching full name?
        return findProperty(propertyName.getSimpleName());
    }
    
    /**
     * Accessor for finding the property with given name, if POJO
     * has one. Name used is the external name, i.e. name used
     * in external data representation (JSON).
     *
     * @since 2.0
     */
    public SettableBeanProperty findProperty(String propertyName)
    {
        SettableBeanProperty prop = (_beanProperties == null) ?
                null : _beanProperties.find(propertyName);
        if (prop == null && _propertyBasedCreator != null) {
            prop = _propertyBasedCreator.findCreatorProperty(propertyName);
        }
        return prop;
    }

    /**
     * Alternate find method that tries to locate a property with given
     * <code>property index</code>.
     * Note that access by index is not necessarily faster than by name,
     * since properties are not directly indexable; however, for most
     * instances difference is not significant as number of properties
     * is low.
     *
     * @since 2.3
     */
    public SettableBeanProperty findProperty(int propertyIndex)
    {
        SettableBeanProperty prop = (_beanProperties == null) ?
                null : _beanProperties.find(propertyIndex);
        if (prop == null && _propertyBasedCreator != null) {
            prop = _propertyBasedCreator.findCreatorProperty(propertyIndex);
        }
        return prop;
    }
    
    /**
     * Method needed by {@link BeanDeserializerFactory} to properly link
     * managed- and back-reference pairs.
     */
    @Override
    public SettableBeanProperty findBackReference(String logicalName)
    {
        if (_backRefs == null) {
            return null;
        }
        return _backRefs.get(logicalName);
    }

    @Override // ValueInstantiator.Gettable
    public ValueInstantiator getValueInstantiator() {
        return _valueInstantiator;
    }

    /*
    /**********************************************************
    /* Mutators
    /**********************************************************
     */

    /**
     * Method that can be used to replace an existing property with
     * a modified one.
     *<p>
     * NOTE: only ever use this method if you know what you are doing;
     * incorrect usage can break deserializer.
     *
     * @param original Property to replace
     * @param replacement Property to replace it with
     *
     * @since 2.1
     */
    public void replaceProperty(SettableBeanProperty original,
            SettableBeanProperty replacement)
    {
        _beanProperties.replace(original, replacement);
    }

    /*
    /**********************************************************
    /* Partial deserializer implementation
    /**********************************************************
     */

    /**
     * General version used when handling needs more advanced
     * features.
     */
    public abstract Object deserializeFromObject(JsonParser p, DeserializationContext ctxt)
        throws IOException;

    @Override
    public Object deserializeWithType(JsonParser p, DeserializationContext ctxt,
            TypeDeserializer typeDeserializer)
        throws IOException
    {
        int PROBE_START_LINE_1151 = 1176;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_1918_line_1151 = _objectIdReader;
		boolean bean_deserializer_base_1_expr145_line_1151 = f__object_id_reader_1918_line_1151 != null;
		int PROBE_END_LINE_1151 = 1176;
		// 16-Feb-2012, tatu: ObjectId may be used as well... need to check that first
        if (bean_deserializer_base_1_expr145_line_1151) {
            // 05-Aug-2013, tatu: May use native Object Id
            if (p.canReadObjectId()) {
                Object id = p.getObjectId();
                if (id != null) {
                    Object ob = typeDeserializer.deserializeTypedFromObject(p, ctxt);
                    return _handleTypedObjectId(p, ctxt, ob, id);
                }
            }
            // or, Object Ids Jackson explicitly sets
            JsonToken t = p.getCurrentToken();
            if (t != null) {
                // Most commonly, a scalar (int id, uuid String, ...)
                if (t.isScalarValue()) {
                    return deserializeFromObjectId(p, ctxt);
                }
                // but, with 2.5+, a simple Object-wrapped value also legal:
                if (t == JsonToken.START_OBJECT) {
                    t = p.nextToken();
                }
                if ((t == JsonToken.FIELD_NAME) && _objectIdReader.maySerializeAsObject()
                        && _objectIdReader.isValidReferencePropertyName(p.getCurrentName(), p)) {
                    return deserializeFromObjectId(p, ctxt);
                }
            }
        }
        int PROBE_START_LINE_1178 = 1178;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deserializer_2008_line_1178 = typeDeserializer;
		com.fasterxml.jackson.core.JsonParser p_p_2006_line_1178 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2007_line_1178 = ctxt;
		Object bean_deserializer_base_1_expr146_line_1178 = p_type_deserializer_2008_line_1178
				.deserializeTypedFromObject(p_p_2006_line_1178, p_ctxt_2007_line_1178);
		int PROBE_END_LINE_1178 = 1178;
		// In future could check current token... for now this should be enough:
        return bean_deserializer_base_1_expr146_line_1178;
    }

    /**
     * Offlined method called to handle "native" Object Id that has been read
     * and known to be associated with given deserialized POJO.
     *
     * @since 2.3
     */
    protected Object _handleTypedObjectId(JsonParser p, DeserializationContext ctxt,
            Object pojo, Object rawId)
        throws IOException
    {
        // One more challenge: type of id may not be type of property we are expecting
        // later on; specifically, numeric ids vs Strings.
        JsonDeserializer<Object> idDeser = _objectIdReader.getDeserializer();
        final Object id;

        // Ok, this is bit ridiculous; let's see if conversion is needed:
        if (idDeser.handledType() == rawId.getClass()) {
            // nope: already same type
            id = rawId;
        } else {
            id = _convertObjectId(p, ctxt, rawId, idDeser);
        }

        ReadableObjectId roid = ctxt.findObjectId(id, _objectIdReader.generator, _objectIdReader.resolver);
        roid.bindItem(pojo);
        // also: may need to set a property value as well
        SettableBeanProperty idProp = _objectIdReader.idProperty;
        if (idProp != null) {
            return idProp.setAndReturn(pojo, id);
        }
        return pojo;
    }

    /**
     * Helper method we need to do necessary conversion from whatever native object id
     * type is, into declared type that Jackson internals expect. This may be
     * simple cast (for String ids), or something more complicated; in latter
     * case we may need to create bogus content buffer to allow use of
     * id deserializer.
     *
     * @since 2.3
     */
    @SuppressWarnings("resource") // TokenBuffers don't need close, nor parser thereof
    protected Object _convertObjectId(JsonParser p, DeserializationContext ctxt,
            Object rawId, JsonDeserializer<Object> idDeser) throws IOException
    {
        TokenBuffer buf = new TokenBuffer(p, ctxt);
        if (rawId instanceof String) {
            buf.writeString((String) rawId);
        } else if (rawId instanceof Long) {
            buf.writeNumber(((Long) rawId).longValue());
        } else if (rawId instanceof Integer) {
            buf.writeNumber(((Integer) rawId).intValue());
        } else {
            // should we worry about UUIDs? They should be fine, right?
            // 07-Aug-2014, tatu: Maybe, but not necessarily; had issues with
            //   Smile format; [dataformat-smile#19], possibly related.
            // 01-Sep-2016, tatu: For non-JSON, might want to consider `writeEmbeddedObject`
            //   but that won't work for default impl (JSON and most dataformats)
            buf.writeObject(rawId);
        }
        JsonParser bufParser = buf.asParser();
        bufParser.nextToken();
        return idDeser.deserialize(bufParser, ctxt);
    }

    // NOTE: currently only used by standard BeanDeserializer (not Builder-based)
    /**
     * Alternative deserialization method used when we expect to see Object Id;
     * if so, we will need to ensure that the Id is seen before anything
     * else, to ensure that it is available for solving references,
     * even if JSON itself is not ordered that way. This may require
     * buffering in some cases, but usually just a simple lookup to ensure
     * that ordering is correct.
     */
    protected Object deserializeWithObjectId(JsonParser p, DeserializationContext ctxt) throws IOException {
        return deserializeFromObject(p, ctxt);
    }

    /**
     * Method called in cases where it looks like we got an Object Id
     * to parse and use as a reference.
     */
    protected Object deserializeFromObjectId(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        Object id = _objectIdReader.readObjectReference(p, ctxt);
        ReadableObjectId roid = ctxt.findObjectId(id, _objectIdReader.generator, _objectIdReader.resolver);
        // do we have it resolved?
        Object pojo = roid.resolve();
        if (pojo == null) { // not yet; should wait...
            throw new UnresolvedForwardReference(p,
                    "Could not resolve Object Id ["+id+"] (for "+_beanType+").",
                    p.getCurrentLocation(), roid);
        }
        return pojo;
    }

    protected Object deserializeFromObjectUsingNonDefault(JsonParser p,
            DeserializationContext ctxt) throws IOException
    {
        final JsonDeserializer<Object> delegateDeser = _delegateDeserializer();
        if (delegateDeser != null) {
            return _valueInstantiator.createUsingDelegate(ctxt,
                    delegateDeser.deserialize(p, ctxt));
        }
        if (_propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(p, ctxt);
        }
        // 25-Jan-2017, tatu: We do not actually support use of Creators for non-static
        //   inner classes -- with one and only one exception; that of default constructor!
        //   -- so let's indicate it
        Class<?> raw = _beanType.getRawClass();
        if (ClassUtil.isNonStaticInnerClass(raw)) {
            return ctxt.handleMissingInstantiator(raw, null, p,
"can only instantiate non-static inner class by using default, no-argument constructor");
        }
        return ctxt.handleMissingInstantiator(raw, getValueInstantiator(), p,
                "cannot deserialize from Object value (no delegate- or property-based Creator)");
    }

    protected abstract Object _deserializeUsingPropertyBased(final JsonParser p,
            final DeserializationContext ctxt) throws IOException;

    public Object deserializeFromNumber(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        // First things first: id Object Id is used, most likely that's it
        if (_objectIdReader != null) {
            return deserializeFromObjectId(p, ctxt);
        }
        final JsonDeserializer<Object> delegateDeser = _delegateDeserializer();
        NumberType nt = p.getNumberType();
        if (nt == NumberType.INT) {
            if (delegateDeser != null) {
                if (!_valueInstantiator.canCreateFromInt()) {
                    Object bean = _valueInstantiator.createUsingDelegate(ctxt,
                            delegateDeser.deserialize(p, ctxt));
                    if (_injectables != null) {
                        injectValues(ctxt, bean);
                    }
                    return bean;
                }
            }
            return _valueInstantiator.createFromInt(ctxt, p.getIntValue());
        }
        if (nt == NumberType.LONG) {
            if (delegateDeser != null) {
                if (!_valueInstantiator.canCreateFromInt()) {
                    Object bean = _valueInstantiator.createUsingDelegate(ctxt,
                            delegateDeser.deserialize(p, ctxt));
                    if (_injectables != null) {
                        injectValues(ctxt, bean);
                    }
                    return bean;
                }
            }
            return _valueInstantiator.createFromLong(ctxt, p.getLongValue());
        }
        // actually, could also be BigInteger, so:
        if (delegateDeser != null) {
            Object bean = _valueInstantiator.createUsingDelegate(ctxt,
                    delegateDeser.deserialize(p, ctxt));
            if (_injectables != null) {
                injectValues(ctxt, bean);
            }
            return bean;
        }
        return ctxt.handleMissingInstantiator(handledType(), getValueInstantiator(), p,
                "no suitable creator method found to deserialize from Number value (%s)",
                p.getNumberValue());
    }

    public Object deserializeFromString(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        // First things first: id Object Id is used, most likely that's it
        if (_objectIdReader != null) {
            return deserializeFromObjectId(p, ctxt);
        }
        // Bit complicated if we have delegating creator; may need to use it,
        // or might not...
        JsonDeserializer<Object> delegateDeser = _delegateDeserializer();
        if (delegateDeser != null) {
            if (!_valueInstantiator.canCreateFromString()) {
                Object bean = _valueInstantiator.createUsingDelegate(ctxt,
                        delegateDeser.deserialize(p, ctxt));
                if (_injectables != null) {
                    injectValues(ctxt, bean);
                }
                return bean;
            }
        }
        return _valueInstantiator.createFromString(ctxt, p.getText());
    }

    /**
     * Method called to deserialize POJO value from a JSON floating-point
     * number.
     */
    public Object deserializeFromDouble(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        NumberType t = p.getNumberType();
        // no separate methods for taking float...
        if ((t == NumberType.DOUBLE) || (t == NumberType.FLOAT)) {
            JsonDeserializer<Object> delegateDeser = _delegateDeserializer();
            if (delegateDeser != null) {
                if (!_valueInstantiator.canCreateFromDouble()) {
                    Object bean = _valueInstantiator.createUsingDelegate(ctxt,
                            delegateDeser.deserialize(p, ctxt));
                    if (_injectables != null) {
                        injectValues(ctxt, bean);
                    }
                    return bean;
                }
            }
            return _valueInstantiator.createFromDouble(ctxt, p.getDoubleValue());
        }
        // actually, could also be BigDecimal, so:
        JsonDeserializer<Object> delegateDeser = _delegateDeserializer();
        if (delegateDeser != null) {
            return _valueInstantiator.createUsingDelegate(ctxt,
                    delegateDeser.deserialize(p, ctxt));
        }
        return ctxt.handleMissingInstantiator(handledType(), getValueInstantiator(), p,
                "no suitable creator method found to deserialize from Number value (%s)",
                p.getNumberValue());
    }

    /**
     * Method called to deserialize POJO value from a JSON boolean value (true, false)
     */
    public Object deserializeFromBoolean(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        JsonDeserializer<Object> delegateDeser = _delegateDeserializer();
        if (delegateDeser != null) {
            if (!_valueInstantiator.canCreateFromBoolean()) {
                Object bean = _valueInstantiator.createUsingDelegate(ctxt,
                        delegateDeser.deserialize(p, ctxt));
                if (_injectables != null) {
                    injectValues(ctxt, bean);
                }
                return bean;
            }
        }
        boolean value = (p.getCurrentToken() == JsonToken.VALUE_TRUE);
        return _valueInstantiator.createFromBoolean(ctxt, value);
    }

    public Object deserializeFromArray(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        // note: cannot call `_delegateDeserializer()` since order reversed here:
        JsonDeserializer<Object> delegateDeser = _arrayDelegateDeserializer;
        // fallback to non-array delegate
        if ((delegateDeser != null) || ((delegateDeser = _delegateDeserializer) != null)) {
            Object bean = _valueInstantiator.createUsingArrayDelegate(ctxt,
                    delegateDeser.deserialize(p, ctxt));
            if (_injectables != null) {
                injectValues(ctxt, bean);
            }
            return bean;
        }
        if (ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            JsonToken t = p.nextToken();
            if (t == JsonToken.END_ARRAY && ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                return null;
            }
            final Object value = deserialize(p, ctxt);
            if (p.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(p, ctxt);
            }
            return value;
        }
        if (ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
            JsonToken t = p.nextToken();
            if (t == JsonToken.END_ARRAY) {
                return null;
            }
            return ctxt.handleUnexpectedToken(handledType(),
                    JsonToken.START_ARRAY, p, null);
        }
        return ctxt.handleUnexpectedToken(handledType(), p);
    }

    public Object deserializeFromEmbedded(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        // First things first: id Object Id is used, most likely that's it; specifically,
        // true for UUIDs when written as binary (with Smile, other binary formats)
        if (_objectIdReader != null) {
            return deserializeFromObjectId(p, ctxt);
        }
        // 26-Jul-2017, tatu: as per [databind#1711] need to support delegating case too
        JsonDeserializer<Object> delegateDeser = _delegateDeserializer();
        if (delegateDeser != null) {
            if (!_valueInstantiator.canCreateFromString()) {
                Object bean = _valueInstantiator.createUsingDelegate(ctxt,
                        delegateDeser.deserialize(p, ctxt));
                if (_injectables != null) {
                    injectValues(ctxt, bean);
                }
                return bean;
            }
        }
        // TODO: maybe add support for ValueInstantiator, embedded?

        // 26-Jul-2017, tatu: related to [databind#1711], let's actually verify assignment
        //    compatibility before returning. Bound to catch misconfigured cases and produce
        //    more meaningful exceptions.
        Object value = p.getEmbeddedObject();
        if (value != null) {
            if (!_beanType.isTypeOrSuperTypeOf(value.getClass())) {
                // allow this to be handled...
                value = ctxt.handleWeirdNativeValue(_beanType, value, p);
            }
        }
        return value;
    }

    /**
     * @since 2.9
     */
    private final JsonDeserializer<Object> _delegateDeserializer() {
        JsonDeserializer<Object> deser = _delegateDeserializer;
        if (deser == null) {
            deser = _arrayDelegateDeserializer;
        }
        return deser;
    }

    /*
    /**********************************************************
    /* Overridable helper methods
    /**********************************************************
     */

    protected void injectValues(DeserializationContext ctxt, Object bean)
        throws IOException
    {
        for (ValueInjector injector : _injectables) {
            injector.inject(ctxt, bean);
        }
    }

    /**
     * Method called to handle set of one or more unknown properties,
     * stored in their entirety in given {@link TokenBuffer}
     * (as field entries, name and value).
     */
    @SuppressWarnings("resource")
    protected Object handleUnknownProperties(DeserializationContext ctxt,
            Object bean, TokenBuffer unknownTokens)
        throws IOException
    {
        // First: add closing END_OBJECT as marker
        unknownTokens.writeEndObject();

        // note: buffer does NOT have starting START_OBJECT
        JsonParser bufferParser = unknownTokens.asParser();
        while (bufferParser.nextToken() != JsonToken.END_OBJECT) {
            String propName = bufferParser.getCurrentName();
            // Unknown: let's call handler method
            bufferParser.nextToken();
            handleUnknownProperty(bufferParser, ctxt, bean, propName);
        }
        return bean;
    }

    /**
     * Helper method called for an unknown property, when using "vanilla"
     * processing.
     */
    protected void handleUnknownVanilla(JsonParser p, DeserializationContext ctxt,
            Object bean, String propName)
        throws IOException
    {
        if (_ignorableProps != null && _ignorableProps.contains(propName)) {
            handleIgnoredProperty(p, ctxt, bean, propName);
        } else if (_anySetter != null) {
            try {
               // should we consider return type of any setter?
                _anySetter.deserializeAndSet(p, ctxt, bean, propName);
            } catch (Exception e) {
                wrapAndThrow(e, bean, propName, ctxt);
            }
        } else {
            // Unknown: let's call handler method
            handleUnknownProperty(p, ctxt, bean, propName);         
        }
    }

    /**
     * Method called when a JSON property is encountered that has not matching
     * setter, any-setter or field, and thus cannot be assigned.
     */
    @Override
    protected void handleUnknownProperty(JsonParser p, DeserializationContext ctxt,
            Object beanOrClass, String propName)
        throws IOException
    {
        if (_ignoreAllUnknown) {
            p.skipChildren();
            return;
        }
        if (_ignorableProps != null && _ignorableProps.contains(propName)) {
            handleIgnoredProperty(p, ctxt, beanOrClass, propName);
        }
        // Otherwise use default handling (call handler(s); if not
        // handled, throw exception or skip depending on settings)
        super.handleUnknownProperty(p, ctxt, beanOrClass, propName);
    }

    /**
     * Method called when an explicitly ignored property (one specified with a
     * name to match, either by property annotation or class annotation) is encountered.
     *
     * @since 2.3
     */
    protected void handleIgnoredProperty(JsonParser p, DeserializationContext ctxt,
            Object beanOrClass, String propName)
        throws IOException
    {
        if (ctxt.isEnabled(DeserializationFeature.FAIL_ON_IGNORED_PROPERTIES)) {
            throw IgnoredPropertyException.from(p, beanOrClass, propName, getKnownPropertyNames());
        }
        p.skipChildren();
    }

    /**
     * Method called in cases where we may have polymorphic deserialization
     * case: that is, type of Creator-constructed bean is not the type
     * of deserializer itself. It should be a sub-class or implementation
     * class; either way, we may have more specific deserializer to use
     * for handling it.
     *
     * @param p (optional) If not null, parser that has more properties to handle
     *   (in addition to buffered properties); if null, all properties are passed
     *   in buffer
     */
    @SuppressWarnings("resource")
    protected Object handlePolymorphic(JsonParser p, DeserializationContext ctxt,                                          
            Object bean, TokenBuffer unknownTokens)
        throws IOException
    {  
        // First things first: maybe there is a more specific deserializer available?
        JsonDeserializer<Object> subDeser = _findSubclassDeserializer(ctxt, bean, unknownTokens);
        if (subDeser != null) {
            if (unknownTokens != null) {
                // need to add END_OBJECT marker first
                unknownTokens.writeEndObject();
                JsonParser p2 = unknownTokens.asParser();
                p2.nextToken(); // to get to first data field
                bean = subDeser.deserialize(p2, ctxt, bean);
            }
            // Original parser may also have some leftovers
            if (p != null) {
                bean = subDeser.deserialize(p, ctxt, bean);
            }
            return bean;
        }
        // nope; need to use this deserializer. Unknowns we've seen so far?
        if (unknownTokens != null) {
            bean = handleUnknownProperties(ctxt, bean, unknownTokens);
        }
        // and/or things left to process via main parser?
        if (p != null) {
            bean = deserialize(p, ctxt, bean);
        }
        return bean;
    }

    /**
     * Helper method called to (try to) locate deserializer for given sub-type of
     * type that this deserializer handles.
     */
    protected JsonDeserializer<Object> _findSubclassDeserializer(DeserializationContext ctxt,
            Object bean, TokenBuffer unknownTokens)
        throws IOException
    {  
        JsonDeserializer<Object> subDeser;

        // First: maybe we have already created sub-type deserializer?
        synchronized (this) {
            subDeser = (_subDeserializers == null) ? null : _subDeserializers.get(new ClassKey(bean.getClass()));
        }
        if (subDeser != null) {
            return subDeser;
        }
        // If not, maybe we can locate one. First, need provider
        JavaType type = ctxt.constructType(bean.getClass());
        /* 30-Jan-2012, tatu: Ideally we would be passing referring
         *   property; which in theory we could keep track of via
         *   ResolvableDeserializer (if we absolutely must...).
         *   But for now, let's not bother.
         */
//        subDeser = ctxt.findValueDeserializer(type, _property);
        subDeser = ctxt.findRootValueDeserializer(type);
        // Also, need to cache it
        if (subDeser != null) {
            synchronized (this) {
                if (_subDeserializers == null) {
                    _subDeserializers = new HashMap<ClassKey,JsonDeserializer<Object>>();;
                }
                _subDeserializers.put(new ClassKey(bean.getClass()), subDeser);
            }            
        }
        return subDeser;
    }

    /*
    /**********************************************************
    /* Helper methods for error reporting
    /**********************************************************
     */

    /**
     * Method that will modify caught exception (passed in as argument)
     * as necessary to include reference information, and to ensure it
     * is a subtype of {@link IOException}, or an unchecked exception.
     *<p>
     * Rules for wrapping and unwrapping are bit complicated; essentially:
     *<ul>
     * <li>Errors are to be passed as is (if uncovered via unwrapping)
     * <li>"Plain" IOExceptions (ones that are not of type
     *   {@link JsonMappingException} are to be passed as is
     *</ul>
     */
    public void wrapAndThrow(Throwable t, Object bean, String fieldName, DeserializationContext ctxt)
        throws IOException
    {
        int PROBE_START_LINE_1711 = 1711;
		Throwable p_t_2061_line_1711 = t;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2064_line_1711 = ctxt;
		Throwable bean_deserializer_base_1_expr148_line_1711 = throwOrReturnThrowable(p_t_2061_line_1711,
				p_ctxt_2064_line_1711);
		Object p_bean_2062_line_1711 = bean;
		String p_field_name_2063_line_1711 = fieldName;
		com.fasterxml.jackson.databind.JsonMappingException bean_deserializer_base_1_expr147_line_1711 = JsonMappingException
				.wrapWithPath(bean_deserializer_base_1_expr148_line_1711, p_bean_2062_line_1711,
						p_field_name_2063_line_1711);
		int PROBE_END_LINE_1711 = 1711;
		// Need to add reference information
        throw bean_deserializer_base_1_expr147_line_1711;
    }

    private Throwable throwOrReturnThrowable(Throwable t, DeserializationContext ctxt) 
        throws IOException
    {
        /* 05-Mar-2009, tatu: But one nasty edge is when we get
         *   StackOverflow: usually due to infinite loop. But that
         *   often gets hidden within an InvocationTargetException...
         */
        while (true) {
            int PROBE_START_LINE_1721 = 1721;
			Throwable p_t_2065_line_1721 = t;
			boolean bean_deserializer_base_1_expr150_line_1721 = p_t_2065_line_1721 instanceof InvocationTargetException;
			boolean bean_deserializer_base_1_expr151_line_1721 = true;
			if (bean_deserializer_base_1_expr150_line_1721) {
				Throwable p_t_2065_line_1721_v1 = t;
				Throwable bean_deserializer_base_1_expr152_line_1721 = p_t_2065_line_1721_v1.getCause();
				bean_deserializer_base_1_expr151_line_1721 = bean_deserializer_base_1_expr152_line_1721 != null;
			}
			boolean bean_deserializer_base_1_expr149_line_1721 = bean_deserializer_base_1_expr150_line_1721
					&& bean_deserializer_base_1_expr151_line_1721;
			if (!(bean_deserializer_base_1_expr149_line_1721)) {
				break;
			}
			int PROBE_END_LINE_1721 = 1721;
			t = t.getCause();
        }
        int PROBE_START_LINE_1725 = 1725;
		Throwable p_t_2065_line_1725 = t;
		int PROBE_END_LINE_1725 = 1725;
		// Errors to be passed as is
        ClassUtil.throwIfError(p_t_2065_line_1725);
        int PROBE_START_LINE_1726 = 1726;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2066_line_1726 = ctxt;
		boolean bean_deserializer_base_1_expr156_line_1726 = p_ctxt_2066_line_1726 == null;
		boolean bean_deserializer_base_1_expr155_line_1726 = (bean_deserializer_base_1_expr156_line_1726);
		boolean bean_deserializer_base_1_expr157_line_1726 = false;
		if (!bean_deserializer_base_1_expr155_line_1726) {
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2066_line_1726_v1 = ctxt;
			com.fasterxml.jackson.databind.DeserializationFeature q_wrap_exceptions_74_line_1726 = DeserializationFeature.WRAP_EXCEPTIONS;
			bean_deserializer_base_1_expr157_line_1726 = p_ctxt_2066_line_1726_v1
					.isEnabled(q_wrap_exceptions_74_line_1726);
		}
		boolean bean_deserializer_base_1_expr154_line_1726 = bean_deserializer_base_1_expr155_line_1726
				|| bean_deserializer_base_1_expr157_line_1726;
		int PROBE_END_LINE_1726 = 1726;
		boolean wrap = bean_deserializer_base_1_expr154_line_1726;
        int PROBE_START_LINE_1728 = 1734;
		Throwable p_t_2065_line_1728 = t;
		boolean bean_deserializer_base_1_expr158_line_1728 = p_t_2065_line_1728 instanceof IOException;
		int PROBE_END_LINE_1728 = 1734;
		// Ditto for IOExceptions; except we may want to wrap JSON exceptions
        if (bean_deserializer_base_1_expr158_line_1728) {
            int PROBE_START_LINE_1729 = 1731;
			boolean v_wrap_2067_line_1729 = wrap;
			boolean bean_deserializer_base_1_expr160_line_1729 = !v_wrap_2067_line_1729;
			boolean bean_deserializer_base_1_expr161_line_1729 = false;
			if (!bean_deserializer_base_1_expr160_line_1729) {
				Throwable p_t_2065_line_1729 = t;
				boolean bean_deserializer_base_1_expr163_line_1729 = p_t_2065_line_1729 instanceof JsonProcessingException;
				boolean bean_deserializer_base_1_expr162_line_1729 = (bean_deserializer_base_1_expr163_line_1729);
				bean_deserializer_base_1_expr161_line_1729 = !bean_deserializer_base_1_expr162_line_1729;
			}
			boolean bean_deserializer_base_1_expr159_line_1729 = bean_deserializer_base_1_expr160_line_1729
					|| bean_deserializer_base_1_expr161_line_1729;
			int PROBE_END_LINE_1729 = 1731;
			if (bean_deserializer_base_1_expr159_line_1729) {
                throw (IOException) t;
            }
        } else if (!wrap) { // [JACKSON-407] -- allow disabling wrapping for unchecked exceptions
            ClassUtil.throwIfRTE(t);
        }
        int PROBE_START_LINE_1735 = 1735;
		Throwable p_t_2065_line_1735 = t;
		int PROBE_END_LINE_1735 = 1735;
		return p_t_2065_line_1735;
    }

    protected Object wrapInstantiationProblem(Throwable t, DeserializationContext ctxt)
        throws IOException
    {
        while (t instanceof InvocationTargetException && t.getCause() != null) {
            t = t.getCause();
        }
        // Errors and "plain" IOExceptions to be passed as is
        ClassUtil.throwIfError(t);
        if (t instanceof IOException) {
            // Since we have no more information to add, let's not actually wrap..
            throw (IOException) t;
        }
        boolean wrap = (ctxt == null) || ctxt.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (!wrap) { // [JACKSON-407] -- allow disabling wrapping for unchecked exceptions
            ClassUtil.throwIfRTE(t);
        }
        return ctxt.handleInstantiationProblem(_beanType.getRawClass(), null, t);
    }
}
