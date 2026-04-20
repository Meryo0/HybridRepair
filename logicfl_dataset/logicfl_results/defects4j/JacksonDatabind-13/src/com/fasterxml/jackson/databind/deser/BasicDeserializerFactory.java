package com.fasterxml.jackson.databind.deser;

import java.lang.reflect.Method;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicReference;

import com.fasterxml.jackson.annotation.JsonCreator;
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
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import java.util.Iterator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Collection;
import java.util.HashMap;
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
        int PROBE_START_LINE_61 = 61;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1216_line_61 = _mapFallbacks;
		String basic_deserializer_factory_1_expr9_line_61 = Map.class.getName();
		int PROBE_END_LINE_61 = 61;
		f__map_fallbacks_1216_line_61.put(basic_deserializer_factory_1_expr9_line_61, LinkedHashMap.class);
        int PROBE_START_LINE_62 = 62;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1216_line_62 = _mapFallbacks;
		String basic_deserializer_factory_1_expr13_line_62 = ConcurrentMap.class.getName();
		int PROBE_END_LINE_62 = 62;
		f__map_fallbacks_1216_line_62.put(basic_deserializer_factory_1_expr13_line_62, ConcurrentHashMap.class);
        int PROBE_START_LINE_63 = 63;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1216_line_63 = _mapFallbacks;
		String basic_deserializer_factory_1_expr17_line_63 = SortedMap.class.getName();
		int PROBE_END_LINE_63 = 63;
		f__map_fallbacks_1216_line_63.put(basic_deserializer_factory_1_expr17_line_63, TreeMap.class);

        int PROBE_START_LINE_65 = 65;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1216_line_65 = _mapFallbacks;
		String basic_deserializer_factory_1_expr21_line_65 = java.util.NavigableMap.class.getName();
		int PROBE_END_LINE_65 = 65;
		f__map_fallbacks_1216_line_65.put(basic_deserializer_factory_1_expr21_line_65, TreeMap.class);
        int PROBE_START_LINE_66 = 67;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1216_line_66 = _mapFallbacks;
		String basic_deserializer_factory_1_expr25_line_66 = java.util.concurrent.ConcurrentNavigableMap.class
				.getName();
		int PROBE_END_LINE_66 = 67;
		f__map_fallbacks_1216_line_66.put(basic_deserializer_factory_1_expr25_line_66,
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
        int PROBE_START_LINE_78 = 78;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1217_line_78 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr30_line_78 = Collection.class.getName();
		int PROBE_END_LINE_78 = 78;
		f__collection_fallbacks_1217_line_78.put(basic_deserializer_factory_1_expr30_line_78, ArrayList.class);
        int PROBE_START_LINE_79 = 79;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1217_line_79 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr34_line_79 = List.class.getName();
		int PROBE_END_LINE_79 = 79;
		f__collection_fallbacks_1217_line_79.put(basic_deserializer_factory_1_expr34_line_79, ArrayList.class);
        int PROBE_START_LINE_80 = 80;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1217_line_80 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr38_line_80 = Set.class.getName();
		int PROBE_END_LINE_80 = 80;
		f__collection_fallbacks_1217_line_80.put(basic_deserializer_factory_1_expr38_line_80, HashSet.class);
        int PROBE_START_LINE_81 = 81;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1217_line_81 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr42_line_81 = SortedSet.class.getName();
		int PROBE_END_LINE_81 = 81;
		f__collection_fallbacks_1217_line_81.put(basic_deserializer_factory_1_expr42_line_81, TreeSet.class);
        int PROBE_START_LINE_82 = 82;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1217_line_82 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr46_line_82 = Queue.class.getName();
		int PROBE_END_LINE_82 = 82;
		f__collection_fallbacks_1217_line_82.put(basic_deserializer_factory_1_expr46_line_82, LinkedList.class);

        int PROBE_START_LINE_89 = 89;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1217_line_89 = _collectionFallbacks;
		int PROBE_END_LINE_89 = 89;
		// then 1.6 types:
        /* 17-May-2013, tatu: [Issue#216] Should be fine to use straight Class references EXCEPT
         *   that some godforsaken platforms (... looking at you, Android) do not
         *   include these. So, use "soft" references...
         */
        f__collection_fallbacks_1217_line_89.put("java.util.Deque", LinkedList.class);
        int PROBE_START_LINE_90 = 90;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1217_line_90 = _collectionFallbacks;
		int PROBE_END_LINE_90 = 90;
		f__collection_fallbacks_1217_line_90.put("java.util.NavigableSet", TreeSet.class);
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
        int PROBE_START_LINE_112 = 112;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig p_config_1218_line_112 = config;
		int PROBE_END_LINE_112 = 112;
		_factoryConfig = p_config_1218_line_112;
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
    /* JsonDeserializerFactory impl (partial): type mappings
    /**********************************************************
     */

    @Override
    public JavaType mapAbstractType(DeserializationConfig config, JavaType type)
        throws JsonMappingException
    {
        // first, general mappings
        while (true) {
            int PROBE_START_LINE_191 = 191;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1226_line_191 = config;
			com.fasterxml.jackson.databind.JavaType p_type_1227_line_191 = type;
			JavaType basic_deserializer_factory_1_expr54_line_191 = _mapAbstractType2(p_config_1226_line_191,
					p_type_1227_line_191);
			int PROBE_END_LINE_191 = 191;
			JavaType next = basic_deserializer_factory_1_expr54_line_191;
            int PROBE_START_LINE_192 = 194;
			com.fasterxml.jackson.databind.JavaType v_next_1228_line_192 = next;
			boolean basic_deserializer_factory_1_expr55_line_192 = v_next_1228_line_192 == null;
			int PROBE_END_LINE_192 = 194;
			if (basic_deserializer_factory_1_expr55_line_192) {
                int PROBE_START_LINE_193 = 193;
				com.fasterxml.jackson.databind.JavaType p_type_1227_line_193 = type;
				int PROBE_END_LINE_193 = 193;
				return p_type_1227_line_193;
            }
            /* Should not have to worry about cycles; but better verify since they will invariably
             * occur... :-)
             * (also: guard against invalid resolution to a non-related type)
             */
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
        int PROBE_START_LINE_215 = 215;
		com.fasterxml.jackson.databind.JavaType p_type_1230_line_215 = type;
		Class<?> basic_deserializer_factory_1_expr56_line_215 = p_type_1230_line_215.getRawClass();
		int PROBE_END_LINE_215 = 215;
		Class<?> currClass = basic_deserializer_factory_1_expr56_line_215;
        int PROBE_START_LINE_216 = 223;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1219_line_216 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr57_line_216 = f__factory_config_1219_line_216
				.hasAbstractTypeResolvers();
		int PROBE_END_LINE_216 = 223;
		if (basic_deserializer_factory_1_expr57_line_216) {
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
        int PROBE_START_LINE_243 = 243;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1232_line_243 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr58_line_243 = p_ctxt_1232_line_243.getConfig();
		int PROBE_END_LINE_243 = 243;
		final DeserializationConfig config = basic_deserializer_factory_1_expr58_line_243;

        ValueInstantiator instantiator = null;
        int PROBE_START_LINE_247 = 247;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1233_line_247 = beanDesc;
		AnnotatedClass basic_deserializer_factory_1_expr59_line_247 = p_bean_desc_1233_line_247.getClassInfo();
		int PROBE_END_LINE_247 = 247;
		// [JACKSON-633] Check @JsonValueInstantiator before anything else
        AnnotatedClass ac = basic_deserializer_factory_1_expr59_line_247;
        int PROBE_START_LINE_248 = 248;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1232_line_248 = ctxt;
		com.fasterxml.jackson.databind.AnnotationIntrospector basic_deserializer_factory_1_expr61_line_248 = p_ctxt_1232_line_248
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1236_line_248 = ac;
		Object basic_deserializer_factory_1_expr60_line_248 = basic_deserializer_factory_1_expr61_line_248
				.findValueInstantiator(v_ac_1236_line_248);
		int PROBE_END_LINE_248 = 248;
		Object instDef = basic_deserializer_factory_1_expr60_line_248;
        int PROBE_START_LINE_249 = 251;
		Object v_inst_def_1237_line_249 = instDef;
		boolean basic_deserializer_factory_1_expr62_line_249 = v_inst_def_1237_line_249 != null;
		int PROBE_END_LINE_249 = 251;
		if (basic_deserializer_factory_1_expr62_line_249) {
            instantiator = _valueInstantiatorInstance(config, ac, instDef);
        }
        int PROBE_START_LINE_252 = 260;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1235_line_252 = instantiator;
		boolean basic_deserializer_factory_1_expr63_line_252 = v_instantiator_1235_line_252 == null;
		int PROBE_END_LINE_252 = 260;
		if (basic_deserializer_factory_1_expr63_line_252) {
            int PROBE_START_LINE_256 = 256;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_1234_line_256 = config;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1233_line_256 = beanDesc;
			com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr65_line_256 = _findStdValueInstantiator(
					v_config_1234_line_256, p_bean_desc_1233_line_256);
			int PROBE_END_LINE_256 = 256;
			/* Second: see if some of standard Jackson/JDK types might provide value
             * instantiators.
             */
            instantiator = basic_deserializer_factory_1_expr65_line_256;
            int PROBE_START_LINE_257 = 259;
			com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1235_line_257 = instantiator;
			boolean basic_deserializer_factory_1_expr66_line_257 = v_instantiator_1235_line_257 == null;
			int PROBE_END_LINE_257 = 259;
			if (basic_deserializer_factory_1_expr66_line_257) {
                int PROBE_START_LINE_258 = 258;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1232_line_258 = ctxt;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1233_line_258 = beanDesc;
				com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr68_line_258 = _constructDefaultValueInstantiator(
						p_ctxt_1232_line_258, p_bean_desc_1233_line_258);
				int PROBE_END_LINE_258 = 258;
				instantiator = basic_deserializer_factory_1_expr68_line_258;
            }
        }
        
        int PROBE_START_LINE_263 = 272;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1219_line_263 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr69_line_263 = f__factory_config_1219_line_263.hasValueInstantiators();
		int PROBE_END_LINE_263 = 272;
		// finally: anyone want to modify ValueInstantiator?
        if (basic_deserializer_factory_1_expr69_line_263) {
            for (ValueInstantiators insts : _factoryConfig.valueInstantiators()) {
                instantiator = insts.findValueInstantiator(config, beanDesc, instantiator);
                // let's do sanity check; easier to spot buggy handlers
                if (instantiator == null) {
                    throw new JsonMappingException("Broken registered ValueInstantiators (of type "
                            +insts.getClass().getName()+"): returned null ValueInstantiator");
                }
            }
        }

        int PROBE_START_LINE_275 = 279;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1235_line_275 = instantiator;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter basic_deserializer_factory_1_expr71_line_275 = v_instantiator_1235_line_275
				.getIncompleteParameter();
		boolean basic_deserializer_factory_1_expr70_line_275 = basic_deserializer_factory_1_expr71_line_275 != null;
		int PROBE_END_LINE_275 = 279;
		// Sanity check: does the chosen instantatior have incomplete creators?
        if (basic_deserializer_factory_1_expr70_line_275) {
            final AnnotatedParameter nonAnnotatedParam = instantiator.getIncompleteParameter();
            final AnnotatedWithParams ctor = nonAnnotatedParam.getOwner();
            throw new IllegalArgumentException("Argument #"+nonAnnotatedParam.getIndex()+" of constructor "+ctor+" has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
        }

        int PROBE_START_LINE_281 = 281;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1235_line_281 = instantiator;
		int PROBE_END_LINE_281 = 281;
		return v_instantiator_1235_line_281;
    }

    private ValueInstantiator _findStdValueInstantiator(DeserializationConfig config,
            BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_288 = 290;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1239_line_288 = beanDesc;
		Class<?> basic_deserializer_factory_1_expr73_line_288 = p_bean_desc_1239_line_288.getBeanClass();
		boolean basic_deserializer_factory_1_expr72_line_288 = basic_deserializer_factory_1_expr73_line_288 == JsonLocation.class;
		int PROBE_END_LINE_288 = 290;
		if (basic_deserializer_factory_1_expr72_line_288) {
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
        int PROBE_START_LINE_302 = 302;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1240_line_302 = ctxt;
		boolean basic_deserializer_factory_1_expr75_line_302 = p_ctxt_1240_line_302.canOverrideAccessModifiers();
		int PROBE_END_LINE_302 = 302;
		boolean fixAccess = basic_deserializer_factory_1_expr75_line_302;
        int PROBE_START_LINE_303 = 303;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1241_line_303 = beanDesc;
		boolean v_fix_access_1242_line_303 = fixAccess;
		int PROBE_END_LINE_303 = 303;
		CreatorCollector creators =  new CreatorCollector(p_bean_desc_1241_line_303, v_fix_access_1242_line_303);
        int PROBE_START_LINE_304 = 304;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1240_line_304 = ctxt;
		AnnotationIntrospector basic_deserializer_factory_1_expr77_line_304 = p_ctxt_1240_line_304
				.getAnnotationIntrospector();
		int PROBE_END_LINE_304 = 304;
		AnnotationIntrospector intr = basic_deserializer_factory_1_expr77_line_304;
        
        int PROBE_START_LINE_307 = 307;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1240_line_307 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr78_line_307 = p_ctxt_1240_line_307.getConfig();
		int PROBE_END_LINE_307 = 307;
		// need to construct suitable visibility checker:
        final DeserializationConfig config = basic_deserializer_factory_1_expr78_line_307;
        int PROBE_START_LINE_308 = 308;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1245_line_308 = config;
		VisibilityChecker<?> basic_deserializer_factory_1_expr79_line_308 = v_config_1245_line_308
				.getDefaultVisibilityChecker();
		int PROBE_END_LINE_308 = 308;
		VisibilityChecker<?> vchecker = basic_deserializer_factory_1_expr79_line_308;
        int PROBE_START_LINE_309 = 309;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1244_line_309 = intr;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1241_line_309 = beanDesc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass basic_deserializer_factory_1_expr82_line_309 = p_bean_desc_1241_line_309
				.getClassInfo();
		VisibilityChecker<?> v_vchecker_1246_line_309 = vchecker;
		VisibilityChecker<?> basic_deserializer_factory_1_expr81_line_309 = v_intr_1244_line_309
				.findAutoDetectVisibility(basic_deserializer_factory_1_expr82_line_309, v_vchecker_1246_line_309);
		int PROBE_END_LINE_309 = 309;
		vchecker = basic_deserializer_factory_1_expr81_line_309;

        int PROBE_START_LINE_316 = 317;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1240_line_316 = ctxt;
		Map<AnnotatedWithParams, BeanPropertyDefinition[]> basic_deserializer_factory_1_expr83_line_316 = _findCreatorsFromProperties(
				p_ctxt_1240_line_316, beanDesc);
		int PROBE_END_LINE_316 = 317;
		/* 24-Sep-2014, tatu: Tricky part first; need to merge resolved property information
         *  (which has creator parameters sprinkled around) with actual creator
         *  declarations (which are needed to access creator annotation, amongst other things).
         *  Easiest to combine that info first, then pass it to remaining processing.
         */
        Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorDefs = basic_deserializer_factory_1_expr83_line_316;
        
        int PROBE_START_LINE_322 = 322;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1240_line_322 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1241_line_322 = beanDesc;
		VisibilityChecker<?> v_vchecker_1246_line_322 = vchecker;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1244_line_322 = intr;
		com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1243_line_322 = creators;
		Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_creator_defs_1247_line_322 = creatorDefs;
		int PROBE_END_LINE_322 = 322;
		/* Important: first add factory methods; then constructors, so
         * latter can override former!
         */
        _addDeserializerFactoryMethods(p_ctxt_1240_line_322, p_bean_desc_1241_line_322, v_vchecker_1246_line_322, v_intr_1244_line_322, v_creators_1243_line_322, v_creator_defs_1247_line_322);
        int PROBE_START_LINE_324 = 326;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1241_line_324 = beanDesc;
		com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr86_line_324 = p_bean_desc_1241_line_324
				.getType();
		boolean basic_deserializer_factory_1_expr85_line_324 = basic_deserializer_factory_1_expr86_line_324
				.isConcrete();
		int PROBE_END_LINE_324 = 326;
		// constructors only usable on concrete types:
        if (basic_deserializer_factory_1_expr85_line_324) {
            int PROBE_START_LINE_325 = 325;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1240_line_325 = ctxt;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1241_line_325 = beanDesc;
			VisibilityChecker<?> v_vchecker_1246_line_325 = vchecker;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1244_line_325 = intr;
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1243_line_325 = creators;
			Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_creator_defs_1247_line_325 = creatorDefs;
			int PROBE_END_LINE_325 = 325;
			_addDeserializerConstructors(p_ctxt_1240_line_325, p_bean_desc_1241_line_325, v_vchecker_1246_line_325, v_intr_1244_line_325, v_creators_1243_line_325, v_creator_defs_1247_line_325);
        }
        int PROBE_START_LINE_327 = 327;
		com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1243_line_327 = creators;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1245_line_327 = config;
		com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr88_line_327 = v_creators_1243_line_327
				.constructValueInstantiator(v_config_1245_line_327);
		int PROBE_END_LINE_327 = 327;
		return basic_deserializer_factory_1_expr88_line_327;
    }

    protected Map<AnnotatedWithParams,BeanPropertyDefinition[]> _findCreatorsFromProperties(DeserializationContext ctxt,
            BeanDescription beanDesc) throws JsonMappingException
    {
        int PROBE_START_LINE_333 = 333;
		Map<AnnotatedWithParams, BeanPropertyDefinition[]> basic_deserializer_factory_1_expr89_line_333 = Collections
				.emptyMap();
		int PROBE_END_LINE_333 = 333;
		Map<AnnotatedWithParams,BeanPropertyDefinition[]> result = basic_deserializer_factory_1_expr89_line_333;
        int PROBE_START_LINE_334 = 356;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1249_line_334 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_deserializer_factory_1_expr90_line_334 = p_bean_desc_1249_line_334
				.findProperties();
		int PROBE_END_LINE_334 = 356;
		for (BeanPropertyDefinition propDef : basic_deserializer_factory_1_expr90_line_334) {
            int PROBE_START_LINE_335 = 335;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1251_line_335 = propDef;
			Iterator<AnnotatedParameter> basic_deserializer_factory_1_expr91_line_335 = v_prop_def_1251_line_335
					.getConstructorParameters();
			int PROBE_END_LINE_335 = 335;
			Iterator<AnnotatedParameter> it = basic_deserializer_factory_1_expr91_line_335;
            while (true) {
                int PROBE_START_LINE_336 = 336;
				Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> v_it_1252_line_336 = it;
				boolean basic_deserializer_factory_1_expr92_line_336 = v_it_1252_line_336.hasNext();
				if (!(basic_deserializer_factory_1_expr92_line_336)) {
					break;
				}
				int PROBE_END_LINE_336 = 336;
				AnnotatedParameter param = it.next();
                AnnotatedWithParams owner = param.getOwner();
                BeanPropertyDefinition[] defs = result.get(owner);
                final int index = param.getIndex();
                
                if (defs == null) {
                    if (result.isEmpty()) {
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
        int PROBE_START_LINE_357 = 357;
		Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_result_1250_line_357 = result;
		int PROBE_END_LINE_357 = 357;
		return v_result_1250_line_357;
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

    @Deprecated // since 2.5.0, removed from 2.6.0
    protected void _addDeserializerConstructors(DeserializationContext ctxt, BeanDescription beanDesc, VisibilityChecker<?> vchecker,
            AnnotationIntrospector intr, CreatorCollector creators)
        throws JsonMappingException
    {
        _addDeserializerConstructors(ctxt, beanDesc, vchecker, intr, creators,
                Collections.<AnnotatedWithParams,BeanPropertyDefinition[]>emptyMap());
    }
    
    protected void _addDeserializerConstructors
        (DeserializationContext ctxt, BeanDescription beanDesc, VisibilityChecker<?> vchecker,
         AnnotationIntrospector intr, CreatorCollector creators,
         Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorParams)
        throws JsonMappingException
    {
        int PROBE_START_LINE_415 = 415;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1262_line_415 = beanDesc;
		AnnotatedConstructor basic_deserializer_factory_1_expr93_line_415 = p_bean_desc_1262_line_415
				.findDefaultConstructor();
		int PROBE_END_LINE_415 = 415;
		// First things first: the "default constructor" (zero-arg
        // constructor; whether implicit or explicit) is NOT included
        // in list of constructors, so needs to be handled separately.
        AnnotatedConstructor defaultCtor = basic_deserializer_factory_1_expr93_line_415;
        int PROBE_START_LINE_416 = 420;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1267_line_416 = defaultCtor;
		boolean basic_deserializer_factory_1_expr94_line_416 = v_default_ctor_1267_line_416 != null;
		int PROBE_END_LINE_416 = 420;
		if (basic_deserializer_factory_1_expr94_line_416) {
            int PROBE_START_LINE_417 = 419;
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1265_line_417 = creators;
			boolean basic_deserializer_factory_1_expr97_line_417 = p_creators_1265_line_417.hasDefaultCreator();
			boolean basic_deserializer_factory_1_expr96_line_417 = !basic_deserializer_factory_1_expr97_line_417;
			boolean basic_deserializer_factory_1_expr98_line_417 = false;
			if (!basic_deserializer_factory_1_expr96_line_417) {
				com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1264_line_417 = intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1267_line_417 = defaultCtor;
				basic_deserializer_factory_1_expr98_line_417 = p_intr_1264_line_417
						.hasCreatorAnnotation(v_default_ctor_1267_line_417);
			}
			boolean basic_deserializer_factory_1_expr95_line_417 = basic_deserializer_factory_1_expr96_line_417
					|| basic_deserializer_factory_1_expr98_line_417;
			int PROBE_END_LINE_417 = 419;
			if (basic_deserializer_factory_1_expr95_line_417) {
                int PROBE_START_LINE_418 = 418;
				com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1265_line_418 = creators;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1267_line_418 = defaultCtor;
				int PROBE_END_LINE_418 = 418;
				p_creators_1265_line_418.setDefaultCreator(v_default_ctor_1267_line_418);
            }
        }
        int PROBE_START_LINE_421 = 512;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1262_line_421 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> basic_deserializer_factory_1_expr100_line_421 = p_bean_desc_1262_line_421
				.getConstructors();
		int PROBE_END_LINE_421 = 512;
		for (AnnotatedConstructor ctor : basic_deserializer_factory_1_expr100_line_421) {
            int PROBE_START_LINE_422 = 422;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1264_line_422 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1268_line_422 = ctor;
			boolean basic_deserializer_factory_1_expr101_line_422 = p_intr_1264_line_422
					.hasCreatorAnnotation(v_ctor_1268_line_422);
			int PROBE_END_LINE_422 = 422;
			final boolean isCreator = basic_deserializer_factory_1_expr101_line_422;
            int PROBE_START_LINE_423 = 423;
			Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> p_creator_params_1266_line_423 = creatorParams;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1268_line_423 = ctor;
			BeanPropertyDefinition[] basic_deserializer_factory_1_expr102_line_423 = p_creator_params_1266_line_423
					.get(v_ctor_1268_line_423);
			int PROBE_END_LINE_423 = 423;
			BeanPropertyDefinition[] propDefs = basic_deserializer_factory_1_expr102_line_423;
            int PROBE_START_LINE_424 = 424;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1268_line_424 = ctor;
			int basic_deserializer_factory_1_expr103_line_424 = v_ctor_1268_line_424.getParameterCount();
			int PROBE_END_LINE_424 = 424;
			final int argCount = basic_deserializer_factory_1_expr103_line_424;

            int PROBE_START_LINE_427 = 450;
			int v_arg_count_1271_line_427 = argCount;
			boolean basic_deserializer_factory_1_expr104_line_427 = v_arg_count_1271_line_427 == 1;
			int PROBE_END_LINE_427 = 450;
			// some single-arg factory methods (String, number) are auto-detected
            if (basic_deserializer_factory_1_expr104_line_427) {
                int PROBE_START_LINE_428 = 428;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[] v_prop_defs_1270_line_428 = propDefs;
				boolean basic_deserializer_factory_1_expr108_line_428 = v_prop_defs_1270_line_428 == null;
				boolean basic_deserializer_factory_1_expr106_line_428 = (basic_deserializer_factory_1_expr108_line_428);
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition basic_deserializer_factory_1_expr107_line_428 = null;
				if (!basic_deserializer_factory_1_expr106_line_428) {
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[] v_prop_defs_1270_line_428_v1 = propDefs;
					basic_deserializer_factory_1_expr107_line_428 = v_prop_defs_1270_line_428_v1[0];
				}
				BeanPropertyDefinition basic_deserializer_factory_1_expr105_line_428 = basic_deserializer_factory_1_expr106_line_428
						? null
						: basic_deserializer_factory_1_expr107_line_428;
				int PROBE_END_LINE_428 = 428;
				BeanPropertyDefinition argDef = basic_deserializer_factory_1_expr105_line_428;
                int PROBE_START_LINE_429 = 429;
				com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1264_line_429 = intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1268_line_429 = ctor;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_arg_def_1272_line_429 = argDef;
				boolean basic_deserializer_factory_1_expr109_line_429 = _checkIfCreatorPropertyBased(
						p_intr_1264_line_429, v_ctor_1268_line_429, v_arg_def_1272_line_429);
				int PROBE_END_LINE_429 = 429;
				boolean useProps = basic_deserializer_factory_1_expr109_line_429;

                int PROBE_START_LINE_431 = 447;
				boolean v_use_props_1273_line_431 = useProps;
				int PROBE_END_LINE_431 = 447;
				if (v_use_props_1273_line_431) {
                    CreatorProperty[] properties = new CreatorProperty[1];
                    PropertyName name = (argDef == null) ? null : argDef.getFullName();
                    AnnotatedParameter arg = ctor.getParameter(0);
                    properties[0] = constructCreatorProperty(ctxt, beanDesc, name, 0, arg,
                            intr.findInjectableValueId(arg));
                    creators.addPropertyCreator(ctor, isCreator, properties);
                } else {
                    int PROBE_START_LINE_439 = 441;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1261_line_439 = ctxt;
					com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1262_line_439 = beanDesc;
					VisibilityChecker<?> p_vchecker_1263_line_439 = vchecker;
					com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1264_line_439 = intr;
					com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1265_line_439 = creators;
					int PROBE_END_LINE_439 = 441;
					/*boolean added = */ _handleSingleArgumentConstructor(p_ctxt_1261_line_439, p_bean_desc_1262_line_439, p_vchecker_1263_line_439, p_intr_1264_line_439, p_creators_1265_line_439,
                            ctor, isCreator,
                            vchecker.isCreatorVisible(ctor));
                    int PROBE_START_LINE_444 = 446;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_arg_def_1272_line_444 = argDef;
					boolean basic_deserializer_factory_1_expr112_line_444 = v_arg_def_1272_line_444 != null;
					int PROBE_END_LINE_444 = 446;
					// one more thing: sever link to creator property, to avoid possible later
                    // problems with "unresolved" constructor property
                    if (basic_deserializer_factory_1_expr112_line_444) {
                        ((POJOPropertyBuilder) argDef).removeConstructors();
                    }
                }
                // regardless, fully handled
                continue;
            }

            // 2 or more args; all params must have names or be injectable
            AnnotatedParameter nonAnnotatedParam = null;            
            CreatorProperty[] properties = new CreatorProperty[argCount];
            int explicitNameCount = 0;
            int implicitNameCount = 0;
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
                if (isCreator) {
                    if (name != null && !name.isEmpty()) {
                        ++implicitNameCount;
                        properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                        continue;
                    }
                }
                if (nonAnnotatedParam == null) {
                    nonAnnotatedParam = param;
                }
            }

            final int namedCount = explicitNameCount + implicitNameCount;
            // Ok: if named or injectable, we have more work to do
            if (isCreator || explicitNameCount > 0 || injectCount > 0) {
                // simple case; everything covered:
                if ((namedCount + injectCount) == argCount) {
                    creators.addPropertyCreator(ctor, isCreator, properties);
                } else if ((explicitNameCount == 0) && ((injectCount + 1) == argCount)) {
                    // [712] secondary: all but one injectable, one un-annotated (un-named)
                    creators.addDelegatingCreator(ctor, isCreator, properties);
                } else { // otherwise, epic fail
                    // 28-Dec-2014, tatu: Let's consider non-static inner class as a special case...
                    int ix = nonAnnotatedParam.getIndex();
                    if ((ix == 0) && ClassUtil.isNonStaticInnerClass(ctor.getDeclaringClass())) {
                        throw new IllegalArgumentException("Non-static inner classes like "
                                +ctor.getDeclaringClass().getName()+" can not use @JsonCreator for constructors");
                    }
                    throw new IllegalArgumentException("Argument #"+ix
                            +" of constructor "+ctor+" has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
                }
            }
        }
    }

    protected boolean _checkIfCreatorPropertyBased(AnnotationIntrospector intr,
            AnnotatedWithParams creator, BeanPropertyDefinition propDef)
    {
        int PROBE_START_LINE_518 = 518;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1274_line_518 = intr;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_1275_line_518 = creator;
		JsonCreator.Mode basic_deserializer_factory_1_expr113_line_518 = p_intr_1274_line_518
				.findCreatorBinding(p_creator_1275_line_518);
		int PROBE_END_LINE_518 = 518;
		JsonCreator.Mode mode = basic_deserializer_factory_1_expr113_line_518;

        int PROBE_START_LINE_520 = 522;
		com.fasterxml.jackson.annotation.JsonCreator.Mode v_mode_1277_line_520 = mode;
		com.fasterxml.jackson.annotation.JsonCreator.Mode q_properties_25_line_520 = JsonCreator.Mode.PROPERTIES;
		boolean basic_deserializer_factory_1_expr114_line_520 = v_mode_1277_line_520 == q_properties_25_line_520;
		int PROBE_END_LINE_520 = 522;
		if (basic_deserializer_factory_1_expr114_line_520) {
            return true;
        }
        int PROBE_START_LINE_523 = 525;
		com.fasterxml.jackson.annotation.JsonCreator.Mode v_mode_1277_line_523 = mode;
		com.fasterxml.jackson.annotation.JsonCreator.Mode q_delegating_26_line_523 = JsonCreator.Mode.DELEGATING;
		boolean basic_deserializer_factory_1_expr115_line_523 = v_mode_1277_line_523 == q_delegating_26_line_523;
		int PROBE_END_LINE_523 = 525;
		if (basic_deserializer_factory_1_expr115_line_523) {
            return false;
        }
        int PROBE_START_LINE_527 = 530;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1276_line_527 = propDef;
		boolean basic_deserializer_factory_1_expr120_line_527 = p_prop_def_1276_line_527 != null;
		boolean basic_deserializer_factory_1_expr119_line_527 = (basic_deserializer_factory_1_expr120_line_527);
		boolean basic_deserializer_factory_1_expr121_line_527 = true;
		if (basic_deserializer_factory_1_expr119_line_527) {
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1276_line_527_v1 = propDef;
			basic_deserializer_factory_1_expr121_line_527 = p_prop_def_1276_line_527_v1.isExplicitlyNamed();
		}
		boolean basic_deserializer_factory_1_expr118_line_527 = basic_deserializer_factory_1_expr119_line_527
				&& basic_deserializer_factory_1_expr121_line_527;
		boolean basic_deserializer_factory_1_expr117_line_527 = (basic_deserializer_factory_1_expr118_line_527);
		boolean basic_deserializer_factory_1_expr116_line_527 = basic_deserializer_factory_1_expr117_line_527
				|| (intr.findInjectableValueId(creator.getParameter(0)) != null);
		int PROBE_END_LINE_527 = 530;
		// If explicit name, or inject id, property-based
        if (basic_deserializer_factory_1_expr116_line_527) {
            return true;
        }
        int PROBE_START_LINE_531 = 540;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1276_line_531 = propDef;
		boolean basic_deserializer_factory_1_expr122_line_531 = p_prop_def_1276_line_531 != null;
		int PROBE_END_LINE_531 = 540;
		if (basic_deserializer_factory_1_expr122_line_531) {
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
        int PROBE_START_LINE_552 = 552;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor p_ctor_1283_line_552 = ctor;
		Class<?> basic_deserializer_factory_1_expr123_line_552 = p_ctor_1283_line_552.getRawParameterType(0);
		int PROBE_END_LINE_552 = 552;
		// otherwise either 'simple' number, String, or general delegate:
        Class<?> type = basic_deserializer_factory_1_expr123_line_552;
        int PROBE_START_LINE_553 = 558;
		Class<?> v_type_1286_line_553 = type;
		boolean basic_deserializer_factory_1_expr125_line_553 = v_type_1286_line_553 == String.class;
		boolean basic_deserializer_factory_1_expr127_line_553 = false;
		if (!basic_deserializer_factory_1_expr125_line_553) {
			Class<?> v_type_1286_line_553_v1 = type;
			basic_deserializer_factory_1_expr127_line_553 = v_type_1286_line_553_v1 == CharSequence.class;
		}
		boolean basic_deserializer_factory_1_expr124_line_553 = basic_deserializer_factory_1_expr125_line_553
				|| basic_deserializer_factory_1_expr127_line_553;
		int PROBE_END_LINE_553 = 558;
		if (basic_deserializer_factory_1_expr124_line_553) {
            if (isCreator || isVisible) {
                creators.addStringCreator(ctor, isCreator);
            }
            return true;
        }
        int PROBE_START_LINE_559 = 564;
		Class<?> v_type_1286_line_559 = type;
		boolean basic_deserializer_factory_1_expr130_line_559 = v_type_1286_line_559 == int.class;
		boolean basic_deserializer_factory_1_expr132_line_559 = false;
		if (!basic_deserializer_factory_1_expr130_line_559) {
			Class<?> v_type_1286_line_559_v1 = type;
			basic_deserializer_factory_1_expr132_line_559 = v_type_1286_line_559_v1 == Integer.class;
		}
		boolean basic_deserializer_factory_1_expr129_line_559 = basic_deserializer_factory_1_expr130_line_559
				|| basic_deserializer_factory_1_expr132_line_559;
		int PROBE_END_LINE_559 = 564;
		if (basic_deserializer_factory_1_expr129_line_559) {
            int PROBE_START_LINE_560 = 562;
			boolean p_is_creator_1284_line_560 = isCreator;
			boolean p_is_visible_1285_line_560 = false;
			if (!p_is_creator_1284_line_560) {
				p_is_visible_1285_line_560 = isVisible;
			}
			boolean basic_deserializer_factory_1_expr134_line_560 = p_is_creator_1284_line_560
					|| p_is_visible_1285_line_560;
			int PROBE_END_LINE_560 = 562;
			if (basic_deserializer_factory_1_expr134_line_560) {
                int PROBE_START_LINE_561 = 561;
				com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1282_line_561 = creators;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor p_ctor_1283_line_561 = ctor;
				boolean p_is_creator_1284_line_561 = isCreator;
				int PROBE_END_LINE_561 = 561;
				p_creators_1282_line_561.addIntCreator(p_ctor_1283_line_561, p_is_creator_1284_line_561);
            }
            return true;
        }
        if (type == long.class || type == Long.class) {
            if (isCreator || isVisible) {
                creators.addLongCreator(ctor, isCreator);
            }
            return true;
        }
        if (type == double.class || type == Double.class) {
            if (isCreator || isVisible) {
                creators.addDoubleCreator(ctor, isCreator);
            }
            return true;
        }
        if (type == boolean.class || type == Boolean.class) {
            if (isCreator || isVisible) {
                creators.addBooleanCreator(ctor, isCreator);
            }
            return true;
        }
        // Delegating Creator ok iff it has @JsonCreator (etc)
        if (isCreator) {
            creators.addDelegatingCreator(ctor, isCreator, null);
            return true;
        }
        return false;
    }

    @Deprecated // since 2.5, remove from 2.6
    protected void _addDeserializerFactoryMethods(DeserializationContext ctxt, BeanDescription beanDesc, VisibilityChecker<?> vchecker,
            AnnotationIntrospector intr, CreatorCollector creators)
        throws JsonMappingException
    {
        _addDeserializerFactoryMethods(ctxt, beanDesc, vchecker, intr, creators,
                Collections.<AnnotatedWithParams,BeanPropertyDefinition[]>emptyMap());
    }

    protected void _addDeserializerFactoryMethods
        (DeserializationContext ctxt, BeanDescription beanDesc, VisibilityChecker<?> vchecker,
         AnnotationIntrospector intr, CreatorCollector creators,
         Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorParams)
        throws JsonMappingException
    {
        int PROBE_START_LINE_606 = 606;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1292_line_606 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr136_line_606 = p_ctxt_1292_line_606.getConfig();
		int PROBE_END_LINE_606 = 606;
		final DeserializationConfig config = basic_deserializer_factory_1_expr136_line_606;
        int PROBE_START_LINE_607 = 704;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1293_line_607 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> basic_deserializer_factory_1_expr137_line_607 = p_bean_desc_1293_line_607
				.getFactoryMethods();
		int PROBE_END_LINE_607 = 704;
		for (AnnotatedMethod factory : basic_deserializer_factory_1_expr137_line_607) {
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
                    // otherwise just ignored
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
            CreatorProperty[] properties = new CreatorProperty[argCount];
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
    protected CreatorProperty constructCreatorProperty(DeserializationContext ctxt,
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
                boolean req = (b != null && b.booleanValue());
                String desc = intr.findPropertyDescription(param);
                Integer idx = intr.findPropertyIndex(param);
                String def = intr.findPropertyDefaultValue(param);
                metadata = PropertyMetadata.construct(req, desc, idx, def);
            }
        }
            
        JavaType t0 = config.getTypeFactory().constructType(param.getParameterType(), beanDesc.bindingsForBeanType());
        BeanProperty.Std property = new BeanProperty.Std(name, t0,
                intr.findWrapperName(param),
                beanDesc.getClassAnnotations(), param, metadata);
        JavaType type = resolveType(ctxt, beanDesc, t0, param);
        if (type != t0) {
            property = property.withType(type);
        }
        // Is there an annotation that specifies exact deserializer?
        JsonDeserializer<?> deser = findDeserializerFromAnnotation(ctxt, param);

        // If yes, we are mostly done:
        type = modifyTypeByAnnotation(ctxt, param, type);

        // Type deserializer: either comes from property (and already resolved)
        TypeDeserializer typeDeser = (TypeDeserializer) type.getTypeHandler();
        // or if not, based on type being referenced:
        if (typeDeser == null) {
            typeDeser = findTypeDeserializer(config, type);
        }
        // Note: contextualization of typeDeser _should_ occur in constructor of CreatorProperty
        // so it is not called directly here
        CreatorProperty prop = new CreatorProperty(name, type, property.getWrapperName(),
                typeDeser, beanDesc.getClassAnnotations(), param, index, injectableValueId,
                metadata);
        if (deser != null) {
            // As per [Issue#462] need to ensure we contextualize deserializer before passing it on
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
            /* 14-Apr-2014, tatu: Need to also consider possible implicit name
            *   (for JDK8, or via paranamer)
            */
            String str = intr.findImplicitPropertyName(param);
            if (str != null && !str.isEmpty()) {
                return new PropertyName(str);
            }
        }
        return null;
    }

    protected PropertyName _findExplicitParamName(AnnotatedParameter param, AnnotationIntrospector intr)
    {
        if (param != null && intr != null) {
            return intr.findNameForDeserialization(param);
        }
        return null;
    }

    protected PropertyName _findImplicitParamName(AnnotatedParameter param, AnnotationIntrospector intr)
    {
        String str = intr.findImplicitPropertyName(param);
        if (str != null && !str.isEmpty()) {
            return new PropertyName(str);
        }
        return null;
    }
    
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

        // 23-Nov-2010, tatu: Custom deserializer?
        JsonDeserializer<?> deser = _findCustomCollectionDeserializer(type,
                config, beanDesc, contentTypeDeser, contentDeser);
        if (deser == null) {
            Class<?> collectionClass = type.getRawClass();
            if (contentDeser == null) { // not defined by annotation
                // One special type: EnumSet:
                if (EnumSet.class.isAssignableFrom(collectionClass)) {
                    deser = new EnumSetDeserializer(contentType, null);
                }
            }
        }
        
        /* One twist: if we are being asked to instantiate an interface or
         * abstract Collection, we need to either find something that implements
         * the thing, or give up.
         *
         * Note that we do NOT try to guess based on secondary interfaces
         * here; that would probably not work correctly since casts would
         * fail later on (as the primary type is not the interface we'd
         * be implementing)
         */
        if (deser == null) {
            if (type.isInterface() || type.isAbstract()) {
                CollectionType implType = _mapAbstractCollectionType(type, config);
                if (implType == null) {
                    // [Issue#292]: Actually, may be fine, but only if polymorphich deser enabled
                    if (type.getTypeHandler() == null) {
                        throw new IllegalArgumentException("Can not find a deserializer for non-concrete Collection type "+type);
                    }
                    deser = AbstractDeserializer.constructForNonPOJO(beanDesc);
                } else {
                    type = implType;
                    // But if so, also need to re-check creators...
                    beanDesc = config.introspectForCreation(type);
                }
            }
            if (deser == null) {
                ValueInstantiator inst = findValueInstantiator(ctxt, beanDesc);
                if (!inst.canCreateUsingDefault()) {
                    // [Issue#161]: No default constructor for ArrayBlockingQueue...
                    if (type.getRawClass() == ArrayBlockingQueue.class) {
                        return new ArrayBlockingQueueDeserializer(type, contentDeser, contentTypeDeser, inst, null);
                    }
                }
                // 13-Dec-2010, tatu: Can use more optimal deserializer if content type is String, so:
                if (contentType.getRawClass() == String.class) {
                    // no value type deserializer because Strings are one of natural/native types:
                    deser = new StringCollectionDeserializer(type, contentDeser, inst);
                } else {
                    deser = new CollectionDeserializer(type, contentDeser, contentTypeDeser, inst);
                }
            }
        }
        // and then new with 2.2: ability to post-process it too (Issue#120)
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deser = mod.modifyCollectionDeserializer(config, type, beanDesc, deser);
            }
        }
        return deser;
    }

    protected CollectionType _mapAbstractCollectionType(JavaType type, DeserializationConfig config)
    {
        Class<?> collectionClass = type.getRawClass();
        collectionClass = _collectionFallbacks.get(collectionClass.getName());
        if (collectionClass == null) {
            return null;
        }
        return (CollectionType) config.constructSpecializedType(type, collectionClass);
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
        // Then optional type info (1.5); either attached to type, or resolved separately:
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
                        // [Issue#292]: Actually, may be fine, but only if polymorphich deser enabled
                        if (type.getTypeHandler() == null) {
                            throw new IllegalArgumentException("Can not find a deserializer for non-concrete Map type "+type);
                        }
                        deser = AbstractDeserializer.constructForNonPOJO(beanDesc);
                    }
                }
                if (deser == null) {
                    ValueInstantiator inst = findValueInstantiator(ctxt, beanDesc);
                    MapDeserializer md = new MapDeserializer(type, inst, keyDes, contentDeser, contentTypeDeser);
                    md.setIgnorableProperties(config.getAnnotationIntrospector().findPropertiesToIgnore(beanDesc.getClassInfo()));
                    deser = md;
                }
            }
        }
        // and then new with 2.2: ability to post-process it too (Issue#120)
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
    /* JsonDeserializerFactory impl: Enum deserializers
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
            // [JACKSON-193] May have @JsonCreator for static factory method:
            for (AnnotatedMethod factory : beanDesc.getFactoryMethods()) {
                if (ctxt.getAnnotationIntrospector().hasCreatorAnnotation(factory)) {
                    int argCount = factory.getParameterCount();
                    if (argCount == 1) {
                        Class<?> returnType = factory.getRawReturnType();
                        // usually should be class, but may be just plain Enum<?> (for Enum.valueOf()?)
                        if (returnType.isAssignableFrom(enumClass)) {
                            deser = EnumDeserializer.deserializerForCreator(config, enumClass, factory);
                            break;
                        }
                    }
                    throw new IllegalArgumentException("Unsuitable method ("+factory+") decorated with @JsonCreator (for Enum type "
                            +enumClass.getName()+")");
                }
            }
            // [JACKSON-749] Also, need to consider @JsonValue, if one found
            if (deser == null) {
                deser = new EnumDeserializer(constructEnumResolver(enumClass, config, beanDesc.findJsonValueMethod()));
            }
        }

        // and then new with 2.2: ability to post-process it too (Issue#120)
        if (_factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deser = mod.modifyEnumDeserializer(config, type, beanDesc, deser);
            }
        }
        return deser;
    }
    
    /*
    /**********************************************************
    /* JsonDeserializerFactory impl: Tree deserializers
    /**********************************************************
     */
    
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
        int PROBE_START_LINE_1238 = 1238;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1344_line_1238 = config;
		com.fasterxml.jackson.databind.JavaType p_base_type_1345_line_1238 = baseType;
		Class<?> basic_deserializer_factory_1_expr139_line_1238 = p_base_type_1345_line_1238.getRawClass();
		BeanDescription basic_deserializer_factory_1_expr138_line_1238 = p_config_1344_line_1238
				.introspectClassAnnotations(basic_deserializer_factory_1_expr139_line_1238);
		int PROBE_END_LINE_1238 = 1238;
		BeanDescription bean = basic_deserializer_factory_1_expr138_line_1238;
        int PROBE_START_LINE_1239 = 1239;
		com.fasterxml.jackson.databind.BeanDescription v_bean_1346_line_1239 = bean;
		AnnotatedClass basic_deserializer_factory_1_expr140_line_1239 = v_bean_1346_line_1239.getClassInfo();
		int PROBE_END_LINE_1239 = 1239;
		AnnotatedClass ac = basic_deserializer_factory_1_expr140_line_1239;
        int PROBE_START_LINE_1240 = 1240;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1344_line_1240 = config;
		AnnotationIntrospector basic_deserializer_factory_1_expr141_line_1240 = p_config_1344_line_1240
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1240 = 1240;
		AnnotationIntrospector ai = basic_deserializer_factory_1_expr141_line_1240;
        int PROBE_START_LINE_1241 = 1241;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1348_line_1241 = ai;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1344_line_1241 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1347_line_1241 = ac;
		com.fasterxml.jackson.databind.JavaType p_base_type_1345_line_1241 = baseType;
		TypeResolverBuilder<?> basic_deserializer_factory_1_expr142_line_1241 = v_ai_1348_line_1241
				.findTypeResolver(p_config_1344_line_1241, v_ac_1347_line_1241, p_base_type_1345_line_1241);
		int PROBE_END_LINE_1241 = 1241;
		TypeResolverBuilder<?> b = basic_deserializer_factory_1_expr142_line_1241;

        /* Ok: if there is no explicit type info handler, we may want to
         * use a default. If so, config object knows what to use.
         */
        Collection<NamedType> subtypes = null;
        int PROBE_START_LINE_1247 = 1254;
		TypeResolverBuilder<?> v_b_1349_line_1247 = b;
		boolean basic_deserializer_factory_1_expr143_line_1247 = v_b_1349_line_1247 == null;
		int PROBE_END_LINE_1247 = 1254;
		if (basic_deserializer_factory_1_expr143_line_1247) {
            int PROBE_START_LINE_1248 = 1248;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1344_line_1248 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1345_line_1248 = baseType;
			TypeResolverBuilder<?> basic_deserializer_factory_1_expr145_line_1248 = p_config_1344_line_1248
					.getDefaultTyper(p_base_type_1345_line_1248);
			int PROBE_END_LINE_1248 = 1248;
			b = basic_deserializer_factory_1_expr145_line_1248;
            int PROBE_START_LINE_1249 = 1251;
			TypeResolverBuilder<?> v_b_1349_line_1249 = b;
			boolean basic_deserializer_factory_1_expr146_line_1249 = v_b_1349_line_1249 == null;
			int PROBE_END_LINE_1249 = 1251;
			if (basic_deserializer_factory_1_expr146_line_1249) {
                return null;
            }
        } else {
            subtypes = config.getSubtypeResolver().collectAndResolveSubtypes(ac, config, ai);
        }
        // [JACKSON-505]: May need to figure out default implementation, if none found yet
        // (note: check for abstract type is not 100% mandatory, more of an optimization)
        if ((b.getDefaultImpl() == null) && baseType.isAbstract()) {
            JavaType defaultType = mapAbstractType(config, baseType);
            if (defaultType != null && defaultType.getRawClass() != baseType.getRawClass()) {
                b = b.defaultImpl(defaultType.getRawClass());
            }
        }
        return b.buildTypeDeserializer(config, baseType, subtypes);
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
        int PROBE_START_LINE_1275 = 1275;
		com.fasterxml.jackson.databind.ext.OptionalHandlerFactory q_instance_27_line_1275 = OptionalHandlerFactory.instance;
		com.fasterxml.jackson.databind.JavaType p_type_1352_line_1275 = type;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1351_line_1275 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr148_line_1275 = p_ctxt_1351_line_1275
				.getConfig();
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1353_line_1275 = beanDesc;
		JsonDeserializer<?> basic_deserializer_factory_1_expr147_line_1275 = q_instance_27_line_1275.findDeserializer(
				p_type_1352_line_1275, basic_deserializer_factory_1_expr148_line_1275, p_bean_desc_1353_line_1275);
		int PROBE_END_LINE_1275 = 1275;
		return basic_deserializer_factory_1_expr147_line_1275;
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
                return _createEnumKeyDeserializer(ctxt, type);
            }
            deser = StdKeyDeserializers.findStringBasedKeyDeserializer(config, type);
        }
        
        // and then new with 2.2: ability to post-process it too (Issue#120)
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
        BeanDescription beanDesc = config.introspect(type);
        JsonDeserializer<?> des = findDeserializerFromAnnotation(ctxt, beanDesc.getClassInfo());
        if (des != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, type, des);
        }
        Class<?> enumClass = type.getRawClass();
        // 23-Nov-2010, tatu: Custom deserializer?
        JsonDeserializer<?> custom = _findCustomEnumDeserializer(enumClass, config, beanDesc);
        if (custom != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, type, custom);
        }

        EnumResolver<?> enumRes = constructEnumResolver(enumClass, config, beanDesc.findJsonValueMethod());
        // [JACKSON-193] May have @JsonCreator for static factory method:
        for (AnnotatedMethod factory : beanDesc.getFactoryMethods()) {
            if (config.getAnnotationIntrospector().hasCreatorAnnotation(factory)) {
                int argCount = factory.getParameterCount();
                if (argCount == 1) {
                    Class<?> returnType = factory.getRawReturnType();
                    // usually should be class, but may be just plain Enum<?> (for Enum.valueOf()?)
                    if (returnType.isAssignableFrom(enumClass)) {
                        // note: mostly copied from 'EnumDeserializer.deserializerForCreator(...)'
                        if (factory.getGenericParameterType(0) != String.class) {
                            throw new IllegalArgumentException("Parameter #0 type for factory method ("+factory+") not suitable, must be java.lang.String");
                        }
                        if (config.canOverrideAccessModifiers()) {
                            ClassUtil.checkAndFixAccess(factory.getMember());
                        }
                        return StdKeyDeserializers.constructEnumKeyDeserializer(enumRes, factory);
                    }
                }
                throw new IllegalArgumentException("Unsuitable method ("+factory+") decorated with @JsonCreator (for Enum type "
                        +enumClass.getName()+")");
            }
        }
        // [JACKSON-749] Also, need to consider @JsonValue, if one found
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
        int PROBE_START_LINE_1386 = 1386;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1359_line_1386 = config;
		AnnotationIntrospector basic_deserializer_factory_1_expr149_line_1386 = p_config_1359_line_1386
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1386 = 1386;
		AnnotationIntrospector ai = basic_deserializer_factory_1_expr149_line_1386;
        int PROBE_START_LINE_1387 = 1387;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1362_line_1387 = ai;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1359_line_1387 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_annotated_1361_line_1387 = annotated;
		com.fasterxml.jackson.databind.JavaType p_base_type_1360_line_1387 = baseType;
		TypeResolverBuilder<?> basic_deserializer_factory_1_expr150_line_1387 = v_ai_1362_line_1387
				.findPropertyTypeResolver(p_config_1359_line_1387, p_annotated_1361_line_1387,
						p_base_type_1360_line_1387);
		int PROBE_END_LINE_1387 = 1387;
		TypeResolverBuilder<?> b = basic_deserializer_factory_1_expr150_line_1387;        
        int PROBE_START_LINE_1389 = 1391;
		TypeResolverBuilder<?> v_b_1363_line_1389 = b;
		boolean basic_deserializer_factory_1_expr151_line_1389 = v_b_1363_line_1389 == null;
		int PROBE_END_LINE_1389 = 1391;
		// Defaulting: if no annotations on member, check value class
        if (basic_deserializer_factory_1_expr151_line_1389) {
            int PROBE_START_LINE_1390 = 1390;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1359_line_1390 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1360_line_1390 = baseType;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr152_line_1390 = findTypeDeserializer(
					p_config_1359_line_1390, p_base_type_1360_line_1390);
			int PROBE_END_LINE_1390 = 1390;
			return basic_deserializer_factory_1_expr152_line_1390;
        }
        // but if annotations found, may need to resolve subtypes:
        Collection<NamedType> subtypes = config.getSubtypeResolver().collectAndResolveSubtypes(
                annotated, config, ai, baseType);
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
        AnnotationIntrospector ai = config.getAnnotationIntrospector();
        TypeResolverBuilder<?> b = ai.findPropertyContentTypeResolver(config, propertyEntity, containerType);        
        JavaType contentType = containerType.getContentType();
        // Defaulting: if no annotations on member, check class
        if (b == null) {
            return findTypeDeserializer(config, contentType);
        }
        // but if annotations found, may need to resolve subtypes:
        Collection<NamedType> subtypes = config.getSubtypeResolver().collectAndResolveSubtypes(
                propertyEntity, config, ai, contentType);
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
        int PROBE_START_LINE_1437 = 1437;
		com.fasterxml.jackson.databind.JavaType p_type_1368_line_1437 = type;
		Class<?> basic_deserializer_factory_1_expr153_line_1437 = p_type_1368_line_1437.getRawClass();
		int PROBE_END_LINE_1437 = 1437;
		Class<?> rawType = basic_deserializer_factory_1_expr153_line_1437;
        int PROBE_START_LINE_1439 = 1441;
		Class<?> v_raw_type_1370_line_1439 = rawType;
		Class<?> f_class_object_1210_line_1439 = CLASS_OBJECT;
		boolean basic_deserializer_factory_1_expr154_line_1439 = v_raw_type_1370_line_1439 == f_class_object_1210_line_1439;
		int PROBE_END_LINE_1439 = 1441;
		// Object ("untyped"), String equivalents:
        if (basic_deserializer_factory_1_expr154_line_1439) {
            return new UntypedObjectDeserializer();
        }
        int PROBE_START_LINE_1442 = 1444;
		Class<?> v_raw_type_1370_line_1442 = rawType;
		Class<?> f_class_string_1211_line_1442 = CLASS_STRING;
		boolean basic_deserializer_factory_1_expr156_line_1442 = v_raw_type_1370_line_1442 == f_class_string_1211_line_1442;
		boolean basic_deserializer_factory_1_expr157_line_1442 = false;
		if (!basic_deserializer_factory_1_expr156_line_1442) {
			Class<?> v_raw_type_1370_line_1442_v1 = rawType;
			Class<?> f_class_char_buffer_1212_line_1442 = CLASS_CHAR_BUFFER;
			basic_deserializer_factory_1_expr157_line_1442 = v_raw_type_1370_line_1442_v1 == f_class_char_buffer_1212_line_1442;
		}
		boolean basic_deserializer_factory_1_expr155_line_1442 = basic_deserializer_factory_1_expr156_line_1442
				|| basic_deserializer_factory_1_expr157_line_1442;
		int PROBE_END_LINE_1442 = 1444;
		if (basic_deserializer_factory_1_expr155_line_1442) {
            return StringDeserializer.instance;
        }
        int PROBE_START_LINE_1445 = 1453;
		Class<?> v_raw_type_1370_line_1445 = rawType;
		Class<?> f_class_iterable_1213_line_1445 = CLASS_ITERABLE;
		boolean basic_deserializer_factory_1_expr158_line_1445 = v_raw_type_1370_line_1445 == f_class_iterable_1213_line_1445;
		int PROBE_END_LINE_1445 = 1453;
		if (basic_deserializer_factory_1_expr158_line_1445) {
            // [Issue#199]: Can and should 'upgrade' to a Collection type:
            TypeFactory tf = ctxt.getTypeFactory();
            JavaType[] tps = tf.findTypeParameters(type, CLASS_ITERABLE);
            JavaType elemType = (tps == null || tps.length != 1) ? TypeFactory.unknownType() : tps[0];
            CollectionType ct = tf.constructCollectionType(Collection.class, elemType);
            // Should we re-introspect beanDesc? For now let's not...
            return createCollectionDeserializer(ctxt, ct, beanDesc);
        }
        int PROBE_START_LINE_1454 = 1472;
		Class<?> v_raw_type_1370_line_1454 = rawType;
		Class<?> f_class_map_entry_1214_line_1454 = CLASS_MAP_ENTRY;
		boolean basic_deserializer_factory_1_expr159_line_1454 = v_raw_type_1370_line_1454 == f_class_map_entry_1214_line_1454;
		int PROBE_END_LINE_1454 = 1472;
		if (basic_deserializer_factory_1_expr159_line_1454) {
            final DeserializationConfig config = ctxt.getConfig();
            TypeFactory tf = ctxt.getTypeFactory();
            JavaType[] tps = tf.findTypeParameters(type, CLASS_MAP_ENTRY);
            JavaType kt, vt;
            if (tps == null || tps.length != 2) {
                kt = vt = TypeFactory.unknownType();
            } else {
                kt = tps[0];
                vt = tps[1];
            }
            TypeDeserializer vts = (TypeDeserializer) vt.getTypeHandler();
            if (vts == null) {
                vts = findTypeDeserializer(config, vt);
            }
            JsonDeserializer<Object> valueDeser = vt.getValueHandler();
            KeyDeserializer keyDes = (KeyDeserializer) kt.getValueHandler();
            return new MapEntryDeserializer(type, keyDes, valueDeser, vts);
        }
        int PROBE_START_LINE_1473 = 1473;
		Class<?> v_raw_type_1370_line_1473 = rawType;
		String basic_deserializer_factory_1_expr160_line_1473 = v_raw_type_1370_line_1473.getName();
		int PROBE_END_LINE_1473 = 1473;
		String clsName = basic_deserializer_factory_1_expr160_line_1473;
        int PROBE_START_LINE_1474 = 1483;
		Class<?> v_raw_type_1370_line_1474 = rawType;
		boolean basic_deserializer_factory_1_expr162_line_1474 = v_raw_type_1370_line_1474.isPrimitive();
		boolean basic_deserializer_factory_1_expr163_line_1474 = false;
		if (!basic_deserializer_factory_1_expr162_line_1474) {
			String v_cls_name_1371_line_1474 = clsName;
			basic_deserializer_factory_1_expr163_line_1474 = v_cls_name_1371_line_1474.startsWith("java.");
		}
		boolean basic_deserializer_factory_1_expr161_line_1474 = basic_deserializer_factory_1_expr162_line_1474
				|| basic_deserializer_factory_1_expr163_line_1474;
		int PROBE_END_LINE_1474 = 1483;
		if (basic_deserializer_factory_1_expr161_line_1474) {
            int PROBE_START_LINE_1476 = 1476;
			Class<?> v_raw_type_1370_line_1476 = rawType;
			String v_cls_name_1371_line_1476 = clsName;
			JsonDeserializer<?> basic_deserializer_factory_1_expr164_line_1476 = NumberDeserializers
					.find(v_raw_type_1370_line_1476, v_cls_name_1371_line_1476);
			int PROBE_END_LINE_1476 = 1476;
			// Primitives/wrappers, other Numbers:
            JsonDeserializer<?> deser = basic_deserializer_factory_1_expr164_line_1476;
            int PROBE_START_LINE_1477 = 1479;
			JsonDeserializer<?> v_deser_1372_line_1477 = deser;
			boolean basic_deserializer_factory_1_expr165_line_1477 = v_deser_1372_line_1477 == null;
			int PROBE_END_LINE_1477 = 1479;
			if (basic_deserializer_factory_1_expr165_line_1477) {
                deser = DateDeserializers.find(rawType, clsName);
            }
            int PROBE_START_LINE_1480 = 1482;
			JsonDeserializer<?> v_deser_1372_line_1480 = deser;
			boolean basic_deserializer_factory_1_expr166_line_1480 = v_deser_1372_line_1480 != null;
			int PROBE_END_LINE_1480 = 1482;
			if (basic_deserializer_factory_1_expr166_line_1480) {
                int PROBE_START_LINE_1481 = 1481;
				JsonDeserializer<?> v_deser_1372_line_1481 = deser;
				int PROBE_END_LINE_1481 = 1481;
				return v_deser_1372_line_1481;
            }
        }
        int PROBE_START_LINE_1485 = 1487;
		Class<?> v_raw_type_1370_line_1485 = rawType;
		boolean basic_deserializer_factory_1_expr167_line_1485 = v_raw_type_1370_line_1485 == TokenBuffer.class;
		int PROBE_END_LINE_1485 = 1487;
		// and a few Jackson types as well:
        if (basic_deserializer_factory_1_expr167_line_1485) {
            return new TokenBufferDeserializer();
        }
        int PROBE_START_LINE_1488 = 1502;
		Class<?> v_raw_type_1370_line_1488 = rawType;
		boolean basic_deserializer_factory_1_expr169_line_1488 = AtomicReference.class
				.isAssignableFrom(v_raw_type_1370_line_1488);
		int PROBE_END_LINE_1488 = 1502;
		if (basic_deserializer_factory_1_expr169_line_1488) {
            // Must find parameterization
            TypeFactory tf = ctxt.getTypeFactory();
            JavaType[] params = tf.findTypeParameters(type, AtomicReference.class);
            JavaType referencedType;
            if (params == null || params.length < 1) { // untyped (raw)
                referencedType = TypeFactory.unknownType();
            } else {
                referencedType = params[0];
            }
            TypeDeserializer vts = findTypeDeserializer(ctxt.getConfig(), referencedType);
            BeanDescription refdDesc = ctxt.getConfig().introspectClassAnnotations(referencedType);
            JsonDeserializer<?> deser = findDeserializerFromAnnotation(ctxt, refdDesc.getClassInfo());
            return new AtomicReferenceDeserializer(referencedType, vts, deser);
        }
        int PROBE_START_LINE_1503 = 1503;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1367_line_1503 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1368_line_1503 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1369_line_1503 = beanDesc;
		JsonDeserializer<?> basic_deserializer_factory_1_expr171_line_1503 = findOptionalStdDeserializer(
				p_ctxt_1367_line_1503, p_type_1368_line_1503, p_bean_desc_1369_line_1503);
		int PROBE_END_LINE_1503 = 1503;
		JsonDeserializer<?> deser = basic_deserializer_factory_1_expr171_line_1503;
        int PROBE_START_LINE_1504 = 1506;
		JsonDeserializer<?> v_deser_1373_line_1504 = deser;
		boolean basic_deserializer_factory_1_expr172_line_1504 = v_deser_1373_line_1504 != null;
		int PROBE_END_LINE_1504 = 1506;
		if (basic_deserializer_factory_1_expr172_line_1504) {
            return deser;
        }
        int PROBE_START_LINE_1507 = 1507;
		Class<?> v_raw_type_1370_line_1507 = rawType;
		String v_cls_name_1371_line_1507 = clsName;
		JsonDeserializer<?> basic_deserializer_factory_1_expr173_line_1507 = JdkDeserializers
				.find(v_raw_type_1370_line_1507, v_cls_name_1371_line_1507);
		int PROBE_END_LINE_1507 = 1507;
		return basic_deserializer_factory_1_expr173_line_1507;
    }

    /*
    /**********************************************************
    /* Helper methods, finding custom deserializers
    /**********************************************************
     */

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

    @SuppressWarnings("unchecked")
    protected JsonDeserializer<Object> _findCustomBeanDeserializer(JavaType type,
            DeserializationConfig config, BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1536 = 1541;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1219_line_1536 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.deser.Deserializers> basic_deserializer_factory_1_expr174_line_1536 = f__factory_config_1219_line_1536
				.deserializers();
		int PROBE_END_LINE_1536 = 1541;
		for (Deserializers d  : basic_deserializer_factory_1_expr174_line_1536) {
            JsonDeserializer<?> deser = d.findBeanDeserializer(type, config, beanDesc);
            if (deser != null) {
                return (JsonDeserializer<Object>) deser;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionDeserializer(CollectionType type,
            DeserializationConfig config, BeanDescription beanDesc,
            TypeDeserializer elementTypeDeserializer, JsonDeserializer<?> elementDeserializer)
        throws JsonMappingException
    {
        for (Deserializers d  : _factoryConfig.deserializers()) {
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
    
    /*
    /**********************************************************
    /* Helper methods, value/content/key type introspection
    /**********************************************************
     */
    
    /**
     * Helper method called to check if a class or method
     * has annotation that tells which class to use for deserialization.
     * Returns null if no such annotation found.
     */
    protected JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext ctxt,
            Annotated ann)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1648 = 1648;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1411_line_1648 = ctxt;
		com.fasterxml.jackson.databind.AnnotationIntrospector basic_deserializer_factory_1_expr176_line_1648 = p_ctxt_1411_line_1648
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.introspect.Annotated p_ann_1412_line_1648 = ann;
		Object basic_deserializer_factory_1_expr175_line_1648 = basic_deserializer_factory_1_expr176_line_1648
				.findDeserializer(p_ann_1412_line_1648);
		int PROBE_END_LINE_1648 = 1648;
		Object deserDef = basic_deserializer_factory_1_expr175_line_1648;
        int PROBE_START_LINE_1649 = 1651;
		Object v_deser_def_1413_line_1649 = deserDef;
		boolean basic_deserializer_factory_1_expr177_line_1649 = v_deser_def_1413_line_1649 == null;
		int PROBE_END_LINE_1649 = 1651;
		if (basic_deserializer_factory_1_expr177_line_1649) {
            return null;
        }
        return ctxt.deserializerInstance(ann, deserDef);
    }

    /**
     * Method called to see if given method has annotations that indicate
     * a more specific type than what the argument specifies.
     * If annotations are present, they must specify compatible Class;
     * instance of which can be assigned using the method. This means
     * that the Class has to be raw class of type, or its sub-class
     * (or, implementing class if original Class instance is an interface).
     *
     * @param a Method or field that the type is associated with
     * @param type Type of field, or the setter argument
     *
     * @return Original type if no annotations are present; or a more
     *   specific type derived from it if type annotation(s) was found
     *
     * @throws JsonMappingException if invalid annotation is found
     */
    @SuppressWarnings({ "unchecked" })
    protected <T extends JavaType> T modifyTypeByAnnotation(DeserializationContext ctxt,
            Annotated a, T type)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1677 = 1677;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1414_line_1677 = ctxt;
		AnnotationIntrospector basic_deserializer_factory_1_expr178_line_1677 = p_ctxt_1414_line_1677
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1677 = 1677;
		// first: let's check class for the instance itself:
        AnnotationIntrospector intr = basic_deserializer_factory_1_expr178_line_1677;
        int PROBE_START_LINE_1678 = 1678;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1417_line_1678 = intr;
		com.fasterxml.jackson.databind.introspect.Annotated p_a_1415_line_1678 = a;
		T p_type_1416_line_1678 = type;
		Class<?> basic_deserializer_factory_1_expr179_line_1678 = v_intr_1417_line_1678
				.findDeserializationType(p_a_1415_line_1678, p_type_1416_line_1678);
		int PROBE_END_LINE_1678 = 1678;
		Class<?> subclass = basic_deserializer_factory_1_expr179_line_1678;
        int PROBE_START_LINE_1679 = 1685;
		Class<?> v_subclass_1418_line_1679 = subclass;
		boolean basic_deserializer_factory_1_expr180_line_1679 = v_subclass_1418_line_1679 != null;
		int PROBE_END_LINE_1679 = 1685;
		if (basic_deserializer_factory_1_expr180_line_1679) {
            try {
                type = (T) type.narrowBy(subclass);
            } catch (IllegalArgumentException iae) {
                throw new JsonMappingException("Failed to narrow type "+type+" with concrete-type annotation (value "+subclass.getName()+"), method '"+a.getName()+"': "+iae.getMessage(), null, iae);
            }
        }

        int PROBE_START_LINE_1688 = 1733;
		T p_type_1416_line_1688 = type;
		boolean basic_deserializer_factory_1_expr181_line_1688 = p_type_1416_line_1688.isContainerType();
		int PROBE_END_LINE_1688 = 1733;
		// then key class
        if (basic_deserializer_factory_1_expr181_line_1688) {
            Class<?> keyClass = intr.findDeserializationKeyType(a, type.getKeyType());
            if (keyClass != null) {
                // illegal to use on non-Maps
                if (!(type instanceof MapLikeType)) {
                    throw new JsonMappingException("Illegal key-type annotation: type "+type+" is not a Map(-like) type");
                }
                try {
                    type = (T) ((MapLikeType) type).narrowKey(keyClass);
                } catch (IllegalArgumentException iae) {
                    throw new JsonMappingException("Failed to narrow key type "+type+" with key-type annotation ("+keyClass.getName()+"): "+iae.getMessage(), null, iae);
                }
            }
            JavaType keyType = type.getKeyType();
            /* 21-Mar-2011, tatu: ... and associated deserializer too (unless already assigned)
             *   (not 100% why or how, but this does seem to get called more than once, which
             *   is not good: for now, let's just avoid errors)
             */
            if (keyType != null && keyType.getValueHandler() == null) {
                Object kdDef = intr.findKeyDeserializer(a);
                KeyDeserializer kd = ctxt.keyDeserializerInstance(a, kdDef);
                if (kd != null) {
                    type = (T) ((MapLikeType) type).withKeyValueHandler(kd);
                    keyType = type.getKeyType(); // just in case it's used below
                }
            }            
           
           // and finally content class; only applicable to structured types
           Class<?> cc = intr.findDeserializationContentType(a, type.getContentType());
           if (cc != null) {
               try {
                   type = (T) type.narrowContentsBy(cc);
               } catch (IllegalArgumentException iae) {
                   throw new JsonMappingException("Failed to narrow content type "+type+" with content-type annotation ("+cc.getName()+"): "+iae.getMessage(), null, iae);
               }
           }
           // ... as well as deserializer for contents:
           JavaType contentType = type.getContentType();
           if (contentType.getValueHandler() == null) { // as with above, avoid resetting (which would trigger exception)
               Object cdDef = intr.findContentDeserializer(a);
                JsonDeserializer<?> cd = ctxt.deserializerInstance(a, cdDef);
                if (cd != null) {
                    type = (T) type.withContentValueHandler(cd);
                }
            }
        }
        int PROBE_START_LINE_1734 = 1734;
		T p_type_1416_line_1734 = type;
		int PROBE_END_LINE_1734 = 1734;
		return p_type_1416_line_1734;
    }
    
    /**
     * Helper method used to resolve method return types and field
     * types. The main trick here is that the containing bean may
     * have type variable binding information (when deserializing
     * using generic type passed as type reference), which is
     * needed in some cases.
     */
    protected JavaType resolveType(DeserializationContext ctxt,
            BeanDescription beanDesc, JavaType type, AnnotatedMember member)
        throws JsonMappingException
    {
        int PROBE_START_LINE_1749 = 1778;
		com.fasterxml.jackson.databind.JavaType p_type_1421_line_1749 = type;
		boolean basic_deserializer_factory_1_expr182_line_1749 = p_type_1421_line_1749.isContainerType();
		int PROBE_END_LINE_1749 = 1778;
		// [JACKSON-154]: Also need to handle keyUsing, contentUsing
        if (basic_deserializer_factory_1_expr182_line_1749) {
            AnnotationIntrospector intr = ctxt.getAnnotationIntrospector();
            JavaType keyType = type.getKeyType();
            if (keyType != null) {
                Object kdDef = intr.findKeyDeserializer(member);
                KeyDeserializer kd = ctxt.keyDeserializerInstance(member, kdDef);
                if (kd != null) {
                    type = ((MapLikeType) type).withKeyValueHandler(kd);
                    keyType = type.getKeyType(); // just in case it's used below
                }
            }
            // and all container types have content types...
            Object cdDef = intr.findContentDeserializer(member);
            JsonDeserializer<?> cd = ctxt.deserializerInstance(member, cdDef);
            if (cd != null) {
                type = type.withContentValueHandler(cd);
            }
            /* 04-Feb-2010, tatu: Need to figure out JAXB annotations that indicate type
             *    information to use for polymorphic members; and specifically types for
             *    collection values (contents).
             *    ... but only applies to members (fields, methods), not classes
             */
            if (member instanceof AnnotatedMember) {
            	TypeDeserializer contentTypeDeser = findPropertyContentTypeDeserializer(
            	        ctxt.getConfig(), type, (AnnotatedMember) member);            	
            	if (contentTypeDeser != null) {
            	    type = type.withContentTypeHandler(contentTypeDeser);
            	}
            }
        }
        TypeDeserializer valueTypeDeser = null;

        int PROBE_START_LINE_1781 = 1787;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_1422_line_1781 = member;
		boolean basic_deserializer_factory_1_expr183_line_1781 = p_member_1422_line_1781 instanceof AnnotatedMember;
		int PROBE_END_LINE_1781 = 1787;
		if (basic_deserializer_factory_1_expr183_line_1781) { // JAXB allows per-property annotations
            int PROBE_START_LINE_1782 = 1783;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1419_line_1782 = ctxt;
			com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr186_line_1782 = p_ctxt_1419_line_1782
					.getConfig();
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr185_line_1782 = findPropertyTypeDeserializer(
					basic_deserializer_factory_1_expr186_line_1782, type, (AnnotatedMember) member);
			int PROBE_END_LINE_1782 = 1783;
			valueTypeDeser = basic_deserializer_factory_1_expr185_line_1782;
        } else { // classes just have Jackson annotations
            // probably only occurs if 'property' is null anyway
            valueTypeDeser = findTypeDeserializer(ctxt.getConfig(), type);
        }
        int PROBE_START_LINE_1788 = 1790;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_value_type_deser_1423_line_1788 = valueTypeDeser;
		boolean basic_deserializer_factory_1_expr188_line_1788 = v_value_type_deser_1423_line_1788 != null;
		int PROBE_END_LINE_1788 = 1790;
		if (basic_deserializer_factory_1_expr188_line_1788) {
            type = type.withTypeHandler(valueTypeDeser);
        }
        int PROBE_START_LINE_1791 = 1791;
		com.fasterxml.jackson.databind.JavaType p_type_1421_line_1791 = type;
		int PROBE_END_LINE_1791 = 1791;
		return p_type_1421_line_1791;
    }
    
    protected EnumResolver<?> constructEnumResolver(Class<?> enumClass,
            DeserializationConfig config, AnnotatedMethod jsonValueMethod)
    {
        if (jsonValueMethod != null) {
            Method accessor = jsonValueMethod.getAnnotated();
            if (config.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(accessor);
            }
            return EnumResolver.constructUnsafeUsingMethod(enumClass, accessor);
        }
        // [JACKSON-212]: may need to use Enum.toString()
        if (config.isEnabled(DeserializationFeature.READ_ENUMS_USING_TO_STRING)) {
            return EnumResolver.constructUnsafeUsingToString(enumClass);
        }
        return EnumResolver.constructUnsafe(enumClass, config.getAnnotationIntrospector());
    }

    protected AnnotatedMethod _findJsonValueFor(DeserializationConfig config, JavaType enumType)
    {
        if (enumType == null) {
            return null;
        }
        BeanDescription beanDesc = config.introspect(enumType);
        return beanDesc.findJsonValueMethod();
    }
}
