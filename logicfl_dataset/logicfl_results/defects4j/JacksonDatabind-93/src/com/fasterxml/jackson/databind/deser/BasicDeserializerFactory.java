package com.fasterxml.jackson.databind.deser;

import java.lang.reflect.Method;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicReference;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.deser.impl.CreatorCollector;
import com.fasterxml.jackson.databind.deser.std.*;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.*;
import com.fasterxml.jackson.databind.util.*;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import java.util.Iterator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Collection;
import java.util.HashMap;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.DeserializationConfig;
import java.util.List;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import java.util.Map;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;

/**
 * Abstract factory base class that can provide deserializers for standard
 * JDK classes, including collection classes and simple heuristics for
 * "upcasting" common collection interface types
 * (such as {@link java.util.Collection}).
 *<p>
 * Since all simple deserializers are eagerly instantiated, and there is
 * no additional introspection or customizability of these types,
 * this factory is stateless.
 */
@SuppressWarnings("serial")
public abstract class BasicDeserializerFactory
    extends DeserializerFactory
    implements java.io.Serializable
{
    private final static Class<?> CLASS_OBJECT = Object.class;
    private final static Class<?> CLASS_STRING = String.class;
    private final static Class<?> CLASS_CHAR_BUFFER = CharSequence.class;
    private final static Class<?> CLASS_ITERABLE = Iterable.class;
    private final static Class<?> CLASS_MAP_ENTRY = Map.Entry.class;

    /**
     * We need a placeholder for creator properties that don't have name
     * but are marked with `@JsonWrapped` annotation.
     */
    protected final static PropertyName UNWRAPPED_CREATOR_PARAM_NAME = new PropertyName("@JsonUnwrapped");
    
    /* We do some defaulting for abstract Map classes and
     * interfaces, to avoid having to use exact types or annotations in
     * cases where the most common concrete Maps will do.
     */
    @SuppressWarnings("rawtypes")
    final static HashMap<String, Class<? extends Map>> _mapFallbacks =
        new HashMap<String, Class<? extends Map>>();
    static {
        int PROBE_START_LINE_59 = 59;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1372_line_59 = _mapFallbacks;
		String basic_deserializer_factory_1_expr9_line_59 = Map.class.getName();
		int PROBE_END_LINE_59 = 59;
		f__map_fallbacks_1372_line_59.put(basic_deserializer_factory_1_expr9_line_59, LinkedHashMap.class);
        int PROBE_START_LINE_60 = 60;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1372_line_60 = _mapFallbacks;
		String basic_deserializer_factory_1_expr13_line_60 = ConcurrentMap.class.getName();
		int PROBE_END_LINE_60 = 60;
		f__map_fallbacks_1372_line_60.put(basic_deserializer_factory_1_expr13_line_60, ConcurrentHashMap.class);
        int PROBE_START_LINE_61 = 61;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1372_line_61 = _mapFallbacks;
		String basic_deserializer_factory_1_expr17_line_61 = SortedMap.class.getName();
		int PROBE_END_LINE_61 = 61;
		f__map_fallbacks_1372_line_61.put(basic_deserializer_factory_1_expr17_line_61, TreeMap.class);

        int PROBE_START_LINE_63 = 63;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1372_line_63 = _mapFallbacks;
		String basic_deserializer_factory_1_expr21_line_63 = java.util.NavigableMap.class.getName();
		int PROBE_END_LINE_63 = 63;
		f__map_fallbacks_1372_line_63.put(basic_deserializer_factory_1_expr21_line_63, TreeMap.class);
        int PROBE_START_LINE_64 = 65;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1372_line_64 = _mapFallbacks;
		String basic_deserializer_factory_1_expr25_line_64 = java.util.concurrent.ConcurrentNavigableMap.class
				.getName();
		int PROBE_END_LINE_64 = 65;
		f__map_fallbacks_1372_line_64.put(basic_deserializer_factory_1_expr25_line_64,
                java.util.concurrent.ConcurrentSkipListMap.class);
    }

    /* We do some defaulting for abstract Collection classes and
     * interfaces, to avoid having to use exact types or annotations in
     * cases where the most common concrete Collection will do.
     */
    @SuppressWarnings("rawtypes")
    final static HashMap<String, Class<? extends Collection>> _collectionFallbacks =
        new HashMap<String, Class<? extends Collection>>();
    static {
        int PROBE_START_LINE_76 = 76;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1373_line_76 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr30_line_76 = Collection.class.getName();
		int PROBE_END_LINE_76 = 76;
		f__collection_fallbacks_1373_line_76.put(basic_deserializer_factory_1_expr30_line_76, ArrayList.class);
        int PROBE_START_LINE_77 = 77;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1373_line_77 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr34_line_77 = List.class.getName();
		int PROBE_END_LINE_77 = 77;
		f__collection_fallbacks_1373_line_77.put(basic_deserializer_factory_1_expr34_line_77, ArrayList.class);
        int PROBE_START_LINE_78 = 78;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1373_line_78 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr38_line_78 = Set.class.getName();
		int PROBE_END_LINE_78 = 78;
		f__collection_fallbacks_1373_line_78.put(basic_deserializer_factory_1_expr38_line_78, HashSet.class);
        int PROBE_START_LINE_79 = 79;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1373_line_79 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr42_line_79 = SortedSet.class.getName();
		int PROBE_END_LINE_79 = 79;
		f__collection_fallbacks_1373_line_79.put(basic_deserializer_factory_1_expr42_line_79, TreeSet.class);
        int PROBE_START_LINE_80 = 80;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1373_line_80 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr46_line_80 = Queue.class.getName();
		int PROBE_END_LINE_80 = 80;
		f__collection_fallbacks_1373_line_80.put(basic_deserializer_factory_1_expr46_line_80, LinkedList.class);

        int PROBE_START_LINE_87 = 87;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1373_line_87 = _collectionFallbacks;
		int PROBE_END_LINE_87 = 87;
		// then JDK 1.6 types:
        /* 17-May-2013, tatu: [databind#216] Should be fine to use straight Class references EXCEPT
         *   that some god-forsaken platforms (... looking at you, Android) do not
         *   include these. So, use "soft" references...
         */
        f__collection_fallbacks_1373_line_87.put("java.util.Deque", LinkedList.class);
        int PROBE_START_LINE_88 = 88;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1373_line_88 = _collectionFallbacks;
		int PROBE_END_LINE_88 = 88;
		f__collection_fallbacks_1373_line_88.put("java.util.NavigableSet", TreeSet.class);
    }

    /*
    /**********************************************************
    /* Config
    /**********************************************************
     */
    
    /**
     * Configuration settings for this factory; immutable instance (just like this
     * factory), new version created via copy-constructor (fluent-style)
     */
    protected final DeserializerFactoryConfig _factoryConfig;

    /*
    /**********************************************************
    /* Life cycle
    /**********************************************************
     */

    protected BasicDeserializerFactory(DeserializerFactoryConfig config) {
        int PROBE_START_LINE_110 = 110;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig p_config_1374_line_110 = config;
		int PROBE_END_LINE_110 = 110;
		_factoryConfig = p_config_1374_line_110;
    }
    
    /**
     * Method for getting current {@link DeserializerFactoryConfig}.
      *<p>
     * Note that since instances are immutable, you can NOT change settings
     * by accessing an instance and calling methods: this will simply create
     * new instance of config object.
     */
    public DeserializerFactoryConfig getFactoryConfig() {
        return _factoryConfig;
    }

    protected abstract DeserializerFactory withConfig(DeserializerFactoryConfig config);
    
    /*
    /********************************************************
    /* Configuration handling: fluent factories
    /********************************************************
     */

    /**
     * Convenience method for creating a new factory instance with additional deserializer
     * provider.
     */
    @Override
    public final DeserializerFactory withAdditionalDeserializers(Deserializers additional) {
        return withConfig(_factoryConfig.withAdditionalDeserializers(additional));
    }

    /**
     * Convenience method for creating a new factory instance with additional
     * {@link KeyDeserializers}.
     */
    @Override
    public final DeserializerFactory withAdditionalKeyDeserializers(KeyDeserializers additional) {
        return withConfig(_factoryConfig.withAdditionalKeyDeserializers(additional));
    }
    
    /**
     * Convenience method for creating a new factory instance with additional
     * {@link BeanDeserializerModifier}.
     */
    @Override
    public final DeserializerFactory withDeserializerModifier(BeanDeserializerModifier modifier) {
        return withConfig(_factoryConfig.withDeserializerModifier(modifier));
    }

    /**
     * Convenience method for creating a new factory instance with additional
     * {@link AbstractTypeResolver}.
     */
    @Override
    public final DeserializerFactory withAbstractTypeResolver(AbstractTypeResolver resolver) {
        return withConfig(_factoryConfig.withAbstractTypeResolver(resolver));
    }

    /**
     * Convenience method for creating a new factory instance with additional
     * {@link ValueInstantiators}.
     */
    @Override
    public final DeserializerFactory withValueInstantiators(ValueInstantiators instantiators) {
        return withConfig(_factoryConfig.withValueInstantiators(instantiators));
    }

    /*
    /**********************************************************
    /* DeserializerFactory impl (partial): type mappings
    /**********************************************************
     */

    @Override
    public JavaType mapAbstractType(DeserializationConfig config, JavaType type) throws JsonMappingException
    {
        // first, general mappings
        while (true) {
            int PROBE_START_LINE_188 = 188;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1382_line_188 = config;
			com.fasterxml.jackson.databind.JavaType p_type_1383_line_188 = type;
			JavaType basic_deserializer_factory_1_expr54_line_188 = _mapAbstractType2(p_config_1382_line_188,
					p_type_1383_line_188);
			int PROBE_END_LINE_188 = 188;
			JavaType next = basic_deserializer_factory_1_expr54_line_188;
            int PROBE_START_LINE_189 = 191;
			com.fasterxml.jackson.databind.JavaType v_next_1384_line_189 = next;
			boolean basic_deserializer_factory_1_expr55_line_189 = v_next_1384_line_189 == null;
			int PROBE_END_LINE_189 = 191;
			if (basic_deserializer_factory_1_expr55_line_189) {
                int PROBE_START_LINE_190 = 190;
				com.fasterxml.jackson.databind.JavaType p_type_1383_line_190 = type;
				int PROBE_END_LINE_190 = 190;
				return p_type_1383_line_190;
            }
            // Should not have to worry about cycles; but better verify since they will invariably occur... :-)
            // (also: guard against invalid resolution to a non-related type)
            Class<?> prevCls = type.getRawClass();
            Class<?> nextCls = next.getRawClass();
            if ((prevCls == nextCls) || !prevCls.isAssignableFrom(nextCls)) {
                throw new IllegalArgumentException("Invalid abstract type resolution from "+type+" to "+next+": latter is not a subtype of former");
            }
            type = next;
        }
    }

    /**
     * Method that will find abstract type mapping for specified type, doing a single
     * lookup through registered abstract type resolvers; will not do recursive lookups.
     */
    private JavaType _mapAbstractType2(DeserializationConfig config, JavaType type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_210 = 210;
		com.fasterxml.jackson.databind.JavaType p_type_1386_line_210 = type;
		Class<?> basic_deserializer_factory_1_expr56_line_210 = p_type_1386_line_210.getRawClass();
		int PROBE_END_LINE_210 = 210;
		Class<?> currClass = basic_deserializer_factory_1_expr56_line_210;
        int PROBE_START_LINE_211 = 218;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_211 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr57_line_211 = f__factory_config_1375_line_211
				.hasAbstractTypeResolvers();
		int PROBE_END_LINE_211 = 218;
		if (basic_deserializer_factory_1_expr57_line_211) {
            for (AbstractTypeResolver resolver : _factoryConfig.abstractTypeResolvers()) {
                JavaType concrete = resolver.findTypeMapping(config, type);
                if (concrete != null && concrete.getRawClass() != currClass) {
                    return concrete;
                }
            }
        }
        return null;
    }
    
    /*
    /**********************************************************
    /* JsonDeserializerFactory impl (partial): ValueInstantiators
    /**********************************************************
     */

    /**
     * Value instantiator is created both based on creator annotations,
     * and on optional externally provided instantiators (registered through
     * module interface).
     */
    @Override
    public ValueInstantiator findValueInstantiator(DeserializationContext ctxt,
            BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_238 = 238;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1388_line_238 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr58_line_238 = p_ctxt_1388_line_238.getConfig();
		int PROBE_END_LINE_238 = 238;
		final DeserializationConfig config = basic_deserializer_factory_1_expr58_line_238;

        ValueInstantiator instantiator = null;
        int PROBE_START_LINE_242 = 242;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1389_line_242 = beanDesc;
		AnnotatedClass basic_deserializer_factory_1_expr59_line_242 = p_bean_desc_1389_line_242.getClassInfo();
		int PROBE_END_LINE_242 = 242;
		// [JACKSON-633] Check @JsonValueInstantiator before anything else
        AnnotatedClass ac = basic_deserializer_factory_1_expr59_line_242;
        int PROBE_START_LINE_243 = 243;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1388_line_243 = ctxt;
		com.fasterxml.jackson.databind.AnnotationIntrospector basic_deserializer_factory_1_expr61_line_243 = p_ctxt_1388_line_243
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1392_line_243 = ac;
		Object basic_deserializer_factory_1_expr60_line_243 = basic_deserializer_factory_1_expr61_line_243
				.findValueInstantiator(v_ac_1392_line_243);
		int PROBE_END_LINE_243 = 243;
		Object instDef = basic_deserializer_factory_1_expr60_line_243;
        int PROBE_START_LINE_244 = 246;
		Object v_inst_def_1393_line_244 = instDef;
		boolean basic_deserializer_factory_1_expr62_line_244 = v_inst_def_1393_line_244 != null;
		int PROBE_END_LINE_244 = 246;
		if (basic_deserializer_factory_1_expr62_line_244) {
            instantiator = _valueInstantiatorInstance(config, ac, instDef);
        }
        int PROBE_START_LINE_247 = 255;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1391_line_247 = instantiator;
		boolean basic_deserializer_factory_1_expr63_line_247 = v_instantiator_1391_line_247 == null;
		int PROBE_END_LINE_247 = 255;
		if (basic_deserializer_factory_1_expr63_line_247) {
            int PROBE_START_LINE_251 = 251;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_1390_line_251 = config;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1389_line_251 = beanDesc;
			com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr65_line_251 = _findStdValueInstantiator(
					v_config_1390_line_251, p_bean_desc_1389_line_251);
			int PROBE_END_LINE_251 = 251;
			/* Second: see if some of standard Jackson/JDK types might provide value
             * instantiators.
             */
            instantiator = basic_deserializer_factory_1_expr65_line_251;
            int PROBE_START_LINE_252 = 254;
			com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1391_line_252 = instantiator;
			boolean basic_deserializer_factory_1_expr66_line_252 = v_instantiator_1391_line_252 == null;
			int PROBE_END_LINE_252 = 254;
			if (basic_deserializer_factory_1_expr66_line_252) {
                int PROBE_START_LINE_253 = 253;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1388_line_253 = ctxt;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1389_line_253 = beanDesc;
				com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr68_line_253 = _constructDefaultValueInstantiator(
						p_ctxt_1388_line_253, p_bean_desc_1389_line_253);
				int PROBE_END_LINE_253 = 253;
				instantiator = basic_deserializer_factory_1_expr68_line_253;
            }
        }
        
        int PROBE_START_LINE_258 = 268;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_258 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr69_line_258 = f__factory_config_1375_line_258.hasValueInstantiators();
		int PROBE_END_LINE_258 = 268;
		// finally: anyone want to modify ValueInstantiator?
        if (basic_deserializer_factory_1_expr69_line_258) {
            for (ValueInstantiators insts : _factoryConfig.valueInstantiators()) {
                instantiator = insts.findValueInstantiator(config, beanDesc, instantiator);
                // let's do sanity check; easier to spot buggy handlers
                if (instantiator == null) {
		    ctxt.reportMappingException(
						"Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator",
						insts.getClass().getName());
                }
            }
        }

        int PROBE_START_LINE_271 = 275;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1391_line_271 = instantiator;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter basic_deserializer_factory_1_expr71_line_271 = v_instantiator_1391_line_271
				.getIncompleteParameter();
		boolean basic_deserializer_factory_1_expr70_line_271 = basic_deserializer_factory_1_expr71_line_271 != null;
		int PROBE_END_LINE_271 = 275;
		// Sanity check: does the chosen instantatior have incomplete creators?
        if (basic_deserializer_factory_1_expr70_line_271) {
            final AnnotatedParameter nonAnnotatedParam = instantiator.getIncompleteParameter();
            final AnnotatedWithParams ctor = nonAnnotatedParam.getOwner();
            throw new IllegalArgumentException("Argument #"+nonAnnotatedParam.getIndex()+" of constructor "+ctor+" has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
        }

        int PROBE_START_LINE_277 = 277;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1391_line_277 = instantiator;
		int PROBE_END_LINE_277 = 277;
		return v_instantiator_1391_line_277;
    }

    private ValueInstantiator _findStdValueInstantiator(DeserializationConfig config,
            BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_284 = 286;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1395_line_284 = beanDesc;
		Class<?> basic_deserializer_factory_1_expr73_line_284 = p_bean_desc_1395_line_284.getBeanClass();
		boolean basic_deserializer_factory_1_expr72_line_284 = basic_deserializer_factory_1_expr73_line_284 == JsonLocation.class;
		int PROBE_END_LINE_284 = 286;
		if (basic_deserializer_factory_1_expr72_line_284) {
            return new JsonLocationInstantiator();
        }
        return null;
    }

    /**
     * Method that will construct standard default {@link ValueInstantiator}
     * using annotations (like @JsonCreator) and visibility rules
     */
    protected ValueInstantiator _constructDefaultValueInstantiator(DeserializationContext ctxt,
            BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_298 = 298;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1397_line_298 = beanDesc;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1396_line_298 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr76_line_298 = p_ctxt_1396_line_298
				.getConfig();
		int PROBE_END_LINE_298 = 298;
		CreatorCollector creators = new CreatorCollector(p_bean_desc_1397_line_298, basic_deserializer_factory_1_expr76_line_298);
        int PROBE_START_LINE_299 = 299;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1396_line_299 = ctxt;
		AnnotationIntrospector basic_deserializer_factory_1_expr77_line_299 = p_ctxt_1396_line_299
				.getAnnotationIntrospector();
		int PROBE_END_LINE_299 = 299;
		AnnotationIntrospector intr = basic_deserializer_factory_1_expr77_line_299;
        
        int PROBE_START_LINE_302 = 302;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1396_line_302 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr78_line_302 = p_ctxt_1396_line_302.getConfig();
		int PROBE_END_LINE_302 = 302;
		// need to construct suitable visibility checker:
        final DeserializationConfig config = basic_deserializer_factory_1_expr78_line_302;
        int PROBE_START_LINE_303 = 303;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1400_line_303 = config;
		VisibilityChecker<?> basic_deserializer_factory_1_expr79_line_303 = v_config_1400_line_303
				.getDefaultVisibilityChecker();
		int PROBE_END_LINE_303 = 303;
		VisibilityChecker<?> vchecker = basic_deserializer_factory_1_expr79_line_303;
        int PROBE_START_LINE_304 = 304;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1399_line_304 = intr;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1397_line_304 = beanDesc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass basic_deserializer_factory_1_expr82_line_304 = p_bean_desc_1397_line_304
				.getClassInfo();
		VisibilityChecker<?> v_vchecker_1401_line_304 = vchecker;
		VisibilityChecker<?> basic_deserializer_factory_1_expr81_line_304 = v_intr_1399_line_304
				.findAutoDetectVisibility(basic_deserializer_factory_1_expr82_line_304, v_vchecker_1401_line_304);
		int PROBE_END_LINE_304 = 304;
		vchecker = basic_deserializer_factory_1_expr81_line_304;

        int PROBE_START_LINE_314 = 315;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1396_line_314 = ctxt;
		Map<AnnotatedWithParams, BeanPropertyDefinition[]> basic_deserializer_factory_1_expr83_line_314 = _findCreatorsFromProperties(
				p_ctxt_1396_line_314, beanDesc);
		int PROBE_END_LINE_314 = 315;
		/* 24-Sep-2014, tatu: Tricky part first; need to merge resolved property information
         *  (which has creator parameters sprinkled around) with actual creator
         *  declarations (which are needed to access creator annotation, amongst other things).
         *  Easiest to combine that info first, then pass it to remaining processing.
         */
        /* 15-Mar-2015, tatu: Alas, this won't help with constructors that only have implicit
         *   names. Those will need to be resolved later on.
         */
        Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorDefs = basic_deserializer_factory_1_expr83_line_314;
        int PROBE_START_LINE_318 = 318;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1396_line_318 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1397_line_318 = beanDesc;
		VisibilityChecker<?> v_vchecker_1401_line_318 = vchecker;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1399_line_318 = intr;
		com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1398_line_318 = creators;
		Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_creator_defs_1402_line_318 = creatorDefs;
		int PROBE_END_LINE_318 = 318;
		// Important: first add factory methods; then constructors, so
        // latter can override former!
        _addDeserializerFactoryMethods(p_ctxt_1396_line_318, p_bean_desc_1397_line_318, v_vchecker_1401_line_318, v_intr_1399_line_318, v_creators_1398_line_318, v_creator_defs_1402_line_318);
        int PROBE_START_LINE_320 = 322;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1397_line_320 = beanDesc;
		com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr86_line_320 = p_bean_desc_1397_line_320
				.getType();
		boolean basic_deserializer_factory_1_expr85_line_320 = basic_deserializer_factory_1_expr86_line_320
				.isConcrete();
		int PROBE_END_LINE_320 = 322;
		// constructors only usable on concrete types:
        if (basic_deserializer_factory_1_expr85_line_320) {
            int PROBE_START_LINE_321 = 321;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1396_line_321 = ctxt;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1397_line_321 = beanDesc;
			VisibilityChecker<?> v_vchecker_1401_line_321 = vchecker;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1399_line_321 = intr;
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1398_line_321 = creators;
			Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_creator_defs_1402_line_321 = creatorDefs;
			int PROBE_END_LINE_321 = 321;
			_addDeserializerConstructors(p_ctxt_1396_line_321, p_bean_desc_1397_line_321, v_vchecker_1401_line_321, v_intr_1399_line_321, v_creators_1398_line_321, v_creator_defs_1402_line_321);
        }
        int PROBE_START_LINE_323 = 323;
		com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1398_line_323 = creators;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1400_line_323 = config;
		com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr88_line_323 = v_creators_1398_line_323
				.constructValueInstantiator(v_config_1400_line_323);
		int PROBE_END_LINE_323 = 323;
		return basic_deserializer_factory_1_expr88_line_323;
    }

    protected Map<AnnotatedWithParams,BeanPropertyDefinition[]> _findCreatorsFromProperties(DeserializationContext ctxt,
            BeanDescription beanDesc) throws JsonMappingException
    {
        int PROBE_START_LINE_329 = 329;
		Map<AnnotatedWithParams, BeanPropertyDefinition[]> basic_deserializer_factory_1_expr89_line_329 = Collections
				.emptyMap();
		int PROBE_END_LINE_329 = 329;
		Map<AnnotatedWithParams,BeanPropertyDefinition[]> result = basic_deserializer_factory_1_expr89_line_329;
        int PROBE_START_LINE_330 = 352;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1404_line_330 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_deserializer_factory_1_expr90_line_330 = p_bean_desc_1404_line_330
				.findProperties();
		int PROBE_END_LINE_330 = 352;
		for (BeanPropertyDefinition propDef : basic_deserializer_factory_1_expr90_line_330) {
            int PROBE_START_LINE_331 = 331;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1406_line_331 = propDef;
			Iterator<AnnotatedParameter> basic_deserializer_factory_1_expr91_line_331 = v_prop_def_1406_line_331
					.getConstructorParameters();
			int PROBE_END_LINE_331 = 331;
			Iterator<AnnotatedParameter> it = basic_deserializer_factory_1_expr91_line_331;
            while (true) {
                int PROBE_START_LINE_332 = 332;
				Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> v_it_1407_line_332 = it;
				boolean basic_deserializer_factory_1_expr92_line_332 = v_it_1407_line_332.hasNext();
				if (!(basic_deserializer_factory_1_expr92_line_332)) {
					break;
				}
				int PROBE_END_LINE_332 = 332;
				AnnotatedParameter param = it.next();
                AnnotatedWithParams owner = param.getOwner();
                BeanPropertyDefinition[] defs = result.get(owner);
                final int index = param.getIndex();
                
                if (defs == null) {
                    if (result.isEmpty()) { // since emptyMap is immutable need to create a 'real' one
                        result = new LinkedHashMap<AnnotatedWithParams,BeanPropertyDefinition[]>();
                    }
                    defs = new BeanPropertyDefinition[owner.getParameterCount()];
                    result.put(owner, defs);
                } else {
                    if (defs[index] != null) {
                        throw new IllegalStateException("Conflict: parameter #"+index+" of "+owner
                                +" bound to more than one property; "+defs[index]+" vs "+propDef);
                    }
                }
                defs[index] = propDef;
            }
        }
        int PROBE_START_LINE_353 = 353;
		Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_result_1405_line_353 = result;
		int PROBE_END_LINE_353 = 353;
		return v_result_1405_line_353;
    }
    
    public ValueInstantiator _valueInstantiatorInstance(DeserializationConfig config,
            Annotated annotated, Object instDef)
        throws JsonMappingException
    {
        if (instDef == null) {
            return null;
        }

        ValueInstantiator inst;
        
        if (instDef instanceof ValueInstantiator) {
            return (ValueInstantiator) instDef;
        }
        if (!(instDef instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type "
                    +instDef.getClass().getName()
                    +"; expected type KeyDeserializer or Class<KeyDeserializer> instead");
        }
        Class<?> instClass = (Class<?>)instDef;
        if (ClassUtil.isBogusClass(instClass)) {
            return null;
        }
        if (!ValueInstantiator.class.isAssignableFrom(instClass)) {
            throw new IllegalStateException("AnnotationIntrospector returned Class "+instClass.getName()
                    +"; expected Class<ValueInstantiator>");
        }
        HandlerInstantiator hi = config.getHandlerInstantiator();
        if (hi != null) {
            inst = hi.valueInstantiatorInstance(config, annotated, instClass);
            if (inst != null) {
                return inst;
            }
        }
        return (ValueInstantiator) ClassUtil.createInstance(instClass,
                config.canOverrideAccessModifiers());
    }

    protected void _addDeserializerConstructors
        (DeserializationContext ctxt, BeanDescription beanDesc, VisibilityChecker<?> vchecker,
         AnnotationIntrospector intr, CreatorCollector creators,
         Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorParams)
        throws JsonMappingException
    {
        int PROBE_START_LINE_402 = 402;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1412_line_402 = beanDesc;
		AnnotatedConstructor basic_deserializer_factory_1_expr93_line_402 = p_bean_desc_1412_line_402
				.findDefaultConstructor();
		int PROBE_END_LINE_402 = 402;
		// First things first: the "default constructor" (zero-arg
        // constructor; whether implicit or explicit) is NOT included
        // in list of constructors, so needs to be handled separately.
        AnnotatedConstructor defaultCtor = basic_deserializer_factory_1_expr93_line_402;
        int PROBE_START_LINE_403 = 407;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1417_line_403 = defaultCtor;
		boolean basic_deserializer_factory_1_expr94_line_403 = v_default_ctor_1417_line_403 != null;
		int PROBE_END_LINE_403 = 407;
		if (basic_deserializer_factory_1_expr94_line_403) {
            int PROBE_START_LINE_404 = 406;
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1415_line_404 = creators;
			boolean basic_deserializer_factory_1_expr97_line_404 = p_creators_1415_line_404.hasDefaultCreator();
			boolean basic_deserializer_factory_1_expr96_line_404 = !basic_deserializer_factory_1_expr97_line_404;
			boolean basic_deserializer_factory_1_expr98_line_404 = false;
			if (!basic_deserializer_factory_1_expr96_line_404) {
				com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1414_line_404 = intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1417_line_404 = defaultCtor;
				basic_deserializer_factory_1_expr98_line_404 = p_intr_1414_line_404
						.hasCreatorAnnotation(v_default_ctor_1417_line_404);
			}
			boolean basic_deserializer_factory_1_expr95_line_404 = basic_deserializer_factory_1_expr96_line_404
					|| basic_deserializer_factory_1_expr98_line_404;
			int PROBE_END_LINE_404 = 406;
			if (basic_deserializer_factory_1_expr95_line_404) {
                int PROBE_START_LINE_405 = 405;
				com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1415_line_405 = creators;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1417_line_405 = defaultCtor;
				int PROBE_END_LINE_405 = 405;
				p_creators_1415_line_405.setDefaultCreator(v_default_ctor_1417_line_405);
            }
        }

        int PROBE_START_LINE_412 = 412;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1412_line_412 = beanDesc;
		boolean basic_deserializer_factory_1_expr100_line_412 = p_bean_desc_1412_line_412.isNonStaticInnerClass();
		int PROBE_END_LINE_412 = 412;
		// 25-Jan-2017, tatu: As per [databind#1501], [databind#1502], [databind#1503], best
        //     for now to skip attempts at using anything but no-args constructor (see
        //     `InnerClassProperty` construction for that)
        final boolean isNonStaticInnerClass = basic_deserializer_factory_1_expr100_line_412;
        int PROBE_START_LINE_413 = 416;
		boolean v_is_non_static_inner_class_1418_line_413 = isNonStaticInnerClass;
		int PROBE_END_LINE_413 = 416;
		if (v_is_non_static_inner_class_1418_line_413) {
            // TODO: look for `@JsonCreator` annotated ones, throw explicit exception?
            return;
        }

        // may need to keep track for [#725]
        List<AnnotatedConstructor> implicitCtors = null;
        int PROBE_START_LINE_420 = 532;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1412_line_420 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> basic_deserializer_factory_1_expr101_line_420 = p_bean_desc_1412_line_420
				.getConstructors();
		int PROBE_END_LINE_420 = 532;
		for (AnnotatedConstructor ctor : basic_deserializer_factory_1_expr101_line_420) {
            int PROBE_START_LINE_421 = 421;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1414_line_421 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1420_line_421 = ctor;
			boolean basic_deserializer_factory_1_expr102_line_421 = p_intr_1414_line_421
					.hasCreatorAnnotation(v_ctor_1420_line_421);
			int PROBE_END_LINE_421 = 421;
			final boolean isCreator = basic_deserializer_factory_1_expr102_line_421;
            int PROBE_START_LINE_422 = 422;
			Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> p_creator_params_1416_line_422 = creatorParams;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1420_line_422 = ctor;
			BeanPropertyDefinition[] basic_deserializer_factory_1_expr103_line_422 = p_creator_params_1416_line_422
					.get(v_ctor_1420_line_422);
			int PROBE_END_LINE_422 = 422;
			BeanPropertyDefinition[] propDefs = basic_deserializer_factory_1_expr103_line_422;
            int PROBE_START_LINE_423 = 423;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1420_line_423 = ctor;
			int basic_deserializer_factory_1_expr104_line_423 = v_ctor_1420_line_423.getParameterCount();
			int PROBE_END_LINE_423 = 423;
			final int argCount = basic_deserializer_factory_1_expr104_line_423;

            int PROBE_START_LINE_426 = 449;
			int v_arg_count_1423_line_426 = argCount;
			boolean basic_deserializer_factory_1_expr105_line_426 = v_arg_count_1423_line_426 == 1;
			int PROBE_END_LINE_426 = 449;
			// some single-arg factory methods (String, number) are auto-detected
            if (basic_deserializer_factory_1_expr105_line_426) {
                int PROBE_START_LINE_427 = 427;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[] v_prop_defs_1422_line_427 = propDefs;
				boolean basic_deserializer_factory_1_expr109_line_427 = v_prop_defs_1422_line_427 == null;
				boolean basic_deserializer_factory_1_expr107_line_427 = (basic_deserializer_factory_1_expr109_line_427);
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition basic_deserializer_factory_1_expr108_line_427 = null;
				if (!basic_deserializer_factory_1_expr107_line_427) {
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[] v_prop_defs_1422_line_427_v1 = propDefs;
					basic_deserializer_factory_1_expr108_line_427 = v_prop_defs_1422_line_427_v1[0];
				}
				BeanPropertyDefinition basic_deserializer_factory_1_expr106_line_427 = basic_deserializer_factory_1_expr107_line_427
						? null
						: basic_deserializer_factory_1_expr108_line_427;
				int PROBE_END_LINE_427 = 427;
				BeanPropertyDefinition argDef = basic_deserializer_factory_1_expr106_line_427;
                int PROBE_START_LINE_428 = 428;
				com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1414_line_428 = intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1420_line_428 = ctor;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_arg_def_1424_line_428 = argDef;
				boolean basic_deserializer_factory_1_expr110_line_428 = _checkIfCreatorPropertyBased(
						p_intr_1414_line_428, v_ctor_1420_line_428, v_arg_def_1424_line_428);
				int PROBE_END_LINE_428 = 428;
				boolean useProps = basic_deserializer_factory_1_expr110_line_428;

                int PROBE_START_LINE_430 = 446;
				boolean v_use_props_1425_line_430 = useProps;
				int PROBE_END_LINE_430 = 446;
				if (v_use_props_1425_line_430) {
                    SettableBeanProperty[] properties = new SettableBeanProperty[1];
                    PropertyName name = (argDef == null) ? null : argDef.getFullName();
                    AnnotatedParameter arg = ctor.getParameter(0);
                    properties[0] = constructCreatorProperty(ctxt, beanDesc, name, 0, arg,
                            intr.findInjectableValueId(arg));
                    creators.addPropertyCreator(ctor, isCreator, properties);
                } else {
                    int PROBE_START_LINE_438 = 440;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1411_line_438 = ctxt;
					com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1412_line_438 = beanDesc;
					VisibilityChecker<?> p_vchecker_1413_line_438 = vchecker;
					com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1414_line_438 = intr;
					com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1415_line_438 = creators;
					int PROBE_END_LINE_438 = 440;
					/*boolean added = */ _handleSingleArgumentConstructor(p_ctxt_1411_line_438, p_bean_desc_1412_line_438, p_vchecker_1413_line_438, p_intr_1414_line_438, p_creators_1415_line_438,
                            ctor, isCreator,
                            vchecker.isCreatorVisible(ctor));
                    int PROBE_START_LINE_443 = 445;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_arg_def_1424_line_443 = argDef;
					boolean basic_deserializer_factory_1_expr113_line_443 = v_arg_def_1424_line_443 != null;
					int PROBE_END_LINE_443 = 445;
					// one more thing: sever link to creator property, to avoid possible later
                    // problems with "unresolved" constructor property
                    if (basic_deserializer_factory_1_expr113_line_443) {
                        ((POJOPropertyBuilder) argDef).removeConstructors();
                    }
                }
                // regardless, fully handled
                continue;
            }

            // 2 or more args; all params must have names or be injectable
            // 14-Mar-2015, tatu (2.6): Or, as per [#725], implicit names will also
            //   do, with some constraints. But that will require bit post processing...

            AnnotatedParameter nonAnnotatedParam = null;
            SettableBeanProperty[] properties = new SettableBeanProperty[argCount];
            int explicitNameCount = 0;
            int implicitWithCreatorCount = 0;
            int injectCount = 0;

            for (int i = 0; i < argCount; ++i) {
                final AnnotatedParameter param = ctor.getParameter(i);
                BeanPropertyDefinition propDef = (propDefs == null) ? null : propDefs[i];
                Object injectId = intr.findInjectableValueId(param);
                final PropertyName name = (propDef == null) ? null : propDef.getFullName();

                if (propDef != null && propDef.isExplicitlyNamed()) {
                    ++explicitNameCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                    continue;
                }
                if (injectId != null) {
                    ++injectCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                    continue;
                }
                NameTransformer unwrapper = intr.findUnwrappingNameTransformer(param);
                if (unwrapper != null) {
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, UNWRAPPED_CREATOR_PARAM_NAME, i, param, null);
                    ++explicitNameCount;
                    continue;
                }
                // One more thing: implicit names are ok iff ctor has creator annotation
                if (isCreator && (name != null && !name.isEmpty())) {
                    ++implicitWithCreatorCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                    continue;
                }
                if (nonAnnotatedParam == null) {
                    nonAnnotatedParam = param;
                }
            }

            final int namedCount = explicitNameCount + implicitWithCreatorCount;
            // Ok: if named or injectable, we have more work to do
            if (isCreator || (explicitNameCount > 0) || (injectCount > 0)) {
                // simple case; everything covered:
                if ((namedCount + injectCount) == argCount) {
                    creators.addPropertyCreator(ctor, isCreator, properties);
                    continue;
                }
                if ((explicitNameCount == 0) && ((injectCount + 1) == argCount)) {
                    // Secondary: all but one injectable, one un-annotated (un-named)
                    creators.addDelegatingCreator(ctor, isCreator, properties);
                    continue;
                }
                // otherwise, epic fail?
                // 16-Mar-2015, tatu: due to [#725], need to be more permissive. For now let's
                //    only report problem if there's no implicit name
                PropertyName impl = _findImplicitParamName(nonAnnotatedParam, intr);
                if (impl == null || impl.isEmpty()) {
                    // Let's consider non-static inner class as a special case...
                    int ix = nonAnnotatedParam.getIndex();
                    // 25-Jan-2017, tatu: Non-static inner classes skipped altogether, now
                    /*
                    if ((ix == 0) && isNonStaticInnerClass) {
                        throw new IllegalArgumentException("Non-static inner classes like "
                                +ctor.getDeclaringClass().getName()+" can not use @JsonCreator for constructors");
                    }
                    */
                    throw new IllegalArgumentException("Argument #"+ix
                            +" of constructor "+ctor+" has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
                }
            }
            // [#725]: as a fallback, all-implicit names may work as well
            if (!creators.hasDefaultCreator()) {
                if (implicitCtors == null) {
                    implicitCtors = new LinkedList<AnnotatedConstructor>();
                }
                implicitCtors.add(ctor);
            }
        }
        int PROBE_START_LINE_535 = 539;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_implicit_ctors_1419_line_535 = implicitCtors;
		boolean basic_deserializer_factory_1_expr116_line_535 = v_implicit_ctors_1419_line_535 != null;
		boolean basic_deserializer_factory_1_expr115_line_535 = (basic_deserializer_factory_1_expr116_line_535);
		boolean basic_deserializer_factory_1_expr117_line_535 = true;
		if (basic_deserializer_factory_1_expr115_line_535) {
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1415_line_535 = creators;
			boolean basic_deserializer_factory_1_expr118_line_535 = p_creators_1415_line_535.hasDelegatingCreator();
			basic_deserializer_factory_1_expr117_line_535 = !basic_deserializer_factory_1_expr118_line_535;
		}
		boolean basic_deserializer_factory_1_expr114_line_535 = basic_deserializer_factory_1_expr115_line_535
				&& basic_deserializer_factory_1_expr117_line_535 && !creators.hasPropertyBasedCreator();
		int PROBE_END_LINE_535 = 539;
		// last option, as per [#725]: consider implicit-names-only, visible constructor,
        // if just one found
        if (basic_deserializer_factory_1_expr114_line_535) {
            _checkImplicitlyNamedConstructors(ctxt, beanDesc, vchecker, intr,
                    creators, implicitCtors);
        }
    }

    protected void _checkImplicitlyNamedConstructors(DeserializationContext ctxt,
            BeanDescription beanDesc, VisibilityChecker<?> vchecker,
            AnnotationIntrospector intr, CreatorCollector creators,
            List<AnnotatedConstructor> implicitCtors) throws JsonMappingException
    {
        AnnotatedConstructor found = null;
        SettableBeanProperty[] foundProps = null;

        // Further checks: (a) must have names for all parameters, (b) only one visible
        // Also, since earlier matching of properties and creators relied on existence of
        // `@JsonCreator` (or equivalent) annotation, we need to do bit more re-inspection...

        main_loop:
        for (AnnotatedConstructor ctor : implicitCtors) {
            if (!vchecker.isCreatorVisible(ctor)) {
                continue;
            }
            // as per earlier notes, only end up here if no properties associated with creator
            final int argCount = ctor.getParameterCount();
            SettableBeanProperty[] properties = new SettableBeanProperty[argCount];
            for (int i = 0; i < argCount; ++i) {
                final AnnotatedParameter param = ctor.getParameter(i);
                final PropertyName name = _findParamName(param, intr);

                // must have name (implicit fine)
                if (name == null || name.isEmpty()) {
                    continue main_loop;
                }
                properties[i] = constructCreatorProperty(ctxt, beanDesc, name, param.getIndex(),
                        param, /*injectId*/ null);
            }
            if (found != null) { // only one allowed
                found = null;
                break;
            }
            found = ctor;
            foundProps = properties;
        }
        // found one and only one visible? Ship it!
        if (found != null) {
            creators.addPropertyCreator(found, /*isCreator*/ false, foundProps);
            BasicBeanDescription bbd = (BasicBeanDescription) beanDesc;
            // Also: add properties, to keep error messages complete wrt known properties...
            for (SettableBeanProperty prop : foundProps) {
                PropertyName pn = prop.getFullName();
                if (!bbd.hasProperty(pn)) {
                    BeanPropertyDefinition newDef = SimpleBeanPropertyDefinition.construct(
                            ctxt.getConfig(), prop.getMember(), pn);
                    bbd.addProperty(newDef);
                }
            }
        }
    }

    protected boolean _checkIfCreatorPropertyBased(AnnotationIntrospector intr,
            AnnotatedWithParams creator, BeanPropertyDefinition propDef)
    {
        int PROBE_START_LINE_599 = 599;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1432_line_599 = intr;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_1433_line_599 = creator;
		JsonCreator.Mode basic_deserializer_factory_1_expr119_line_599 = p_intr_1432_line_599
				.findCreatorBinding(p_creator_1433_line_599);
		int PROBE_END_LINE_599 = 599;
		JsonCreator.Mode mode = basic_deserializer_factory_1_expr119_line_599;

        int PROBE_START_LINE_601 = 603;
		com.fasterxml.jackson.annotation.JsonCreator.Mode v_mode_1435_line_601 = mode;
		com.fasterxml.jackson.annotation.JsonCreator.Mode q_properties_51_line_601 = JsonCreator.Mode.PROPERTIES;
		boolean basic_deserializer_factory_1_expr120_line_601 = v_mode_1435_line_601 == q_properties_51_line_601;
		int PROBE_END_LINE_601 = 603;
		if (basic_deserializer_factory_1_expr120_line_601) {
            return true;
        }
        int PROBE_START_LINE_604 = 606;
		com.fasterxml.jackson.annotation.JsonCreator.Mode v_mode_1435_line_604 = mode;
		com.fasterxml.jackson.annotation.JsonCreator.Mode q_delegating_52_line_604 = JsonCreator.Mode.DELEGATING;
		boolean basic_deserializer_factory_1_expr121_line_604 = v_mode_1435_line_604 == q_delegating_52_line_604;
		int PROBE_END_LINE_604 = 606;
		if (basic_deserializer_factory_1_expr121_line_604) {
            return false;
        }
        int PROBE_START_LINE_608 = 611;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1434_line_608 = propDef;
		boolean basic_deserializer_factory_1_expr126_line_608 = p_prop_def_1434_line_608 != null;
		boolean basic_deserializer_factory_1_expr125_line_608 = (basic_deserializer_factory_1_expr126_line_608);
		boolean basic_deserializer_factory_1_expr127_line_608 = true;
		if (basic_deserializer_factory_1_expr125_line_608) {
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1434_line_608_v1 = propDef;
			basic_deserializer_factory_1_expr127_line_608 = p_prop_def_1434_line_608_v1.isExplicitlyNamed();
		}
		boolean basic_deserializer_factory_1_expr124_line_608 = basic_deserializer_factory_1_expr125_line_608
				&& basic_deserializer_factory_1_expr127_line_608;
		boolean basic_deserializer_factory_1_expr123_line_608 = (basic_deserializer_factory_1_expr124_line_608);
		boolean basic_deserializer_factory_1_expr122_line_608 = basic_deserializer_factory_1_expr123_line_608
				|| (intr.findInjectableValueId(creator.getParameter(0)) != null);
		int PROBE_END_LINE_608 = 611;
		// If explicit name, or inject id, property-based
        if (basic_deserializer_factory_1_expr122_line_608) {
            return true;
        }
        int PROBE_START_LINE_612 = 621;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1434_line_612 = propDef;
		boolean basic_deserializer_factory_1_expr128_line_612 = p_prop_def_1434_line_612 != null;
		int PROBE_END_LINE_612 = 621;
		if (basic_deserializer_factory_1_expr128_line_612) {
            // One more thing: if implicit name matches property with a getter
            // or field, we'll consider it property-based as well
            String implName = propDef.getName();
            if (implName != null && !implName.isEmpty()) {
                if (propDef.couldSerialize()) {
                    return true;
                }
            }
        }
        // in absence of everything else, default to delegating
        return false;
    }
    
    protected boolean _handleSingleArgumentConstructor(DeserializationContext ctxt,
            BeanDescription beanDesc, VisibilityChecker<?> vchecker,
            AnnotationIntrospector intr, CreatorCollector creators,
            AnnotatedConstructor ctor, boolean isCreator, boolean isVisible)
        throws JsonMappingException
    {
        int PROBE_START_LINE_633 = 633;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor p_ctor_1441_line_633 = ctor;
		Class<?> basic_deserializer_factory_1_expr129_line_633 = p_ctor_1441_line_633.getRawParameterType(0);
		int PROBE_END_LINE_633 = 633;
		// otherwise either 'simple' number, String, or general delegate:
        Class<?> type = basic_deserializer_factory_1_expr129_line_633;
        int PROBE_START_LINE_634 = 639;
		Class<?> v_type_1444_line_634 = type;
		boolean basic_deserializer_factory_1_expr131_line_634 = v_type_1444_line_634 == String.class;
		boolean basic_deserializer_factory_1_expr133_line_634 = false;
		if (!basic_deserializer_factory_1_expr131_line_634) {
			Class<?> v_type_1444_line_634_v1 = type;
			basic_deserializer_factory_1_expr133_line_634 = v_type_1444_line_634_v1 == CharSequence.class;
		}
		boolean basic_deserializer_factory_1_expr130_line_634 = basic_deserializer_factory_1_expr131_line_634
				|| basic_deserializer_factory_1_expr133_line_634;
		int PROBE_END_LINE_634 = 639;
		if (basic_deserializer_factory_1_expr130_line_634) {
            if (isCreator || isVisible) {
                creators.addStringCreator(ctor, isCreator);
            }
            return true;
        }
        int PROBE_START_LINE_640 = 645;
		Class<?> v_type_1444_line_640 = type;
		boolean basic_deserializer_factory_1_expr136_line_640 = v_type_1444_line_640 == int.class;
		boolean basic_deserializer_factory_1_expr138_line_640 = false;
		if (!basic_deserializer_factory_1_expr136_line_640) {
			Class<?> v_type_1444_line_640_v1 = type;
			basic_deserializer_factory_1_expr138_line_640 = v_type_1444_line_640_v1 == Integer.class;
		}
		boolean basic_deserializer_factory_1_expr135_line_640 = basic_deserializer_factory_1_expr136_line_640
				|| basic_deserializer_factory_1_expr138_line_640;
		int PROBE_END_LINE_640 = 645;
		if (basic_deserializer_factory_1_expr135_line_640) {
            int PROBE_START_LINE_641 = 643;
			boolean p_is_creator_1442_line_641 = isCreator;
			boolean p_is_visible_1443_line_641 = false;
			if (!p_is_creator_1442_line_641) {
				p_is_visible_1443_line_641 = isVisible;
			}
			boolean basic_deserializer_factory_1_expr140_line_641 = p_is_creator_1442_line_641
					|| p_is_visible_1443_line_641;
			int PROBE_END_LINE_641 = 643;
			if (basic_deserializer_factory_1_expr140_line_641) {
                int PROBE_START_LINE_642 = 642;
				com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1440_line_642 = creators;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor p_ctor_1441_line_642 = ctor;
				boolean p_is_creator_1442_line_642 = isCreator;
				int PROBE_END_LINE_642 = 642;
				p_creators_1440_line_642.addIntCreator(p_ctor_1441_line_642, p_is_creator_1442_line_642);
            }
            return true;
        }
        int PROBE_START_LINE_646 = 651;
		Class<?> v_type_1444_line_646 = type;
		boolean basic_deserializer_factory_1_expr143_line_646 = v_type_1444_line_646 == long.class;
		boolean basic_deserializer_factory_1_expr145_line_646 = false;
		if (!basic_deserializer_factory_1_expr143_line_646) {
			Class<?> v_type_1444_line_646_v1 = type;
			basic_deserializer_factory_1_expr145_line_646 = v_type_1444_line_646_v1 == Long.class;
		}
		boolean basic_deserializer_factory_1_expr142_line_646 = basic_deserializer_factory_1_expr143_line_646
				|| basic_deserializer_factory_1_expr145_line_646;
		int PROBE_END_LINE_646 = 651;
		if (basic_deserializer_factory_1_expr142_line_646) {
            if (isCreator || isVisible) {
                creators.addLongCreator(ctor, isCreator);
            }
            return true;
        }
        int PROBE_START_LINE_652 = 657;
		Class<?> v_type_1444_line_652 = type;
		boolean basic_deserializer_factory_1_expr148_line_652 = v_type_1444_line_652 == double.class;
		boolean basic_deserializer_factory_1_expr150_line_652 = false;
		if (!basic_deserializer_factory_1_expr148_line_652) {
			Class<?> v_type_1444_line_652_v1 = type;
			basic_deserializer_factory_1_expr150_line_652 = v_type_1444_line_652_v1 == Double.class;
		}
		boolean basic_deserializer_factory_1_expr147_line_652 = basic_deserializer_factory_1_expr148_line_652
				|| basic_deserializer_factory_1_expr150_line_652;
		int PROBE_END_LINE_652 = 657;
		if (basic_deserializer_factory_1_expr147_line_652) {
            if (isCreator || isVisible) {
                creators.addDoubleCreator(ctor, isCreator);
            }
            return true;
        }
        int PROBE_START_LINE_658 = 663;
		Class<?> v_type_1444_line_658 = type;
		boolean basic_deserializer_factory_1_expr153_line_658 = v_type_1444_line_658 == boolean.class;
		boolean basic_deserializer_factory_1_expr155_line_658 = false;
		if (!basic_deserializer_factory_1_expr153_line_658) {
			Class<?> v_type_1444_line_658_v1 = type;
			basic_deserializer_factory_1_expr155_line_658 = v_type_1444_line_658_v1 == Boolean.class;
		}
		boolean basic_deserializer_factory_1_expr152_line_658 = basic_deserializer_factory_1_expr153_line_658
				|| basic_deserializer_factory_1_expr155_line_658;
		int PROBE_END_LINE_658 = 663;
		if (basic_deserializer_factory_1_expr152_line_658) {
            if (isCreator || isVisible) {
                creators.addBooleanCreator(ctor, isCreator);
            }
            return true;
        }
        int PROBE_START_LINE_665 = 668;
		boolean p_is_creator_1442_line_665 = isCreator;
		int PROBE_END_LINE_665 = 668;
		// Delegating Creator ok iff it has @JsonCreator (etc)
        if (p_is_creator_1442_line_665) {
            creators.addDelegatingCreator(ctor, isCreator, null);
            return true;
        }
        return false;
    }

    protected void _addDeserializerFactoryMethods
        (DeserializationContext ctxt, BeanDescription beanDesc, VisibilityChecker<?> vchecker,
         AnnotationIntrospector intr, CreatorCollector creators,
         Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorParams)
        throws JsonMappingException
    {
        int PROBE_START_LINE_678 = 678;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1445_line_678 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr157_line_678 = p_ctxt_1445_line_678.getConfig();
		int PROBE_END_LINE_678 = 678;
		final DeserializationConfig config = basic_deserializer_factory_1_expr157_line_678;
        int PROBE_START_LINE_679 = 780;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1446_line_679 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> basic_deserializer_factory_1_expr158_line_679 = p_bean_desc_1446_line_679
				.getFactoryMethods();
		int PROBE_END_LINE_679 = 780;
		for (AnnotatedMethod factory : basic_deserializer_factory_1_expr158_line_679) {
            final boolean isCreator = intr.hasCreatorAnnotation(factory);
            final int argCount = factory.getParameterCount();
            // zero-arg methods must be annotated; if so, are "default creators" [JACKSON-850]
            if (argCount == 0) {
                if (isCreator) {
                    creators.setDefaultCreator(factory);
                }
                continue;
            }

            final BeanPropertyDefinition[] propDefs = creatorParams.get(factory);
            // some single-arg factory methods (String, number) are auto-detected
            if (argCount == 1) {
                BeanPropertyDefinition argDef = (propDefs == null) ? null : propDefs[0];
                boolean useProps = _checkIfCreatorPropertyBased(intr, factory, argDef);
                if (!useProps) { // not property based but delegating
                    /*boolean added=*/ _handleSingleArgumentFactory(config, beanDesc, vchecker, intr, creators,
                            factory, isCreator);
                    // 23-Sep-2016, tatu: [databind#1383]: Need to also sever link to avoid possible
                    //    later problems with "unresolved" constructor property
                    if (argDef != null) {
                        ((POJOPropertyBuilder) argDef).removeConstructors();
                    }
                    continue;
                }
                // fall through if there's name
            } else {
                // more than 2 args, must have @JsonCreator
                if (!isCreator) {
                    continue;
                }
            }
            // 1 or more args; all params must have name annotations
            AnnotatedParameter nonAnnotatedParam = null;            
            SettableBeanProperty[] properties = new SettableBeanProperty[argCount];
            int implicitNameCount = 0;
            int explicitNameCount = 0;
            int injectCount = 0;
            
            for (int i = 0; i < argCount; ++i) {
                final AnnotatedParameter param = factory.getParameter(i);
                BeanPropertyDefinition propDef = (propDefs == null) ? null : propDefs[i];
                Object injectId = intr.findInjectableValueId(param);
                final PropertyName name = (propDef == null) ? null : propDef.getFullName();

                if (propDef != null && propDef.isExplicitlyNamed()) {
                    ++explicitNameCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                    continue;
                }
                if (injectId != null) {
                    ++injectCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                    continue;
                }
                NameTransformer unwrapper = intr.findUnwrappingNameTransformer(param);
                if (unwrapper != null) {
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, UNWRAPPED_CREATOR_PARAM_NAME, i, param, null);
                    ++implicitNameCount;
                    continue;
                }
                // One more thing: implicit names are ok iff ctor has creator annotation
                if (isCreator) {
                    if (name != null && !name.isEmpty()) {
                        ++implicitNameCount;
                        properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                        continue;
                    }
                }
                /* 25-Sep-2014, tatu: Actually, we may end up "losing" naming due to higher-priority constructor
                 *  (see TestCreators#testConstructorCreator() test). And just to avoid running into that problem,
                 *  let's add one more work around
                 */
                /*
                PropertyName name2 = _findExplicitParamName(param, intr);
                if (name2 != null && !name2.isEmpty()) {
                    // Hmmh. Ok, fine. So what are we to do with it... ?
                    // For now... skip. May need to revisit this, should this become problematic
                    continue main_loop;
                }
                */
                if (nonAnnotatedParam == null) {
                    nonAnnotatedParam = param;
                }
            }
            final int namedCount = explicitNameCount + implicitNameCount;
            
            // Ok: if named or injectable, we have more work to do
            if (isCreator || explicitNameCount > 0 || injectCount > 0) {
                // simple case; everything covered:
                if ((namedCount + injectCount) == argCount) {
                    creators.addPropertyCreator(factory, isCreator, properties);
                } else if ((explicitNameCount == 0) && ((injectCount + 1) == argCount)) {
                    // [712] secondary: all but one injectable, one un-annotated (un-named)
                    creators.addDelegatingCreator(factory, isCreator, properties);
                } else { // otherwise, epic fail
                    throw new IllegalArgumentException("Argument #"+nonAnnotatedParam.getIndex()
                            +" of factory method "+factory+" has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
                }
            }
        }
    }

    protected boolean _handleSingleArgumentFactory(DeserializationConfig config,
            BeanDescription beanDesc, VisibilityChecker<?> vchecker,
            AnnotationIntrospector intr, CreatorCollector creators,
            AnnotatedMethod factory, boolean isCreator)
        throws JsonMappingException
    {
        Class<?> type = factory.getRawParameterType(0);
        
        if (type == String.class || type == CharSequence.class) {
            if (isCreator || vchecker.isCreatorVisible(factory)) {
                creators.addStringCreator(factory, isCreator);
            }
            return true;
        }
        if (type == int.class || type == Integer.class) {
            if (isCreator || vchecker.isCreatorVisible(factory)) {
                creators.addIntCreator(factory, isCreator);
            }
            return true;
        }
        if (type == long.class || type == Long.class) {
            if (isCreator || vchecker.isCreatorVisible(factory)) {
                creators.addLongCreator(factory, isCreator);
            }
            return true;
        }
        if (type == double.class || type == Double.class) {
            if (isCreator || vchecker.isCreatorVisible(factory)) {
                creators.addDoubleCreator(factory, isCreator);
            }
            return true;
        }
        if (type == boolean.class || type == Boolean.class) {
            if (isCreator || vchecker.isCreatorVisible(factory)) {
                creators.addBooleanCreator(factory, isCreator);
            }
            return true;
        }
        if (isCreator) {
            creators.addDelegatingCreator(factory, isCreator, null);
            return true;
        }
        return false;
    }

    /**
     * Method that will construct a property object that represents
     * a logical property passed via Creator (constructor or static
     * factory method)
     */
    protected SettableBeanProperty constructCreatorProperty(DeserializationContext ctxt,
            BeanDescription beanDesc, PropertyName name, int index,
            AnnotatedParameter param,
            Object injectableValueId)
        throws JsonMappingException
    {
        final DeserializationConfig config = ctxt.getConfig();
        final AnnotationIntrospector intr = ctxt.getAnnotationIntrospector();
        PropertyMetadata metadata;
        {
            if (intr == null) {
                metadata = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
            } else {
                Boolean b = intr.hasRequiredMarker(param);
                String desc = intr.findPropertyDescription(param);
                Integer idx = intr.findPropertyIndex(param);
                String def = intr.findPropertyDefaultValue(param);
                metadata = PropertyMetadata.construct(b, desc, idx, def);
            }
        }
        JavaType type = resolveMemberAndTypeAnnotations(ctxt, param, param.getType());
        BeanProperty.Std property = new BeanProperty.Std(name, type,
                intr.findWrapperName(param),
                beanDesc.getClassAnnotations(), param, metadata);
        // Type deserializer: either comes from property (and already resolved)
        TypeDeserializer typeDeser = (TypeDeserializer) type.getTypeHandler();
        // or if not, based on type being referenced:
        if (typeDeser == null) {
            typeDeser = findTypeDeserializer(config, type);
        }
        // Note: contextualization of typeDeser _should_ occur in constructor of CreatorProperty
        // so it is not called directly here
        SettableBeanProperty prop = new CreatorProperty(name, type, property.getWrapperName(),
                typeDeser, beanDesc.getClassAnnotations(), param, index, injectableValueId,
                metadata);
        JsonDeserializer<?> deser = findDeserializerFromAnnotation(ctxt, param);
        if (deser == null) {
            deser = type.getValueHandler();
        }
        if (deser != null) {
            // As per [databind#462] need to ensure we contextualize deserializer before passing it on
            deser = ctxt.handlePrimaryContextualization(deser, prop, type);
            prop = prop.withValueDeserializer(deser);
        }
        return prop;
    }

    protected PropertyName _findParamName(AnnotatedParameter param, AnnotationIntrospector intr)
    {
        if (param != null && intr != null) {
            PropertyName name = intr.findNameForDeserialization(param);
            if (name != null) {
                return name;
            }
            // 14-Apr-2014, tatu: Need to also consider possible implicit name
            //  (for JDK8, or via paranamer)

            String str = intr.findImplicitPropertyName(param);
            if (str != null && !str.isEmpty()) {
                return PropertyName.construct(str);
            }
        }
        return null;
    }

    protected PropertyName _findImplicitParamName(AnnotatedParameter param, AnnotationIntrospector intr)
    {
        String str = intr.findImplicitPropertyName(param);
        if (str != null && !str.isEmpty()) {
            return PropertyName.construct(str);
        }
        return null;
    }

    @Deprecated // in 2.6, remove from 2.7
    protected PropertyName _findExplicitParamName(AnnotatedParameter param, AnnotationIntrospector intr)
    {
        if (param != null && intr != null) {
            return intr.findNameForDeserialization(param);
        }
        return null;
    }

    @Deprecated // in 2.6, remove from 2.7
    protected boolean _hasExplicitParamName(AnnotatedParameter param, AnnotationIntrospector intr)
    {
        if (param != null && intr != null) {
            PropertyName n = intr.findNameForDeserialization(param);
            return (n != null) && n.hasSimpleName();
        }
        return false;
    }

    /*
    /**********************************************************
    /* JsonDeserializerFactory impl: array deserializers
    /**********************************************************
     */
        
    @Override
    public JsonDeserializer<?> createArrayDeserializer(DeserializationContext ctxt,
            ArrayType type, final BeanDescription beanDesc)
        throws JsonMappingException
    {
        final DeserializationConfig config = ctxt.getConfig();
        JavaType elemType = type.getContentType();
        
        // Very first thing: is deserializer hard-coded for elements?
        JsonDeserializer<Object> contentDeser = elemType.getValueHandler();
        // Then optional type info: if type has been resolved, we may already know type deserializer:
        TypeDeserializer elemTypeDeser = elemType.getTypeHandler();
        // but if not, may still be possible to find:
        if (elemTypeDeser == null) {
            elemTypeDeser = findTypeDeserializer(config, elemType);
        }
        // 23-Nov-2010, tatu: Custom array deserializer?
        JsonDeserializer<?>  deser = _findCustomArrayDeserializer(type,
                config, beanDesc, elemTypeDeser, contentDeser);
        if (deser == null) {
            if (contentDeser == null) {
                Class<?> raw = elemType.getRawClass();
                if (elemType.isPrimitive()) {
                    return PrimitiveArrayDeserializers.forType(raw);
                } else if (raw == String.class) {
                    return StringArrayDeserializer.instance;
                }
            }
            deser = new ObjectArrayDeserializer(type, contentDeser, elemTypeDeser);
        }
        // and then new with 2.2: ability to post-process it too (Issue#120)
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deser = mod.modifyArrayDeserializer(config, type, beanDesc, deser);
            }
        }
        return deser;
    }

    /*
    /**********************************************************
    /* JsonDeserializerFactory impl: Collection(-like) deserializers
    /**********************************************************
     */

    @Override
    public JsonDeserializer<?> createCollectionDeserializer(DeserializationContext ctxt,
            CollectionType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_982 = 982;
		com.fasterxml.jackson.databind.type.CollectionType p_type_1478_line_982 = type;
		JavaType basic_deserializer_factory_1_expr159_line_982 = p_type_1478_line_982.getContentType();
		int PROBE_END_LINE_982 = 982;
		JavaType contentType = basic_deserializer_factory_1_expr159_line_982;
        int PROBE_START_LINE_984 = 984;
		com.fasterxml.jackson.databind.JavaType v_content_type_1480_line_984 = contentType;
		JsonDeserializer<Object> basic_deserializer_factory_1_expr160_line_984 = v_content_type_1480_line_984
				.getValueHandler();
		int PROBE_END_LINE_984 = 984;
		// Very first thing: is deserializer hard-coded for elements?
        JsonDeserializer<Object> contentDeser = basic_deserializer_factory_1_expr160_line_984;
        int PROBE_START_LINE_985 = 985;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1477_line_985 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr161_line_985 = p_ctxt_1477_line_985.getConfig();
		int PROBE_END_LINE_985 = 985;
		final DeserializationConfig config = basic_deserializer_factory_1_expr161_line_985;

        int PROBE_START_LINE_988 = 988;
		com.fasterxml.jackson.databind.JavaType v_content_type_1480_line_988 = contentType;
		TypeDeserializer basic_deserializer_factory_1_expr162_line_988 = v_content_type_1480_line_988.getTypeHandler();
		int PROBE_END_LINE_988 = 988;
		// Then optional type info: if type has been resolved, we may already know type deserializer:
        TypeDeserializer contentTypeDeser = basic_deserializer_factory_1_expr162_line_988;
        int PROBE_START_LINE_990 = 992;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1483_line_990 = contentTypeDeser;
		boolean basic_deserializer_factory_1_expr163_line_990 = v_content_type_deser_1483_line_990 == null;
		int PROBE_END_LINE_990 = 992;
		// but if not, may still be possible to find:
        if (basic_deserializer_factory_1_expr163_line_990) {
            contentTypeDeser = findTypeDeserializer(config, contentType);
        }
        int PROBE_START_LINE_994 = 995;
		com.fasterxml.jackson.databind.type.CollectionType p_type_1478_line_994 = type;
		JsonDeserializer<?> basic_deserializer_factory_1_expr164_line_994 = _findCustomCollectionDeserializer(
				p_type_1478_line_994, config, beanDesc, contentTypeDeser, contentDeser);
		int PROBE_END_LINE_994 = 995;
		// 23-Nov-2010, tatu: Custom deserializer?
        JsonDeserializer<?> deser = basic_deserializer_factory_1_expr164_line_994;
        int PROBE_START_LINE_996 = 1004;
		JsonDeserializer<?> v_deser_1484_line_996 = deser;
		boolean basic_deserializer_factory_1_expr165_line_996 = v_deser_1484_line_996 == null;
		int PROBE_END_LINE_996 = 1004;
		if (basic_deserializer_factory_1_expr165_line_996) {
            int PROBE_START_LINE_997 = 997;
			com.fasterxml.jackson.databind.type.CollectionType p_type_1478_line_997 = type;
			Class<?> basic_deserializer_factory_1_expr166_line_997 = p_type_1478_line_997.getRawClass();
			int PROBE_END_LINE_997 = 997;
			Class<?> collectionClass = basic_deserializer_factory_1_expr166_line_997;
            int PROBE_START_LINE_998 = 1003;
			JsonDeserializer<Object> v_content_deser_1481_line_998 = contentDeser;
			boolean basic_deserializer_factory_1_expr167_line_998 = v_content_deser_1481_line_998 == null;
			int PROBE_END_LINE_998 = 1003;
			if (basic_deserializer_factory_1_expr167_line_998) { // not defined by annotation
                int PROBE_START_LINE_1000 = 1002;
				Class<?> v_collection_class_1485_line_1000 = collectionClass;
				boolean basic_deserializer_factory_1_expr168_line_1000 = EnumSet.class
						.isAssignableFrom(v_collection_class_1485_line_1000);
				int PROBE_END_LINE_1000 = 1002;
				// One special type: EnumSet:
                if (basic_deserializer_factory_1_expr168_line_1000) {
                    deser = new EnumSetDeserializer(contentType, null);
                }
            }
        }

        int PROBE_START_LINE_1015 = 1046;
		JsonDeserializer<?> v_deser_1484_line_1015 = deser;
		boolean basic_deserializer_factory_1_expr170_line_1015 = v_deser_1484_line_1015 == null;
		int PROBE_END_LINE_1015 = 1046;
		/* One twist: if we are being asked to instantiate an interface or
         * abstract Collection, we need to either find something that implements
         * the thing, or give up.
         *
         * Note that we do NOT try to guess based on secondary interfaces
         * here; that would probably not work correctly since casts would
         * fail later on (as the primary type is not the interface we'd
         * be implementing)
         */
        if (basic_deserializer_factory_1_expr170_line_1015) {
            int PROBE_START_LINE_1016 = 1029;
			com.fasterxml.jackson.databind.type.CollectionType p_type_1478_line_1016 = type;
			boolean basic_deserializer_factory_1_expr172_line_1016 = p_type_1478_line_1016.isInterface();
			boolean basic_deserializer_factory_1_expr173_line_1016 = false;
			if (!basic_deserializer_factory_1_expr172_line_1016) {
				com.fasterxml.jackson.databind.type.CollectionType p_type_1478_line_1016_v1 = type;
				basic_deserializer_factory_1_expr173_line_1016 = p_type_1478_line_1016_v1.isAbstract();
			}
			boolean basic_deserializer_factory_1_expr171_line_1016 = basic_deserializer_factory_1_expr172_line_1016
					|| basic_deserializer_factory_1_expr173_line_1016;
			int PROBE_END_LINE_1016 = 1029;
			if (basic_deserializer_factory_1_expr171_line_1016) {
                int PROBE_START_LINE_1017 = 1017;
				com.fasterxml.jackson.databind.type.CollectionType p_type_1478_line_1017 = type;
				com.fasterxml.jackson.databind.DeserializationConfig v_config_1482_line_1017 = config;
				CollectionType basic_deserializer_factory_1_expr174_line_1017 = _mapAbstractCollectionType(
						p_type_1478_line_1017, v_config_1482_line_1017);
				int PROBE_END_LINE_1017 = 1017;
				CollectionType implType = basic_deserializer_factory_1_expr174_line_1017;
                int PROBE_START_LINE_1018 = 1028;
				com.fasterxml.jackson.databind.type.CollectionType v_impl_type_1486_line_1018 = implType;
				boolean basic_deserializer_factory_1_expr175_line_1018 = v_impl_type_1486_line_1018 == null;
				int PROBE_END_LINE_1018 = 1028;
				if (basic_deserializer_factory_1_expr175_line_1018) {
                    // [databind#292]: Actually, may be fine, but only if polymorphich deser enabled
                    if (type.getTypeHandler() == null) {
                        throw new IllegalArgumentException("Can not find a deserializer for non-concrete Collection type "+type);
                    }
                    deser = AbstractDeserializer.constructForNonPOJO(beanDesc);
                } else {
                    int PROBE_START_LINE_1025 = 1025;
					com.fasterxml.jackson.databind.type.CollectionType v_impl_type_1486_line_1025 = implType;
					int PROBE_END_LINE_1025 = 1025;
					type = v_impl_type_1486_line_1025;
                    int PROBE_START_LINE_1027 = 1027;
					com.fasterxml.jackson.databind.DeserializationConfig v_config_1482_line_1027 = config;
					com.fasterxml.jackson.databind.type.CollectionType p_type_1478_line_1027 = type;
					com.fasterxml.jackson.databind.BeanDescription basic_deserializer_factory_1_expr178_line_1027 = v_config_1482_line_1027
							.introspectForCreation(p_type_1478_line_1027);
					int PROBE_END_LINE_1027 = 1027;
					// But if so, also need to re-check creators...
                    beanDesc = basic_deserializer_factory_1_expr178_line_1027;
                }
            }
            int PROBE_START_LINE_1030 = 1045;
			JsonDeserializer<?> v_deser_1484_line_1030 = deser;
			boolean basic_deserializer_factory_1_expr179_line_1030 = v_deser_1484_line_1030 == null;
			int PROBE_END_LINE_1030 = 1045;
			if (basic_deserializer_factory_1_expr179_line_1030) {
                int PROBE_START_LINE_1031 = 1031;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1477_line_1031 = ctxt;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1479_line_1031 = beanDesc;
				ValueInstantiator basic_deserializer_factory_1_expr180_line_1031 = findValueInstantiator(
						p_ctxt_1477_line_1031, p_bean_desc_1479_line_1031);
				int PROBE_END_LINE_1031 = 1031;
				ValueInstantiator inst = basic_deserializer_factory_1_expr180_line_1031;
                int PROBE_START_LINE_1032 = 1037;
				com.fasterxml.jackson.databind.deser.ValueInstantiator v_inst_1487_line_1032 = inst;
				boolean basic_deserializer_factory_1_expr182_line_1032 = v_inst_1487_line_1032.canCreateUsingDefault();
				boolean basic_deserializer_factory_1_expr181_line_1032 = !basic_deserializer_factory_1_expr182_line_1032;
				int PROBE_END_LINE_1032 = 1037;
				if (basic_deserializer_factory_1_expr181_line_1032) {
                    // [databind#161]: No default constructor for ArrayBlockingQueue...
                    if (type.getRawClass() == ArrayBlockingQueue.class) {
                        return new ArrayBlockingQueueDeserializer(type, contentDeser, contentTypeDeser, inst);
                    }
                }
                int PROBE_START_LINE_1039 = 1044;
				com.fasterxml.jackson.databind.JavaType v_content_type_1480_line_1039 = contentType;
				Class<?> basic_deserializer_factory_1_expr184_line_1039 = v_content_type_1480_line_1039.getRawClass();
				boolean basic_deserializer_factory_1_expr183_line_1039 = basic_deserializer_factory_1_expr184_line_1039 == String.class;
				int PROBE_END_LINE_1039 = 1044;
				// Can use more optimal deserializer if content type is String, so:
                if (basic_deserializer_factory_1_expr183_line_1039) {
                    // no value type deserializer because Strings are one of natural/native types:
                    deser = new StringCollectionDeserializer(type, contentDeser, inst);
                } else {
                    int PROBE_START_LINE_1043 = 1043;
					com.fasterxml.jackson.databind.type.CollectionType p_type_1478_line_1043 = type;
					JsonDeserializer<Object> v_content_deser_1481_line_1043 = contentDeser;
					com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1483_line_1043 = contentTypeDeser;
					com.fasterxml.jackson.databind.deser.ValueInstantiator v_inst_1487_line_1043 = inst;
					int PROBE_END_LINE_1043 = 1043;
					deser = new CollectionDeserializer(p_type_1478_line_1043, v_content_deser_1481_line_1043, v_content_type_deser_1483_line_1043, v_inst_1487_line_1043);
                }
            }
        }
        int PROBE_START_LINE_1048 = 1052;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_1048 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr188_line_1048 = f__factory_config_1375_line_1048
				.hasDeserializerModifiers();
		int PROBE_END_LINE_1048 = 1052;
		// allow post-processing it too
        if (basic_deserializer_factory_1_expr188_line_1048) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deser = mod.modifyCollectionDeserializer(config, type, beanDesc, deser);
            }
        }
        int PROBE_START_LINE_1053 = 1053;
		JsonDeserializer<?> v_deser_1484_line_1053 = deser;
		int PROBE_END_LINE_1053 = 1053;
		return v_deser_1484_line_1053;
    }

    protected CollectionType _mapAbstractCollectionType(JavaType type, DeserializationConfig config)
    {
        int PROBE_START_LINE_1058 = 1058;
		com.fasterxml.jackson.databind.JavaType p_type_1488_line_1058 = type;
		Class<?> basic_deserializer_factory_1_expr189_line_1058 = p_type_1488_line_1058.getRawClass();
		int PROBE_END_LINE_1058 = 1058;
		Class<?> collectionClass = basic_deserializer_factory_1_expr189_line_1058;
        int PROBE_START_LINE_1059 = 1059;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1373_line_1059 = _collectionFallbacks;
		Class<?> v_collection_class_1490_line_1059 = collectionClass;
		String basic_deserializer_factory_1_expr192_line_1059 = v_collection_class_1490_line_1059.getName();
		Class<? extends java.util.Collection> basic_deserializer_factory_1_expr191_line_1059 = f__collection_fallbacks_1373_line_1059
				.get(basic_deserializer_factory_1_expr192_line_1059);
		int PROBE_END_LINE_1059 = 1059;
		collectionClass = basic_deserializer_factory_1_expr191_line_1059;
        int PROBE_START_LINE_1060 = 1062;
		Class<?> v_collection_class_1490_line_1060 = collectionClass;
		boolean basic_deserializer_factory_1_expr193_line_1060 = v_collection_class_1490_line_1060 == null;
		int PROBE_END_LINE_1060 = 1062;
		if (basic_deserializer_factory_1_expr193_line_1060) {
            return null;
        }
        int PROBE_START_LINE_1063 = 1063;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1489_line_1063 = config;
		com.fasterxml.jackson.databind.JavaType p_type_1488_line_1063 = type;
		Class<?> v_collection_class_1490_line_1063 = collectionClass;
		com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr195_line_1063 = p_config_1489_line_1063
				.constructSpecializedType(p_type_1488_line_1063, v_collection_class_1490_line_1063);
		int PROBE_END_LINE_1063 = 1063;
		return (CollectionType) basic_deserializer_factory_1_expr195_line_1063;
    }
    
    // Copied almost verbatim from "createCollectionDeserializer" -- should try to share more code
    @Override
    public JsonDeserializer<?> createCollectionLikeDeserializer(DeserializationContext ctxt,
            CollectionLikeType type, final BeanDescription beanDesc)
        throws JsonMappingException
    {
        JavaType contentType = type.getContentType();
        // Very first thing: is deserializer hard-coded for elements?
        JsonDeserializer<Object> contentDeser = contentType.getValueHandler();
        final DeserializationConfig config = ctxt.getConfig();

        // Then optional type info (1.5): if type has been resolved, we may already know type deserializer:
        TypeDeserializer contentTypeDeser = contentType.getTypeHandler();
        // but if not, may still be possible to find:
        if (contentTypeDeser == null) {
            contentTypeDeser = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> deser = _findCustomCollectionLikeDeserializer(type, config, beanDesc,
                contentTypeDeser, contentDeser);
        if (deser != null) {
            // and then new with 2.2: ability to post-process it too (Issue#120)
            if (_factoryConfig.hasDeserializerModifiers()) {
                for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                    deser = mod.modifyCollectionLikeDeserializer(config, type, beanDesc, deser);
                }
            }
        }
        return deser;
    }

    /*
    /**********************************************************
    /* JsonDeserializerFactory impl: Map(-like) deserializers
    /**********************************************************
     */

    @Override
    public JsonDeserializer<?> createMapDeserializer(DeserializationContext ctxt,
            MapType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        final DeserializationConfig config = ctxt.getConfig();
        JavaType keyType = type.getKeyType();
        JavaType contentType = type.getContentType();
        
        // First: is there annotation-specified deserializer for values?
        @SuppressWarnings("unchecked")
        JsonDeserializer<Object> contentDeser = (JsonDeserializer<Object>) contentType.getValueHandler();

        // Ok: need a key deserializer (null indicates 'default' here)
        KeyDeserializer keyDes = (KeyDeserializer) keyType.getValueHandler();
        // Then optional type info; either attached to type, or resolved separately:
        TypeDeserializer contentTypeDeser = contentType.getTypeHandler();
        // but if not, may still be possible to find:
        if (contentTypeDeser == null) {
            contentTypeDeser = findTypeDeserializer(config, contentType);
        }

        // 23-Nov-2010, tatu: Custom deserializer?
        JsonDeserializer<?> deser = _findCustomMapDeserializer(type, config, beanDesc,
                keyDes, contentTypeDeser, contentDeser);

        if (deser == null) {
            // Value handling is identical for all, but EnumMap requires special handling for keys
            Class<?> mapClass = type.getRawClass();
            if (EnumMap.class.isAssignableFrom(mapClass)) {
                Class<?> kt = keyType.getRawClass();
                if (kt == null || !kt.isEnum()) {
                    throw new IllegalArgumentException("Can not construct EnumMap; generic (key) type not available");
                }
                deser = new EnumMapDeserializer(type, null, contentDeser, contentTypeDeser);
            }

            // Otherwise, generic handler works ok.
    
            /* But there is one more twist: if we are being asked to instantiate
             * an interface or abstract Map, we need to either find something
             * that implements the thing, or give up.
             *
             * Note that we do NOT try to guess based on secondary interfaces
             * here; that would probably not work correctly since casts would
             * fail later on (as the primary type is not the interface we'd
             * be implementing)
             */
            if (deser == null) {
                if (type.isInterface() || type.isAbstract()) {
                    @SuppressWarnings("rawtypes")
                    Class<? extends Map> fallback = _mapFallbacks.get(mapClass.getName());
                    if (fallback != null) {
                        mapClass = fallback;
                        type = (MapType) config.constructSpecializedType(type, mapClass);
                        // But if so, also need to re-check creators...
                        beanDesc = config.introspectForCreation(type);
                    } else {
                        // [databind#292]: Actually, may be fine, but only if polymorphic deser enabled
                        if (type.getTypeHandler() == null) {
                            throw new IllegalArgumentException("Can not find a deserializer for non-concrete Map type "+type);
                        }
                        deser = AbstractDeserializer.constructForNonPOJO(beanDesc);
                    }
                }
                if (deser == null) {
                    ValueInstantiator inst = findValueInstantiator(ctxt, beanDesc);
                    // 01-May-2016, tatu: Which base type to use here gets tricky, since
                    //   most often it ought to be `Map` or `EnumMap`, but due to abstract
                    //   mapping it will more likely be concrete type like `HashMap`.
                    //   So, for time being, just pass `Map.class`
                    MapDeserializer md = new MapDeserializer(type, inst, keyDes, contentDeser, contentTypeDeser);
                    JsonIgnoreProperties.Value ignorals = config.getDefaultPropertyIgnorals(Map.class,
                            beanDesc.getClassInfo());
                    Set<String> ignored = (ignorals == null) ? null
                            : ignorals.findIgnoredForDeserialization();
                    md.setIgnorableProperties(ignored);
                    deser = md;
                }
            }
        }
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deser = mod.modifyMapDeserializer(config, type, beanDesc, deser);
            }
        }
        return deser;
    }

    // Copied almost verbatim from "createMapDeserializer" -- should try to share more code
    @Override
    public JsonDeserializer<?> createMapLikeDeserializer(DeserializationContext ctxt,
            MapLikeType type, final BeanDescription beanDesc)
        throws JsonMappingException
    {
        JavaType keyType = type.getKeyType();
        JavaType contentType = type.getContentType();
        final DeserializationConfig config = ctxt.getConfig();
        
        // First: is there annotation-specified deserializer for values?
        @SuppressWarnings("unchecked")
        JsonDeserializer<Object> contentDeser = (JsonDeserializer<Object>) contentType.getValueHandler();
        
        // Ok: need a key deserializer (null indicates 'default' here)
        KeyDeserializer keyDes = (KeyDeserializer) keyType.getValueHandler();
        /* !!! 24-Jan-2012, tatu: NOTE: impls MUST use resolve() to find key deserializer!
        if (keyDes == null) {
            keyDes = p.findKeyDeserializer(config, keyType, property);
        }
        */
        // Then optional type info (1.5); either attached to type, or resolve separately:
        TypeDeserializer contentTypeDeser = contentType.getTypeHandler();
        // but if not, may still be possible to find:
        if (contentTypeDeser == null) {
            contentTypeDeser = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> deser = _findCustomMapLikeDeserializer(type, config,
                beanDesc, keyDes, contentTypeDeser, contentDeser);
        if (deser != null) {
            // and then new with 2.2: ability to post-process it too (Issue#120)
            if (_factoryConfig.hasDeserializerModifiers()) {
                for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                    deser = mod.modifyMapLikeDeserializer(config, type, beanDesc, deser);
                }
            }
        }
        return deser;
    }

    /*
    /**********************************************************
    /* JsonDeserializerFactory impl: other types
    /**********************************************************
     */
    
    /**
     * Factory method for constructing serializers of {@link Enum} types.
     */
    @Override
    public JsonDeserializer<?> createEnumDeserializer(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        final DeserializationConfig config = ctxt.getConfig();
        final Class<?> enumClass = type.getRawClass();
        // 23-Nov-2010, tatu: Custom deserializer?
        JsonDeserializer<?> deser = _findCustomEnumDeserializer(enumClass, config, beanDesc);

        if (deser == null) {
            ValueInstantiator valueInstantiator = _constructDefaultValueInstantiator(ctxt, beanDesc);
            SettableBeanProperty[] creatorProps = (valueInstantiator == null) ? null
                    : valueInstantiator.getFromObjectArguments(ctxt.getConfig());
            // May have @JsonCreator for static factory method:
            for (AnnotatedMethod factory : beanDesc.getFactoryMethods()) {
                if (ctxt.getAnnotationIntrospector().hasCreatorAnnotation(factory)) {
                    if (factory.getParameterCount() == 0) { // [databind#960]
                        deser = EnumDeserializer.deserializerForNoArgsCreator(config, enumClass, factory);
                        break;
                    }
                    Class<?> returnType = factory.getRawReturnType();
                    // usually should be class, but may be just plain Enum<?> (for Enum.valueOf()?)
                    if (returnType.isAssignableFrom(enumClass)) {
                        deser = EnumDeserializer.deserializerForCreator(config, enumClass, factory, valueInstantiator, creatorProps);
                        break;
                    }
                }
            }
           
            // Need to consider @JsonValue if one found
            if (deser == null) {
                deser = new EnumDeserializer(constructEnumResolver(enumClass,
                        config, beanDesc.findJsonValueMethod()));
            }
        }

        // and then post-process it too
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deser = mod.modifyEnumDeserializer(config, type, beanDesc, deser);
            }
        }
        return deser;
    }

    @Override
    public JsonDeserializer<?> createTreeDeserializer(DeserializationConfig config,
            JavaType nodeType, BeanDescription beanDesc)
        throws JsonMappingException
    {
        @SuppressWarnings("unchecked")
        Class<? extends JsonNode> nodeClass = (Class<? extends JsonNode>) nodeType.getRawClass();
        // 23-Nov-2010, tatu: Custom deserializer?
        JsonDeserializer<?> custom = _findCustomTreeNodeDeserializer(nodeClass, config,
                beanDesc);
        if (custom != null) {
            return custom;
        }
        return JsonNodeDeserializer.getDeserializer(nodeClass);
    }

    @Override
    public JsonDeserializer<?> createReferenceDeserializer(DeserializationContext ctxt,
            ReferenceType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        JavaType contentType = type.getContentType();
        // Very first thing: is deserializer hard-coded for elements?
        JsonDeserializer<Object> contentDeser = contentType.getValueHandler();
        final DeserializationConfig config = ctxt.getConfig();
        // Then optional type info: if type has been resolved, we may already know type deserializer:
        TypeDeserializer contentTypeDeser = contentType.getTypeHandler();
        if (contentTypeDeser == null) { // or if not, may be able to find:
            contentTypeDeser = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> deser = _findCustomReferenceDeserializer(type, config, beanDesc,
                contentTypeDeser, contentDeser);

        if (deser == null) {
            // Just one referential type as of JDK 1.7 / Java 7: AtomicReference (Java 8 adds Optional)
            if (AtomicReference.class.isAssignableFrom(type.getRawClass())) {
                return new AtomicReferenceDeserializer(type, contentTypeDeser, contentDeser);
            }
        }
        if (deser != null) {
            // and then post-process
            if (_factoryConfig.hasDeserializerModifiers()) {
                for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                    deser = mod.modifyReferenceDeserializer(config, type, beanDesc, deser);
                }
            }
        }
        return deser;
    }

    /*
    /**********************************************************
    /* JsonDeserializerFactory impl (partial): type deserializers
    /**********************************************************
     */

    @Override
    public TypeDeserializer findTypeDeserializer(DeserializationConfig config,
            JavaType baseType)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1347 = 1347;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1509_line_1347 = config;
		com.fasterxml.jackson.databind.JavaType p_base_type_1510_line_1347 = baseType;
		Class<?> basic_deserializer_factory_1_expr197_line_1347 = p_base_type_1510_line_1347.getRawClass();
		BeanDescription basic_deserializer_factory_1_expr196_line_1347 = p_config_1509_line_1347
				.introspectClassAnnotations(basic_deserializer_factory_1_expr197_line_1347);
		int PROBE_END_LINE_1347 = 1347;
		BeanDescription bean = basic_deserializer_factory_1_expr196_line_1347;
        int PROBE_START_LINE_1348 = 1348;
		com.fasterxml.jackson.databind.BeanDescription v_bean_1511_line_1348 = bean;
		AnnotatedClass basic_deserializer_factory_1_expr198_line_1348 = v_bean_1511_line_1348.getClassInfo();
		int PROBE_END_LINE_1348 = 1348;
		AnnotatedClass ac = basic_deserializer_factory_1_expr198_line_1348;
        int PROBE_START_LINE_1349 = 1349;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1509_line_1349 = config;
		AnnotationIntrospector basic_deserializer_factory_1_expr199_line_1349 = p_config_1509_line_1349
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1349 = 1349;
		AnnotationIntrospector ai = basic_deserializer_factory_1_expr199_line_1349;
        int PROBE_START_LINE_1350 = 1350;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1513_line_1350 = ai;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1509_line_1350 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1512_line_1350 = ac;
		com.fasterxml.jackson.databind.JavaType p_base_type_1510_line_1350 = baseType;
		TypeResolverBuilder<?> basic_deserializer_factory_1_expr200_line_1350 = v_ai_1513_line_1350
				.findTypeResolver(p_config_1509_line_1350, v_ac_1512_line_1350, p_base_type_1510_line_1350);
		int PROBE_END_LINE_1350 = 1350;
		TypeResolverBuilder<?> b = basic_deserializer_factory_1_expr200_line_1350;

        /* Ok: if there is no explicit type info handler, we may want to
         * use a default. If so, config object knows what to use.
         */
        Collection<NamedType> subtypes = null;
        int PROBE_START_LINE_1356 = 1363;
		TypeResolverBuilder<?> v_b_1514_line_1356 = b;
		boolean basic_deserializer_factory_1_expr201_line_1356 = v_b_1514_line_1356 == null;
		int PROBE_END_LINE_1356 = 1363;
		if (basic_deserializer_factory_1_expr201_line_1356) {
            int PROBE_START_LINE_1357 = 1357;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1509_line_1357 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1510_line_1357 = baseType;
			TypeResolverBuilder<?> basic_deserializer_factory_1_expr203_line_1357 = p_config_1509_line_1357
					.getDefaultTyper(p_base_type_1510_line_1357);
			int PROBE_END_LINE_1357 = 1357;
			b = basic_deserializer_factory_1_expr203_line_1357;
            int PROBE_START_LINE_1358 = 1360;
			TypeResolverBuilder<?> v_b_1514_line_1358 = b;
			boolean basic_deserializer_factory_1_expr204_line_1358 = v_b_1514_line_1358 == null;
			int PROBE_END_LINE_1358 = 1360;
			if (basic_deserializer_factory_1_expr204_line_1358) {
                return null;
            }
        } else {
            subtypes = config.getSubtypeResolver().collectAndResolveSubtypesByTypeId(config, ac);
        }
        int PROBE_START_LINE_1366 = 1371;
		TypeResolverBuilder<?> v_b_1514_line_1366 = b;
		Class<?> basic_deserializer_factory_1_expr208_line_1366 = v_b_1514_line_1366.getDefaultImpl();
		boolean basic_deserializer_factory_1_expr207_line_1366 = basic_deserializer_factory_1_expr208_line_1366 == null;
		boolean basic_deserializer_factory_1_expr206_line_1366 = (basic_deserializer_factory_1_expr207_line_1366);
		boolean basic_deserializer_factory_1_expr209_line_1366 = true;
		if (basic_deserializer_factory_1_expr206_line_1366) {
			com.fasterxml.jackson.databind.JavaType p_base_type_1510_line_1366 = baseType;
			basic_deserializer_factory_1_expr209_line_1366 = p_base_type_1510_line_1366.isAbstract();
		}
		boolean basic_deserializer_factory_1_expr205_line_1366 = basic_deserializer_factory_1_expr206_line_1366
				&& basic_deserializer_factory_1_expr209_line_1366;
		int PROBE_END_LINE_1366 = 1371;
		// May need to figure out default implementation, if none found yet
        // (note: check for abstract type is not 100% mandatory, more of an optimization)
        if (basic_deserializer_factory_1_expr205_line_1366) {
            int PROBE_START_LINE_1367 = 1367;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1509_line_1367 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1510_line_1367 = baseType;
			JavaType basic_deserializer_factory_1_expr210_line_1367 = mapAbstractType(p_config_1509_line_1367,
					p_base_type_1510_line_1367);
			int PROBE_END_LINE_1367 = 1367;
			JavaType defaultType = basic_deserializer_factory_1_expr210_line_1367;
            int PROBE_START_LINE_1368 = 1370;
			com.fasterxml.jackson.databind.JavaType v_default_type_1516_line_1368 = defaultType;
			boolean basic_deserializer_factory_1_expr212_line_1368 = v_default_type_1516_line_1368 != null;
			boolean basic_deserializer_factory_1_expr213_line_1368 = true;
			if (basic_deserializer_factory_1_expr212_line_1368) {
				com.fasterxml.jackson.databind.JavaType v_default_type_1516_line_1368_v1 = defaultType;
				Class<?> basic_deserializer_factory_1_expr214_line_1368 = v_default_type_1516_line_1368_v1
						.getRawClass();
				com.fasterxml.jackson.databind.JavaType p_base_type_1510_line_1368 = baseType;
				Class<?> basic_deserializer_factory_1_expr215_line_1368 = p_base_type_1510_line_1368.getRawClass();
				basic_deserializer_factory_1_expr213_line_1368 = basic_deserializer_factory_1_expr214_line_1368 != basic_deserializer_factory_1_expr215_line_1368;
			}
			boolean basic_deserializer_factory_1_expr211_line_1368 = basic_deserializer_factory_1_expr212_line_1368
					&& basic_deserializer_factory_1_expr213_line_1368;
			int PROBE_END_LINE_1368 = 1370;
			if (basic_deserializer_factory_1_expr211_line_1368) {
                b = b.defaultImpl(defaultType.getRawClass());
            }
        }
        int PROBE_START_LINE_1372 = 1372;
		TypeResolverBuilder<?> v_b_1514_line_1372 = b;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1509_line_1372 = config;
		com.fasterxml.jackson.databind.JavaType p_base_type_1510_line_1372 = baseType;
		Collection<com.fasterxml.jackson.databind.jsontype.NamedType> v_subtypes_1515_line_1372 = subtypes;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr216_line_1372 = v_b_1514_line_1372
				.buildTypeDeserializer(p_config_1509_line_1372, p_base_type_1510_line_1372, v_subtypes_1515_line_1372);
		int PROBE_END_LINE_1372 = 1372;
		return basic_deserializer_factory_1_expr216_line_1372;
    }

    /**
     * Overridable method called after checking all other types.
     * 
     * @since 2.2
     */
    protected JsonDeserializer<?> findOptionalStdDeserializer(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1384 = 1384;
		com.fasterxml.jackson.databind.ext.OptionalHandlerFactory q_instance_53_line_1384 = OptionalHandlerFactory.instance;
		com.fasterxml.jackson.databind.JavaType p_type_1518_line_1384 = type;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1517_line_1384 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr218_line_1384 = p_ctxt_1517_line_1384
				.getConfig();
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1519_line_1384 = beanDesc;
		JsonDeserializer<?> basic_deserializer_factory_1_expr217_line_1384 = q_instance_53_line_1384.findDeserializer(
				p_type_1518_line_1384, basic_deserializer_factory_1_expr218_line_1384, p_bean_desc_1519_line_1384);
		int PROBE_END_LINE_1384 = 1384;
		return basic_deserializer_factory_1_expr217_line_1384;
    }
    
    /*
    /**********************************************************
    /* JsonDeserializerFactory impl (partial): key deserializers
    /**********************************************************
     */
    
    @Override
    public KeyDeserializer createKeyDeserializer(DeserializationContext ctxt,
            JavaType type)
        throws JsonMappingException
    {
        final DeserializationConfig config = ctxt.getConfig();
        KeyDeserializer deser = null;
        if (_factoryConfig.hasKeyDeserializers()) {
            BeanDescription beanDesc = config.introspectClassAnnotations(type.getRawClass());
            for (KeyDeserializers d  : _factoryConfig.keyDeserializers()) {
                deser = d.findKeyDeserializer(type, config, beanDesc);
                if (deser != null) {
                    break;
                }
            }
        }
        // the only non-standard thing is this:
        if (deser == null) {
            if (type.isEnumType()) {
                deser = _createEnumKeyDeserializer(ctxt, type);
            } else {
                deser = StdKeyDeserializers.findStringBasedKeyDeserializer(config, type);
            }
        }
        // and then post-processing
        if (deser != null) {
            if (_factoryConfig.hasDeserializerModifiers()) {
                for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                    deser = mod.modifyKeyDeserializer(config, type, deser);
                }
            }
        }
        return deser;
    }

    private KeyDeserializer _createEnumKeyDeserializer(DeserializationContext ctxt,
            JavaType type)
        throws JsonMappingException
    {
        final DeserializationConfig config = ctxt.getConfig();
        Class<?> enumClass = type.getRawClass();

        BeanDescription beanDesc = config.introspect(type);
        // 24-Sep-2015, bim: a key deserializer is the preferred thing.
        KeyDeserializer des = findKeyDeserializerFromAnnotation(ctxt, beanDesc.getClassInfo());
        if (des != null) {
            return des;
        } else {
            // 24-Sep-2015, bim: if no key deser, look for enum deserializer first, then a plain deser.
            JsonDeserializer<?> custom = _findCustomEnumDeserializer(enumClass, config, beanDesc);
            if (custom != null) {
                return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, type, custom);
            }
            JsonDeserializer<?> valueDesForKey = findDeserializerFromAnnotation(ctxt, beanDesc.getClassInfo());
            if (valueDesForKey != null) {
                return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, type, valueDesForKey);
            }
        }
        EnumResolver enumRes = constructEnumResolver(enumClass, config, beanDesc.findJsonValueMethod());
        // May have @JsonCreator for static factory method:
        final AnnotationIntrospector ai = config.getAnnotationIntrospector();
        for (AnnotatedMethod factory : beanDesc.getFactoryMethods()) {
            if (ai.hasCreatorAnnotation(factory)) {
                int argCount = factory.getParameterCount();
                if (argCount == 1) {
                    Class<?> returnType = factory.getRawReturnType();
                    // usually should be class, but may be just plain Enum<?> (for Enum.valueOf()?)
                    if (returnType.isAssignableFrom(enumClass)) {
                        // note: mostly copied from 'EnumDeserializer.deserializerForCreator(...)'
                        if (factory.getRawParameterType(0) != String.class) {
                            throw new IllegalArgumentException("Parameter #0 type for factory method ("+factory+") not suitable, must be java.lang.String");
                        }
                        if (config.canOverrideAccessModifiers()) {
                            ClassUtil.checkAndFixAccess(factory.getMember(),
                                    ctxt.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                        }
                        return StdKeyDeserializers.constructEnumKeyDeserializer(enumRes, factory);
                    }
                }
                throw new IllegalArgumentException("Unsuitable method ("+factory+") decorated with @JsonCreator (for Enum type "
                        +enumClass.getName()+")");
            }
        }
        // Also, need to consider @JsonValue, if one found
        return StdKeyDeserializers.constructEnumKeyDeserializer(enumRes);
    }

    /*
    /**********************************************************
    /* Extended API
    /**********************************************************
     */

    /**
     * Method called to create a type information deserializer for values of
     * given non-container property, if one is needed.
     * If not needed (no polymorphic handling configured for property), should return null.
     *<p>
     * Note that this method is only called for non-container bean properties,
     * and not for values in container types or root values (or container properties)
     *
     * @param baseType Declared base type of the value to deserializer (actual
     *    deserializer type will be this type or its subtype)
     * 
     * @return Type deserializer to use for given base type, if one is needed; null if not.
     */
    public TypeDeserializer findPropertyTypeDeserializer(DeserializationConfig config,
            JavaType baseType, AnnotatedMember annotated)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1503 = 1503;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1525_line_1503 = config;
		AnnotationIntrospector basic_deserializer_factory_1_expr219_line_1503 = p_config_1525_line_1503
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1503 = 1503;
		AnnotationIntrospector ai = basic_deserializer_factory_1_expr219_line_1503;
        int PROBE_START_LINE_1504 = 1504;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1528_line_1504 = ai;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1525_line_1504 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_annotated_1527_line_1504 = annotated;
		com.fasterxml.jackson.databind.JavaType p_base_type_1526_line_1504 = baseType;
		TypeResolverBuilder<?> basic_deserializer_factory_1_expr220_line_1504 = v_ai_1528_line_1504
				.findPropertyTypeResolver(p_config_1525_line_1504, p_annotated_1527_line_1504,
						p_base_type_1526_line_1504);
		int PROBE_END_LINE_1504 = 1504;
		TypeResolverBuilder<?> b = basic_deserializer_factory_1_expr220_line_1504;        
        int PROBE_START_LINE_1506 = 1508;
		TypeResolverBuilder<?> v_b_1529_line_1506 = b;
		boolean basic_deserializer_factory_1_expr221_line_1506 = v_b_1529_line_1506 == null;
		int PROBE_END_LINE_1506 = 1508;
		// Defaulting: if no annotations on member, check value class
        if (basic_deserializer_factory_1_expr221_line_1506) {
            int PROBE_START_LINE_1507 = 1507;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1525_line_1507 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1526_line_1507 = baseType;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr222_line_1507 = findTypeDeserializer(
					p_config_1525_line_1507, p_base_type_1526_line_1507);
			int PROBE_END_LINE_1507 = 1507;
			return basic_deserializer_factory_1_expr222_line_1507;
        }
        // but if annotations found, may need to resolve subtypes:
        Collection<NamedType> subtypes = config.getSubtypeResolver().collectAndResolveSubtypesByTypeId(
                config, annotated, baseType);
        return b.buildTypeDeserializer(config, baseType, subtypes);
    }
    
    /**
     * Method called to find and create a type information deserializer for values of
     * given container (list, array, map) property, if one is needed.
     * If not needed (no polymorphic handling configured for property), should return null.
     *<p>
     * Note that this method is only called for container bean properties,
     * and not for values in container types or root values (or non-container properties)
     * 
     * @param containerType Type of property; must be a container type
     * @param propertyEntity Field or method that contains container property
     */    
    public TypeDeserializer findPropertyContentTypeDeserializer(DeserializationConfig config,
            JavaType containerType, AnnotatedMember propertyEntity)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1530 = 1530;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1530_line_1530 = config;
		AnnotationIntrospector basic_deserializer_factory_1_expr223_line_1530 = p_config_1530_line_1530
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1530 = 1530;
		AnnotationIntrospector ai = basic_deserializer_factory_1_expr223_line_1530;
        int PROBE_START_LINE_1531 = 1531;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1533_line_1531 = ai;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1530_line_1531 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_property_entity_1532_line_1531 = propertyEntity;
		com.fasterxml.jackson.databind.JavaType p_container_type_1531_line_1531 = containerType;
		TypeResolverBuilder<?> basic_deserializer_factory_1_expr224_line_1531 = v_ai_1533_line_1531
				.findPropertyContentTypeResolver(p_config_1530_line_1531, p_property_entity_1532_line_1531,
						p_container_type_1531_line_1531);
		int PROBE_END_LINE_1531 = 1531;
		TypeResolverBuilder<?> b = basic_deserializer_factory_1_expr224_line_1531;        
        int PROBE_START_LINE_1532 = 1532;
		com.fasterxml.jackson.databind.JavaType p_container_type_1531_line_1532 = containerType;
		JavaType basic_deserializer_factory_1_expr225_line_1532 = p_container_type_1531_line_1532.getContentType();
		int PROBE_END_LINE_1532 = 1532;
		JavaType contentType = basic_deserializer_factory_1_expr225_line_1532;
        int PROBE_START_LINE_1534 = 1536;
		TypeResolverBuilder<?> v_b_1534_line_1534 = b;
		boolean basic_deserializer_factory_1_expr226_line_1534 = v_b_1534_line_1534 == null;
		int PROBE_END_LINE_1534 = 1536;
		// Defaulting: if no annotations on member, check class
        if (basic_deserializer_factory_1_expr226_line_1534) {
            int PROBE_START_LINE_1535 = 1535;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1530_line_1535 = config;
			com.fasterxml.jackson.databind.JavaType v_content_type_1535_line_1535 = contentType;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr227_line_1535 = findTypeDeserializer(
					p_config_1530_line_1535, v_content_type_1535_line_1535);
			int PROBE_END_LINE_1535 = 1535;
			return basic_deserializer_factory_1_expr227_line_1535;
        }
        // but if annotations found, may need to resolve subtypes:
        Collection<NamedType> subtypes = config.getSubtypeResolver().collectAndResolveSubtypesByTypeId(
                config, propertyEntity, contentType);
        return b.buildTypeDeserializer(config, contentType, subtypes);
    }

    /**
     * Helper method called to find one of default serializers for "well-known"
     * platform types: JDK-provided types, and small number of public Jackson
     * API types.
     * 
     * @since 2.2
     */
    public JsonDeserializer<?> findDefaultDeserializer(DeserializationContext ctxt,
            JavaType type, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1554 = 1554;
		com.fasterxml.jackson.databind.JavaType p_type_1537_line_1554 = type;
		Class<?> basic_deserializer_factory_1_expr228_line_1554 = p_type_1537_line_1554.getRawClass();
		int PROBE_END_LINE_1554 = 1554;
		Class<?> rawType = basic_deserializer_factory_1_expr228_line_1554;
        int PROBE_START_LINE_1556 = 1568;
		Class<?> v_raw_type_1539_line_1556 = rawType;
		Class<?> f_class_object_1366_line_1556 = CLASS_OBJECT;
		boolean basic_deserializer_factory_1_expr229_line_1556 = v_raw_type_1539_line_1556 == f_class_object_1366_line_1556;
		int PROBE_END_LINE_1556 = 1568;
		// Object ("untyped"), String equivalents:
        if (basic_deserializer_factory_1_expr229_line_1556) {
            // 11-Feb-2015, tatu: As per [databind#700] need to be careful wrt non-default Map, List.
            DeserializationConfig config = ctxt.getConfig();
            JavaType lt, mt;
            
            if (_factoryConfig.hasAbstractTypeResolvers()) {
                lt = _findRemappedType(config, List.class);
                mt = _findRemappedType(config, Map.class);
            } else {
                lt = mt = null;
            }
            return new UntypedObjectDeserializer(lt, mt);
        }
        int PROBE_START_LINE_1569 = 1571;
		Class<?> v_raw_type_1539_line_1569 = rawType;
		Class<?> f_class_string_1367_line_1569 = CLASS_STRING;
		boolean basic_deserializer_factory_1_expr231_line_1569 = v_raw_type_1539_line_1569 == f_class_string_1367_line_1569;
		boolean basic_deserializer_factory_1_expr232_line_1569 = false;
		if (!basic_deserializer_factory_1_expr231_line_1569) {
			Class<?> v_raw_type_1539_line_1569_v1 = rawType;
			Class<?> f_class_char_buffer_1368_line_1569 = CLASS_CHAR_BUFFER;
			basic_deserializer_factory_1_expr232_line_1569 = v_raw_type_1539_line_1569_v1 == f_class_char_buffer_1368_line_1569;
		}
		boolean basic_deserializer_factory_1_expr230_line_1569 = basic_deserializer_factory_1_expr231_line_1569
				|| basic_deserializer_factory_1_expr232_line_1569;
		int PROBE_END_LINE_1569 = 1571;
		if (basic_deserializer_factory_1_expr230_line_1569) {
            return StringDeserializer.instance;
        }
        int PROBE_START_LINE_1572 = 1580;
		Class<?> v_raw_type_1539_line_1572 = rawType;
		Class<?> f_class_iterable_1369_line_1572 = CLASS_ITERABLE;
		boolean basic_deserializer_factory_1_expr233_line_1572 = v_raw_type_1539_line_1572 == f_class_iterable_1369_line_1572;
		int PROBE_END_LINE_1572 = 1580;
		if (basic_deserializer_factory_1_expr233_line_1572) {
            // [databind#199]: Can and should 'upgrade' to a Collection type:
            TypeFactory tf = ctxt.getTypeFactory();
            JavaType[] tps = tf.findTypeParameters(type, CLASS_ITERABLE);
            JavaType elemType = (tps == null || tps.length != 1) ? TypeFactory.unknownType() : tps[0];
            CollectionType ct = tf.constructCollectionType(Collection.class, elemType);
            // Should we re-introspect beanDesc? For now let's not...
            return createCollectionDeserializer(ctxt, ct, beanDesc);
        }
        int PROBE_START_LINE_1581 = 1598;
		Class<?> v_raw_type_1539_line_1581 = rawType;
		Class<?> f_class_map_entry_1370_line_1581 = CLASS_MAP_ENTRY;
		boolean basic_deserializer_factory_1_expr234_line_1581 = v_raw_type_1539_line_1581 == f_class_map_entry_1370_line_1581;
		int PROBE_END_LINE_1581 = 1598;
		if (basic_deserializer_factory_1_expr234_line_1581) {
            // 28-Apr-2015, tatu: TypeFactory does it all for us already so
            JavaType kt = type.containedType(0);
            if (kt == null) {
                kt = TypeFactory.unknownType();
            }
            JavaType vt = type.containedType(1);
            if (vt == null) {
                vt = TypeFactory.unknownType();
            }
            TypeDeserializer vts = (TypeDeserializer) vt.getTypeHandler();
            if (vts == null) {
                vts = findTypeDeserializer(ctxt.getConfig(), vt);
            }
            JsonDeserializer<Object> valueDeser = vt.getValueHandler();
            KeyDeserializer keyDes = (KeyDeserializer) kt.getValueHandler();
            return new MapEntryDeserializer(type, keyDes, valueDeser, vts);
        }
        int PROBE_START_LINE_1599 = 1599;
		Class<?> v_raw_type_1539_line_1599 = rawType;
		String basic_deserializer_factory_1_expr235_line_1599 = v_raw_type_1539_line_1599.getName();
		int PROBE_END_LINE_1599 = 1599;
		String clsName = basic_deserializer_factory_1_expr235_line_1599;
        int PROBE_START_LINE_1600 = 1609;
		Class<?> v_raw_type_1539_line_1600 = rawType;
		boolean basic_deserializer_factory_1_expr237_line_1600 = v_raw_type_1539_line_1600.isPrimitive();
		boolean basic_deserializer_factory_1_expr238_line_1600 = false;
		if (!basic_deserializer_factory_1_expr237_line_1600) {
			String v_cls_name_1540_line_1600 = clsName;
			basic_deserializer_factory_1_expr238_line_1600 = v_cls_name_1540_line_1600.startsWith("java.");
		}
		boolean basic_deserializer_factory_1_expr236_line_1600 = basic_deserializer_factory_1_expr237_line_1600
				|| basic_deserializer_factory_1_expr238_line_1600;
		int PROBE_END_LINE_1600 = 1609;
		if (basic_deserializer_factory_1_expr236_line_1600) {
            // Primitives/wrappers, other Numbers:
            JsonDeserializer<?> deser = NumberDeserializers.find(rawType, clsName);
            if (deser == null) {
                deser = DateDeserializers.find(rawType, clsName);
            }
            if (deser != null) {
                return deser;
            }
        }
        int PROBE_START_LINE_1611 = 1613;
		Class<?> v_raw_type_1539_line_1611 = rawType;
		boolean basic_deserializer_factory_1_expr239_line_1611 = v_raw_type_1539_line_1611 == TokenBuffer.class;
		int PROBE_END_LINE_1611 = 1613;
		// and a few Jackson types as well:
        if (basic_deserializer_factory_1_expr239_line_1611) {
            return new TokenBufferDeserializer();
        }
        int PROBE_START_LINE_1614 = 1614;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1536_line_1614 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1537_line_1614 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1538_line_1614 = beanDesc;
		JsonDeserializer<?> basic_deserializer_factory_1_expr241_line_1614 = findOptionalStdDeserializer(
				p_ctxt_1536_line_1614, p_type_1537_line_1614, p_bean_desc_1538_line_1614);
		int PROBE_END_LINE_1614 = 1614;
		JsonDeserializer<?> deser = basic_deserializer_factory_1_expr241_line_1614;
        int PROBE_START_LINE_1615 = 1617;
		JsonDeserializer<?> v_deser_1541_line_1615 = deser;
		boolean basic_deserializer_factory_1_expr242_line_1615 = v_deser_1541_line_1615 != null;
		int PROBE_END_LINE_1615 = 1617;
		if (basic_deserializer_factory_1_expr242_line_1615) {
            return deser;
        }
        int PROBE_START_LINE_1618 = 1618;
		Class<?> v_raw_type_1539_line_1618 = rawType;
		String v_cls_name_1540_line_1618 = clsName;
		JsonDeserializer<?> basic_deserializer_factory_1_expr243_line_1618 = JdkDeserializers
				.find(v_raw_type_1539_line_1618, v_cls_name_1540_line_1618);
		int PROBE_END_LINE_1618 = 1618;
		return basic_deserializer_factory_1_expr243_line_1618;
    }

    protected JavaType _findRemappedType(DeserializationConfig config, Class<?> rawType) throws JsonMappingException {
        JavaType type = mapAbstractType(config, config.constructType(rawType));
        return (type == null || type.hasRawClass(rawType)) ? null : type;
    }

    /*
    /**********************************************************
    /* Helper methods, finding custom deserializers
    /**********************************************************
     */

    protected JsonDeserializer<?> _findCustomTreeNodeDeserializer(Class<? extends JsonNode> type,
            DeserializationConfig config, BeanDescription beanDesc)
        throws JsonMappingException
    {
        for (Deserializers d  : _factoryConfig.deserializers()) {
            JsonDeserializer<?> deser = d.findTreeNodeDeserializer(type, config, beanDesc);
            if (deser != null) {
                return deser;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomReferenceDeserializer(ReferenceType type,
            DeserializationConfig config, BeanDescription beanDesc,
            TypeDeserializer contentTypeDeserializer, JsonDeserializer<?> contentDeserializer)
        throws JsonMappingException
    {
        for (Deserializers d  : _factoryConfig.deserializers()) {
            JsonDeserializer<?> deser = d.findReferenceDeserializer(type, config, beanDesc,
                    contentTypeDeserializer, contentDeserializer);
            if (deser != null) {
                return deser;
            }
        }
        return null;
    }

    @SuppressWarnings("unchecked")
    protected JsonDeserializer<Object> _findCustomBeanDeserializer(JavaType type,
            DeserializationConfig config, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1665 = 1670;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_1665 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.deser.Deserializers> basic_deserializer_factory_1_expr244_line_1665 = f__factory_config_1375_line_1665
				.deserializers();
		int PROBE_END_LINE_1665 = 1670;
		for (Deserializers d  : basic_deserializer_factory_1_expr244_line_1665) {
            JsonDeserializer<?> deser = d.findBeanDeserializer(type, config, beanDesc);
            if (deser != null) {
                return (JsonDeserializer<Object>) deser;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomArrayDeserializer(ArrayType type,
            DeserializationConfig config, BeanDescription beanDesc,
            TypeDeserializer elementTypeDeserializer, JsonDeserializer<?> elementDeserializer)
        throws JsonMappingException
    {
        for (Deserializers d  : _factoryConfig.deserializers()) {
            JsonDeserializer<?> deser = d.findArrayDeserializer(type, config,
                    beanDesc, elementTypeDeserializer, elementDeserializer);
            if (deser != null) {
                return deser;
            }
        }
        return null;
    }
    
    protected JsonDeserializer<?> _findCustomCollectionDeserializer(CollectionType type,
            DeserializationConfig config, BeanDescription beanDesc,
            TypeDeserializer elementTypeDeserializer, JsonDeserializer<?> elementDeserializer)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1694 = 1700;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1375_line_1694 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.deser.Deserializers> basic_deserializer_factory_1_expr245_line_1694 = f__factory_config_1375_line_1694
				.deserializers();
		int PROBE_END_LINE_1694 = 1700;
		for (Deserializers d  : basic_deserializer_factory_1_expr245_line_1694) {
            JsonDeserializer<?> deser = d.findCollectionDeserializer(type, config, beanDesc,
                    elementTypeDeserializer, elementDeserializer);
            if (deser != null) {
                return deser;
            }
        }
        return null;
    }
    
    protected JsonDeserializer<?> _findCustomCollectionLikeDeserializer(CollectionLikeType type,
            DeserializationConfig config, BeanDescription beanDesc,
            TypeDeserializer elementTypeDeserializer, JsonDeserializer<?> elementDeserializer)
        throws JsonMappingException
    {
        for (Deserializers d  : _factoryConfig.deserializers()) {
            JsonDeserializer<?> deser = d.findCollectionLikeDeserializer(type, config, beanDesc,
                    elementTypeDeserializer, elementDeserializer);
            if (deser != null) {
                return deser;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomEnumDeserializer(Class<?> type,
            DeserializationConfig config, BeanDescription beanDesc)
        throws JsonMappingException
    {
        for (Deserializers d  : _factoryConfig.deserializers()) {
            JsonDeserializer<?> deser = d.findEnumDeserializer(type, config, beanDesc);
            if (deser != null) {
                return deser;
            }
        }
        return null;
    }
    
    protected JsonDeserializer<?> _findCustomMapDeserializer(MapType type,
            DeserializationConfig config, BeanDescription beanDesc,
            KeyDeserializer keyDeserializer,
            TypeDeserializer elementTypeDeserializer, JsonDeserializer<?> elementDeserializer)
        throws JsonMappingException
    {
        for (Deserializers d  : _factoryConfig.deserializers()) {
            JsonDeserializer<?> deser = d.findMapDeserializer(type, config, beanDesc,
                    keyDeserializer, elementTypeDeserializer, elementDeserializer);
            if (deser != null) {
                return deser;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapLikeDeserializer(MapLikeType type,
            DeserializationConfig config, BeanDescription beanDesc,
            KeyDeserializer keyDeserializer,
            TypeDeserializer elementTypeDeserializer, JsonDeserializer<?> elementDeserializer)
        throws JsonMappingException
    {
        for (Deserializers d  : _factoryConfig.deserializers()) {
            JsonDeserializer<?> deser = d.findMapLikeDeserializer(type, config, beanDesc,
                    keyDeserializer, elementTypeDeserializer, elementDeserializer);
            if (deser != null) {
                return deser;
            }
        }
        return null;
    }

    /*
    /**********************************************************
    /* Helper methods, value/content/key type introspection
    /**********************************************************
     */
    
    /**
     * Helper method called to check if a class or method
     * has annotation that tells which class to use for deserialization; and if
     * so, to instantiate, that deserializer to use.
     * Note that deserializer will NOT yet be contextualized so caller needs to
     * take care to call contextualization appropriately.
     * Returns null if no such annotation found.
     */
    protected JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext ctxt,
            Annotated ann)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1782 = 1782;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1587_line_1782 = ctxt;
		AnnotationIntrospector basic_deserializer_factory_1_expr246_line_1782 = p_ctxt_1587_line_1782
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1782 = 1782;
		AnnotationIntrospector intr = basic_deserializer_factory_1_expr246_line_1782;
        int PROBE_START_LINE_1783 = 1788;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1589_line_1783 = intr;
		boolean basic_deserializer_factory_1_expr247_line_1783 = v_intr_1589_line_1783 != null;
		int PROBE_END_LINE_1783 = 1788;
		if (basic_deserializer_factory_1_expr247_line_1783) {
            int PROBE_START_LINE_1784 = 1784;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1589_line_1784 = intr;
			com.fasterxml.jackson.databind.introspect.Annotated p_ann_1588_line_1784 = ann;
			Object basic_deserializer_factory_1_expr248_line_1784 = v_intr_1589_line_1784
					.findDeserializer(p_ann_1588_line_1784);
			int PROBE_END_LINE_1784 = 1784;
			Object deserDef = basic_deserializer_factory_1_expr248_line_1784;
            int PROBE_START_LINE_1785 = 1787;
			Object v_deser_def_1590_line_1785 = deserDef;
			boolean basic_deserializer_factory_1_expr249_line_1785 = v_deser_def_1590_line_1785 != null;
			int PROBE_END_LINE_1785 = 1787;
			if (basic_deserializer_factory_1_expr249_line_1785) {
                return ctxt.deserializerInstance(ann, deserDef);
            }
        }
        return null;
    }

    /**
     * Helper method called to check if a class or method
     * has annotation that tells which class to use for deserialization.
     * Returns null if no such annotation found.
     */
    protected KeyDeserializer findKeyDeserializerFromAnnotation(DeserializationContext ctxt,
            Annotated ann)
            throws JsonMappingException
    {
        AnnotationIntrospector intr = ctxt.getAnnotationIntrospector();
        if (intr != null) {
            Object deserDef = intr.findKeyDeserializer(ann);
            if (deserDef != null) {
                return ctxt.keyDeserializerInstance(ann, deserDef);
            }
        }
        return null;
    }

    /**
     * Helper method used to resolve additional type-related annotation information
     * like type overrides, or handler (serializer, deserializer) overrides,
     * so that from declared field, property or constructor parameter type
     * is used as the base and modified based on annotations, if any.
     * 
     * @since 2.8 Combines functionality of <code>modifyTypeByAnnotation</code>
     *     and <code>resolveType</code>
     */
    protected JavaType resolveMemberAndTypeAnnotations(DeserializationContext ctxt,
            AnnotatedMember member, JavaType type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1824 = 1824;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1593_line_1824 = ctxt;
		AnnotationIntrospector basic_deserializer_factory_1_expr250_line_1824 = p_ctxt_1593_line_1824
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1824 = 1824;
		AnnotationIntrospector intr = basic_deserializer_factory_1_expr250_line_1824;
        int PROBE_START_LINE_1825 = 1827;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1596_line_1825 = intr;
		boolean basic_deserializer_factory_1_expr251_line_1825 = v_intr_1596_line_1825 == null;
		int PROBE_END_LINE_1825 = 1827;
		if (basic_deserializer_factory_1_expr251_line_1825) {
            return type;
        }

        // First things first: see if we can find annotations on declared
        // type

        int PROBE_START_LINE_1832 = 1842;
		com.fasterxml.jackson.databind.JavaType p_type_1595_line_1832 = type;
		boolean basic_deserializer_factory_1_expr252_line_1832 = p_type_1595_line_1832.isMapLikeType();
		int PROBE_END_LINE_1832 = 1842;
		if (basic_deserializer_factory_1_expr252_line_1832) {
            JavaType keyType = type.getKeyType();
            if (keyType != null) {
                Object kdDef = intr.findKeyDeserializer(member);
                KeyDeserializer kd = ctxt.keyDeserializerInstance(member, kdDef);
                if (kd != null) {
                    type = ((MapLikeType) type).withKeyValueHandler(kd);
                    keyType = type.getKeyType(); // just in case it's used below
                }
            }
        }

        int PROBE_START_LINE_1844 = 1855;
		com.fasterxml.jackson.databind.JavaType p_type_1595_line_1844 = type;
		boolean basic_deserializer_factory_1_expr253_line_1844 = p_type_1595_line_1844.hasContentType();
		int PROBE_END_LINE_1844 = 1855;
		if (basic_deserializer_factory_1_expr253_line_1844) { // that is, is either container- or reference-type
            int PROBE_START_LINE_1845 = 1845;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1596_line_1845 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_1594_line_1845 = member;
			Object basic_deserializer_factory_1_expr254_line_1845 = v_intr_1596_line_1845
					.findContentDeserializer(p_member_1594_line_1845);
			int PROBE_END_LINE_1845 = 1845;
			Object cdDef = basic_deserializer_factory_1_expr254_line_1845;
            int PROBE_START_LINE_1846 = 1846;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1593_line_1846 = ctxt;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_1594_line_1846 = member;
			Object v_cd_def_1597_line_1846 = cdDef;
			JsonDeserializer<?> basic_deserializer_factory_1_expr255_line_1846 = p_ctxt_1593_line_1846
					.deserializerInstance(p_member_1594_line_1846, v_cd_def_1597_line_1846);
			int PROBE_END_LINE_1846 = 1846;
			JsonDeserializer<?> cd = basic_deserializer_factory_1_expr255_line_1846;
            int PROBE_START_LINE_1847 = 1849;
			JsonDeserializer<?> v_cd_1598_line_1847 = cd;
			boolean basic_deserializer_factory_1_expr256_line_1847 = v_cd_1598_line_1847 != null;
			int PROBE_END_LINE_1847 = 1849;
			if (basic_deserializer_factory_1_expr256_line_1847) {
                type = type.withContentValueHandler(cd);
            }
            int PROBE_START_LINE_1850 = 1851;
			TypeDeserializer basic_deserializer_factory_1_expr257_line_1850 = findPropertyContentTypeDeserializer(
					ctxt.getConfig(), type, (AnnotatedMember) member);
			int PROBE_END_LINE_1850 = 1851;
			TypeDeserializer contentTypeDeser = basic_deserializer_factory_1_expr257_line_1850;            	
            int PROBE_START_LINE_1852 = 1854;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1599_line_1852 = contentTypeDeser;
			boolean basic_deserializer_factory_1_expr260_line_1852 = v_content_type_deser_1599_line_1852 != null;
			int PROBE_END_LINE_1852 = 1854;
			if (basic_deserializer_factory_1_expr260_line_1852) {
                int PROBE_START_LINE_1853 = 1853;
				com.fasterxml.jackson.databind.JavaType p_type_1595_line_1853 = type;
				com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1599_line_1853 = contentTypeDeser;
				com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr262_line_1853 = p_type_1595_line_1853
						.withContentTypeHandler(v_content_type_deser_1599_line_1853);
				int PROBE_END_LINE_1853 = 1853;
				type = basic_deserializer_factory_1_expr262_line_1853;
            }
        }
        int PROBE_START_LINE_1856 = 1857;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1593_line_1856 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr264_line_1856 = p_ctxt_1593_line_1856
				.getConfig();
		TypeDeserializer basic_deserializer_factory_1_expr263_line_1856 = findPropertyTypeDeserializer(
				basic_deserializer_factory_1_expr264_line_1856, type, (AnnotatedMember) member);
		int PROBE_END_LINE_1856 = 1857;
		TypeDeserializer valueTypeDeser = basic_deserializer_factory_1_expr263_line_1856;
        int PROBE_START_LINE_1858 = 1860;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_value_type_deser_1600_line_1858 = valueTypeDeser;
		boolean basic_deserializer_factory_1_expr266_line_1858 = v_value_type_deser_1600_line_1858 != null;
		int PROBE_END_LINE_1858 = 1860;
		if (basic_deserializer_factory_1_expr266_line_1858) {
            int PROBE_START_LINE_1859 = 1859;
			com.fasterxml.jackson.databind.JavaType p_type_1595_line_1859 = type;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_value_type_deser_1600_line_1859 = valueTypeDeser;
			com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr268_line_1859 = p_type_1595_line_1859
					.withTypeHandler(v_value_type_deser_1600_line_1859);
			int PROBE_END_LINE_1859 = 1859;
			type = basic_deserializer_factory_1_expr268_line_1859;
        }

        // Second part: find actual type-override annotations on member, if any

        int PROBE_START_LINE_1867 = 1867;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1596_line_1867 = intr;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1593_line_1867 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr271_line_1867 = p_ctxt_1593_line_1867
				.getConfig();
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_1594_line_1867 = member;
		com.fasterxml.jackson.databind.JavaType p_type_1595_line_1867 = type;
		com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr270_line_1867 = v_intr_1596_line_1867
				.refineDeserializationType(basic_deserializer_factory_1_expr271_line_1867, p_member_1594_line_1867,
						p_type_1595_line_1867);
		int PROBE_END_LINE_1867 = 1867;
		// 18-Jun-2016, tatu: Should we re-do checks for annotations on refined
        //   subtypes as well? Code pre-2.8 did not do this, but if we get bug
        //   reports may need to consider
        type = basic_deserializer_factory_1_expr270_line_1867;
        int PROBE_START_LINE_1868 = 1868;
		com.fasterxml.jackson.databind.JavaType p_type_1595_line_1868 = type;
		int PROBE_END_LINE_1868 = 1868;
		return p_type_1595_line_1868;
    }

    protected EnumResolver constructEnumResolver(Class<?> enumClass,
            DeserializationConfig config, AnnotatedMethod jsonValueMethod)
    {
        if (jsonValueMethod != null) {
            Method accessor = jsonValueMethod.getAnnotated();
            if (config.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(accessor, config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            return EnumResolver.constructUnsafeUsingMethod(enumClass, accessor, config.getAnnotationIntrospector());
        }
        // 14-Mar-2016, tatu: We used to check `DeserializationFeature.READ_ENUMS_USING_TO_STRING`
        //   here, but that won't do: it must be dynamically changeable...
        return EnumResolver.constructUnsafe(enumClass, config.getAnnotationIntrospector());
    }

    /*
    /**********************************************************
    /* Deprecated helper methods
    /**********************************************************
     */
    
    /**
     * Method called to see if given method has annotations that indicate
     * a more specific type than what the argument specifies.
     *
     * @deprecated Since 2.8; call {@link #resolveMemberAndTypeAnnotations} instead
     */
    @Deprecated
    protected JavaType modifyTypeByAnnotation(DeserializationContext ctxt,
            Annotated a, JavaType type)
        throws JsonMappingException
    {
        AnnotationIntrospector intr = ctxt.getAnnotationIntrospector();
        if (intr == null) {
            return type;
        }

        // First, deserializers for key/value types?
        /*
        if (type.isMapLikeType()) {
            JavaType keyType = type.getKeyType();
            // 21-Mar-2011, tatu: ... and associated deserializer too (unless already assigned)
            //  (not 100% why or how, but this does seem to get called more than once, which
            //   is not good: for now, let's just avoid errors)
            if (keyType != null && keyType.getValueHandler() == null) {
                Object kdDef = intr.findKeyDeserializer(a);
                KeyDeserializer kd = ctxt.keyDeserializerInstance(a, kdDef);
                if (kd != null) {
                    type = (T) ((MapLikeType) type).withKeyValueHandler(kd);
                    keyType = type.getKeyType(); // just in case it's used below
                }
            }            
        }
        JavaType contentType = type.getContentType();
        if (contentType != null) {
           // ... as well as deserializer for contents:
           if (contentType.getValueHandler() == null) { // as with above, avoid resetting (which would trigger exception)
               Object cdDef = intr.findContentDeserializer(a);
                JsonDeserializer<?> cd = ctxt.deserializerInstance(a, cdDef);
                if (cd != null) {
                    type = (T) type.withContentValueHandler(cd);
                }
            }
        }
        */
        // then: type refinement(s)?
        return intr.refineDeserializationType(ctxt.getConfig(), a, type);
    }

    /**
     * @deprecated since 2.8 call {@link #resolveMemberAndTypeAnnotations} instead.
     */
    @Deprecated // since 2.8
    protected JavaType resolveType(DeserializationContext ctxt,
            BeanDescription beanDesc, JavaType type, AnnotatedMember member)
        throws JsonMappingException
    {
        return resolveMemberAndTypeAnnotations(ctxt, member, type);
    }

    /**
     * @deprecated since 2.8 call <code>findJsonValueMethod</code> on {@link BeanDescription} instead
     */
    @Deprecated // not used, possibly remove as early as 2.9
    protected AnnotatedMethod _findJsonValueFor(DeserializationConfig config, JavaType enumType)
    {
        if (enumType == null) {
            return null;
        }
        BeanDescription beanDesc = config.introspect(enumType);
        return beanDesc.findJsonValueMethod();
    }
}
