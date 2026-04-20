package com.fasterxml.jackson.databind.deser;

import java.io.IOException;
import java.lang.annotation.Annotation;

import com.fasterxml.jackson.core.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.impl.FailingDeserializer;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ViewMatcher;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Base class for deserializable properties of a bean: contains
 * both type and name definitions, and reflection-based set functionality.
 * Concrete sub-classes implement details, so that field- and
 * setter-backed properties, as well as a few more esoteric variations,
 * can be handled.
 */
@SuppressWarnings("serial")
public abstract class SettableBeanProperty
    extends ConcreteBeanPropertyBase
    implements java.io.Serializable
{
    /**
     * To avoid nasty NPEs, let's use a placeholder for _valueDeserializer,
     * if real deserializer is not (yet) available.
     * 
     * @since 2.2
     */
    protected static final JsonDeserializer<Object> MISSING_VALUE_DESERIALIZER = new FailingDeserializer(
            "No _valueDeserializer assigned");
    
    /**
     * Logical name of the property (often but not always derived
     * from the setter method name)
     */
    protected final PropertyName _propName;

    /**
     * Base type for property; may be a supertype of actual value.
     */
    protected final JavaType _type;

    /**
     * @since 2.2
     */
    protected final PropertyName _wrapperName;
    
    /**
     * Class that contains this property (either class that declares
     * the property or one of its subclasses), class that is
     * deserialized using deserializer that contains this property.
     */
    protected final transient Annotations _contextAnnotations;
    
    /**
     * Deserializer used for handling property value.
     *<p>
     * NOTE: has been immutable since 2.3
     */
    protected final JsonDeserializer<Object> _valueDeserializer;

    /**
     * If value will contain type information (to support
     * polymorphic handling), this is the type deserializer
     * used to handle type resolution.
     */
    protected final TypeDeserializer _valueTypeDeserializer;

    /*
    /**********************************************************
    /* Configuration that is not yet immutable; generally assigned
    /* during initialization process but can not be passed to
    /* constructor.
    /**********************************************************
     */

    /**
     * If property represents a managed (forward) reference
     * (see [JACKSON-235]), we will need name of reference for
     * later linking.
     *<p>
     * TODO: should try to make immutable.
     */
    protected String _managedReferenceName;

    /**
     * This is the information for object identity associated with the property.
     * <p>
     * TODO: should try to make immutable.
     */
    protected ObjectIdInfo _objectIdInfo;

    /**
     * Helper object used for checking whether this property is to
     * be included in the active view, if property is view-specific;
     * null otherwise.
     *<p>
     * TODO: should try to make immutable.
     */
    protected ViewMatcher _viewMatcher;
    
    int PROBE_START_LINE_107 = 115;

	protected int settable_bean_property_1_expr2_line_115 = -1;

	int PROBE_END_LINE_107 = 115;

	/**
     * Index of property (within all property of a bean); assigned
     * when all properties have been collected. Order of entries
     * is arbitrary, but once indexes are assigned they are not
     * changed.
     *<p>
     * TODO: should try to make immutable if at all possible
     */
    protected int _propertyIndex = settable_bean_property_1_expr2_line_115;

    /*
    /**********************************************************
    /* Life-cycle (construct & configure)
    /**********************************************************
     */

    protected SettableBeanProperty(BeanPropertyDefinition propDef,
            JavaType type, TypeDeserializer typeDeser, Annotations contextAnnotations)
    {
        this(propDef.getFullName(), type, propDef.getWrapperName(), typeDeser,
                contextAnnotations, propDef.getMetadata());
    }

    @Deprecated // since 2.3
    protected SettableBeanProperty(String propName, JavaType type, PropertyName wrapper,
            TypeDeserializer typeDeser, Annotations contextAnnotations,
            boolean isRequired)
    {
        this(new PropertyName(propName), type, wrapper, typeDeser, contextAnnotations,
                PropertyMetadata.construct(Boolean.valueOf(isRequired), null, null, null));
    }
    
    protected SettableBeanProperty(PropertyName propName, JavaType type, PropertyName wrapper,
            TypeDeserializer typeDeser, Annotations contextAnnotations,
            PropertyMetadata metadata)
    {
        super(metadata);
        int PROBE_START_LINE_149 = 153;
		com.fasterxml.jackson.databind.PropertyName p_prop_name_2142_line_149 = propName;
		boolean settable_bean_property_1_expr8_line_149 = p_prop_name_2142_line_149 == null;
		int PROBE_END_LINE_149 = 153;
		// 09-Jan-2009, tatu: Intern()ing makes sense since Jackson parsed
        //  field names are (usually) interned too, hence lookups will be faster.
        // 23-Oct-2009, tatu: should this be disabled wrt [JACKSON-180]?
        //   Probably need not, given that namespace of field/method names
        //   is not unbounded, unlike potential JSON names.
        if (settable_bean_property_1_expr8_line_149) {
            _propName = PropertyName.NO_NAME;
        } else {
            int PROBE_START_LINE_152 = 152;
			com.fasterxml.jackson.databind.PropertyName p_prop_name_2142_line_152 = propName;
			com.fasterxml.jackson.databind.PropertyName settable_bean_property_1_expr10_line_152 = p_prop_name_2142_line_152
					.internSimpleName();
			int PROBE_END_LINE_152 = 152;
			_propName = settable_bean_property_1_expr10_line_152;
        }
        int PROBE_START_LINE_154 = 154;
		com.fasterxml.jackson.databind.JavaType p_type_2143_line_154 = type;
		int PROBE_END_LINE_154 = 154;
		_type = p_type_2143_line_154;
        int PROBE_START_LINE_155 = 155;
		com.fasterxml.jackson.databind.PropertyName p_wrapper_2144_line_155 = wrapper;
		int PROBE_END_LINE_155 = 155;
		_wrapperName = p_wrapper_2144_line_155;
        int PROBE_START_LINE_156 = 156;
		com.fasterxml.jackson.databind.util.Annotations p_context_annotations_2146_line_156 = contextAnnotations;
		int PROBE_END_LINE_156 = 156;
		_contextAnnotations = p_context_annotations_2146_line_156;
        _viewMatcher = null;

        int PROBE_START_LINE_160 = 162;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deser_2145_line_160 = typeDeser;
		boolean settable_bean_property_1_expr15_line_160 = p_type_deser_2145_line_160 != null;
		int PROBE_END_LINE_160 = 162;
		// 30-Jan-2012, tatu: Important: contextualize TypeDeserializer now...
        if (settable_bean_property_1_expr15_line_160) {
            int PROBE_START_LINE_161 = 161;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deser_2145_line_161 = typeDeser;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer settable_bean_property_1_expr17_line_161 = p_type_deser_2145_line_161
					.forProperty(this);
			int PROBE_END_LINE_161 = 161;
			typeDeser = settable_bean_property_1_expr17_line_161;
        }
        int PROBE_START_LINE_163 = 163;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deser_2145_line_163 = typeDeser;
		int PROBE_END_LINE_163 = 163;
		_valueTypeDeserializer = p_type_deser_2145_line_163;
        int PROBE_START_LINE_164 = 164;
		JsonDeserializer<Object> f_missing_value_deserializer_2130_line_164 = MISSING_VALUE_DESERIALIZER;
		int PROBE_END_LINE_164 = 164;
		_valueDeserializer = f_missing_value_deserializer_2130_line_164;
    }

    /**
     * Constructor only used by {@link com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty}.
     * 
     * @since 2.3
     */
    protected SettableBeanProperty(PropertyName propName, JavaType type, 
            PropertyMetadata metadata, JsonDeserializer<Object> valueDeser)
    {
        super(metadata);
        // as with above ctor, intern()ing probably fine
        if (propName == null) {
            _propName = PropertyName.NO_NAME;
        } else {
            _propName = propName.internSimpleName();
        }
        _type = type;
        _wrapperName = null;
        _contextAnnotations = null;
        _viewMatcher = null;
        _valueTypeDeserializer = null;
        _valueDeserializer = valueDeser;
    }
    
    /**
     * Basic copy-constructor for sub-classes to use.
     */
    protected SettableBeanProperty(SettableBeanProperty src)
    {
        super(src);
        _propName = src._propName;
        _type = src._type;
        _wrapperName = src._wrapperName;
        _contextAnnotations = src._contextAnnotations;
        _valueDeserializer = src._valueDeserializer;
        _valueTypeDeserializer = src._valueTypeDeserializer;
        _managedReferenceName = src._managedReferenceName;
        _propertyIndex = src._propertyIndex;
        _viewMatcher = src._viewMatcher;
    }

    /**
     * Copy-with-deserializer-change constructor for sub-classes to use.
     */
    @SuppressWarnings("unchecked")
    protected SettableBeanProperty(SettableBeanProperty src, JsonDeserializer<?> deser)
    {
        super(src);
        int PROBE_START_LINE_214 = 214;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_2160_line_214 = src;
		com.fasterxml.jackson.databind.PropertyName q__prop_name_57_line_214 = p_src_2160_line_214._propName;
		int PROBE_END_LINE_214 = 214;
		_propName = q__prop_name_57_line_214;
        int PROBE_START_LINE_215 = 215;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_2160_line_215 = src;
		com.fasterxml.jackson.databind.JavaType q__type_58_line_215 = p_src_2160_line_215._type;
		int PROBE_END_LINE_215 = 215;
		_type = q__type_58_line_215;
        int PROBE_START_LINE_216 = 216;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_2160_line_216 = src;
		com.fasterxml.jackson.databind.PropertyName q__wrapper_name_59_line_216 = p_src_2160_line_216._wrapperName;
		int PROBE_END_LINE_216 = 216;
		_wrapperName = q__wrapper_name_59_line_216;
        int PROBE_START_LINE_217 = 217;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_2160_line_217 = src;
		com.fasterxml.jackson.databind.util.Annotations q__context_annotations_60_line_217 = p_src_2160_line_217._contextAnnotations;
		int PROBE_END_LINE_217 = 217;
		_contextAnnotations = q__context_annotations_60_line_217;
        int PROBE_START_LINE_218 = 218;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_2160_line_218 = src;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer q__value_type_deserializer_61_line_218 = p_src_2160_line_218._valueTypeDeserializer;
		int PROBE_END_LINE_218 = 218;
		_valueTypeDeserializer = q__value_type_deserializer_61_line_218;
        int PROBE_START_LINE_219 = 219;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_2160_line_219 = src;
		String q__managed_reference_name_62_line_219 = p_src_2160_line_219._managedReferenceName;
		int PROBE_END_LINE_219 = 219;
		_managedReferenceName = q__managed_reference_name_62_line_219;
        int PROBE_START_LINE_220 = 220;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_2160_line_220 = src;
		int q__property_index_63_line_220 = p_src_2160_line_220._propertyIndex;
		int PROBE_END_LINE_220 = 220;
		_propertyIndex = q__property_index_63_line_220;

        int PROBE_START_LINE_222 = 226;
		JsonDeserializer<?> p_deser_2161_line_222 = deser;
		boolean settable_bean_property_1_expr29_line_222 = p_deser_2161_line_222 == null;
		int PROBE_END_LINE_222 = 226;
		if (settable_bean_property_1_expr29_line_222) {
            _valueDeserializer = MISSING_VALUE_DESERIALIZER;
        } else {
            int PROBE_START_LINE_225 = 225;
			JsonDeserializer<?> p_deser_2161_line_225 = deser;
			int PROBE_END_LINE_225 = 225;
			_valueDeserializer = (JsonDeserializer<Object>) p_deser_2161_line_225;
        }
        int PROBE_START_LINE_227 = 227;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_2160_line_227 = src;
		com.fasterxml.jackson.databind.util.ViewMatcher q__view_matcher_64_line_227 = p_src_2160_line_227._viewMatcher;
		int PROBE_END_LINE_227 = 227;
		_viewMatcher = q__view_matcher_64_line_227;
    }

    /**
     * Copy-with-deserializer-change constructor for sub-classes to use.
     */
    protected SettableBeanProperty(SettableBeanProperty src, PropertyName newName)
    {
        super(src);
        _propName = newName;
        _type = src._type;
        _wrapperName = src._wrapperName;
        _contextAnnotations = src._contextAnnotations;
        _valueDeserializer = src._valueDeserializer;
        _valueTypeDeserializer = src._valueTypeDeserializer;
        _managedReferenceName = src._managedReferenceName;
        _propertyIndex = src._propertyIndex;
        _viewMatcher = src._viewMatcher;
    }

    /**
     * Fluent factory method for constructing and returning a new instance
     * with specified value deserializer.
     * Note that this method should NOT change configuration of this instance.
     * 
     * @param deser Deserializer to assign to the new property instance
     * 
     * @return Newly constructed instance, if value deserializer differs from the
     *   one used for this instance; or 'this' if not.
     */
    public abstract SettableBeanProperty withValueDeserializer(JsonDeserializer<?> deser);

    /**
     * Fluent factory method for constructing and returning a new instance
     * with specified property name.
     * Note that this method should NOT change configuration of this instance.
     * 
     * @param newName Name to use for the new instance.
     * 
     * @return Newly constructed instance, if property name differs from the
     *   one used for this instance; or 'this' if not.
     */
    public abstract SettableBeanProperty withName(PropertyName newName);

    /**
     * @since 2.3
     */
    public SettableBeanProperty withSimpleName(String simpleName) {
        PropertyName n = (_propName == null)
                ? new PropertyName(simpleName) : _propName.withSimpleName(simpleName);
        return (n == _propName) ? this : withName(n);
    }
    
    @Deprecated // since 2.3 -- use 'withSimpleName' instead if need be
    public SettableBeanProperty withName(String simpleName) {
        return withName(new PropertyName(simpleName));
    }

    public void setManagedReferenceName(String n) {
        _managedReferenceName = n;
    }

    public void setObjectIdInfo(ObjectIdInfo objectIdInfo) {
        _objectIdInfo = objectIdInfo;
    }

    public void setViews(Class<?>[] views) {
        int PROBE_START_LINE_294 = 298;
		Class<?>[] p_views_2171_line_294 = views;
		boolean settable_bean_property_1_expr33_line_294 = p_views_2171_line_294 == null;
		int PROBE_END_LINE_294 = 298;
		if (settable_bean_property_1_expr33_line_294) {
            _viewMatcher = null;
        } else {
            _viewMatcher = ViewMatcher.construct(views);
        }
    }
    
    /**
     * Method used to assign index for property.
     */
    public void assignIndex(int index) {
        int PROBE_START_LINE_305 = 307;
		int f__property_index_2131_line_305 = _propertyIndex;
		int settable_bean_property_1_expr36_line_305 = -1;
		boolean settable_bean_property_1_expr35_line_305 = f__property_index_2131_line_305 != settable_bean_property_1_expr36_line_305;
		int PROBE_END_LINE_305 = 307;
		if (settable_bean_property_1_expr35_line_305) {
            throw new IllegalStateException("Property '"+getName()+"' already had index ("+_propertyIndex+"), trying to assign "+index);
        }
        int PROBE_START_LINE_308 = 308;
		int p_index_2172_line_308 = index;
		int PROBE_END_LINE_308 = 308;
		_propertyIndex = p_index_2172_line_308;
    }

    /**
     * Method called to ensure that the mutator has proper access rights to
     * be called, as per configuration. Overridden by implementations that
     * have mutators that require access, fields and setters.
     *
     * @since 2.8.3
     */
    public void fixAccess(DeserializationConfig config) {
        ;
    }

    /*
    /**********************************************************
    /* BeanProperty impl
    /**********************************************************
     */
    
    @Override
    public final String getName() {
        int PROBE_START_LINE_330 = 330;
		com.fasterxml.jackson.databind.PropertyName f__prop_name_2148_line_330 = _propName;
		String settable_bean_property_1_expr38_line_330 = f__prop_name_2148_line_330.getSimpleName();
		int PROBE_END_LINE_330 = 330;
		return settable_bean_property_1_expr38_line_330;
    }

    @Override
    public PropertyName getFullName() {
        return _propName;
    }

    @Override
    public JavaType getType() { int PROBE_START_LINE_339 = 339;
		com.fasterxml.jackson.databind.JavaType f__type_2149_line_339 = _type;
		int PROBE_END_LINE_339 = 339;
	return f__type_2149_line_339; }

    @Override
    public PropertyName getWrapperName() {
        return _wrapperName;
    }
    
    @Override
    public abstract AnnotatedMember getMember();

    @Override
    public abstract <A extends Annotation> A getAnnotation(Class<A> acls);

    @Override
    public <A extends Annotation> A getContextAnnotation(Class<A> acls) {
        return _contextAnnotations.get(acls);
    }

    @Override
    public void depositSchemaProperty(JsonObjectFormatVisitor objectVisitor,
            SerializerProvider provider)
        throws JsonMappingException
    {
        if (isRequired()) {
            objectVisitor.property(this); 
        } else {
            objectVisitor.optionalProperty(this);
        }
    }

    /*
    /**********************************************************
    /* Accessors
    /**********************************************************
     */

    protected final Class<?> getDeclaringClass() {
        return getMember().getDeclaringClass();
    }

    public String getManagedReferenceName() { return _managedReferenceName; }

    public ObjectIdInfo getObjectIdInfo() { return _objectIdInfo; }

    public boolean hasValueDeserializer() {
        int PROBE_START_LINE_384 = 384;
		JsonDeserializer<Object> f__value_deserializer_2154_line_384 = _valueDeserializer;
		boolean settable_bean_property_1_expr41_line_384 = f__value_deserializer_2154_line_384 != null;
		boolean settable_bean_property_1_expr40_line_384 = (settable_bean_property_1_expr41_line_384);
		boolean settable_bean_property_1_expr42_line_384 = true;
		if (settable_bean_property_1_expr40_line_384) {
			JsonDeserializer<Object> f__value_deserializer_2154_line_384_v1 = _valueDeserializer;
			JsonDeserializer<Object> f_missing_value_deserializer_2130_line_384 = MISSING_VALUE_DESERIALIZER;
			boolean settable_bean_property_1_expr43_line_384 = f__value_deserializer_2154_line_384_v1 != f_missing_value_deserializer_2130_line_384;
			settable_bean_property_1_expr42_line_384 = (settable_bean_property_1_expr43_line_384);
		}
		boolean settable_bean_property_1_expr39_line_384 = settable_bean_property_1_expr40_line_384
				&& settable_bean_property_1_expr42_line_384;
		int PROBE_END_LINE_384 = 384;
		return settable_bean_property_1_expr39_line_384;
    }

    public boolean hasValueTypeDeserializer() { return (_valueTypeDeserializer != null); }
    
    public JsonDeserializer<Object> getValueDeserializer() {
        int PROBE_START_LINE_390 = 390;
		JsonDeserializer<Object> f__value_deserializer_2154_line_390 = _valueDeserializer;
		int PROBE_END_LINE_390 = 390;
		JsonDeserializer<Object> deser = f__value_deserializer_2154_line_390;
        int PROBE_START_LINE_391 = 393;
		JsonDeserializer<Object> v_deser_2178_line_391 = deser;
		JsonDeserializer<Object> f_missing_value_deserializer_2130_line_391 = MISSING_VALUE_DESERIALIZER;
		boolean settable_bean_property_1_expr44_line_391 = v_deser_2178_line_391 == f_missing_value_deserializer_2130_line_391;
		int PROBE_END_LINE_391 = 393;
		if (settable_bean_property_1_expr44_line_391) {
            return null;
        }
        int PROBE_START_LINE_394 = 394;
		JsonDeserializer<Object> v_deser_2178_line_394 = deser;
		int PROBE_END_LINE_394 = 394;
		return v_deser_2178_line_394;
    }

    public TypeDeserializer getValueTypeDeserializer() { return _valueTypeDeserializer; }

    public boolean visibleInView(Class<?> activeView) {
        return (_viewMatcher == null) || _viewMatcher.isVisibleForView(activeView);
    }
    
    public boolean hasViews() { int PROBE_START_LINE_403 = 403;
		com.fasterxml.jackson.databind.util.ViewMatcher f__view_matcher_2152_line_403 = _viewMatcher;
		boolean settable_bean_property_1_expr45_line_403 = f__view_matcher_2152_line_403 != null;
		int PROBE_END_LINE_403 = 403;
	return settable_bean_property_1_expr45_line_403; }
    
    /**
     * Method for accessing unique index of this property; indexes are
     * assigned once all properties of a {@link BeanDeserializer} have
     * been collected.
     * 
     * @return Index of this property
     */
    public int getPropertyIndex() { return _propertyIndex; }

    /**
     * Method for accessing index of the creator property: for other
     * types of properties will simply return -1.
     * 
     * @since 2.1
     */
    public int getCreatorIndex() {
        // changed from 'return -1' in 2.7.9 / 2.8.7
        throw new IllegalStateException(String.format(
                "Internal error: no creator index for property '%s' (of type %s)",
                this.getName(), getClass().getName()));
    }

    /**
     * Accessor for id of injectable value, if this bean property supports
     * value injection.
     */
    public Object getInjectableValueId() { return null; }
    
    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    /**
     * Method called to deserialize appropriate value, given parser (and
     * context), and set it using appropriate mechanism.
     * Pre-condition is that passed parser must point to the first token
     * that should be consumed to produce the value (the only value for
     * scalars, multiple for Objects and Arrays).
     */
    public abstract void deserializeAndSet(JsonParser p,
    		DeserializationContext ctxt, Object instance) throws IOException;

	/**
	 * Alternative to {@link #deserializeAndSet} that returns
	 * either return value of setter method called (if one is),
	 * or null to indicate that no return value is available.
	 * Mostly used to support Builder style deserialization.
	 *
	 * @since 2.0
	 */
    public abstract Object deserializeSetAndReturn(JsonParser p,
    		DeserializationContext ctxt, Object instance) throws IOException;

    /**
     * Method called to assign given value to this property, on
     * specified Object.
     *<p>
     * Note: this is an optional operation, not supported by all
     * implementations, creator-backed properties for example do not
     * support this method.
     */
    public abstract void set(Object instance, Object value) throws IOException;

    /**
     * Method called to assign given value to this property, on
     * specified Object, and return whatever delegating accessor
     * returned (if anything)
     *<p>
     * Note: this is an optional operation, not supported by all
     * implementations, creator-backed properties for example do not
     * support this method.
     */
    public abstract Object setAndReturn(Object instance, Object value) throws IOException;
    
    /**
     * This method is needed by some specialized bean deserializers,
     * and also called by some {@link #deserializeAndSet} implementations.
     *<p>
     * Pre-condition is that passed parser must point to the first token
     * that should be consumed to produce the value (the only value for
     * scalars, multiple for Objects and Arrays).
     *<p> 
     * Note that this method is final for performance reasons: to override
     * functionality you must override other methods that call this method;
     * this method should also not be called directly unless you really know
     * what you are doing (and probably not even then).
     */
    public final Object deserialize(JsonParser p, DeserializationContext ctxt) throws IOException
    {
        JsonToken t = p.getCurrentToken();

        if (t == JsonToken.VALUE_NULL) {
            return _valueDeserializer.getNullValue(ctxt);
        }
        if (_valueTypeDeserializer != null) {
            return _valueDeserializer.deserializeWithType(p, ctxt, _valueTypeDeserializer);
        }
        return _valueDeserializer.deserialize(p, ctxt);
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    /**
     * Method that takes in exception of any type, and casts or wraps it
     * to an IOException or its subclass.
     */
    protected void _throwAsIOE(JsonParser p, Exception e, Object value) throws IOException
    {
        if (e instanceof IllegalArgumentException) {
            String actType = (value == null) ? "[NULL]" : value.getClass().getName();
            StringBuilder msg = new StringBuilder("Problem deserializing property '").append(getName());
            msg.append("' (expected type: ").append(getType());
            msg.append("; actual type: ").append(actType).append(")");
            String origMsg = e.getMessage();
            if (origMsg != null) {
                msg.append(", problem: ").append(origMsg);
            } else {
                msg.append(" (no error message provided)");
            }
            throw JsonMappingException.from(p, msg.toString(), e);
        }
        _throwAsIOE(p, e);
    }
    
    /**
     * @since 2.7
     */
    protected IOException _throwAsIOE(JsonParser p, Exception e) throws IOException
    {
        if (e instanceof IOException) {
            throw (IOException) e;
        }
        if (e instanceof RuntimeException) {
            throw (RuntimeException) e;
        }
        // let's wrap the innermost problem
        Throwable th = e;
        while (th.getCause() != null) {
            th = th.getCause();
        }
        throw JsonMappingException.from(p, th.getMessage(), th);
    }

    @Deprecated // since 2.7
    protected IOException _throwAsIOE(Exception e) throws IOException {
        return _throwAsIOE((JsonParser) null, e);
    }

    // 10-Oct-2015, tatu: _Should_ be deprecated, too, but its remaining
    //   callers can not actually provide a JsonParser
    protected void _throwAsIOE(Exception e, Object value) throws IOException {
        _throwAsIOE((JsonParser) null, e, value);
    }

    @Override public String toString() { return "[property '"+getName()+"']"; }
}
