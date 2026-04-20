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
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Map;
import java.util.Set;
import com.fasterxml.jackson.databind.JavaType;

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
		MapperConfig<?> p_config_1625_line_91 = config;
		int PROBE_END_LINE_91 = 91;
		_config = p_config_1625_line_91;
        int PROBE_START_LINE_92 = 92;
		MapperConfig<?> p_config_1625_line_92 = config;
		boolean basic_bean_description_1_expr7_line_92 = p_config_1625_line_92 == null;
		boolean basic_bean_description_1_expr5_line_92 = (basic_bean_description_1_expr7_line_92);
		com.fasterxml.jackson.databind.AnnotationIntrospector basic_bean_description_1_expr6_line_92 = null;
		if (!basic_bean_description_1_expr5_line_92) {
			MapperConfig<?> p_config_1625_line_92_v1 = config;
			basic_bean_description_1_expr6_line_92 = p_config_1625_line_92_v1.getAnnotationIntrospector();
		}
		com.fasterxml.jackson.databind.AnnotationIntrospector basic_bean_description_1_expr4_line_92 = basic_bean_description_1_expr5_line_92
				? null
				: basic_bean_description_1_expr6_line_92;
		int PROBE_END_LINE_92 = 92;
		_annotationIntrospector = basic_bean_description_1_expr4_line_92;
        int PROBE_START_LINE_93 = 93;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_1627_line_93 = classDef;
		int PROBE_END_LINE_93 = 93;
		_classInfo = p_class_def_1627_line_93;
        int PROBE_START_LINE_94 = 94;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> p_props_1628_line_94 = props;
		int PROBE_END_LINE_94 = 94;
		_properties = p_props_1628_line_94;
    }
    
    protected BasicBeanDescription(POJOPropertiesCollector coll)
    {
        this(coll.getConfig(), coll.getType(), coll.getClassDef(), coll.getProperties());
        int PROBE_START_LINE_100 = 100;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_1633_line_100 = coll;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo basic_bean_description_1_expr16_line_100 = p_coll_1633_line_100
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
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_1635_line_109 = coll;
		int PROBE_END_LINE_109 = 109;
		BasicBeanDescription desc = new BasicBeanDescription(p_coll_1635_line_109);
        int PROBE_START_LINE_110 = 110;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_1635_line_110 = coll;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod basic_bean_description_1_expr19_line_110 = p_coll_1635_line_110
				.getAnySetterMethod();
		int PROBE_END_LINE_110 = 110;
		desc._anySetterMethod = basic_bean_description_1_expr19_line_110;
        int PROBE_START_LINE_111 = 111;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_1635_line_111 = coll;
		Set<String> basic_bean_description_1_expr21_line_111 = p_coll_1635_line_111.getIgnoredPropertyNames();
		int PROBE_END_LINE_111 = 111;
		desc._ignoredPropertyNames = basic_bean_description_1_expr21_line_111;
        int PROBE_START_LINE_112 = 112;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_1635_line_112 = coll;
		Map<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> basic_bean_description_1_expr23_line_112 = p_coll_1635_line_112
				.getInjectables();
		int PROBE_END_LINE_112 = 112;
		desc._injectables = basic_bean_description_1_expr23_line_112;
        int PROBE_START_LINE_113 = 113;
		com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector p_coll_1635_line_113 = coll;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod basic_bean_description_1_expr25_line_113 = p_coll_1635_line_113
				.getJsonValueMethod();
		int PROBE_END_LINE_113 = 113;
		desc._jsonValueMethod = basic_bean_description_1_expr25_line_113;
        int PROBE_START_LINE_114 = 114;
		com.fasterxml.jackson.databind.introspect.BasicBeanDescription v_desc_1636_line_114 = desc;
		int PROBE_END_LINE_114 = 114;
		return v_desc_1636_line_114;
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
		MapperConfig<?> p_config_1638_line_137 = config;
		com.fasterxml.jackson.databind.JavaType p_type_1639_line_137 = type;
		int PROBE_END_LINE_137 = 138;
		return new BasicBeanDescription(p_config_1638_line_137, p_type_1639_line_137,
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
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_1631_line_174 = _classInfo;
		int PROBE_END_LINE_174 = 174;
	return f__class_info_1631_line_174; }

    @Override
    public ObjectIdInfo getObjectIdInfo() { return  _objectIdInfo; }
    
    @Override
    public List<BeanPropertyDefinition> findProperties() {
        return _properties;
    }

    @Override
    public AnnotatedMethod findJsonValueMethod() {
        return _jsonValueMethod;
    }

    @Override
    public Set<String> getIgnoredPropertyNames() {
        if (_ignoredPropertyNames == null) {
            return Collections.emptySet();
        }
        return _ignoredPropertyNames;
    }
    
    @Override
    public boolean hasKnownClassAnnotations() {
        return _classInfo.hasAnnotations();
    }

    @Override
    public Annotations getClassAnnotations() {
        return _classInfo.getAnnotations();
    }

    @Override
    public TypeBindings bindingsForBeanType()
    {
        if (_bindings == null) {
            _bindings = new TypeBindings(_config.getTypeFactory(), _type);
        }
        return _bindings;
    }

    @Override
    public JavaType resolveType(java.lang.reflect.Type jdkType) {
        if (jdkType == null) {
            return null;
        }
        return bindingsForBeanType().resolveType(jdkType);
    }

    @Override
    public AnnotatedConstructor findDefaultConstructor() {
        return _classInfo.getDefaultConstructor();
    }

    @Override
    public AnnotatedMethod findAnySetter() throws IllegalArgumentException
    {
        if (_anySetterMethod != null) {
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
        return _anySetterMethod;
    }

    @Override
    public Map<Object, AnnotatedMember> findInjectables() {
        return _injectables;
    }

    @Override
    public List<AnnotatedConstructor> getConstructors() {
        return _classInfo.getConstructors();
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
        if (_annotationIntrospector != null) {
            JsonFormat.Value v = _annotationIntrospector.findFormat(_classInfo);
            if (v != null) {
                return v;
            }
        }
        return defValue;
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
    public JsonInclude.Include findSerializationInclusion(JsonInclude.Include defValue)
    {
        if (_annotationIntrospector == null) {
            return defValue;
        }
        return _annotationIntrospector.findSerializationInclusion(_classInfo, defValue);
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
        for (BeanPropertyDefinition property : _properties) {
            AnnotatedMember am = property.getMutator();
            if (am == null) {
                continue;
            }
            AnnotationIntrospector.ReferenceProperty refDef = _annotationIntrospector.findReferenceType(am);
            if (refDef != null && refDef.isBackReference()) {
                if (result == null) {
                    result = new HashMap<String,AnnotatedMember>();
                }
                String refName = refDef.getName();
                if (result.put(refName, am) != null) {
                    throw new IllegalArgumentException("Multiple back-reference properties with name '"+refName+"'");
                }
            }
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
        // must filter out anything that clearly is not a factory method
        List<AnnotatedMethod> candidates = _classInfo.getStaticMethods();
        if (candidates.isEmpty()) {
            return candidates;
        }
        ArrayList<AnnotatedMethod> result = new ArrayList<AnnotatedMethod>();
        for (AnnotatedMethod am : candidates) {
            if (isFactoryMethod(am)) {
                result.add(am);
            }
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
        /* First: return type must be compatible with the introspected class
         * (i.e. allowed to be sub-class, although usually is the same
         * class)
         */
        Class<?> rt = am.getRawReturnType();
        if (!getBeanClass().isAssignableFrom(rt)) {
            return false;
        }

        /* Also: must be a recognized factory method, meaning:
         * (a) marked with @JsonCreator annotation, or
         * (a) "valueOf" (at this point, need not be public)
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
     * @deprecated Since 2.4, use {@link #findCreatorParameterNames()} instead.
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
     * Method for getting ordered list of named Creator properties.
     * Returns an empty list is none found. If multiple Creator
     * methods are defined, order between properties from different
     * methods is undefined; however, properties for each such
     * Creator are ordered properly relative to each other.
     * For the usual case of just a single Creator, named properties are
     * thus properly ordered.
     * 
     * @since 2.4
     */
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
    	int PROBE_START_LINE_554 = 555;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1630_line_554 = _annotationIntrospector;
		boolean basic_bean_description_1_expr31_line_554 = f__annotation_introspector_1630_line_554 == null;
		boolean basic_bean_description_1_expr29_line_554 = (basic_bean_description_1_expr31_line_554);
		Class<?> basic_bean_description_1_expr28_line_554 = basic_bean_description_1_expr29_line_554
				? null
				: _annotationIntrospector.findPOJOBuilder(_classInfo);
		int PROBE_END_LINE_554 = 555;
		return basic_bean_description_1_expr28_line_554;
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
        int PROBE_START_LINE_568 = 570;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1630_line_568 = _annotationIntrospector;
		boolean basic_bean_description_1_expr32_line_568 = f__annotation_introspector_1630_line_568 == null;
		int PROBE_END_LINE_568 = 570;
		if (basic_bean_description_1_expr32_line_568) {
            return null;
        }
        int PROBE_START_LINE_571 = 571;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1630_line_571 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_info_1631_line_571 = _classInfo;
		Object basic_bean_description_1_expr34_line_571 = f__annotation_introspector_1630_line_571
				.findDeserializationConverter(f__class_info_1631_line_571);
		Converter<Object, Object> basic_bean_description_1_expr33_line_571 = _createConverter(
				basic_bean_description_1_expr34_line_571);
		int PROBE_END_LINE_571 = 571;
		return basic_bean_description_1_expr33_line_571;
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
        int PROBE_START_LINE_618 = 620;
		Object p_converter_def_1654_line_618 = converterDef;
		boolean basic_bean_description_1_expr35_line_618 = p_converter_def_1654_line_618 == null;
		int PROBE_END_LINE_618 = 620;
		if (basic_bean_description_1_expr35_line_618) {
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
