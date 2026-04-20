package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Modifier;
import java.util.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.LinkedHashMap;
import java.util.HashSet;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import java.util.List;
import java.util.Iterator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Collection;
import java.util.Map.Entry;
import java.util.Set;
import com.fasterxml.jackson.databind.JavaType;
import java.util.LinkedList;

/**
 * Helper class used for aggregating information about all possible
 * properties of a POJO.
 */
public class POJOPropertiesCollector
{
    /*
    /**********************************************************
    /* Configuration
    /**********************************************************
     */
    
    /**
     * Configuration settings
     */
    protected final MapperConfig<?> _config;

    /**
     * True if introspection is done for serialization (giving
     *   precedence for serialization annotations), or not (false, deserialization)
     */
    protected final boolean _forSerialization;
    
    /**
     * Type of POJO for which properties are being collected.
     */
    protected final JavaType _type;

    /**
     * Low-level introspected class information (methods, fields etc)
     */
    protected final AnnotatedClass _classDef;

    protected final VisibilityChecker<?> _visibilityChecker;

    protected final AnnotationIntrospector _annotationIntrospector;

    /**
     * Prefix used by auto-detected mutators ("setters"): usually "set",
     * but differs for builder objects ("with" by default).
     */
    protected final String _mutatorPrefix;
    
    /*
    /**********************************************************
    /* Collected property information
    /**********************************************************
     */

    /**
     * Set of logical property information collected so far
     */
    protected final LinkedHashMap<String, POJOPropertyBuilder> _properties
        = new LinkedHashMap<String, POJOPropertyBuilder>();

    protected LinkedList<POJOPropertyBuilder> _creatorProperties = null;
    
    protected LinkedList<AnnotatedMember> _anyGetters = null;

    protected LinkedList<AnnotatedMethod> _anySetters = null;

    /**
     * Method(s) marked with 'JsonValue' annotation
     */
    protected LinkedList<AnnotatedMethod> _jsonValueGetters = null;

    /**
     * Lazily collected list of properties that can be implicitly
     * ignored during serialization; only updated when collecting
     * information for deserialization purposes
     */
    protected HashSet<String> _ignoredPropertyNames;

    /**
     * Lazily collected list of members that were annotated to
     * indicate that they represent mutators for deserializer
     * value injection.
     */
    protected LinkedHashMap<Object, AnnotatedMember> _injectables;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    protected POJOPropertiesCollector(MapperConfig<?> config, boolean forSerialization,
            JavaType type, AnnotatedClass classDef, String mutatorPrefix)
    {
        int PROBE_START_LINE_101 = 101;
		MapperConfig<?> p_config_1822_line_101 = config;
		int PROBE_END_LINE_101 = 101;
		_config = p_config_1822_line_101;
        int PROBE_START_LINE_102 = 102;
		boolean p_for_serialization_1823_line_102 = forSerialization;
		int PROBE_END_LINE_102 = 102;
		_forSerialization = p_for_serialization_1823_line_102;
        int PROBE_START_LINE_103 = 103;
		com.fasterxml.jackson.databind.JavaType p_type_1824_line_103 = type;
		int PROBE_END_LINE_103 = 103;
		_type = p_type_1824_line_103;
        int PROBE_START_LINE_104 = 104;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_1825_line_104 = classDef;
		int PROBE_END_LINE_104 = 104;
		_classDef = p_class_def_1825_line_104;
        int PROBE_START_LINE_105 = 105;
		String p_mutator_prefix_1826_line_105 = mutatorPrefix;
		boolean pojoproperties_collector_1_expr9_line_105 = p_mutator_prefix_1826_line_105 == null;
		boolean pojoproperties_collector_1_expr8_line_105 = (pojoproperties_collector_1_expr9_line_105);
		String p_mutator_prefix_1826_line_105_v1 = null;
		if (!pojoproperties_collector_1_expr8_line_105) {
			p_mutator_prefix_1826_line_105_v1 = mutatorPrefix;
		}
		String pojoproperties_collector_1_expr7_line_105 = pojoproperties_collector_1_expr8_line_105
				? "set"
				: p_mutator_prefix_1826_line_105_v1;
		int PROBE_END_LINE_105 = 105;
		_mutatorPrefix = pojoproperties_collector_1_expr7_line_105;
        int PROBE_START_LINE_106 = 107;
		MapperConfig<?> p_config_1822_line_106 = config;
		boolean pojoproperties_collector_1_expr12_line_106 = p_config_1822_line_106.isAnnotationProcessingEnabled();
		com.fasterxml.jackson.databind.AnnotationIntrospector pojoproperties_collector_1_expr11_line_106 = pojoproperties_collector_1_expr12_line_106
				? _config.getAnnotationIntrospector()
				: null;
		int PROBE_END_LINE_106 = 107;
		_annotationIntrospector = pojoproperties_collector_1_expr11_line_106;
        int PROBE_START_LINE_108 = 113;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1832_line_108 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr14_line_108 = f__annotation_introspector_1832_line_108 == null;
		int PROBE_END_LINE_108 = 113;
		if (pojoproperties_collector_1_expr14_line_108) {
            _visibilityChecker = _config.getDefaultVisibilityChecker();
        } else {
            int PROBE_START_LINE_111 = 112;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1832_line_111 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_1825_line_111 = classDef;
			VisibilityChecker<?> pojoproperties_collector_1_expr16_line_111 = f__annotation_introspector_1832_line_111
					.findAutoDetectVisibility(p_class_def_1825_line_111, _config.getDefaultVisibilityChecker());
			int PROBE_END_LINE_111 = 112;
			_visibilityChecker = pojoproperties_collector_1_expr16_line_111;
        }
    }
    
    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    public MapperConfig<?> getConfig() {
        int PROBE_START_LINE_123 = 123;
		MapperConfig<?> f__config_1827_line_123 = _config;
		int PROBE_END_LINE_123 = 123;
		return f__config_1827_line_123;
    }

    public JavaType getType() {
        int PROBE_START_LINE_127 = 127;
		com.fasterxml.jackson.databind.JavaType f__type_1829_line_127 = _type;
		int PROBE_END_LINE_127 = 127;
		return f__type_1829_line_127;
    }
    
    public AnnotatedClass getClassDef() {
        int PROBE_START_LINE_131 = 131;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_131 = _classDef;
		int PROBE_END_LINE_131 = 131;
		return f__class_def_1830_line_131;
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return _annotationIntrospector;
    }
    
    public List<BeanPropertyDefinition> getProperties() {
        int PROBE_START_LINE_140 = 140;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_1817_line_140 = _properties;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr19_line_140 = f__properties_1817_line_140
				.values();
		int PROBE_END_LINE_140 = 140;
		// make sure we return a copy, so caller can remove entries if need be:
        return new ArrayList<BeanPropertyDefinition>(pojoproperties_collector_1_expr19_line_140);
    }

    public Map<Object, AnnotatedMember> getInjectables() {
        int PROBE_START_LINE_144 = 144;
		LinkedHashMap<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> f__injectables_1834_line_144 = _injectables;
		int PROBE_END_LINE_144 = 144;
		return f__injectables_1834_line_144;
    }
    
    public AnnotatedMethod getJsonValueMethod()
    {
        int PROBE_START_LINE_150 = 157;
		LinkedList<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__json_value_getters_1821_line_150 = _jsonValueGetters;
		boolean pojoproperties_collector_1_expr20_line_150 = f__json_value_getters_1821_line_150 != null;
		int PROBE_END_LINE_150 = 157;
		// If @JsonValue defined, must have a single one
        if (pojoproperties_collector_1_expr20_line_150) {
            if (_jsonValueGetters.size() > 1) {
                reportProblem("Multiple value properties defined ("+_jsonValueGetters.get(0)+" vs "
                        +_jsonValueGetters.get(1)+")");
            }
            // otherwise we won't greatly care
            return _jsonValueGetters.get(0);
        }
        return null;
    }

    public AnnotatedMember getAnyGetter()
    {
        if (_anyGetters != null) {
            if (_anyGetters.size() > 1) {
                reportProblem("Multiple 'any-getters' defined ("+_anyGetters.get(0)+" vs "
                        +_anyGetters.get(1)+")");
            }
            return _anyGetters.getFirst();
        }        
        return null;
    }

    public AnnotatedMethod getAnySetterMethod()
    {
        int PROBE_START_LINE_175 = 181;
		LinkedList<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__any_setters_1820_line_175 = _anySetters;
		boolean pojoproperties_collector_1_expr21_line_175 = f__any_setters_1820_line_175 != null;
		int PROBE_END_LINE_175 = 181;
		if (pojoproperties_collector_1_expr21_line_175) {
            if (_anySetters.size() > 1) {
                reportProblem("Multiple 'any-setters' defined ("+_anySetters.get(0)+" vs "
                        +_anySetters.get(1)+")");
            }
            return _anySetters.getFirst();
        }
        return null;
    }

    /**
     * Accessor for set of properties that are explicitly marked to be ignored
     * via per-property markers (but NOT class annotations).
     */
    public Set<String> getIgnoredPropertyNames() {
        int PROBE_START_LINE_190 = 190;
		HashSet<String> f__ignored_property_names_1835_line_190 = _ignoredPropertyNames;
		int PROBE_END_LINE_190 = 190;
		return f__ignored_property_names_1835_line_190;
    }

    /**
     * Accessor to find out whether type specified requires inclusion
     * of Object Identifier.
     */
    public ObjectIdInfo getObjectIdInfo()
    {
        int PROBE_START_LINE_199 = 201;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1832_line_199 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr22_line_199 = f__annotation_introspector_1832_line_199 == null;
		int PROBE_END_LINE_199 = 201;
		if (pojoproperties_collector_1_expr22_line_199) {
            return null;
        }
        int PROBE_START_LINE_202 = 202;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1832_line_202 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_202 = _classDef;
		ObjectIdInfo pojoproperties_collector_1_expr23_line_202 = f__annotation_introspector_1832_line_202
				.findObjectIdInfo(f__class_def_1830_line_202);
		int PROBE_END_LINE_202 = 202;
		ObjectIdInfo info = pojoproperties_collector_1_expr23_line_202;
        int PROBE_START_LINE_203 = 205;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_1836_line_203 = info;
		boolean pojoproperties_collector_1_expr24_line_203 = v_info_1836_line_203 != null;
		int PROBE_END_LINE_203 = 205;
		if (pojoproperties_collector_1_expr24_line_203) { // 2.1: may also have different defaults for refs:
            info = _annotationIntrospector.findObjectReferenceInfo(_classDef, info);
        }
        int PROBE_START_LINE_206 = 206;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_1836_line_206 = info;
		int PROBE_END_LINE_206 = 206;
		return v_info_1836_line_206;
    }

    /**
     * Method for finding Class to use as POJO builder, if any.
     */
    public Class<?> findPOJOBuilderClass()
    {
        return _annotationIntrospector.findPOJOBuilder(_classDef);
    }
    
    // for unit tests:
    protected Map<String, POJOPropertyBuilder> getPropertyMap() {
        return _properties;
    }

    /*
    /**********************************************************
    /* Public API: main-level collection
    /**********************************************************
     */

    /**
     * Method that orchestrates collection activities, and needs to be called
     * after creating the instance.
     */
    public POJOPropertiesCollector collect()
    {
        int PROBE_START_LINE_234 = 234;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_1817_line_234 = _properties;
		int PROBE_END_LINE_234 = 234;
		f__properties_1817_line_234.clear();
        
        // First: gather basic data
        _addFields();
        _addMethods();
        _addCreators();
        _addInjectables();

        // Remove ignored properties, individual entries
        _removeUnwantedProperties();

        // Rename remaining properties
        _renameProperties();
        int PROBE_START_LINE_248 = 248;
		PropertyNamingStrategy pojoproperties_collector_1_expr32_line_248 = _findNamingStrategy();
		int PROBE_END_LINE_248 = 248;
		// And use custom naming strategy, if applicable...
        PropertyNamingStrategy naming = pojoproperties_collector_1_expr32_line_248;
        int PROBE_START_LINE_249 = 251;
		com.fasterxml.jackson.databind.PropertyNamingStrategy v_naming_1837_line_249 = naming;
		boolean pojoproperties_collector_1_expr33_line_249 = v_naming_1837_line_249 != null;
		int PROBE_END_LINE_249 = 251;
		if (pojoproperties_collector_1_expr33_line_249) {
            _renameUsing(naming);
        }

        int PROBE_START_LINE_257 = 259;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_1817_line_257 = _properties;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr34_line_257 = f__properties_1817_line_257
				.values();
		int PROBE_END_LINE_257 = 259;
		/* Sort by visibility (explicit over implicit); drop all but first
         * of member type (getter, setter etc) if there is visibility
         * difference
         */
        for (POJOPropertyBuilder property : pojoproperties_collector_1_expr34_line_257) {
            property.trimByVisibility();
        }

        int PROBE_START_LINE_262 = 264;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_1817_line_262 = _properties;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr35_line_262 = f__properties_1817_line_262
				.values();
		int PROBE_END_LINE_262 = 264;
		// and then "merge" annotations
        for (POJOPropertyBuilder property : pojoproperties_collector_1_expr35_line_262) {
            property.mergeAnnotations(_forSerialization);
        }

        int PROBE_START_LINE_269 = 271;
		MapperConfig<?> f__config_1827_line_269 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_use_wrapper_name_as_property_name_30_line_269 = MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME;
		boolean pojoproperties_collector_1_expr36_line_269 = f__config_1827_line_269
				.isEnabled(q_use_wrapper_name_as_property_name_30_line_269);
		int PROBE_END_LINE_269 = 271;
		/* and, if required, apply wrapper name: note, MUST be done after
         * annotations are merged.
         */
        if (pojoproperties_collector_1_expr36_line_269) {
            _renameWithWrappers();
        }
        
        // well, almost last: there's still ordering...
        _sortProperties();
        return this;
    }

    /*
    /**********************************************************
    /* Overridable internal methods, sorting, other stuff
    /**********************************************************
     */
    
    /* First, order by [JACKSON-90] (explicit ordering and/or alphabetic)
     * and then for [JACKSON-170] (implicitly order creator properties before others)
     */
    protected void _sortProperties()
    {
        int PROBE_START_LINE_290 = 290;
		AnnotationIntrospector f__annotation_introspector_1832_line_290 = _annotationIntrospector;
		int PROBE_END_LINE_290 = 290;
		// Then how about explicit ordering?
        AnnotationIntrospector intr = f__annotation_introspector_1832_line_290;
        boolean sort = false;
        int PROBE_START_LINE_292 = 292;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1840_line_292 = intr;
		boolean pojoproperties_collector_1_expr42_line_292 = v_intr_1840_line_292 == null;
		boolean pojoproperties_collector_1_expr40_line_292 = (pojoproperties_collector_1_expr42_line_292);
		Boolean pojoproperties_collector_1_expr41_line_292 = null;
		if (!pojoproperties_collector_1_expr40_line_292) {
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1840_line_292_v1 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_292 = _classDef;
			pojoproperties_collector_1_expr41_line_292 = v_intr_1840_line_292_v1
					.findSerializationSortAlphabetically((Annotated) f__class_def_1830_line_292);
		}
		Boolean pojoproperties_collector_1_expr39_line_292 = pojoproperties_collector_1_expr40_line_292
				? null
				: pojoproperties_collector_1_expr41_line_292;
		int PROBE_END_LINE_292 = 292;
		Boolean alpha = pojoproperties_collector_1_expr39_line_292;
        
        int PROBE_START_LINE_294 = 298;
		Boolean v_alpha_1841_line_294 = alpha;
		boolean pojoproperties_collector_1_expr44_line_294 = v_alpha_1841_line_294 == null;
		int PROBE_END_LINE_294 = 298;
		if (pojoproperties_collector_1_expr44_line_294) {
            int PROBE_START_LINE_295 = 295;
			MapperConfig<?> f__config_1827_line_295 = _config;
			boolean pojoproperties_collector_1_expr46_line_295 = f__config_1827_line_295
					.shouldSortPropertiesAlphabetically();
			int PROBE_END_LINE_295 = 295;
			sort = pojoproperties_collector_1_expr46_line_295;
        } else {
            sort = alpha.booleanValue();
        }
        int PROBE_START_LINE_299 = 299;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1840_line_299 = intr;
		boolean pojoproperties_collector_1_expr50_line_299 = v_intr_1840_line_299 == null;
		boolean pojoproperties_collector_1_expr48_line_299 = (pojoproperties_collector_1_expr50_line_299);
		String[] pojoproperties_collector_1_expr49_line_299 = null;
		if (!pojoproperties_collector_1_expr48_line_299) {
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_1840_line_299_v1 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_299 = _classDef;
			pojoproperties_collector_1_expr49_line_299 = v_intr_1840_line_299_v1
					.findSerializationPropertyOrder(f__class_def_1830_line_299);
		}
		String[] pojoproperties_collector_1_expr47_line_299 = pojoproperties_collector_1_expr48_line_299
				? null
				: pojoproperties_collector_1_expr49_line_299;
		int PROBE_END_LINE_299 = 299;
		String[] propertyOrder = pojoproperties_collector_1_expr47_line_299;
        
        int PROBE_START_LINE_302 = 304;
		boolean v_sort_1842_line_302 = sort;
		boolean pojoproperties_collector_1_expr52_line_302 = !v_sort_1842_line_302;
		boolean pojoproperties_collector_1_expr53_line_302 = true;
		boolean pojoproperties_collector_1_expr55_line_302 = true;
		if (pojoproperties_collector_1_expr52_line_302) {
			LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_1818_line_302 = _creatorProperties;
			boolean pojoproperties_collector_1_expr54_line_302 = f__creator_properties_1818_line_302 == null;
			pojoproperties_collector_1_expr53_line_302 = (pojoproperties_collector_1_expr54_line_302);
			if (pojoproperties_collector_1_expr53_line_302) {
				String[] v_property_order_1843_line_302 = propertyOrder;
				boolean pojoproperties_collector_1_expr56_line_302 = v_property_order_1843_line_302 == null;
				pojoproperties_collector_1_expr55_line_302 = (pojoproperties_collector_1_expr56_line_302);
			}
		}
		boolean pojoproperties_collector_1_expr51_line_302 = pojoproperties_collector_1_expr52_line_302
				&& pojoproperties_collector_1_expr53_line_302 && pojoproperties_collector_1_expr55_line_302;
		int PROBE_END_LINE_302 = 304;
		// no sorting? no need to shuffle, then
        if (pojoproperties_collector_1_expr51_line_302) {
            return;
        }
        int size = _properties.size();
        Map<String, POJOPropertyBuilder> all;
        // Need to (re)sort alphabetically?
        if (sort) {
            all = new TreeMap<String,POJOPropertyBuilder>();
        } else {
            all = new LinkedHashMap<String,POJOPropertyBuilder>(size+size);
        }

        for (POJOPropertyBuilder prop : _properties.values()) {
            all.put(prop.getName(), prop);
        }
        Map<String,POJOPropertyBuilder> ordered = new LinkedHashMap<String,POJOPropertyBuilder>(size+size);
        // Ok: primarily by explicit order
        if (propertyOrder != null) {
            for (String name : propertyOrder) {
                POJOPropertyBuilder w = all.get(name);
                if (w == null) { // also, as per [JACKSON-268], we will allow use of "implicit" names
                    for (POJOPropertyBuilder prop : _properties.values()) {
                        if (name.equals(prop.getInternalName())) {
                            w = prop;
                            // plus re-map to external name, to avoid dups:
                            name = prop.getName();
                            break;
                        }
                    }
                }
                if (w != null) {
                    ordered.put(name, w);
                }
            }
        }
        // And secondly by sorting Creator properties before other unordered properties
        if (_creatorProperties != null) {
            /* As per [Issue#311], this is bit delicate; but if alphabetic ordering
             * is mandated, at least ensure creator properties are in alphabetic
             * order. Related question of creator vs non-creator is punted for now,
             * so creator properties still fully predate non-creator ones.
             */
            Collection<POJOPropertyBuilder> cr;
            if (sort) {
                TreeMap<String, POJOPropertyBuilder> sorted =
                        new TreeMap<String,POJOPropertyBuilder>();
                for (POJOPropertyBuilder prop : _creatorProperties) {
                    sorted.put(prop.getName(), prop);
                }
                cr = sorted.values();
            } else {
                cr = _creatorProperties;
            }
            for (POJOPropertyBuilder prop : cr) {
                ordered.put(prop.getName(), prop);
            }
        }
        // And finally whatever is left (trying to put again will not change ordering)
        ordered.putAll(all);
        
        _properties.clear();
        _properties.putAll(ordered);
    }        
    
    /*
    /**********************************************************
    /* Overridable internal methods, adding members
    /**********************************************************
     */
    
    /**
     * Method for collecting basic information on all fields found
     */
    protected void _addFields()
    {
        int PROBE_START_LINE_377 = 377;
		AnnotationIntrospector f__annotation_introspector_1832_line_377 = _annotationIntrospector;
		int PROBE_END_LINE_377 = 377;
		final AnnotationIntrospector ai = f__annotation_introspector_1832_line_377;
        int PROBE_START_LINE_382 = 382;
		boolean f__for_serialization_1828_line_382 = _forSerialization;
		boolean pojoproperties_collector_1_expr58_line_382 = !f__for_serialization_1828_line_382;
		boolean pojoproperties_collector_1_expr59_line_382 = true;
		if (pojoproperties_collector_1_expr58_line_382) {
			MapperConfig<?> f__config_1827_line_382 = _config;
			com.fasterxml.jackson.databind.MapperFeature q_allow_final_fields_as_mutators_31_line_382 = MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS;
			boolean pojoproperties_collector_1_expr60_line_382 = f__config_1827_line_382
					.isEnabled(q_allow_final_fields_as_mutators_31_line_382);
			pojoproperties_collector_1_expr59_line_382 = !pojoproperties_collector_1_expr60_line_382;
		}
		boolean pojoproperties_collector_1_expr57_line_382 = pojoproperties_collector_1_expr58_line_382
				&& pojoproperties_collector_1_expr59_line_382;
		int PROBE_END_LINE_382 = 382;
		/* 28-Mar-2013, tatu: For deserialization we may also want to remove
         *   final fields, as often they won't make very good mutators...
         *   (although, maybe surprisingly, JVM _can_ force setting of such fields!)
         */
        final boolean pruneFinalFields = pojoproperties_collector_1_expr57_line_382;
        
        int PROBE_START_LINE_384 = 426;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_384 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperties_collector_1_expr61_line_384 = f__class_def_1830_line_384
				.fields();
		int PROBE_END_LINE_384 = 426;
		for (AnnotatedField f : pojoproperties_collector_1_expr61_line_384) {
            String implName = (ai == null) ? null : ai.findImplicitPropertyName(f);
            if (implName == null) {
                implName = f.getName();
            }
            
            PropertyName pn;

            if (ai == null) {
                pn = null;
            } else if (_forSerialization) {
                /* 18-Aug-2011, tatu: As per existing unit tests, we should only
                 *   use serialization annotation (@JsonSerializer) when serializing
                 *   fields, and similarly for deserialize-only annotations... so
                 *   no fallbacks in this particular case.
                 */
                pn = ai.findNameForSerialization(f);
            } else {
                pn = ai.findNameForDeserialization(f);
            }
            boolean nameExplicit = (pn != null);

            if (nameExplicit && pn.isEmpty()) { // empty String meaning "use default name", here just means "same as field name"
                pn = _propNameFromSimple(implName);
                nameExplicit = false;
            }
            // having explicit name means that field is visible; otherwise need to check the rules
            boolean visible = (pn != null);
            if (!visible) {
                visible = _visibilityChecker.isFieldVisible(f);
            }
            // and finally, may also have explicit ignoral
            boolean ignored = (ai != null) && ai.hasIgnoreMarker(f);
            /* [Issue#190]: this is the place to prune final fields, if they are not
             *  to be used as mutators. Must verify they are not explicitly included.
             *  Also: if 'ignored' is set, need to included until a later point, to
             *  avoid losing ignoral information.
             */
            if (pruneFinalFields && (pn == null) && !ignored && Modifier.isFinal(f.getModifiers())) {
                continue;
            }
            _property(implName).addField(f, pn, nameExplicit, visible, ignored);
        }
    }

    /**
     * Method for collecting basic information on constructor(s) found
     */
    protected void _addCreators()
    {
        int PROBE_START_LINE_435 = 452;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1832_line_435 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr62_line_435 = f__annotation_introspector_1832_line_435 != null;
		int PROBE_END_LINE_435 = 452;
		// can be null if annotation processing is disabled...
        if (pojoproperties_collector_1_expr62_line_435) {
            int PROBE_START_LINE_436 = 443;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_436 = _classDef;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> pojoproperties_collector_1_expr63_line_436 = f__class_def_1830_line_436
					.getConstructors();
			int PROBE_END_LINE_436 = 443;
			for (AnnotatedConstructor ctor : pojoproperties_collector_1_expr63_line_436) {
                if (_creatorProperties == null) {
                    _creatorProperties = new LinkedList<POJOPropertyBuilder>();
                }
                for (int i = 0, len = ctor.getParameterCount(); i < len; ++i) {
                    _addCreatorParam(ctor.getParameter(i));
                }
            }
            int PROBE_START_LINE_444 = 451;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_444 = _classDef;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr64_line_444 = f__class_def_1830_line_444
					.getStaticMethods();
			int PROBE_END_LINE_444 = 451;
			for (AnnotatedMethod factory : pojoproperties_collector_1_expr64_line_444) {
                if (_creatorProperties == null) {
                    _creatorProperties = new LinkedList<POJOPropertyBuilder>();
                }
                for (int i = 0, len = factory.getParameterCount(); i < len; ++i) {
                    _addCreatorParam(factory.getParameter(i));
                }
            }
        }
    }

    /**
     * @since 2.4
     */
    protected void _addCreatorParam(AnnotatedParameter param)
    {
        // JDK 8, paranamer can give implicit name
        String impl = _annotationIntrospector.findImplicitPropertyName(param);
        if (impl == null) {
            impl = "";
        }
        PropertyName pn = _annotationIntrospector.findNameForDeserialization(param);
        boolean expl = (pn != null && !pn.isEmpty());
        if (!expl) {
            if (impl.isEmpty()) {
                /* Important: if neither implicit nor explicit name, can not make use
                 * of this creator paramter -- may or may not be a problem, verified
                 * at a later point.
                 */
                return;
            }
            pn = new PropertyName(impl);
        }

        // shouldn't need to worry about @JsonIgnore, since creators only added
        // if so annotated

        /* 14-Apr-2014, tatu: Not ideal, since we should not start with explicit name, ever;
         *   but with current set up we also can not just use empty name.
         *   This will cause failure for [#323] until we figure out a better way to handle
         *   the problem; possibly by creating a placeholder container for "anonymous"
         *   creator parameters.
         */
        POJOPropertyBuilder prop = expl ?  _property(pn) : _property(impl);
        // should use this (or similar) instead:
//        POJOPropertyBuilder prop = _property(impl);
        prop.addCtor(param, pn, expl, true, false);

        _creatorProperties.add(prop);
    }
    
    /**
     * Method for collecting basic information on all fields found
     */
    protected void _addMethods()
    {
        int PROBE_START_LINE_500 = 500;
		AnnotationIntrospector f__annotation_introspector_1832_line_500 = _annotationIntrospector;
		int PROBE_END_LINE_500 = 500;
		final AnnotationIntrospector ai = f__annotation_introspector_1832_line_500;
        
        int PROBE_START_LINE_502 = 521;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_502 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr65_line_502 = f__class_def_1830_line_502
				.memberMethods();
		int PROBE_END_LINE_502 = 521;
		for (AnnotatedMethod m : pojoproperties_collector_1_expr65_line_502) {
            /* For methods, handling differs between getters and setters; and
             * we will also only consider entries that either follow the bean
             * naming convention or are explicitly marked: just being visible
             * is not enough (unlike with fields)
             */
            int argCount = m.getParameterCount();
            if (argCount == 0) { // getters (including 'any getter')
            	_addGetterMethod(m, ai);
            } else if (argCount == 1) { // setters
            	_addSetterMethod(m, ai);
            } else if (argCount == 2) { // any getter?
                if (ai != null  && ai.hasAnySetterAnnotation(m)) {
                    if (_anySetters == null) {
                        _anySetters = new LinkedList<AnnotatedMethod>();
                    }
                    _anySetters.add(m);
                }
            }
        }
    }

    protected void _addGetterMethod(AnnotatedMethod m, AnnotationIntrospector ai)
    {
        // Very first thing: skip if not returning any value
        if (!m.hasReturnType()) {
            return;
        }
        
        // any getter?
        if (ai != null) {
            if (ai.hasAnyGetterAnnotation(m)) {
                if (_anyGetters == null) {
                    _anyGetters = new LinkedList<AnnotatedMember>();
                }
                _anyGetters.add(m);
                return;
            }
            // @JsonValue?
            if (ai.hasAsValueAnnotation(m)) {
                if (_jsonValueGetters == null) {
                    _jsonValueGetters = new LinkedList<AnnotatedMethod>();
                }
                _jsonValueGetters.add(m);
                return;
            }
        }
        String implName; // from naming convention
        boolean visible;

        PropertyName pn = (ai == null) ? null : ai.findNameForSerialization(m);
        boolean nameExplicit = (pn != null);

        if (!nameExplicit) { // no explicit name; must consider implicit
            implName = (ai == null) ? null : ai.findImplicitPropertyName(m);
            if (implName == null) {
                implName = BeanUtil.okNameForRegularGetter(m, m.getName());
            }
            if (implName == null) { // if not, must skip
                implName = BeanUtil.okNameForIsGetter(m, m.getName());
                if (implName == null) {
                    return;
                }
                visible = _visibilityChecker.isIsGetterVisible(m);
            } else {
                visible = _visibilityChecker.isGetterVisible(m);
            }
        } else { // explicit indication of inclusion, but may be empty
            // we still need implicit name to link with other pieces
            implName = (ai == null) ? null : ai.findImplicitPropertyName(m);
            if (implName == null) {
                implName = BeanUtil.okNameForGetter(m);
            }
            // if not regular getter name, use method name as is
            if (implName == null) {
                implName = m.getName();
            }
            if (pn.isEmpty()) {
                // !!! TODO: use PropertyName for implicit names too
                pn = _propNameFromSimple(implName);
                nameExplicit = false;
            }
            visible = true;
        }
        boolean ignore = (ai == null) ? false : ai.hasIgnoreMarker(m);
        _property(implName).addGetter(m, pn, nameExplicit, visible, ignore);
    }
    
    protected void _addSetterMethod(AnnotatedMethod m, AnnotationIntrospector ai)
    {
        String implName; // from naming convention
        boolean visible;
        PropertyName pn = (ai == null) ? null : ai.findNameForDeserialization(m);
        boolean nameExplicit = (pn != null);
        if (!nameExplicit) { // no explicit name; must follow naming convention
            implName = (ai == null) ? null : ai.findImplicitPropertyName(m);
            if (implName == null) {
                implName = BeanUtil.okNameForMutator(m, _mutatorPrefix);
            }
            if (implName == null) { // if not, must skip
            	return;
            }
            visible = _visibilityChecker.isSetterVisible(m);
        } else { // explicit indication of inclusion, but may be empty
            // we still need implicit name to link with other pieces
            implName = (ai == null) ? null : ai.findImplicitPropertyName(m);
            if (implName == null) {
                implName = BeanUtil.okNameForMutator(m, _mutatorPrefix);
            }
            // if not regular getter name, use method name as is
            if (implName == null) {
                implName = m.getName();
            }
            if (pn.isEmpty()) {
                // !!! TODO: use PropertyName for implicit names too
                pn = _propNameFromSimple(implName);
                nameExplicit = false;
            }
            visible = true;
        }
        boolean ignore = (ai == null) ? false : ai.hasIgnoreMarker(m);
        _property(implName).addSetter(m, pn, nameExplicit, visible, ignore);
    }
    
    protected void _addInjectables()
    {
        int PROBE_START_LINE_628 = 628;
		AnnotationIntrospector f__annotation_introspector_1832_line_628 = _annotationIntrospector;
		int PROBE_END_LINE_628 = 628;
		final AnnotationIntrospector ai = f__annotation_introspector_1832_line_628;
        int PROBE_START_LINE_629 = 631;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_1856_line_629 = ai;
		boolean pojoproperties_collector_1_expr66_line_629 = v_ai_1856_line_629 == null;
		int PROBE_END_LINE_629 = 631;
		if (pojoproperties_collector_1_expr66_line_629) {
            return;
        }
        
        int PROBE_START_LINE_634 = 636;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_634 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperties_collector_1_expr67_line_634 = f__class_def_1830_line_634
				.fields();
		int PROBE_END_LINE_634 = 636;
		// first fields, then methods
        for (AnnotatedField f : pojoproperties_collector_1_expr67_line_634) {
            _doAddInjectable(ai.findInjectableValueId(f), f);
        }
        
        int PROBE_START_LINE_638 = 646;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_1830_line_638 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr68_line_638 = f__class_def_1830_line_638
				.memberMethods();
		int PROBE_END_LINE_638 = 646;
		for (AnnotatedMethod m : pojoproperties_collector_1_expr68_line_638) {
            /* for now, only allow injection of a single arg
             * (to be changed in future)
             */
            if (m.getParameterCount() != 1) {
                continue;
            }
            _doAddInjectable(ai.findInjectableValueId(m), m);
        }
    }

    protected void _doAddInjectable(Object id, AnnotatedMember m)
    {
        if (id == null) {
            return;
        }
        if (_injectables == null) {
            _injectables = new LinkedHashMap<Object, AnnotatedMember>();
        }
        AnnotatedMember prev = _injectables.put(id, m);
        if (prev != null) {
            String type = id.getClass().getName();
            throw new IllegalArgumentException("Duplicate injectable value with id '"
                    +String.valueOf(id)+"' (of type "+type+")");
        }
    }

    private PropertyName _propNameFromSimple(String simpleName) {
        return PropertyName.construct(simpleName, null);
    }
    
    /*
    /**********************************************************
    /* Internal methods; removing ignored properties
    /**********************************************************
     */

    /**
     * Method called to get rid of candidate properties that are marked
     * as ignored, or that are not visible.
     */
    protected void _removeUnwantedProperties()
    {
        int PROBE_START_LINE_681 = 681;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_1817_line_681 = _properties;
		Set<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> pojoproperties_collector_1_expr70_line_681 = f__properties_1817_line_681
				.entrySet();
		Iterator<Map.Entry<String, POJOPropertyBuilder>> pojoproperties_collector_1_expr69_line_681 = pojoproperties_collector_1_expr70_line_681
				.iterator();
		int PROBE_END_LINE_681 = 681;
		Iterator<Map.Entry<String,POJOPropertyBuilder>> it = pojoproperties_collector_1_expr69_line_681;
        int PROBE_START_LINE_682 = 682;
		MapperConfig<?> f__config_1827_line_682 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_infer_property_mutators_32_line_682 = MapperFeature.INFER_PROPERTY_MUTATORS;
		boolean pojoproperties_collector_1_expr72_line_682 = f__config_1827_line_682
				.isEnabled(q_infer_property_mutators_32_line_682);
		boolean pojoproperties_collector_1_expr71_line_682 = !pojoproperties_collector_1_expr72_line_682;
		int PROBE_END_LINE_682 = 682;
		final boolean forceNonVisibleRemoval = pojoproperties_collector_1_expr71_line_682;

        while (true) {
            int PROBE_START_LINE_684 = 684;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_1862_line_684 = it;
			boolean pojoproperties_collector_1_expr73_line_684 = v_it_1862_line_684.hasNext();
			if (!(pojoproperties_collector_1_expr73_line_684)) {
				break;
			}
			int PROBE_END_LINE_684 = 684;
			Map.Entry<String, POJOPropertyBuilder> entry = it.next();
            POJOPropertyBuilder prop = entry.getValue();

            // First: if nothing visible, just remove altogether
            if (!prop.anyVisible()) {
                it.remove();
                continue;
            }
            // Otherwise, check ignorals
            if (prop.anyIgnorals()) {
                // first: if one or more ignorals, and no explicit markers, remove the whole thing
                if (!prop.isExplicitlyIncluded()) {
                    it.remove();
                    _addIgnored(prop.getName());
                    continue;
                }
                // otherwise just remove ones marked to be ignored
                prop.removeIgnored();
                if (!_forSerialization && !prop.couldDeserialize()) {
                    _addIgnored(prop.getName());
                }
            }
            // and finally, handle removal of individual non-visible elements
            prop.removeNonVisible(forceNonVisibleRemoval);
        }
    }
    
    private void _addIgnored(String name)
    {
        if (!_forSerialization) {
            if (_ignoredPropertyNames == null) {
                _ignoredPropertyNames = new HashSet<String>();
            }
            _ignoredPropertyNames.add(name);
        }
    }

    /*
    /**********************************************************
    /* Internal methods; renaming properties
    /**********************************************************
     */

    protected void _renameProperties()
    {
        int PROBE_START_LINE_731 = 731;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_1817_line_731 = _properties;
		Set<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> pojoproperties_collector_1_expr75_line_731 = f__properties_1817_line_731
				.entrySet();
		Iterator<Map.Entry<String, POJOPropertyBuilder>> pojoproperties_collector_1_expr74_line_731 = pojoproperties_collector_1_expr75_line_731
				.iterator();
		int PROBE_END_LINE_731 = 731;
		// With renaming need to do in phases: first, find properties to rename
        Iterator<Map.Entry<String,POJOPropertyBuilder>> it = pojoproperties_collector_1_expr74_line_731;
        LinkedList<POJOPropertyBuilder> renamed = null;
        while (true) {
            int PROBE_START_LINE_733 = 733;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_1865_line_733 = it;
			boolean pojoproperties_collector_1_expr76_line_733 = v_it_1865_line_733.hasNext();
			if (!(pojoproperties_collector_1_expr76_line_733)) {
				break;
			}
			int PROBE_END_LINE_733 = 733;
			Map.Entry<String, POJOPropertyBuilder> entry = it.next();
            POJOPropertyBuilder prop = entry.getValue();

            Collection<PropertyName> l = prop.findExplicitNames();
            // no explicit names? Implicit one is fine as is
            if (l.isEmpty()) {
                continue;
            }
            it.remove(); // need to replace with one or more renamed
            if (renamed == null) {
                renamed = new LinkedList<POJOPropertyBuilder>();
            }
            // simple renaming? Just do it
            if (l.size() == 1) {
                PropertyName n = l.iterator().next();
                renamed.add(prop.withName(n));
                continue;
            }
            // but this may be problematic...
            renamed.addAll(prop.explode(l));

            /*
            String newName = prop.findNewName();
            if (newName != null) {
                if (renamed == null) {
                    renamed = new LinkedList<POJOPropertyBuilder>();
                }
                prop = prop.withSimpleName(newName);
                renamed.add(prop);
                it.remove();
            }
            */
        }
        
        int PROBE_START_LINE_769 = 781;
		LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_renamed_1866_line_769 = renamed;
		boolean pojoproperties_collector_1_expr77_line_769 = v_renamed_1866_line_769 != null;
		int PROBE_END_LINE_769 = 781;
		// and if any were renamed, merge back in...
        if (pojoproperties_collector_1_expr77_line_769) {
            for (POJOPropertyBuilder prop : renamed) {
                String name = prop.getName();
                POJOPropertyBuilder old = _properties.get(name);
                if (old == null) {
                    _properties.put(name, prop);
                } else {
                    old.addAll(prop);
                }
                // replace the creatorProperty too, if there is one
                _updateCreatorProperty(prop, _creatorProperties);
            }
        }
    }

    protected void _renameUsing(PropertyNamingStrategy naming)
    {
        POJOPropertyBuilder[] props = _properties.values().toArray(new POJOPropertyBuilder[_properties.size()]);
        _properties.clear();
        for (POJOPropertyBuilder prop : props) {
            PropertyName fullName = prop.getFullName();
            String rename = null;
            // As per [#428](https://github.com/FasterXML/jackson-databind/issues/428) need
            // to skip renaming if property has explicitly defined name
            if (!prop.isExplicitlyNamed()) {
                if (_forSerialization) {
                    if (prop.hasGetter()) {
                        rename = naming.nameForGetterMethod(_config, prop.getGetter(), fullName.getSimpleName());
                    } else if (prop.hasField()) {
                        rename = naming.nameForField(_config, prop.getField(), fullName.getSimpleName());
                    }
                } else {
                    if (prop.hasSetter()) {
                        rename = naming.nameForSetterMethod(_config, prop.getSetter(), fullName.getSimpleName());
                    } else if (prop.hasConstructorParameter()) {
                        rename = naming.nameForConstructorParameter(_config, prop.getConstructorParameter(), fullName.getSimpleName());
                    } else if (prop.hasField()) {
                        rename = naming.nameForField(_config, prop.getField(), fullName.getSimpleName());
                    } else if (prop.hasGetter()) {
                        /* Plus, when getter-as-setter is used, need to convert that too..
                         * (should we verify that's enabled? For now, assume it's ok always)
                         */
                        rename = naming.nameForGetterMethod(_config, prop.getGetter(), fullName.getSimpleName());
                    }
                }
            }
            final String simpleName;
            if (rename != null && !fullName.hasSimpleName(rename)) {
                prop = prop.withSimpleName(rename);
                simpleName = rename;
            } else {
                simpleName = fullName.getSimpleName();
            }
            /* As per [JACKSON-687], need to consider case where there may already be
             * something in there...
             */
            POJOPropertyBuilder old = _properties.get(simpleName);
            if (old == null) {
                _properties.put(simpleName, prop);
            } else {
                old.addAll(prop);
            }
            // replace the creatorProperty too, if there is one
            _updateCreatorProperty(prop, _creatorProperties);
        }
    }

    protected void _renameWithWrappers()
    {
        /* 11-Sep-2012, tatu: To support 'MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME',
         *   need another round of renaming...
         */
        Iterator<Map.Entry<String,POJOPropertyBuilder>> it = _properties.entrySet().iterator();
        LinkedList<POJOPropertyBuilder> renamed = null;
        while (it.hasNext()) {
            Map.Entry<String, POJOPropertyBuilder> entry = it.next();
            POJOPropertyBuilder prop = entry.getValue();
            AnnotatedMember member = prop.getPrimaryMember();
            if (member == null) {
                continue;
            }
            PropertyName wrapperName = _annotationIntrospector.findWrapperName(member);
            // One trickier part (wrt [Issue#24] of JAXB annotations: wrapper that
            // indicates use of actual property... But hopefully has been taken care
            // of previously
            if (wrapperName == null || !wrapperName.hasSimpleName()) {
                continue;
            }
            if (!wrapperName.equals(prop.getFullName())) {
                if (renamed == null) {
                    renamed = new LinkedList<POJOPropertyBuilder>();
                }
                prop = prop.withName(wrapperName);
                renamed.add(prop);
                it.remove();
            }
        }
        // and if any were renamed, merge back in...
        if (renamed != null) {
            for (POJOPropertyBuilder prop : renamed) {
                String name = prop.getName();
                POJOPropertyBuilder old = _properties.get(name);
                if (old == null) {
                    _properties.put(name, prop);
                } else {
                    old.addAll(prop);
                }
            }
        }
    }
    
    
    /*
    /**********************************************************
    /* Internal methods; helpers
    /**********************************************************
     */

    protected void reportProblem(String msg) {
        throw new IllegalArgumentException("Problem with definition of "+_classDef+": "+msg);
    }

    protected POJOPropertyBuilder _property(PropertyName name) {
        return _property(name.getSimpleName());
    }
    
    // !!! TODO: deprecate, require use of PropertyName
    protected POJOPropertyBuilder _property(String implName)
    {
        POJOPropertyBuilder prop = _properties.get(implName);
        if (prop == null) {
            prop = new POJOPropertyBuilder(new PropertyName(implName),
                    _annotationIntrospector, _forSerialization);
            _properties.put(implName, prop);
        }
        return prop;
    }

    private PropertyNamingStrategy _findNamingStrategy()
    {
        int PROBE_START_LINE_909 = 910;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_1832_line_909 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr81_line_909 = f__annotation_introspector_1832_line_909 == null;
		boolean pojoproperties_collector_1_expr79_line_909 = (pojoproperties_collector_1_expr81_line_909);
		Object pojoproperties_collector_1_expr78_line_909 = pojoproperties_collector_1_expr79_line_909
				? null
				: _annotationIntrospector.findNamingStrategy(_classDef);
		int PROBE_END_LINE_909 = 910;
		Object namingDef = pojoproperties_collector_1_expr78_line_909;
        int PROBE_START_LINE_911 = 913;
		Object v_naming_def_1871_line_911 = namingDef;
		boolean pojoproperties_collector_1_expr82_line_911 = v_naming_def_1871_line_911 == null;
		int PROBE_END_LINE_911 = 913;
		if (pojoproperties_collector_1_expr82_line_911) {
            int PROBE_START_LINE_912 = 912;
			MapperConfig<?> f__config_1827_line_912 = _config;
			com.fasterxml.jackson.databind.PropertyNamingStrategy pojoproperties_collector_1_expr83_line_912 = f__config_1827_line_912
					.getPropertyNamingStrategy();
			int PROBE_END_LINE_912 = 912;
			return pojoproperties_collector_1_expr83_line_912;
        }
        if (namingDef instanceof PropertyNamingStrategy) {
            return (PropertyNamingStrategy) namingDef;
        }
        /* Alas, there's no way to force return type of "either class
         * X or Y" -- need to throw an exception after the fact
         */
        if (!(namingDef instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned PropertyNamingStrategy definition of type "
                    +namingDef.getClass().getName()+"; expected type PropertyNamingStrategy or Class<PropertyNamingStrategy> instead");
        }
        Class<?> namingClass = (Class<?>)namingDef;
        if (!PropertyNamingStrategy.class.isAssignableFrom(namingClass)) {
            throw new IllegalStateException("AnnotationIntrospector returned Class "
                    +namingClass.getName()+"; expected Class<PropertyNamingStrategy>");
        }
        HandlerInstantiator hi = _config.getHandlerInstantiator();
        if (hi != null) {
            PropertyNamingStrategy pns = hi.namingStrategyInstance(_config, _classDef, namingClass);
            if (pns != null) {
                return pns;
            }
        }
        return (PropertyNamingStrategy) ClassUtil.createInstance(namingClass,
                    _config.canOverrideAccessModifiers());
    }

    protected void _updateCreatorProperty(POJOPropertyBuilder prop, List<POJOPropertyBuilder> creatorProperties) {
        if (creatorProperties != null) {
            for (int i = 0, len = creatorProperties.size(); i < len; ++i) {
                if (creatorProperties.get(i).getInternalName().equals(prop.getInternalName())) {
                    creatorProperties.set(i, prop);
                    break;
                }
            }
        }
    }
}
