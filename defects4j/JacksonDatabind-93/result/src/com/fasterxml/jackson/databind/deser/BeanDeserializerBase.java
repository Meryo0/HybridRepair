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
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Set;
import com.fasterxml.jackson.databind.util.Annotations;
import java.util.List;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import java.util.Map;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
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

        int PROBE_START_LINE_212 = 212;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1689_line_212 = beanDesc;
		AnnotatedClass bean_deserializer_base_1_expr4_line_212 = p_bean_desc_1689_line_212.getClassInfo();
		int PROBE_END_LINE_212 = 212;
		AnnotatedClass ac = bean_deserializer_base_1_expr4_line_212;
        int PROBE_START_LINE_213 = 213;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1695_line_213 = ac;
		com.fasterxml.jackson.databind.util.Annotations bean_deserializer_base_1_expr6_line_213 = v_ac_1695_line_213
				.getAnnotations();
		int PROBE_END_LINE_213 = 213;
		_classAnnotations = bean_deserializer_base_1_expr6_line_213;       
        int PROBE_START_LINE_214 = 214;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1689_line_214 = beanDesc;
		com.fasterxml.jackson.databind.JavaType bean_deserializer_base_1_expr8_line_214 = p_bean_desc_1689_line_214
				.getType();
		int PROBE_END_LINE_214 = 214;
		_beanType = bean_deserializer_base_1_expr8_line_214;
        int PROBE_START_LINE_215 = 215;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1688_line_215 = builder;
		com.fasterxml.jackson.databind.deser.ValueInstantiator bean_deserializer_base_1_expr10_line_215 = p_builder_1688_line_215
				.getValueInstantiator();
		int PROBE_END_LINE_215 = 215;
		_valueInstantiator = bean_deserializer_base_1_expr10_line_215;
        
        int PROBE_START_LINE_217 = 217;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap p_properties_1690_line_217 = properties;
		int PROBE_END_LINE_217 = 217;
		_beanProperties = p_properties_1690_line_217;
        int PROBE_START_LINE_218 = 218;
		Map<String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_back_refs_1691_line_218 = backRefs;
		int PROBE_END_LINE_218 = 218;
		_backRefs = p_back_refs_1691_line_218;
        int PROBE_START_LINE_219 = 219;
		Set<String> p_ignorable_props_1692_line_219 = ignorableProps;
		int PROBE_END_LINE_219 = 219;
		_ignorableProps = p_ignorable_props_1692_line_219;
        int PROBE_START_LINE_220 = 220;
		boolean p_ignore_all_unknown_1693_line_220 = ignoreAllUnknown;
		int PROBE_END_LINE_220 = 220;
		_ignoreAllUnknown = p_ignore_all_unknown_1693_line_220;

        int PROBE_START_LINE_222 = 222;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1688_line_222 = builder;
		com.fasterxml.jackson.databind.deser.SettableAnyProperty bean_deserializer_base_1_expr16_line_222 = p_builder_1688_line_222
				.getAnySetter();
		int PROBE_END_LINE_222 = 222;
		_anySetter = bean_deserializer_base_1_expr16_line_222;
        int PROBE_START_LINE_223 = 223;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1688_line_223 = builder;
		List<ValueInjector> bean_deserializer_base_1_expr17_line_223 = p_builder_1688_line_223.getInjectables();
		int PROBE_END_LINE_223 = 223;
		List<ValueInjector> injectables = bean_deserializer_base_1_expr17_line_223;
        int PROBE_START_LINE_224 = 225;
		List<com.fasterxml.jackson.databind.deser.impl.ValueInjector> v_injectables_1704_line_224 = injectables;
		boolean bean_deserializer_base_1_expr23_line_224 = v_injectables_1704_line_224 == null;
		boolean bean_deserializer_base_1_expr24_line_224 = false;
		if (!bean_deserializer_base_1_expr23_line_224) {
			List<com.fasterxml.jackson.databind.deser.impl.ValueInjector> v_injectables_1704_line_224_v1 = injectables;
			bean_deserializer_base_1_expr24_line_224 = v_injectables_1704_line_224_v1.isEmpty();
		}
		boolean bean_deserializer_base_1_expr22_line_224 = bean_deserializer_base_1_expr23_line_224
				|| bean_deserializer_base_1_expr24_line_224;
		boolean bean_deserializer_base_1_expr20_line_224 = (bean_deserializer_base_1_expr22_line_224);
		com.fasterxml.jackson.databind.deser.impl.ValueInjector[] bean_deserializer_base_1_expr19_line_224 = bean_deserializer_base_1_expr20_line_224
				? null
				: injectables.toArray(new ValueInjector[injectables.size()]);
		int PROBE_END_LINE_224 = 225;
		_injectables = bean_deserializer_base_1_expr19_line_224;
        int PROBE_START_LINE_226 = 226;
		com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder p_builder_1688_line_226 = builder;
		com.fasterxml.jackson.databind.deser.impl.ObjectIdReader bean_deserializer_base_1_expr26_line_226 = p_builder_1688_line_226
				.getObjectIdReader();
		int PROBE_END_LINE_226 = 226;
		_objectIdReader = bean_deserializer_base_1_expr26_line_226;
        int PROBE_START_LINE_227 = 232;
		com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler f__unwrapped_property_handler_1708_line_227 = _unwrappedPropertyHandler;
		boolean bean_deserializer_base_1_expr30_line_227 = f__unwrapped_property_handler_1708_line_227 != null;
		boolean bean_deserializer_base_1_expr29_line_227 = (bean_deserializer_base_1_expr30_line_227);
		boolean bean_deserializer_base_1_expr28_line_227 = bean_deserializer_base_1_expr29_line_227
				|| _valueInstantiator.canCreateUsingDelegate() || _valueInstantiator.canCreateUsingArrayDelegate()
				|| _valueInstantiator.canCreateFromObjectWith() || !_valueInstantiator.canCreateUsingDefault();
		int PROBE_END_LINE_227 = 232;
		_nonStandardCreation = bean_deserializer_base_1_expr28_line_227
            ;

        int PROBE_START_LINE_235 = 235;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1689_line_235 = beanDesc;
		JsonFormat.Value bean_deserializer_base_1_expr31_line_235 = p_bean_desc_1689_line_235.findExpectedFormat(null);
		int PROBE_END_LINE_235 = 235;
		// Any transformation we may need to apply?
        JsonFormat.Value format = bean_deserializer_base_1_expr31_line_235;
        int PROBE_START_LINE_236 = 236;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1709_line_236 = format;
		boolean bean_deserializer_base_1_expr36_line_236 = v_format_1709_line_236 == null;
		boolean bean_deserializer_base_1_expr34_line_236 = (bean_deserializer_base_1_expr36_line_236);
		com.fasterxml.jackson.annotation.JsonFormat.Shape bean_deserializer_base_1_expr35_line_236 = null;
		if (!bean_deserializer_base_1_expr34_line_236) {
			com.fasterxml.jackson.annotation.JsonFormat.Value v_format_1709_line_236_v1 = format;
			bean_deserializer_base_1_expr35_line_236 = v_format_1709_line_236_v1.getShape();
		}
		com.fasterxml.jackson.annotation.JsonFormat.Shape bean_deserializer_base_1_expr33_line_236 = bean_deserializer_base_1_expr34_line_236
				? null
				: bean_deserializer_base_1_expr35_line_236;
		int PROBE_END_LINE_236 = 236;
		_serializationShape = bean_deserializer_base_1_expr33_line_236;

        int PROBE_START_LINE_238 = 238;
		boolean p_has_views_1694_line_238 = hasViews;
		int PROBE_END_LINE_238 = 238;
		_needViewProcesing = p_has_views_1694_line_238;
        int PROBE_START_LINE_239 = 244;
		boolean f__non_standard_creation_1707_line_239 = _nonStandardCreation;
		boolean bean_deserializer_base_1_expr40_line_239 = !f__non_standard_creation_1707_line_239;
		boolean bean_deserializer_base_1_expr39_line_239 = bean_deserializer_base_1_expr40_line_239
				&& (_injectables == null) && !_needViewProcesing && (_objectIdReader == null);
		int PROBE_END_LINE_239 = 244;
		_vanillaProcessing = bean_deserializer_base_1_expr39_line_239
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

    public BeanDeserializerBase(BeanDeserializerBase src, Set<String> ignorableProps)
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
        
        _classAnnotations = src._classAnnotations;
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
    public void resolve(DeserializationContext ctxt)
        throws JsonMappingException
    {
        ExternalTypeHandler.Builder extTypes = null;
        // if ValueInstantiator can use "creator" approach, need to resolve it here...
        SettableBeanProperty[] creatorProps = null;

        int PROBE_START_LINE_461 = 465;
		com.fasterxml.jackson.databind.deser.ValueInstantiator f__value_instantiator_1698_line_461 = _valueInstantiator;
		boolean bean_deserializer_base_1_expr41_line_461 = f__value_instantiator_1698_line_461
				.canCreateFromObjectWith();
		int PROBE_END_LINE_461 = 465;
		if (bean_deserializer_base_1_expr41_line_461) {
            creatorProps = _valueInstantiator.getFromObjectArguments(ctxt.getConfig());
        } else {
            creatorProps = null;
        }
        UnwrappedPropertyHandler unwrapped = null;

        // 24-Mar-2017, tatu: Looks like we may have to iterate over
        //   properties twice, to handle potential issues with recursive
        //   types (see [databind#1575] f.ex).

        int PROBE_START_LINE_474 = 484;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1699_line_474 = _beanProperties;
		int PROBE_END_LINE_474 = 484;
		// First loop: find deserializer if not yet known, but do not yet
        // contextualize (since that can lead to problems with self-references)
        for (SettableBeanProperty prop : f__bean_properties_1699_line_474) {
            int PROBE_START_LINE_475 = 483;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1732_line_475 = prop;
			boolean bean_deserializer_base_1_expr44_line_475 = v_prop_1732_line_475.hasValueDeserializer();
			boolean bean_deserializer_base_1_expr43_line_475 = !bean_deserializer_base_1_expr44_line_475;
			int PROBE_END_LINE_475 = 483;
			if (bean_deserializer_base_1_expr43_line_475) {
                int PROBE_START_LINE_477 = 477;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1728_line_477 = ctxt;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1732_line_477 = prop;
				JsonDeserializer<?> bean_deserializer_base_1_expr45_line_477 = findConvertingDeserializer(
						p_ctxt_1728_line_477, v_prop_1732_line_477);
				int PROBE_END_LINE_477 = 477;
				// [databind#125]: allow use of converters
                JsonDeserializer<?> deser = bean_deserializer_base_1_expr45_line_477;
                int PROBE_START_LINE_478 = 480;
				JsonDeserializer<?> v_deser_1733_line_478 = deser;
				boolean bean_deserializer_base_1_expr46_line_478 = v_deser_1733_line_478 == null;
				int PROBE_END_LINE_478 = 480;
				if (bean_deserializer_base_1_expr46_line_478) {
                    int PROBE_START_LINE_479 = 479;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1728_line_479 = ctxt;
					com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1732_line_479 = prop;
					com.fasterxml.jackson.databind.JavaType bean_deserializer_base_1_expr49_line_479 = v_prop_1732_line_479
							.getType();
					JsonDeserializer<Object> bean_deserializer_base_1_expr48_line_479 = p_ctxt_1728_line_479
							.findNonContextualValueDeserializer(bean_deserializer_base_1_expr49_line_479);
					int PROBE_END_LINE_479 = 479;
					deser = bean_deserializer_base_1_expr48_line_479;
                }
                int PROBE_START_LINE_481 = 481;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1732_line_481 = prop;
				JsonDeserializer<?> v_deser_1733_line_481 = deser;
				SettableBeanProperty bean_deserializer_base_1_expr50_line_481 = v_prop_1732_line_481
						.withValueDeserializer(v_deser_1733_line_481);
				int PROBE_END_LINE_481 = 481;
				SettableBeanProperty newProp = bean_deserializer_base_1_expr50_line_481;
                int PROBE_START_LINE_482 = 482;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1699_line_482 = _beanProperties;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty[] v_creator_props_1730_line_482 = creatorProps;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1732_line_482 = prop;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_new_prop_1734_line_482 = newProp;
				int PROBE_END_LINE_482 = 482;
				_replaceProperty(f__bean_properties_1699_line_482, v_creator_props_1730_line_482, v_prop_1732_line_482, v_new_prop_1734_line_482);
            }
        }

        int PROBE_START_LINE_487 = 533;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap f__bean_properties_1699_line_487 = _beanProperties;
		int PROBE_END_LINE_487 = 533;
		// Second loop: contextualize, find other pieces
        for (SettableBeanProperty origProp : f__bean_properties_1699_line_487) {
            int PROBE_START_LINE_488 = 488;
			SettableBeanProperty v_orig_prop_1735_line_488 = origProp;
			int PROBE_END_LINE_488 = 488;
			SettableBeanProperty prop = v_orig_prop_1735_line_488;
            int PROBE_START_LINE_489 = 489;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1736_line_489 = prop;
			JsonDeserializer<?> bean_deserializer_base_1_expr52_line_489 = v_prop_1736_line_489.getValueDeserializer();
			int PROBE_END_LINE_489 = 489;
			JsonDeserializer<?> deser = bean_deserializer_base_1_expr52_line_489;
            int PROBE_START_LINE_490 = 490;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1728_line_490 = ctxt;
			JsonDeserializer<?> v_deser_1737_line_490 = deser;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1736_line_490 = prop;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_1736_line_490_v1 = prop;
			com.fasterxml.jackson.databind.JavaType bean_deserializer_base_1_expr55_line_490 = v_prop_1736_line_490_v1
					.getType();
			JsonDeserializer<?> bean_deserializer_base_1_expr54_line_490 = p_ctxt_1728_line_490
					.handlePrimaryContextualization(v_deser_1737_line_490, v_prop_1736_line_490,
							bean_deserializer_base_1_expr55_line_490);
			int PROBE_END_LINE_490 = 490;
			deser = bean_deserializer_base_1_expr54_line_490;
            prop = prop.withValueDeserializer(deser);
            // Need to link managed references with matching back references
            prop = _resolveManagedReferenceProperty(ctxt, prop);

            // [databind#351]: need to wrap properties that require object id resolution.
            if (!(prop instanceof ManagedReferenceProperty)) {
                prop = _resolvedObjectIdProperty(ctxt, prop);
            }
            // Support unwrapped values (via @JsonUnwrapped)
            SettableBeanProperty u = _resolveUnwrappedProperty(ctxt, prop);
            if (u != null) {
                prop = u;
                if (unwrapped == null) {
                    unwrapped = new UnwrappedPropertyHandler();
                }
                unwrapped.addProperty(prop);
                // 12-Dec-2014, tatu: As per [databind#647], we will have problems if
                //    the original property is left in place. So let's remove it now.
                // 25-Mar-2017, tatu: Wonder if this could be problematic wrt creators?
                _beanProperties.remove(prop);
                continue;
            }
            // non-static inner classes too:
            prop = _resolveInnerClassValuedProperty(ctxt, prop);
            if (prop != origProp) {
                _replaceProperty(_beanProperties, creatorProps, origProp, prop);
            }

            // one more thing: if this property uses "external property" type inclusion,
            // it needs different handling altogether
            if (prop.hasValueTypeDeserializer()) {
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
        // "any setter" may also need to be resolved now
        if (_anySetter != null && !_anySetter.hasValueDeserializer()) {
            _anySetter = _anySetter.withValueDeserializer(findDeserializer(ctxt,
                    _anySetter.getType(), _anySetter.getProperty()));
        }
        // as well as delegate-based constructor:
        if (_valueInstantiator.canCreateUsingDelegate()) {
            JavaType delegateType = _valueInstantiator.getDelegateType(ctxt.getConfig());
            if (delegateType == null) {
                throw new IllegalArgumentException("Invalid delegate-creator definition for "+_beanType
                        +": value instantiator ("+_valueInstantiator.getClass().getName()
                        +") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            }
            _delegateDeserializer = _findDelegateDeserializer(ctxt, delegateType,
                    _valueInstantiator.getDelegateCreator());
        }

        // and array-delegate-based constructor:
        if (_valueInstantiator.canCreateUsingArrayDelegate()) {
            JavaType delegateType = _valueInstantiator.getArrayDelegateType(ctxt.getConfig());
            if (delegateType == null) {
                throw new IllegalArgumentException("Invalid array-delegate-creator definition for "+_beanType
                        +": value instantiator ("+_valueInstantiator.getClass().getName()
                        +") returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'");
            }
            _arrayDelegateDeserializer = _findDelegateDeserializer(ctxt, delegateType,
                    _valueInstantiator.getArrayDelegateCreator());
        }

        // And now that we know CreatorProperty instances are also resolved can finally create the creator:
        if (creatorProps != null) {
            _propertyBasedCreator = PropertyBasedCreator.construct(ctxt, _valueInstantiator, creatorProps);
        }

        if (extTypes != null) {
            // 21-Jun-2016, tatu: related to [databind#999], may need to link type ids too,
            //    so need to pass collected properties
            _externalTypeIdHandler = extTypes.build(_beanProperties);
            // we consider this non-standard, to offline handling
            _nonStandardCreation = true;
        }
        
        _unwrappedPropertyHandler = unwrapped;
        if (unwrapped != null) { // we consider this non-standard, to offline handling
            _nonStandardCreation = true;
        }
        // may need to disable vanilla processing, if unwrapped handling was enabled...
        _vanillaProcessing = _vanillaProcessing && !_nonStandardCreation;
    }

    /**
     * @since 2.8.8
     */
    protected void _replaceProperty(BeanPropertyMap props, SettableBeanProperty[] creatorProps,
            SettableBeanProperty origProp, SettableBeanProperty newProp)
    {
        int PROBE_START_LINE_590 = 590;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap p_props_1738_line_590 = props;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_new_prop_1741_line_590 = newProp;
		int PROBE_END_LINE_590 = 590;
		p_props_1738_line_590.replace(p_new_prop_1741_line_590);
        int PROBE_START_LINE_592 = 609;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] p_creator_props_1739_line_592 = creatorProps;
		boolean bean_deserializer_base_1_expr57_line_592 = p_creator_props_1739_line_592 != null;
		int PROBE_END_LINE_592 = 609;
		// [databind#795]: Make sure PropertyBasedCreator's properties stay in sync
        if (bean_deserializer_base_1_expr57_line_592) {
            // 18-May-2015, tatu: _Should_ start with consistent set. But can we really
            //   fully count on this? May need to revisit in future; seems to hold for now.
            for (int i = 0, len = creatorProps.length; i < len; ++i) {
                if (creatorProps[i] == origProp) {
                    creatorProps[i] = newProp;
                    return;
                }
            }
            // ... as per above, it is possible we'd need to add this as fallback
            // if (but only if) identity check fails?
            /*
            if (creatorProps[i].getName().equals(prop.getName())) {
                creatorProps[i] = prop;
                break;
            }
            */
        }
    }

    private JsonDeserializer<Object> _findDelegateDeserializer(DeserializationContext ctxt, JavaType delegateType,
            AnnotatedWithParams delegateCreator) throws JsonMappingException {
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
        int PROBE_START_LINE_646 = 646;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1745_line_646 = ctxt;
		AnnotationIntrospector bean_deserializer_base_1_expr58_line_646 = p_ctxt_1745_line_646
				.getAnnotationIntrospector();
		int PROBE_END_LINE_646 = 646;
		final AnnotationIntrospector intr = bean_deserializer_base_1_expr58_line_646;
        int PROBE_START_LINE_647 = 657;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1747_line_647 = intr;
		boolean bean_deserializer_base_1_expr59_line_647 = v_intr_1747_line_647 != null;
		int PROBE_END_LINE_647 = 657;
		if (bean_deserializer_base_1_expr59_line_647) {
            int PROBE_START_LINE_648 = 648;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1747_line_648 = intr;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_1746_line_648 = prop;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember bean_deserializer_base_1_expr61_line_648 = p_prop_1746_line_648
					.getMember();
			Object bean_deserializer_base_1_expr60_line_648 = v_intr_1747_line_648
					.findDeserializationConverter(bean_deserializer_base_1_expr61_line_648);
			int PROBE_END_LINE_648 = 648;
			Object convDef = bean_deserializer_base_1_expr60_line_648;
            int PROBE_START_LINE_649 = 656;
			Object v_conv_def_1748_line_649 = convDef;
			boolean bean_deserializer_base_1_expr62_line_649 = v_conv_def_1748_line_649 != null;
			int PROBE_END_LINE_649 = 656;
			if (bean_deserializer_base_1_expr62_line_649) {
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
        ObjectIdReader oir = _objectIdReader;

        // First: may have an override for Object Id:
        final AnnotationIntrospector intr = ctxt.getAnnotationIntrospector();
        final AnnotatedMember accessor = (property == null || intr == null)
                ? null : property.getMember();
        if (accessor != null && intr != null) {
            ObjectIdInfo objectIdInfo = intr.findObjectIdInfo(accessor);
            if (objectIdInfo != null) { // some code duplication here as well (from BeanDeserializerFactory)
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
        if (oir != null && oir != _objectIdReader) {
            contextual = contextual.withObjectIdReader(oir);
        }
        // And possibly add more properties to ignore
        if (accessor != null) {
            JsonIgnoreProperties.Value ignorals = intr.findPropertyIgnorals(accessor);
            if (ignorals != null) {
                Set<String> ignored = ignorals.findIgnoredForDeserialization();
                if (!ignored.isEmpty()) {
                    Set<String> prev = contextual._ignorableProps;
                    if ((prev != null) && !prev.isEmpty()) {
                        ignored = new HashSet<String>(ignored);
                        ignored.addAll(prev);
                    }
                    contextual = contextual.withIgnorableProperties(ignored);
                }
            }
        }

        // One more thing: are we asked to serialize POJO as array?
        JsonFormat.Value format = findFormatOverrides(ctxt, property, handledType());
        JsonFormat.Shape shape = null;
        if (format != null) {
            if (format.hasShape()) {
                shape = format.getShape();
            }
            // 16-May-2016, tatu: How about per-property case-insensitivity?
            Boolean B = format.getFeature(JsonFormat.Feature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
            if (B != null) {
                // !!! TODO
                BeanPropertyMap propsOrig = _beanProperties;
                BeanPropertyMap props = propsOrig.withCaseInsensitivity(B.booleanValue());
                if (props != propsOrig) {
                    contextual = contextual.withBeanProperties(props);
                }
            }
        }

        if (shape == null) {
            shape = _serializationShape;
        }
        if (shape == JsonFormat.Shape.ARRAY) {
            contextual = contextual.asArrayDeserializer();
        }
        return contextual;
    }

    /**
     * Helper method called to see if given property is part of 'managed' property
     * pair (managed + back reference), and if so, handle resolution details.
     */
    protected SettableBeanProperty _resolveManagedReferenceProperty(DeserializationContext ctxt,
            SettableBeanProperty prop)
    {
        String refName = prop.getManagedReferenceName();
        if (refName == null) {
            return prop;
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
    protected SettableBeanProperty _resolvedObjectIdProperty(DeserializationContext ctxt,
            SettableBeanProperty prop) throws JsonMappingException
    {
        ObjectIdInfo objectIdInfo = prop.getObjectIdInfo();
        JsonDeserializer<Object> valueDeser = prop.getValueDeserializer();
        ObjectIdReader objectIdReader = (valueDeser == null) ? null : valueDeser.getObjectIdReader();
        if (objectIdInfo == null && objectIdReader == null) {
            return prop;
        }
        return new ObjectIdReferenceProperty(prop, objectIdInfo);
    }

    /**
     * Helper method called to see if given property might be so-called unwrapped
     * property: these require special handling.
     */
    protected SettableBeanProperty _resolveUnwrappedProperty(DeserializationContext ctxt,
            SettableBeanProperty prop)
    {
        AnnotatedMember am = prop.getMember();
        if (am != null) {
            NameTransformer unwrapper = ctxt.getAnnotationIntrospector().findUnwrappingNameTransformer(am);
            if (unwrapper != null) {
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
        /* Should we encounter a property that has non-static inner-class
         * as value, we need to add some more magic to find the "hidden" constructor...
         */
        JsonDeserializer<Object> deser = prop.getValueDeserializer();
        // ideally wouldn't rely on it being BeanDeserializerBase; but for now it'll have to do
        if (deser instanceof BeanDeserializerBase) {
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
        return prop;
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
                if ((t == JsonToken.FIELD_NAME) && _objectIdReader.maySerializeAsObject()
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
        // should only occur for abstract types...
        if (_beanType.isAbstract()) {
            return ctxt.handleMissingInstantiator(handledType(), p,
                    "abstract type (need to add/enable type information?)");
        }
        // 25-Jan-2017, tatu: We do not actually support use of Creators for non-static
        //   inner classes -- with one and only one exception; that of default constructor!
        //   -- so let's indicate it
        Class<?> raw = _beanType.getRawClass();
        if (ClassUtil.isNonStaticInnerClass(raw)) {
            return ctxt.handleMissingInstantiator(raw, p,
"can only instantiate non-static inner class by using default, no-argument constructor");
        }
        return ctxt.handleMissingInstantiator(raw, p,
"no suitable constructor found, can not deserialize from Object value (missing default constructor or creator, or perhaps need to add/enable type information?)");
    }

    protected abstract Object _deserializeUsingPropertyBased(final JsonParser p,
            final DeserializationContext ctxt)
        throws IOException, JsonProcessingException;

    @SuppressWarnings("incomplete-switch")
    public Object deserializeFromNumber(JsonParser p, DeserializationContext ctxt)
        throws IOException
    {
        // First things first: id Object Id is used, most likely that's it
        if (_objectIdReader != null) {
            return deserializeFromObjectId(p, ctxt);
        }
        final JsonDeserializer<Object> delegateDeser = _delegateDeserializer();
        switch (p.getNumberType()) {
        case INT:
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
        case LONG:
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
        return ctxt.handleMissingInstantiator(handledType(), p,
                "no suitable creator method found to deserialize from Number value (%s)",
                p.getNumberValue());
    }

    public Object deserializeFromString(JsonParser p, DeserializationContext ctxt) throws IOException
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
        return ctxt.handleMissingInstantiator(handledType(), p,
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
        // note: can not call `_delegateDeserializer()` since order reversed here:
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
        
        return p.getEmbeddedObject();
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
     * setter, any-setter or field, and thus can not be assigned.
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

    protected Object wrapInstantiationProblem(Throwable t, DeserializationContext ctxt)
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
        return ctxt.handleInstantiationProblem(_beanType.getRawClass(), null, t);
    }
}
