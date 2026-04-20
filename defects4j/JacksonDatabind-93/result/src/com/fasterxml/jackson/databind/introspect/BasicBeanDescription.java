package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.*;

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
import java.util.List;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Map;
import java.util.Set;
import java.util.HashMap;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import java.util.ArrayList;

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
    
    /**
     * Information collected about the class introspected.
     */
    final protected AnnotatedClass _classInfo;

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
        int PROBE_START_LINE_77 = 77;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2954_line_77 = coll;
		int PROBE_END_LINE_77 = 77;
		_propCollector = p_coll_2954_line_77;
        int PROBE_START_LINE_78 = 78;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2954_line_78 = coll;
		MapperConfig<?> basic_bean_description_1_expr4_line_78 = p_coll_2954_line_78.getConfig();
		int PROBE_END_LINE_78 = 78;
		_config = basic_bean_description_1_expr4_line_78;
        int PROBE_START_LINE_80 = 84;
		MapperConfig<?> f__config_2958_line_80 = _config;
		boolean basic_bean_description_1_expr5_line_80 = f__config_2958_line_80 == null;
		int PROBE_END_LINE_80 = 84;
		// NOTE: null config only for some pre-constructed types
        if (basic_bean_description_1_expr5_line_80) {
            _annotationIntrospector = null;
        } else {
            int PROBE_START_LINE_83 = 83;
			MapperConfig<?> f__config_2958_line_83 = _config;
			com.fasterxml.jackson.databind.AnnotationIntrospector basic_bean_description_1_expr7_line_83 = f__config_2958_line_83
					.getAnnotationIntrospector();
			int PROBE_END_LINE_83 = 83;
			_annotationIntrospector = basic_bean_description_1_expr7_line_83;
        }
        int PROBE_START_LINE_85 = 85;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_2956_line_85 = classDef;
		int PROBE_END_LINE_85 = 85;
		_classInfo = p_class_def_2956_line_85;
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
        int PROBE_START_LINE_97 = 97;
		MapperConfig<?> p_config_2961_line_97 = config;
		int PROBE_END_LINE_97 = 97;
		_config = p_config_2961_line_97;
        int PROBE_START_LINE_99 = 103;
		MapperConfig<?> f__config_2958_line_99 = _config;
		boolean basic_bean_description_1_expr12_line_99 = f__config_2958_line_99 == null;
		int PROBE_END_LINE_99 = 103;
		// NOTE: null config only for some pre-constructed types
        if (basic_bean_description_1_expr12_line_99) {
            _annotationIntrospector = null;
        } else {
            int PROBE_START_LINE_102 = 102;
			MapperConfig<?> f__config_2958_line_102 = _config;
			com.fasterxml.jackson.databind.AnnotationIntrospector basic_bean_description_1_expr15_line_102 = f__config_2958_line_102
					.getAnnotationIntrospector();
			int PROBE_END_LINE_102 = 102;
			_annotationIntrospector = basic_bean_description_1_expr15_line_102;
        }
        int PROBE_START_LINE_104 = 104;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_2963_line_104 = classDef;
		int PROBE_END_LINE_104 = 104;
		_classInfo = p_class_def_2963_line_104;
        int PROBE_START_LINE_105 = 105;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> p_props_2964_line_105 = props;
		int PROBE_END_LINE_105 = 105;
		_properties = p_props_2964_line_105;
    }
    
    protected BasicBeanDescription(POJOPropertiesCollector coll)
    {
        this(coll, coll.getType(), coll.getClassDef());
        int PROBE_START_LINE_111 = 111;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2966_line_111 = coll;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo basic_bean_description_1_expr22_line_111 = p_coll_2966_line_111
				.getObjectIdInfo();
		int PROBE_END_LINE_111 = 111;
		_objectIdInfo = basic_bean_description_1_expr22_line_111;
    }

    /**
     * Factory method to use for constructing an instance to use for building
     * deserializers.
     */
    public static BasicBeanDescription forDeserialization(POJOPropertiesCollector coll) {
        int PROBE_START_LINE_119 = 119;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2968_line_119 = coll;
		int PROBE_END_LINE_119 = 119;
		return new BasicBeanDescription(p_coll_2968_line_119);
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
        int PROBE_START_LINE_138 = 139;
		MapperConfig<?> p_config_2970_line_138 = config;
		com.fasterxml.jackson.databind.JavaType p_type_2971_line_138 = type;
		int PROBE_END_LINE_138 = 139;
		return new BasicBeanDescription(p_config_2970_line_138, p_type_2971_line_138,
                ac, Collections.<BeanPropertyDefinition>emptyList());
    }

    protected List<BeanPropertyDefinition> _properties() {
        int PROBE_START_LINE_143 = 145;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> f__properties_2965_line_143 = _properties;
		boolean basic_bean_description_1_expr26_line_143 = f__properties_2965_line_143 == null;
		int PROBE_END_LINE_143 = 145;
		if (basic_bean_description_1_expr26_line_143) {
            int PROBE_START_LINE_144 = 144;
			com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_2957_line_144 = _propCollector;
			List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_bean_description_1_expr28_line_144 = f__prop_collector_2957_line_144
					.getProperties();
			int PROBE_END_LINE_144 = 144;
			_properties = basic_bean_description_1_expr28_line_144;
        }
        int PROBE_START_LINE_146 = 146;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> f__properties_2965_line_146 = _properties;
		int PROBE_END_LINE_146 = 146;
		return f__properties_2965_line_146;
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
    public AnnotatedClass getClassInfo() { int PROBE_START_LINE_212 = 212;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2960_line_212 = _classInfo;
		int PROBE_END_LINE_212 = 212;
	return f__class_info_2960_line_212; }

    @Override
    public ObjectIdInfo getObjectIdInfo() { int PROBE_START_LINE_215 = 215;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo f__object_id_info_2967_line_215 = _objectIdInfo;
		int PROBE_END_LINE_215 = 215;
	return  f__object_id_info_2967_line_215; }

    @Override
    public List<BeanPropertyDefinition> findProperties() {
        int PROBE_START_LINE_219 = 219;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_bean_description_1_expr29_line_219 = _properties();
		int PROBE_END_LINE_219 = 219;
		return basic_bean_description_1_expr29_line_219;
    }

    @Override
    public AnnotatedMethod findJsonValueMethod() {
        return (_propCollector == null) ? null
                : _propCollector.getJsonValueMethod();
    }

    @Override
    public Set<String> getIgnoredPropertyNames() {
        int PROBE_START_LINE_230 = 231;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_2957_line_230 = _propCollector;
		boolean basic_bean_description_1_expr33_line_230 = f__prop_collector_2957_line_230 == null;
		boolean basic_bean_description_1_expr31_line_230 = (basic_bean_description_1_expr33_line_230);
		Set<String> basic_bean_description_1_expr30_line_230 = basic_bean_description_1_expr31_line_230
				? null
				: _propCollector.getIgnoredPropertyNames();
		int PROBE_END_LINE_230 = 231;
		Set<String> ign = basic_bean_description_1_expr30_line_230;
        int PROBE_START_LINE_232 = 234;
		Set<String> v_ign_2977_line_232 = ign;
		boolean basic_bean_description_1_expr34_line_232 = v_ign_2977_line_232 == null;
		int PROBE_END_LINE_232 = 234;
		if (basic_bean_description_1_expr34_line_232) {
            int PROBE_START_LINE_233 = 233;
			Set<String> basic_bean_description_1_expr35_line_233 = Collections.emptySet();
			int PROBE_END_LINE_233 = 233;
			return basic_bean_description_1_expr35_line_233;
        }
        return ign;
    }

    @Override
    public boolean hasKnownClassAnnotations() {
        return _classInfo.hasAnnotations();
    }

    @Override
    public Annotations getClassAnnotations() {
        int PROBE_START_LINE_245 = 245;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2960_line_245 = _classInfo;
		com.fasterxml.jackson.databind.util.Annotations basic_bean_description_1_expr36_line_245 = f__class_info_2960_line_245
				.getAnnotations();
		int PROBE_END_LINE_245 = 245;
		return basic_bean_description_1_expr36_line_245;
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
        int PROBE_START_LINE_265 = 265;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2960_line_265 = _classInfo;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor basic_bean_description_1_expr37_line_265 = f__class_info_2960_line_265
				.getDefaultConstructor();
		int PROBE_END_LINE_265 = 265;
		return basic_bean_description_1_expr37_line_265;
    }

    @Override
    public AnnotatedMethod findAnySetter() throws IllegalArgumentException
    {
        int PROBE_START_LINE_271 = 272;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_2957_line_271 = _propCollector;
		boolean basic_bean_description_1_expr41_line_271 = f__prop_collector_2957_line_271 == null;
		boolean basic_bean_description_1_expr39_line_271 = (basic_bean_description_1_expr41_line_271);
		AnnotatedMethod basic_bean_description_1_expr38_line_271 = basic_bean_description_1_expr39_line_271
				? null
				: _propCollector.getAnySetterMethod();
		int PROBE_END_LINE_271 = 272;
		AnnotatedMethod anySetter = basic_bean_description_1_expr38_line_271;
        int PROBE_START_LINE_273 = 286;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_any_setter_2979_line_273 = anySetter;
		boolean basic_bean_description_1_expr42_line_273 = v_any_setter_2979_line_273 != null;
		int PROBE_END_LINE_273 = 286;
		if (basic_bean_description_1_expr42_line_273) {
            /* Also, let's be somewhat strict on how field name is to be
             * passed; String, Object make sense, others not
             * so much.
             */
            /* !!! 18-May-2009, tatu: how about enums? Can add support if
             *  requested; easy enough for devs to add support within
             *  method.
             */
            Class<?> type = anySetter.getRawParameterType(0);
            if (type != String.class && type != Object.class) {
                throw new IllegalArgumentException("Invalid 'any-setter' annotation on method "+anySetter.getName()+"(): first argument not of type String or Object, but "+type.getName());
            }
        }
        int PROBE_START_LINE_287 = 287;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_any_setter_2979_line_287 = anySetter;
		int PROBE_END_LINE_287 = 287;
		return v_any_setter_2979_line_287;
    }

    @Override
    public Map<Object, AnnotatedMember> findInjectables() {
        int PROBE_START_LINE_292 = 294;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_2957_line_292 = _propCollector;
		boolean basic_bean_description_1_expr43_line_292 = f__prop_collector_2957_line_292 != null;
		int PROBE_END_LINE_292 = 294;
		if (basic_bean_description_1_expr43_line_292) {
            int PROBE_START_LINE_293 = 293;
			com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_2957_line_293 = _propCollector;
			Map<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> basic_bean_description_1_expr44_line_293 = f__prop_collector_2957_line_293
					.getInjectables();
			int PROBE_END_LINE_293 = 293;
			return basic_bean_description_1_expr44_line_293;
        }
        return Collections.emptyMap();
    }

    @Override
    public List<AnnotatedConstructor> getConstructors() {
        int PROBE_START_LINE_300 = 300;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2960_line_300 = _classInfo;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> basic_bean_description_1_expr45_line_300 = f__class_info_2960_line_300
				.getConstructors();
		int PROBE_END_LINE_300 = 300;
		return basic_bean_description_1_expr45_line_300;
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
            if (t instanceof Error) throw (Error) t;
            if (t instanceof RuntimeException) throw (RuntimeException) t;
            throw new IllegalArgumentException("Failed to instantiate bean of type "+_classInfo.getAnnotated().getName()+": ("+t.getClass().getName()+") "+t.getMessage(), t);
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
        int PROBE_START_LINE_347 = 356;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2959_line_347 = _annotationIntrospector;
		boolean basic_bean_description_1_expr46_line_347 = f__annotation_introspector_2959_line_347 != null;
		int PROBE_END_LINE_347 = 356;
		// 15-Apr-2016, tatu: Let's check both per-type defaults and annotations; per-type
        //   defaults having higher precedence, so start with that
        if (basic_bean_description_1_expr46_line_347) {
            int PROBE_START_LINE_348 = 348;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2959_line_348 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2960_line_348 = _classInfo;
			JsonFormat.Value basic_bean_description_1_expr47_line_348 = f__annotation_introspector_2959_line_348
					.findFormat(f__class_info_2960_line_348);
			int PROBE_END_LINE_348 = 348;
			JsonFormat.Value v = basic_bean_description_1_expr47_line_348;
            int PROBE_START_LINE_349 = 355;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_v_2984_line_349 = v;
			boolean basic_bean_description_1_expr48_line_349 = v_v_2984_line_349 != null;
			int PROBE_END_LINE_349 = 355;
			if (basic_bean_description_1_expr48_line_349) {
                if (defValue == null) {
                    defValue = v;
                } else {
                    defValue = defValue.withOverrides(v);
                }
            }
        }
        int PROBE_START_LINE_357 = 357;
		MapperConfig<?> f__config_2958_line_357 = _config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2960_line_357 = _classInfo;
		Class<?> basic_bean_description_1_expr50_line_357 = f__class_info_2960_line_357.getRawType();
		JsonFormat.Value basic_bean_description_1_expr49_line_357 = f__config_2958_line_357
				.getDefaultPropertyFormat(basic_bean_description_1_expr50_line_357);
		int PROBE_END_LINE_357 = 357;
		JsonFormat.Value v = basic_bean_description_1_expr49_line_357;
        int PROBE_START_LINE_358 = 364;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_v_2985_line_358 = v;
		boolean basic_bean_description_1_expr51_line_358 = v_v_2985_line_358 != null;
		int PROBE_END_LINE_358 = 364;
		if (basic_bean_description_1_expr51_line_358) {
            int PROBE_START_LINE_359 = 363;
			com.fasterxml.jackson.annotation.JsonFormat.Value p_def_value_2983_line_359 = defValue;
			boolean basic_bean_description_1_expr52_line_359 = p_def_value_2983_line_359 == null;
			int PROBE_END_LINE_359 = 363;
			if (basic_bean_description_1_expr52_line_359) {
                int PROBE_START_LINE_360 = 360;
				com.fasterxml.jackson.annotation.JsonFormat.Value v_v_2985_line_360 = v;
				int PROBE_END_LINE_360 = 360;
				defValue = v_v_2985_line_360;
            } else {
                defValue = defValue.withOverrides(v);
            }
        }
        int PROBE_START_LINE_365 = 365;
		com.fasterxml.jackson.annotation.JsonFormat.Value p_def_value_2983_line_365 = defValue;
		int PROBE_END_LINE_365 = 365;
		return p_def_value_2983_line_365;
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
    public AnnotatedMember findAnySetterField() throws IllegalArgumentException {
        int PROBE_START_LINE_425 = 425;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_2957_line_425 = _propCollector;
		boolean basic_bean_description_1_expr57_line_425 = f__prop_collector_2957_line_425 == null;
		boolean basic_bean_description_1_expr55_line_425 = (basic_bean_description_1_expr57_line_425);
		com.fasterxml.jackson.databind.introspect.AnnotatedMember basic_bean_description_1_expr56_line_425 = null;
		if (!basic_bean_description_1_expr55_line_425) {
			com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector f__prop_collector_2957_line_425_v1 = _propCollector;
			basic_bean_description_1_expr56_line_425 = f__prop_collector_2957_line_425_v1.getAnySetterField();
		}
		AnnotatedMember basic_bean_description_1_expr54_line_425 = basic_bean_description_1_expr55_line_425
				? null
				: basic_bean_description_1_expr56_line_425;
		int PROBE_END_LINE_425 = 425;
		AnnotatedMember anySetter = basic_bean_description_1_expr54_line_425;
		int PROBE_START_LINE_426 = 436;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_any_setter_2987_line_426 = anySetter;
		boolean basic_bean_description_1_expr58_line_426 = v_any_setter_2987_line_426 != null;
		int PROBE_END_LINE_426 = 436;
		if (basic_bean_description_1_expr58_line_426) {
			/*
			 * For now let's require a Map; in future can add support for other
			 * types like perhaps Iterable<Map.Entry>?
			 */
			Class<?> type = anySetter.getRawType();
			if (!Map.class.isAssignableFrom(type)) {
				throw new IllegalArgumentException("Invalid 'any-setter' annotation on field " + anySetter.getName()
				        + "(): type is not instance of java.util.Map");
			}
		}
		int PROBE_START_LINE_437 = 437;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_any_setter_2987_line_437 = anySetter;
		int PROBE_END_LINE_437 = 437;
		return v_any_setter_2987_line_437;
	}

    @Override
    public Map<String,AnnotatedMember> findBackReferenceProperties()
    {
        HashMap<String,AnnotatedMember> result = null;
//        boolean hasIgnored = (_ignoredPropertyNames != null);

        int PROBE_START_LINE_446 = 472;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_bean_description_1_expr59_line_446 = _properties();
		int PROBE_END_LINE_446 = 472;
		for (BeanPropertyDefinition property : basic_bean_description_1_expr59_line_446) {
            int PROBE_START_LINE_458 = 458;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_2989_line_458 = property;
			AnnotatedMember basic_bean_description_1_expr60_line_458 = v_property_2989_line_458.getMutator();
			int PROBE_END_LINE_458 = 458;
			/* 23-Sep-2014, tatu: As per [databind#426], we _should_ try to avoid
             *   calling accessor, as it triggers exception from seeming conflict.
             *   But the problem is that _ignoredPropertyNames here only contains
             *   ones ignored on per-property annotations, but NOT class annotations...
             *   so commented out part does not work, alas
             */
            /*
            if (hasIgnored && _ignoredPropertyNames.contains(property.getName())) {
                continue;
            }
            */
            AnnotatedMember am = basic_bean_description_1_expr60_line_458;
            int PROBE_START_LINE_459 = 461;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_am_2990_line_459 = am;
			boolean basic_bean_description_1_expr61_line_459 = v_am_2990_line_459 == null;
			int PROBE_END_LINE_459 = 461;
			if (basic_bean_description_1_expr61_line_459) {
                continue;
            }
            int PROBE_START_LINE_462 = 462;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2959_line_462 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_am_2990_line_462 = am;
			AnnotationIntrospector.ReferenceProperty basic_bean_description_1_expr62_line_462 = f__annotation_introspector_2959_line_462
					.findReferenceType(v_am_2990_line_462);
			int PROBE_END_LINE_462 = 462;
			AnnotationIntrospector.ReferenceProperty refDef = basic_bean_description_1_expr62_line_462;
            int PROBE_START_LINE_463 = 471;
			com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_def_2991_line_463 = refDef;
			boolean basic_bean_description_1_expr64_line_463 = v_ref_def_2991_line_463 != null;
			boolean basic_bean_description_1_expr65_line_463 = true;
			if (basic_bean_description_1_expr64_line_463) {
				com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_def_2991_line_463_v1 = refDef;
				basic_bean_description_1_expr65_line_463 = v_ref_def_2991_line_463_v1.isBackReference();
			}
			boolean basic_bean_description_1_expr63_line_463 = basic_bean_description_1_expr64_line_463
					&& basic_bean_description_1_expr65_line_463;
			int PROBE_END_LINE_463 = 471;
			if (basic_bean_description_1_expr63_line_463) {
                if (result == null) {
                    result = new HashMap<String,AnnotatedMember>();
                }
                String refName = refDef.getName();
                if (result.put(refName, am) != null) {
                    throw new IllegalArgumentException("Multiple back-reference properties with name '"+refName+"'");
                }
            }
        }
        int PROBE_START_LINE_473 = 473;
		HashMap<String, com.fasterxml.jackson.databind.introspect.AnnotatedMember> v_result_2988_line_473 = result;
		int PROBE_END_LINE_473 = 473;
		return v_result_2988_line_473;
    }

    /*
    /**********************************************************
    /* Introspection for deserialization, factories
    /**********************************************************
     */

    @Override
    public List<AnnotatedMethod> getFactoryMethods()
    {
        int PROBE_START_LINE_486 = 486;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2960_line_486 = _classInfo;
		List<AnnotatedMethod> basic_bean_description_1_expr66_line_486 = f__class_info_2960_line_486.getStaticMethods();
		int PROBE_END_LINE_486 = 486;
		// must filter out anything that clearly is not a factory method
        List<AnnotatedMethod> candidates = basic_bean_description_1_expr66_line_486;
        int PROBE_START_LINE_487 = 489;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_candidates_2992_line_487 = candidates;
		boolean basic_bean_description_1_expr67_line_487 = v_candidates_2992_line_487.isEmpty();
		int PROBE_END_LINE_487 = 489;
		if (basic_bean_description_1_expr67_line_487) {
            return candidates;
        }
        ArrayList<AnnotatedMethod> result = new ArrayList<AnnotatedMethod>();
        int PROBE_START_LINE_491 = 495;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_candidates_2992_line_491 = candidates;
		int PROBE_END_LINE_491 = 495;
		for (AnnotatedMethod am : v_candidates_2992_line_491) {
            int PROBE_START_LINE_492 = 494;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_am_2994_line_492 = am;
			boolean basic_bean_description_1_expr69_line_492 = isFactoryMethod(v_am_2994_line_492);
			int PROBE_END_LINE_492 = 494;
			if (basic_bean_description_1_expr69_line_492) {
                result.add(am);
            }
        }
        int PROBE_START_LINE_496 = 496;
		ArrayList<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_result_2993_line_496 = result;
		int PROBE_END_LINE_496 = 496;
		return v_result_2993_line_496;
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
        for (AnnotatedMethod am : _classInfo.getStaticMethods()) {
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
        int PROBE_START_LINE_544 = 544;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_2997_line_544 = am;
		Class<?> basic_bean_description_1_expr70_line_544 = p_am_2997_line_544.getRawReturnType();
		int PROBE_END_LINE_544 = 544;
		/* First: return type must be compatible with the introspected class
         * (i.e. allowed to be sub-class, although usually is the same class)
         */
        Class<?> rt = basic_bean_description_1_expr70_line_544;
        int PROBE_START_LINE_545 = 547;
		Class<?> basic_bean_description_1_expr73_line_545 = getBeanClass();
		Class<?> v_rt_2998_line_545 = rt;
		boolean basic_bean_description_1_expr72_line_545 = basic_bean_description_1_expr73_line_545
				.isAssignableFrom(v_rt_2998_line_545);
		boolean basic_bean_description_1_expr71_line_545 = !basic_bean_description_1_expr72_line_545;
		int PROBE_END_LINE_545 = 547;
		if (basic_bean_description_1_expr71_line_545) {
            return false;
        }
        /* Also: must be a recognized factory method, meaning:
         * (a) marked with @JsonCreator annotation, or
         * (b) "valueOf" (at this point, need not be public)
         */
        if (_annotationIntrospector.hasCreatorAnnotation(am)) {
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
        int PROBE_START_LINE_598 = 599;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2959_line_598 = _annotationIntrospector;
		boolean basic_bean_description_1_expr77_line_598 = f__annotation_introspector_2959_line_598 == null;
		boolean basic_bean_description_1_expr75_line_598 = (basic_bean_description_1_expr77_line_598);
		Class<?> basic_bean_description_1_expr74_line_598 = basic_bean_description_1_expr75_line_598
				? null
				: _annotationIntrospector.findPOJOBuilder(_classInfo);
		int PROBE_END_LINE_598 = 599;
		return basic_bean_description_1_expr74_line_598;
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
        int PROBE_START_LINE_612 = 614;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2959_line_612 = _annotationIntrospector;
		boolean basic_bean_description_1_expr78_line_612 = f__annotation_introspector_2959_line_612 == null;
		int PROBE_END_LINE_612 = 614;
		if (basic_bean_description_1_expr78_line_612) {
            return null;
        }
        int PROBE_START_LINE_615 = 615;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2959_line_615 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2960_line_615 = _classInfo;
		Object basic_bean_description_1_expr80_line_615 = f__annotation_introspector_2959_line_615
				.findDeserializationConverter(f__class_info_2960_line_615);
		Converter<Object, Object> basic_bean_description_1_expr79_line_615 = _createConverter(
				basic_bean_description_1_expr80_line_615);
		int PROBE_END_LINE_615 = 615;
		return basic_bean_description_1_expr79_line_615;
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
    public Converter<Object,Object> _createConverter(Object converterDef)
    {
        int PROBE_START_LINE_671 = 673;
		Object p_converter_def_3002_line_671 = converterDef;
		boolean basic_bean_description_1_expr81_line_671 = p_converter_def_3002_line_671 == null;
		int PROBE_END_LINE_671 = 673;
		if (basic_bean_description_1_expr81_line_671) {
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
