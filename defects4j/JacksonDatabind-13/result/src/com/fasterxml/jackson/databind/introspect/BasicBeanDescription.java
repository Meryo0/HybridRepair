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
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Set;
import java.util.HashMap;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import java.util.ArrayList;

/**
 * Default {@link BeanDescription} implementation.
 * Can theoretically be subclassed to customize
 * some aspects of property introspection.
 */
public class BasicBeanDescription extends BeanDescription
{
    /*
    /**********************************************************
    /* General configuration
    /**********************************************************
     */

    final protected MapperConfig<?> _config;

    final protected AnnotationIntrospector _annotationIntrospector;
    
    /**
     * Information collected about the class introspected.
     */
    final protected AnnotatedClass _classInfo;
    
    /**
     * We may need type bindings for the bean type. If so, we'll
     * construct it lazily
     */
    protected TypeBindings _bindings;

    /*
    /**********************************************************
    /* Member information
    /**********************************************************
     */

    /**
     * Properties collected for the POJO.
     */
    protected final List<BeanPropertyDefinition> _properties;

    /**
     * Details of Object Id to include, if any
     */
    protected ObjectIdInfo _objectIdInfo;
    
    // // for deserialization
    
    protected AnnotatedMethod _anySetterMethod;

    protected Map<Object, AnnotatedMember> _injectables;
    
    /**
     * Set of properties that can be ignored during deserialization, due
     * to being marked as ignored.
     */
    protected Set<String> _ignoredPropertyNames;

    // // for serialization
    
    protected AnnotatedMethod _jsonValueMethod;

    protected AnnotatedMember _anyGetter;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    protected BasicBeanDescription(MapperConfig<?> config,
            JavaType type, AnnotatedClass classDef,
            List<BeanPropertyDefinition> props)
    {
        super(type);
        int PROBE_START_LINE_91 = 91;
		MapperConfig<?> p_config_2737_line_91 = config;
		int PROBE_END_LINE_91 = 91;
		_config = p_config_2737_line_91;
        int PROBE_START_LINE_92 = 92;
		MapperConfig<?> p_config_2737_line_92 = config;
		boolean basic_bean_description_1_expr7_line_92 = p_config_2737_line_92 == null;
		boolean basic_bean_description_1_expr5_line_92 = (basic_bean_description_1_expr7_line_92);
		com.fasterxml.jackson.databind.AnnotationIntrospector basic_bean_description_1_expr6_line_92 = null;
		if (!basic_bean_description_1_expr5_line_92) {
			MapperConfig<?> p_config_2737_line_92_v1 = config;
			basic_bean_description_1_expr6_line_92 = p_config_2737_line_92_v1.getAnnotationIntrospector();
		}
		com.fasterxml.jackson.databind.AnnotationIntrospector basic_bean_description_1_expr4_line_92 = basic_bean_description_1_expr5_line_92
				? null
				: basic_bean_description_1_expr6_line_92;
		int PROBE_END_LINE_92 = 92;
		_annotationIntrospector = basic_bean_description_1_expr4_line_92;
        int PROBE_START_LINE_93 = 93;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_2739_line_93 = classDef;
		int PROBE_END_LINE_93 = 93;
		_classInfo = p_class_def_2739_line_93;
        int PROBE_START_LINE_94 = 94;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> p_props_2740_line_94 = props;
		int PROBE_END_LINE_94 = 94;
		_properties = p_props_2740_line_94;
    }
    
    protected BasicBeanDescription(POJOPropertiesCollector coll)
    {
        this(coll.getConfig(), coll.getType(), coll.getClassDef(), coll.getProperties());
        int PROBE_START_LINE_100 = 100;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2745_line_100 = coll;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo basic_bean_description_1_expr16_line_100 = p_coll_2745_line_100
				.getObjectIdInfo();
		int PROBE_END_LINE_100 = 100;
		_objectIdInfo = basic_bean_description_1_expr16_line_100;
    }

    /**
     * Factory method to use for constructing an instance to use for building
     * deserializers.
     */
    public static BasicBeanDescription forDeserialization(POJOPropertiesCollector coll)
    {
        int PROBE_START_LINE_109 = 109;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2747_line_109 = coll;
		int PROBE_END_LINE_109 = 109;
		BasicBeanDescription desc = new BasicBeanDescription(p_coll_2747_line_109);
        int PROBE_START_LINE_110 = 110;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2747_line_110 = coll;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod basic_bean_description_1_expr19_line_110 = p_coll_2747_line_110
				.getAnySetterMethod();
		int PROBE_END_LINE_110 = 110;
		desc._anySetterMethod = basic_bean_description_1_expr19_line_110;
        int PROBE_START_LINE_111 = 111;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2747_line_111 = coll;
		Set<String> basic_bean_description_1_expr21_line_111 = p_coll_2747_line_111.getIgnoredPropertyNames();
		int PROBE_END_LINE_111 = 111;
		desc._ignoredPropertyNames = basic_bean_description_1_expr21_line_111;
        int PROBE_START_LINE_112 = 112;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2747_line_112 = coll;
		Map<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> basic_bean_description_1_expr23_line_112 = p_coll_2747_line_112
				.getInjectables();
		int PROBE_END_LINE_112 = 112;
		desc._injectables = basic_bean_description_1_expr23_line_112;
        int PROBE_START_LINE_113 = 113;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_2747_line_113 = coll;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod basic_bean_description_1_expr25_line_113 = p_coll_2747_line_113
				.getJsonValueMethod();
		int PROBE_END_LINE_113 = 113;
		desc._jsonValueMethod = basic_bean_description_1_expr25_line_113;
        int PROBE_START_LINE_114 = 114;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_2748_line_114 = desc;
		int PROBE_END_LINE_114 = 114;
		return v_desc_2748_line_114;
    }

    /**
     * Factory method to use for constructing an instance to use for building
     * serializers.
     */
    public static BasicBeanDescription forSerialization(POJOPropertiesCollector coll)
    {
        BasicBeanDescription desc = new BasicBeanDescription(coll);
        desc._jsonValueMethod = coll.getJsonValueMethod();
        desc._anyGetter = coll.getAnyGetter();
        return desc;
    }

    /**
     * Factory method to use for constructing an instance to use for purposes
     * other than building serializers or deserializers; will only have information
     * on class, not on properties.
     */
    public static BasicBeanDescription forOtherUse(MapperConfig<?> config,
            JavaType type, AnnotatedClass ac)
    {
        int PROBE_START_LINE_137 = 138;
		MapperConfig<?> p_config_2750_line_137 = config;
		com.fasterxml.jackson.databind.JavaType p_type_2751_line_137 = type;
		int PROBE_END_LINE_137 = 138;
		return new BasicBeanDescription(p_config_2750_line_137, p_type_2751_line_137,
                ac, Collections.<BeanPropertyDefinition>emptyList());
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
        Iterator<BeanPropertyDefinition> it = _properties.iterator();
        while (it.hasNext()) {
            BeanPropertyDefinition prop = it.next();
            if (prop.getName().equals(propName)) {
                it.remove();
                return true;
            }
        }
        return false;
    }
    
    /*
    /**********************************************************
    /* Simple accessors from BeanDescription
    /**********************************************************
     */

    @Override
    public AnnotatedClass getClassInfo() { int PROBE_START_LINE_174 = 174;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2743_line_174 = _classInfo;
		int PROBE_END_LINE_174 = 174;
	return f__class_info_2743_line_174; }

    @Override
    public ObjectIdInfo getObjectIdInfo() { int PROBE_START_LINE_177 = 177;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo f__object_id_info_2746_line_177 = _objectIdInfo;
		int PROBE_END_LINE_177 = 177;
	return  f__object_id_info_2746_line_177; }

    @Override
    public List<BeanPropertyDefinition> findProperties() {
        int PROBE_START_LINE_181 = 181;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> f__properties_2744_line_181 = _properties;
		int PROBE_END_LINE_181 = 181;
		return f__properties_2744_line_181;
    }

    @Override
    public AnnotatedMethod findJsonValueMethod() {
        return _jsonValueMethod;
    }

    @Override
    public Set<String> getIgnoredPropertyNames() {
        int PROBE_START_LINE_191 = 193;
		Set<String> f__ignored_property_names_2754_line_191 = _ignoredPropertyNames;
		boolean basic_bean_description_1_expr28_line_191 = f__ignored_property_names_2754_line_191 == null;
		int PROBE_END_LINE_191 = 193;
		if (basic_bean_description_1_expr28_line_191) {
            int PROBE_START_LINE_192 = 192;
			Set<String> basic_bean_description_1_expr29_line_192 = Collections.emptySet();
			int PROBE_END_LINE_192 = 192;
			return basic_bean_description_1_expr29_line_192;
        }
        return _ignoredPropertyNames;
    }

    @Override
    public boolean hasKnownClassAnnotations() {
        return _classInfo.hasAnnotations();
    }

    @Override
    public Annotations getClassAnnotations() {
        int PROBE_START_LINE_204 = 204;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2743_line_204 = _classInfo;
		com.fasterxml.jackson.databind.util.Annotations basic_bean_description_1_expr30_line_204 = f__class_info_2743_line_204
				.getAnnotations();
		int PROBE_END_LINE_204 = 204;
		return basic_bean_description_1_expr30_line_204;
    }

    @Override
    public TypeBindings bindingsForBeanType()
    {
        int PROBE_START_LINE_210 = 212;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_2755_line_210 = _bindings;
		boolean basic_bean_description_1_expr31_line_210 = f__bindings_2755_line_210 == null;
		int PROBE_END_LINE_210 = 212;
		if (basic_bean_description_1_expr31_line_210) {
            int PROBE_START_LINE_211 = 211;
			MapperConfig<?> f__config_2741_line_211 = _config;
			com.fasterxml.jackson.databind.type.TypeFactory basic_bean_description_1_expr34_line_211 = f__config_2741_line_211
					.getTypeFactory();
			com.fasterxml.jackson.databind.JavaType f__type_94_line_211 = _type;
			int PROBE_END_LINE_211 = 211;
			_bindings = new TypeBindings(basic_bean_description_1_expr34_line_211, f__type_94_line_211);
        }
        int PROBE_START_LINE_213 = 213;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_2755_line_213 = _bindings;
		int PROBE_END_LINE_213 = 213;
		return f__bindings_2755_line_213;
    }

    @Override
    public JavaType resolveType(java.lang.reflect.Type jdkType) {
        int PROBE_START_LINE_218 = 220;
		java.lang.reflect.Type p_jdk_type_2756_line_218 = jdkType;
		boolean basic_bean_description_1_expr35_line_218 = p_jdk_type_2756_line_218 == null;
		int PROBE_END_LINE_218 = 220;
		if (basic_bean_description_1_expr35_line_218) {
            return null;
        }
        int PROBE_START_LINE_221 = 221;
		com.fasterxml.jackson.databind.type.TypeBindings basic_bean_description_1_expr37_line_221 = bindingsForBeanType();
		java.lang.reflect.Type p_jdk_type_2756_line_221 = jdkType;
		com.fasterxml.jackson.databind.JavaType basic_bean_description_1_expr36_line_221 = basic_bean_description_1_expr37_line_221
				.resolveType(p_jdk_type_2756_line_221);
		int PROBE_END_LINE_221 = 221;
		return basic_bean_description_1_expr36_line_221;
    }

    @Override
    public AnnotatedConstructor findDefaultConstructor() {
        int PROBE_START_LINE_226 = 226;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2743_line_226 = _classInfo;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor basic_bean_description_1_expr38_line_226 = f__class_info_2743_line_226
				.getDefaultConstructor();
		int PROBE_END_LINE_226 = 226;
		return basic_bean_description_1_expr38_line_226;
    }

    @Override
    public AnnotatedMethod findAnySetter() throws IllegalArgumentException
    {
        int PROBE_START_LINE_232 = 245;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod f__any_setter_method_2757_line_232 = _anySetterMethod;
		boolean basic_bean_description_1_expr39_line_232 = f__any_setter_method_2757_line_232 != null;
		int PROBE_END_LINE_232 = 245;
		if (basic_bean_description_1_expr39_line_232) {
            /* Also, let's be somewhat strict on how field name is to be
             * passed; String, Object make sense, others not
             * so much.
             */
            /* !!! 18-May-2009, tatu: how about enums? Can add support if
             *  requested; easy enough for devs to add support within
             *  method.
             */
            Class<?> type = _anySetterMethod.getRawParameterType(0);
            if (type != String.class && type != Object.class) {
                throw new IllegalArgumentException("Invalid 'any-setter' annotation on method "+_anySetterMethod.getName()+"(): first argument not of type String or Object, but "+type.getName());
            }
        }
        int PROBE_START_LINE_246 = 246;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod f__any_setter_method_2757_line_246 = _anySetterMethod;
		int PROBE_END_LINE_246 = 246;
		return f__any_setter_method_2757_line_246;
    }

    @Override
    public Map<Object, AnnotatedMember> findInjectables() {
        int PROBE_START_LINE_251 = 251;
		Map<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> f__injectables_2758_line_251 = _injectables;
		int PROBE_END_LINE_251 = 251;
		return f__injectables_2758_line_251;
    }

    @Override
    public List<AnnotatedConstructor> getConstructors() {
        int PROBE_START_LINE_256 = 256;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2743_line_256 = _classInfo;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> basic_bean_description_1_expr40_line_256 = f__class_info_2743_line_256
				.getConstructors();
		int PROBE_END_LINE_256 = 256;
		return basic_bean_description_1_expr40_line_256;
    }

    @Override
    public Object instantiateBean(boolean fixAccess)
    {
        AnnotatedConstructor ac = _classInfo.getDefaultConstructor();
        if (ac == null) {
            return null;
        }
        if (fixAccess) {
            ac.fixAccess();
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
        int PROBE_START_LINE_302 = 307;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2742_line_302 = _annotationIntrospector;
		boolean basic_bean_description_1_expr41_line_302 = f__annotation_introspector_2742_line_302 != null;
		int PROBE_END_LINE_302 = 307;
		if (basic_bean_description_1_expr41_line_302) {
            int PROBE_START_LINE_303 = 303;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2742_line_303 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2743_line_303 = _classInfo;
			JsonFormat.Value basic_bean_description_1_expr42_line_303 = f__annotation_introspector_2742_line_303
					.findFormat(f__class_info_2743_line_303);
			int PROBE_END_LINE_303 = 303;
			JsonFormat.Value v = basic_bean_description_1_expr42_line_303;
            int PROBE_START_LINE_304 = 306;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_v_2763_line_304 = v;
			boolean basic_bean_description_1_expr43_line_304 = v_v_2763_line_304 != null;
			int PROBE_END_LINE_304 = 306;
			if (basic_bean_description_1_expr43_line_304) {
                return v;
            }
        }
        int PROBE_START_LINE_308 = 308;
		com.fasterxml.jackson.annotation.JsonFormat.Value p_def_value_2762_line_308 = defValue;
		int PROBE_END_LINE_308 = 308;
		return p_def_value_2762_line_308;
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
    public JsonInclude.Include findSerializationInclusion(JsonInclude.Include defValue) {
        if (_annotationIntrospector == null) {
            return defValue;
        }
        return _annotationIntrospector.findSerializationInclusion(_classInfo, defValue);
    }

    @Override
    public JsonInclude.Include findSerializationInclusionForContent(JsonInclude.Include defValue) {
        if (_annotationIntrospector == null) {
            return defValue;
        }
        return _annotationIntrospector.findSerializationInclusionForContent(_classInfo, defValue);
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
        if (_anyGetter != null) {
            /* For now let's require a Map; in future can add support for other
             * types like perhaps Iterable<Map.Entry>?
             */
            Class<?> type = _anyGetter.getRawType();
            if (!Map.class.isAssignableFrom(type)) {
                throw new IllegalArgumentException("Invalid 'any-getter' annotation on method "+_anyGetter.getName()+"(): return type is not instance of java.util.Map");
            }
        }
        return _anyGetter;
    }
    
    @Override
    public Map<String,AnnotatedMember> findBackReferenceProperties()
    {
        HashMap<String,AnnotatedMember> result = null;
//        boolean hasIgnored = (_ignoredPropertyNames != null);

        int PROBE_START_LINE_375 = 401;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> f__properties_2744_line_375 = _properties;
		int PROBE_END_LINE_375 = 401;
		for (BeanPropertyDefinition property : f__properties_2744_line_375) {
            int PROBE_START_LINE_387 = 387;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_property_2767_line_387 = property;
			AnnotatedMember basic_bean_description_1_expr44_line_387 = v_property_2767_line_387.getMutator();
			int PROBE_END_LINE_387 = 387;
			/* 23-Sep-2014, tatu: As per [Databind#426], we _should_ try to avoid
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
            AnnotatedMember am = basic_bean_description_1_expr44_line_387;
            int PROBE_START_LINE_388 = 390;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_am_2768_line_388 = am;
			boolean basic_bean_description_1_expr45_line_388 = v_am_2768_line_388 == null;
			int PROBE_END_LINE_388 = 390;
			if (basic_bean_description_1_expr45_line_388) {
                continue;
            }
            int PROBE_START_LINE_391 = 391;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2742_line_391 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_am_2768_line_391 = am;
			AnnotationIntrospector.ReferenceProperty basic_bean_description_1_expr46_line_391 = f__annotation_introspector_2742_line_391
					.findReferenceType(v_am_2768_line_391);
			int PROBE_END_LINE_391 = 391;
			AnnotationIntrospector.ReferenceProperty refDef = basic_bean_description_1_expr46_line_391;
            int PROBE_START_LINE_392 = 400;
			com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_def_2769_line_392 = refDef;
			boolean basic_bean_description_1_expr48_line_392 = v_ref_def_2769_line_392 != null;
			boolean basic_bean_description_1_expr49_line_392 = true;
			if (basic_bean_description_1_expr48_line_392) {
				com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_ref_def_2769_line_392_v1 = refDef;
				basic_bean_description_1_expr49_line_392 = v_ref_def_2769_line_392_v1.isBackReference();
			}
			boolean basic_bean_description_1_expr47_line_392 = basic_bean_description_1_expr48_line_392
					&& basic_bean_description_1_expr49_line_392;
			int PROBE_END_LINE_392 = 400;
			if (basic_bean_description_1_expr47_line_392) {
                if (result == null) {
                    result = new HashMap<String,AnnotatedMember>();
                }
                String refName = refDef.getName();
                if (result.put(refName, am) != null) {
                    throw new IllegalArgumentException("Multiple back-reference properties with name '"+refName+"'");
                }
            }
        }
        int PROBE_START_LINE_402 = 402;
		HashMap<String, com.fasterxml.jackson.databind.introspect.AnnotatedMember> v_result_2766_line_402 = result;
		int PROBE_END_LINE_402 = 402;
		return v_result_2766_line_402;
    }

    /*
    /**********************************************************
    /* Introspection for deserialization, factories
    /**********************************************************
     */

    @Override
    public List<AnnotatedMethod> getFactoryMethods()
    {
        int PROBE_START_LINE_415 = 415;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2743_line_415 = _classInfo;
		List<AnnotatedMethod> basic_bean_description_1_expr50_line_415 = f__class_info_2743_line_415.getStaticMethods();
		int PROBE_END_LINE_415 = 415;
		// must filter out anything that clearly is not a factory method
        List<AnnotatedMethod> candidates = basic_bean_description_1_expr50_line_415;
        int PROBE_START_LINE_416 = 418;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_candidates_2770_line_416 = candidates;
		boolean basic_bean_description_1_expr51_line_416 = v_candidates_2770_line_416.isEmpty();
		int PROBE_END_LINE_416 = 418;
		if (basic_bean_description_1_expr51_line_416) {
            return candidates;
        }
        ArrayList<AnnotatedMethod> result = new ArrayList<AnnotatedMethod>();
        int PROBE_START_LINE_420 = 424;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_candidates_2770_line_420 = candidates;
		int PROBE_END_LINE_420 = 424;
		for (AnnotatedMethod am : v_candidates_2770_line_420) {
            int PROBE_START_LINE_421 = 423;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_am_2772_line_421 = am;
			boolean basic_bean_description_1_expr53_line_421 = isFactoryMethod(v_am_2772_line_421);
			int PROBE_END_LINE_421 = 423;
			if (basic_bean_description_1_expr53_line_421) {
                result.add(am);
            }
        }
        int PROBE_START_LINE_425 = 425;
		ArrayList<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_result_2771_line_425 = result;
		int PROBE_END_LINE_425 = 425;
		return v_result_2771_line_425;
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
            if (isFactoryMethod(am)) {
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
        int PROBE_START_LINE_473 = 473;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_2775_line_473 = am;
		Class<?> basic_bean_description_1_expr54_line_473 = p_am_2775_line_473.getRawReturnType();
		int PROBE_END_LINE_473 = 473;
		/* First: return type must be compatible with the introspected class
         * (i.e. allowed to be sub-class, although usually is the same
         * class)
         */
        Class<?> rt = basic_bean_description_1_expr54_line_473;
        int PROBE_START_LINE_474 = 476;
		Class<?> basic_bean_description_1_expr57_line_474 = getBeanClass();
		Class<?> v_rt_2776_line_474 = rt;
		boolean basic_bean_description_1_expr56_line_474 = basic_bean_description_1_expr57_line_474
				.isAssignableFrom(v_rt_2776_line_474);
		boolean basic_bean_description_1_expr55_line_474 = !basic_bean_description_1_expr56_line_474;
		int PROBE_END_LINE_474 = 476;
		if (basic_bean_description_1_expr55_line_474) {
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
        if ("valueOf".equals(name)) {
            return true;
        }
        // [Issue#208] Also accept "fromString()", if takes String or CharSequence
        if ("fromString".equals(name)) {
            if (1 == am.getParameterCount()) {
                Class<?> cls = am.getRawParameterType(0);
                if (cls == String.class || CharSequence.class.isAssignableFrom(cls)) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * @deprecated Since 2.4, use <code>findCreatorParameterNames()</code> instead.
     */
    @Deprecated
    public List<String> findCreatorPropertyNames()
    {
        List<PropertyName> params = findCreatorParameterNames();
        if (params.isEmpty()) {
    		    return Collections.emptyList();
        }
        List<String> result = new ArrayList<String>(params.size());
        for (PropertyName name : params) {
    		    result.add(name.getSimpleName());
        }
        return result;
    }
    
    /**
     * @deprecated Since 2.5, does not seem to be used at all.
     */
    @Deprecated
    public List<PropertyName> findCreatorParameterNames()
    {
        for (int i = 0; i < 2; ++i) {
            List<? extends AnnotatedWithParams> l = (i == 0)
                ? getConstructors() : getFactoryMethods();
            for (AnnotatedWithParams creator : l) {
                int argCount = creator.getParameterCount();
                if (argCount < 1) continue;
                PropertyName name = _findCreatorPropertyName(creator.getParameter(0));
                if (name == null || name.isEmpty()) {
                    continue;
                }
                List<PropertyName> names = new ArrayList<PropertyName>();
                names.add(name);
                for (int p = 1; p < argCount; ++p) {
                    name = _findCreatorPropertyName(creator.getParameter(p));
                    names.add(name);
                }
                return names;
            }
        }
        return Collections.emptyList();
    }

    protected PropertyName _findCreatorPropertyName(AnnotatedParameter param)
    {
    	PropertyName name = _annotationIntrospector.findNameForDeserialization(param);
    	if (name == null || name.isEmpty()) {
    		String str = _annotationIntrospector.findImplicitPropertyName(param);
    		if (str != null && !str.isEmpty()) {
    			name = new PropertyName(str);
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
    public Class<?> findPOJOBuilder()
    {
    	int PROBE_START_LINE_567 = 568;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2742_line_567 = _annotationIntrospector;
		boolean basic_bean_description_1_expr61_line_567 = f__annotation_introspector_2742_line_567 == null;
		boolean basic_bean_description_1_expr59_line_567 = (basic_bean_description_1_expr61_line_567);
		Class<?> basic_bean_description_1_expr58_line_567 = basic_bean_description_1_expr59_line_567
				? null
				: _annotationIntrospector.findPOJOBuilder(_classInfo);
		int PROBE_END_LINE_567 = 568;
		return basic_bean_description_1_expr58_line_567;
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
        int PROBE_START_LINE_581 = 583;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2742_line_581 = _annotationIntrospector;
		boolean basic_bean_description_1_expr62_line_581 = f__annotation_introspector_2742_line_581 == null;
		int PROBE_END_LINE_581 = 583;
		if (basic_bean_description_1_expr62_line_581) {
            return null;
        }
        int PROBE_START_LINE_584 = 584;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_2742_line_584 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_2743_line_584 = _classInfo;
		Object basic_bean_description_1_expr64_line_584 = f__annotation_introspector_2742_line_584
				.findDeserializationConverter(f__class_info_2743_line_584);
		Converter<Object, Object> basic_bean_description_1_expr63_line_584 = _createConverter(
				basic_bean_description_1_expr64_line_584);
		int PROBE_END_LINE_584 = 584;
		return basic_bean_description_1_expr63_line_584;
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
     */
    public LinkedHashMap<String,AnnotatedField> _findPropertyFields(
            Collection<String> ignoredProperties, boolean forSerialization)
    {
        LinkedHashMap<String,AnnotatedField> results = new LinkedHashMap<String,AnnotatedField>();
        for (BeanPropertyDefinition property : _properties) {
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
        int PROBE_START_LINE_631 = 633;
		Object p_converter_def_2780_line_631 = converterDef;
		boolean basic_bean_description_1_expr65_line_631 = p_converter_def_2780_line_631 == null;
		int PROBE_END_LINE_631 = 633;
		if (basic_bean_description_1_expr65_line_631) {
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
