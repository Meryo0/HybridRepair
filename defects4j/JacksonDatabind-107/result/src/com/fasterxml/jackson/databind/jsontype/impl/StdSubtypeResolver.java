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
import java.util.Set;
import java.util.LinkedHashSet;
import java.util.ArrayList;

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

    @Override // since 2.9
    public void registerSubtypes(Collection<Class<?>> subtypes) {
        int len = subtypes.size();
        NamedType[] types = new NamedType[len];
        int i = 0;
        for (Class<?> subtype : subtypes) {
            types[i++] = new NamedType(subtype);
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
        if (property != null) {
            Collection<NamedType> st = ai.findSubtypes(property);
            if (st != null) {
                for (NamedType nt : st) {
                    AnnotatedClass ac = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                            nt.getType());
                    _collectAndResolve(ac, nt, config, ai, collected);
                }            
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
        final AnnotationIntrospector ai = config.getAnnotationIntrospector();
        Class<?> rawBase = baseType.getRawClass();

        // Need to keep track of classes that have been handled already 
        Set<Class<?>> typesHandled = new HashSet<Class<?>>();
        Map<String,NamedType> byName = new LinkedHashMap<String,NamedType>();

        // start with lowest-precedence, which is from type hierarchy
        NamedType rootType = new NamedType(rawBase, null);
        AnnotatedClass ac = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                rawBase);
        _collectAndResolveByTypeId(ac, rootType, config, typesHandled, byName);
        
        // then with definitions from property
        if (property != null) {
            Collection<NamedType> st = ai.findSubtypes(property);
            if (st != null) {
                for (NamedType nt : st) {
                    ac = AnnotatedClassResolver.resolveWithoutSuperTypes(config, nt.getType());
                    _collectAndResolveByTypeId(ac, nt, config, typesHandled, byName);
                }            
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
        int PROBE_START_LINE_185 = 185;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_base_type_4613_line_185 = baseType;
		Class<?> std_subtype_resolver_1_expr1_line_185 = p_base_type_4613_line_185.getRawType();
		int PROBE_END_LINE_185 = 185;
		final Class<?> rawBase = std_subtype_resolver_1_expr1_line_185;
        Set<Class<?>> typesHandled = new HashSet<Class<?>>();
        Map<String,NamedType> byName = new LinkedHashMap<String,NamedType>();

        int PROBE_START_LINE_189 = 189;
		Class<?> v_raw_base_4614_line_189 = rawBase;
		int PROBE_END_LINE_189 = 189;
		NamedType rootType = new NamedType(v_raw_base_4614_line_189, null);
        int PROBE_START_LINE_190 = 190;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_base_type_4613_line_190 = baseType;
		com.fasterxml.jackson.databind.jsontype.NamedType v_root_type_4617_line_190 = rootType;
		MapperConfig<?> p_config_4612_line_190 = config;
		Set<Class<?>> v_types_handled_4615_line_190 = typesHandled;
		Map<String, com.fasterxml.jackson.databind.jsontype.NamedType> v_by_name_4616_line_190 = byName;
		int PROBE_END_LINE_190 = 190;
		_collectAndResolveByTypeId(p_base_type_4613_line_190, v_root_type_4617_line_190, p_config_4612_line_190, v_types_handled_4615_line_190, v_by_name_4616_line_190);
        
        int PROBE_START_LINE_192 = 201;
		LinkedHashSet<com.fasterxml.jackson.databind.jsontype.NamedType> f__registered_subtypes_4618_line_192 = _registeredSubtypes;
		boolean std_subtype_resolver_1_expr6_line_192 = f__registered_subtypes_4618_line_192 != null;
		int PROBE_END_LINE_192 = 201;
		if (std_subtype_resolver_1_expr6_line_192) {
            for (NamedType subtype : _registeredSubtypes) {
                // is it a subtype of root type?
                if (rawBase.isAssignableFrom(subtype.getType())) { // yes
                    AnnotatedClass curr = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                            subtype.getType());
                    _collectAndResolveByTypeId(curr, subtype, config, typesHandled, byName);
                }
            }
        }
        int PROBE_START_LINE_202 = 202;
		Class<?> v_raw_base_4614_line_202 = rawBase;
		Set<Class<?>> v_types_handled_4615_line_202 = typesHandled;
		Map<String, com.fasterxml.jackson.databind.jsontype.NamedType> v_by_name_4616_line_202 = byName;
		Collection<com.fasterxml.jackson.databind.jsontype.NamedType> std_subtype_resolver_1_expr7_line_202 = _combineNamedAndUnnamed(
				v_raw_base_4614_line_202, v_types_handled_4615_line_202, v_by_name_4616_line_202);
		int PROBE_END_LINE_202 = 202;
		return std_subtype_resolver_1_expr7_line_202;
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
        int PROBE_START_LINE_257 = 257;
		MapperConfig<?> p_config_4626_line_257 = config;
		AnnotationIntrospector std_subtype_resolver_1_expr8_line_257 = p_config_4626_line_257
				.getAnnotationIntrospector();
		int PROBE_END_LINE_257 = 257;
		final AnnotationIntrospector ai = std_subtype_resolver_1_expr8_line_257;
        int PROBE_START_LINE_258 = 263;
		com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_4625_line_258 = namedType;
		boolean std_subtype_resolver_1_expr10_line_258 = p_named_type_4625_line_258.hasName();
		boolean std_subtype_resolver_1_expr9_line_258 = !std_subtype_resolver_1_expr10_line_258;
		int PROBE_END_LINE_258 = 263;
		if (std_subtype_resolver_1_expr9_line_258) {
            int PROBE_START_LINE_259 = 259;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4629_line_259 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass p_annotated_type_4624_line_259 = annotatedType;
			String std_subtype_resolver_1_expr11_line_259 = v_ai_4629_line_259
					.findTypeName(p_annotated_type_4624_line_259);
			int PROBE_END_LINE_259 = 259;
			String name = std_subtype_resolver_1_expr11_line_259;
            int PROBE_START_LINE_260 = 262;
			String v_name_4630_line_260 = name;
			boolean std_subtype_resolver_1_expr12_line_260 = v_name_4630_line_260 != null;
			int PROBE_END_LINE_260 = 262;
			if (std_subtype_resolver_1_expr12_line_260) {
                namedType = new NamedType(namedType.getType(), name);
            }
        }
        int PROBE_START_LINE_264 = 266;
		com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_4625_line_264 = namedType;
		boolean std_subtype_resolver_1_expr13_line_264 = p_named_type_4625_line_264.hasName();
		int PROBE_END_LINE_264 = 266;
		if (std_subtype_resolver_1_expr13_line_264) {
            byName.put(namedType.getName(), namedType);
        }

        int PROBE_START_LINE_269 = 278;
		Set<Class<?>> p_types_handled_4627_line_269 = typesHandled;
		com.fasterxml.jackson.databind.jsontype.NamedType p_named_type_4625_line_269 = namedType;
		Class<?> std_subtype_resolver_1_expr15_line_269 = p_named_type_4625_line_269.getType();
		boolean std_subtype_resolver_1_expr14_line_269 = p_types_handled_4627_line_269
				.add(std_subtype_resolver_1_expr15_line_269);
		int PROBE_END_LINE_269 = 278;
		// only check subtypes if this type hadn't yet been handled
        if (std_subtype_resolver_1_expr14_line_269) {
            int PROBE_START_LINE_270 = 270;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4629_line_270 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass p_annotated_type_4624_line_270 = annotatedType;
			Collection<NamedType> std_subtype_resolver_1_expr16_line_270 = v_ai_4629_line_270
					.findSubtypes(p_annotated_type_4624_line_270);
			int PROBE_END_LINE_270 = 270;
			Collection<NamedType> st = std_subtype_resolver_1_expr16_line_270;
            int PROBE_START_LINE_271 = 277;
			Collection<com.fasterxml.jackson.databind.jsontype.NamedType> v_st_4631_line_271 = st;
			boolean std_subtype_resolver_1_expr18_line_271 = v_st_4631_line_271 != null;
			boolean std_subtype_resolver_1_expr19_line_271 = true;
			if (std_subtype_resolver_1_expr18_line_271) {
				Collection<com.fasterxml.jackson.databind.jsontype.NamedType> v_st_4631_line_271_v1 = st;
				boolean std_subtype_resolver_1_expr20_line_271 = v_st_4631_line_271_v1.isEmpty();
				std_subtype_resolver_1_expr19_line_271 = !std_subtype_resolver_1_expr20_line_271;
			}
			boolean std_subtype_resolver_1_expr17_line_271 = std_subtype_resolver_1_expr18_line_271
					&& std_subtype_resolver_1_expr19_line_271;
			int PROBE_END_LINE_271 = 277;
			if (std_subtype_resolver_1_expr17_line_271) {
                for (NamedType subtype : st) {
                    AnnotatedClass subtypeClass = AnnotatedClassResolver.resolveWithoutSuperTypes(config,
                            subtype.getType());
                    _collectAndResolveByTypeId(subtypeClass, subtype, config, typesHandled, byName);
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
        int PROBE_START_LINE_288 = 288;
		Map<String, com.fasterxml.jackson.databind.jsontype.NamedType> p_by_name_4634_line_288 = byName;
		Collection<com.fasterxml.jackson.databind.jsontype.NamedType> std_subtype_resolver_1_expr22_line_288 = p_by_name_4634_line_288
				.values();
		int PROBE_END_LINE_288 = 288;
		ArrayList<NamedType> result = new ArrayList<NamedType>(std_subtype_resolver_1_expr22_line_288);

        int PROBE_START_LINE_293 = 295;
		Map<String, com.fasterxml.jackson.databind.jsontype.NamedType> p_by_name_4634_line_293 = byName;
		Collection<com.fasterxml.jackson.databind.jsontype.NamedType> std_subtype_resolver_1_expr23_line_293 = p_by_name_4634_line_293
				.values();
		int PROBE_END_LINE_293 = 295;
		// Ok, so... we will figure out which classes have no explicitly assigned name,
        // by removing Classes from Set. And for remaining classes, add an anonymous
        // marker
        for (NamedType t : std_subtype_resolver_1_expr23_line_293) {
            typesHandled.remove(t.getType());
        }
        int PROBE_START_LINE_296 = 303;
		Set<Class<?>> p_types_handled_4633_line_296 = typesHandled;
		int PROBE_END_LINE_296 = 303;
		for (Class<?> cls : p_types_handled_4633_line_296) {
            int PROBE_START_LINE_299 = 301;
			Class<?> v_cls_4637_line_299 = cls;
			Class<?> p_raw_base_4632_line_299 = rawBase;
			boolean std_subtype_resolver_1_expr26_line_299 = v_cls_4637_line_299 == p_raw_base_4632_line_299;
			boolean std_subtype_resolver_1_expr25_line_299 = (std_subtype_resolver_1_expr26_line_299);
			boolean std_subtype_resolver_1_expr27_line_299 = true;
			if (std_subtype_resolver_1_expr25_line_299) {
				Class<?> v_cls_4637_line_299_v1 = cls;
				int std_subtype_resolver_1_expr28_line_299 = v_cls_4637_line_299_v1.getModifiers();
				std_subtype_resolver_1_expr27_line_299 = Modifier.isAbstract(std_subtype_resolver_1_expr28_line_299);
			}
			boolean std_subtype_resolver_1_expr24_line_299 = std_subtype_resolver_1_expr25_line_299
					&& std_subtype_resolver_1_expr27_line_299;
			int PROBE_END_LINE_299 = 301;
			// 27-Apr-2017, tatu: [databind#1616] Do not add base type itself unless
            //     it is concrete (or has explicit type name)
            if (std_subtype_resolver_1_expr24_line_299) {
                continue;
            }
            int PROBE_START_LINE_302 = 302;
			ArrayList<com.fasterxml.jackson.databind.jsontype.NamedType> v_result_4635_line_302 = result;
			Class<?> v_cls_4637_line_302 = cls;
			int PROBE_END_LINE_302 = 302;
			v_result_4635_line_302.add(new NamedType(v_cls_4637_line_302));
        }
        int PROBE_START_LINE_304 = 304;
		ArrayList<com.fasterxml.jackson.databind.jsontype.NamedType> v_result_4635_line_304 = result;
		int PROBE_END_LINE_304 = 304;
		return v_result_4635_line_304;
    }
}
