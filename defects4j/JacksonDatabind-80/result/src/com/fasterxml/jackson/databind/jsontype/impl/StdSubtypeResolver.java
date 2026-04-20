package com.fasterxml.jackson.databind.jsontype.impl;

import java.lang.reflect.Modifier;
import java.util.*;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import java.util.Map;
import java.util.Collection;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.util.Set;

/**
 * Standard {@link SubtypeResolver} implementation.
 */
public class StdSubtypeResolver
    extends SubtypeResolver
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    protected LinkedHashSet<NamedType> _registeredSubtypes;

    public StdSubtypeResolver() { }

    /*
    /**********************************************************
    /* Subtype registration
    /**********************************************************
     */

    @Override    
    public void registerSubtypes(NamedType... types) {
        if (_registeredSubtypes == null) {
            _registeredSubtypes = new LinkedHashSet<NamedType>();
        }
        for (NamedType type : types) {
            _registeredSubtypes.add(type);
        }
    }

    @Override
    public void registerSubtypes(Class<?>... classes) {
        NamedType[] types = new NamedType[classes.length];
        for (int i = 0, len = classes.length; i < len; ++i) {
            types[i] = new NamedType(classes[i]);
        }
        registerSubtypes(types);
    }

    /*
    /**********************************************************
    /* Resolution by class (serialization)
    /**********************************************************
     */

    @Override
    public Collection<NamedType> collectAndResolveSubtypesByClass(MapperConfig<?> config, 
            AnnotatedMember property, JavaType baseType)
    {
        final AnnotationIntrospector ai = config.getAnnotationIntrospector();
        // for backwards compatibility, must allow null here:
        Class<?> rawBase = (baseType == null) ? property.getRawType() : baseType.getRawClass();
        
        HashMap<NamedType, NamedType> collected = new HashMap<NamedType, NamedType>();
        // start with registered subtypes (which have precedence)
        if (_registeredSubtypes != null) {
            for (NamedType subtype : _registeredSubtypes) {
                // is it a subtype of root type?
                if (rawBase.isAssignableFrom(subtype.getType())) { // yes
                    AnnotatedClass curr = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                            subtype.getType());
                    _collectAndResolve(curr, subtype, config, ai, collected);
                }
            }
        }
        
        // then annotated types for property itself
            Collection<NamedType> st = ai.findSubtypes(property);
            if (st != null) {
                for (NamedType nt : st) {
                    AnnotatedClass ac = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                            nt.getType());
                    _collectAndResolve(ac, nt, config, ai, collected);
                }            
        }

        NamedType rootType = new NamedType(rawBase, null);
        AnnotatedClass ac = AnnotatedClassResolver.resolveWithoutSuperTypes(config, rawBase);
            
        // and finally subtypes via annotations from base type (recursively)
        _collectAndResolve(ac, rootType, config, ai, collected);

        return new ArrayList<NamedType>(collected.values());
    }

    @Override
    public Collection<NamedType> collectAndResolveSubtypesByClass(MapperConfig<?> config,
            AnnotatedClass type)
    {
        final AnnotationIntrospector ai = config.getAnnotationIntrospector();
        HashMap<NamedType, NamedType> subtypes = new HashMap<NamedType, NamedType>();
        // then consider registered subtypes (which have precedence over annotations)
        if (_registeredSubtypes != null) {
            Class<?> rawBase = type.getRawType();
            for (NamedType subtype : _registeredSubtypes) {
                // is it a subtype of root type?
                if (rawBase.isAssignableFrom(subtype.getType())) { // yes
                    AnnotatedClass curr = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                            subtype.getType());
                    _collectAndResolve(curr, subtype, config, ai, subtypes);
                }
            }
        }
        // and then check subtypes via annotations from base type (recursively)
        NamedType rootType = new NamedType(type.getRawType(), null);
        _collectAndResolve(type, rootType, config, ai, subtypes);
        return new ArrayList<NamedType>(subtypes.values());
    }

    /*
    /**********************************************************
    /* Resolution by class (deserialization)
    /**********************************************************
     */

    @Override
    public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> config, 
            AnnotatedMember property, JavaType baseType)
    {
        int PROBE_START_LINE_131 = 131;
		MapperConfig<?> p_config_2229_line_131 = config;
		AnnotationIntrospector std_subtype_resolver_1_expr1_line_131 = p_config_2229_line_131
				.getAnnotationIntrospector();
		int PROBE_END_LINE_131 = 131;
		final AnnotationIntrospector ai = std_subtype_resolver_1_expr1_line_131;
        int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.JavaType p_base_type_2231_line_132 = baseType;
		Class<?> std_subtype_resolver_1_expr2_line_132 = p_base_type_2231_line_132.getRawClass();
		int PROBE_END_LINE_132 = 132;
		Class<?> rawBase = std_subtype_resolver_1_expr2_line_132;

        // Need to keep track of classes that have been handled already 
        Set<Class<?>> typesHandled = new HashSet<Class<?>>();
        Map<String,NamedType> byName = new LinkedHashMap<String,NamedType>();

        int PROBE_START_LINE_139 = 139;
		Class<?> v_raw_base_2233_line_139 = rawBase;
		int PROBE_END_LINE_139 = 139;
		// start with lowest-precedence, which is from type hierarchy
        NamedType rootType = new NamedType(v_raw_base_2233_line_139, null);
        int PROBE_START_LINE_140 = 141;
		MapperConfig<?> p_config_2229_line_140 = config;
		AnnotatedClass std_subtype_resolver_1_expr6_line_140 = AnnotatedClassResolver
				.resolveWithoutSuperTypes(p_config_2229_line_140, rawBase);
		int PROBE_END_LINE_140 = 141;
		AnnotatedClass ac = std_subtype_resolver_1_expr6_line_140;
        int PROBE_START_LINE_142 = 142;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_2237_line_142 = ac;
		com.fasterxml.jackson.databind.jsontype.NamedType v_root_type_2236_line_142 = rootType;
		MapperConfig<?> p_config_2229_line_142 = config;
		Set<Class<?>> v_types_handled_2234_line_142 = typesHandled;
		Map<String, com.fasterxml.jackson.databind.jsontype.NamedType> v_by_name_2235_line_142 = byName;
		int PROBE_END_LINE_142 = 142;
		_collectAndResolveByTypeId(v_ac_2237_line_142, v_root_type_2236_line_142, p_config_2229_line_142, v_types_handled_2234_line_142, v_by_name_2235_line_142);
        
        int PROBE_START_LINE_145 = 145;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_2232_line_145 = ai;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_property_2230_line_145 = property;
		Collection<NamedType> std_subtype_resolver_1_expr8_line_145 = v_ai_2232_line_145
				.findSubtypes(p_property_2230_line_145);
		int PROBE_END_LINE_145 = 145;
			// then with definitions from property
            Collection<NamedType> st = std_subtype_resolver_1_expr8_line_145;
            if (st != null) {
                for (NamedType nt : st) {
                    ac = AnnotatedClassResolver.resolveWithoutSuperTypes(config, nt.getType());
                    _collectAndResolveByTypeId(ac, nt, config, typesHandled, byName);
                }            
        }
        // and finally explicit type registrations (highest precedence)
        if (_registeredSubtypes != null) {
            for (NamedType subtype : _registeredSubtypes) {
                // is it a subtype of root type?
                if (rawBase.isAssignableFrom(subtype.getType())) { // yes
                    AnnotatedClass curr = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                            subtype.getType());
                    _collectAndResolveByTypeId(curr, subtype, config, typesHandled, byName);
                }
            }
        }
        return _combineNamedAndUnnamed(rawBase, typesHandled, byName);
    }

    @Override
    public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> config,
            AnnotatedClass baseType)
    {
        final Class<?> rawBase = baseType.getRawType();
        Set<Class<?>> typesHandled = new HashSet<Class<?>>();
        Map<String,NamedType> byName = new LinkedHashMap<String,NamedType>();

        NamedType rootType = new NamedType(rawBase, null);
        _collectAndResolveByTypeId(baseType, rootType, config, typesHandled, byName);
        
        if (_registeredSubtypes != null) {
            for (NamedType subtype : _registeredSubtypes) {
                // is it a subtype of root type?
                if (rawBase.isAssignableFrom(subtype.getType())) { // yes
                    AnnotatedClass curr = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                            subtype.getType());
                    _collectAndResolveByTypeId(curr, subtype, config, typesHandled, byName);
                }
            }
        }
        return _combineNamedAndUnnamed(rawBase, typesHandled, byName);
    }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    /**
     * Method called to find subtypes for a specific type (class), using
     * type (class) as the unique key (in case of conflicts).
     */
    protected void _collectAndResolve(AnnotatedClass annotatedType, NamedType namedType,
            MapperConfig<?> config, AnnotationIntrospector ai,
            HashMap<NamedType, NamedType> collectedSubtypes)
    {
        if (!namedType.hasName()) {
            String name = ai.findTypeName(annotatedType);
            if (name != null) {
                namedType = new NamedType(namedType.getType(), name);
            }
        }

        // First things first: is base type itself included?
        if (collectedSubtypes.containsKey(namedType)) {
            // if so, no recursion; however, may need to update name?
            if (namedType.hasName()) {
                NamedType prev = collectedSubtypes.get(namedType);
                if (!prev.hasName()) {
                    collectedSubtypes.put(namedType, namedType);
                }
            }
            return;
        }
        // if it wasn't, add and check subtypes recursively
        collectedSubtypes.put(namedType, namedType);
        Collection<NamedType> st = ai.findSubtypes(annotatedType);
        if (st != null && !st.isEmpty()) {
            for (NamedType subtype : st) {
                AnnotatedClass subtypeClass = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                        subtype.getType());
                _collectAndResolve(subtypeClass, subtype, config, ai, collectedSubtypes);
            }
        }
    }

    /**
     * Method called to find subtypes for a specific type (class), using
     * type id as the unique key (in case of conflicts).
     */
    protected void _collectAndResolveByTypeId(AnnotatedClass annotatedType, NamedType namedType,
            MapperConfig<?> config,
            Set<Class<?>> typesHandled, Map<String,NamedType> byName)
    {
        int PROBE_START_LINE_242 = 242;
		MapperConfig<?> p_config_2248_line_242 = config;
		AnnotationIntrospector std_subtype_resolver_1_expr9_line_242 = p_config_2248_line_242
				.getAnnotationIntrospector();
		int PROBE_END_LINE_242 = 242;
		final AnnotationIntrospector ai = std_subtype_resolver_1_expr9_line_242;
        int PROBE_START_LINE_243 = 248;
		com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_2247_line_243 = namedType;
		boolean std_subtype_resolver_1_expr11_line_243 = p_named_type_2247_line_243.hasName();
		boolean std_subtype_resolver_1_expr10_line_243 = !std_subtype_resolver_1_expr11_line_243;
		int PROBE_END_LINE_243 = 248;
		if (std_subtype_resolver_1_expr10_line_243) {
            int PROBE_START_LINE_244 = 244;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_2251_line_244 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass p_annotated_type_2246_line_244 = annotatedType;
			String std_subtype_resolver_1_expr12_line_244 = v_ai_2251_line_244
					.findTypeName(p_annotated_type_2246_line_244);
			int PROBE_END_LINE_244 = 244;
			String name = std_subtype_resolver_1_expr12_line_244;
            int PROBE_START_LINE_245 = 247;
			String v_name_2252_line_245 = name;
			boolean std_subtype_resolver_1_expr13_line_245 = v_name_2252_line_245 != null;
			int PROBE_END_LINE_245 = 247;
			if (std_subtype_resolver_1_expr13_line_245) {
                int PROBE_START_LINE_246 = 246;
				com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_2247_line_246 = namedType;
				Class<?> std_subtype_resolver_1_expr16_line_246 = p_named_type_2247_line_246.getType();
				String v_name_2252_line_246 = name;
				int PROBE_END_LINE_246 = 246;
				namedType = new NamedType(std_subtype_resolver_1_expr16_line_246, v_name_2252_line_246);
            }
        }
        int PROBE_START_LINE_249 = 251;
		com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_2247_line_249 = namedType;
		boolean std_subtype_resolver_1_expr17_line_249 = p_named_type_2247_line_249.hasName();
		int PROBE_END_LINE_249 = 251;
		if (std_subtype_resolver_1_expr17_line_249) {
            int PROBE_START_LINE_250 = 250;
			Map<String, com.fasterxml.jackson.databind.jsontype.NamedType> p_by_name_2250_line_250 = byName;
			com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_2247_line_250 = namedType;
			String std_subtype_resolver_1_expr19_line_250 = p_named_type_2247_line_250.getName();
			com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_2247_line_250_v1 = namedType;
			int PROBE_END_LINE_250 = 250;
			p_by_name_2250_line_250.put(std_subtype_resolver_1_expr19_line_250, p_named_type_2247_line_250_v1);
        }

        int PROBE_START_LINE_254 = 263;
		Set<Class<?>> p_types_handled_2249_line_254 = typesHandled;
		com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_2247_line_254 = namedType;
		Class<?> std_subtype_resolver_1_expr21_line_254 = p_named_type_2247_line_254.getType();
		boolean std_subtype_resolver_1_expr20_line_254 = p_types_handled_2249_line_254
				.add(std_subtype_resolver_1_expr21_line_254);
		int PROBE_END_LINE_254 = 263;
		// only check subtypes if this type hadn't yet been handled
        if (std_subtype_resolver_1_expr20_line_254) {
            int PROBE_START_LINE_255 = 255;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_2251_line_255 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass p_annotated_type_2246_line_255 = annotatedType;
			Collection<NamedType> std_subtype_resolver_1_expr22_line_255 = v_ai_2251_line_255
					.findSubtypes(p_annotated_type_2246_line_255);
			int PROBE_END_LINE_255 = 255;
			Collection<NamedType> st = std_subtype_resolver_1_expr22_line_255;
            int PROBE_START_LINE_256 = 262;
			Collection<com.fasterxml.jackson.databind.jsontype.NamedType> v_st_2253_line_256 = st;
			boolean std_subtype_resolver_1_expr24_line_256 = v_st_2253_line_256 != null;
			boolean std_subtype_resolver_1_expr25_line_256 = true;
			if (std_subtype_resolver_1_expr24_line_256) {
				Collection<com.fasterxml.jackson.databind.jsontype.NamedType> v_st_2253_line_256_v1 = st;
				boolean std_subtype_resolver_1_expr26_line_256 = v_st_2253_line_256_v1.isEmpty();
				std_subtype_resolver_1_expr25_line_256 = !std_subtype_resolver_1_expr26_line_256;
			}
			boolean std_subtype_resolver_1_expr23_line_256 = std_subtype_resolver_1_expr24_line_256
					&& std_subtype_resolver_1_expr25_line_256;
			int PROBE_END_LINE_256 = 262;
			if (std_subtype_resolver_1_expr23_line_256) {
                int PROBE_START_LINE_257 = 261;
				Collection<com.fasterxml.jackson.databind.jsontype.NamedType> v_st_2253_line_257 = st;
				int PROBE_END_LINE_257 = 261;
				for (NamedType subtype : v_st_2253_line_257) {
                    int PROBE_START_LINE_258 = 259;
					MapperConfig<?> p_config_2248_line_258 = config;
					AnnotatedClass std_subtype_resolver_1_expr27_line_258 = AnnotatedClassResolver
							.resolveWithoutSuperTypes(p_config_2248_line_258, subtype.getType());
					int PROBE_END_LINE_258 = 259;
					AnnotatedClass subtypeClass = std_subtype_resolver_1_expr27_line_258;
                    int PROBE_START_LINE_260 = 260;
					com.fasterxml.jackson.databind.introspect.AnnotatedClass v_subtype_class_2255_line_260 = subtypeClass;
					com.fasterxml.jackson.databind.jsontype.NamedType v_subtype_2254_line_260 = subtype;
					MapperConfig<?> p_config_2248_line_260 = config;
					Set<Class<?>> p_types_handled_2249_line_260 = typesHandled;
					Map<String, com.fasterxml.jackson.databind.jsontype.NamedType> p_by_name_2250_line_260 = byName;
					int PROBE_END_LINE_260 = 260;
					_collectAndResolveByTypeId(v_subtype_class_2255_line_260, v_subtype_2254_line_260, p_config_2248_line_260, p_types_handled_2249_line_260, p_by_name_2250_line_260);
                }
            }
        }
    }

    /**
     * Helper method used for merging explicitly named types and handled classes
     * without explicit names.
     */
    protected Collection<NamedType> _combineNamedAndUnnamed(Class<?> rawBase,
            Set<Class<?>> typesHandled, Map<String,NamedType> byName)
    {
        ArrayList<NamedType> result = new ArrayList<NamedType>(byName.values());

        // Ok, so... we will figure out which classes have no explicitly assigned name,
        // by removing Classes from Set. And for remaining classes, add an anonymous
        // marker
        for (NamedType t : byName.values()) {
            typesHandled.remove(t.getType());
        }
        for (Class<?> cls : typesHandled) {
            // 27-Apr-2017, tatu: [databind#1616] Do not add base type itself unless
            //     it is concrete (or has explicit type name)
            if ((cls == rawBase) && Modifier.isAbstract(cls.getModifiers())) {
                continue;
            }
            result.add(new NamedType(cls));
        }
        return result;
    }
}
