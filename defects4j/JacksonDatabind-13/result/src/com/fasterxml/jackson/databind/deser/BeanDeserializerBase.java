package com.fasterxml.jackson.databind.deser;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.*;
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
import java.util.HashSet;
import com.fasterxml.jackson.databind.util.Annotations;
import java.util.List;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.Map;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

/**
 * Base class for <code>BeanDeserializer</code>.
 */
public abstract class BeanDeserializerBase
    extends StdDeserializer<Object>
    implements ContextualDeserializer, ResolvableDeserializer,
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
     * Annotations from the bean class: used for accessing
     * annotations during resolution
     * (see {@link #resolve}) and
     * contextualization (see {@link #createContextual})
     *<p> 
     * Transient since annotations only used during construction.
     */
    final private transient Annotations _classAnnotations;

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
    final protected HashSet<String> _ignorableProps;

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
            HashSet<String> ignorableProps, boolean ignoreAllUnknown,
            boolean hasViews)
    {
        super(beanDesc.getType());

        int PROBE_START_LINE_207 = 207;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1496_line_207 = beanDesc;
		AnnotatedClass bean_deserializer_base_1_expr4_line_207 = p_bean_desc_1496_line_207.getClassInfo();
		int PROBE_END_LINE_207 = 207;
		AnnotatedClass ac = bean_deserializer_base_1_expr4_line_207;
        int PROBE_START_LINE_208 = 208;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1502_line_208 = ac;
		com.fasterxml.jackson.databind.util.Annotations bean_deserializer_base_1_expr6_line_208 = v_ac_1502_line_208
				.getAnnotations();
		int PROBE_END_LINE_208 = 208;
		_classAnnotations = bean_deserializer_base_1_expr6_line_208;       
        int PROBE_START_LINE_209 = 209;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1496_line_209 = beanDesc;
		com.fasterxml.jackson.databind.JavaType bean_deserializer_base_1_expr8_line_209 = p_bean_desc_1496_line_209
				.getType();
		int PROBE_END_LINE_209 = 209;
		_beanType = bean_deserializer_base_1_expr8_line_209;
        int PROBE_START_LINE_210 = 210;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1495_line_210 = builder;
		com.fasterxml.jackson.databind.deser.ValueInstantiator bean_deserializer_base_1_expr10_line_210 = p_builder_1495_line_210
				.getValueInstantiator();
		int PROBE_END_LINE_210 = 210;
		_valueInstantiator = bean_deserializer_base_1_expr10_line_210;
        
        int PROBE_START_LINE_212 = 212;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap p_properties_1497_line_212 = properties;
		int PROBE_END_LINE_212 = 212;
		_beanProperties = p_properties_1497_line_212;
        int PROBE_START_LINE_213 = 213;
		Map<String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_back_refs_1498_line_213 = backRefs;
		int PROBE_END_LINE_213 = 213;
		_backRefs = p_back_refs_1498_line_213;
        int PROBE_START_LINE_214 = 214;
		HashSet<String> p_ignorable_props_1499_line_214 = ignorableProps;
		int PROBE_END_LINE_214 = 214;
		_ignorableProps = p_ignorable_props_1499_line_214;
        int PROBE_START_LINE_215 = 215;
		boolean p_ignore_all_unknown_1500_line_215 = ignoreAllUnknown;
		int PROBE_END_LINE_215 = 215;
		_ignoreAllUnknown = p_ignore_all_unknown_1500_line_215;

        int PROBE_START_LINE_217 = 217;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1495_line_217 = builder;
		com.fasterxml.jackson.databind.deser.SettableAnyProperty bean_deserializer_base_1_expr16_line_217 = p_builder_1495_line_217
				.getAnySetter();
		int PROBE_END_LINE_217 = 217;
		_anySetter = bean_deserializer_base_1_expr16_line_217;
        int PROBE_START_LINE_218 = 218;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1495_line_218 = builder;
		List<ValueInjector> bean_deserializer_base_1_expr17_line_218 = p_builder_1495_line_218.getInjectables();
		int PROBE_END_LINE_218 = 218;
		List<ValueInjector> injectables = bean_deserializer_base_1_expr17_line_218;
        int PROBE_START_LINE_219 = 220;
		List<com.fasterxml.jackson.databind.deser.impl.ValueInjector> v_injectables_1509_line_219 = injectables;
		boolean bean_deserializer_base_1_expr23_line_219 = v_injectables_1509_line_219 == null;
		boolean bean_deserializer_base_1_expr24_line_219 = false;
		if (!bean_deserializer_base_1_expr23_line_219) {
			List<com.fasterxml.jackson.databind.deser.impl.ValueInjector> v_injectables_1509_line_219_v1 = injectables;
			bean_deserializer_base_1_expr24_line_219 = v_injectables_1509_line_219_v1.isEmpty();
		}
		boolean bean_deserializer_base_1_expr22_line_219 = bean_deserializer_base_1_expr23_line_219
				|| bean_deserializer_base_1_expr24_line_219;
		boolean bean_deserializer_base_1_expr20_line_219 = (bean_deserializer_base_1_expr22_line_219);
		com.fasterxml.jackson.databind.deser.impl.ValueInjector[] bean_deserializer_base_1_expr19_line_219 = bean_deserializer_base_1_expr20_line_219
				? null
				: injectables.toArray(new ValueInjector[injectables.size()]);
		int PROBE_END_LINE_219 = 220;
		_injectables = bean_deserializer_base_1_expr19_line_219;
        int PROBE_START_LINE_221 = 221;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1495_line_221 = builder;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader bean_deserializer_base_1_expr26_line_221 = p_builder_1495_line_221
				.getObjectIdReader();
		int PROBE_END_LINE_221 = 221;
		_objectIdReader = bean_deserializer_base_1_expr26_line_221;
        int PROBE_START_LINE_222 = 226;
		com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler f__unwrapped_property_handler_1510_line_222 = _unwrappedPropertyHandler;
		boolean bean_deserializer_base_1_expr30_line_222 = f__unwrapped_property_handler_1510_line_222 != null;
		boolean bean_deserializer_base_1_expr29_line_222 = (bean_deserializer_base_1_expr30_line_222);
		boolean bean_deserializer_base_1_expr28_line_222 = bean_deserializer_base_1_expr29_line_222
				|| _valueInstantiator.canCreateUsingDelegate() || _valueInstantiator.canCreateFromObjectWith()
				|| !_valueInstantiator.canCreateUsingDefault();
		int PROBE_END_LINE_222 = 226;
		_nonStandardCreation = bean_deserializer_base_1_expr28_line_222
            ;

        int PROBE_START_LINE_229 = 229;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1496_line_229 = beanDesc;
		JsonFormat.Value bean_deserializer_base_1_expr31_line_229 = p_bean_desc_1496_line_229.findExpectedFormat(null);
		int PROBE_END_LINE_229 = 229;
		// Any transformation we may need to apply?
        JsonFormat.Value format = bean_deserializer_base_1_expr31_line_229;
        int PROBE_START_LINE_230 = 230;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1511_line_230 = format;
		boolean bean_deserializer_base_1_expr36_line_230 = v_format_1511_line_230 == null;
		boolean bean_deserializer_base_1_expr34_line_230 = (bean_deserializer_base_1_expr36_line_230);
		com.fasterxml.jackson.annotation.JsonFormat.Shape bean_deserializer_base_1_expr35_line_230 = null;
		if (!bean_deserializer_base_1_expr34_line_230) {
			com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1511_line_230_v1 = format;
			bean_deserializer_base_1_expr35_line_230 = v_format_1511_line_230_v1.getShape();
		}
		com.fasterxml.jackson.annotation.JsonFormat.Shape bean_deserializer_base_1_expr33_line_230 = bean_deserializer_base_1_expr34_line_230
				? null
				: bean_deserializer_base_1_expr35_line_230;
		int PROBE_END_LINE_230 = 230;
		_serializationShape = bean_deserializer_base_1_expr33_line_230;

        int PROBE_START_LINE_232 = 232;
		boolean p_has_views_1501_line_232 = hasViews;
		int PROBE_END_LINE_232 = 232;
		_needViewProcesing = p_has_views_1501_line_232;
        int PROBE_START_LINE_233 = 238;
		boolean f__non_standard_creation_1466_line_233 = _nonStandardCreation;
		boolean bean_deserializer_base_1_expr40_line_233 = !f__non_standard_creation_1466_line_233;
		boolean bean_deserializer_base_1_expr39_line_233 = bean_deserializer_base_1_expr40_line_233
				&& (_injectables == null) && !_needViewProcesing && (_objectIdReader == null);
		int PROBE_END_LINE_233 = 238;
		_vanillaProcessing = bean_deserializer_base_1_expr39_line_233
                ;
    }

    protected BeanDeserializerBase(BeanDeserializerBase src) {
        this(src, src._ignoreAllUnknown);
    }

    protected BeanDeserializerBase(BeanDeserializerBase src, boolean ignoreAllUnknown)
    {
        super(src._beanType);
        
        _classAnnotations = src._classAnnotations;
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

        _classAnnotations = src._classAnnotations;
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
        
        _classAnnotations = src._classAnnotations;
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

    public BeanDeserializerBase(BeanDeserializerBase src, HashSet<String> ignorableProps)
    {
        super(src._beanType);
        
        _classAnnotations = src._classAnnotations;
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
        _beanProperties = src._beanProperties;
    }
    
    @Override
    public abstract JsonDeserializer<Object> unwrappingDeserializer(NameTransformer unwrapper);

    public abstract BeanDeserializerBase withObjectIdReader(ObjectIdReader oir);

    public abstract BeanDeserializerBase withIgnorableProperties(HashSet<String> ignorableProps);

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
    public void resolve(DeserializationContext ctxt)
        throws JsonMappingException
    {
        ExternalTypeHandler.Builder extTypes = null;
        int PROBE_START_LINE_410 = 425;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_1468_line_410 = _valueInstantiator;
		boolean bean_deserializer_base_1_expr41_line_410 = f__value_instantiator_1468_line_410
				.canCreateFromObjectWith();
		int PROBE_END_LINE_410 = 425;
		// if ValueInstantiator can use "creator" approach, need to resolve it here...
        if (bean_deserializer_base_1_expr41_line_410) {
            SettableBeanProperty[] creatorProps = _valueInstantiator.getFromObjectArguments(ctxt.getConfig());
            _propertyBasedCreator = PropertyBasedCreator.construct(ctxt, _valueInstantiator, creatorProps);
            // also: need to try to resolve 'external' type ids...
            for (SettableBeanProperty prop : _propertyBasedCreator.properties()) {
                if (prop.hasValueTypeDeserializer()) {
                    TypeDeserializer typeDeser = prop.getValueTypeDeserializer();
                    if (typeDeser.getTypeInclusion() == JsonTypeInfo.As.EXTERNAL_PROPERTY) {
                        if (extTypes == null) {
                            extTypes = new ExternalTypeHandler.Builder();
                        }
                        extTypes.addExternal(prop, typeDeser);
                    }
                }
            }
        }

        UnwrappedPropertyHandler unwrapped = null;

        int PROBE_START_LINE_429 = 492;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1473_line_429 = _beanProperties;
		int PROBE_END_LINE_429 = 492;
		for (SettableBeanProperty origProp : f__bean_properties_1473_line_429) {
            int PROBE_START_LINE_430 = 430;
			SettableBeanProperty v_orig_prop_1528_line_430 = origProp;
			int PROBE_END_LINE_430 = 430;
			SettableBeanProperty prop = v_orig_prop_1528_line_430;
            int PROBE_START_LINE_432 = 449;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_432 = prop;
			boolean bean_deserializer_base_1_expr43_line_432 = v_prop_1529_line_432.hasValueDeserializer();
			boolean bean_deserializer_base_1_expr42_line_432 = !bean_deserializer_base_1_expr43_line_432;
			int PROBE_END_LINE_432 = 449;
			// May already have deserializer from annotations, if so, skip:
            if (bean_deserializer_base_1_expr42_line_432) {
                int PROBE_START_LINE_434 = 434;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1525_line_434 = ctxt;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_434 = prop;
				JsonDeserializer<?> bean_deserializer_base_1_expr44_line_434 = findConvertingDeserializer(
						p_ctxt_1525_line_434, v_prop_1529_line_434);
				int PROBE_END_LINE_434 = 434;
				// [Issue#125]: allow use of converters
                JsonDeserializer<?> deser = bean_deserializer_base_1_expr44_line_434;
                int PROBE_START_LINE_435 = 437;
				JsonDeserializer<?> v_deser_1530_line_435 = deser;
				boolean bean_deserializer_base_1_expr45_line_435 = v_deser_1530_line_435 == null;
				int PROBE_END_LINE_435 = 437;
				if (bean_deserializer_base_1_expr45_line_435) {
                    int PROBE_START_LINE_436 = 436;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1525_line_436 = ctxt;
					com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_436 = prop;
					com.fasterxml.jackson.databind.JavaType bean_deserializer_base_1_expr48_line_436 = v_prop_1529_line_436
							.getType();
					com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_436_v1 = prop;
					JsonDeserializer<Object> bean_deserializer_base_1_expr47_line_436 = findDeserializer(
							p_ctxt_1525_line_436, bean_deserializer_base_1_expr48_line_436, v_prop_1529_line_436_v1);
					int PROBE_END_LINE_436 = 436;
					deser = bean_deserializer_base_1_expr47_line_436;
                }
                int PROBE_START_LINE_438 = 438;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_438 = prop;
				JsonDeserializer<?> v_deser_1530_line_438 = deser;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr50_line_438 = v_prop_1529_line_438
						.withValueDeserializer(v_deser_1530_line_438);
				int PROBE_END_LINE_438 = 438;
				prop = bean_deserializer_base_1_expr50_line_438;
            } else { // may need contextual version
                int PROBE_START_LINE_440 = 440;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_440 = prop;
				JsonDeserializer<Object> bean_deserializer_base_1_expr51_line_440 = v_prop_1529_line_440
						.getValueDeserializer();
				int PROBE_END_LINE_440 = 440;
				JsonDeserializer<Object> deser = bean_deserializer_base_1_expr51_line_440;
                int PROBE_START_LINE_444 = 445;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1525_line_444 = ctxt;
				JsonDeserializer<Object> v_deser_1531_line_444 = deser;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_444 = prop;
				JsonDeserializer<?> bean_deserializer_base_1_expr52_line_444 = p_ctxt_1525_line_444
						.handlePrimaryContextualization(v_deser_1531_line_444, v_prop_1529_line_444, prop.getType());
				int PROBE_END_LINE_444 = 445;
				/* Important! This is the only place where actually handle "primary"
                 * property deserializers -- call is different from other places.
                 */
                JsonDeserializer<?> cd = bean_deserializer_base_1_expr52_line_444;
                int PROBE_START_LINE_446 = 448;
				JsonDeserializer<?> v_cd_1532_line_446 = cd;
				JsonDeserializer<Object> v_deser_1531_line_446 = deser;
				boolean bean_deserializer_base_1_expr54_line_446 = v_cd_1532_line_446 != v_deser_1531_line_446;
				int PROBE_END_LINE_446 = 448;
				if (bean_deserializer_base_1_expr54_line_446) {
                    prop = prop.withValueDeserializer(cd);
                }
            }
            int PROBE_START_LINE_451 = 451;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1525_line_451 = ctxt;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_451 = prop;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr56_line_451 = _resolveManagedReferenceProperty(
					p_ctxt_1525_line_451, v_prop_1529_line_451);
			int PROBE_END_LINE_451 = 451;
			// [JACKSON-235]: need to link managed references with matching back references
            prop = bean_deserializer_base_1_expr56_line_451;

            int PROBE_START_LINE_454 = 456;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_454 = prop;
			boolean bean_deserializer_base_1_expr59_line_454 = v_prop_1529_line_454 instanceof ManagedReferenceProperty;
			boolean bean_deserializer_base_1_expr58_line_454 = (bean_deserializer_base_1_expr59_line_454);
			boolean bean_deserializer_base_1_expr57_line_454 = !bean_deserializer_base_1_expr58_line_454;
			int PROBE_END_LINE_454 = 456;
			// issue #351: need to wrap properties that require object id resolution.
            if (bean_deserializer_base_1_expr57_line_454) {
                int PROBE_START_LINE_455 = 455;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1525_line_455 = ctxt;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_455 = prop;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr61_line_455 = _resolvedObjectIdProperty(
						p_ctxt_1525_line_455, v_prop_1529_line_455);
				int PROBE_END_LINE_455 = 455;
				prop = bean_deserializer_base_1_expr61_line_455;
            }
            int PROBE_START_LINE_458 = 458;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1525_line_458 = ctxt;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_458 = prop;
			SettableBeanProperty bean_deserializer_base_1_expr62_line_458 = _resolveUnwrappedProperty(
					p_ctxt_1525_line_458, v_prop_1529_line_458);
			int PROBE_END_LINE_458 = 458;
			// [JACKSON-132]: support unwrapped values (via @JsonUnwrapped)
            SettableBeanProperty u = bean_deserializer_base_1_expr62_line_458;
            int PROBE_START_LINE_459 = 470;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_u_1533_line_459 = u;
			boolean bean_deserializer_base_1_expr63_line_459 = v_u_1533_line_459 != null;
			int PROBE_END_LINE_459 = 470;
			if (bean_deserializer_base_1_expr63_line_459) {
                prop = u;
                if (unwrapped == null) {
                    unwrapped = new UnwrappedPropertyHandler();
                }
                unwrapped.addProperty(prop);
                /* 12-Dec-2014, tatu: As per [databind#647], we will have problems if
                 *    the original property is left in place. So let's remove it now.
                 */
                _beanProperties.remove(prop);
                continue;
            }
            int PROBE_START_LINE_472 = 472;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1525_line_472 = ctxt;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_472 = prop;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_deserializer_base_1_expr65_line_472 = _resolveInnerClassValuedProperty(
					p_ctxt_1525_line_472, v_prop_1529_line_472);
			int PROBE_END_LINE_472 = 472;
			// [JACKSON-594]: non-static inner classes too:
            prop = bean_deserializer_base_1_expr65_line_472;
            int PROBE_START_LINE_473 = 475;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_473 = prop;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_orig_prop_1528_line_473 = origProp;
			boolean bean_deserializer_base_1_expr66_line_473 = v_prop_1529_line_473 != v_orig_prop_1528_line_473;
			int PROBE_END_LINE_473 = 475;
			if (bean_deserializer_base_1_expr66_line_473) {
                int PROBE_START_LINE_474 = 474;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1473_line_474 = _beanProperties;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_474 = prop;
				int PROBE_END_LINE_474 = 474;
				f__bean_properties_1473_line_474.replace(v_prop_1529_line_474);
            }
            
            int PROBE_START_LINE_480 = 491;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1529_line_480 = prop;
			boolean bean_deserializer_base_1_expr68_line_480 = v_prop_1529_line_480.hasValueTypeDeserializer();
			int PROBE_END_LINE_480 = 491;
			/* one more thing: if this property uses "external property" type inclusion
             * (see [JACKSON-453]), it needs different handling altogether
             */
            if (bean_deserializer_base_1_expr68_line_480) {
                TypeDeserializer typeDeser = prop.getValueTypeDeserializer();
                if (typeDeser.getTypeInclusion() == JsonTypeInfo.As.EXTERNAL_PROPERTY) {
                    if (extTypes == null) {
                        extTypes = new ExternalTypeHandler.Builder();
                    }
                    extTypes.addExternal(prop, typeDeser);
                    // In fact, remove from list of known properties to simplify later handling
                    _beanProperties.remove(prop);
                    continue;
                }
            }
        }

        int PROBE_START_LINE_495 = 498;
		com.fasterxml.jackson.databind.deser.SettableAnyProperty f__any_setter_1508_line_495 = _anySetter;
		boolean bean_deserializer_base_1_expr70_line_495 = f__any_setter_1508_line_495 != null;
		boolean bean_deserializer_base_1_expr71_line_495 = true;
		if (bean_deserializer_base_1_expr70_line_495) {
			com.fasterxml.jackson.databind.deser.SettableAnyProperty f__any_setter_1508_line_495_v1 = _anySetter;
			boolean bean_deserializer_base_1_expr72_line_495 = f__any_setter_1508_line_495_v1.hasValueDeserializer();
			bean_deserializer_base_1_expr71_line_495 = !bean_deserializer_base_1_expr72_line_495;
		}
		boolean bean_deserializer_base_1_expr69_line_495 = bean_deserializer_base_1_expr70_line_495
				&& bean_deserializer_base_1_expr71_line_495;
		int PROBE_END_LINE_495 = 498;
		// "any setter" may also need to be resolved now
        if (bean_deserializer_base_1_expr69_line_495) {
            _anySetter = _anySetter.withValueDeserializer(findDeserializer(ctxt,
                    _anySetter.getType(), _anySetter.getProperty()));
        }

        int PROBE_START_LINE_501 = 524;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_1468_line_501 = _valueInstantiator;
		boolean bean_deserializer_base_1_expr73_line_501 = f__value_instantiator_1468_line_501.canCreateUsingDelegate();
		int PROBE_END_LINE_501 = 524;
		// as well as delegate-based constructor:
        if (bean_deserializer_base_1_expr73_line_501) {
            JavaType delegateType = _valueInstantiator.getDelegateType(ctxt.getConfig());
            if (delegateType == null) {
                throw new IllegalArgumentException("Invalid delegate-creator definition for "+_beanType
                        +": value instantiator ("+_valueInstantiator.getClass().getName()
                        +") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            }
            AnnotatedWithParams delegateCreator = _valueInstantiator.getDelegateCreator();
            // Need to create a temporary property to allow contextual deserializers:
            BeanProperty.Std property = new BeanProperty.Std(TEMP_PROPERTY_NAME,
                    delegateType, null, _classAnnotations, delegateCreator,
                    PropertyMetadata.STD_OPTIONAL);

            TypeDeserializer td = delegateType.getTypeHandler();
            if (td == null) {
                td = ctxt.getConfig().findTypeDeserializer(delegateType);
            }
            JsonDeserializer<Object> dd = findDeserializer(ctxt, delegateType, property);
            if (td != null) {
                td = td.forProperty(property);
                dd = new TypeWrappedDeserializer(td, dd);
            }
            _delegateDeserializer = dd;
        }
        
        int PROBE_START_LINE_526 = 530;
		com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.Builder v_ext_types_1526_line_526 = extTypes;
		boolean bean_deserializer_base_1_expr74_line_526 = v_ext_types_1526_line_526 != null;
		int PROBE_END_LINE_526 = 530;
		if (bean_deserializer_base_1_expr74_line_526) {
            _externalTypeIdHandler = extTypes.build();
            // we consider this non-standard, to offline handling
            _nonStandardCreation = true;
        }
        
        int PROBE_START_LINE_532 = 532;
		com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler v_unwrapped_1527_line_532 = unwrapped;
		int PROBE_END_LINE_532 = 532;
		_unwrappedPropertyHandler = v_unwrapped_1527_line_532;
        int PROBE_START_LINE_533 = 535;
		com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler v_unwrapped_1527_line_533 = unwrapped;
		boolean bean_deserializer_base_1_expr76_line_533 = v_unwrapped_1527_line_533 != null;
		int PROBE_END_LINE_533 = 535;
		if (bean_deserializer_base_1_expr76_line_533) { // we consider this non-standard, to offline handling
            _nonStandardCreation = true;
        }

        int PROBE_START_LINE_538 = 538;
		boolean f__vanilla_processing_1451_line_538 = _vanillaProcessing;
		boolean bean_deserializer_base_1_expr79_line_538 = true;
		if (f__vanilla_processing_1451_line_538) {
			boolean f__non_standard_creation_1466_line_538 = _nonStandardCreation;
			bean_deserializer_base_1_expr79_line_538 = !f__non_standard_creation_1466_line_538;
		}
		boolean bean_deserializer_base_1_expr78_line_538 = f__vanilla_processing_1451_line_538
				&& bean_deserializer_base_1_expr79_line_538;
		int PROBE_END_LINE_538 = 538;
		// may need to disable vanilla processing, if unwrapped handling was enabled...
        _vanillaProcessing = bean_deserializer_base_1_expr78_line_538;
    }

    /**
     * Helper method that can be used to see if specified property is annotated
     * to indicate use of a converter for property value (in case of container types,
     * it is container type itself, not key or content type).
     * 
     * @since 2.2
     */
    protected JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext ctxt,
            SettableBeanProperty prop)
        throws JsonMappingException
    {
        int PROBE_START_LINE_552 = 552;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1534_line_552 = ctxt;
		AnnotationIntrospector bean_deserializer_base_1_expr80_line_552 = p_ctxt_1534_line_552
				.getAnnotationIntrospector();
		int PROBE_END_LINE_552 = 552;
		final AnnotationIntrospector intr = bean_deserializer_base_1_expr80_line_552;
        int PROBE_START_LINE_553 = 561;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1536_line_553 = intr;
		boolean bean_deserializer_base_1_expr81_line_553 = v_intr_1536_line_553 != null;
		int PROBE_END_LINE_553 = 561;
		if (bean_deserializer_base_1_expr81_line_553) {
            int PROBE_START_LINE_554 = 554;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1536_line_554 = intr;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1535_line_554 = prop;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember bean_deserializer_base_1_expr83_line_554 = p_prop_1535_line_554
					.getMember();
			Object bean_deserializer_base_1_expr82_line_554 = v_intr_1536_line_554
					.findDeserializationConverter(bean_deserializer_base_1_expr83_line_554);
			int PROBE_END_LINE_554 = 554;
			Object convDef = bean_deserializer_base_1_expr82_line_554;
            int PROBE_START_LINE_555 = 560;
			Object v_conv_def_1537_line_555 = convDef;
			boolean bean_deserializer_base_1_expr84_line_555 = v_conv_def_1537_line_555 != null;
			int PROBE_END_LINE_555 = 560;
			if (bean_deserializer_base_1_expr84_line_555) {
                Converter<Object,Object> conv = ctxt.converterInstance(prop.getMember(), convDef);
                JavaType delegateType = conv.getInputType(ctxt.getTypeFactory());
                JsonDeserializer<?> ser = ctxt.findContextualValueDeserializer(delegateType, prop);
                return new StdDelegatingDeserializer<Object>(conv, delegateType, ser);
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
        int PROBE_START_LINE_576 = 576;
		ObjectIdReader f__object_id_reader_1452_line_576 = _objectIdReader;
		int PROBE_END_LINE_576 = 576;
		ObjectIdReader oir = f__object_id_reader_1452_line_576;
        
        int PROBE_START_LINE_579 = 579;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1538_line_579 = ctxt;
		AnnotationIntrospector bean_deserializer_base_1_expr85_line_579 = p_ctxt_1538_line_579
				.getAnnotationIntrospector();
		int PROBE_END_LINE_579 = 579;
		// First: may have an override for Object Id:
        final AnnotationIntrospector intr = bean_deserializer_base_1_expr85_line_579;
        int PROBE_START_LINE_580 = 581;
		com.fasterxml.jackson.databind.BeanProperty p_property_1539_line_580 = property;
		boolean bean_deserializer_base_1_expr90_line_580 = p_property_1539_line_580 == null;
		boolean bean_deserializer_base_1_expr91_line_580 = false;
		if (!bean_deserializer_base_1_expr90_line_580) {
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1541_line_580 = intr;
			bean_deserializer_base_1_expr91_line_580 = v_intr_1541_line_580 == null;
		}
		boolean bean_deserializer_base_1_expr89_line_580 = bean_deserializer_base_1_expr90_line_580
				|| bean_deserializer_base_1_expr91_line_580;
		boolean bean_deserializer_base_1_expr87_line_580 = (bean_deserializer_base_1_expr89_line_580);
		AnnotatedMember bean_deserializer_base_1_expr86_line_580 = bean_deserializer_base_1_expr87_line_580
				? null
				: property.getMember();
		int PROBE_END_LINE_580 = 581;
		final AnnotatedMember accessor = bean_deserializer_base_1_expr86_line_580;
        int PROBE_START_LINE_582 = 613;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1542_line_582 = accessor;
		boolean bean_deserializer_base_1_expr93_line_582 = v_accessor_1542_line_582 != null;
		boolean bean_deserializer_base_1_expr94_line_582 = true;
		if (bean_deserializer_base_1_expr93_line_582) {
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1541_line_582 = intr;
			bean_deserializer_base_1_expr94_line_582 = v_intr_1541_line_582 != null;
		}
		boolean bean_deserializer_base_1_expr92_line_582 = bean_deserializer_base_1_expr93_line_582
				&& bean_deserializer_base_1_expr94_line_582;
		int PROBE_END_LINE_582 = 613;
		if (bean_deserializer_base_1_expr92_line_582) {
            int PROBE_START_LINE_583 = 583;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1541_line_583 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1542_line_583 = accessor;
			ObjectIdInfo bean_deserializer_base_1_expr95_line_583 = v_intr_1541_line_583
					.findObjectIdInfo(v_accessor_1542_line_583);
			int PROBE_END_LINE_583 = 583;
			ObjectIdInfo objectIdInfo = bean_deserializer_base_1_expr95_line_583;
            int PROBE_START_LINE_584 = 612;
			com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1543_line_584 = objectIdInfo;
			boolean bean_deserializer_base_1_expr96_line_584 = v_object_id_info_1543_line_584 != null;
			int PROBE_END_LINE_584 = 612;
			if (bean_deserializer_base_1_expr96_line_584) { // some code duplication here as well (from BeanDeserializerFactory)
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
                        throw new IllegalArgumentException("Invalid Object Id definition for "
                                +handledType().getName()+": can not find property with name '"+propName+"'");
                    }
                    idType = idProp.getType();
                    idGen = new PropertyBasedObjectIdGenerator(objectIdInfo.getScope());
                } else { // other types need to be simpler
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
        int PROBE_START_LINE_616 = 618;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader v_oir_1540_line_616 = oir;
		boolean bean_deserializer_base_1_expr99_line_616 = v_oir_1540_line_616 != null;
		boolean bean_deserializer_base_1_expr100_line_616 = true;
		if (bean_deserializer_base_1_expr99_line_616) {
			com.fasterxml.jackson.databind.deser.impl.ObjectIdReader v_oir_1540_line_616_v1 = oir;
			com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_1452_line_616 = _objectIdReader;
			bean_deserializer_base_1_expr100_line_616 = v_oir_1540_line_616_v1 != f__object_id_reader_1452_line_616;
		}
		boolean bean_deserializer_base_1_expr98_line_616 = bean_deserializer_base_1_expr99_line_616
				&& bean_deserializer_base_1_expr100_line_616;
		int PROBE_END_LINE_616 = 618;
		if (bean_deserializer_base_1_expr98_line_616) {
            contextual = contextual.withObjectIdReader(oir);
        }
        int PROBE_START_LINE_620 = 626;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1542_line_620 = accessor;
		boolean bean_deserializer_base_1_expr101_line_620 = v_accessor_1542_line_620 != null;
		int PROBE_END_LINE_620 = 626;
		// And possibly add more properties to ignore
        if (bean_deserializer_base_1_expr101_line_620) {
            int PROBE_START_LINE_621 = 621;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1541_line_621 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1542_line_621 = accessor;
			String[] bean_deserializer_base_1_expr102_line_621 = v_intr_1541_line_621
					.findPropertiesToIgnore(v_accessor_1542_line_621);
			int PROBE_END_LINE_621 = 621;
			String[] ignorals = bean_deserializer_base_1_expr102_line_621;
            int PROBE_START_LINE_622 = 625;
			String[] v_ignorals_1545_line_622 = ignorals;
			boolean bean_deserializer_base_1_expr104_line_622 = v_ignorals_1545_line_622 != null;
			boolean bean_deserializer_base_1_expr105_line_622 = true;
			if (bean_deserializer_base_1_expr104_line_622) {
				String[] v_ignorals_1545_line_622_v1 = ignorals;
				int q_length_30_line_622 = v_ignorals_1545_line_622_v1.length;
				bean_deserializer_base_1_expr105_line_622 = q_length_30_line_622 != 0;
			}
			boolean bean_deserializer_base_1_expr103_line_622 = bean_deserializer_base_1_expr104_line_622
					&& bean_deserializer_base_1_expr105_line_622;
			int PROBE_END_LINE_622 = 625;
			if (bean_deserializer_base_1_expr103_line_622) {
                HashSet<String> newIgnored = ArrayBuilders.setAndArray(contextual._ignorableProps, ignorals);
                contextual = contextual.withIgnorableProperties(newIgnored);
            }
        }

        // One more thing: are we asked to serialize POJO as array?
        JsonFormat.Shape shape = null;
        int PROBE_START_LINE_630 = 636;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1542_line_630 = accessor;
		boolean bean_deserializer_base_1_expr106_line_630 = v_accessor_1542_line_630 != null;
		int PROBE_END_LINE_630 = 636;
		if (bean_deserializer_base_1_expr106_line_630) {
            int PROBE_START_LINE_631 = 631;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1541_line_631 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_accessor_1542_line_631 = accessor;
			JsonFormat.Value bean_deserializer_base_1_expr107_line_631 = v_intr_1541_line_631
					.findFormat((Annotated) v_accessor_1542_line_631);
			int PROBE_END_LINE_631 = 631;
			JsonFormat.Value format = bean_deserializer_base_1_expr107_line_631;

            int PROBE_START_LINE_633 = 635;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1547_line_633 = format;
			boolean bean_deserializer_base_1_expr109_line_633 = v_format_1547_line_633 != null;
			int PROBE_END_LINE_633 = 635;
			if (bean_deserializer_base_1_expr109_line_633) {
                shape = format.getShape();
            }
        }
        int PROBE_START_LINE_637 = 639;
		com.fasterxml.jackson.annotation.JsonFormat.Shape v_shape_1546_line_637 = shape;
		boolean bean_deserializer_base_1_expr110_line_637 = v_shape_1546_line_637 == null;
		int PROBE_END_LINE_637 = 639;
		if (bean_deserializer_base_1_expr110_line_637) {
            int PROBE_START_LINE_638 = 638;
			com.fasterxml.jackson.annotation.JsonFormat.Shape f__serialization_shape_1512_line_638 = _serializationShape;
			int PROBE_END_LINE_638 = 638;
			shape = f__serialization_shape_1512_line_638;
        }
        int PROBE_START_LINE_640 = 642;
		com.fasterxml.jackson.annotation.JsonFormat.Shape v_shape_1546_line_640 = shape;
		com.fasterxml.jackson.annotation.JsonFormat.Shape q_array_31_line_640 = JsonFormat.Shape.ARRAY;
		boolean bean_deserializer_base_1_expr112_line_640 = v_shape_1546_line_640 == q_array_31_line_640;
		int PROBE_END_LINE_640 = 642;
		if (bean_deserializer_base_1_expr112_line_640) {
            contextual = contextual.asArrayDeserializer();
        }
        int PROBE_START_LINE_643 = 643;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBase v_contextual_1544_line_643 = contextual;
		int PROBE_END_LINE_643 = 643;
		return v_contextual_1544_line_643;
    }

    /**
     * Helper method called to see if given property is part of 'managed' property
     * pair (managed + back reference), and if so, handle resolution details.
     */
    protected SettableBeanProperty _resolveManagedReferenceProperty(DeserializationContext ctxt,
            SettableBeanProperty prop)
    {
        int PROBE_START_LINE_653 = 653;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1549_line_653 = prop;
		String bean_deserializer_base_1_expr113_line_653 = p_prop_1549_line_653.getManagedReferenceName();
		int PROBE_END_LINE_653 = 653;
		String refName = bean_deserializer_base_1_expr113_line_653;
        int PROBE_START_LINE_654 = 656;
		String v_ref_name_1550_line_654 = refName;
		boolean bean_deserializer_base_1_expr114_line_654 = v_ref_name_1550_line_654 == null;
		int PROBE_END_LINE_654 = 656;
		if (bean_deserializer_base_1_expr114_line_654) {
            int PROBE_START_LINE_655 = 655;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1549_line_655 = prop;
			int PROBE_END_LINE_655 = 655;
			return p_prop_1549_line_655;
        }
        JsonDeserializer<?> valueDeser = prop.getValueDeserializer();
        SettableBeanProperty backProp = valueDeser.findBackReference(refName);
        if (backProp == null) {
            throw new IllegalArgumentException("Can not handle managed/back reference '"+refName+"': no back reference property found from type "
                    +prop.getType());
        }
        // also: verify that type is compatible
        JavaType referredType = _beanType;
        JavaType backRefType = backProp.getType();
        boolean isContainer = prop.getType().isContainerType();
        if (!backRefType.getRawClass().isAssignableFrom(referredType.getRawClass())) {
            throw new IllegalArgumentException("Can not handle managed/back reference '"+refName+"': back reference type ("
                    +backRefType.getRawClass().getName()+") not compatible with managed type ("
                    +referredType.getRawClass().getName()+")");
        }
        return new ManagedReferenceProperty(prop, refName, backProp,
                _classAnnotations, isContainer);
    }

    /**
     * Method that wraps given property with {@link ObjectIdReferenceProperty}
     * in case where object id resolution is required.
     */
    protected SettableBeanProperty _resolvedObjectIdProperty(DeserializationContext ctxt, SettableBeanProperty prop)
    {
        int PROBE_START_LINE_682 = 682;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1552_line_682 = prop;
		ObjectIdInfo bean_deserializer_base_1_expr115_line_682 = p_prop_1552_line_682.getObjectIdInfo();
		int PROBE_END_LINE_682 = 682;
		ObjectIdInfo objectIdInfo = bean_deserializer_base_1_expr115_line_682;
        int PROBE_START_LINE_683 = 683;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1552_line_683 = prop;
		JsonDeserializer<Object> bean_deserializer_base_1_expr116_line_683 = p_prop_1552_line_683
				.getValueDeserializer();
		int PROBE_END_LINE_683 = 683;
		JsonDeserializer<Object> valueDeser = bean_deserializer_base_1_expr116_line_683;
        int PROBE_START_LINE_684 = 684;
		JsonDeserializer<Object> v_value_deser_1554_line_684 = valueDeser;
		ObjectIdReader bean_deserializer_base_1_expr117_line_684 = v_value_deser_1554_line_684.getObjectIdReader();
		int PROBE_END_LINE_684 = 684;
		ObjectIdReader objectIdReader = bean_deserializer_base_1_expr117_line_684;
        int PROBE_START_LINE_685 = 687;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1553_line_685 = objectIdInfo;
		boolean bean_deserializer_base_1_expr119_line_685 = v_object_id_info_1553_line_685 == null;
		boolean bean_deserializer_base_1_expr120_line_685 = true;
		if (bean_deserializer_base_1_expr119_line_685) {
			com.fasterxml.jackson.databind.deser.impl.ObjectIdReader v_object_id_reader_1555_line_685 = objectIdReader;
			bean_deserializer_base_1_expr120_line_685 = v_object_id_reader_1555_line_685 == null;
		}
		boolean bean_deserializer_base_1_expr118_line_685 = bean_deserializer_base_1_expr119_line_685
				&& bean_deserializer_base_1_expr120_line_685;
		int PROBE_END_LINE_685 = 687;
		if (bean_deserializer_base_1_expr118_line_685) {
            int PROBE_START_LINE_686 = 686;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1552_line_686 = prop;
			int PROBE_END_LINE_686 = 686;
			return p_prop_1552_line_686;
        }

        int PROBE_START_LINE_689 = 689;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1552_line_689 = prop;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_object_id_info_1553_line_689 = objectIdInfo;
		int PROBE_END_LINE_689 = 689;
		return new ObjectIdReferenceProperty(p_prop_1552_line_689, v_object_id_info_1553_line_689);
    }

    /**
     * Helper method called to see if given property might be so-called unwrapped
     * property: these require special handling.
     */
    protected SettableBeanProperty _resolveUnwrappedProperty(DeserializationContext ctxt,
            SettableBeanProperty prop)
    {
        int PROBE_START_LINE_699 = 699;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1557_line_699 = prop;
		AnnotatedMember bean_deserializer_base_1_expr122_line_699 = p_prop_1557_line_699.getMember();
		int PROBE_END_LINE_699 = 699;
		AnnotatedMember am = bean_deserializer_base_1_expr122_line_699;
        int PROBE_START_LINE_700 = 710;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_am_1558_line_700 = am;
		boolean bean_deserializer_base_1_expr123_line_700 = v_am_1558_line_700 != null;
		int PROBE_END_LINE_700 = 710;
		if (bean_deserializer_base_1_expr123_line_700) {
            int PROBE_START_LINE_701 = 701;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1556_line_701 = ctxt;
			com.fasterxml.jackson.databind.AnnotationIntrospector bean_deserializer_base_1_expr125_line_701 = p_ctxt_1556_line_701
					.getAnnotationIntrospector();
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_am_1558_line_701 = am;
			NameTransformer bean_deserializer_base_1_expr124_line_701 = bean_deserializer_base_1_expr125_line_701
					.findUnwrappingNameTransformer(v_am_1558_line_701);
			int PROBE_END_LINE_701 = 701;
			NameTransformer unwrapper = bean_deserializer_base_1_expr124_line_701;
            int PROBE_START_LINE_702 = 709;
			com.fasterxml.jackson.databind.util.NameTransformer v_unwrapper_1559_line_702 = unwrapper;
			boolean bean_deserializer_base_1_expr126_line_702 = v_unwrapper_1559_line_702 != null;
			int PROBE_END_LINE_702 = 709;
			if (bean_deserializer_base_1_expr126_line_702) {
                JsonDeserializer<Object> orig = prop.getValueDeserializer();
                JsonDeserializer<Object> unwrapping = orig.unwrappingDeserializer(unwrapper);
                if (unwrapping != orig && unwrapping != null) {
                    // might be cleaner to create new instance; but difficult to do reliably, so:
                    return prop.withValueDeserializer(unwrapping);
                }
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
        int PROBE_START_LINE_724 = 724;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1561_line_724 = prop;
		JsonDeserializer<Object> bean_deserializer_base_1_expr127_line_724 = p_prop_1561_line_724
				.getValueDeserializer();
		int PROBE_END_LINE_724 = 724;
		/* Should we encounter a property that has non-static inner-class
         * as value, we need to add some more magic to find the "hidden" constructor...
         */
        JsonDeserializer<Object> deser = bean_deserializer_base_1_expr127_line_724;
        int PROBE_START_LINE_726 = 745;
		JsonDeserializer<Object> v_deser_1562_line_726 = deser;
		boolean bean_deserializer_base_1_expr128_line_726 = v_deser_1562_line_726 instanceof BeanDeserializerBase;
		int PROBE_END_LINE_726 = 745;
		// ideally wouldn't rely on it being BeanDeserializerBase; but for now it'll have to do
        if (bean_deserializer_base_1_expr128_line_726) {
            int PROBE_START_LINE_727 = 727;
			JsonDeserializer<Object> v_deser_1562_line_727 = deser;
			int PROBE_END_LINE_727 = 727;
			BeanDeserializerBase bd = (BeanDeserializerBase) v_deser_1562_line_727;
            int PROBE_START_LINE_728 = 728;
			com.fasterxml.jackson.databind.deser.BeanDeserializerBase v_bd_1563_line_728 = bd;
			ValueInstantiator bean_deserializer_base_1_expr130_line_728 = v_bd_1563_line_728.getValueInstantiator();
			int PROBE_END_LINE_728 = 728;
			ValueInstantiator vi = bean_deserializer_base_1_expr130_line_728;
            int PROBE_START_LINE_729 = 744;
			com.fasterxml.jackson.databind.deser.ValueInstantiator v_vi_1564_line_729 = vi;
			boolean bean_deserializer_base_1_expr132_line_729 = v_vi_1564_line_729.canCreateUsingDefault();
			boolean bean_deserializer_base_1_expr131_line_729 = !bean_deserializer_base_1_expr132_line_729;
			int PROBE_END_LINE_729 = 744;
			if (bean_deserializer_base_1_expr131_line_729) { // no default constructor
                Class<?> valueClass = prop.getType().getRawClass();
                Class<?> enclosing = ClassUtil.getOuterClass(valueClass);
                // and is inner class of the bean class...
                if (enclosing != null && enclosing == _beanType.getRawClass()) {
                    for (Constructor<?> ctor : valueClass.getConstructors()) {
                        Class<?>[] paramTypes = ctor.getParameterTypes();
                        if (paramTypes.length == 1 && paramTypes[0] == enclosing) {
                            if (ctxt.getConfig().canOverrideAccessModifiers()) {
                                ClassUtil.checkAndFixAccess(ctor);
                            }
                            return new InnerClassProperty(prop, ctor);
                        }
                    }
                }
            }
        }
        int PROBE_START_LINE_746 = 746;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1561_line_746 = prop;
		int PROBE_END_LINE_746 = 746;
		return p_prop_1561_line_746;
    }

    /*
    /**********************************************************
    /* Public accessors
    /**********************************************************
     */

    @Override
    public boolean isCachable() { return true; }

    @Override
    public Class<?> handledType() {
        return _beanType.getRawClass();
    }
    
    /**
     * Overridden to return true for those instances that are
     * handling value for which Object Identity handling is enabled
     * (either via value type or referring property).
     */
    @Override
    public ObjectIdReader getObjectIdReader() {
        int PROBE_START_LINE_770 = 770;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader f__object_id_reader_1452_line_770 = _objectIdReader;
		int PROBE_END_LINE_770 = 770;
		return f__object_id_reader_1452_line_770;
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

    public ValueInstantiator getValueInstantiator() {
        int PROBE_START_LINE_893 = 893;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_1468_line_893 = _valueInstantiator;
		int PROBE_END_LINE_893 = 893;
		return f__value_instantiator_1468_line_893;
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
        _beanProperties.replace(replacement);
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
        // 16-Feb-2012, tatu: ObjectId may be used as well... need to check that first
        if (_objectIdReader != null) {
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
                if (t == JsonToken.FIELD_NAME && _objectIdReader.maySerializeAsObject()
                        && _objectIdReader.isValidReferencePropertyName(p.getCurrentName(), p)) {
                    return deserializeFromObjectId(p, ctxt);
                }
            }
        }
        // In future could check current token... for now this should be enough:
        return typeDeserializer.deserializeTypedFromObject(p, ctxt);
    }

    /**
     * Offlined method called to handle "native" Object Id that has been read
     * and known to be associated with given deserialized POJO.
     *
     * @since 2.3
     */
    protected Object _handleTypedObjectId(JsonParser jp, DeserializationContext ctxt,
            Object pojo, Object rawId)
        throws IOException
    {
        /* 07-Aug-2013, tatu: One more challenge: type of id may not be type
         *   of property we are expecting later on; specifically, numeric ids
         *   vs Strings.
         */
        JsonDeserializer<Object> idDeser = _objectIdReader.getDeserializer();
        final Object id;

        // Ok, this is bit ridiculous; let's see if conversion is needed:
        if (idDeser.handledType() == rawId.getClass()) {
            // nope: already same type
            id = rawId;
        } else {
            id = _convertObjectId(jp, ctxt, rawId, idDeser);
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
    protected Object _convertObjectId(JsonParser jp, DeserializationContext ctxt,
            Object rawId, JsonDeserializer<Object> idDeser) throws IOException
    {
        TokenBuffer buf = new TokenBuffer(jp);
        if (rawId instanceof String) {
            buf.writeString((String) rawId);
        } else if (rawId instanceof Long) {
            buf.writeNumber(((Long) rawId).longValue());
        } else if (rawId instanceof Integer) {
            buf.writeNumber(((Integer) rawId).intValue());
        } else {
            // should we worry about UUIDs? They should be fine, right?
            // 07-Aug-2014, tatu: Maybe, but not necessarily; had issues with
            //   Smile format; [Smile#19], possibly related.
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
    protected Object deserializeWithObjectId(JsonParser jp, DeserializationContext ctxt) throws IOException {
        int PROBE_START_LINE_1045 = 1045;
		com.fasterxml.jackson.core.JsonParser p_jp_1585_line_1045 = jp;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1586_line_1045 = ctxt;
		Object bean_deserializer_base_1_expr133_line_1045 = deserializeFromObject(p_jp_1585_line_1045,
				p_ctxt_1586_line_1045);
		int PROBE_END_LINE_1045 = 1045;
		return bean_deserializer_base_1_expr133_line_1045;
    }

    /**
     * Method called in cases where it looks like we got an Object Id
     * to parse and use as a reference.
     */
    protected Object deserializeFromObjectId(JsonParser jp, DeserializationContext ctxt) throws IOException
    {
        Object id = _objectIdReader.readObjectReference(jp, ctxt);
        ReadableObjectId roid = ctxt.findObjectId(id, _objectIdReader.generator, _objectIdReader.resolver);
        // do we have it resolved?
        Object pojo = roid.resolve();
        if (pojo == null) { // not yet; should wait...
            throw new UnresolvedForwardReference("Could not resolve Object Id ["+id+"] (for "
                    +_beanType+").", jp.getCurrentLocation(), roid);
        }
        return pojo;
    }

    protected Object deserializeFromObjectUsingNonDefault(JsonParser jp,
            DeserializationContext ctxt) throws IOException
    {
        if (_delegateDeserializer != null) {
            return _valueInstantiator.createUsingDelegate(ctxt,
                    _delegateDeserializer.deserialize(jp, ctxt));
        }
        if (_propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jp, ctxt);
        }
        // should only occur for abstract types...
        if (_beanType.isAbstract()) {
            throw JsonMappingException.from(jp, "Can not instantiate abstract type "+_beanType
                    +" (need to add/enable type information?)");
        }
        throw JsonMappingException.from(jp, "No suitable constructor found for type "
                +_beanType+": can not instantiate from JSON object (missing default constructor or creator, or perhaps need to add/enable type information?)");
    }

    protected abstract Object _deserializeUsingPropertyBased(final JsonParser jp,
            final DeserializationContext ctxt)
        throws IOException, JsonProcessingException;

    @SuppressWarnings("incomplete-switch")
    public Object deserializeFromNumber(JsonParser jp, DeserializationContext ctxt) throws IOException
    {
        // First things first: id Object Id is used, most likely that's it
        if (_objectIdReader != null) {
            return deserializeFromObjectId(jp, ctxt);
        }

        switch (jp.getNumberType()) {
        case INT:
            if (_delegateDeserializer != null) {
                if (!_valueInstantiator.canCreateFromInt()) {
                    Object bean = _valueInstantiator.createUsingDelegate(ctxt, _delegateDeserializer.deserialize(jp, ctxt));
                    if (_injectables != null) {
                        injectValues(ctxt, bean);
                    }
                    return bean;
                }
            }
            return _valueInstantiator.createFromInt(ctxt, jp.getIntValue());
        case LONG:
            if (_delegateDeserializer != null) {
                if (!_valueInstantiator.canCreateFromInt()) {
                    Object bean = _valueInstantiator.createUsingDelegate(ctxt, _delegateDeserializer.deserialize(jp, ctxt));
                    if (_injectables != null) {
                        injectValues(ctxt, bean);
                    }
                    return bean;
                }
            }
            return _valueInstantiator.createFromLong(ctxt, jp.getLongValue());
        }
        // actually, could also be BigInteger, so:
        if (_delegateDeserializer != null) {
            Object bean = _valueInstantiator.createUsingDelegate(ctxt, _delegateDeserializer.deserialize(jp, ctxt));
            if (_injectables != null) {
                injectValues(ctxt, bean);
            }
            return bean;
        }
        throw ctxt.instantiationException(handledType(), "no suitable creator method found to deserialize from JSON integer number");
    }

    public Object deserializeFromString(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        // First things first: id Object Id is used, most likely that's it
        if (_objectIdReader != null) {
            return deserializeFromObjectId(p, ctxt);
        }
        
        /* Bit complicated if we have delegating creator; may need to use it,
         * or might not...
         */
        if (_delegateDeserializer != null) {
            if (!_valueInstantiator.canCreateFromString()) {
                Object bean = _valueInstantiator.createUsingDelegate(ctxt, _delegateDeserializer.deserialize(p, ctxt));
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
    @SuppressWarnings("incomplete-switch")
    public Object deserializeFromDouble(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        switch (p.getNumberType()) {
        case FLOAT: // no separate methods for taking float...
        case DOUBLE:
            if (_delegateDeserializer != null) {
                if (!_valueInstantiator.canCreateFromDouble()) {
                    Object bean = _valueInstantiator.createUsingDelegate(ctxt, _delegateDeserializer.deserialize(p, ctxt));
                    if (_injectables != null) {
                        injectValues(ctxt, bean);
                    }
                    return bean;
                }
            }
            return _valueInstantiator.createFromDouble(ctxt, p.getDoubleValue());
        }
        // actually, could also be BigDecimal, so:
        if (_delegateDeserializer != null) {
            return _valueInstantiator.createUsingDelegate(ctxt, _delegateDeserializer.deserialize(p, ctxt));
        }
        throw ctxt.instantiationException(handledType(), "no suitable creator method found to deserialize from JSON floating-point number");
    }

    /**
     * Method called to deserialize POJO value from a JSON boolean value (true, false)
     */
    public Object deserializeFromBoolean(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        if (_delegateDeserializer != null) {
            if (!_valueInstantiator.canCreateFromBoolean()) {
                Object bean = _valueInstantiator.createUsingDelegate(ctxt, _delegateDeserializer.deserialize(p, ctxt));
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
        if (_delegateDeserializer != null) {
            try {
                Object bean = _valueInstantiator.createUsingDelegate(ctxt, _delegateDeserializer.deserialize(p, ctxt));
                if (_injectables != null) {
                    injectValues(ctxt, bean);
                }
                return bean;
            } catch (Exception e) {
                wrapInstantiationProblem(e, ctxt);
            }
        } else if (ctxt.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            JsonToken t = p.nextToken();
            if (t == JsonToken.END_ARRAY && ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                return null;
            }
            final Object value = deserialize(p, ctxt);
            if (p.nextToken() != JsonToken.END_ARRAY) {
                throw ctxt.wrongTokenException(p, JsonToken.END_ARRAY, 
                        "Attempted to unwrap single value array for single '" + _valueClass.getName() + "' value but there was more than a single value in the array");
            }
            return value;
        } else if (ctxt.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
            JsonToken t = p.nextToken();
            if (t == JsonToken.END_ARRAY) {
                return null;
            }
            throw ctxt.mappingException(handledType(), JsonToken.START_ARRAY);
        }
        throw ctxt.mappingException(handledType());
    }

    public Object deserializeFromEmbedded(JsonParser jp, DeserializationContext ctxt) throws IOException
    {
        // First things first: id Object Id is used, most likely that's it; specifically,
        // true for UUIDs when written as binary (with Smile, other binary formats)
        if (_objectIdReader != null) {
            return deserializeFromObjectId(jp, ctxt);
        }

        // TODO: maybe add support for ValueInstantiator, embedded?
        
        return jp.getEmbeddedObject();
    }
    
    /*
    /**********************************************************
    /* Overridable helper methods
    /**********************************************************
     */

    protected void injectValues(DeserializationContext ctxt, Object bean)
        throws IOException, JsonProcessingException
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
        throws IOException, JsonProcessingException
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
    protected void handleUnknownVanilla(JsonParser jp, DeserializationContext ctxt,
            Object bean, String propName)
        throws IOException, JsonProcessingException
    {
        if (_ignorableProps != null && _ignorableProps.contains(propName)) {
            handleIgnoredProperty(jp, ctxt, bean, propName);
        } else if (_anySetter != null) {
            try {
               // should we consider return type of any setter?
                _anySetter.deserializeAndSet(jp, ctxt, bean, propName);
            } catch (Exception e) {
                wrapAndThrow(e, bean, propName, ctxt);
            }
        } else {
            // Unknown: let's call handler method
            handleUnknownProperty(jp, ctxt, bean, propName);         
        }
    }

    /**
     * Method called when a JSON property is encountered that has not matching
     * setter, any-setter or field, and thus can not be assigned.
     */
    @Override
    protected void handleUnknownProperty(JsonParser jp, DeserializationContext ctxt,
            Object beanOrClass, String propName)
        throws IOException, JsonProcessingException
    {
        if (_ignoreAllUnknown) {
            jp.skipChildren();
            return;
        }
        if (_ignorableProps != null && _ignorableProps.contains(propName)) {
            handleIgnoredProperty(jp, ctxt, beanOrClass, propName);
        }
        // Otherwise use default handling (call handler(s); if not
        // handled, throw exception or skip depending on settings)
        super.handleUnknownProperty(jp, ctxt, beanOrClass, propName);
    }

    /**
     * Method called when an explicitly ignored property (one specified with a
     * name to match, either by property annotation or class annotation) is encountered.
     * 
     * @since 2.3
     */
    protected void handleIgnoredProperty(JsonParser jp, DeserializationContext ctxt,
            Object beanOrClass, String propName)
        throws IOException, JsonProcessingException
    {
        if (ctxt.isEnabled(DeserializationFeature.FAIL_ON_IGNORED_PROPERTIES)) {
            throw IgnoredPropertyException.from(jp, beanOrClass, propName, getKnownPropertyNames());
        }
        jp.skipChildren();
    }
    
    /**
     * Method called in cases where we may have polymorphic deserialization
     * case: that is, type of Creator-constructed bean is not the type
     * of deserializer itself. It should be a sub-class or implementation
     * class; either way, we may have more specific deserializer to use
     * for handling it.
     *
     * @param jp (optional) If not null, parser that has more properties to handle
     *   (in addition to buffered properties); if null, all properties are passed
     *   in buffer
     */
    @SuppressWarnings("resource")
    protected Object handlePolymorphic(JsonParser jp, DeserializationContext ctxt,                                          
            Object bean, TokenBuffer unknownTokens)
        throws IOException, JsonProcessingException
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
            if (jp != null) {
                bean = subDeser.deserialize(jp, ctxt, bean);
            }
            return bean;
        }
        // nope; need to use this deserializer. Unknowns we've seen so far?
        if (unknownTokens != null) {
            bean = handleUnknownProperties(ctxt, bean, unknownTokens);
        }
        // and/or things left to process via main parser?
        if (jp != null) {
            bean = deserialize(jp, ctxt, bean);
        }
        return bean;
    }
    
    /**
     * Helper method called to (try to) locate deserializer for given sub-type of
     * type that this deserializer handles.
     */
    protected JsonDeserializer<Object> _findSubclassDeserializer(DeserializationContext ctxt,
            Object bean, TokenBuffer unknownTokens)
        throws IOException, JsonProcessingException
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
        // [JACKSON-55] Need to add reference information
        throw JsonMappingException.wrapWithPath(throwOrReturnThrowable(t, ctxt), bean, fieldName);
    }

    @Deprecated // since 2.4, not used by core Jackson; only relevant for arrays/Collections
    public void wrapAndThrow(Throwable t, Object bean, int index, DeserializationContext ctxt) throws IOException {
        // [JACKSON-55] Need to add reference information
        throw JsonMappingException.wrapWithPath(throwOrReturnThrowable(t, ctxt), bean, index);
    }

    private Throwable throwOrReturnThrowable(Throwable t, DeserializationContext ctxt) 
        throws IOException
    {
        /* 05-Mar-2009, tatu: But one nasty edge is when we get
         *   StackOverflow: usually due to infinite loop. But that
         *   often gets hidden within an InvocationTargetException...
         */
        while (t instanceof InvocationTargetException && t.getCause() != null) {
            t = t.getCause();
        }
        // Errors to be passed as is
        if (t instanceof Error) {
            throw (Error) t;
        }
        boolean wrap = (ctxt == null) || ctxt.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        // Ditto for IOExceptions; except we may want to wrap JSON exceptions
        if (t instanceof IOException) {
            if (!wrap || !(t instanceof JsonProcessingException)) {
                throw (IOException) t;
            }
        } else if (!wrap) { // [JACKSON-407] -- allow disabling wrapping for unchecked exceptions
            if (t instanceof RuntimeException) {
                throw (RuntimeException) t;
            }
        }
        return t;
    }

    protected void wrapInstantiationProblem(Throwable t, DeserializationContext ctxt)
        throws IOException
    {
        while (t instanceof InvocationTargetException && t.getCause() != null) {
            t = t.getCause();
        }
        // Errors and "plain" IOExceptions to be passed as is
        if (t instanceof Error) {
            throw (Error) t;
        }
        boolean wrap = (ctxt == null) || ctxt.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (t instanceof IOException) {
            // Since we have no more information to add, let's not actually wrap..
            throw (IOException) t;
        } else if (!wrap) { // [JACKSON-407] -- allow disabling wrapping for unchecked exceptions
            if (t instanceof RuntimeException) {
                throw (RuntimeException) t;
            }
        }
        throw ctxt.instantiationException(_beanType.getRawClass(), t);
    }
}
