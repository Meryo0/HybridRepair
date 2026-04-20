package com.fasterxml.jackson.databind.deser;

import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicReference;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate;
import com.fasterxml.jackson.databind.deser.impl.CreatorCollector;
import com.fasterxml.jackson.databind.deser.impl.JavaUtilCollectionsDeserializers;
import com.fasterxml.jackson.databind.deser.std.*;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.*;
import com.fasterxml.jackson.databind.util.*;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JacksonInject.Value;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import java.util.Map;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import java.util.Iterator;
import com.fasterxml.jackson.databind.PropertyName;
import java.util.Collection;
import java.util.Set;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.util.List;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.util.NameTransformer;
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
    private final static Class<?> CLASS_CHAR_SEQUENCE = CharSequence.class;
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
        int PROBE_START_LINE_64 = 64;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1541_line_64 = _mapFallbacks;
		String basic_deserializer_factory_1_expr9_line_64 = Map.class.getName();
		int PROBE_END_LINE_64 = 64;
		f__map_fallbacks_1541_line_64.put(basic_deserializer_factory_1_expr9_line_64, LinkedHashMap.class);
        int PROBE_START_LINE_65 = 65;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1541_line_65 = _mapFallbacks;
		String basic_deserializer_factory_1_expr13_line_65 = ConcurrentMap.class.getName();
		int PROBE_END_LINE_65 = 65;
		f__map_fallbacks_1541_line_65.put(basic_deserializer_factory_1_expr13_line_65, ConcurrentHashMap.class);
        int PROBE_START_LINE_66 = 66;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1541_line_66 = _mapFallbacks;
		String basic_deserializer_factory_1_expr17_line_66 = SortedMap.class.getName();
		int PROBE_END_LINE_66 = 66;
		f__map_fallbacks_1541_line_66.put(basic_deserializer_factory_1_expr17_line_66, TreeMap.class);

        int PROBE_START_LINE_68 = 68;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1541_line_68 = _mapFallbacks;
		String basic_deserializer_factory_1_expr21_line_68 = java.util.NavigableMap.class.getName();
		int PROBE_END_LINE_68 = 68;
		f__map_fallbacks_1541_line_68.put(basic_deserializer_factory_1_expr21_line_68, TreeMap.class);
        int PROBE_START_LINE_69 = 70;
		HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1541_line_69 = _mapFallbacks;
		String basic_deserializer_factory_1_expr25_line_69 = java.util.concurrent.ConcurrentNavigableMap.class
				.getName();
		int PROBE_END_LINE_69 = 70;
		f__map_fallbacks_1541_line_69.put(basic_deserializer_factory_1_expr25_line_69,
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
        int PROBE_START_LINE_81 = 81;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1542_line_81 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr30_line_81 = Collection.class.getName();
		int PROBE_END_LINE_81 = 81;
		f__collection_fallbacks_1542_line_81.put(basic_deserializer_factory_1_expr30_line_81, ArrayList.class);
        int PROBE_START_LINE_82 = 82;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1542_line_82 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr34_line_82 = List.class.getName();
		int PROBE_END_LINE_82 = 82;
		f__collection_fallbacks_1542_line_82.put(basic_deserializer_factory_1_expr34_line_82, ArrayList.class);
        int PROBE_START_LINE_83 = 83;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1542_line_83 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr38_line_83 = Set.class.getName();
		int PROBE_END_LINE_83 = 83;
		f__collection_fallbacks_1542_line_83.put(basic_deserializer_factory_1_expr38_line_83, HashSet.class);
        int PROBE_START_LINE_84 = 84;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1542_line_84 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr42_line_84 = SortedSet.class.getName();
		int PROBE_END_LINE_84 = 84;
		f__collection_fallbacks_1542_line_84.put(basic_deserializer_factory_1_expr42_line_84, TreeSet.class);
        int PROBE_START_LINE_85 = 85;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1542_line_85 = _collectionFallbacks;
		String basic_deserializer_factory_1_expr46_line_85 = Queue.class.getName();
		int PROBE_END_LINE_85 = 85;
		f__collection_fallbacks_1542_line_85.put(basic_deserializer_factory_1_expr46_line_85, LinkedList.class);

        int PROBE_START_LINE_92 = 92;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1542_line_92 = _collectionFallbacks;
		int PROBE_END_LINE_92 = 92;
		// then JDK 1.6 types:
        /* 17-May-2013, tatu: [databind#216] Should be fine to use straight Class references EXCEPT
         *   that some god-forsaken platforms (... looking at you, Android) do not
         *   include these. So, use "soft" references...
         */
        f__collection_fallbacks_1542_line_92.put("java.util.Deque", LinkedList.class);
        int PROBE_START_LINE_93 = 93;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1542_line_93 = _collectionFallbacks;
		int PROBE_END_LINE_93 = 93;
		f__collection_fallbacks_1542_line_93.put("java.util.NavigableSet", TreeSet.class);
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
        int PROBE_START_LINE_115 = 115;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig p_config_1543_line_115 = config;
		int PROBE_END_LINE_115 = 115;
		_factoryConfig = p_config_1543_line_115;
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
            int PROBE_START_LINE_193 = 193;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1551_line_193 = config;
			com.fasterxml.jackson.databind.JavaType p_type_1552_line_193 = type;
			JavaType basic_deserializer_factory_1_expr54_line_193 = _mapAbstractType2(p_config_1551_line_193,
					p_type_1552_line_193);
			int PROBE_END_LINE_193 = 193;
			JavaType next = basic_deserializer_factory_1_expr54_line_193;
            int PROBE_START_LINE_194 = 196;
			com.fasterxml.jackson.databind.JavaType v_next_1553_line_194 = next;
			boolean basic_deserializer_factory_1_expr55_line_194 = v_next_1553_line_194 == null;
			int PROBE_END_LINE_194 = 196;
			if (basic_deserializer_factory_1_expr55_line_194) {
                int PROBE_START_LINE_195 = 195;
				com.fasterxml.jackson.databind.JavaType p_type_1552_line_195 = type;
				int PROBE_END_LINE_195 = 195;
				return p_type_1552_line_195;
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
        int PROBE_START_LINE_215 = 215;
		com.fasterxml.jackson.databind.JavaType p_type_1555_line_215 = type;
		Class<?> basic_deserializer_factory_1_expr56_line_215 = p_type_1555_line_215.getRawClass();
		int PROBE_END_LINE_215 = 215;
		Class<?> currClass = basic_deserializer_factory_1_expr56_line_215;
        int PROBE_START_LINE_216 = 223;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_216 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr57_line_216 = f__factory_config_1544_line_216
				.hasAbstractTypeResolvers();
		int PROBE_END_LINE_216 = 223;
		if (basic_deserializer_factory_1_expr57_line_216) {
            for (AbstractTypeResolver resolver : _factoryConfig.abstractTypeResolvers()) {
                JavaType concrete = resolver.findTypeMapping(config, type);
                if ((concrete != null) && !concrete.hasRawClass(currClass)) {
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
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1557_line_243 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr58_line_243 = p_ctxt_1557_line_243.getConfig();
		int PROBE_END_LINE_243 = 243;
		final DeserializationConfig config = basic_deserializer_factory_1_expr58_line_243;

        ValueInstantiator instantiator = null;
        int PROBE_START_LINE_247 = 247;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1558_line_247 = beanDesc;
		AnnotatedClass basic_deserializer_factory_1_expr59_line_247 = p_bean_desc_1558_line_247.getClassInfo();
		int PROBE_END_LINE_247 = 247;
		// Check @JsonValueInstantiator before anything else
        AnnotatedClass ac = basic_deserializer_factory_1_expr59_line_247;
        int PROBE_START_LINE_248 = 248;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1557_line_248 = ctxt;
		com.fasterxml.jackson.databind.AnnotationIntrospector basic_deserializer_factory_1_expr61_line_248 = p_ctxt_1557_line_248
				.getAnnotationIntrospector();
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1561_line_248 = ac;
		Object basic_deserializer_factory_1_expr60_line_248 = basic_deserializer_factory_1_expr61_line_248
				.findValueInstantiator(v_ac_1561_line_248);
		int PROBE_END_LINE_248 = 248;
		Object instDef = basic_deserializer_factory_1_expr60_line_248;
        int PROBE_START_LINE_249 = 251;
		Object v_inst_def_1562_line_249 = instDef;
		boolean basic_deserializer_factory_1_expr62_line_249 = v_inst_def_1562_line_249 != null;
		int PROBE_END_LINE_249 = 251;
		if (basic_deserializer_factory_1_expr62_line_249) {
            instantiator = _valueInstantiatorInstance(config, ac, instDef);
        }
        int PROBE_START_LINE_252 = 259;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1560_line_252 = instantiator;
		boolean basic_deserializer_factory_1_expr63_line_252 = v_instantiator_1560_line_252 == null;
		int PROBE_END_LINE_252 = 259;
		if (basic_deserializer_factory_1_expr63_line_252) {
            int PROBE_START_LINE_255 = 255;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_1559_line_255 = config;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1558_line_255 = beanDesc;
			com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr65_line_255 = _findStdValueInstantiator(
					v_config_1559_line_255, p_bean_desc_1558_line_255);
			int PROBE_END_LINE_255 = 255;
			// Second: see if some of standard Jackson/JDK types might provide value
            // instantiators.
            instantiator = basic_deserializer_factory_1_expr65_line_255;
            int PROBE_START_LINE_256 = 258;
			com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1560_line_256 = instantiator;
			boolean basic_deserializer_factory_1_expr66_line_256 = v_instantiator_1560_line_256 == null;
			int PROBE_END_LINE_256 = 258;
			if (basic_deserializer_factory_1_expr66_line_256) {
                int PROBE_START_LINE_257 = 257;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1557_line_257 = ctxt;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1558_line_257 = beanDesc;
				com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr68_line_257 = _constructDefaultValueInstantiator(
						p_ctxt_1557_line_257, p_bean_desc_1558_line_257);
				int PROBE_END_LINE_257 = 257;
				instantiator = basic_deserializer_factory_1_expr68_line_257;
            }
        }

        int PROBE_START_LINE_262 = 272;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_262 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr69_line_262 = f__factory_config_1544_line_262.hasValueInstantiators();
		int PROBE_END_LINE_262 = 272;
		// finally: anyone want to modify ValueInstantiator?
        if (basic_deserializer_factory_1_expr69_line_262) {
            for (ValueInstantiators insts : _factoryConfig.valueInstantiators()) {
                instantiator = insts.findValueInstantiator(config, beanDesc, instantiator);
                // let's do sanity check; easier to spot buggy handlers
                if (instantiator == null) {
                    ctxt.reportBadTypeDefinition(beanDesc,
						"Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator",
						insts.getClass().getName());
                }
            }
        }

        int PROBE_START_LINE_275 = 280;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1560_line_275 = instantiator;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter basic_deserializer_factory_1_expr71_line_275 = v_instantiator_1560_line_275
				.getIncompleteParameter();
		boolean basic_deserializer_factory_1_expr70_line_275 = basic_deserializer_factory_1_expr71_line_275 != null;
		int PROBE_END_LINE_275 = 280;
		// Sanity check: does the chosen ValueInstantiator have incomplete creators?
        if (basic_deserializer_factory_1_expr70_line_275) {
            final AnnotatedParameter nonAnnotatedParam = instantiator.getIncompleteParameter();
            final AnnotatedWithParams ctor = nonAnnotatedParam.getOwner();
            throw new IllegalArgumentException("Argument #"+nonAnnotatedParam.getIndex()
                +" of constructor "+ctor+" has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
        }

        int PROBE_START_LINE_282 = 282;
		com.fasterxml.jackson.databind.deser.ValueInstantiator v_instantiator_1560_line_282 = instantiator;
		int PROBE_END_LINE_282 = 282;
		return v_instantiator_1560_line_282;
    }

    private ValueInstantiator _findStdValueInstantiator(DeserializationConfig config,
            BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_289 = 289;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1564_line_289 = beanDesc;
		Class<?> basic_deserializer_factory_1_expr72_line_289 = p_bean_desc_1564_line_289.getBeanClass();
		int PROBE_END_LINE_289 = 289;
		Class<?> raw = basic_deserializer_factory_1_expr72_line_289;
        int PROBE_START_LINE_290 = 292;
		Class<?> v_raw_1565_line_290 = raw;
		boolean basic_deserializer_factory_1_expr73_line_290 = v_raw_1565_line_290 == JsonLocation.class;
		int PROBE_END_LINE_290 = 292;
		if (basic_deserializer_factory_1_expr73_line_290) {
            return new JsonLocationInstantiator();
        }
        int PROBE_START_LINE_294 = 305;
		Class<?> v_raw_1565_line_294 = raw;
		boolean basic_deserializer_factory_1_expr75_line_294 = Collection.class.isAssignableFrom(v_raw_1565_line_294);
		int PROBE_END_LINE_294 = 305;
		// [databind#1868]: empty List/Set/Map
        if (basic_deserializer_factory_1_expr75_line_294) {
            int PROBE_START_LINE_295 = 297;
			java.util.Set q_empty_set_65_line_295 = Collections.EMPTY_SET;
			Class<? extends java.util.Set> basic_deserializer_factory_1_expr78_line_295 = q_empty_set_65_line_295
					.getClass();
			Class<?> v_raw_1565_line_295 = raw;
			boolean basic_deserializer_factory_1_expr77_line_295 = basic_deserializer_factory_1_expr78_line_295 == v_raw_1565_line_295;
			int PROBE_END_LINE_295 = 297;
			if (basic_deserializer_factory_1_expr77_line_295) {
                return new ConstantValueInstantiator(Collections.EMPTY_SET);
            }
            int PROBE_START_LINE_298 = 300;
			java.util.List q_empty_list_66_line_298 = Collections.EMPTY_LIST;
			Class<? extends java.util.List> basic_deserializer_factory_1_expr80_line_298 = q_empty_list_66_line_298
					.getClass();
			Class<?> v_raw_1565_line_298 = raw;
			boolean basic_deserializer_factory_1_expr79_line_298 = basic_deserializer_factory_1_expr80_line_298 == v_raw_1565_line_298;
			int PROBE_END_LINE_298 = 300;
			if (basic_deserializer_factory_1_expr79_line_298) {
                return new ConstantValueInstantiator(Collections.EMPTY_LIST);
            }
        } else {
			int PROBE_START_LINE_301 = 305;
			Class<?> v_raw_1565_line_301 = raw;
			boolean basic_deserializer_factory_1_expr81_line_301 = Map.class.isAssignableFrom(v_raw_1565_line_301);
			int PROBE_END_LINE_301 = 305;
			if (basic_deserializer_factory_1_expr81_line_301) {
				int PROBE_START_LINE_302 = 304;
				java.util.Map q_empty_map_67_line_302 = Collections.EMPTY_MAP;
				Class<? extends java.util.Map> basic_deserializer_factory_1_expr84_line_302 = q_empty_map_67_line_302
						.getClass();
				Class<?> v_raw_1565_line_302 = raw;
				boolean basic_deserializer_factory_1_expr83_line_302 = basic_deserializer_factory_1_expr84_line_302 == v_raw_1565_line_302;
				int PROBE_END_LINE_302 = 304;
				if (basic_deserializer_factory_1_expr83_line_302) {
					return new ConstantValueInstantiator(Collections.EMPTY_MAP);
				}
			}
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
        int PROBE_START_LINE_317 = 317;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1570_line_317 = beanDesc;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1569_line_317 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr86_line_317 = p_ctxt_1569_line_317
				.getConfig();
		int PROBE_END_LINE_317 = 317;
		CreatorCollector creators = new CreatorCollector(p_bean_desc_1570_line_317, basic_deserializer_factory_1_expr86_line_317);
        int PROBE_START_LINE_318 = 318;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1569_line_318 = ctxt;
		AnnotationIntrospector basic_deserializer_factory_1_expr87_line_318 = p_ctxt_1569_line_318
				.getAnnotationIntrospector();
		int PROBE_END_LINE_318 = 318;
		AnnotationIntrospector intr = basic_deserializer_factory_1_expr87_line_318;
        
        int PROBE_START_LINE_321 = 321;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1569_line_321 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr88_line_321 = p_ctxt_1569_line_321.getConfig();
		int PROBE_END_LINE_321 = 321;
		// need to construct suitable visibility checker:
        final DeserializationConfig config = basic_deserializer_factory_1_expr88_line_321;
        int PROBE_START_LINE_322 = 323;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1573_line_322 = config;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1570_line_322 = beanDesc;
		Class<?> basic_deserializer_factory_1_expr90_line_322 = p_bean_desc_1570_line_322.getBeanClass();
		VisibilityChecker<?> basic_deserializer_factory_1_expr89_line_322 = v_config_1573_line_322
				.getDefaultVisibilityChecker(basic_deserializer_factory_1_expr90_line_322, beanDesc.getClassInfo());
		int PROBE_END_LINE_322 = 323;
		VisibilityChecker<?> vchecker = basic_deserializer_factory_1_expr89_line_322;

        int PROBE_START_LINE_333 = 334;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1569_line_333 = ctxt;
		Map<AnnotatedWithParams, BeanPropertyDefinition[]> basic_deserializer_factory_1_expr92_line_333 = _findCreatorsFromProperties(
				p_ctxt_1569_line_333, beanDesc);
		int PROBE_END_LINE_333 = 334;
		/* 24-Sep-2014, tatu: Tricky part first; need to merge resolved property information
         *  (which has creator parameters sprinkled around) with actual creator
         *  declarations (which are needed to access creator annotation, amongst other things).
         *  Easiest to combine that info first, then pass it to remaining processing.
         */
        /* 15-Mar-2015, tatu: Alas, this won't help with constructors that only have implicit
         *   names. Those will need to be resolved later on.
         */
        Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorDefs = basic_deserializer_factory_1_expr92_line_333;
        int PROBE_START_LINE_337 = 337;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1569_line_337 = ctxt;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1570_line_337 = beanDesc;
		VisibilityChecker<?> v_vchecker_1574_line_337 = vchecker;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1572_line_337 = intr;
		com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1571_line_337 = creators;
		Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_creator_defs_1575_line_337 = creatorDefs;
		int PROBE_END_LINE_337 = 337;
		// Important: first add factory methods; then constructors, so
        // latter can override former!
        _addDeserializerFactoryMethods(p_ctxt_1569_line_337, p_bean_desc_1570_line_337, v_vchecker_1574_line_337, v_intr_1572_line_337, v_creators_1571_line_337, v_creator_defs_1575_line_337);
        int PROBE_START_LINE_339 = 341;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1570_line_339 = beanDesc;
		com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr95_line_339 = p_bean_desc_1570_line_339
				.getType();
		boolean basic_deserializer_factory_1_expr94_line_339 = basic_deserializer_factory_1_expr95_line_339
				.isConcrete();
		int PROBE_END_LINE_339 = 341;
		// constructors only usable on concrete types:
        if (basic_deserializer_factory_1_expr94_line_339) {
            int PROBE_START_LINE_340 = 340;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1569_line_340 = ctxt;
			com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1570_line_340 = beanDesc;
			VisibilityChecker<?> v_vchecker_1574_line_340 = vchecker;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1572_line_340 = intr;
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1571_line_340 = creators;
			Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_creator_defs_1575_line_340 = creatorDefs;
			int PROBE_END_LINE_340 = 340;
			_addDeserializerConstructors(p_ctxt_1569_line_340, p_bean_desc_1570_line_340, v_vchecker_1574_line_340, v_intr_1572_line_340, v_creators_1571_line_340, v_creator_defs_1575_line_340);
        }
        int PROBE_START_LINE_342 = 342;
		com.fasterxml.jackson.databind.deser.impl.CreatorCollector v_creators_1571_line_342 = creators;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1569_line_342 = ctxt;
		com.fasterxml.jackson.databind.deser.ValueInstantiator basic_deserializer_factory_1_expr97_line_342 = v_creators_1571_line_342
				.constructValueInstantiator(p_ctxt_1569_line_342);
		int PROBE_END_LINE_342 = 342;
		return basic_deserializer_factory_1_expr97_line_342;
    }

    protected Map<AnnotatedWithParams,BeanPropertyDefinition[]> _findCreatorsFromProperties(DeserializationContext ctxt,
            BeanDescription beanDesc) throws JsonMappingException
    {
        int PROBE_START_LINE_348 = 348;
		Map<AnnotatedWithParams, BeanPropertyDefinition[]> basic_deserializer_factory_1_expr98_line_348 = Collections
				.emptyMap();
		int PROBE_END_LINE_348 = 348;
		Map<AnnotatedWithParams,BeanPropertyDefinition[]> result = basic_deserializer_factory_1_expr98_line_348;
        int PROBE_START_LINE_349 = 372;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1577_line_349 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition> basic_deserializer_factory_1_expr99_line_349 = p_bean_desc_1577_line_349
				.findProperties();
		int PROBE_END_LINE_349 = 372;
		for (BeanPropertyDefinition propDef : basic_deserializer_factory_1_expr99_line_349) {
            int PROBE_START_LINE_350 = 350;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1579_line_350 = propDef;
			Iterator<AnnotatedParameter> basic_deserializer_factory_1_expr100_line_350 = v_prop_def_1579_line_350
					.getConstructorParameters();
			int PROBE_END_LINE_350 = 350;
			Iterator<AnnotatedParameter> it = basic_deserializer_factory_1_expr100_line_350;
            while (true) {
                int PROBE_START_LINE_351 = 351;
				Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> v_it_1580_line_351 = it;
				boolean basic_deserializer_factory_1_expr101_line_351 = v_it_1580_line_351.hasNext();
				if (!(basic_deserializer_factory_1_expr101_line_351)) {
					break;
				}
				int PROBE_END_LINE_351 = 351;
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
                        ctxt.reportBadTypeDefinition(beanDesc,
"Conflict: parameter #%d of %s bound to more than one property; %s vs %s",
index, owner, defs[index], propDef);
                    }
                }
                defs[index] = propDef;
            }
        }
        int PROBE_START_LINE_373 = 373;
		Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> v_result_1578_line_373 = result;
		int PROBE_END_LINE_373 = 373;
		return v_result_1578_line_373;
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

    /*
    /**********************************************************
    /* Creator introspection
    /**********************************************************
     */

    protected void _addDeserializerConstructors(DeserializationContext ctxt,
            BeanDescription beanDesc, VisibilityChecker<?> vchecker,
         AnnotationIntrospector intr, CreatorCollector creators,
         Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorParams)
                 throws JsonMappingException
    {
        int PROBE_START_LINE_428 = 428;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1585_line_428 = beanDesc;
		boolean basic_deserializer_factory_1_expr102_line_428 = p_bean_desc_1585_line_428.isNonStaticInnerClass();
		int PROBE_END_LINE_428 = 428;
		// 25-Jan-2017, tatu: As per [databind#1501], [databind#1502], [databind#1503], best
        //     for now to skip attempts at using anything but no-args constructor (see
        //     `InnerClassProperty` construction for that)
        final boolean isNonStaticInnerClass = basic_deserializer_factory_1_expr102_line_428;
        int PROBE_START_LINE_429 = 432;
		boolean v_is_non_static_inner_class_1590_line_429 = isNonStaticInnerClass;
		int PROBE_END_LINE_429 = 432;
		if (v_is_non_static_inner_class_1590_line_429) {
            // TODO: look for `@JsonCreator` annotated ones, throw explicit exception?
            return;
        }

        int PROBE_START_LINE_437 = 437;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1585_line_437 = beanDesc;
		AnnotatedConstructor basic_deserializer_factory_1_expr103_line_437 = p_bean_desc_1585_line_437
				.findDefaultConstructor();
		int PROBE_END_LINE_437 = 437;
		// First things first: the "default constructor" (zero-arg
        // constructor; whether implicit or explicit) is NOT included
        // in list of constructors, so needs to be handled separately.
        AnnotatedConstructor defaultCtor = basic_deserializer_factory_1_expr103_line_437;
        int PROBE_START_LINE_438 = 442;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1591_line_438 = defaultCtor;
		boolean basic_deserializer_factory_1_expr104_line_438 = v_default_ctor_1591_line_438 != null;
		int PROBE_END_LINE_438 = 442;
		if (basic_deserializer_factory_1_expr104_line_438) {
            int PROBE_START_LINE_439 = 441;
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1588_line_439 = creators;
			boolean basic_deserializer_factory_1_expr107_line_439 = p_creators_1588_line_439.hasDefaultCreator();
			boolean basic_deserializer_factory_1_expr106_line_439 = !basic_deserializer_factory_1_expr107_line_439;
			boolean basic_deserializer_factory_1_expr108_line_439 = false;
			if (!basic_deserializer_factory_1_expr106_line_439) {
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1584_line_439 = ctxt;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1591_line_439 = defaultCtor;
				basic_deserializer_factory_1_expr108_line_439 = _hasCreatorAnnotation(p_ctxt_1584_line_439,
						v_default_ctor_1591_line_439);
			}
			boolean basic_deserializer_factory_1_expr105_line_439 = basic_deserializer_factory_1_expr106_line_439
					|| basic_deserializer_factory_1_expr108_line_439;
			int PROBE_END_LINE_439 = 441;
			if (basic_deserializer_factory_1_expr105_line_439) {
                int PROBE_START_LINE_440 = 440;
				com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1588_line_440 = creators;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_default_ctor_1591_line_440 = defaultCtor;
				int PROBE_END_LINE_440 = 440;
				p_creators_1588_line_440.setDefaultCreator(v_default_ctor_1591_line_440);
            }
        }
        // 21-Sep-2017, tatu: First let's handle explicitly annotated ones
        List<CreatorCandidate> nonAnnotated = new LinkedList<>();
        int explCount = 0;
        int PROBE_START_LINE_446 = 473;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1585_line_446 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> basic_deserializer_factory_1_expr111_line_446 = p_bean_desc_1585_line_446
				.getConstructors();
		int PROBE_END_LINE_446 = 473;
		for (AnnotatedConstructor ctor : basic_deserializer_factory_1_expr111_line_446) {
            int PROBE_START_LINE_447 = 447;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1587_line_447 = intr;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1584_line_447 = ctxt;
			com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr113_line_447 = p_ctxt_1584_line_447
					.getConfig();
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1594_line_447 = ctor;
			JsonCreator.Mode basic_deserializer_factory_1_expr112_line_447 = p_intr_1587_line_447
					.findCreatorAnnotation(basic_deserializer_factory_1_expr113_line_447, v_ctor_1594_line_447);
			int PROBE_END_LINE_447 = 447;
			JsonCreator.Mode creatorMode = basic_deserializer_factory_1_expr112_line_447;
            int PROBE_START_LINE_448 = 450;
			com.fasterxml.jackson.annotation.JsonCreator.Mode q_disabled_68_line_448 = Mode.DISABLED;
			com.fasterxml.jackson.annotation.JsonCreator.Mode v_creator_mode_1595_line_448 = creatorMode;
			boolean basic_deserializer_factory_1_expr114_line_448 = q_disabled_68_line_448 == v_creator_mode_1595_line_448;
			int PROBE_END_LINE_448 = 450;
			if (basic_deserializer_factory_1_expr114_line_448) {
                continue;
            }
            int PROBE_START_LINE_451 = 457;
			com.fasterxml.jackson.annotation.JsonCreator.Mode v_creator_mode_1595_line_451 = creatorMode;
			boolean basic_deserializer_factory_1_expr115_line_451 = v_creator_mode_1595_line_451 == null;
			int PROBE_END_LINE_451 = 457;
			if (basic_deserializer_factory_1_expr115_line_451) {
                int PROBE_START_LINE_453 = 455;
				VisibilityChecker<?> p_vchecker_1586_line_453 = vchecker;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1594_line_453 = ctor;
				boolean basic_deserializer_factory_1_expr116_line_453 = p_vchecker_1586_line_453
						.isCreatorVisible(v_ctor_1594_line_453);
				int PROBE_END_LINE_453 = 455;
				// let's check Visibility here, to avoid further processing for non-visible?
                if (basic_deserializer_factory_1_expr116_line_453) {
                    int PROBE_START_LINE_454 = 454;
					List<com.fasterxml.jackson.databind.deser.impl.CreatorCandidate> v_non_annotated_1592_line_454 = nonAnnotated;
					com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1587_line_454 = intr;
					com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1594_line_454 = ctor;
					Map<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[]> p_creator_params_1589_line_454 = creatorParams;
					com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_1594_line_454_v1 = ctor;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[] basic_deserializer_factory_1_expr119_line_454 = p_creator_params_1589_line_454
							.get(v_ctor_1594_line_454_v1);
					com.fasterxml.jackson.databind.deser.impl.CreatorCandidate basic_deserializer_factory_1_expr118_line_454 = CreatorCandidate
							.construct(p_intr_1587_line_454, v_ctor_1594_line_454,
									basic_deserializer_factory_1_expr119_line_454);
					int PROBE_END_LINE_454 = 454;
					v_non_annotated_1592_line_454.add(basic_deserializer_factory_1_expr118_line_454);
                }
                continue;
            }
            switch (creatorMode) {
            case DELEGATING:
                _addExplicitDelegatingCreator(ctxt, beanDesc, creators,
                        CreatorCandidate.construct(intr, ctor, null));
                break;
            case PROPERTIES:
                _addExplicitPropertyCreator(ctxt, beanDesc, creators,
                        CreatorCandidate.construct(intr, ctor, creatorParams.get(ctor)));
                break;
            default:
                _addExplicitAnyCreator(ctxt, beanDesc, creators,
                        CreatorCandidate.construct(intr, ctor, creatorParams.get(ctor)));
                break;
            }
            ++explCount;
        }
        int PROBE_START_LINE_475 = 477;
		int v_expl_count_1593_line_475 = explCount;
		boolean basic_deserializer_factory_1_expr120_line_475 = v_expl_count_1593_line_475 > 0;
		int PROBE_END_LINE_475 = 477;
		// And only if and when those handled, consider potentially visible ones
        if (basic_deserializer_factory_1_expr120_line_475) { // TODO: split method into two since we could have expl factories
            return;
        }
        List<AnnotatedWithParams> implicitCtors = null;
        int PROBE_START_LINE_479 = 594;
		List<com.fasterxml.jackson.databind.deser.impl.CreatorCandidate> v_non_annotated_1592_line_479 = nonAnnotated;
		int PROBE_END_LINE_479 = 594;
		for (CreatorCandidate candidate : v_non_annotated_1592_line_479) {
            int PROBE_START_LINE_480 = 480;
			com.fasterxml.jackson.databind.deser.impl.CreatorCandidate v_candidate_1597_line_480 = candidate;
			int basic_deserializer_factory_1_expr121_line_480 = v_candidate_1597_line_480.paramCount();
			int PROBE_END_LINE_480 = 480;
			final int argCount = basic_deserializer_factory_1_expr121_line_480;
            int PROBE_START_LINE_481 = 481;
			com.fasterxml.jackson.databind.deser.impl.CreatorCandidate v_candidate_1597_line_481 = candidate;
			AnnotatedWithParams basic_deserializer_factory_1_expr122_line_481 = v_candidate_1597_line_481.creator();
			int PROBE_END_LINE_481 = 481;
			final AnnotatedWithParams ctor = basic_deserializer_factory_1_expr122_line_481;

            int PROBE_START_LINE_484 = 506;
			int v_arg_count_1598_line_484 = argCount;
			boolean basic_deserializer_factory_1_expr123_line_484 = v_arg_count_1598_line_484 == 1;
			int PROBE_END_LINE_484 = 506;
			// some single-arg factory methods (String, number) are auto-detected
            if (basic_deserializer_factory_1_expr123_line_484) {
                int PROBE_START_LINE_485 = 485;
				com.fasterxml.jackson.databind.deser.impl.CreatorCandidate v_candidate_1597_line_485 = candidate;
				BeanPropertyDefinition basic_deserializer_factory_1_expr124_line_485 = v_candidate_1597_line_485
						.propertyDef(0);
				int PROBE_END_LINE_485 = 485;
				BeanPropertyDefinition propDef = basic_deserializer_factory_1_expr124_line_485;
                int PROBE_START_LINE_486 = 486;
				com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1587_line_486 = intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedWithParams v_ctor_1599_line_486 = ctor;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1600_line_486 = propDef;
				boolean basic_deserializer_factory_1_expr125_line_486 = _checkIfCreatorPropertyBased(
						p_intr_1587_line_486, v_ctor_1599_line_486, v_prop_def_1600_line_486);
				int PROBE_END_LINE_486 = 486;
				boolean useProps = basic_deserializer_factory_1_expr125_line_486;

                int PROBE_START_LINE_488 = 503;
				boolean v_use_props_1601_line_488 = useProps;
				int PROBE_END_LINE_488 = 503;
				if (v_use_props_1601_line_488) {
                    SettableBeanProperty[] properties = new SettableBeanProperty[1];
                    PropertyName name = candidate.paramName(0);
                    properties[0] = constructCreatorProperty(ctxt, beanDesc, name, 0,
                            candidate.parameter(0), candidate.injection(0));
                    creators.addPropertyCreator(ctor, false, properties);
                } else {
                    int PROBE_START_LINE_495 = 497;
					com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1588_line_495 = creators;
					int PROBE_END_LINE_495 = 497;
					/*boolean added = */ _handleSingleArgumentCreator(p_creators_1588_line_495,
                            ctor, false,
                            vchecker.isCreatorVisible(ctor));
                    int PROBE_START_LINE_500 = 502;
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1600_line_500 = propDef;
					boolean basic_deserializer_factory_1_expr128_line_500 = v_prop_def_1600_line_500 != null;
					int PROBE_END_LINE_500 = 502;
					// one more thing: sever link to creator property, to avoid possible later
                    // problems with "unresolved" constructor property
                    if (basic_deserializer_factory_1_expr128_line_500) {
                        ((POJOPropertyBuilder) propDef).removeConstructors();
                    }
                }
                // regardless, fully handled
                continue;
            }

            // 2 or more args; all params must have names or be injectable
            // 14-Mar-2015, tatu (2.6): Or, as per [#725], implicit names will also
            //   do, with some constraints. But that will require bit post processing...

            int PROBE_START_LINE_512 = 512;
			int basic_deserializer_factory_1_expr129_line_512 = -1;
			int PROBE_END_LINE_512 = 512;
			int nonAnnotatedParamIndex = basic_deserializer_factory_1_expr129_line_512;
            int PROBE_START_LINE_513 = 513;
			int v_arg_count_1598_line_513 = argCount;
			int PROBE_END_LINE_513 = 513;
			SettableBeanProperty[] properties = new SettableBeanProperty[v_arg_count_1598_line_513];
            int explicitNameCount = 0;
            int implicitWithCreatorCount = 0;
            int injectCount = 0;

            for (int i = 0; true; ++i) {
                int PROBE_START_LINE_519 = 519;
				int v_i_1607_line_518 = i;
				int v_arg_count_1598_line_518 = argCount;
				boolean basic_deserializer_factory_1_expr132_line_518 = v_i_1607_line_518 < v_arg_count_1598_line_518;
				if (!(basic_deserializer_factory_1_expr132_line_518)) {
					break;
				}
				com.fasterxml.jackson.databind.introspect.AnnotatedWithParams v_ctor_1599_line_519 = ctor;
				int v_i_1607_line_519 = i;
				AnnotatedParameter basic_deserializer_factory_1_expr134_line_519 = v_ctor_1599_line_519
						.getParameter(v_i_1607_line_519);
				int PROBE_END_LINE_519 = 519;
				final AnnotatedParameter param = basic_deserializer_factory_1_expr134_line_519;
                int PROBE_START_LINE_520 = 520;
				com.fasterxml.jackson.databind.deser.impl.CreatorCandidate v_candidate_1597_line_520 = candidate;
				int v_i_1607_line_520 = i;
				BeanPropertyDefinition basic_deserializer_factory_1_expr135_line_520 = v_candidate_1597_line_520
						.propertyDef(v_i_1607_line_520);
				int PROBE_END_LINE_520 = 520;
				BeanPropertyDefinition propDef = basic_deserializer_factory_1_expr135_line_520;
                int PROBE_START_LINE_521 = 521;
				com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1587_line_521 = intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedParameter v_param_1608_line_521 = param;
				JacksonInject.Value basic_deserializer_factory_1_expr136_line_521 = p_intr_1587_line_521
						.findInjectableValue(v_param_1608_line_521);
				int PROBE_END_LINE_521 = 521;
				JacksonInject.Value injectId = basic_deserializer_factory_1_expr136_line_521;
                int PROBE_START_LINE_522 = 522;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1609_line_522 = propDef;
				boolean basic_deserializer_factory_1_expr140_line_522 = v_prop_def_1609_line_522 == null;
				boolean basic_deserializer_factory_1_expr138_line_522 = (basic_deserializer_factory_1_expr140_line_522);
				com.fasterxml.jackson.databind.PropertyName basic_deserializer_factory_1_expr139_line_522 = null;
				if (!basic_deserializer_factory_1_expr138_line_522) {
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1609_line_522_v1 = propDef;
					basic_deserializer_factory_1_expr139_line_522 = v_prop_def_1609_line_522_v1.getFullName();
				}
				PropertyName basic_deserializer_factory_1_expr137_line_522 = basic_deserializer_factory_1_expr138_line_522
						? null
						: basic_deserializer_factory_1_expr139_line_522;
				int PROBE_END_LINE_522 = 522;
				final PropertyName name = basic_deserializer_factory_1_expr137_line_522;

                int PROBE_START_LINE_524 = 528;
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1609_line_524 = propDef;
				boolean basic_deserializer_factory_1_expr142_line_524 = v_prop_def_1609_line_524 != null;
				boolean basic_deserializer_factory_1_expr143_line_524 = true;
				if (basic_deserializer_factory_1_expr142_line_524) {
					com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition v_prop_def_1609_line_524_v1 = propDef;
					basic_deserializer_factory_1_expr143_line_524 = v_prop_def_1609_line_524_v1.isExplicitlyNamed();
				}
				boolean basic_deserializer_factory_1_expr141_line_524 = basic_deserializer_factory_1_expr142_line_524
						&& basic_deserializer_factory_1_expr143_line_524;
				int PROBE_END_LINE_524 = 528;
				if (basic_deserializer_factory_1_expr141_line_524) {
                    ++explicitNameCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                    continue;
                }
                int PROBE_START_LINE_529 = 533;
				com.fasterxml.jackson.annotation.JacksonInject.Value v_inject_id_1610_line_529 = injectId;
				boolean basic_deserializer_factory_1_expr144_line_529 = v_inject_id_1610_line_529 != null;
				int PROBE_END_LINE_529 = 533;
				if (basic_deserializer_factory_1_expr144_line_529) {
                    ++injectCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                    continue;
                }
                int PROBE_START_LINE_534 = 534;
				com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_1587_line_534 = intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedParameter v_param_1608_line_534 = param;
				NameTransformer basic_deserializer_factory_1_expr145_line_534 = p_intr_1587_line_534
						.findUnwrappingNameTransformer(v_param_1608_line_534);
				int PROBE_END_LINE_534 = 534;
				NameTransformer unwrapper = basic_deserializer_factory_1_expr145_line_534;
                int PROBE_START_LINE_535 = 542;
				com.fasterxml.jackson.databind.util.NameTransformer v_unwrapper_1612_line_535 = unwrapper;
				boolean basic_deserializer_factory_1_expr146_line_535 = v_unwrapper_1612_line_535 != null;
				int PROBE_END_LINE_535 = 542;
				if (basic_deserializer_factory_1_expr146_line_535) {
                    _reportUnwrappedCreatorProperty(ctxt, beanDesc, param);
                    /*
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, UNWRAPPED_CREATOR_PARAM_NAME, i, param, null);
                    ++explicitNameCount;
                    */
                    continue;
                }
                int PROBE_START_LINE_551 = 553;
				int v_non_annotated_param_index_1602_line_551 = nonAnnotatedParamIndex;
				boolean basic_deserializer_factory_1_expr147_line_551 = v_non_annotated_param_index_1602_line_551 < 0;
				int PROBE_END_LINE_551 = 553;
				// One more thing: implicit names are ok iff ctor has creator annotation
                /*
                if (isCreator && (name != null && !name.isEmpty())) {
                    ++implicitWithCreatorCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
                    continue;
                }
                */
                if (basic_deserializer_factory_1_expr147_line_551) {
                    int PROBE_START_LINE_552 = 552;
					int v_i_1607_line_552 = i;
					int PROBE_END_LINE_552 = 552;
					nonAnnotatedParamIndex = v_i_1607_line_552;
                }
            }

            int PROBE_START_LINE_556 = 556;
			int v_explicit_name_count_1604_line_556 = explicitNameCount;
			int v_implicit_with_creator_count_1605_line_556 = implicitWithCreatorCount;
			int basic_deserializer_factory_1_expr149_line_556 = v_explicit_name_count_1604_line_556
					+ v_implicit_with_creator_count_1605_line_556;
			int PROBE_END_LINE_556 = 556;
			final int namedCount = basic_deserializer_factory_1_expr149_line_556;
            int PROBE_START_LINE_558 = 586;
			int v_explicit_name_count_1604_line_558 = explicitNameCount;
			boolean basic_deserializer_factory_1_expr152_line_558 = v_explicit_name_count_1604_line_558 > 0;
			boolean basic_deserializer_factory_1_expr151_line_558 = (basic_deserializer_factory_1_expr152_line_558);
			boolean basic_deserializer_factory_1_expr153_line_558 = false;
			if (!basic_deserializer_factory_1_expr151_line_558) {
				int v_inject_count_1606_line_558 = injectCount;
				boolean basic_deserializer_factory_1_expr154_line_558 = v_inject_count_1606_line_558 > 0;
				basic_deserializer_factory_1_expr153_line_558 = (basic_deserializer_factory_1_expr154_line_558);
			}
			boolean basic_deserializer_factory_1_expr150_line_558 = basic_deserializer_factory_1_expr151_line_558
					|| basic_deserializer_factory_1_expr153_line_558;
			int PROBE_END_LINE_558 = 586;
			// Ok: if named or injectable, we have more work to do
            if (basic_deserializer_factory_1_expr150_line_558) {
                // simple case; everything covered:
                if ((namedCount + injectCount) == argCount) {
                    creators.addPropertyCreator(ctor, false, properties);
                    continue;
                }
                if ((explicitNameCount == 0) && ((injectCount + 1) == argCount)) {
                    // Secondary: all but one injectable, one un-annotated (un-named)
                    creators.addDelegatingCreator(ctor, false, properties, 0);
                    continue;
                }
                // otherwise, epic fail?
                // 16-Mar-2015, tatu: due to [#725], need to be more permissive. For now let's
                //    only report problem if there's no implicit name
                PropertyName impl = candidate.findImplicitParamName(nonAnnotatedParamIndex);
                if (impl == null || impl.isEmpty()) {
                    // Let's consider non-static inner class as a special case...
                    // 25-Jan-2017, tatu: Non-static inner classes skipped altogether, now
                    /*
                    if ((nonAnnotatedParamIndex == 0) && isNonStaticInnerClass) {
                        throw new IllegalArgumentException("Non-static inner classes like "
                                +ctor.getDeclaringClass().getName()+" cannot use @JsonCreator for constructors");
                    }
                    */
                    ctxt.reportBadTypeDefinition(beanDesc,
"Argument #%d of constructor %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator",
nonAnnotatedParamIndex, ctor);
                }
            }
            int PROBE_START_LINE_588 = 593;
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1588_line_588 = creators;
			boolean basic_deserializer_factory_1_expr156_line_588 = p_creators_1588_line_588.hasDefaultCreator();
			boolean basic_deserializer_factory_1_expr155_line_588 = !basic_deserializer_factory_1_expr156_line_588;
			int PROBE_END_LINE_588 = 593;
			// [#725]: as a fallback, all-implicit names may work as well
            if (basic_deserializer_factory_1_expr155_line_588) {
                if (implicitCtors == null) {
                    implicitCtors = new LinkedList<>();
                }
                implicitCtors.add(ctor);
            }
        }
        int PROBE_START_LINE_597 = 601;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedWithParams> v_implicit_ctors_1596_line_597 = implicitCtors;
		boolean basic_deserializer_factory_1_expr159_line_597 = v_implicit_ctors_1596_line_597 != null;
		boolean basic_deserializer_factory_1_expr158_line_597 = (basic_deserializer_factory_1_expr159_line_597);
		boolean basic_deserializer_factory_1_expr160_line_597 = true;
		if (basic_deserializer_factory_1_expr158_line_597) {
			com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1588_line_597 = creators;
			boolean basic_deserializer_factory_1_expr161_line_597 = p_creators_1588_line_597.hasDelegatingCreator();
			basic_deserializer_factory_1_expr160_line_597 = !basic_deserializer_factory_1_expr161_line_597;
		}
		boolean basic_deserializer_factory_1_expr157_line_597 = basic_deserializer_factory_1_expr158_line_597
				&& basic_deserializer_factory_1_expr160_line_597 && !creators.hasPropertyBasedCreator();
		int PROBE_END_LINE_597 = 601;
		// last option, as per [#725]: consider implicit-names-only, visible constructor,
        // if just one found
        if (basic_deserializer_factory_1_expr157_line_597) {
            _checkImplicitlyNamedConstructors(ctxt, beanDesc, vchecker, intr,
                    creators, implicitCtors);
        }
    }

    /**
     * Helper method called when there is the explicit "is-creator" with mode of "delegating"
     *
     * @since 2.9.2
     */
    protected void _addExplicitDelegatingCreator(DeserializationContext ctxt,
            BeanDescription beanDesc, CreatorCollector creators,
            CreatorCandidate candidate)
        throws JsonMappingException
    {
        // Somewhat simple: find injectable values, if any, ensure there is one
        // and just one delegated argument; report violations if any

        int ix = -1;
        final int argCount = candidate.paramCount();
        SettableBeanProperty[] properties = new SettableBeanProperty[argCount];
        for (int i = 0; i < argCount; ++i) {
            AnnotatedParameter param = candidate.parameter(i);
            JacksonInject.Value injectId = candidate.injection(i);
            if (injectId != null) {
                properties[i] = constructCreatorProperty(ctxt, beanDesc, null, i, param, injectId);
                continue;
            }
            if (ix < 0) {
                ix = i;
                continue;
            }
            // Illegal to have more than one value to delegate to
            ctxt.reportBadTypeDefinition(beanDesc,
                    "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed",
                    ix, i, candidate);
        }
        // Also, let's require that one Delegating argument does eixt
        if (ix < 0) {
            ctxt.reportBadTypeDefinition(beanDesc,
                    "No argument left as delegating for Creator %s: exactly one required", candidate);
        }
        // 17-Jan-2018, tatu: as per [databind#1853] need to ensure we will distinguish
        //   "well-known" single-arg variants (String, int/long, boolean) from "generic" delegating...
        if (argCount == 1) {
            _handleSingleArgumentCreator(creators, candidate.creator(), true, true);
            // one more thing: sever link to creator property, to avoid possible later
            // problems with "unresolved" constructor property
            BeanPropertyDefinition paramDef = candidate.propertyDef(0);
            if (paramDef != null) {
                ((POJOPropertyBuilder) paramDef).removeConstructors();
            }
            return;
        }
        creators.addDelegatingCreator(candidate.creator(), true, properties, ix);
    }

    /**
     * Helper method called when there is the explicit "is-creator" with mode of "properties-based"
     *
     * @since 2.9.2
     */
    protected void _addExplicitPropertyCreator(DeserializationContext ctxt,
            BeanDescription beanDesc, CreatorCollector creators,
            CreatorCandidate candidate)
        throws JsonMappingException
    {
        final int paramCount = candidate.paramCount();
        SettableBeanProperty[] properties = new SettableBeanProperty[paramCount];

        for (int i = 0; i < paramCount; ++i) {
            JacksonInject.Value injectId = candidate.injection(i);
            AnnotatedParameter param = candidate.parameter(i);
            PropertyName name = candidate.paramName(i);
            if (name == null) {
                // 21-Sep-2017, tatu: Looks like we want to block accidental use of Unwrapped,
                //   as that will not work with Creators well at all
                NameTransformer unwrapper = ctxt.getAnnotationIntrospector().findUnwrappingNameTransformer(param);
                if (unwrapper != null) {
                    _reportUnwrappedCreatorProperty(ctxt, beanDesc, param);
                    /*
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, UNWRAPPED_CREATOR_PARAM_NAME, i, param, null);
                    ++explicitNameCount;
                    */
                }
                name = candidate.findImplicitParamName(i);
                // Must be injectable or have name; without either won't work
                if ((name == null) && (injectId == null)) {
                    ctxt.reportBadTypeDefinition(beanDesc,
"Argument #%d has no property name, is not Injectable: can not use as Creator %s", i, candidate);
                }
            }
            properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectId);
        }
        creators.addPropertyCreator(candidate.creator(), true, properties);
    }

    /**
     * Helper method called when there is the explicit "is-creator", but no mode declaration.
     *
     * @since 2.9.2
     */
    protected void _addExplicitAnyCreator(DeserializationContext ctxt,
            BeanDescription beanDesc, CreatorCollector creators,
            CreatorCandidate candidate)
        throws JsonMappingException
    {
        // Looks like there's bit of magic regarding 1-parameter creators; others simpler:
        if (1 != candidate.paramCount()) {
            // Ok: for delegates, we want one and exactly one parameter without
            // injection AND without name
            int oneNotInjected = candidate.findOnlyParamWithoutInjection();
            if (oneNotInjected >= 0) {
                // getting close; but most not have name
                if (candidate.paramName(oneNotInjected) == null) {
                    _addExplicitDelegatingCreator(ctxt, beanDesc, creators, candidate);
                    return;
                }
            }
            _addExplicitPropertyCreator(ctxt, beanDesc, creators, candidate);
            return;
        }
        AnnotatedParameter param = candidate.parameter(0);
        JacksonInject.Value injectId = candidate.injection(0);
        PropertyName paramName = candidate.explicitParamName(0);
        BeanPropertyDefinition paramDef = candidate.propertyDef(0);

        // If there's injection or explicit name, should be properties-based
        boolean useProps = (paramName != null) || (injectId != null);
        if (!useProps && (paramDef != null)) {
            // One more thing: if implicit name matches property with a getter
            // or field, we'll consider it property-based as well

            // 25-May-2018, tatu: as per [databind#2051], looks like we have to get
            //    not implicit name, but name with possible strategy-based-rename
//            paramName = candidate.findImplicitParamName(0);
            paramName = candidate.paramName(0);
            useProps = (paramName != null) && paramDef.couldSerialize();
        }
        if (useProps) {
            SettableBeanProperty[] properties = new SettableBeanProperty[] {
                    constructCreatorProperty(ctxt, beanDesc, paramName, 0, param, injectId)
            };
            creators.addPropertyCreator(candidate.creator(), true, properties);
            return;
        }
        _handleSingleArgumentCreator(creators, candidate.creator(), true, true);

        // one more thing: sever link to creator property, to avoid possible later
        // problems with "unresolved" constructor property
        if (paramDef != null) {
            ((POJOPropertyBuilder) paramDef).removeConstructors();
        }
    }

    private boolean _checkIfCreatorPropertyBased(AnnotationIntrospector intr,
            AnnotatedWithParams creator, BeanPropertyDefinition propDef)
    {
        int PROBE_START_LINE_758 = 761;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1628_line_758 = propDef;
		boolean basic_deserializer_factory_1_expr166_line_758 = p_prop_def_1628_line_758 != null;
		boolean basic_deserializer_factory_1_expr165_line_758 = (basic_deserializer_factory_1_expr166_line_758);
		boolean basic_deserializer_factory_1_expr167_line_758 = true;
		if (basic_deserializer_factory_1_expr165_line_758) {
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1628_line_758_v1 = propDef;
			basic_deserializer_factory_1_expr167_line_758 = p_prop_def_1628_line_758_v1.isExplicitlyNamed();
		}
		boolean basic_deserializer_factory_1_expr164_line_758 = basic_deserializer_factory_1_expr165_line_758
				&& basic_deserializer_factory_1_expr167_line_758;
		boolean basic_deserializer_factory_1_expr163_line_758 = (basic_deserializer_factory_1_expr164_line_758);
		boolean basic_deserializer_factory_1_expr162_line_758 = basic_deserializer_factory_1_expr163_line_758
				|| (intr.findInjectableValue(creator.getParameter(0)) != null);
		int PROBE_END_LINE_758 = 761;
		// If explicit name, or inject id, property-based
        if (basic_deserializer_factory_1_expr162_line_758) {
            return true;
        }
        int PROBE_START_LINE_762 = 771;
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_prop_def_1628_line_762 = propDef;
		boolean basic_deserializer_factory_1_expr168_line_762 = p_prop_def_1628_line_762 != null;
		int PROBE_END_LINE_762 = 771;
		if (basic_deserializer_factory_1_expr168_line_762) {
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

    private void _checkImplicitlyNamedConstructors(DeserializationContext ctxt,
            BeanDescription beanDesc, VisibilityChecker<?> vchecker,
            AnnotationIntrospector intr, CreatorCollector creators,
            List<AnnotatedWithParams> implicitCtors) throws JsonMappingException
    {
        AnnotatedWithParams found = null;
        SettableBeanProperty[] foundProps = null;

        // Further checks: (a) must have names for all parameters, (b) only one visible
        // Also, since earlier matching of properties and creators relied on existence of
        // `@JsonCreator` (or equivalent) annotation, we need to do bit more re-inspection...

        main_loop:
        for (AnnotatedWithParams ctor : implicitCtors) {
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
            if (found != null) { // only one allowed; but multiple not an error
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

    protected void _addDeserializerFactoryMethods
        (DeserializationContext ctxt, BeanDescription beanDesc, VisibilityChecker<?> vchecker,
         AnnotationIntrospector intr, CreatorCollector creators,
         Map<AnnotatedWithParams,BeanPropertyDefinition[]> creatorParams)
        throws JsonMappingException
    {
        List<CreatorCandidate> nonAnnotated = new LinkedList<>();
        int explCount = 0;

        int PROBE_START_LINE_840 = 876;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1636_line_840 = beanDesc;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> basic_deserializer_factory_1_expr170_line_840 = p_bean_desc_1636_line_840
				.getFactoryMethods();
		int PROBE_END_LINE_840 = 876;
		// 21-Sep-2017, tatu: First let's handle explicitly annotated ones
        for (AnnotatedMethod factory : basic_deserializer_factory_1_expr170_line_840) {
            JsonCreator.Mode creatorMode = intr.findCreatorAnnotation(ctxt.getConfig(), factory);
            final int argCount = factory.getParameterCount();
            if (creatorMode == null) {
                // Only potentially accept 1-argument factory methods
                if ((argCount == 1) && vchecker.isCreatorVisible(factory)) {
                    nonAnnotated.add(CreatorCandidate.construct(intr, factory, null));
                }
                continue;
            }
            if (creatorMode == Mode.DISABLED) {
                continue;
            }
            
            // zero-arg method factory methods fine, as long as explicit
            if (argCount == 0) {
                creators.setDefaultCreator(factory);
                continue;
            }

            switch (creatorMode) {
            case DELEGATING:
                _addExplicitDelegatingCreator(ctxt, beanDesc, creators,
                        CreatorCandidate.construct(intr, factory, null));
                break;
            case PROPERTIES:
                _addExplicitPropertyCreator(ctxt, beanDesc, creators,
                        CreatorCandidate.construct(intr, factory, creatorParams.get(factory)));
                break;
            case DEFAULT:
            default:
                _addExplicitAnyCreator(ctxt, beanDesc, creators,
                        CreatorCandidate.construct(intr, factory, creatorParams.get(factory)));
                break;
            }
            ++explCount;
        }
        int PROBE_START_LINE_878 = 880;
		int v_expl_count_1642_line_878 = explCount;
		boolean basic_deserializer_factory_1_expr171_line_878 = v_expl_count_1642_line_878 > 0;
		int PROBE_END_LINE_878 = 880;
		// And only if and when those handled, consider potentially visible ones
        if (basic_deserializer_factory_1_expr171_line_878) { // TODO: split method into two since we could have expl factories
            return;
        }
        int PROBE_START_LINE_882 = 975;
		List<com.fasterxml.jackson.databind.deser.impl.CreatorCandidate> v_non_annotated_1641_line_882 = nonAnnotated;
		int PROBE_END_LINE_882 = 975;
		// And then implicitly found
        for (CreatorCandidate candidate : v_non_annotated_1641_line_882) {
            final int argCount = candidate.paramCount();
            AnnotatedWithParams factory = candidate.creator();
            final BeanPropertyDefinition[] propDefs = creatorParams.get(factory);
            // some single-arg factory methods (String, number) are auto-detected
            if (argCount != 1) {
                continue; // 2 and more args? Must be explicit, handled earlier
            }
            BeanPropertyDefinition argDef = candidate.propertyDef(0);
            boolean useProps = _checkIfCreatorPropertyBased(intr, factory, argDef);
            if (!useProps) { // not property based but delegating
                /*boolean added=*/ _handleSingleArgumentCreator(creators,
                        factory, false, vchecker.isCreatorVisible(factory));
                // 23-Sep-2016, tatu: [databind#1383]: Need to also sever link to avoid possible
                //    later problems with "unresolved" constructor property
                if (argDef != null) {
                    ((POJOPropertyBuilder) argDef).removeConstructors();
                }
                continue;
            }
            AnnotatedParameter nonAnnotatedParam = null;            
            SettableBeanProperty[] properties = new SettableBeanProperty[argCount];
            int implicitNameCount = 0;
            int explicitNameCount = 0;
            int injectCount = 0;
            
            for (int i = 0; i < argCount; ++i) {
                final AnnotatedParameter param = factory.getParameter(i);
                BeanPropertyDefinition propDef = (propDefs == null) ? null : propDefs[i];
                JacksonInject.Value injectable = intr.findInjectableValue(param);
                final PropertyName name = (propDef == null) ? null : propDef.getFullName();

                if (propDef != null && propDef.isExplicitlyNamed()) {
                    ++explicitNameCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectable);
                    continue;
                }
                if (injectable != null) {
                    ++injectCount;
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectable);
                    continue;
                }
                NameTransformer unwrapper = intr.findUnwrappingNameTransformer(param);
                if (unwrapper != null) {
                    _reportUnwrappedCreatorProperty(ctxt, beanDesc, param);
                    /*
                    properties[i] = constructCreatorProperty(ctxt, beanDesc, UNWRAPPED_CREATOR_PARAM_NAME, i, param, null);
                    ++implicitNameCount;
                    */
                    continue;
                }
                // One more thing: implicit names are ok iff ctor has creator annotation
                /*
                if (isCreator) {
                    if (name != null && !name.isEmpty()) {
                        ++implicitNameCount;
                        properties[i] = constructCreatorProperty(ctxt, beanDesc, name, i, param, injectable);
                        continue;
                    }
                }
                */
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
            if (explicitNameCount > 0 || injectCount > 0) {
                // simple case; everything covered:
                if ((namedCount + injectCount) == argCount) {
                    creators.addPropertyCreator(factory, false, properties);
                } else if ((explicitNameCount == 0) && ((injectCount + 1) == argCount)) {
                    // secondary: all but one injectable, one un-annotated (un-named)
                    creators.addDelegatingCreator(factory, false, properties, 0);
                } else { // otherwise, epic fail
                    ctxt.reportBadTypeDefinition(beanDesc,
"Argument #%d of factory method %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator",
                    nonAnnotatedParam.getIndex(), factory);
                }
            }
        }
    }

    protected boolean _handleSingleArgumentCreator(CreatorCollector creators,
            AnnotatedWithParams ctor, boolean isCreator, boolean isVisible)
    {
        int PROBE_START_LINE_982 = 982;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_ctor_1646_line_982 = ctor;
		Class<?> basic_deserializer_factory_1_expr172_line_982 = p_ctor_1646_line_982.getRawParameterType(0);
		int PROBE_END_LINE_982 = 982;
		// otherwise either 'simple' number, String, or general delegate:
        Class<?> type = basic_deserializer_factory_1_expr172_line_982;
        int PROBE_START_LINE_983 = 988;
		Class<?> v_type_1649_line_983 = type;
		boolean basic_deserializer_factory_1_expr174_line_983 = v_type_1649_line_983 == String.class;
		boolean basic_deserializer_factory_1_expr176_line_983 = false;
		if (!basic_deserializer_factory_1_expr174_line_983) {
			Class<?> v_type_1649_line_983_v1 = type;
			Class<?> f_class_char_sequence_1537_line_983 = CLASS_CHAR_SEQUENCE;
			basic_deserializer_factory_1_expr176_line_983 = v_type_1649_line_983_v1 == f_class_char_sequence_1537_line_983;
		}
		boolean basic_deserializer_factory_1_expr173_line_983 = basic_deserializer_factory_1_expr174_line_983
				|| basic_deserializer_factory_1_expr176_line_983;
		int PROBE_END_LINE_983 = 988;
		if (basic_deserializer_factory_1_expr173_line_983) {
            int PROBE_START_LINE_984 = 986;
			boolean p_is_creator_1647_line_984 = isCreator;
			boolean p_is_visible_1648_line_984 = false;
			if (!p_is_creator_1647_line_984) {
				p_is_visible_1648_line_984 = isVisible;
			}
			boolean basic_deserializer_factory_1_expr177_line_984 = p_is_creator_1647_line_984
					|| p_is_visible_1648_line_984;
			int PROBE_END_LINE_984 = 986;
			if (basic_deserializer_factory_1_expr177_line_984) {
                int PROBE_START_LINE_985 = 985;
				com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1645_line_985 = creators;
				com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_ctor_1646_line_985 = ctor;
				boolean p_is_creator_1647_line_985 = isCreator;
				int PROBE_END_LINE_985 = 985;
				p_creators_1645_line_985.addStringCreator(p_ctor_1646_line_985, p_is_creator_1647_line_985);
            }
            return true;
        }
        int PROBE_START_LINE_989 = 994;
		Class<?> v_type_1649_line_989 = type;
		boolean basic_deserializer_factory_1_expr180_line_989 = v_type_1649_line_989 == int.class;
		boolean basic_deserializer_factory_1_expr182_line_989 = false;
		if (!basic_deserializer_factory_1_expr180_line_989) {
			Class<?> v_type_1649_line_989_v1 = type;
			basic_deserializer_factory_1_expr182_line_989 = v_type_1649_line_989_v1 == Integer.class;
		}
		boolean basic_deserializer_factory_1_expr179_line_989 = basic_deserializer_factory_1_expr180_line_989
				|| basic_deserializer_factory_1_expr182_line_989;
		int PROBE_END_LINE_989 = 994;
		if (basic_deserializer_factory_1_expr179_line_989) {
            int PROBE_START_LINE_990 = 992;
			boolean p_is_creator_1647_line_990 = isCreator;
			boolean p_is_visible_1648_line_990 = false;
			if (!p_is_creator_1647_line_990) {
				p_is_visible_1648_line_990 = isVisible;
			}
			boolean basic_deserializer_factory_1_expr184_line_990 = p_is_creator_1647_line_990
					|| p_is_visible_1648_line_990;
			int PROBE_END_LINE_990 = 992;
			if (basic_deserializer_factory_1_expr184_line_990) {
                int PROBE_START_LINE_991 = 991;
				com.fasterxml.jackson.databind.deser.impl.CreatorCollector p_creators_1645_line_991 = creators;
				com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_ctor_1646_line_991 = ctor;
				boolean p_is_creator_1647_line_991 = isCreator;
				int PROBE_END_LINE_991 = 991;
				p_creators_1645_line_991.addIntCreator(p_ctor_1646_line_991, p_is_creator_1647_line_991);
            }
            return true;
        }
        int PROBE_START_LINE_995 = 1000;
		Class<?> v_type_1649_line_995 = type;
		boolean basic_deserializer_factory_1_expr187_line_995 = v_type_1649_line_995 == long.class;
		boolean basic_deserializer_factory_1_expr189_line_995 = false;
		if (!basic_deserializer_factory_1_expr187_line_995) {
			Class<?> v_type_1649_line_995_v1 = type;
			basic_deserializer_factory_1_expr189_line_995 = v_type_1649_line_995_v1 == Long.class;
		}
		boolean basic_deserializer_factory_1_expr186_line_995 = basic_deserializer_factory_1_expr187_line_995
				|| basic_deserializer_factory_1_expr189_line_995;
		int PROBE_END_LINE_995 = 1000;
		if (basic_deserializer_factory_1_expr186_line_995) {
            if (isCreator || isVisible) {
                creators.addLongCreator(ctor, isCreator);
            }
            return true;
        }
        int PROBE_START_LINE_1001 = 1006;
		Class<?> v_type_1649_line_1001 = type;
		boolean basic_deserializer_factory_1_expr192_line_1001 = v_type_1649_line_1001 == double.class;
		boolean basic_deserializer_factory_1_expr194_line_1001 = false;
		if (!basic_deserializer_factory_1_expr192_line_1001) {
			Class<?> v_type_1649_line_1001_v1 = type;
			basic_deserializer_factory_1_expr194_line_1001 = v_type_1649_line_1001_v1 == Double.class;
		}
		boolean basic_deserializer_factory_1_expr191_line_1001 = basic_deserializer_factory_1_expr192_line_1001
				|| basic_deserializer_factory_1_expr194_line_1001;
		int PROBE_END_LINE_1001 = 1006;
		if (basic_deserializer_factory_1_expr191_line_1001) {
            if (isCreator || isVisible) {
                creators.addDoubleCreator(ctor, isCreator);
            }
            return true;
        }
        int PROBE_START_LINE_1007 = 1012;
		Class<?> v_type_1649_line_1007 = type;
		boolean basic_deserializer_factory_1_expr197_line_1007 = v_type_1649_line_1007 == boolean.class;
		boolean basic_deserializer_factory_1_expr199_line_1007 = false;
		if (!basic_deserializer_factory_1_expr197_line_1007) {
			Class<?> v_type_1649_line_1007_v1 = type;
			basic_deserializer_factory_1_expr199_line_1007 = v_type_1649_line_1007_v1 == Boolean.class;
		}
		boolean basic_deserializer_factory_1_expr196_line_1007 = basic_deserializer_factory_1_expr197_line_1007
				|| basic_deserializer_factory_1_expr199_line_1007;
		int PROBE_END_LINE_1007 = 1012;
		if (basic_deserializer_factory_1_expr196_line_1007) {
            if (isCreator || isVisible) {
                creators.addBooleanCreator(ctor, isCreator);
            }
            return true;
        }
        int PROBE_START_LINE_1014 = 1017;
		boolean p_is_creator_1647_line_1014 = isCreator;
		int PROBE_END_LINE_1014 = 1017;
		// Delegating Creator ok iff it has @JsonCreator (etc)
        if (p_is_creator_1647_line_1014) {
            creators.addDelegatingCreator(ctor, isCreator, null, 0);
            return true;
        }
        return false;
    }

    // 01-Dec-2016, tatu: As per [databind#265] we cannot yet support passing
    //   of unwrapped values through creator properties, so fail fast
    protected void _reportUnwrappedCreatorProperty(DeserializationContext ctxt,
            BeanDescription beanDesc, AnnotatedParameter param)
        throws JsonMappingException
    {
        ctxt.reportBadDefinition(beanDesc.getType(), String.format(
                "Cannot define Creator parameter %d as `@JsonUnwrapped`: combination not yet supported",
                param.getIndex()));
    }

    /**
     * Method that will construct a property object that represents
     * a logical property passed via Creator (constructor or static
     * factory method)
     */
    protected SettableBeanProperty constructCreatorProperty(DeserializationContext ctxt,
            BeanDescription beanDesc, PropertyName name, int index,
            AnnotatedParameter param,
            JacksonInject.Value injectable)
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
                intr.findWrapperName(param), param, metadata);
        // Type deserializer: either comes from property (and already resolved)
        TypeDeserializer typeDeser = (TypeDeserializer) type.getTypeHandler();
        // or if not, based on type being referenced:
        if (typeDeser == null) {
            typeDeser = findTypeDeserializer(config, type);
        }
        // Note: contextualization of typeDeser _should_ occur in constructor of CreatorProperty
        // so it is not called directly here

        Object injectableValueId = (injectable == null) ? null : injectable.getId();
        
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

    private PropertyName _findParamName(AnnotatedParameter param, AnnotationIntrospector intr)
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
                }
                if (raw == String.class) {
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
        int PROBE_START_LINE_1161 = 1161;
		com.fasterxml.jackson.databind.type.CollectionType p_type_1665_line_1161 = type;
		JavaType basic_deserializer_factory_1_expr201_line_1161 = p_type_1665_line_1161.getContentType();
		int PROBE_END_LINE_1161 = 1161;
		JavaType contentType = basic_deserializer_factory_1_expr201_line_1161;
        int PROBE_START_LINE_1163 = 1163;
		com.fasterxml.jackson.databind.JavaType v_content_type_1667_line_1163 = contentType;
		JsonDeserializer<Object> basic_deserializer_factory_1_expr202_line_1163 = v_content_type_1667_line_1163
				.getValueHandler();
		int PROBE_END_LINE_1163 = 1163;
		// Very first thing: is deserializer hard-coded for elements?
        JsonDeserializer<Object> contentDeser = basic_deserializer_factory_1_expr202_line_1163;
        int PROBE_START_LINE_1164 = 1164;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1664_line_1164 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr203_line_1164 = p_ctxt_1664_line_1164.getConfig();
		int PROBE_END_LINE_1164 = 1164;
		final DeserializationConfig config = basic_deserializer_factory_1_expr203_line_1164;

        int PROBE_START_LINE_1167 = 1167;
		com.fasterxml.jackson.databind.JavaType v_content_type_1667_line_1167 = contentType;
		TypeDeserializer basic_deserializer_factory_1_expr204_line_1167 = v_content_type_1667_line_1167
				.getTypeHandler();
		int PROBE_END_LINE_1167 = 1167;
		// Then optional type info: if type has been resolved, we may already know type deserializer:
        TypeDeserializer contentTypeDeser = basic_deserializer_factory_1_expr204_line_1167;
        int PROBE_START_LINE_1169 = 1171;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1670_line_1169 = contentTypeDeser;
		boolean basic_deserializer_factory_1_expr205_line_1169 = v_content_type_deser_1670_line_1169 == null;
		int PROBE_END_LINE_1169 = 1171;
		// but if not, may still be possible to find:
        if (basic_deserializer_factory_1_expr205_line_1169) {
            int PROBE_START_LINE_1170 = 1170;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_1669_line_1170 = config;
			com.fasterxml.jackson.databind.JavaType v_content_type_1667_line_1170 = contentType;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr207_line_1170 = findTypeDeserializer(
					v_config_1669_line_1170, v_content_type_1667_line_1170);
			int PROBE_END_LINE_1170 = 1170;
			contentTypeDeser = basic_deserializer_factory_1_expr207_line_1170;
        }
        int PROBE_START_LINE_1173 = 1174;
		com.fasterxml.jackson.databind.type.CollectionType p_type_1665_line_1173 = type;
		JsonDeserializer<?> basic_deserializer_factory_1_expr208_line_1173 = _findCustomCollectionDeserializer(
				p_type_1665_line_1173, config, beanDesc, contentTypeDeser, contentDeser);
		int PROBE_END_LINE_1173 = 1174;
		// 23-Nov-2010, tatu: Custom deserializer?
        JsonDeserializer<?> deser = basic_deserializer_factory_1_expr208_line_1173;
        int PROBE_START_LINE_1175 = 1183;
		JsonDeserializer<?> v_deser_1671_line_1175 = deser;
		boolean basic_deserializer_factory_1_expr209_line_1175 = v_deser_1671_line_1175 == null;
		int PROBE_END_LINE_1175 = 1183;
		if (basic_deserializer_factory_1_expr209_line_1175) {
            int PROBE_START_LINE_1176 = 1176;
			com.fasterxml.jackson.databind.type.CollectionType p_type_1665_line_1176 = type;
			Class<?> basic_deserializer_factory_1_expr210_line_1176 = p_type_1665_line_1176.getRawClass();
			int PROBE_END_LINE_1176 = 1176;
			Class<?> collectionClass = basic_deserializer_factory_1_expr210_line_1176;
            int PROBE_START_LINE_1177 = 1182;
			JsonDeserializer<Object> v_content_deser_1668_line_1177 = contentDeser;
			boolean basic_deserializer_factory_1_expr211_line_1177 = v_content_deser_1668_line_1177 == null;
			int PROBE_END_LINE_1177 = 1182;
			if (basic_deserializer_factory_1_expr211_line_1177) { // not defined by annotation
                int PROBE_START_LINE_1179 = 1181;
				Class<?> v_collection_class_1672_line_1179 = collectionClass;
				boolean basic_deserializer_factory_1_expr212_line_1179 = EnumSet.class
						.isAssignableFrom(v_collection_class_1672_line_1179);
				int PROBE_END_LINE_1179 = 1181;
				// One special type: EnumSet:
                if (basic_deserializer_factory_1_expr212_line_1179) {
                    deser = new EnumSetDeserializer(contentType, null);
                }
            }
        }

        int PROBE_START_LINE_1194 = 1230;
		JsonDeserializer<?> v_deser_1671_line_1194 = deser;
		boolean basic_deserializer_factory_1_expr214_line_1194 = v_deser_1671_line_1194 == null;
		int PROBE_END_LINE_1194 = 1230;
		/* One twist: if we are being asked to instantiate an interface or
         * abstract Collection, we need to either find something that implements
         * the thing, or give up.
         *
         * Note that we do NOT try to guess based on secondary interfaces
         * here; that would probably not work correctly since casts would
         * fail later on (as the primary type is not the interface we'd
         * be implementing)
         */
        if (basic_deserializer_factory_1_expr214_line_1194) {
            int PROBE_START_LINE_1195 = 1208;
			com.fasterxml.jackson.databind.type.CollectionType p_type_1665_line_1195 = type;
			boolean basic_deserializer_factory_1_expr216_line_1195 = p_type_1665_line_1195.isInterface();
			boolean basic_deserializer_factory_1_expr217_line_1195 = false;
			if (!basic_deserializer_factory_1_expr216_line_1195) {
				com.fasterxml.jackson.databind.type.CollectionType p_type_1665_line_1195_v1 = type;
				basic_deserializer_factory_1_expr217_line_1195 = p_type_1665_line_1195_v1.isAbstract();
			}
			boolean basic_deserializer_factory_1_expr215_line_1195 = basic_deserializer_factory_1_expr216_line_1195
					|| basic_deserializer_factory_1_expr217_line_1195;
			int PROBE_END_LINE_1195 = 1208;
			if (basic_deserializer_factory_1_expr215_line_1195) {
                int PROBE_START_LINE_1196 = 1196;
				com.fasterxml.jackson.databind.type.CollectionType p_type_1665_line_1196 = type;
				com.fasterxml.jackson.databind.DeserializationConfig v_config_1669_line_1196 = config;
				CollectionType basic_deserializer_factory_1_expr218_line_1196 = _mapAbstractCollectionType(
						p_type_1665_line_1196, v_config_1669_line_1196);
				int PROBE_END_LINE_1196 = 1196;
				CollectionType implType = basic_deserializer_factory_1_expr218_line_1196;
                int PROBE_START_LINE_1197 = 1207;
				com.fasterxml.jackson.databind.type.CollectionType v_impl_type_1673_line_1197 = implType;
				boolean basic_deserializer_factory_1_expr219_line_1197 = v_impl_type_1673_line_1197 == null;
				int PROBE_END_LINE_1197 = 1207;
				if (basic_deserializer_factory_1_expr219_line_1197) {
                    // [databind#292]: Actually, may be fine, but only if polymorphich deser enabled
                    if (type.getTypeHandler() == null) {
                        throw new IllegalArgumentException("Cannot find a deserializer for non-concrete Collection type "+type);
                    }
                    deser = AbstractDeserializer.constructForNonPOJO(beanDesc);
                } else {
                    int PROBE_START_LINE_1204 = 1204;
					com.fasterxml.jackson.databind.type.CollectionType v_impl_type_1673_line_1204 = implType;
					int PROBE_END_LINE_1204 = 1204;
					type = v_impl_type_1673_line_1204;
                    int PROBE_START_LINE_1206 = 1206;
					com.fasterxml.jackson.databind.DeserializationConfig v_config_1669_line_1206 = config;
					com.fasterxml.jackson.databind.type.CollectionType p_type_1665_line_1206 = type;
					com.fasterxml.jackson.databind.BeanDescription basic_deserializer_factory_1_expr222_line_1206 = v_config_1669_line_1206
							.introspectForCreation(p_type_1665_line_1206);
					int PROBE_END_LINE_1206 = 1206;
					// But if so, also need to re-check creators...
                    beanDesc = basic_deserializer_factory_1_expr222_line_1206;
                }
            }
            int PROBE_START_LINE_1209 = 1229;
			JsonDeserializer<?> v_deser_1671_line_1209 = deser;
			boolean basic_deserializer_factory_1_expr223_line_1209 = v_deser_1671_line_1209 == null;
			int PROBE_END_LINE_1209 = 1229;
			if (basic_deserializer_factory_1_expr223_line_1209) {
                int PROBE_START_LINE_1210 = 1210;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1664_line_1210 = ctxt;
				com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1666_line_1210 = beanDesc;
				ValueInstantiator basic_deserializer_factory_1_expr224_line_1210 = findValueInstantiator(
						p_ctxt_1664_line_1210, p_bean_desc_1666_line_1210);
				int PROBE_END_LINE_1210 = 1210;
				ValueInstantiator inst = basic_deserializer_factory_1_expr224_line_1210;
                int PROBE_START_LINE_1211 = 1221;
				com.fasterxml.jackson.databind.deser.ValueInstantiator v_inst_1674_line_1211 = inst;
				boolean basic_deserializer_factory_1_expr226_line_1211 = v_inst_1674_line_1211.canCreateUsingDefault();
				boolean basic_deserializer_factory_1_expr225_line_1211 = !basic_deserializer_factory_1_expr226_line_1211;
				int PROBE_END_LINE_1211 = 1221;
				if (basic_deserializer_factory_1_expr225_line_1211) {
                    // [databind#161]: No default constructor for ArrayBlockingQueue...
                    if (type.hasRawClass(ArrayBlockingQueue.class)) {
                        return new ArrayBlockingQueueDeserializer(type, contentDeser, contentTypeDeser, inst);
                    }
                    // 10-Jan-2017, tatu: `java.util.Collections` types need help:
                    deser = JavaUtilCollectionsDeserializers.findForCollection(ctxt, type);
                    if (deser != null) {
                        return deser;
                    }
                }
                int PROBE_START_LINE_1223 = 1228;
				com.fasterxml.jackson.databind.JavaType v_content_type_1667_line_1223 = contentType;
				boolean basic_deserializer_factory_1_expr227_line_1223 = v_content_type_1667_line_1223
						.hasRawClass(String.class);
				int PROBE_END_LINE_1223 = 1228;
				// Can use more optimal deserializer if content type is String, so:
                if (basic_deserializer_factory_1_expr227_line_1223) {
                    // no value type deserializer because Strings are one of natural/native types:
                    deser = new StringCollectionDeserializer(type, contentDeser, inst);
                } else {
                    int PROBE_START_LINE_1227 = 1227;
					com.fasterxml.jackson.databind.type.CollectionType p_type_1665_line_1227 = type;
					JsonDeserializer<Object> v_content_deser_1668_line_1227 = contentDeser;
					com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1670_line_1227 = contentTypeDeser;
					com.fasterxml.jackson.databind.deser.ValueInstantiator v_inst_1674_line_1227 = inst;
					int PROBE_END_LINE_1227 = 1227;
					deser = new CollectionDeserializer(p_type_1665_line_1227, v_content_deser_1668_line_1227, v_content_type_deser_1670_line_1227, v_inst_1674_line_1227);
                }
            }
        }
        int PROBE_START_LINE_1232 = 1236;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_1232 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr231_line_1232 = f__factory_config_1544_line_1232
				.hasDeserializerModifiers();
		int PROBE_END_LINE_1232 = 1236;
		// allow post-processing it too
        if (basic_deserializer_factory_1_expr231_line_1232) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deser = mod.modifyCollectionDeserializer(config, type, beanDesc, deser);
            }
        }
        int PROBE_START_LINE_1237 = 1237;
		JsonDeserializer<?> v_deser_1671_line_1237 = deser;
		int PROBE_END_LINE_1237 = 1237;
		return v_deser_1671_line_1237;
    }

    protected CollectionType _mapAbstractCollectionType(JavaType type, DeserializationConfig config)
    {
        int PROBE_START_LINE_1242 = 1242;
		com.fasterxml.jackson.databind.JavaType p_type_1675_line_1242 = type;
		Class<?> basic_deserializer_factory_1_expr232_line_1242 = p_type_1675_line_1242.getRawClass();
		int PROBE_END_LINE_1242 = 1242;
		Class<?> collectionClass = basic_deserializer_factory_1_expr232_line_1242;
        int PROBE_START_LINE_1243 = 1243;
		HashMap<String, Class<? extends java.util.Collection>> f__collection_fallbacks_1542_line_1243 = _collectionFallbacks;
		Class<?> v_collection_class_1677_line_1243 = collectionClass;
		String basic_deserializer_factory_1_expr235_line_1243 = v_collection_class_1677_line_1243.getName();
		Class<? extends java.util.Collection> basic_deserializer_factory_1_expr234_line_1243 = f__collection_fallbacks_1542_line_1243
				.get(basic_deserializer_factory_1_expr235_line_1243);
		int PROBE_END_LINE_1243 = 1243;
		collectionClass = basic_deserializer_factory_1_expr234_line_1243;
        int PROBE_START_LINE_1244 = 1246;
		Class<?> v_collection_class_1677_line_1244 = collectionClass;
		boolean basic_deserializer_factory_1_expr236_line_1244 = v_collection_class_1677_line_1244 == null;
		int PROBE_END_LINE_1244 = 1246;
		if (basic_deserializer_factory_1_expr236_line_1244) {
            return null;
        }
        int PROBE_START_LINE_1247 = 1247;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1676_line_1247 = config;
		com.fasterxml.jackson.databind.JavaType p_type_1675_line_1247 = type;
		Class<?> v_collection_class_1677_line_1247 = collectionClass;
		com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr238_line_1247 = p_config_1676_line_1247
				.constructSpecializedType(p_type_1675_line_1247, v_collection_class_1677_line_1247);
		int PROBE_END_LINE_1247 = 1247;
		return (CollectionType) basic_deserializer_factory_1_expr238_line_1247;
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
        int PROBE_START_LINE_1291 = 1291;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1681_line_1291 = ctxt;
		DeserializationConfig basic_deserializer_factory_1_expr239_line_1291 = p_ctxt_1681_line_1291.getConfig();
		int PROBE_END_LINE_1291 = 1291;
		final DeserializationConfig config = basic_deserializer_factory_1_expr239_line_1291;
        int PROBE_START_LINE_1292 = 1292;
		com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1292 = type;
		JavaType basic_deserializer_factory_1_expr240_line_1292 = p_type_1682_line_1292.getKeyType();
		int PROBE_END_LINE_1292 = 1292;
		JavaType keyType = basic_deserializer_factory_1_expr240_line_1292;
        int PROBE_START_LINE_1293 = 1293;
		com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1293 = type;
		JavaType basic_deserializer_factory_1_expr241_line_1293 = p_type_1682_line_1293.getContentType();
		int PROBE_END_LINE_1293 = 1293;
		JavaType contentType = basic_deserializer_factory_1_expr241_line_1293;
        
        int PROBE_START_LINE_1296 = 1297;
		com.fasterxml.jackson.databind.JavaType v_content_type_1686_line_1297 = contentType;
		Object basic_deserializer_factory_1_expr243_line_1297 = v_content_type_1686_line_1297.getValueHandler();
		int PROBE_END_LINE_1296 = 1297;
		// First: is there annotation-specified deserializer for values?
        @SuppressWarnings("unchecked")
        JsonDeserializer<Object> contentDeser = (JsonDeserializer<Object>) basic_deserializer_factory_1_expr243_line_1297;

        int PROBE_START_LINE_1300 = 1300;
		com.fasterxml.jackson.databind.JavaType v_key_type_1685_line_1300 = keyType;
		Object basic_deserializer_factory_1_expr245_line_1300 = v_key_type_1685_line_1300.getValueHandler();
		int PROBE_END_LINE_1300 = 1300;
		// Ok: need a key deserializer (null indicates 'default' here)
        KeyDeserializer keyDes = (KeyDeserializer) basic_deserializer_factory_1_expr245_line_1300;
        int PROBE_START_LINE_1302 = 1302;
		com.fasterxml.jackson.databind.JavaType v_content_type_1686_line_1302 = contentType;
		TypeDeserializer basic_deserializer_factory_1_expr246_line_1302 = v_content_type_1686_line_1302
				.getTypeHandler();
		int PROBE_END_LINE_1302 = 1302;
		// Then optional type info; either attached to type, or resolved separately:
        TypeDeserializer contentTypeDeser = basic_deserializer_factory_1_expr246_line_1302;
        int PROBE_START_LINE_1304 = 1306;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1689_line_1304 = contentTypeDeser;
		boolean basic_deserializer_factory_1_expr247_line_1304 = v_content_type_deser_1689_line_1304 == null;
		int PROBE_END_LINE_1304 = 1306;
		// but if not, may still be possible to find:
        if (basic_deserializer_factory_1_expr247_line_1304) {
            int PROBE_START_LINE_1305 = 1305;
			com.fasterxml.jackson.databind.DeserializationConfig v_config_1684_line_1305 = config;
			com.fasterxml.jackson.databind.JavaType v_content_type_1686_line_1305 = contentType;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr249_line_1305 = findTypeDeserializer(
					v_config_1684_line_1305, v_content_type_1686_line_1305);
			int PROBE_END_LINE_1305 = 1305;
			contentTypeDeser = basic_deserializer_factory_1_expr249_line_1305;
        }

        int PROBE_START_LINE_1309 = 1310;
		com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1309 = type;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_1684_line_1309 = config;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1683_line_1309 = beanDesc;
		JsonDeserializer<?> basic_deserializer_factory_1_expr250_line_1309 = _findCustomMapDeserializer(
				p_type_1682_line_1309, v_config_1684_line_1309, p_bean_desc_1683_line_1309, keyDes, contentTypeDeser,
				contentDeser);
		int PROBE_END_LINE_1309 = 1310;
		// 23-Nov-2010, tatu: Custom deserializer?
        JsonDeserializer<?> deser = basic_deserializer_factory_1_expr250_line_1309;

        int PROBE_START_LINE_1312 = 1382;
		JsonDeserializer<?> v_deser_1690_line_1312 = deser;
		boolean basic_deserializer_factory_1_expr251_line_1312 = v_deser_1690_line_1312 == null;
		int PROBE_END_LINE_1312 = 1382;
		if (basic_deserializer_factory_1_expr251_line_1312) {
            int PROBE_START_LINE_1314 = 1314;
			com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1314 = type;
			Class<?> basic_deserializer_factory_1_expr252_line_1314 = p_type_1682_line_1314.getRawClass();
			int PROBE_END_LINE_1314 = 1314;
			// Value handling is identical for all, but EnumMap requires special handling for keys
            Class<?> mapClass = basic_deserializer_factory_1_expr252_line_1314;
            int PROBE_START_LINE_1315 = 1331;
			Class<?> v_map_class_1691_line_1315 = mapClass;
			boolean basic_deserializer_factory_1_expr253_line_1315 = EnumMap.class
					.isAssignableFrom(v_map_class_1691_line_1315);
			int PROBE_END_LINE_1315 = 1331;
			if (basic_deserializer_factory_1_expr253_line_1315) {
                ValueInstantiator inst;

                // 06-Mar-2017, tatu: Should only need to check ValueInstantiator for
                //    custom sub-classes, see [databind#1544]
                if (mapClass == EnumMap.class) {
                    inst = null;
                } else {
                    inst = findValueInstantiator(ctxt, beanDesc);
                }
                Class<?> kt = keyType.getRawClass();
                if (kt == null || !kt.isEnum()) {
                    throw new IllegalArgumentException("Cannot construct EnumMap; generic (key) type not available");
                }
                deser = new EnumMapDeserializer(type, inst, null,
                        contentDeser, contentTypeDeser, null);
            }

            // Otherwise, generic handler works ok.
    
            int PROBE_START_LINE_1344 = 1381;
			JsonDeserializer<?> v_deser_1690_line_1344 = deser;
			boolean basic_deserializer_factory_1_expr255_line_1344 = v_deser_1690_line_1344 == null;
			int PROBE_END_LINE_1344 = 1381;
			/* But there is one more twist: if we are being asked to instantiate
             * an interface or abstract Map, we need to either find something
             * that implements the thing, or give up.
             *
             * Note that we do NOT try to guess based on secondary interfaces
             * here; that would probably not work correctly since casts would
             * fail later on (as the primary type is not the interface we'd
             * be implementing)
             */
            if (basic_deserializer_factory_1_expr255_line_1344) {
                int PROBE_START_LINE_1345 = 1366;
				com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1345 = type;
				boolean basic_deserializer_factory_1_expr257_line_1345 = p_type_1682_line_1345.isInterface();
				boolean basic_deserializer_factory_1_expr258_line_1345 = false;
				if (!basic_deserializer_factory_1_expr257_line_1345) {
					com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1345_v1 = type;
					basic_deserializer_factory_1_expr258_line_1345 = p_type_1682_line_1345_v1.isAbstract();
				}
				boolean basic_deserializer_factory_1_expr256_line_1345 = basic_deserializer_factory_1_expr257_line_1345
						|| basic_deserializer_factory_1_expr258_line_1345;
				int PROBE_END_LINE_1345 = 1366;
				if (basic_deserializer_factory_1_expr256_line_1345) {
                    int PROBE_START_LINE_1346 = 1347;
					HashMap<String, Class<? extends java.util.Map>> f__map_fallbacks_1541_line_1347 = _mapFallbacks;
					Class<?> v_map_class_1691_line_1347 = mapClass;
					String basic_deserializer_factory_1_expr260_line_1347 = v_map_class_1691_line_1347.getName();
					Class<? extends Map> basic_deserializer_factory_1_expr259_line_1347 = f__map_fallbacks_1541_line_1347
							.get(basic_deserializer_factory_1_expr260_line_1347);
					int PROBE_END_LINE_1346 = 1347;
					@SuppressWarnings("rawtypes")
                    Class<? extends Map> fallback = basic_deserializer_factory_1_expr259_line_1347;
                    int PROBE_START_LINE_1348 = 1359;
					Class<? extends java.util.Map> v_fallback_1692_line_1348 = fallback;
					boolean basic_deserializer_factory_1_expr261_line_1348 = v_fallback_1692_line_1348 != null;
					int PROBE_END_LINE_1348 = 1359;
					if (basic_deserializer_factory_1_expr261_line_1348) {
                        int PROBE_START_LINE_1349 = 1349;
						Class<? extends java.util.Map> v_fallback_1692_line_1349 = fallback;
						int PROBE_END_LINE_1349 = 1349;
						mapClass = v_fallback_1692_line_1349;
                        int PROBE_START_LINE_1350 = 1350;
						com.fasterxml.jackson.databind.DeserializationConfig v_config_1684_line_1350 = config;
						com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1350 = type;
						Class<?> v_map_class_1691_line_1350 = mapClass;
						com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr265_line_1350 = v_config_1684_line_1350
								.constructSpecializedType(p_type_1682_line_1350, v_map_class_1691_line_1350);
						int PROBE_END_LINE_1350 = 1350;
						type = (MapType) basic_deserializer_factory_1_expr265_line_1350;
                        int PROBE_START_LINE_1352 = 1352;
						com.fasterxml.jackson.databind.DeserializationConfig v_config_1684_line_1352 = config;
						com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1352 = type;
						com.fasterxml.jackson.databind.BeanDescription basic_deserializer_factory_1_expr267_line_1352 = v_config_1684_line_1352
								.introspectForCreation(p_type_1682_line_1352);
						int PROBE_END_LINE_1352 = 1352;
						// But if so, also need to re-check creators...
                        beanDesc = basic_deserializer_factory_1_expr267_line_1352;
                    } else {
                        // [databind#292]: Actually, may be fine, but only if polymorphic deser enabled
                        if (type.getTypeHandler() == null) {
                            throw new IllegalArgumentException("Cannot find a deserializer for non-concrete Map type "+type);
                        }
                        deser = AbstractDeserializer.constructForNonPOJO(beanDesc);
                    }
                } else {
                    // 10-Jan-2017, tatu: `java.util.Collections` types need help:
                    deser = JavaUtilCollectionsDeserializers.findForMap(ctxt, type);
                    if (deser != null) {
                        return deser;
                    }
                }
                int PROBE_START_LINE_1367 = 1380;
				JsonDeserializer<?> v_deser_1690_line_1367 = deser;
				boolean basic_deserializer_factory_1_expr268_line_1367 = v_deser_1690_line_1367 == null;
				int PROBE_END_LINE_1367 = 1380;
				if (basic_deserializer_factory_1_expr268_line_1367) {
                    int PROBE_START_LINE_1368 = 1368;
					com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1681_line_1368 = ctxt;
					com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1683_line_1368 = beanDesc;
					ValueInstantiator basic_deserializer_factory_1_expr269_line_1368 = findValueInstantiator(
							p_ctxt_1681_line_1368, p_bean_desc_1683_line_1368);
					int PROBE_END_LINE_1368 = 1368;
					ValueInstantiator inst = basic_deserializer_factory_1_expr269_line_1368;
                    int PROBE_START_LINE_1373 = 1373;
					com.fasterxml.jackson.databind.type.MapType p_type_1682_line_1373 = type;
					com.fasterxml.jackson.databind.deser.ValueInstantiator v_inst_1693_line_1373 = inst;
					com.fasterxml.jackson.databind.KeyDeserializer v_key_des_1688_line_1373 = keyDes;
					JsonDeserializer<Object> v_content_deser_1687_line_1373 = contentDeser;
					com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1689_line_1373 = contentTypeDeser;
					int PROBE_END_LINE_1373 = 1373;
					// 01-May-2016, tatu: Which base type to use here gets tricky, since
                    //   most often it ought to be `Map` or `EnumMap`, but due to abstract
                    //   mapping it will more likely be concrete type like `HashMap`.
                    //   So, for time being, just pass `Map.class`
                    MapDeserializer md = new MapDeserializer(p_type_1682_line_1373, v_inst_1693_line_1373, v_key_des_1688_line_1373, v_content_deser_1687_line_1373, v_content_type_deser_1689_line_1373);
                    int PROBE_START_LINE_1374 = 1375;
					com.fasterxml.jackson.databind.DeserializationConfig v_config_1684_line_1374 = config;
					JsonIgnoreProperties.Value basic_deserializer_factory_1_expr271_line_1374 = v_config_1684_line_1374
							.getDefaultPropertyIgnorals(Map.class, beanDesc.getClassInfo());
					int PROBE_END_LINE_1374 = 1375;
					JsonIgnoreProperties.Value ignorals = basic_deserializer_factory_1_expr271_line_1374;
                    int PROBE_START_LINE_1376 = 1377;
					com.fasterxml.jackson.annotation.JsonIgnoreProperties.Value v_ignorals_1695_line_1376 = ignorals;
					boolean basic_deserializer_factory_1_expr277_line_1376 = v_ignorals_1695_line_1376 == null;
					boolean basic_deserializer_factory_1_expr275_line_1376 = (basic_deserializer_factory_1_expr277_line_1376);
					Set<String> basic_deserializer_factory_1_expr274_line_1376 = basic_deserializer_factory_1_expr275_line_1376
							? null
							: ignorals.findIgnoredForDeserialization();
					int PROBE_END_LINE_1376 = 1377;
					Set<String> ignored = basic_deserializer_factory_1_expr274_line_1376;
                    int PROBE_START_LINE_1378 = 1378;
					com.fasterxml.jackson.databind.deser.std.MapDeserializer v_md_1694_line_1378 = md;
					Set<String> v_ignored_1696_line_1378 = ignored;
					int PROBE_END_LINE_1378 = 1378;
					v_md_1694_line_1378.setIgnorableProperties(v_ignored_1696_line_1378);
                    int PROBE_START_LINE_1379 = 1379;
					com.fasterxml.jackson.databind.deser.std.MapDeserializer v_md_1694_line_1379 = md;
					int PROBE_END_LINE_1379 = 1379;
					deser = v_md_1694_line_1379;
                }
            }
        }
        int PROBE_START_LINE_1383 = 1387;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_1383 = _factoryConfig;
		boolean basic_deserializer_factory_1_expr280_line_1383 = f__factory_config_1544_line_1383
				.hasDeserializerModifiers();
		int PROBE_END_LINE_1383 = 1387;
		if (basic_deserializer_factory_1_expr280_line_1383) {
            for (BeanDeserializerModifier mod : _factoryConfig.deserializerModifiers()) {
                deser = mod.modifyMapDeserializer(config, type, beanDesc, deser);
            }
        }
        int PROBE_START_LINE_1388 = 1388;
		JsonDeserializer<?> v_deser_1690_line_1388 = deser;
		int PROBE_END_LINE_1388 = 1388;
		return v_deser_1690_line_1388;
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
                if (_hasCreatorAnnotation(ctxt, factory)) {
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
                        config, beanDesc.findJsonValueAccessor()),
                        config.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
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
            if (type.isTypeOrSubTypeOf(AtomicReference.class)) {
                Class<?> rawType = type.getRawClass();
                ValueInstantiator inst;
                if (rawType == AtomicReference.class) {
                    inst = null;
                } else {
                    /* 23-Oct-2016, tatu: Note that subtypes are probably not supportable
                     *    without either forcing merging (to avoid having to create instance)
                     *    or something else...
                     */
                    inst = findValueInstantiator(ctxt, beanDesc);
                }
                return new AtomicReferenceDeserializer(type, inst, contentTypeDeser, contentDeser);
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
        int PROBE_START_LINE_1559 = 1559;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1709_line_1559 = config;
		com.fasterxml.jackson.databind.JavaType p_base_type_1710_line_1559 = baseType;
		Class<?> basic_deserializer_factory_1_expr282_line_1559 = p_base_type_1710_line_1559.getRawClass();
		BeanDescription basic_deserializer_factory_1_expr281_line_1559 = p_config_1709_line_1559
				.introspectClassAnnotations(basic_deserializer_factory_1_expr282_line_1559);
		int PROBE_END_LINE_1559 = 1559;
		BeanDescription bean = basic_deserializer_factory_1_expr281_line_1559;
        int PROBE_START_LINE_1560 = 1560;
		com.fasterxml.jackson.databind.BeanDescription v_bean_1711_line_1560 = bean;
		AnnotatedClass basic_deserializer_factory_1_expr283_line_1560 = v_bean_1711_line_1560.getClassInfo();
		int PROBE_END_LINE_1560 = 1560;
		AnnotatedClass ac = basic_deserializer_factory_1_expr283_line_1560;
        int PROBE_START_LINE_1561 = 1561;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1709_line_1561 = config;
		AnnotationIntrospector basic_deserializer_factory_1_expr284_line_1561 = p_config_1709_line_1561
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1561 = 1561;
		AnnotationIntrospector ai = basic_deserializer_factory_1_expr284_line_1561;
        int PROBE_START_LINE_1562 = 1562;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1713_line_1562 = ai;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1709_line_1562 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1712_line_1562 = ac;
		com.fasterxml.jackson.databind.JavaType p_base_type_1710_line_1562 = baseType;
		TypeResolverBuilder<?> basic_deserializer_factory_1_expr285_line_1562 = v_ai_1713_line_1562
				.findTypeResolver(p_config_1709_line_1562, v_ac_1712_line_1562, p_base_type_1710_line_1562);
		int PROBE_END_LINE_1562 = 1562;
		TypeResolverBuilder<?> b = basic_deserializer_factory_1_expr285_line_1562;

        // Ok: if there is no explicit type info handler, we may want to
        // use a default. If so, config object knows what to use.
        Collection<NamedType> subtypes = null;
        int PROBE_START_LINE_1567 = 1574;
		TypeResolverBuilder<?> v_b_1714_line_1567 = b;
		boolean basic_deserializer_factory_1_expr286_line_1567 = v_b_1714_line_1567 == null;
		int PROBE_END_LINE_1567 = 1574;
		if (basic_deserializer_factory_1_expr286_line_1567) {
            int PROBE_START_LINE_1568 = 1568;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1709_line_1568 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1710_line_1568 = baseType;
			TypeResolverBuilder<?> basic_deserializer_factory_1_expr288_line_1568 = p_config_1709_line_1568
					.getDefaultTyper(p_base_type_1710_line_1568);
			int PROBE_END_LINE_1568 = 1568;
			b = basic_deserializer_factory_1_expr288_line_1568;
            int PROBE_START_LINE_1569 = 1571;
			TypeResolverBuilder<?> v_b_1714_line_1569 = b;
			boolean basic_deserializer_factory_1_expr289_line_1569 = v_b_1714_line_1569 == null;
			int PROBE_END_LINE_1569 = 1571;
			if (basic_deserializer_factory_1_expr289_line_1569) {
                return null;
            }
        } else {
            int PROBE_START_LINE_1573 = 1573;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1709_line_1573 = config;
			com.fasterxml.jackson.databind.jsontype.SubtypeResolver basic_deserializer_factory_1_expr292_line_1573 = p_config_1709_line_1573
					.getSubtypeResolver();
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1709_line_1573_v1 = config;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass v_ac_1712_line_1573 = ac;
			Collection<com.fasterxml.jackson.databind.jsontype.NamedType> basic_deserializer_factory_1_expr291_line_1573 = basic_deserializer_factory_1_expr292_line_1573
					.collectAndResolveSubtypesByTypeId(p_config_1709_line_1573_v1, v_ac_1712_line_1573);
			int PROBE_END_LINE_1573 = 1573;
			subtypes = basic_deserializer_factory_1_expr291_line_1573;
        }
        int PROBE_START_LINE_1577 = 1582;
		TypeResolverBuilder<?> v_b_1714_line_1577 = b;
		Class<?> basic_deserializer_factory_1_expr296_line_1577 = v_b_1714_line_1577.getDefaultImpl();
		boolean basic_deserializer_factory_1_expr295_line_1577 = basic_deserializer_factory_1_expr296_line_1577 == null;
		boolean basic_deserializer_factory_1_expr294_line_1577 = (basic_deserializer_factory_1_expr295_line_1577);
		boolean basic_deserializer_factory_1_expr297_line_1577 = true;
		if (basic_deserializer_factory_1_expr294_line_1577) {
			com.fasterxml.jackson.databind.JavaType p_base_type_1710_line_1577 = baseType;
			basic_deserializer_factory_1_expr297_line_1577 = p_base_type_1710_line_1577.isAbstract();
		}
		boolean basic_deserializer_factory_1_expr293_line_1577 = basic_deserializer_factory_1_expr294_line_1577
				&& basic_deserializer_factory_1_expr297_line_1577;
		int PROBE_END_LINE_1577 = 1582;
		// May need to figure out default implementation, if none found yet
        // (note: check for abstract type is not 100% mandatory, more of an optimization)
        if (basic_deserializer_factory_1_expr293_line_1577) {
            int PROBE_START_LINE_1578 = 1578;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1709_line_1578 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1710_line_1578 = baseType;
			JavaType basic_deserializer_factory_1_expr298_line_1578 = mapAbstractType(p_config_1709_line_1578,
					p_base_type_1710_line_1578);
			int PROBE_END_LINE_1578 = 1578;
			JavaType defaultType = basic_deserializer_factory_1_expr298_line_1578;
            int PROBE_START_LINE_1579 = 1581;
			com.fasterxml.jackson.databind.JavaType v_default_type_1716_line_1579 = defaultType;
			boolean basic_deserializer_factory_1_expr301_line_1579 = v_default_type_1716_line_1579 != null;
			boolean basic_deserializer_factory_1_expr300_line_1579 = (basic_deserializer_factory_1_expr301_line_1579);
			boolean basic_deserializer_factory_1_expr302_line_1579 = true;
			if (basic_deserializer_factory_1_expr300_line_1579) {
				com.fasterxml.jackson.databind.JavaType v_default_type_1716_line_1579_v1 = defaultType;
				com.fasterxml.jackson.databind.JavaType p_base_type_1710_line_1579 = baseType;
				Class<?> basic_deserializer_factory_1_expr304_line_1579 = p_base_type_1710_line_1579.getRawClass();
				boolean basic_deserializer_factory_1_expr303_line_1579 = v_default_type_1716_line_1579_v1
						.hasRawClass(basic_deserializer_factory_1_expr304_line_1579);
				basic_deserializer_factory_1_expr302_line_1579 = !basic_deserializer_factory_1_expr303_line_1579;
			}
			boolean basic_deserializer_factory_1_expr299_line_1579 = basic_deserializer_factory_1_expr300_line_1579
					&& basic_deserializer_factory_1_expr302_line_1579;
			int PROBE_END_LINE_1579 = 1581;
			if (basic_deserializer_factory_1_expr299_line_1579) {
                b = b.defaultImpl(defaultType.getRawClass());
            }
        }
        // 05-Apt-2018, tatu: Since we get non-mapping exception due to various limitations,
        //    map to better type here
        try {
            int PROBE_START_LINE_1586 = 1586;
			TypeResolverBuilder<?> v_b_1714_line_1586 = b;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1709_line_1586 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1710_line_1586 = baseType;
			Collection<com.fasterxml.jackson.databind.jsontype.NamedType> v_subtypes_1715_line_1586 = subtypes;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr305_line_1586 = v_b_1714_line_1586
					.buildTypeDeserializer(p_config_1709_line_1586, p_base_type_1710_line_1586,
							v_subtypes_1715_line_1586);
			int PROBE_END_LINE_1586 = 1586;
			return basic_deserializer_factory_1_expr305_line_1586;
        } catch (IllegalArgumentException e0) {
            InvalidDefinitionException e = InvalidDefinitionException.from((JsonParser) null,
                    ClassUtil.exceptionMessage(e0), baseType);
            e.initCause(e0);
            throw e;
        }
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
        int PROBE_START_LINE_1604 = 1604;
		com.fasterxml.jackson.databind.ext.OptionalHandlerFactory q_instance_69_line_1604 = OptionalHandlerFactory.instance;
		com.fasterxml.jackson.databind.JavaType p_type_1718_line_1604 = type;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1717_line_1604 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr307_line_1604 = p_ctxt_1717_line_1604
				.getConfig();
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1719_line_1604 = beanDesc;
		JsonDeserializer<?> basic_deserializer_factory_1_expr306_line_1604 = q_instance_69_line_1604.findDeserializer(
				p_type_1718_line_1604, basic_deserializer_factory_1_expr307_line_1604, p_bean_desc_1719_line_1604);
		int PROBE_END_LINE_1604 = 1604;
		return basic_deserializer_factory_1_expr306_line_1604;
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
        EnumResolver enumRes = constructEnumResolver(enumClass, config, beanDesc.findJsonValueAccessor());
        // May have @JsonCreator for static factory method:
        for (AnnotatedMethod factory : beanDesc.getFactoryMethods()) {
            if (_hasCreatorAnnotation(ctxt, factory)) {
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
        int PROBE_START_LINE_1722 = 1722;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1725_line_1722 = config;
		AnnotationIntrospector basic_deserializer_factory_1_expr308_line_1722 = p_config_1725_line_1722
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1722 = 1722;
		AnnotationIntrospector ai = basic_deserializer_factory_1_expr308_line_1722;
        int PROBE_START_LINE_1723 = 1723;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1728_line_1723 = ai;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1725_line_1723 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_annotated_1727_line_1723 = annotated;
		com.fasterxml.jackson.databind.JavaType p_base_type_1726_line_1723 = baseType;
		TypeResolverBuilder<?> basic_deserializer_factory_1_expr309_line_1723 = v_ai_1728_line_1723
				.findPropertyTypeResolver(p_config_1725_line_1723, p_annotated_1727_line_1723,
						p_base_type_1726_line_1723);
		int PROBE_END_LINE_1723 = 1723;
		TypeResolverBuilder<?> b = basic_deserializer_factory_1_expr309_line_1723;        
        int PROBE_START_LINE_1725 = 1727;
		TypeResolverBuilder<?> v_b_1729_line_1725 = b;
		boolean basic_deserializer_factory_1_expr310_line_1725 = v_b_1729_line_1725 == null;
		int PROBE_END_LINE_1725 = 1727;
		// Defaulting: if no annotations on member, check value class
        if (basic_deserializer_factory_1_expr310_line_1725) {
            int PROBE_START_LINE_1726 = 1726;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1725_line_1726 = config;
			com.fasterxml.jackson.databind.JavaType p_base_type_1726_line_1726 = baseType;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr311_line_1726 = findTypeDeserializer(
					p_config_1725_line_1726, p_base_type_1726_line_1726);
			int PROBE_END_LINE_1726 = 1726;
			return basic_deserializer_factory_1_expr311_line_1726;
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
        int PROBE_START_LINE_1749 = 1749;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1730_line_1749 = config;
		AnnotationIntrospector basic_deserializer_factory_1_expr312_line_1749 = p_config_1730_line_1749
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1749 = 1749;
		AnnotationIntrospector ai = basic_deserializer_factory_1_expr312_line_1749;
        int PROBE_START_LINE_1750 = 1750;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1733_line_1750 = ai;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_1730_line_1750 = config;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_property_entity_1732_line_1750 = propertyEntity;
		com.fasterxml.jackson.databind.JavaType p_container_type_1731_line_1750 = containerType;
		TypeResolverBuilder<?> basic_deserializer_factory_1_expr313_line_1750 = v_ai_1733_line_1750
				.findPropertyContentTypeResolver(p_config_1730_line_1750, p_property_entity_1732_line_1750,
						p_container_type_1731_line_1750);
		int PROBE_END_LINE_1750 = 1750;
		TypeResolverBuilder<?> b = basic_deserializer_factory_1_expr313_line_1750;        
        int PROBE_START_LINE_1751 = 1751;
		com.fasterxml.jackson.databind.JavaType p_container_type_1731_line_1751 = containerType;
		JavaType basic_deserializer_factory_1_expr314_line_1751 = p_container_type_1731_line_1751.getContentType();
		int PROBE_END_LINE_1751 = 1751;
		JavaType contentType = basic_deserializer_factory_1_expr314_line_1751;
        int PROBE_START_LINE_1753 = 1755;
		TypeResolverBuilder<?> v_b_1734_line_1753 = b;
		boolean basic_deserializer_factory_1_expr315_line_1753 = v_b_1734_line_1753 == null;
		int PROBE_END_LINE_1753 = 1755;
		// Defaulting: if no annotations on member, check class
        if (basic_deserializer_factory_1_expr315_line_1753) {
            int PROBE_START_LINE_1754 = 1754;
			com.fasterxml.jackson.databind.DeserializationConfig p_config_1730_line_1754 = config;
			com.fasterxml.jackson.databind.JavaType v_content_type_1735_line_1754 = contentType;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer basic_deserializer_factory_1_expr316_line_1754 = findTypeDeserializer(
					p_config_1730_line_1754, v_content_type_1735_line_1754);
			int PROBE_END_LINE_1754 = 1754;
			return basic_deserializer_factory_1_expr316_line_1754;
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
        int PROBE_START_LINE_1773 = 1773;
		com.fasterxml.jackson.databind.JavaType p_type_1737_line_1773 = type;
		Class<?> basic_deserializer_factory_1_expr317_line_1773 = p_type_1737_line_1773.getRawClass();
		int PROBE_END_LINE_1773 = 1773;
		Class<?> rawType = basic_deserializer_factory_1_expr317_line_1773;
        int PROBE_START_LINE_1775 = 1787;
		Class<?> v_raw_type_1739_line_1775 = rawType;
		Class<?> f_class_object_1535_line_1775 = CLASS_OBJECT;
		boolean basic_deserializer_factory_1_expr318_line_1775 = v_raw_type_1739_line_1775 == f_class_object_1535_line_1775;
		int PROBE_END_LINE_1775 = 1787;
		// Object ("untyped"), String equivalents:
        if (basic_deserializer_factory_1_expr318_line_1775) {
            int PROBE_START_LINE_1777 = 1777;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1736_line_1777 = ctxt;
			DeserializationConfig basic_deserializer_factory_1_expr319_line_1777 = p_ctxt_1736_line_1777.getConfig();
			int PROBE_END_LINE_1777 = 1777;
			// 11-Feb-2015, tatu: As per [databind#700] need to be careful wrt non-default Map, List.
            DeserializationConfig config = basic_deserializer_factory_1_expr319_line_1777;
            JavaType lt = null, mt = null;
            
            int PROBE_START_LINE_1780 = 1785;
			com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_1780 = _factoryConfig;
			boolean basic_deserializer_factory_1_expr320_line_1780 = f__factory_config_1544_line_1780
					.hasAbstractTypeResolvers();
			int PROBE_END_LINE_1780 = 1785;
			if (basic_deserializer_factory_1_expr320_line_1780) {
                lt = _findRemappedType(config, List.class);
                mt = _findRemappedType(config, Map.class);
            } else {
                lt = mt = null;
            }
            int PROBE_START_LINE_1786 = 1786;
			com.fasterxml.jackson.databind.JavaType v_lt_1741_line_1786 = lt;
			com.fasterxml.jackson.databind.JavaType v_mt_1742_line_1786 = mt;
			int PROBE_END_LINE_1786 = 1786;
			return new UntypedObjectDeserializer(v_lt_1741_line_1786, v_mt_1742_line_1786);
        }
        int PROBE_START_LINE_1788 = 1790;
		Class<?> v_raw_type_1739_line_1788 = rawType;
		Class<?> f_class_string_1536_line_1788 = CLASS_STRING;
		boolean basic_deserializer_factory_1_expr325_line_1788 = v_raw_type_1739_line_1788 == f_class_string_1536_line_1788;
		boolean basic_deserializer_factory_1_expr326_line_1788 = false;
		if (!basic_deserializer_factory_1_expr325_line_1788) {
			Class<?> v_raw_type_1739_line_1788_v1 = rawType;
			Class<?> f_class_char_sequence_1537_line_1788 = CLASS_CHAR_SEQUENCE;
			basic_deserializer_factory_1_expr326_line_1788 = v_raw_type_1739_line_1788_v1 == f_class_char_sequence_1537_line_1788;
		}
		boolean basic_deserializer_factory_1_expr324_line_1788 = basic_deserializer_factory_1_expr325_line_1788
				|| basic_deserializer_factory_1_expr326_line_1788;
		int PROBE_END_LINE_1788 = 1790;
		if (basic_deserializer_factory_1_expr324_line_1788) {
            int PROBE_START_LINE_1789 = 1789;
			com.fasterxml.jackson.databind.deser.std.StringDeserializer q_instance_70_line_1789 = StringDeserializer.instance;
			int PROBE_END_LINE_1789 = 1789;
			return q_instance_70_line_1789;
        }
        int PROBE_START_LINE_1791 = 1799;
		Class<?> v_raw_type_1739_line_1791 = rawType;
		Class<?> f_class_iterable_1538_line_1791 = CLASS_ITERABLE;
		boolean basic_deserializer_factory_1_expr327_line_1791 = v_raw_type_1739_line_1791 == f_class_iterable_1538_line_1791;
		int PROBE_END_LINE_1791 = 1799;
		if (basic_deserializer_factory_1_expr327_line_1791) {
            // [databind#199]: Can and should 'upgrade' to a Collection type:
            TypeFactory tf = ctxt.getTypeFactory();
            JavaType[] tps = tf.findTypeParameters(type, CLASS_ITERABLE);
            JavaType elemType = (tps == null || tps.length != 1) ? TypeFactory.unknownType() : tps[0];
            CollectionType ct = tf.constructCollectionType(Collection.class, elemType);
            // Should we re-introspect beanDesc? For now let's not...
            return createCollectionDeserializer(ctxt, ct, beanDesc);
        }
        int PROBE_START_LINE_1800 = 1811;
		Class<?> v_raw_type_1739_line_1800 = rawType;
		Class<?> f_class_map_entry_1539_line_1800 = CLASS_MAP_ENTRY;
		boolean basic_deserializer_factory_1_expr328_line_1800 = v_raw_type_1739_line_1800 == f_class_map_entry_1539_line_1800;
		int PROBE_END_LINE_1800 = 1811;
		if (basic_deserializer_factory_1_expr328_line_1800) {
            // 28-Apr-2015, tatu: TypeFactory does it all for us already so
            JavaType kt = type.containedTypeOrUnknown(0);
            JavaType vt = type.containedTypeOrUnknown(1);
            TypeDeserializer vts = (TypeDeserializer) vt.getTypeHandler();
            if (vts == null) {
                vts = findTypeDeserializer(ctxt.getConfig(), vt);
            }
            JsonDeserializer<Object> valueDeser = vt.getValueHandler();
            KeyDeserializer keyDes = (KeyDeserializer) kt.getValueHandler();
            return new MapEntryDeserializer(type, keyDes, valueDeser, vts);
        }
        int PROBE_START_LINE_1812 = 1812;
		Class<?> v_raw_type_1739_line_1812 = rawType;
		String basic_deserializer_factory_1_expr329_line_1812 = v_raw_type_1739_line_1812.getName();
		int PROBE_END_LINE_1812 = 1812;
		String clsName = basic_deserializer_factory_1_expr329_line_1812;
        int PROBE_START_LINE_1813 = 1822;
		Class<?> v_raw_type_1739_line_1813 = rawType;
		boolean basic_deserializer_factory_1_expr331_line_1813 = v_raw_type_1739_line_1813.isPrimitive();
		boolean basic_deserializer_factory_1_expr332_line_1813 = false;
		if (!basic_deserializer_factory_1_expr331_line_1813) {
			String v_cls_name_1743_line_1813 = clsName;
			basic_deserializer_factory_1_expr332_line_1813 = v_cls_name_1743_line_1813.startsWith("java.");
		}
		boolean basic_deserializer_factory_1_expr330_line_1813 = basic_deserializer_factory_1_expr331_line_1813
				|| basic_deserializer_factory_1_expr332_line_1813;
		int PROBE_END_LINE_1813 = 1822;
		if (basic_deserializer_factory_1_expr330_line_1813) {
            int PROBE_START_LINE_1815 = 1815;
			Class<?> v_raw_type_1739_line_1815 = rawType;
			String v_cls_name_1743_line_1815 = clsName;
			JsonDeserializer<?> basic_deserializer_factory_1_expr333_line_1815 = NumberDeserializers
					.find(v_raw_type_1739_line_1815, v_cls_name_1743_line_1815);
			int PROBE_END_LINE_1815 = 1815;
			// Primitives/wrappers, other Numbers:
            JsonDeserializer<?> deser = basic_deserializer_factory_1_expr333_line_1815;
            int PROBE_START_LINE_1816 = 1818;
			JsonDeserializer<?> v_deser_1744_line_1816 = deser;
			boolean basic_deserializer_factory_1_expr334_line_1816 = v_deser_1744_line_1816 == null;
			int PROBE_END_LINE_1816 = 1818;
			if (basic_deserializer_factory_1_expr334_line_1816) {
                deser = DateDeserializers.find(rawType, clsName);
            }
            int PROBE_START_LINE_1819 = 1821;
			JsonDeserializer<?> v_deser_1744_line_1819 = deser;
			boolean basic_deserializer_factory_1_expr335_line_1819 = v_deser_1744_line_1819 != null;
			int PROBE_END_LINE_1819 = 1821;
			if (basic_deserializer_factory_1_expr335_line_1819) {
                int PROBE_START_LINE_1820 = 1820;
				JsonDeserializer<?> v_deser_1744_line_1820 = deser;
				int PROBE_END_LINE_1820 = 1820;
				return v_deser_1744_line_1820;
            }
        }
        int PROBE_START_LINE_1824 = 1826;
		Class<?> v_raw_type_1739_line_1824 = rawType;
		boolean basic_deserializer_factory_1_expr336_line_1824 = v_raw_type_1739_line_1824 == TokenBuffer.class;
		int PROBE_END_LINE_1824 = 1826;
		// and a few Jackson types as well:
        if (basic_deserializer_factory_1_expr336_line_1824) {
            return new TokenBufferDeserializer();
        }
        int PROBE_START_LINE_1827 = 1827;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1736_line_1827 = ctxt;
		com.fasterxml.jackson.databind.JavaType p_type_1737_line_1827 = type;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_1738_line_1827 = beanDesc;
		JsonDeserializer<?> basic_deserializer_factory_1_expr338_line_1827 = findOptionalStdDeserializer(
				p_ctxt_1736_line_1827, p_type_1737_line_1827, p_bean_desc_1738_line_1827);
		int PROBE_END_LINE_1827 = 1827;
		JsonDeserializer<?> deser = basic_deserializer_factory_1_expr338_line_1827;
        int PROBE_START_LINE_1828 = 1830;
		JsonDeserializer<?> v_deser_1745_line_1828 = deser;
		boolean basic_deserializer_factory_1_expr339_line_1828 = v_deser_1745_line_1828 != null;
		int PROBE_END_LINE_1828 = 1830;
		if (basic_deserializer_factory_1_expr339_line_1828) {
            return deser;
        }
        int PROBE_START_LINE_1831 = 1831;
		Class<?> v_raw_type_1739_line_1831 = rawType;
		String v_cls_name_1743_line_1831 = clsName;
		JsonDeserializer<?> basic_deserializer_factory_1_expr340_line_1831 = JdkDeserializers
				.find(v_raw_type_1739_line_1831, v_cls_name_1743_line_1831);
		int PROBE_END_LINE_1831 = 1831;
		return basic_deserializer_factory_1_expr340_line_1831;
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
        int PROBE_START_LINE_1878 = 1883;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_1878 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.deser.Deserializers> basic_deserializer_factory_1_expr341_line_1878 = f__factory_config_1544_line_1878
				.deserializers();
		int PROBE_END_LINE_1878 = 1883;
		for (Deserializers d  : basic_deserializer_factory_1_expr341_line_1878) {
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
        int PROBE_START_LINE_1907 = 1913;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_1907 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.deser.Deserializers> basic_deserializer_factory_1_expr342_line_1907 = f__factory_config_1544_line_1907
				.deserializers();
		int PROBE_END_LINE_1907 = 1913;
		for (Deserializers d  : basic_deserializer_factory_1_expr342_line_1907) {
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
        int PROBE_START_LINE_1951 = 1957;
		com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig f__factory_config_1544_line_1951 = _factoryConfig;
		Iterable<com.fasterxml.jackson.databind.deser.Deserializers> basic_deserializer_factory_1_expr343_line_1951 = f__factory_config_1544_line_1951
				.deserializers();
		int PROBE_END_LINE_1951 = 1957;
		for (Deserializers d  : basic_deserializer_factory_1_expr343_line_1951) {
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
        int PROBE_START_LINE_1995 = 1995;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1792_line_1995 = ctxt;
		AnnotationIntrospector basic_deserializer_factory_1_expr344_line_1995 = p_ctxt_1792_line_1995
				.getAnnotationIntrospector();
		int PROBE_END_LINE_1995 = 1995;
		AnnotationIntrospector intr = basic_deserializer_factory_1_expr344_line_1995;
        int PROBE_START_LINE_1996 = 2001;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1794_line_1996 = intr;
		boolean basic_deserializer_factory_1_expr345_line_1996 = v_intr_1794_line_1996 != null;
		int PROBE_END_LINE_1996 = 2001;
		if (basic_deserializer_factory_1_expr345_line_1996) {
            int PROBE_START_LINE_1997 = 1997;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1794_line_1997 = intr;
			com.fasterxml.jackson.databind.introspect.Annotated p_ann_1793_line_1997 = ann;
			Object basic_deserializer_factory_1_expr346_line_1997 = v_intr_1794_line_1997
					.findDeserializer(p_ann_1793_line_1997);
			int PROBE_END_LINE_1997 = 1997;
			Object deserDef = basic_deserializer_factory_1_expr346_line_1997;
            int PROBE_START_LINE_1998 = 2000;
			Object v_deser_def_1795_line_1998 = deserDef;
			boolean basic_deserializer_factory_1_expr347_line_1998 = v_deser_def_1795_line_1998 != null;
			int PROBE_END_LINE_1998 = 2000;
			if (basic_deserializer_factory_1_expr347_line_1998) {
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
     * @since 2.9
     */
    protected JsonDeserializer<Object> findContentDeserializerFromAnnotation(DeserializationContext ctxt,
            Annotated ann)
        throws JsonMappingException
    {
        AnnotationIntrospector intr = ctxt.getAnnotationIntrospector();
        if (intr != null) {
            Object deserDef = intr.findContentDeserializer(ann);
            if (deserDef != null) {
                return ctxt.deserializerInstance(ann, deserDef);
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
        int PROBE_START_LINE_2054 = 2054;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1800_line_2054 = ctxt;
		AnnotationIntrospector basic_deserializer_factory_1_expr348_line_2054 = p_ctxt_1800_line_2054
				.getAnnotationIntrospector();
		int PROBE_END_LINE_2054 = 2054;
		AnnotationIntrospector intr = basic_deserializer_factory_1_expr348_line_2054;
        int PROBE_START_LINE_2055 = 2057;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1803_line_2055 = intr;
		boolean basic_deserializer_factory_1_expr349_line_2055 = v_intr_1803_line_2055 == null;
		int PROBE_END_LINE_2055 = 2057;
		if (basic_deserializer_factory_1_expr349_line_2055) {
            return type;
        }

        // First things first: see if we can find annotations on declared
        // type

        int PROBE_START_LINE_2062 = 2072;
		com.fasterxml.jackson.databind.JavaType p_type_1802_line_2062 = type;
		boolean basic_deserializer_factory_1_expr350_line_2062 = p_type_1802_line_2062.isMapLikeType();
		int PROBE_END_LINE_2062 = 2072;
		if (basic_deserializer_factory_1_expr350_line_2062) {
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

        int PROBE_START_LINE_2074 = 2085;
		com.fasterxml.jackson.databind.JavaType p_type_1802_line_2074 = type;
		boolean basic_deserializer_factory_1_expr351_line_2074 = p_type_1802_line_2074.hasContentType();
		int PROBE_END_LINE_2074 = 2085;
		if (basic_deserializer_factory_1_expr351_line_2074) { // that is, is either container- or reference-type
            int PROBE_START_LINE_2075 = 2075;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1803_line_2075 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_1801_line_2075 = member;
			Object basic_deserializer_factory_1_expr352_line_2075 = v_intr_1803_line_2075
					.findContentDeserializer(p_member_1801_line_2075);
			int PROBE_END_LINE_2075 = 2075;
			Object cdDef = basic_deserializer_factory_1_expr352_line_2075;
            int PROBE_START_LINE_2076 = 2076;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1800_line_2076 = ctxt;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_1801_line_2076 = member;
			Object v_cd_def_1804_line_2076 = cdDef;
			JsonDeserializer<?> basic_deserializer_factory_1_expr353_line_2076 = p_ctxt_1800_line_2076
					.deserializerInstance(p_member_1801_line_2076, v_cd_def_1804_line_2076);
			int PROBE_END_LINE_2076 = 2076;
			JsonDeserializer<?> cd = basic_deserializer_factory_1_expr353_line_2076;
            int PROBE_START_LINE_2077 = 2079;
			JsonDeserializer<?> v_cd_1805_line_2077 = cd;
			boolean basic_deserializer_factory_1_expr354_line_2077 = v_cd_1805_line_2077 != null;
			int PROBE_END_LINE_2077 = 2079;
			if (basic_deserializer_factory_1_expr354_line_2077) {
                type = type.withContentValueHandler(cd);
            }
            int PROBE_START_LINE_2080 = 2081;
			TypeDeserializer basic_deserializer_factory_1_expr355_line_2080 = findPropertyContentTypeDeserializer(
					ctxt.getConfig(), type, (AnnotatedMember) member);
			int PROBE_END_LINE_2080 = 2081;
			TypeDeserializer contentTypeDeser = basic_deserializer_factory_1_expr355_line_2080;            	
            int PROBE_START_LINE_2082 = 2084;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1806_line_2082 = contentTypeDeser;
			boolean basic_deserializer_factory_1_expr358_line_2082 = v_content_type_deser_1806_line_2082 != null;
			int PROBE_END_LINE_2082 = 2084;
			if (basic_deserializer_factory_1_expr358_line_2082) {
                int PROBE_START_LINE_2083 = 2083;
				com.fasterxml.jackson.databind.JavaType p_type_1802_line_2083 = type;
				com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_content_type_deser_1806_line_2083 = contentTypeDeser;
				com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr360_line_2083 = p_type_1802_line_2083
						.withContentTypeHandler(v_content_type_deser_1806_line_2083);
				int PROBE_END_LINE_2083 = 2083;
				type = basic_deserializer_factory_1_expr360_line_2083;
            }
        }
        int PROBE_START_LINE_2086 = 2087;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1800_line_2086 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr362_line_2086 = p_ctxt_1800_line_2086
				.getConfig();
		TypeDeserializer basic_deserializer_factory_1_expr361_line_2086 = findPropertyTypeDeserializer(
				basic_deserializer_factory_1_expr362_line_2086, type, (AnnotatedMember) member);
		int PROBE_END_LINE_2086 = 2087;
		TypeDeserializer valueTypeDeser = basic_deserializer_factory_1_expr361_line_2086;
        int PROBE_START_LINE_2088 = 2090;
		com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_value_type_deser_1807_line_2088 = valueTypeDeser;
		boolean basic_deserializer_factory_1_expr364_line_2088 = v_value_type_deser_1807_line_2088 != null;
		int PROBE_END_LINE_2088 = 2090;
		if (basic_deserializer_factory_1_expr364_line_2088) {
            int PROBE_START_LINE_2089 = 2089;
			com.fasterxml.jackson.databind.JavaType p_type_1802_line_2089 = type;
			com.fasterxml.jackson.databind.jsontype.TypeDeserializer v_value_type_deser_1807_line_2089 = valueTypeDeser;
			com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr366_line_2089 = p_type_1802_line_2089
					.withTypeHandler(v_value_type_deser_1807_line_2089);
			int PROBE_END_LINE_2089 = 2089;
			type = basic_deserializer_factory_1_expr366_line_2089;
        }

        // Second part: find actual type-override annotations on member, if any

        int PROBE_START_LINE_2097 = 2097;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1803_line_2097 = intr;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_1800_line_2097 = ctxt;
		com.fasterxml.jackson.databind.DeserializationConfig basic_deserializer_factory_1_expr369_line_2097 = p_ctxt_1800_line_2097
				.getConfig();
		com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_1801_line_2097 = member;
		com.fasterxml.jackson.databind.JavaType p_type_1802_line_2097 = type;
		com.fasterxml.jackson.databind.JavaType basic_deserializer_factory_1_expr368_line_2097 = v_intr_1803_line_2097
				.refineDeserializationType(basic_deserializer_factory_1_expr369_line_2097, p_member_1801_line_2097,
						p_type_1802_line_2097);
		int PROBE_END_LINE_2097 = 2097;
		// 18-Jun-2016, tatu: Should we re-do checks for annotations on refined
        //   subtypes as well? Code pre-2.8 did not do this, but if we get bug
        //   reports may need to consider
        type = basic_deserializer_factory_1_expr368_line_2097;
        int PROBE_START_LINE_2098 = 2098;
		com.fasterxml.jackson.databind.JavaType p_type_1802_line_2098 = type;
		int PROBE_END_LINE_2098 = 2098;
		return p_type_1802_line_2098;
    }

    protected EnumResolver constructEnumResolver(Class<?> enumClass,
            DeserializationConfig config, AnnotatedMember jsonValueAccessor)
    {
        if (jsonValueAccessor != null) {
            if (config.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(jsonValueAccessor.getMember(),
                        config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            return EnumResolver.constructUnsafeUsingMethod(enumClass,
                    jsonValueAccessor, config.getAnnotationIntrospector());
        }
        // 14-Mar-2016, tatu: We used to check `DeserializationFeature.READ_ENUMS_USING_TO_STRING`
        //   here, but that won't do: it must be dynamically changeable...
        return EnumResolver.constructUnsafe(enumClass, config.getAnnotationIntrospector());
    }

    /**
     * @since 2.9
     */
    protected boolean _hasCreatorAnnotation(DeserializationContext ctxt,
            Annotated ann) {
        AnnotationIntrospector intr = ctxt.getAnnotationIntrospector();
        if (intr != null) {
            JsonCreator.Mode mode = intr.findCreatorAnnotation(ctxt.getConfig(), ann);
            return (mode != null) && (mode != JsonCreator.Mode.DISABLED); 
        }
        return false;
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
