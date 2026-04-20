package com.fasterxml.jackson.databind.deser;

import java.io.IOException;
import java.lang.annotation.Annotation;

import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.impl.FailingDeserializer;
import com.fasterxml.jackson.databind.deser.impl.NullProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ViewMatcher;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyMetadata;

/**
 * Base class for deserializable properties of a bean: contains
 * both type and name definitions, and reflection-based set functionality.
 * Concrete sub-classes implement details, so that field- and
 * setter-backed properties, as well as a few more esoteric variations,
 * can be handled.
 */
@SuppressWarnings("serial")
public abstract class SettableBeanProperty
    implements BeanProperty,
        java.io.Serializable
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
    
    /**
     * Object used to figure out value to be used when 'null' literal is encountered in JSON.
     * For most types simply Java null, but for primitive types must
     * be a non-null value (like Integer.valueOf(0) for int).
     */
    protected final NullProvider _nullProvider;

    /**
     * Additional optional property metadata, such as whether
     * property is required, and whether there is additional
     * human-readable description
     * 
     * @since 2.3
     */
    protected final PropertyMetadata _metadata;

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
    
    int PROBE_START_LINE_125 = 133;

	protected int settable_bean_property_1_expr2_line_133 = -1;

	int PROBE_END_LINE_125 = 133;

	/**
     * Index of property (within all property of a bean); assigned
     * when all properties have been collected. Order of entries
     * is arbitrary, but once indexes are assigned they are not
     * changed.
     *<p>
     * TODO: should try to make immutable if at all possible
     */
    protected int _propertyIndex = settable_bean_property_1_expr2_line_133;

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
                PropertyMetadata.construct(isRequired, null, null, null));
    }
    
    protected SettableBeanProperty(PropertyName propName, JavaType type, PropertyName wrapper,
            TypeDeserializer typeDeser, Annotations contextAnnotations,
            PropertyMetadata metadata)
    {
        int PROBE_START_LINE_166 = 170;
		com.fasterxml.jackson.databind.PropertyName p_prop_name_1947_line_166 = propName;
		boolean settable_bean_property_1_expr7_line_166 = p_prop_name_1947_line_166 == null;
		int PROBE_END_LINE_166 = 170;
		// 09-Jan-2009, tatu: Intern()ing makes sense since Jackson parsed
        //  field names are (usually) interned too, hence lookups will be faster.
        // 23-Oct-2009, tatu: should this be disabled wrt [JACKSON-180]?
        //   Probably need not, given that namespace of field/method names
        //   is not unbounded, unlike potential JSON names.
        if (settable_bean_property_1_expr7_line_166) {
            _propName = PropertyName.NO_NAME;
        } else {
            int PROBE_START_LINE_169 = 169;
			com.fasterxml.jackson.databind.PropertyName p_prop_name_1947_line_169 = propName;
			com.fasterxml.jackson.databind.PropertyName settable_bean_property_1_expr9_line_169 = p_prop_name_1947_line_169
					.internSimpleName();
			int PROBE_END_LINE_169 = 169;
			_propName = settable_bean_property_1_expr9_line_169;
        }
        int PROBE_START_LINE_171 = 171;
		com.fasterxml.jackson.databind.JavaType p_type_1948_line_171 = type;
		int PROBE_END_LINE_171 = 171;
		_type = p_type_1948_line_171;
        int PROBE_START_LINE_172 = 172;
		com.fasterxml.jackson.databind.PropertyName p_wrapper_1949_line_172 = wrapper;
		int PROBE_END_LINE_172 = 172;
		_wrapperName = p_wrapper_1949_line_172;
        int PROBE_START_LINE_173 = 173;
		com.fasterxml.jackson.databind.PropertyMetadata p_metadata_1952_line_173 = metadata;
		int PROBE_END_LINE_173 = 173;
		_metadata = p_metadata_1952_line_173;
        int PROBE_START_LINE_174 = 174;
		com.fasterxml.jackson.databind.util.Annotations p_context_annotations_1951_line_174 = contextAnnotations;
		int PROBE_END_LINE_174 = 174;
		_contextAnnotations = p_context_annotations_1951_line_174;
        _viewMatcher = null;
        _nullProvider = null;

        int PROBE_START_LINE_179 = 181;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deser_1950_line_179 = typeDeser;
		boolean settable_bean_property_1_expr16_line_179 = p_type_deser_1950_line_179 != null;
		int PROBE_END_LINE_179 = 181;
		// 30-Jan-2012, tatu: Important: contextualize TypeDeserializer now...
        if (settable_bean_property_1_expr16_line_179) {
            typeDeser = typeDeser.forProperty(this);
        }
        int PROBE_START_LINE_182 = 182;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer p_type_deser_1950_line_182 = typeDeser;
		int PROBE_END_LINE_182 = 182;
		_valueTypeDeserializer = p_type_deser_1950_line_182;
        int PROBE_START_LINE_183 = 183;
		JsonDeserializer<Object> f_missing_value_deserializer_1935_line_183 = MISSING_VALUE_DESERIALIZER;
		int PROBE_END_LINE_183 = 183;
		_valueDeserializer = f_missing_value_deserializer_1935_line_183;
    }

    /**
     * Constructor only used by {@link com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty}.
     * 
     * @since 2.3
     */
    protected SettableBeanProperty(PropertyName propName, JavaType type, 
            PropertyMetadata metadata, JsonDeserializer<Object> valueDeser)
    {
        int PROBE_START_LINE_195 = 199;
		com.fasterxml.jackson.databind.PropertyName p_prop_name_1962_line_195 = propName;
		boolean settable_bean_property_1_expr19_line_195 = p_prop_name_1962_line_195 == null;
		int PROBE_END_LINE_195 = 199;
		// as with above ctor, intern()ing probably fine
        if (settable_bean_property_1_expr19_line_195) {
            _propName = PropertyName.NO_NAME;
        } else {
            int PROBE_START_LINE_198 = 198;
			com.fasterxml.jackson.databind.PropertyName p_prop_name_1962_line_198 = propName;
			com.fasterxml.jackson.databind.PropertyName settable_bean_property_1_expr21_line_198 = p_prop_name_1962_line_198
					.internSimpleName();
			int PROBE_END_LINE_198 = 198;
			_propName = settable_bean_property_1_expr21_line_198;
        }
        int PROBE_START_LINE_200 = 200;
		com.fasterxml.jackson.databind.JavaType p_type_1963_line_200 = type;
		int PROBE_END_LINE_200 = 200;
		_type = p_type_1963_line_200;
        _wrapperName = null;
        int PROBE_START_LINE_202 = 202;
		com.fasterxml.jackson.databind.PropertyMetadata p_metadata_1964_line_202 = metadata;
		int PROBE_END_LINE_202 = 202;
		_metadata = p_metadata_1964_line_202;
        _contextAnnotations = null;
        _viewMatcher = null;
        _nullProvider = null;
        _valueTypeDeserializer = null;
        int PROBE_START_LINE_207 = 207;
		JsonDeserializer<Object> p_value_deser_1965_line_207 = valueDeser;
		int PROBE_END_LINE_207 = 207;
		_valueDeserializer = p_value_deser_1965_line_207;
    }
    
    /**
     * Basic copy-constructor for sub-classes to use.
     */
    protected SettableBeanProperty(SettableBeanProperty src)
    {
        int PROBE_START_LINE_215 = 215;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_215 = src;
		com.fasterxml.jackson.databind.PropertyName q__prop_name_36_line_215 = p_src_1966_line_215._propName;
		int PROBE_END_LINE_215 = 215;
		_propName = q__prop_name_36_line_215;
        int PROBE_START_LINE_216 = 216;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_216 = src;
		com.fasterxml.jackson.databind.JavaType q__type_37_line_216 = p_src_1966_line_216._type;
		int PROBE_END_LINE_216 = 216;
		_type = q__type_37_line_216;
        int PROBE_START_LINE_217 = 217;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_217 = src;
		com.fasterxml.jackson.databind.PropertyName q__wrapper_name_38_line_217 = p_src_1966_line_217._wrapperName;
		int PROBE_END_LINE_217 = 217;
		_wrapperName = q__wrapper_name_38_line_217;
        int PROBE_START_LINE_218 = 218;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_218 = src;
		com.fasterxml.jackson.databind.PropertyMetadata q__metadata_39_line_218 = p_src_1966_line_218._metadata;
		int PROBE_END_LINE_218 = 218;
		_metadata = q__metadata_39_line_218;
        int PROBE_START_LINE_219 = 219;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_219 = src;
		com.fasterxml.jackson.databind.util.Annotations q__context_annotations_40_line_219 = p_src_1966_line_219._contextAnnotations;
		int PROBE_END_LINE_219 = 219;
		_contextAnnotations = q__context_annotations_40_line_219;
        int PROBE_START_LINE_220 = 220;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_220 = src;
		JsonDeserializer<Object> q__value_deserializer_41_line_220 = p_src_1966_line_220._valueDeserializer;
		int PROBE_END_LINE_220 = 220;
		_valueDeserializer = q__value_deserializer_41_line_220;
        int PROBE_START_LINE_221 = 221;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_221 = src;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer q__value_type_deserializer_42_line_221 = p_src_1966_line_221._valueTypeDeserializer;
		int PROBE_END_LINE_221 = 221;
		_valueTypeDeserializer = q__value_type_deserializer_42_line_221;
        int PROBE_START_LINE_222 = 222;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_222 = src;
		com.fasterxml.jackson.databind.deser.impl.NullProvider q__null_provider_43_line_222 = p_src_1966_line_222._nullProvider;
		int PROBE_END_LINE_222 = 222;
		_nullProvider = q__null_provider_43_line_222;
        int PROBE_START_LINE_223 = 223;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_223 = src;
		String q__managed_reference_name_44_line_223 = p_src_1966_line_223._managedReferenceName;
		int PROBE_END_LINE_223 = 223;
		_managedReferenceName = q__managed_reference_name_44_line_223;
        int PROBE_START_LINE_224 = 224;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_224 = src;
		int q__property_index_45_line_224 = p_src_1966_line_224._propertyIndex;
		int PROBE_END_LINE_224 = 224;
		_propertyIndex = q__property_index_45_line_224;
        int PROBE_START_LINE_225 = 225;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1966_line_225 = src;
		com.fasterxml.jackson.databind.util.ViewMatcher q__view_matcher_46_line_225 = p_src_1966_line_225._viewMatcher;
		int PROBE_END_LINE_225 = 225;
		_viewMatcher = q__view_matcher_46_line_225;
    }

    /**
     * Copy-with-deserializer-change constructor for sub-classes to use.
     */
    @SuppressWarnings("unchecked")
    protected SettableBeanProperty(SettableBeanProperty src, JsonDeserializer<?> deser)
    {
        int PROBE_START_LINE_234 = 234;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_234 = src;
		com.fasterxml.jackson.databind.PropertyName q__prop_name_47_line_234 = p_src_1968_line_234._propName;
		int PROBE_END_LINE_234 = 234;
		_propName = q__prop_name_47_line_234;
        int PROBE_START_LINE_235 = 235;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_235 = src;
		com.fasterxml.jackson.databind.JavaType q__type_48_line_235 = p_src_1968_line_235._type;
		int PROBE_END_LINE_235 = 235;
		_type = q__type_48_line_235;
        int PROBE_START_LINE_236 = 236;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_236 = src;
		com.fasterxml.jackson.databind.PropertyName q__wrapper_name_49_line_236 = p_src_1968_line_236._wrapperName;
		int PROBE_END_LINE_236 = 236;
		_wrapperName = q__wrapper_name_49_line_236;
        int PROBE_START_LINE_237 = 237;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_237 = src;
		com.fasterxml.jackson.databind.PropertyMetadata q__metadata_50_line_237 = p_src_1968_line_237._metadata;
		int PROBE_END_LINE_237 = 237;
		_metadata = q__metadata_50_line_237;
        int PROBE_START_LINE_238 = 238;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_238 = src;
		com.fasterxml.jackson.databind.util.Annotations q__context_annotations_51_line_238 = p_src_1968_line_238._contextAnnotations;
		int PROBE_END_LINE_238 = 238;
		_contextAnnotations = q__context_annotations_51_line_238;
        int PROBE_START_LINE_239 = 239;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_239 = src;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer q__value_type_deserializer_52_line_239 = p_src_1968_line_239._valueTypeDeserializer;
		int PROBE_END_LINE_239 = 239;
		_valueTypeDeserializer = q__value_type_deserializer_52_line_239;
        int PROBE_START_LINE_240 = 240;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_240 = src;
		String q__managed_reference_name_53_line_240 = p_src_1968_line_240._managedReferenceName;
		int PROBE_END_LINE_240 = 240;
		_managedReferenceName = q__managed_reference_name_53_line_240;
        int PROBE_START_LINE_241 = 241;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_241 = src;
		int q__property_index_54_line_241 = p_src_1968_line_241._propertyIndex;
		int PROBE_END_LINE_241 = 241;
		_propertyIndex = q__property_index_54_line_241;

        int PROBE_START_LINE_243 = 250;
		JsonDeserializer<?> p_deser_1969_line_243 = deser;
		boolean settable_bean_property_1_expr49_line_243 = p_deser_1969_line_243 == null;
		int PROBE_END_LINE_243 = 250;
		if (settable_bean_property_1_expr49_line_243) {
            _nullProvider = null;
            _valueDeserializer = MISSING_VALUE_DESERIALIZER;
        } else {
            int PROBE_START_LINE_247 = 247;
			JsonDeserializer<?> p_deser_1969_line_247 = deser;
			Object settable_bean_property_1_expr50_line_247 = p_deser_1969_line_247.getNullValue();
			int PROBE_END_LINE_247 = 247;
			Object nvl = settable_bean_property_1_expr50_line_247;
            int PROBE_START_LINE_248 = 248;
			Object v_nvl_1970_line_248 = nvl;
			boolean settable_bean_property_1_expr55_line_248 = v_nvl_1970_line_248 == null;
			boolean settable_bean_property_1_expr53_line_248 = (settable_bean_property_1_expr55_line_248);
			Object v_nvl_1970_line_248_v1 = null;
			if (!settable_bean_property_1_expr53_line_248) {
				v_nvl_1970_line_248_v1 = nvl;
			}
			com.fasterxml.jackson.databind.deser.impl.NullProvider settable_bean_property_1_expr52_line_248 = settable_bean_property_1_expr53_line_248
					? null
					: new NullProvider(_type, v_nvl_1970_line_248_v1);
			int PROBE_END_LINE_248 = 248;
			_nullProvider = settable_bean_property_1_expr52_line_248;
            int PROBE_START_LINE_249 = 249;
			JsonDeserializer<?> p_deser_1969_line_249 = deser;
			int PROBE_END_LINE_249 = 249;
			_valueDeserializer = (JsonDeserializer<Object>) p_deser_1969_line_249;
        }
        int PROBE_START_LINE_251 = 251;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_src_1968_line_251 = src;
		com.fasterxml.jackson.databind.util.ViewMatcher q__view_matcher_55_line_251 = p_src_1968_line_251._viewMatcher;
		int PROBE_END_LINE_251 = 251;
		_viewMatcher = q__view_matcher_55_line_251;
    }

    @Deprecated // since 2.3
    protected SettableBeanProperty(SettableBeanProperty src, String newName) {
        this(src, new PropertyName(newName));
    }
    
    /**
     * Copy-with-deserializer-change constructor for sub-classes to use.
     */
    protected SettableBeanProperty(SettableBeanProperty src, PropertyName newName)
    {
        _propName = newName;
        _type = src._type;
        _wrapperName = src._wrapperName;
        _metadata = src._metadata;
        _contextAnnotations = src._contextAnnotations;
        _valueDeserializer = src._valueDeserializer;
        _valueTypeDeserializer = src._valueTypeDeserializer;
        _nullProvider = src._nullProvider;
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
        int PROBE_START_LINE_324 = 328;
		Class<?>[] p_views_1981_line_324 = views;
		boolean settable_bean_property_1_expr59_line_324 = p_views_1981_line_324 == null;
		int PROBE_END_LINE_324 = 328;
		if (settable_bean_property_1_expr59_line_324) {
            _viewMatcher = null;
        } else {
            _viewMatcher = ViewMatcher.construct(views);
        }
    }
    
    /**
     * Method used to assign index for property.
     */
    public void assignIndex(int index) {
        int PROBE_START_LINE_335 = 337;
		int f__property_index_1936_line_335 = _propertyIndex;
		int settable_bean_property_1_expr62_line_335 = -1;
		boolean settable_bean_property_1_expr61_line_335 = f__property_index_1936_line_335 != settable_bean_property_1_expr62_line_335;
		int PROBE_END_LINE_335 = 337;
		if (settable_bean_property_1_expr61_line_335) {
            throw new IllegalStateException("Property '"+getName()+"' already had index ("+_propertyIndex+"), trying to assign "+index);
        }
        int PROBE_START_LINE_338 = 338;
		int p_index_1982_line_338 = index;
		int PROBE_END_LINE_338 = 338;
		_propertyIndex = p_index_1982_line_338;
    }
    
    /*
    /**********************************************************
    /* BeanProperty impl
    /**********************************************************
     */
    
    @Override
    public final String getName() {
        int PROBE_START_LINE_349 = 349;
		com.fasterxml.jackson.databind.PropertyName f__prop_name_1953_line_349 = _propName;
		String settable_bean_property_1_expr64_line_349 = f__prop_name_1953_line_349.getSimpleName();
		int PROBE_END_LINE_349 = 349;
		return settable_bean_property_1_expr64_line_349;
    }

    @Override
    public PropertyName getFullName() {
        return _propName;
    }
    
    @Override
    public boolean isRequired() { return _metadata.isRequired(); }

    @Override
    public PropertyMetadata getMetadata() { return _metadata; }
    
    @Override
    public JavaType getType() { int PROBE_START_LINE_364 = 364;
		com.fasterxml.jackson.databind.JavaType f__type_1954_line_364 = _type;
		int PROBE_END_LINE_364 = 364;
	return f__type_1954_line_364; }

    @Override
    public PropertyName getWrapperName() {
        return _wrapperName;
    }
    
    @Override
    public abstract <A extends Annotation> A getAnnotation(Class<A> acls);

    @Override
    public abstract AnnotatedMember getMember();

    @Override
    public <A extends Annotation> A getContextAnnotation(Class<A> acls) {
        return _contextAnnotations.get(acls);
    }

    @Override
    public void depositSchemaProperty(JsonObjectFormatVisitor objectVisitor)
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

    public String getManagedReferenceName() { int PROBE_START_LINE_403 = 403;
		String f__managed_reference_name_1967_line_403 = _managedReferenceName;
		int PROBE_END_LINE_403 = 403;
	return f__managed_reference_name_1967_line_403; }

    public ObjectIdInfo getObjectIdInfo() { int PROBE_START_LINE_405 = 405;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo f__object_id_info_1986_line_405 = _objectIdInfo;
		int PROBE_END_LINE_405 = 405;
	return f__object_id_info_1986_line_405; }

    public boolean hasValueDeserializer() {
        int PROBE_START_LINE_408 = 408;
		JsonDeserializer<Object> f__value_deserializer_1961_line_408 = _valueDeserializer;
		boolean settable_bean_property_1_expr67_line_408 = f__value_deserializer_1961_line_408 != null;
		boolean settable_bean_property_1_expr66_line_408 = (settable_bean_property_1_expr67_line_408);
		boolean settable_bean_property_1_expr68_line_408 = true;
		if (settable_bean_property_1_expr66_line_408) {
			JsonDeserializer<Object> f__value_deserializer_1961_line_408_v1 = _valueDeserializer;
			JsonDeserializer<Object> f_missing_value_deserializer_1935_line_408 = MISSING_VALUE_DESERIALIZER;
			boolean settable_bean_property_1_expr69_line_408 = f__value_deserializer_1961_line_408_v1 != f_missing_value_deserializer_1935_line_408;
			settable_bean_property_1_expr68_line_408 = (settable_bean_property_1_expr69_line_408);
		}
		boolean settable_bean_property_1_expr65_line_408 = settable_bean_property_1_expr66_line_408
				&& settable_bean_property_1_expr68_line_408;
		int PROBE_END_LINE_408 = 408;
		return settable_bean_property_1_expr65_line_408;
    }

    public boolean hasValueTypeDeserializer() { int PROBE_START_LINE_411 = 411;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer f__value_type_deserializer_1960_line_411 = _valueTypeDeserializer;
		boolean settable_bean_property_1_expr71_line_411 = f__value_type_deserializer_1960_line_411 != null;
		boolean settable_bean_property_1_expr70_line_411 = (settable_bean_property_1_expr71_line_411);
		int PROBE_END_LINE_411 = 411;
	return settable_bean_property_1_expr70_line_411; }
    
    public JsonDeserializer<Object> getValueDeserializer() {
        int PROBE_START_LINE_414 = 414;
		JsonDeserializer<Object> f__value_deserializer_1961_line_414 = _valueDeserializer;
		int PROBE_END_LINE_414 = 414;
		JsonDeserializer<Object> deser = f__value_deserializer_1961_line_414;
        int PROBE_START_LINE_415 = 417;
		JsonDeserializer<Object> v_deser_1987_line_415 = deser;
		JsonDeserializer<Object> f_missing_value_deserializer_1935_line_415 = MISSING_VALUE_DESERIALIZER;
		boolean settable_bean_property_1_expr72_line_415 = v_deser_1987_line_415 == f_missing_value_deserializer_1935_line_415;
		int PROBE_END_LINE_415 = 417;
		if (settable_bean_property_1_expr72_line_415) {
            return null;
        }
        int PROBE_START_LINE_418 = 418;
		JsonDeserializer<Object> v_deser_1987_line_418 = deser;
		int PROBE_END_LINE_418 = 418;
		return v_deser_1987_line_418;
    }

    public TypeDeserializer getValueTypeDeserializer() { return _valueTypeDeserializer; }

    public boolean visibleInView(Class<?> activeView) {
        return (_viewMatcher == null) || _viewMatcher.isVisibleForView(activeView);
    }
    
    public boolean hasViews() { int PROBE_START_LINE_427 = 427;
		com.fasterxml.jackson.databind.util.ViewMatcher f__view_matcher_1958_line_427 = _viewMatcher;
		boolean settable_bean_property_1_expr73_line_427 = f__view_matcher_1958_line_427 != null;
		int PROBE_END_LINE_427 = 427;
	return settable_bean_property_1_expr73_line_427; }
    
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
    public int getCreatorIndex() { return -1; }
    
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
        int PROBE_START_LINE_515 = 515;
		com.fasterxml.jackson.core.JsonParser p_p_1999_line_515 = p;
		JsonToken settable_bean_property_1_expr74_line_515 = p_p_1999_line_515.getCurrentToken();
		int PROBE_END_LINE_515 = 515;
		JsonToken t = settable_bean_property_1_expr74_line_515;
        
        int PROBE_START_LINE_517 = 519;
		com.fasterxml.jackson.core.JsonToken v_t_2001_line_517 = t;
		com.fasterxml.jackson.core.JsonToken q_value_null_56_line_517 = JsonToken.VALUE_NULL;
		boolean settable_bean_property_1_expr75_line_517 = v_t_2001_line_517 == q_value_null_56_line_517;
		int PROBE_END_LINE_517 = 519;
		if (settable_bean_property_1_expr75_line_517) {
            int PROBE_START_LINE_518 = 518;
			com.fasterxml.jackson.databind.deser.impl.NullProvider f__null_provider_1959_line_518 = _nullProvider;
			boolean settable_bean_property_1_expr79_line_518 = f__null_provider_1959_line_518 == null;
			boolean settable_bean_property_1_expr77_line_518 = (settable_bean_property_1_expr79_line_518);
			Object settable_bean_property_1_expr78_line_518 = null;
			if (!settable_bean_property_1_expr77_line_518) {
				com.fasterxml.jackson.databind.deser.impl.NullProvider f__null_provider_1959_line_518_v1 = _nullProvider;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2000_line_518 = ctxt;
				settable_bean_property_1_expr78_line_518 = f__null_provider_1959_line_518_v1
						.nullValue(p_ctxt_2000_line_518);
			}
			Object settable_bean_property_1_expr76_line_518 = settable_bean_property_1_expr77_line_518
					? null
					: settable_bean_property_1_expr78_line_518;
			int PROBE_END_LINE_518 = 518;
			return settable_bean_property_1_expr76_line_518;
        }
        int PROBE_START_LINE_520 = 522;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer f__value_type_deserializer_1960_line_520 = _valueTypeDeserializer;
		boolean settable_bean_property_1_expr80_line_520 = f__value_type_deserializer_1960_line_520 != null;
		int PROBE_END_LINE_520 = 522;
		if (settable_bean_property_1_expr80_line_520) {
            return _valueDeserializer.deserializeWithType(p, ctxt, _valueTypeDeserializer);
        }
        int PROBE_START_LINE_523 = 523;
		JsonDeserializer<Object> f__value_deserializer_1961_line_523 = _valueDeserializer;
		com.fasterxml.jackson.core.JsonParser p_p_1999_line_523 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2000_line_523 = ctxt;
		Object settable_bean_property_1_expr81_line_523 = f__value_deserializer_1961_line_523
				.deserialize(p_p_1999_line_523, p_ctxt_2000_line_523);
		int PROBE_END_LINE_523 = 523;
		return settable_bean_property_1_expr81_line_523;
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
    protected void _throwAsIOE(Exception e, Object value) throws IOException
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
            throw new JsonMappingException(msg.toString(), null, e);
        }
        _throwAsIOE(e);
    }

    protected IOException _throwAsIOE(Exception e) throws IOException
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
        throw new JsonMappingException(th.getMessage(), null, th);
    }

    @Override public String toString() { return "[property '"+getName()+"']"; }
}
