package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.MapperFeature;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Map;
import java.util.Set;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;

/**
 * Default {@link BeanDescription} implementation used by Jackson.
 *<p>
 * Although sub-classing is a theoretical possibility there are no known
 * use cases for that, nor is such usage tested or supported.
 * Separation from API is mostly to isolate some implementation details
 * here and keep API simple.
 */
public class BasicBeanDescription extends BeanDescription
{
    // since 2.9
    private final static Class<?>[] NO_VIEWS = new Class<?>[0];

    /*
    /**********************************************************
    /* General configuration
    /**********************************************************
     */

    /**
     * We will hold a reference to the collector in cases where
     * information is lazily accessed and constructed; properties
     * are only accessed when they are actually needed.
     */
    final protected POJOPropertiesCollector _propCollector;
    
    final protected MapperConfig<?> _config;

    final protected AnnotationIntrospector _annotationIntrospector;

    /*
    /**********************************************************
    /* Information about type itself
    /**********************************************************
     */
    
    /**
     * Information collected about the class introspected.
     */
    final protected AnnotatedClass _classInfo;

    /**
     * @since 2.9
     */
    protected Class<?>[] _defaultViews;

    /**
     * @since 2.9
     */
    protected boolean _defaultViewsResolved;

    /*
    /**********************************************************
    /* Member information
    /**********************************************************
     */

    /**
     * Properties collected for the POJO; initialized as needed.
     */
    protected List<BeanPropertyDefinition> _properties;

    /**
     * Details of Object Id to include, if any
     */
    protected ObjectIdInfo _objectIdInfo;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    protected BasicBeanDescription(POJOPropertiesCollector coll,
            JavaType type, AnnotatedClass classDef)
    {
        super(type);
        int PROBE_START_LINE_97 = 97;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_3782_line_97 = coll;
		int PROBE_END_LINE_97 = 97;
		_propCollector = p_coll_3782_line_97;
        int PROBE_START_LINE_98 = 98;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_3782_line_98 = coll;
		MapperConfig<?> basic_bean_description_1_expr5_line_98 = p_coll_3782_line_98.getConfig();
		int PROBE_END_LINE_98 = 98;
		_config = basic_bean_description_1_expr5_line_98;
        int PROBE_START_LINE_100 = 104;
		MapperConfig<?> f__config_3786_line_100 = _config;
		boolean basic_bean_description_1_expr6_line_100 = f__config_3786_line_100 == null;
		int PROBE_END_LINE_100 = 104;
		// NOTE: null config only for some pre-constructed types
        if (basic_bean_description_1_expr6_line_100) {
            _annotationIntrospector = null;
        } else {
            int PROBE_START_LINE_103 = 103;
			MapperConfig<?> f__config_3786_line_103 = _config;
			com.fasterxml.jackson.databind.AnnotationIntrospector basic_bean_description_1_expr8_line_103 = f__config_3786_line_103
					.getAnnotationIntrospector();
			int PROBE_END_LINE_103 = 103;
			_annotationIntrospector = basic_bean_description_1_expr8_line_103;
        }
        int PROBE_START_LINE_105 = 105;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_3784_line_105 = classDef;
		int PROBE_END_LINE_105 = 105;
		_classInfo = p_class_def_3784_line_105;
    }

    /**
     * Alternate constructor used in cases where property information is not needed,
     * only class info.
     */
    protected BasicBeanDescription(MapperConfig<?> config,
            JavaType type, AnnotatedClass classDef, List<BeanPropertyDefinition> props)
    {
        super(type);
        _propCollector = null;
        int PROBE_START_LINE_117 = 117;
		MapperConfig<?> p_config_3789_line_117 = config;
		int PROBE_END_LINE_117 = 117;
		_config = p_config_3789_line_117;
        int PROBE_START_LINE_119 = 123;
		MapperConfig<?> f__config_3786_line_119 = _config;
		boolean basic_bean_description_1_expr13_line_119 = f__config_3786_line_119 == null;
		int PROBE_END_LINE_119 = 123;
		// NOTE: null config only for some pre-constructed types
        if (basic_bean_description_1_expr13_line_119) {
            _annotationIntrospector = null;
        } else {
            int PROBE_START_LINE_122 = 122;
			MapperConfig<?> f__config_3786_line_122 = _config;
			com.fasterxml.jackson.databind.AnnotationIntrospector basic_bean_description_1_expr16_line_122 = f__config_3786_line_122
					.getAnnotationIntrospector();
			int PROBE_END_LINE_122 = 122;
			_annotationIntrospector = basic_bean_description_1_expr16_line_122;
        }
        int PROBE_START_LINE_124 = 124;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_3791_line_124 = classDef;
		int PROBE_END_LINE_124 = 124;
		_classInfo = p_class_def_3791_line_124;
        int PROBE_START_LINE_125 = 125;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> p_props_3792_line_125 = props;
		int PROBE_END_LINE_125 = 125;
		_properties = p_props_3792_line_125;
    }
    
    protected BasicBeanDescription(POJOPropertiesCollector coll)
    {
        this(coll, coll.getType(), coll.getClassDef());
        int PROBE_START_LINE_131 = 131;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_3794_line_131 = coll;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo basic_bean_description_1_expr23_line_131 = p_coll_3794_line_131
				.getObjectIdInfo();
		int PROBE_END_LINE_131 = 131;
		_objectIdInfo = basic_bean_description_1_expr23_line_131;
    }

    /**
     * Factory method to use for constructing an instance to use for building
     * deserializers.
     */
    public static BasicBeanDescription forDeserialization(POJOPropertiesCollector coll) {
        int PROBE_START_LINE_139 = 139;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_3796_line_139 = coll;
		int PROBE_END_LINE_139 = 139;
		return new BasicBeanDescription(p_coll_3796_line_139);
    }

    /**
     * Factory method to use for constructing an instance to use for building
     * serializers.
     */
    public static BasicBeanDescription forSerialization(POJOPropertiesCollector coll) {
        return new BasicBeanDescription(coll);
    }

    /**
     * Factory method to use for constructing an instance to use for purposes
     * other than building serializers or deserializers; will only have information
     * on class, not on properties.
     */
    public static BasicBeanDescription forOtherUse(MapperConfig<?> config,
            JavaType type, AnnotatedClass ac)
    {
        int PROBE_START_LINE_158 = 159;
		MapperConfig<?> p_config_3798_line_158 = config;
		com.fasterxml.jackson.databind.JavaType p_type_3799_line_158 = type;
		int PROBE_END_LINE_158 = 159;
		return new BasicBeanDescription(p_config_3798_line_158, p_type_3799_line_158,
                ac, Collections.<BeanPropertyDefinition>emptyList());
    }

    protected List<BeanPropertyDefinition> _properties() {
        int PROBE_START_LINE_163 = 165;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> f__properties_3793_line_163 = _properties;
		boolean basic_bean_description_1_expr27_line_163 = f__properties_3793_line_163 == null;
		int PROBE_END_LINE_163 = 165;
		if (basic_bean_description_1_expr27_line_163) {
            int PROBE_START_LINE_164 = 164;
			com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_3785_line_164 = _propCollector;
			List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_bean_description_1_expr29_line_164 = f__prop_collector_3785_line_164
					.getProperties();
			int PROBE_END_LINE_164 = 164;
			_properties = basic_bean_description_1_expr29_line_164;
        }
        int PROBE_START_LINE_166 = 166;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> f__properties_3793_line_166 = _properties;
		int PROBE_END_LINE_166 = 166;
		return f__properties_3793_line_166;
    }

    /*
    /**********************************************************
    /* Limited modifications by core databind functionality
    /**********************************************************
     */

    /**
     * Method that can be used to prune unwanted properties, during
     * construction of serializers and deserializers.
     * Use with utmost care, if at all...
     * 
     * @since 2.1
     */
    public boolean removeProperty(String propName)
    {
        Iterator<BeanPropertyDefinition> it = _properties().iterator();
        while (it.hasNext()) {
            BeanPropertyDefinition prop = it.next();
            if (prop.getName().equals(propName)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    public boolean addProperty(BeanPropertyDefinition def)
    {
        // first: ensure we do not have such property
        if (hasProperty(def.getFullName())) {
            return false;
        }
        _properties().add(def);
        return true;
    }
    
    /**
     * @since 2.6
     */
    public boolean hasProperty(PropertyName name) {
        return findProperty(name) != null;
    }
    
    /**
     * @since 2.6
     */
    public BeanPropertyDefinition findProperty(PropertyName name)
    {
        for (BeanPropertyDefinition prop : _properties()) {
            if (prop.hasName(name)) {
                return prop;
            }
        }
        return null;
    }
    
    /*
    /**********************************************************
    /* Simple accessors from BeanDescription
    /**********************************************************
     */

    @Override
    public AnnotatedClass getClassInfo() { int PROBE_START_LINE_232 = 232;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_3788_line_232 = _classInfo;
		int PROBE_END_LINE_232 = 232;
	return f__class_info_3788_line_232; }

    @Override
    public ObjectIdInfo getObjectIdInfo() { int PROBE_START_LINE_235 = 235;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo f__object_id_info_3795_line_235 = _objectIdInfo;
		int PROBE_END_LINE_235 = 235;
	return  f__object_id_info_3795_line_235; }

    @Override
    public List<BeanPropertyDefinition> findProperties() {
        int PROBE_START_LINE_239 = 239;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_bean_description_1_expr30_line_239 = _properties();
		int PROBE_END_LINE_239 = 239;
		return basic_bean_description_1_expr30_line_239;
    }

    @Override
    @Deprecated // since 2.9
    public AnnotatedMethod findJsonValueMethod() {
        return (_propCollector == null) ? null
                : _propCollector.getJsonValueMethod();
    }

    @Override // since 2.9
    public AnnotatedMember findJsonValueAccessor() {
        return (_propCollector == null) ? null
                : _propCollector.getJsonValueAccessor();
    }
 
    @Override
    public Set<String> getIgnoredPropertyNames() {
        int PROBE_START_LINE_257 = 258;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_3785_line_257 = _propCollector;
		boolean basic_bean_description_1_expr34_line_257 = f__prop_collector_3785_line_257 == null;
		boolean basic_bean_description_1_expr32_line_257 = (basic_bean_description_1_expr34_line_257);
		Set<String> basic_bean_description_1_expr31_line_257 = basic_bean_description_1_expr32_line_257
				? null
				: _propCollector.getIgnoredPropertyNames();
		int PROBE_END_LINE_257 = 258;
		Set<String> ign = basic_bean_description_1_expr31_line_257;
        int PROBE_START_LINE_259 = 261;
		Set<String> v_ign_3805_line_259 = ign;
		boolean basic_bean_description_1_expr35_line_259 = v_ign_3805_line_259 == null;
		int PROBE_END_LINE_259 = 261;
		if (basic_bean_description_1_expr35_line_259) {
            int PROBE_START_LINE_260 = 260;
			Set<String> basic_bean_description_1_expr36_line_260 = Collections.emptySet();
			int PROBE_END_LINE_260 = 260;
			return basic_bean_description_1_expr36_line_260;
        }
        return ign;
    }

    @Override
    public boolean hasKnownClassAnnotations() {
        return _classInfo.hasAnnotations();
    }

    @Override
    public Annotations getClassAnnotations() {
        int PROBE_START_LINE_272 = 272;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_3788_line_272 = _classInfo;
		com.fasterxml.jackson.databind.util.Annotations basic_bean_description_1_expr37_line_272 = f__class_info_3788_line_272
				.getAnnotations();
		int PROBE_END_LINE_272 = 272;
		return basic_bean_description_1_expr37_line_272;
    }

    @Override
    @Deprecated // since 2.7
    public TypeBindings bindingsForBeanType() {
        return _type.getBindings();
    }

    @Override
    @Deprecated // since 2.8
    public JavaType resolveType(java.lang.reflect.Type jdkType) {
        if (jdkType == null) {
            return null;
        }
        return _config.getTypeFactory().constructType(jdkType, _type.getBindings());
    }

    @Override
    public AnnotatedConstructor findDefaultConstructor() {
        int PROBE_START_LINE_292 = 292;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_3788_line_292 = _classInfo;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor basic_bean_description_1_expr38_line_292 = f__class_info_3788_line_292
				.getDefaultConstructor();
		int PROBE_END_LINE_292 = 292;
		return basic_bean_description_1_expr38_line_292;
    }

    @Override
    public AnnotatedMember findAnySetterAccessor() throws IllegalArgumentException
    {
        int PROBE_START_LINE_298 = 327;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_3785_line_298 = _propCollector;
		boolean basic_bean_description_1_expr39_line_298 = f__prop_collector_3785_line_298 != null;
		int PROBE_END_LINE_298 = 327;
		if (basic_bean_description_1_expr39_line_298) {
            int PROBE_START_LINE_299 = 299;
			com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_3785_line_299 = _propCollector;
			AnnotatedMethod basic_bean_description_1_expr40_line_299 = f__prop_collector_3785_line_299
					.getAnySetterMethod();
			int PROBE_END_LINE_299 = 299;
			AnnotatedMethod anyMethod = basic_bean_description_1_expr40_line_299;
            int PROBE_START_LINE_300 = 314;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_any_method_3807_line_300 = anyMethod;
			boolean basic_bean_description_1_expr41_line_300 = v_any_method_3807_line_300 != null;
			int PROBE_END_LINE_300 = 314;
			if (basic_bean_description_1_expr41_line_300) {
                // Also, let's be somewhat strict on how field name is to be
                // passed; String, Object make sense, others not so much.
    
                /* !!! 18-May-2009, tatu: how about enums? Can add support if
                 *  requested; easy enough for devs to add support within method.
                 */
                Class<?> type = anyMethod.getRawParameterType(0);
                if ((type != String.class) && (type != Object.class)) {
                    throw new IllegalArgumentException(String.format(
"Invalid 'any-setter' annotation on method '%s()': first argument not of type String or Object, but %s",
anyMethod.getName(), type.getName()));
                }
                return anyMethod;
            }
            int PROBE_START_LINE_315 = 315;
			com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_3785_line_315 = _propCollector;
			AnnotatedMember basic_bean_description_1_expr42_line_315 = f__prop_collector_3785_line_315
					.getAnySetterField();
			int PROBE_END_LINE_315 = 315;
			AnnotatedMember anyField = basic_bean_description_1_expr42_line_315;
            int PROBE_START_LINE_316 = 326;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_any_field_3808_line_316 = anyField;
			boolean basic_bean_description_1_expr43_line_316 = v_any_field_3808_line_316 != null;
			int PROBE_END_LINE_316 = 326;
			if (basic_bean_description_1_expr43_line_316) {
                // For now let's require a Map; in future can add support for other
                // types like perhaps Iterable<Map.Entry>?
                Class<?> type = anyField.getRawType();
                if (!Map.class.isAssignableFrom(type)) {
                    throw new IllegalArgumentException(String.format(
"Invalid 'any-setter' annotation on field '%s': type is not instance of java.util.Map",
anyField.getName()));
                }
                return anyField;
            }
        }
        return null;
    }

    @Override
    public Map<Object, AnnotatedMember> findInjectables() {
        int PROBE_START_LINE_333 = 335;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_3785_line_333 = _propCollector;
		boolean basic_bean_description_1_expr44_line_333 = f__prop_collector_3785_line_333 != null;
		int PROBE_END_LINE_333 = 335;
		if (basic_bean_description_1_expr44_line_333) {
            int PROBE_START_LINE_334 = 334;
			com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_3785_line_334 = _propCollector;
			Map<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> basic_bean_description_1_expr45_line_334 = f__prop_collector_3785_line_334
					.getInjectables();
			int PROBE_END_LINE_334 = 334;
			return basic_bean_description_1_expr45_line_334;
        }
        return Collections.emptyMap();
    }

    @Override
    public List<AnnotatedConstructor> getConstructors() {
        int PROBE_START_LINE_341 = 341;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_3788_line_341 = _classInfo;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> basic_bean_description_1_expr46_line_341 = f__class_info_3788_line_341
				.getConstructors();
		int PROBE_END_LINE_341 = 341;
		return basic_bean_description_1_expr46_line_341;
    }

    @Override
    public Object instantiateBean(boolean fixAccess) {
        AnnotatedConstructor ac = _classInfo.getDefaultConstructor();
        if (ac == null) {
            return null;
        }
        if (fixAccess) {
            ac.fixAccess(_config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        try {
            return ac.getAnnotated().newInstance();
        } catch (Exception e) {
            Throwable t = e;
            while (t.getCause() != null) {
                t = t.getCause();
            }
            ClassUtil.throwIfError(t);
            ClassUtil.throwIfRTE(t);
            throw new IllegalArgumentException("Failed to instantiate bean of type "
                    +_classInfo.getAnnotated().getName()+": ("+t.getClass().getName()+") "
                    +ClassUtil.exceptionMessage(t), t);
        }
    }

    /*
    /**********************************************************
    /* Simple accessors, extended
    /**********************************************************
     */

    @Override
    public AnnotatedMethod findMethod(String name, Class<?>[] paramTypes) {
        return _classInfo.findMethod(name, paramTypes);
    }

    /*
    /**********************************************************
    /* General per-class annotation introspection
    /**********************************************************
     */

    @Override
    public JsonFormat.Value findExpectedFormat(JsonFormat.Value defValue)
    {
        int PROBE_START_LINE_390 = 399;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3787_line_390 = _annotationIntrospector;
		boolean basic_bean_description_1_expr47_line_390 = f__annotation_introspector_3787_line_390 != null;
		int PROBE_END_LINE_390 = 399;
		// 15-Apr-2016, tatu: Let's check both per-type defaults and annotations; per-type
        //   defaults having higher precedence, so start with that
        if (basic_bean_description_1_expr47_line_390) {
            int PROBE_START_LINE_391 = 391;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3787_line_391 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_3788_line_391 = _classInfo;
			JsonFormat.Value basic_bean_description_1_expr48_line_391 = f__annotation_introspector_3787_line_391
					.findFormat(f__class_info_3788_line_391);
			int PROBE_END_LINE_391 = 391;
			JsonFormat.Value v = basic_bean_description_1_expr48_line_391;
            int PROBE_START_LINE_392 = 398;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3813_line_392 = v;
			boolean basic_bean_description_1_expr49_line_392 = v_v_3813_line_392 != null;
			int PROBE_END_LINE_392 = 398;
			if (basic_bean_description_1_expr49_line_392) {
                if (defValue == null) {
                    defValue = v;
                } else {
                    defValue = defValue.withOverrides(v);
                }
            }
        }
        int PROBE_START_LINE_400 = 400;
		MapperConfig<?> f__config_3786_line_400 = _config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_3788_line_400 = _classInfo;
		Class<?> basic_bean_description_1_expr51_line_400 = f__class_info_3788_line_400.getRawType();
		JsonFormat.Value basic_bean_description_1_expr50_line_400 = f__config_3786_line_400
				.getDefaultPropertyFormat(basic_bean_description_1_expr51_line_400);
		int PROBE_END_LINE_400 = 400;
		JsonFormat.Value v = basic_bean_description_1_expr50_line_400;
        int PROBE_START_LINE_401 = 407;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3814_line_401 = v;
		boolean basic_bean_description_1_expr52_line_401 = v_v_3814_line_401 != null;
		int PROBE_END_LINE_401 = 407;
		if (basic_bean_description_1_expr52_line_401) {
            int PROBE_START_LINE_402 = 406;
			com.fasterxml.jackson.annotation.JsonFormat.Value p_def_value_3812_line_402 = defValue;
			boolean basic_bean_description_1_expr53_line_402 = p_def_value_3812_line_402 == null;
			int PROBE_END_LINE_402 = 406;
			if (basic_bean_description_1_expr53_line_402) {
                int PROBE_START_LINE_403 = 403;
				com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3814_line_403 = v;
				int PROBE_END_LINE_403 = 403;
				defValue = v_v_3814_line_403;
            } else {
                defValue = defValue.withOverrides(v);
            }
        }
        int PROBE_START_LINE_408 = 408;
		com.fasterxml.jackson.annotation.JsonFormat.Value p_def_value_3812_line_408 = defValue;
		int PROBE_END_LINE_408 = 408;
		return p_def_value_3812_line_408;
    }

    @Override // since 2.9
    public Class<?>[] findDefaultViews()
    {
        int PROBE_START_LINE_414 = 425;
		boolean f__default_views_resolved_3815_line_414 = _defaultViewsResolved;
		boolean basic_bean_description_1_expr55_line_414 = !f__default_views_resolved_3815_line_414;
		int PROBE_END_LINE_414 = 425;
		if (basic_bean_description_1_expr55_line_414) {
            _defaultViewsResolved = true;
            int PROBE_START_LINE_416 = 417;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3787_line_416 = _annotationIntrospector;
			boolean basic_bean_description_1_expr60_line_416 = f__annotation_introspector_3787_line_416 == null;
			boolean basic_bean_description_1_expr58_line_416 = (basic_bean_description_1_expr60_line_416);
			Class<?>[] basic_bean_description_1_expr57_line_416 = basic_bean_description_1_expr58_line_416
					? null
					: _annotationIntrospector.findViews(_classInfo);
			int PROBE_END_LINE_416 = 417;
			Class<?>[] def = basic_bean_description_1_expr57_line_416;
            int PROBE_START_LINE_419 = 423;
			Class<?>[] v_def_3816_line_419 = def;
			boolean basic_bean_description_1_expr61_line_419 = v_def_3816_line_419 == null;
			int PROBE_END_LINE_419 = 423;
			// one more twist: if default inclusion disabled, need to force empty set of views
            if (basic_bean_description_1_expr61_line_419) {
                int PROBE_START_LINE_420 = 422;
				MapperConfig<?> f__config_3786_line_420 = _config;
				com.fasterxml.jackson.databind.MapperFeature q_default_view_inclusion_111_line_420 = MapperFeature.DEFAULT_VIEW_INCLUSION;
				boolean basic_bean_description_1_expr63_line_420 = f__config_3786_line_420
						.isEnabled(q_default_view_inclusion_111_line_420);
				boolean basic_bean_description_1_expr62_line_420 = !basic_bean_description_1_expr63_line_420;
				int PROBE_END_LINE_420 = 422;
				if (basic_bean_description_1_expr62_line_420) {
                    def = NO_VIEWS;
                }
            }
            int PROBE_START_LINE_424 = 424;
			Class<?>[] v_def_3816_line_424 = def;
			int PROBE_END_LINE_424 = 424;
			_defaultViews = v_def_3816_line_424;
        }
        int PROBE_START_LINE_426 = 426;
		Class<?>[] f__default_views_3817_line_426 = _defaultViews;
		int PROBE_END_LINE_426 = 426;
		return f__default_views_3817_line_426;
    }

    /*
    /**********************************************************
    /* Introspection for serialization
    /**********************************************************
     */

    @Override
    public Converter<Object,Object> findSerializationConverter()
    {
        if (_annotationIntrospector == null) {
            return null;
        }
        return _createConverter(_annotationIntrospector.findSerializationConverter(_classInfo));
    }

    /**
     * Method for determining whether null properties should be written
     * out for a Bean of introspected type. This is based on global
     * feature (lowest priority, passed as argument)
     * and per-class annotation (highest priority).
     */
    @Override
    public JsonInclude.Value findPropertyInclusion(JsonInclude.Value defValue) {
        if (_annotationIntrospector != null) {
            JsonInclude.Value incl = _annotationIntrospector.findPropertyInclusion(_classInfo);
            if (incl != null) {
                return (defValue == null) ? incl : defValue.withOverrides(incl);
            }
        }
        return defValue;
    }

    /**
     * Method used to locate the method of introspected class that
     * implements {@link com.fasterxml.jackson.annotation.JsonAnyGetter}.
     * If no such method exists null is returned.
     * If more than one are found, an exception is thrown.
     */
    @Override
    public AnnotatedMember findAnyGetter() throws IllegalArgumentException
    {
        AnnotatedMember anyGetter = (_propCollector == null) ? null
                : _propCollector.getAnyGetter();
        if (anyGetter != null) {
            /* For now let's require a Map; in future can add support for other
             * types like perhaps Iterable<Map.Entry>?
             */
            Class<?> type = anyGetter.getRawType();
            if (!Map.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException("Invalid 'any-getter' annotation on method "+anyGetter.getName()+"(): return type is not instance of java.util.Map");
            }
        }
        return anyGetter;
    }

    @Override
    public List<BeanPropertyDefinition> findBackReferences()
    {
        List<BeanPropertyDefinition> result = null;
        HashSet<String> names = null;
        int PROBE_START_LINE_489 = 505;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_bean_description_1_expr65_line_489 = _properties();
		int PROBE_END_LINE_489 = 505;
		for (BeanPropertyDefinition property : basic_bean_description_1_expr65_line_489) {
            int PROBE_START_LINE_490 = 490;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_3821_line_490 = property;
			AnnotationIntrospector.ReferenceProperty basic_bean_description_1_expr66_line_490 = v_property_3821_line_490
					.findReferenceType();
			int PROBE_END_LINE_490 = 490;
			AnnotationIntrospector.ReferenceProperty refDef = basic_bean_description_1_expr66_line_490;
            int PROBE_START_LINE_491 = 493;
			com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_def_3822_line_491 = refDef;
			boolean basic_bean_description_1_expr69_line_491 = v_ref_def_3822_line_491 == null;
			boolean basic_bean_description_1_expr68_line_491 = (basic_bean_description_1_expr69_line_491);
			boolean basic_bean_description_1_expr70_line_491 = false;
			if (!basic_bean_description_1_expr68_line_491) {
				com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_def_3822_line_491_v1 = refDef;
				boolean basic_bean_description_1_expr71_line_491 = v_ref_def_3822_line_491_v1.isBackReference();
				basic_bean_description_1_expr70_line_491 = !basic_bean_description_1_expr71_line_491;
			}
			boolean basic_bean_description_1_expr67_line_491 = basic_bean_description_1_expr68_line_491
					|| basic_bean_description_1_expr70_line_491;
			int PROBE_END_LINE_491 = 493;
			if (basic_bean_description_1_expr67_line_491) {
                continue;
            }
            final String refName = refDef.getName();
            if (result == null) {
                result = new ArrayList<BeanPropertyDefinition>();
                names = new HashSet<>();
                names.add(refName);
            } else {
                if (!names.add(refName)) {
                    throw new IllegalArgumentException("Multiple back-reference properties with name '"+refName+"'");
                }
            }
            result.add(property);
        }
        int PROBE_START_LINE_506 = 506;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> v_result_3819_line_506 = result;
		int PROBE_END_LINE_506 = 506;
		return v_result_3819_line_506;
    }

    @Deprecated // since 2.9
    @Override
    public Map<String,AnnotatedMember> findBackReferenceProperties()
    {
        List<BeanPropertyDefinition> props = findBackReferences();
        if (props == null) {
            return null;
        }
        Map<String,AnnotatedMember> result = new HashMap<>();
        for (BeanPropertyDefinition prop : props) {
            result.put(prop.getName(), prop.getMutator());
        }
        return result;
    }

    /*
    /**********************************************************
    /* Introspection for deserialization, factories
    /**********************************************************
     */

    @Override
    public List<AnnotatedMethod> getFactoryMethods()
    {
        int PROBE_START_LINE_534 = 534;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_3788_line_534 = _classInfo;
		List<AnnotatedMethod> basic_bean_description_1_expr72_line_534 = f__class_info_3788_line_534
				.getFactoryMethods();
		int PROBE_END_LINE_534 = 534;
		// must filter out anything that clearly is not a factory method
        List<AnnotatedMethod> candidates = basic_bean_description_1_expr72_line_534;
        int PROBE_START_LINE_535 = 537;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_candidates_3823_line_535 = candidates;
		boolean basic_bean_description_1_expr73_line_535 = v_candidates_3823_line_535.isEmpty();
		int PROBE_END_LINE_535 = 537;
		if (basic_bean_description_1_expr73_line_535) {
            int PROBE_START_LINE_536 = 536;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_candidates_3823_line_536 = candidates;
			int PROBE_END_LINE_536 = 536;
			return v_candidates_3823_line_536;
        }
        List<AnnotatedMethod> result = null;
        int PROBE_START_LINE_539 = 546;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_candidates_3823_line_539 = candidates;
		int PROBE_END_LINE_539 = 546;
		for (AnnotatedMethod am : v_candidates_3823_line_539) {
            int PROBE_START_LINE_540 = 545;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_am_3825_line_540 = am;
			boolean basic_bean_description_1_expr74_line_540 = isFactoryMethod(v_am_3825_line_540);
			int PROBE_END_LINE_540 = 545;
			if (basic_bean_description_1_expr74_line_540) {
                if (result == null) {
                    result = new ArrayList<AnnotatedMethod>();
                }
                result.add(am);
            }
        }
        int PROBE_START_LINE_547 = 549;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_result_3824_line_547 = result;
		boolean basic_bean_description_1_expr75_line_547 = v_result_3824_line_547 == null;
		int PROBE_END_LINE_547 = 549;
		if (basic_bean_description_1_expr75_line_547) {
            int PROBE_START_LINE_548 = 548;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> basic_bean_description_1_expr76_line_548 = Collections
					.emptyList();
			int PROBE_END_LINE_548 = 548;
			return basic_bean_description_1_expr76_line_548;
        }
        return result;
    }

    @Override
    public Constructor<?> findSingleArgConstructor(Class<?>... argTypes)
    {
        for (AnnotatedConstructor ac : _classInfo.getConstructors()) {
            // This list is already filtered to only include accessible
            /* (note: for now this is a redundant check; but in future
             * that may change; thus leaving here for now)
             */
            if (ac.getParameterCount() == 1) {
                Class<?> actArg = ac.getRawParameterType(0);
                for (Class<?> expArg : argTypes) {
                    if (expArg == actArg) {
                        return ac.getAnnotated();
                    }
                }
            }
        }
        return null;
    }

    @Override
    public Method findFactoryMethod(Class<?>... expArgTypes)
    {
        // So, of all single-arg static methods:
        for (AnnotatedMethod am : _classInfo.getFactoryMethods()) {
            // 24-Oct-2016, tatu: Better ensure it only takes 1 arg, no matter what
            if (isFactoryMethod(am) && am.getParameterCount() == 1) {
                // And must take one of expected arg types (or supertype)
                Class<?> actualArgType = am.getRawParameterType(0);
                for (Class<?> expArgType : expArgTypes) {
                    // And one that matches what we would pass in
                    if (actualArgType.isAssignableFrom(expArgType)) {
                        return am.getAnnotated();
                    }
                }
            }
        }
        return null;
    }

    protected boolean isFactoryMethod(AnnotatedMethod am)
    {
        int PROBE_START_LINE_597 = 597;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_3828_line_597 = am;
		Class<?> basic_bean_description_1_expr77_line_597 = p_am_3828_line_597.getRawReturnType();
		int PROBE_END_LINE_597 = 597;
		// First: return type must be compatible with the introspected class
        // (i.e. allowed to be sub-class, although usually is the same class)
        Class<?> rt = basic_bean_description_1_expr77_line_597;
        int PROBE_START_LINE_598 = 600;
		Class<?> basic_bean_description_1_expr80_line_598 = getBeanClass();
		Class<?> v_rt_3829_line_598 = rt;
		boolean basic_bean_description_1_expr79_line_598 = basic_bean_description_1_expr80_line_598
				.isAssignableFrom(v_rt_3829_line_598);
		boolean basic_bean_description_1_expr78_line_598 = !basic_bean_description_1_expr79_line_598;
		int PROBE_END_LINE_598 = 600;
		if (basic_bean_description_1_expr78_line_598) {
            return false;
        }
        /* Also: must be a recognized factory method, meaning:
         * (a) marked with @JsonCreator annotation, or
         * (b) "valueOf" (at this point, need not be public)
         */
        JsonCreator.Mode mode = _annotationIntrospector.findCreatorAnnotation(_config, am);
        if ((mode != null) && (mode != JsonCreator.Mode.DISABLED)) {
            return true;
        }
        final String name = am.getName();
        // 24-Oct-2016, tatu: As per [databind#1429] must ensure takes exactly one arg
        if ("valueOf".equals(name)) {
            if (am.getParameterCount() == 1) {
                return true;
            }
        }
        // [databind#208] Also accept "fromString()", if takes String or CharSequence
        if ("fromString".equals(name)) {
            if (am.getParameterCount() == 1) {
                Class<?> cls = am.getRawParameterType(0);
                if (cls == String.class || CharSequence.class.isAssignableFrom(cls)) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * @deprecated since 2.8
     */
    @Deprecated // since 2.8, not used at least since 2.7
    protected PropertyName _findCreatorPropertyName(AnnotatedParameter param)
    {
        PropertyName name = _annotationIntrospector.findNameForDeserialization(param);
        if (name == null || name.isEmpty()) {
            String str = _annotationIntrospector.findImplicitPropertyName(param);
            if (str != null && !str.isEmpty()) {
                name = PropertyName.construct(str);
            }
        }
        return name;
    }

    /*
    /**********************************************************
    /* Introspection for deserialization, other
    /**********************************************************
     */

    @Override
    public Class<?> findPOJOBuilder() {
        int PROBE_START_LINE_652 = 653;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3787_line_652 = _annotationIntrospector;
		boolean basic_bean_description_1_expr84_line_652 = f__annotation_introspector_3787_line_652 == null;
		boolean basic_bean_description_1_expr82_line_652 = (basic_bean_description_1_expr84_line_652);
		Class<?> basic_bean_description_1_expr81_line_652 = basic_bean_description_1_expr82_line_652
				? null
				: _annotationIntrospector.findPOJOBuilder(_classInfo);
		int PROBE_END_LINE_652 = 653;
		return basic_bean_description_1_expr81_line_652;
    }

    @Override
    public JsonPOJOBuilder.Value findPOJOBuilderConfig()
    {
        return (_annotationIntrospector == null) ?
                null : _annotationIntrospector.findPOJOBuilderConfig(_classInfo);
    }

    @Override
    public Converter<Object,Object> findDeserializationConverter()
    {
        int PROBE_START_LINE_666 = 668;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3787_line_666 = _annotationIntrospector;
		boolean basic_bean_description_1_expr85_line_666 = f__annotation_introspector_3787_line_666 == null;
		int PROBE_END_LINE_666 = 668;
		if (basic_bean_description_1_expr85_line_666) {
            return null;
        }
        int PROBE_START_LINE_669 = 669;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3787_line_669 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_3788_line_669 = _classInfo;
		Object basic_bean_description_1_expr87_line_669 = f__annotation_introspector_3787_line_669
				.findDeserializationConverter(f__class_info_3788_line_669);
		Converter<Object, Object> basic_bean_description_1_expr86_line_669 = _createConverter(
				basic_bean_description_1_expr87_line_669);
		int PROBE_END_LINE_669 = 669;
		return basic_bean_description_1_expr86_line_669;
    }

    @Override
    public String findClassDescription() {
        return (_annotationIntrospector == null) ?
                null : _annotationIntrospector.findClassDescription(_classInfo);
    }

    /*
    /**********************************************************
    /* Helper methods for field introspection
    /**********************************************************
     */

    /**
     * @param ignoredProperties (optional) names of properties to ignore;
     *   any fields that would be recognized as one of these properties
     *   is ignored.
     * @param forSerialization If true, will collect serializable property
     *    fields; if false, deserializable
     *
     * @return Ordered Map with logical property name as key, and
     *    matching field as value.
     *
     * @deprecated Since 2.7.2, does not seem to be used?
     */
    @Deprecated
    public LinkedHashMap<String,AnnotatedField> _findPropertyFields(
            Collection<String> ignoredProperties, boolean forSerialization)
    {
        LinkedHashMap<String,AnnotatedField> results = new LinkedHashMap<String,AnnotatedField>();
        for (BeanPropertyDefinition property : _properties()) {
            AnnotatedField f = property.getField();
            if (f != null) {
                String name = property.getName();
                if (ignoredProperties != null) {
                    if (ignoredProperties.contains(name)) {
                        continue;
                    }
                }
                results.put(name, f);
            }
        }
        return results;
    }

    /*
    /**********************************************************
    /* Helper methods, other
    /**********************************************************
     */
    
    @SuppressWarnings("unchecked")
    protected Converter<Object,Object> _createConverter(Object converterDef)
    {
        int PROBE_START_LINE_725 = 727;
		Object p_converter_def_3833_line_725 = converterDef;
		boolean basic_bean_description_1_expr88_line_725 = p_converter_def_3833_line_725 == null;
		int PROBE_END_LINE_725 = 727;
		if (basic_bean_description_1_expr88_line_725) {
            return null;
        }
        if (converterDef instanceof Converter<?,?>) {
            return (Converter<Object,Object>) converterDef;
        }
        if (!(converterDef instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type "
                    +converterDef.getClass().getName()+"; expected type Converter or Class<Converter> instead");
        }
        Class<?> converterClass = (Class<?>)converterDef;
        // there are some known "no class" markers to consider too:
        if (converterClass == Converter.None.class || ClassUtil.isBogusClass(converterClass)) {
            return null;
        }
        if (!Converter.class.isAssignableFrom(converterClass)) {
            throw new IllegalStateException("AnnotationIntrospector returned Class "
                    +converterClass.getName()+"; expected Class<Converter>");
        }
        HandlerInstantiator hi = _config.getHandlerInstantiator();
        Converter<?,?> conv = (hi == null) ? null : hi.converterInstance(_config, _classInfo, converterClass);
        if (conv == null) {
            conv = (Converter<?,?>) ClassUtil.createInstance(converterClass,
                    _config.canOverrideAccessModifiers());
        }
        return (Converter<Object,Object>) conv;
    }
}
