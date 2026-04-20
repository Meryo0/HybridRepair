package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Modifier;
import java.util.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import java.util.Iterator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
import java.util.Collection;
import java.util.Set;
import java.util.LinkedHashMap;
import java.util.HashSet;
import com.fasterxml.jackson.databind.MapperFeature;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
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
     * @since 2.5
     */
    protected final boolean _stdBeanNaming;

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
        int PROBE_START_LINE_106 = 106;
		MapperConfig<?> p_config_3032_line_106 = config;
		int PROBE_END_LINE_106 = 106;
		_config = p_config_3032_line_106;
        int PROBE_START_LINE_107 = 107;
		MapperConfig<?> p_config_3032_line_107 = config;
		com.fasterxml.jackson.databind.MapperFeature q_use_std_bean_naming_107_line_107 = MapperFeature.USE_STD_BEAN_NAMING;
		boolean pojoproperties_collector_1_expr4_line_107 = p_config_3032_line_107
				.isEnabled(q_use_std_bean_naming_107_line_107);
		int PROBE_END_LINE_107 = 107;
		_stdBeanNaming = pojoproperties_collector_1_expr4_line_107;
        int PROBE_START_LINE_108 = 108;
		boolean p_for_serialization_3033_line_108 = forSerialization;
		int PROBE_END_LINE_108 = 108;
		_forSerialization = p_for_serialization_3033_line_108;
        int PROBE_START_LINE_109 = 109;
		com.fasterxml.jackson.databind.JavaType p_type_3034_line_109 = type;
		int PROBE_END_LINE_109 = 109;
		_type = p_type_3034_line_109;
        int PROBE_START_LINE_110 = 110;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_3035_line_110 = classDef;
		int PROBE_END_LINE_110 = 110;
		_classDef = p_class_def_3035_line_110;
        int PROBE_START_LINE_111 = 111;
		String p_mutator_prefix_3036_line_111 = mutatorPrefix;
		boolean pojoproperties_collector_1_expr11_line_111 = p_mutator_prefix_3036_line_111 == null;
		boolean pojoproperties_collector_1_expr10_line_111 = (pojoproperties_collector_1_expr11_line_111);
		String p_mutator_prefix_3036_line_111_v1 = null;
		if (!pojoproperties_collector_1_expr10_line_111) {
			p_mutator_prefix_3036_line_111_v1 = mutatorPrefix;
		}
		String pojoproperties_collector_1_expr9_line_111 = pojoproperties_collector_1_expr10_line_111
				? "set"
				: p_mutator_prefix_3036_line_111_v1;
		int PROBE_END_LINE_111 = 111;
		_mutatorPrefix = pojoproperties_collector_1_expr9_line_111;
        int PROBE_START_LINE_112 = 113;
		MapperConfig<?> p_config_3032_line_112 = config;
		boolean pojoproperties_collector_1_expr14_line_112 = p_config_3032_line_112.isAnnotationProcessingEnabled();
		com.fasterxml.jackson.databind.AnnotationIntrospector pojoproperties_collector_1_expr13_line_112 = pojoproperties_collector_1_expr14_line_112
				? _config.getAnnotationIntrospector()
				: null;
		int PROBE_END_LINE_112 = 113;
		_annotationIntrospector = pojoproperties_collector_1_expr13_line_112;
        int PROBE_START_LINE_114 = 119;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_114 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr16_line_114 = f__annotation_introspector_3043_line_114 == null;
		int PROBE_END_LINE_114 = 119;
		if (pojoproperties_collector_1_expr16_line_114) {
            _visibilityChecker = _config.getDefaultVisibilityChecker();
        } else {
            int PROBE_START_LINE_117 = 118;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_117 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_3035_line_117 = classDef;
			VisibilityChecker<?> pojoproperties_collector_1_expr18_line_117 = f__annotation_introspector_3043_line_117
					.findAutoDetectVisibility(p_class_def_3035_line_117, _config.getDefaultVisibilityChecker());
			int PROBE_END_LINE_117 = 118;
			_visibilityChecker = pojoproperties_collector_1_expr18_line_117;
        }
    }
    
    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    public MapperConfig<?> getConfig() {
        int PROBE_START_LINE_129 = 129;
		MapperConfig<?> f__config_3037_line_129 = _config;
		int PROBE_END_LINE_129 = 129;
		return f__config_3037_line_129;
    }

    public JavaType getType() {
        int PROBE_START_LINE_133 = 133;
		com.fasterxml.jackson.databind.JavaType f__type_3040_line_133 = _type;
		int PROBE_END_LINE_133 = 133;
		return f__type_3040_line_133;
    }
    
    public AnnotatedClass getClassDef() {
        int PROBE_START_LINE_137 = 137;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_137 = _classDef;
		int PROBE_END_LINE_137 = 137;
		return f__class_def_3041_line_137;
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return _annotationIntrospector;
    }
    
    public List<BeanPropertyDefinition> getProperties() {
        int PROBE_START_LINE_146 = 146;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_146 = _properties;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr21_line_146 = f__properties_3027_line_146
				.values();
		int PROBE_END_LINE_146 = 146;
		// make sure we return a copy, so caller can remove entries if need be:
        return new ArrayList<BeanPropertyDefinition>(pojoproperties_collector_1_expr21_line_146);
    }

    public Map<Object, AnnotatedMember> getInjectables() {
        int PROBE_START_LINE_150 = 150;
		LinkedHashMap<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> f__injectables_3045_line_150 = _injectables;
		int PROBE_END_LINE_150 = 150;
		return f__injectables_3045_line_150;
    }
    
    public AnnotatedMethod getJsonValueMethod()
    {
        int PROBE_START_LINE_156 = 163;
		LinkedList<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__json_value_getters_3031_line_156 = _jsonValueGetters;
		boolean pojoproperties_collector_1_expr22_line_156 = f__json_value_getters_3031_line_156 != null;
		int PROBE_END_LINE_156 = 163;
		// If @JsonValue defined, must have a single one
        if (pojoproperties_collector_1_expr22_line_156) {
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
        int PROBE_START_LINE_181 = 187;
		LinkedList<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__any_setters_3030_line_181 = _anySetters;
		boolean pojoproperties_collector_1_expr23_line_181 = f__any_setters_3030_line_181 != null;
		int PROBE_END_LINE_181 = 187;
		if (pojoproperties_collector_1_expr23_line_181) {
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
        int PROBE_START_LINE_196 = 196;
		HashSet<String> f__ignored_property_names_3046_line_196 = _ignoredPropertyNames;
		int PROBE_END_LINE_196 = 196;
		return f__ignored_property_names_3046_line_196;
    }

    /**
     * Accessor to find out whether type specified requires inclusion
     * of Object Identifier.
     */
    public ObjectIdInfo getObjectIdInfo()
    {
        int PROBE_START_LINE_205 = 207;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_205 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr24_line_205 = f__annotation_introspector_3043_line_205 == null;
		int PROBE_END_LINE_205 = 207;
		if (pojoproperties_collector_1_expr24_line_205) {
            return null;
        }
        int PROBE_START_LINE_208 = 208;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_208 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_208 = _classDef;
		ObjectIdInfo pojoproperties_collector_1_expr25_line_208 = f__annotation_introspector_3043_line_208
				.findObjectIdInfo(f__class_def_3041_line_208);
		int PROBE_END_LINE_208 = 208;
		ObjectIdInfo info = pojoproperties_collector_1_expr25_line_208;
        int PROBE_START_LINE_209 = 211;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3047_line_209 = info;
		boolean pojoproperties_collector_1_expr26_line_209 = v_info_3047_line_209 != null;
		int PROBE_END_LINE_209 = 211;
		if (pojoproperties_collector_1_expr26_line_209) { // 2.1: may also have different defaults for refs:
            int PROBE_START_LINE_210 = 210;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_210 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_210 = _classDef;
			com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3047_line_210 = info;
			com.fasterxml.jackson.databind.introspect.ObjectIdInfo pojoproperties_collector_1_expr28_line_210 = f__annotation_introspector_3043_line_210
					.findObjectReferenceInfo(f__class_def_3041_line_210, v_info_3047_line_210);
			int PROBE_END_LINE_210 = 210;
			info = pojoproperties_collector_1_expr28_line_210;
        }
        int PROBE_START_LINE_212 = 212;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3047_line_212 = info;
		int PROBE_END_LINE_212 = 212;
		return v_info_3047_line_212;
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
        int PROBE_START_LINE_240 = 240;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_240 = _properties;
		int PROBE_END_LINE_240 = 240;
		f__properties_3027_line_240.clear();
        
        // First: gather basic data
        _addFields();
        _addMethods();
        _addCreators();
        _addInjectables();

        // Remove ignored properties, individual entries
        _removeUnwantedProperties();

        // Rename remaining properties
        _renameProperties();
        int PROBE_START_LINE_254 = 254;
		PropertyNamingStrategy pojoproperties_collector_1_expr36_line_254 = _findNamingStrategy();
		int PROBE_END_LINE_254 = 254;
		// And use custom naming strategy, if applicable...
        PropertyNamingStrategy naming = pojoproperties_collector_1_expr36_line_254;
        int PROBE_START_LINE_255 = 257;
		com.fasterxml.jackson.databind.PropertyNamingStrategy v_naming_3048_line_255 = naming;
		boolean pojoproperties_collector_1_expr37_line_255 = v_naming_3048_line_255 != null;
		int PROBE_END_LINE_255 = 257;
		if (pojoproperties_collector_1_expr37_line_255) {
            _renameUsing(naming);
        }

        int PROBE_START_LINE_263 = 265;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_263 = _properties;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr38_line_263 = f__properties_3027_line_263
				.values();
		int PROBE_END_LINE_263 = 265;
		/* Sort by visibility (explicit over implicit); drop all but first
         * of member type (getter, setter etc) if there is visibility
         * difference
         */
        for (POJOPropertyBuilder property : pojoproperties_collector_1_expr38_line_263) {
            int PROBE_START_LINE_264 = 264;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_property_3049_line_264 = property;
			int PROBE_END_LINE_264 = 264;
			v_property_3049_line_264.trimByVisibility();
        }

        int PROBE_START_LINE_268 = 270;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_268 = _properties;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr40_line_268 = f__properties_3027_line_268
				.values();
		int PROBE_END_LINE_268 = 270;
		// and then "merge" annotations
        for (POJOPropertyBuilder property : pojoproperties_collector_1_expr40_line_268) {
            int PROBE_START_LINE_269 = 269;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_property_3050_line_269 = property;
			boolean f__for_serialization_3039_line_269 = _forSerialization;
			int PROBE_END_LINE_269 = 269;
			v_property_3050_line_269.mergeAnnotations(f__for_serialization_3039_line_269);
        }

        int PROBE_START_LINE_275 = 277;
		MapperConfig<?> f__config_3037_line_275 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_use_wrapper_name_as_property_name_108_line_275 = MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME;
		boolean pojoproperties_collector_1_expr42_line_275 = f__config_3037_line_275
				.isEnabled(q_use_wrapper_name_as_property_name_108_line_275);
		int PROBE_END_LINE_275 = 277;
		/* and, if required, apply wrapper name: note, MUST be done after
         * annotations are merged.
         */
        if (pojoproperties_collector_1_expr42_line_275) {
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
        int PROBE_START_LINE_296 = 296;
		AnnotationIntrospector f__annotation_introspector_3043_line_296 = _annotationIntrospector;
		int PROBE_END_LINE_296 = 296;
		// Then how about explicit ordering?
        AnnotationIntrospector intr = f__annotation_introspector_3043_line_296;
        boolean sort = false;
        int PROBE_START_LINE_298 = 298;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3051_line_298 = intr;
		boolean pojoproperties_collector_1_expr48_line_298 = v_intr_3051_line_298 == null;
		boolean pojoproperties_collector_1_expr46_line_298 = (pojoproperties_collector_1_expr48_line_298);
		Boolean pojoproperties_collector_1_expr47_line_298 = null;
		if (!pojoproperties_collector_1_expr46_line_298) {
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3051_line_298_v1 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_298 = _classDef;
			pojoproperties_collector_1_expr47_line_298 = v_intr_3051_line_298_v1
					.findSerializationSortAlphabetically((Annotated) f__class_def_3041_line_298);
		}
		Boolean pojoproperties_collector_1_expr45_line_298 = pojoproperties_collector_1_expr46_line_298
				? null
				: pojoproperties_collector_1_expr47_line_298;
		int PROBE_END_LINE_298 = 298;
		Boolean alpha = pojoproperties_collector_1_expr45_line_298;
        
        int PROBE_START_LINE_300 = 304;
		Boolean v_alpha_3052_line_300 = alpha;
		boolean pojoproperties_collector_1_expr50_line_300 = v_alpha_3052_line_300 == null;
		int PROBE_END_LINE_300 = 304;
		if (pojoproperties_collector_1_expr50_line_300) {
            int PROBE_START_LINE_301 = 301;
			MapperConfig<?> f__config_3037_line_301 = _config;
			boolean pojoproperties_collector_1_expr52_line_301 = f__config_3037_line_301
					.shouldSortPropertiesAlphabetically();
			int PROBE_END_LINE_301 = 301;
			sort = pojoproperties_collector_1_expr52_line_301;
        } else {
            sort = alpha.booleanValue();
        }
        int PROBE_START_LINE_305 = 305;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3051_line_305 = intr;
		boolean pojoproperties_collector_1_expr56_line_305 = v_intr_3051_line_305 == null;
		boolean pojoproperties_collector_1_expr54_line_305 = (pojoproperties_collector_1_expr56_line_305);
		String[] pojoproperties_collector_1_expr55_line_305 = null;
		if (!pojoproperties_collector_1_expr54_line_305) {
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3051_line_305_v1 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_305 = _classDef;
			pojoproperties_collector_1_expr55_line_305 = v_intr_3051_line_305_v1
					.findSerializationPropertyOrder(f__class_def_3041_line_305);
		}
		String[] pojoproperties_collector_1_expr53_line_305 = pojoproperties_collector_1_expr54_line_305
				? null
				: pojoproperties_collector_1_expr55_line_305;
		int PROBE_END_LINE_305 = 305;
		String[] propertyOrder = pojoproperties_collector_1_expr53_line_305;
        
        int PROBE_START_LINE_308 = 310;
		boolean v_sort_3053_line_308 = sort;
		boolean pojoproperties_collector_1_expr58_line_308 = !v_sort_3053_line_308;
		boolean pojoproperties_collector_1_expr59_line_308 = true;
		boolean pojoproperties_collector_1_expr61_line_308 = true;
		if (pojoproperties_collector_1_expr58_line_308) {
			LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3028_line_308 = _creatorProperties;
			boolean pojoproperties_collector_1_expr60_line_308 = f__creator_properties_3028_line_308 == null;
			pojoproperties_collector_1_expr59_line_308 = (pojoproperties_collector_1_expr60_line_308);
			if (pojoproperties_collector_1_expr59_line_308) {
				String[] v_property_order_3054_line_308 = propertyOrder;
				boolean pojoproperties_collector_1_expr62_line_308 = v_property_order_3054_line_308 == null;
				pojoproperties_collector_1_expr61_line_308 = (pojoproperties_collector_1_expr62_line_308);
			}
		}
		boolean pojoproperties_collector_1_expr57_line_308 = pojoproperties_collector_1_expr58_line_308
				&& pojoproperties_collector_1_expr59_line_308 && pojoproperties_collector_1_expr61_line_308;
		int PROBE_END_LINE_308 = 310;
		// no sorting? no need to shuffle, then
        if (pojoproperties_collector_1_expr57_line_308) {
            return;
        }
        int PROBE_START_LINE_311 = 311;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_311 = _properties;
		int pojoproperties_collector_1_expr63_line_311 = f__properties_3027_line_311.size();
		int PROBE_END_LINE_311 = 311;
		int size = pojoproperties_collector_1_expr63_line_311;
        Map<String, POJOPropertyBuilder> all = null;
        int PROBE_START_LINE_314 = 318;
		boolean v_sort_3053_line_314 = sort;
		int PROBE_END_LINE_314 = 318;
		// Need to (re)sort alphabetically?
        if (v_sort_3053_line_314) {
            all = new TreeMap<String,POJOPropertyBuilder>();
        } else {
            int PROBE_START_LINE_317 = 317;
			int v_size_3055_line_317 = size;
			int v_size_3055_line_317_v1 = size;
			int pojoproperties_collector_1_expr66_line_317 = v_size_3055_line_317 + v_size_3055_line_317_v1;
			int PROBE_END_LINE_317 = 317;
			all = new LinkedHashMap<String,POJOPropertyBuilder>(pojoproperties_collector_1_expr66_line_317);
        }

        int PROBE_START_LINE_320 = 322;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_320 = _properties;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr67_line_320 = f__properties_3027_line_320
				.values();
		int PROBE_END_LINE_320 = 322;
		for (POJOPropertyBuilder prop : pojoproperties_collector_1_expr67_line_320) {
            int PROBE_START_LINE_321 = 321;
			Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_all_3056_line_321 = all;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3057_line_321 = prop;
			String pojoproperties_collector_1_expr69_line_321 = v_prop_3057_line_321.getName();
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3057_line_321_v1 = prop;
			int PROBE_END_LINE_321 = 321;
			v_all_3056_line_321.put(pojoproperties_collector_1_expr69_line_321, v_prop_3057_line_321_v1);
        }
        int PROBE_START_LINE_323 = 323;
		int v_size_3055_line_323 = size;
		int v_size_3055_line_323_v1 = size;
		int pojoproperties_collector_1_expr71_line_323 = v_size_3055_line_323 + v_size_3055_line_323_v1;
		int PROBE_END_LINE_323 = 323;
		Map<String,POJOPropertyBuilder> ordered = new LinkedHashMap<String,POJOPropertyBuilder>(pojoproperties_collector_1_expr71_line_323);
        int PROBE_START_LINE_325 = 342;
		String[] v_property_order_3054_line_325 = propertyOrder;
		boolean pojoproperties_collector_1_expr72_line_325 = v_property_order_3054_line_325 != null;
		int PROBE_END_LINE_325 = 342;
		// Ok: primarily by explicit order
        if (pojoproperties_collector_1_expr72_line_325) {
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
        int PROBE_START_LINE_344 = 364;
		LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3028_line_344 = _creatorProperties;
		boolean pojoproperties_collector_1_expr73_line_344 = f__creator_properties_3028_line_344 != null;
		int PROBE_END_LINE_344 = 364;
		// And secondly by sorting Creator properties before other unordered properties
        if (pojoproperties_collector_1_expr73_line_344) {
            /* As per [Issue#311], this is bit delicate; but if alphabetic ordering
             * is mandated, at least ensure creator properties are in alphabetic
             * order. Related question of creator vs non-creator is punted for now,
             * so creator properties still fully predate non-creator ones.
             */
            Collection<POJOPropertyBuilder> cr = null;
            int PROBE_START_LINE_351 = 360;
			boolean v_sort_3053_line_351 = sort;
			int PROBE_END_LINE_351 = 360;
			if (v_sort_3053_line_351) {
                TreeMap<String, POJOPropertyBuilder> sorted =
                        new TreeMap<String,POJOPropertyBuilder>();
                for (POJOPropertyBuilder prop : _creatorProperties) {
                    sorted.put(prop.getName(), prop);
                }
                cr = sorted.values();
            } else {
                int PROBE_START_LINE_359 = 359;
				LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3028_line_359 = _creatorProperties;
				int PROBE_END_LINE_359 = 359;
				cr = f__creator_properties_3028_line_359;
            }
            int PROBE_START_LINE_361 = 363;
			Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_cr_3059_line_361 = cr;
			int PROBE_END_LINE_361 = 363;
			for (POJOPropertyBuilder prop : v_cr_3059_line_361) {
                ordered.put(prop.getName(), prop);
            }
        }
        int PROBE_START_LINE_366 = 366;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_ordered_3058_line_366 = ordered;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_all_3056_line_366 = all;
		int PROBE_END_LINE_366 = 366;
		// And finally whatever is left (trying to put again will not change ordering)
        v_ordered_3058_line_366.putAll(v_all_3056_line_366);
        
        int PROBE_START_LINE_368 = 368;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_368 = _properties;
		int PROBE_END_LINE_368 = 368;
		f__properties_3027_line_368.clear();
        int PROBE_START_LINE_369 = 369;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_369 = _properties;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_ordered_3058_line_369 = ordered;
		int PROBE_END_LINE_369 = 369;
		f__properties_3027_line_369.putAll(v_ordered_3058_line_369);
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
        int PROBE_START_LINE_383 = 383;
		AnnotationIntrospector f__annotation_introspector_3043_line_383 = _annotationIntrospector;
		int PROBE_END_LINE_383 = 383;
		final AnnotationIntrospector ai = f__annotation_introspector_3043_line_383;
        int PROBE_START_LINE_388 = 388;
		boolean f__for_serialization_3039_line_388 = _forSerialization;
		boolean pojoproperties_collector_1_expr79_line_388 = !f__for_serialization_3039_line_388;
		boolean pojoproperties_collector_1_expr80_line_388 = true;
		if (pojoproperties_collector_1_expr79_line_388) {
			MapperConfig<?> f__config_3037_line_388 = _config;
			com.fasterxml.jackson.databind.MapperFeature q_allow_final_fields_as_mutators_109_line_388 = MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS;
			boolean pojoproperties_collector_1_expr81_line_388 = f__config_3037_line_388
					.isEnabled(q_allow_final_fields_as_mutators_109_line_388);
			pojoproperties_collector_1_expr80_line_388 = !pojoproperties_collector_1_expr81_line_388;
		}
		boolean pojoproperties_collector_1_expr78_line_388 = pojoproperties_collector_1_expr79_line_388
				&& pojoproperties_collector_1_expr80_line_388;
		int PROBE_END_LINE_388 = 388;
		/* 28-Mar-2013, tatu: For deserialization we may also want to remove
         *   final fields, as often they won't make very good mutators...
         *   (although, maybe surprisingly, JVM _can_ force setting of such fields!)
         */
        final boolean pruneFinalFields = pojoproperties_collector_1_expr78_line_388;
        
        int PROBE_START_LINE_390 = 432;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_390 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperties_collector_1_expr82_line_390 = f__class_def_3041_line_390
				.fields();
		int PROBE_END_LINE_390 = 432;
		for (AnnotatedField f : pojoproperties_collector_1_expr82_line_390) {
            int PROBE_START_LINE_391 = 391;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3061_line_391 = ai;
			boolean pojoproperties_collector_1_expr86_line_391 = v_ai_3061_line_391 == null;
			boolean pojoproperties_collector_1_expr84_line_391 = (pojoproperties_collector_1_expr86_line_391);
			String pojoproperties_collector_1_expr85_line_391 = null;
			if (!pojoproperties_collector_1_expr84_line_391) {
				com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3061_line_391_v1 = ai;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3063_line_391 = f;
				pojoproperties_collector_1_expr85_line_391 = v_ai_3061_line_391_v1
						.findImplicitPropertyName(v_f_3063_line_391);
			}
			String pojoproperties_collector_1_expr83_line_391 = pojoproperties_collector_1_expr84_line_391
					? null
					: pojoproperties_collector_1_expr85_line_391;
			int PROBE_END_LINE_391 = 391;
			String implName = pojoproperties_collector_1_expr83_line_391;
            int PROBE_START_LINE_392 = 394;
			String v_impl_name_3064_line_392 = implName;
			boolean pojoproperties_collector_1_expr87_line_392 = v_impl_name_3064_line_392 == null;
			int PROBE_END_LINE_392 = 394;
			if (pojoproperties_collector_1_expr87_line_392) {
                int PROBE_START_LINE_393 = 393;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3063_line_393 = f;
				String pojoproperties_collector_1_expr89_line_393 = v_f_3063_line_393.getName();
				int PROBE_END_LINE_393 = 393;
				implName = pojoproperties_collector_1_expr89_line_393;
            }
            
            PropertyName pn = null;

            int PROBE_START_LINE_398 = 409;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3061_line_398 = ai;
			boolean pojoproperties_collector_1_expr90_line_398 = v_ai_3061_line_398 == null;
			int PROBE_END_LINE_398 = 409;
			if (pojoproperties_collector_1_expr90_line_398) {
                pn = null;
            } else {
				int PROBE_START_LINE_400 = 409;
				boolean f__for_serialization_3039_line_400 = _forSerialization;
				int PROBE_END_LINE_400 = 409;
				if (f__for_serialization_3039_line_400) {
					pn = ai.findNameForSerialization(f);
				} else {
					int PROBE_START_LINE_408 = 408;
					com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3061_line_408 = ai;
					com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3063_line_408 = f;
					com.fasterxml.jackson.databind.PropertyName pojoproperties_collector_1_expr92_line_408 = v_ai_3061_line_408
							.findNameForDeserialization(v_f_3063_line_408);
					int PROBE_END_LINE_408 = 408;
					pn = pojoproperties_collector_1_expr92_line_408;
				}
			}
            int PROBE_START_LINE_410 = 410;
			com.fasterxml.jackson.databind.PropertyName v_pn_3065_line_410 = pn;
			boolean pojoproperties_collector_1_expr94_line_410 = v_pn_3065_line_410 != null;
			boolean pojoproperties_collector_1_expr93_line_410 = (pojoproperties_collector_1_expr94_line_410);
			int PROBE_END_LINE_410 = 410;
			boolean nameExplicit = pojoproperties_collector_1_expr93_line_410;

            int PROBE_START_LINE_412 = 415;
			boolean v_name_explicit_3066_line_412 = nameExplicit;
			boolean pojoproperties_collector_1_expr96_line_412 = true;
			if (v_name_explicit_3066_line_412) {
				com.fasterxml.jackson.databind.PropertyName v_pn_3065_line_412 = pn;
				pojoproperties_collector_1_expr96_line_412 = v_pn_3065_line_412.isEmpty();
			}
			boolean pojoproperties_collector_1_expr95_line_412 = v_name_explicit_3066_line_412
					&& pojoproperties_collector_1_expr96_line_412;
			int PROBE_END_LINE_412 = 415;
			if (pojoproperties_collector_1_expr95_line_412) { // empty String meaning "use default name", here just means "same as field name"
                pn = _propNameFromSimple(implName);
                nameExplicit = false;
            }
            int PROBE_START_LINE_417 = 417;
			com.fasterxml.jackson.databind.PropertyName v_pn_3065_line_417 = pn;
			boolean pojoproperties_collector_1_expr98_line_417 = v_pn_3065_line_417 != null;
			boolean pojoproperties_collector_1_expr97_line_417 = (pojoproperties_collector_1_expr98_line_417);
			int PROBE_END_LINE_417 = 417;
			// having explicit name means that field is visible; otherwise need to check the rules
            boolean visible = pojoproperties_collector_1_expr97_line_417;
            int PROBE_START_LINE_418 = 420;
			boolean v_visible_3067_line_418 = visible;
			boolean pojoproperties_collector_1_expr99_line_418 = !v_visible_3067_line_418;
			int PROBE_END_LINE_418 = 420;
			if (pojoproperties_collector_1_expr99_line_418) {
                int PROBE_START_LINE_419 = 419;
				VisibilityChecker<?> f__visibility_checker_3044_line_419 = _visibilityChecker;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3063_line_419 = f;
				boolean pojoproperties_collector_1_expr101_line_419 = f__visibility_checker_3044_line_419
						.isFieldVisible(v_f_3063_line_419);
				int PROBE_END_LINE_419 = 419;
				visible = pojoproperties_collector_1_expr101_line_419;
            }
            int PROBE_START_LINE_422 = 422;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3061_line_422 = ai;
			boolean pojoproperties_collector_1_expr104_line_422 = v_ai_3061_line_422 != null;
			boolean pojoproperties_collector_1_expr103_line_422 = (pojoproperties_collector_1_expr104_line_422);
			boolean pojoproperties_collector_1_expr105_line_422 = true;
			if (pojoproperties_collector_1_expr103_line_422) {
				com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3061_line_422_v1 = ai;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3063_line_422 = f;
				pojoproperties_collector_1_expr105_line_422 = v_ai_3061_line_422_v1.hasIgnoreMarker(v_f_3063_line_422);
			}
			boolean pojoproperties_collector_1_expr102_line_422 = pojoproperties_collector_1_expr103_line_422
					&& pojoproperties_collector_1_expr105_line_422;
			int PROBE_END_LINE_422 = 422;
			// and finally, may also have explicit ignoral
            boolean ignored = pojoproperties_collector_1_expr102_line_422;
            int PROBE_START_LINE_428 = 430;
			boolean v_prune_final_fields_3062_line_428 = pruneFinalFields;
			boolean pojoproperties_collector_1_expr107_line_428 = true;
			boolean pojoproperties_collector_1_expr109_line_428 = true;
			boolean pojoproperties_collector_1_expr110_line_428 = true;
			if (v_prune_final_fields_3062_line_428) {
				com.fasterxml.jackson.databind.PropertyName v_pn_3065_line_428 = pn;
				boolean pojoproperties_collector_1_expr108_line_428 = v_pn_3065_line_428 == null;
				pojoproperties_collector_1_expr107_line_428 = (pojoproperties_collector_1_expr108_line_428);
				if (pojoproperties_collector_1_expr107_line_428) {
					boolean v_ignored_3068_line_428 = ignored;
					pojoproperties_collector_1_expr109_line_428 = !v_ignored_3068_line_428;
					if (pojoproperties_collector_1_expr109_line_428) {
						com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3063_line_428 = f;
						int pojoproperties_collector_1_expr111_line_428 = v_f_3063_line_428.getModifiers();
						pojoproperties_collector_1_expr110_line_428 = Modifier
								.isFinal(pojoproperties_collector_1_expr111_line_428);
					}
				}
			}
			boolean pojoproperties_collector_1_expr106_line_428 = v_prune_final_fields_3062_line_428
					&& pojoproperties_collector_1_expr107_line_428 && pojoproperties_collector_1_expr109_line_428
					&& pojoproperties_collector_1_expr110_line_428;
			int PROBE_END_LINE_428 = 430;
			/* [Issue#190]: this is the place to prune final fields, if they are not
             *  to be used as mutators. Must verify they are not explicitly included.
             *  Also: if 'ignored' is set, need to included until a later point, to
             *  avoid losing ignoral information.
             */
            if (pojoproperties_collector_1_expr106_line_428) {
                continue;
            }
            int PROBE_START_LINE_431 = 431;
			String v_impl_name_3064_line_431 = implName;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder pojoproperties_collector_1_expr113_line_431 = _property(
					v_impl_name_3064_line_431);
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3063_line_431 = f;
			com.fasterxml.jackson.databind.PropertyName v_pn_3065_line_431 = pn;
			boolean v_name_explicit_3066_line_431 = nameExplicit;
			boolean v_visible_3067_line_431 = visible;
			boolean v_ignored_3068_line_431 = ignored;
			int PROBE_END_LINE_431 = 431;
			pojoproperties_collector_1_expr113_line_431.addField(v_f_3063_line_431, v_pn_3065_line_431, v_name_explicit_3066_line_431, v_visible_3067_line_431, v_ignored_3068_line_431);
        }
    }

    /**
     * Method for collecting basic information on constructor(s) found
     */
    protected void _addCreators()
    {
        int PROBE_START_LINE_441 = 458;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_441 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr114_line_441 = f__annotation_introspector_3043_line_441 != null;
		int PROBE_END_LINE_441 = 458;
		// can be null if annotation processing is disabled...
        if (pojoproperties_collector_1_expr114_line_441) {
            int PROBE_START_LINE_442 = 449;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_442 = _classDef;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> pojoproperties_collector_1_expr115_line_442 = f__class_def_3041_line_442
					.getConstructors();
			int PROBE_END_LINE_442 = 449;
			for (AnnotatedConstructor ctor : pojoproperties_collector_1_expr115_line_442) {
                int PROBE_START_LINE_443 = 445;
				LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3028_line_443 = _creatorProperties;
				boolean pojoproperties_collector_1_expr116_line_443 = f__creator_properties_3028_line_443 == null;
				int PROBE_END_LINE_443 = 445;
				if (pojoproperties_collector_1_expr116_line_443) {
                    _creatorProperties = new LinkedList<POJOPropertyBuilder>();
                }
                int PROBE_START_LINE_445 = 445;
				boolean FOR_STMT_TOGGLE_LINE_446 = false;
				int PROBE_END_LINE_445 = 445;
				for (int i = 0, len = 0; true;) {
                    int PROBE_START_LINE_447 = 447;
					if (!FOR_STMT_TOGGLE_LINE_446) {
						FOR_STMT_TOGGLE_LINE_446 = true;
						i = 0;
						com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_3069_line_446 = ctor;
						int pojoproperties_collector_1_expr120_line_446 = v_ctor_3069_line_446.getParameterCount();
						len = pojoproperties_collector_1_expr120_line_446;
					} else {
						if (FOR_STMT_TOGGLE_LINE_446) {
							++i;
						} else {
							FOR_STMT_TOGGLE_LINE_446 = true;
						}
					}
					int v_i_3070_line_446 = i;
					int v_len_3071_line_446 = len;
					boolean pojoproperties_collector_1_expr121_line_446 = v_i_3070_line_446 < v_len_3071_line_446;
					if (!(pojoproperties_collector_1_expr121_line_446)) {
						break;
					}
					com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_3069_line_447 = ctor;
					int v_i_3070_line_447 = i;
					com.fasterxml.jackson.databind.introspect.AnnotatedParameter pojoproperties_collector_1_expr124_line_447 = v_ctor_3069_line_447
							.getParameter(v_i_3070_line_447);
					int PROBE_END_LINE_447 = 447;
					_addCreatorParam(pojoproperties_collector_1_expr124_line_447);
                }
            }
            int PROBE_START_LINE_450 = 457;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_450 = _classDef;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr125_line_450 = f__class_def_3041_line_450
					.getStaticMethods();
			int PROBE_END_LINE_450 = 457;
			for (AnnotatedMethod factory : pojoproperties_collector_1_expr125_line_450) {
                int PROBE_START_LINE_451 = 453;
				LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3028_line_451 = _creatorProperties;
				boolean pojoproperties_collector_1_expr126_line_451 = f__creator_properties_3028_line_451 == null;
				int PROBE_END_LINE_451 = 453;
				if (pojoproperties_collector_1_expr126_line_451) {
                    _creatorProperties = new LinkedList<POJOPropertyBuilder>();
                }
                int PROBE_START_LINE_453 = 453;
				boolean FOR_STMT_TOGGLE_LINE_454 = false;
				int PROBE_END_LINE_453 = 453;
				for (int i = 0, len = 0; true;) {
                    int PROBE_START_LINE_455 = 455;
					if (!FOR_STMT_TOGGLE_LINE_454) {
						FOR_STMT_TOGGLE_LINE_454 = true;
						i = 0;
						com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_factory_3072_line_454 = factory;
						int pojoproperties_collector_1_expr128_line_454 = v_factory_3072_line_454.getParameterCount();
						len = pojoproperties_collector_1_expr128_line_454;
					} else {
						if (FOR_STMT_TOGGLE_LINE_454) {
							++i;
						} else {
							FOR_STMT_TOGGLE_LINE_454 = true;
						}
					}
					int v_i_3073_line_454 = i;
					int v_len_3074_line_454 = len;
					boolean pojoproperties_collector_1_expr129_line_454 = v_i_3073_line_454 < v_len_3074_line_454;
					if (!(pojoproperties_collector_1_expr129_line_454)) {
						break;
					}
					com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_factory_3072_line_455 = factory;
					int v_i_3073_line_455 = i;
					com.fasterxml.jackson.databind.introspect.AnnotatedParameter pojoproperties_collector_1_expr132_line_455 = v_factory_3072_line_455
							.getParameter(v_i_3073_line_455);
					int PROBE_END_LINE_455 = 455;
					_addCreatorParam(pojoproperties_collector_1_expr132_line_455);
                }
            }
        }
    }

    /**
     * @since 2.4
     */
    protected void _addCreatorParam(AnnotatedParameter param)
    {
        int PROBE_START_LINE_467 = 467;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_467 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter p_param_3075_line_467 = param;
		String pojoproperties_collector_1_expr133_line_467 = f__annotation_introspector_3043_line_467
				.findImplicitPropertyName(p_param_3075_line_467);
		int PROBE_END_LINE_467 = 467;
		// JDK 8, paranamer can give implicit name
        String impl = pojoproperties_collector_1_expr133_line_467;
        int PROBE_START_LINE_468 = 470;
		String v_impl_3076_line_468 = impl;
		boolean pojoproperties_collector_1_expr134_line_468 = v_impl_3076_line_468 == null;
		int PROBE_END_LINE_468 = 470;
		if (pojoproperties_collector_1_expr134_line_468) {
            impl = "";
        }
        int PROBE_START_LINE_471 = 471;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_471 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter p_param_3075_line_471 = param;
		PropertyName pojoproperties_collector_1_expr136_line_471 = f__annotation_introspector_3043_line_471
				.findNameForDeserialization(p_param_3075_line_471);
		int PROBE_END_LINE_471 = 471;
		PropertyName pn = pojoproperties_collector_1_expr136_line_471;
        int PROBE_START_LINE_472 = 472;
		com.fasterxml.jackson.databind.PropertyName v_pn_3077_line_472 = pn;
		boolean pojoproperties_collector_1_expr139_line_472 = v_pn_3077_line_472 != null;
		boolean pojoproperties_collector_1_expr140_line_472 = true;
		if (pojoproperties_collector_1_expr139_line_472) {
			com.fasterxml.jackson.databind.PropertyName v_pn_3077_line_472_v1 = pn;
			boolean pojoproperties_collector_1_expr141_line_472 = v_pn_3077_line_472_v1.isEmpty();
			pojoproperties_collector_1_expr140_line_472 = !pojoproperties_collector_1_expr141_line_472;
		}
		boolean pojoproperties_collector_1_expr138_line_472 = pojoproperties_collector_1_expr139_line_472
				&& pojoproperties_collector_1_expr140_line_472;
		boolean pojoproperties_collector_1_expr137_line_472 = (pojoproperties_collector_1_expr138_line_472);
		int PROBE_END_LINE_472 = 472;
		boolean expl = pojoproperties_collector_1_expr137_line_472;
        int PROBE_START_LINE_473 = 486;
		boolean v_expl_3078_line_473 = expl;
		boolean pojoproperties_collector_1_expr142_line_473 = !v_expl_3078_line_473;
		int PROBE_END_LINE_473 = 486;
		if (pojoproperties_collector_1_expr142_line_473) {
            int PROBE_START_LINE_474 = 480;
			String v_impl_3076_line_474 = impl;
			boolean pojoproperties_collector_1_expr143_line_474 = v_impl_3076_line_474.isEmpty();
			int PROBE_END_LINE_474 = 480;
			if (pojoproperties_collector_1_expr143_line_474) {
                /* Important: if neither implicit nor explicit name, can not make use
                 * of this creator parameter -- may or may not be a problem, verified
                 * at a later point.
                 */
                return;
            }
            // Also: if this occurs, there MUST be explicit annotation on creator itself
            if (!_annotationIntrospector.hasCreatorAnnotation(param.getOwner())) {
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
        int PROBE_START_LINE_510 = 510;
		AnnotationIntrospector f__annotation_introspector_3043_line_510 = _annotationIntrospector;
		int PROBE_END_LINE_510 = 510;
		final AnnotationIntrospector ai = f__annotation_introspector_3043_line_510;
        
        int PROBE_START_LINE_512 = 531;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_512 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr144_line_512 = f__class_def_3041_line_512
				.memberMethods();
		int PROBE_END_LINE_512 = 531;
		for (AnnotatedMethod m : pojoproperties_collector_1_expr144_line_512) {
            int PROBE_START_LINE_518 = 518;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_3080_line_518 = m;
			int pojoproperties_collector_1_expr145_line_518 = v_m_3080_line_518.getParameterCount();
			int PROBE_END_LINE_518 = 518;
			/* For methods, handling differs between getters and setters; and
             * we will also only consider entries that either follow the bean
             * naming convention or are explicitly marked: just being visible
             * is not enough (unlike with fields)
             */
            int argCount = pojoproperties_collector_1_expr145_line_518;
            int PROBE_START_LINE_519 = 530;
			int v_arg_count_3081_line_519 = argCount;
			boolean pojoproperties_collector_1_expr146_line_519 = v_arg_count_3081_line_519 == 0;
			int PROBE_END_LINE_519 = 530;
			if (pojoproperties_collector_1_expr146_line_519) { // getters (including 'any getter')
            	int PROBE_START_LINE_520 = 520;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_3080_line_520 = m;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3079_line_520 = ai;
				int PROBE_END_LINE_520 = 520;
				_addGetterMethod(v_m_3080_line_520, v_ai_3079_line_520);
            } else {
				int PROBE_START_LINE_521 = 530;
				int v_arg_count_3081_line_521 = argCount;
				boolean pojoproperties_collector_1_expr148_line_521 = v_arg_count_3081_line_521 == 1;
				int PROBE_END_LINE_521 = 530;
				if (pojoproperties_collector_1_expr148_line_521) {
					int PROBE_START_LINE_522 = 522;
					com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_3080_line_522 = m;
					com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3079_line_522 = ai;
					int PROBE_END_LINE_522 = 522;
					_addSetterMethod(v_m_3080_line_522, v_ai_3079_line_522);
				} else if (argCount == 2) {
					if (ai != null && ai.hasAnySetterAnnotation(m)) {
						if (_anySetters == null) {
							_anySetters = new LinkedList<AnnotatedMethod>();
						}
						_anySetters.add(m);
					}
				}
			}
        }
    }

    protected void _addGetterMethod(AnnotatedMethod m, AnnotationIntrospector ai)
    {
        int PROBE_START_LINE_537 = 539;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_537 = m;
		boolean pojoproperties_collector_1_expr151_line_537 = p_m_3082_line_537.hasReturnType();
		boolean pojoproperties_collector_1_expr150_line_537 = !pojoproperties_collector_1_expr151_line_537;
		int PROBE_END_LINE_537 = 539;
		// Very first thing: skip if not returning any value
        if (pojoproperties_collector_1_expr150_line_537) {
            return;
        }
        
        int PROBE_START_LINE_542 = 558;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3083_line_542 = ai;
		boolean pojoproperties_collector_1_expr152_line_542 = p_ai_3083_line_542 != null;
		int PROBE_END_LINE_542 = 558;
		// any getter?
        if (pojoproperties_collector_1_expr152_line_542) {
            int PROBE_START_LINE_543 = 549;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3083_line_543 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_543 = m;
			boolean pojoproperties_collector_1_expr153_line_543 = p_ai_3083_line_543
					.hasAnyGetterAnnotation(p_m_3082_line_543);
			int PROBE_END_LINE_543 = 549;
			if (pojoproperties_collector_1_expr153_line_543) {
                if (_anyGetters == null) {
                    _anyGetters = new LinkedList<AnnotatedMember>();
                }
                _anyGetters.add(m);
                return;
            }
            int PROBE_START_LINE_551 = 557;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3083_line_551 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_551 = m;
			boolean pojoproperties_collector_1_expr154_line_551 = p_ai_3083_line_551
					.hasAsValueAnnotation(p_m_3082_line_551);
			int PROBE_END_LINE_551 = 557;
			// @JsonValue?
            if (pojoproperties_collector_1_expr154_line_551) {
                if (_jsonValueGetters == null) {
                    _jsonValueGetters = new LinkedList<AnnotatedMethod>();
                }
                _jsonValueGetters.add(m);
                return;
            }
        }
        String implName = null; // from naming convention
        boolean visible;

        int PROBE_START_LINE_562 = 562;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3083_line_562 = ai;
		boolean pojoproperties_collector_1_expr158_line_562 = p_ai_3083_line_562 == null;
		boolean pojoproperties_collector_1_expr156_line_562 = (pojoproperties_collector_1_expr158_line_562);
		com.fasterxml.jackson.databind.PropertyName pojoproperties_collector_1_expr157_line_562 = null;
		if (!pojoproperties_collector_1_expr156_line_562) {
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3083_line_562_v1 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_562 = m;
			pojoproperties_collector_1_expr157_line_562 = p_ai_3083_line_562_v1
					.findNameForSerialization(p_m_3082_line_562);
		}
		PropertyName pojoproperties_collector_1_expr155_line_562 = pojoproperties_collector_1_expr156_line_562
				? null
				: pojoproperties_collector_1_expr157_line_562;
		int PROBE_END_LINE_562 = 562;
		PropertyName pn = pojoproperties_collector_1_expr155_line_562;
        int PROBE_START_LINE_563 = 563;
		com.fasterxml.jackson.databind.PropertyName v_pn_3084_line_563 = pn;
		boolean pojoproperties_collector_1_expr160_line_563 = v_pn_3084_line_563 != null;
		boolean pojoproperties_collector_1_expr159_line_563 = (pojoproperties_collector_1_expr160_line_563);
		int PROBE_END_LINE_563 = 563;
		boolean nameExplicit = pojoproperties_collector_1_expr159_line_563;

        int PROBE_START_LINE_565 = 595;
		boolean v_name_explicit_3085_line_565 = nameExplicit;
		boolean pojoproperties_collector_1_expr161_line_565 = !v_name_explicit_3085_line_565;
		int PROBE_END_LINE_565 = 595;
		if (pojoproperties_collector_1_expr161_line_565) { // no explicit name; must consider implicit
            int PROBE_START_LINE_566 = 566;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3083_line_566 = ai;
			boolean pojoproperties_collector_1_expr166_line_566 = p_ai_3083_line_566 == null;
			boolean pojoproperties_collector_1_expr164_line_566 = (pojoproperties_collector_1_expr166_line_566);
			String pojoproperties_collector_1_expr165_line_566 = null;
			if (!pojoproperties_collector_1_expr164_line_566) {
				com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3083_line_566_v1 = ai;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_566 = m;
				pojoproperties_collector_1_expr165_line_566 = p_ai_3083_line_566_v1
						.findImplicitPropertyName(p_m_3082_line_566);
			}
			String pojoproperties_collector_1_expr163_line_566 = pojoproperties_collector_1_expr164_line_566
					? null
					: pojoproperties_collector_1_expr165_line_566;
			int PROBE_END_LINE_566 = 566;
			implName = pojoproperties_collector_1_expr163_line_566;
            int PROBE_START_LINE_567 = 569;
			String v_impl_name_3086_line_567 = implName;
			boolean pojoproperties_collector_1_expr167_line_567 = v_impl_name_3086_line_567 == null;
			int PROBE_END_LINE_567 = 569;
			if (pojoproperties_collector_1_expr167_line_567) {
                int PROBE_START_LINE_568 = 568;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_568 = m;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_568_v1 = m;
				String pojoproperties_collector_1_expr170_line_568 = p_m_3082_line_568_v1.getName();
				boolean f__std_bean_naming_3038_line_568 = _stdBeanNaming;
				String pojoproperties_collector_1_expr169_line_568 = BeanUtil.okNameForRegularGetter(p_m_3082_line_568,
						pojoproperties_collector_1_expr170_line_568, f__std_bean_naming_3038_line_568);
				int PROBE_END_LINE_568 = 568;
				implName = pojoproperties_collector_1_expr169_line_568;
            }
            int PROBE_START_LINE_570 = 578;
			String v_impl_name_3086_line_570 = implName;
			boolean pojoproperties_collector_1_expr171_line_570 = v_impl_name_3086_line_570 == null;
			int PROBE_END_LINE_570 = 578;
			if (pojoproperties_collector_1_expr171_line_570) { // if not, must skip
                int PROBE_START_LINE_571 = 571;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_571 = m;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3082_line_571_v1 = m;
				String pojoproperties_collector_1_expr174_line_571 = p_m_3082_line_571_v1.getName();
				boolean f__std_bean_naming_3038_line_571 = _stdBeanNaming;
				String pojoproperties_collector_1_expr173_line_571 = BeanUtil.okNameForIsGetter(p_m_3082_line_571,
						pojoproperties_collector_1_expr174_line_571, f__std_bean_naming_3038_line_571);
				int PROBE_END_LINE_571 = 571;
				implName = pojoproperties_collector_1_expr173_line_571;
                int PROBE_START_LINE_572 = 574;
				String v_impl_name_3086_line_572 = implName;
				boolean pojoproperties_collector_1_expr175_line_572 = v_impl_name_3086_line_572 == null;
				int PROBE_END_LINE_572 = 574;
				if (pojoproperties_collector_1_expr175_line_572) {
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
                implName = BeanUtil.okNameForGetter(m, _stdBeanNaming);
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
        String implName = null; // from naming convention
        boolean visible;
        int PROBE_START_LINE_604 = 604;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3088_line_604 = ai;
		boolean pojoproperties_collector_1_expr179_line_604 = p_ai_3088_line_604 == null;
		boolean pojoproperties_collector_1_expr177_line_604 = (pojoproperties_collector_1_expr179_line_604);
		com.fasterxml.jackson.databind.PropertyName pojoproperties_collector_1_expr178_line_604 = null;
		if (!pojoproperties_collector_1_expr177_line_604) {
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3088_line_604_v1 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3087_line_604 = m;
			pojoproperties_collector_1_expr178_line_604 = p_ai_3088_line_604_v1
					.findNameForDeserialization(p_m_3087_line_604);
		}
		PropertyName pojoproperties_collector_1_expr176_line_604 = pojoproperties_collector_1_expr177_line_604
				? null
				: pojoproperties_collector_1_expr178_line_604;
		int PROBE_END_LINE_604 = 604;
		PropertyName pn = pojoproperties_collector_1_expr176_line_604;
        int PROBE_START_LINE_605 = 605;
		com.fasterxml.jackson.databind.PropertyName v_pn_3089_line_605 = pn;
		boolean pojoproperties_collector_1_expr181_line_605 = v_pn_3089_line_605 != null;
		boolean pojoproperties_collector_1_expr180_line_605 = (pojoproperties_collector_1_expr181_line_605);
		int PROBE_END_LINE_605 = 605;
		boolean nameExplicit = pojoproperties_collector_1_expr180_line_605;
        int PROBE_START_LINE_606 = 631;
		boolean v_name_explicit_3090_line_606 = nameExplicit;
		boolean pojoproperties_collector_1_expr182_line_606 = !v_name_explicit_3090_line_606;
		int PROBE_END_LINE_606 = 631;
		if (pojoproperties_collector_1_expr182_line_606) { // no explicit name; must follow naming convention
            int PROBE_START_LINE_607 = 607;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3088_line_607 = ai;
			boolean pojoproperties_collector_1_expr187_line_607 = p_ai_3088_line_607 == null;
			boolean pojoproperties_collector_1_expr185_line_607 = (pojoproperties_collector_1_expr187_line_607);
			String pojoproperties_collector_1_expr186_line_607 = null;
			if (!pojoproperties_collector_1_expr185_line_607) {
				com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3088_line_607_v1 = ai;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3087_line_607 = m;
				pojoproperties_collector_1_expr186_line_607 = p_ai_3088_line_607_v1
						.findImplicitPropertyName(p_m_3087_line_607);
			}
			String pojoproperties_collector_1_expr184_line_607 = pojoproperties_collector_1_expr185_line_607
					? null
					: pojoproperties_collector_1_expr186_line_607;
			int PROBE_END_LINE_607 = 607;
			implName = pojoproperties_collector_1_expr184_line_607;
            int PROBE_START_LINE_608 = 610;
			String v_impl_name_3091_line_608 = implName;
			boolean pojoproperties_collector_1_expr188_line_608 = v_impl_name_3091_line_608 == null;
			int PROBE_END_LINE_608 = 610;
			if (pojoproperties_collector_1_expr188_line_608) {
                int PROBE_START_LINE_609 = 609;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_3087_line_609 = m;
				String f__mutator_prefix_3042_line_609 = _mutatorPrefix;
				boolean f__std_bean_naming_3038_line_609 = _stdBeanNaming;
				String pojoproperties_collector_1_expr190_line_609 = BeanUtil.okNameForMutator(p_m_3087_line_609,
						f__mutator_prefix_3042_line_609, f__std_bean_naming_3038_line_609);
				int PROBE_END_LINE_609 = 609;
				implName = pojoproperties_collector_1_expr190_line_609;
            }
            int PROBE_START_LINE_611 = 613;
			String v_impl_name_3091_line_611 = implName;
			boolean pojoproperties_collector_1_expr191_line_611 = v_impl_name_3091_line_611 == null;
			int PROBE_END_LINE_611 = 613;
			if (pojoproperties_collector_1_expr191_line_611) { // if not, must skip
            	return;
            }
            visible = _visibilityChecker.isSetterVisible(m);
        } else { // explicit indication of inclusion, but may be empty
            // we still need implicit name to link with other pieces
            implName = (ai == null) ? null : ai.findImplicitPropertyName(m);
            if (implName == null) {
                implName = BeanUtil.okNameForMutator(m, _mutatorPrefix, _stdBeanNaming);
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
        int PROBE_START_LINE_638 = 638;
		AnnotationIntrospector f__annotation_introspector_3043_line_638 = _annotationIntrospector;
		int PROBE_END_LINE_638 = 638;
		final AnnotationIntrospector ai = f__annotation_introspector_3043_line_638;
        int PROBE_START_LINE_639 = 641;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3092_line_639 = ai;
		boolean pojoproperties_collector_1_expr192_line_639 = v_ai_3092_line_639 == null;
		int PROBE_END_LINE_639 = 641;
		if (pojoproperties_collector_1_expr192_line_639) {
            return;
        }
        
        int PROBE_START_LINE_644 = 646;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_644 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperties_collector_1_expr193_line_644 = f__class_def_3041_line_644
				.fields();
		int PROBE_END_LINE_644 = 646;
		// first fields, then methods
        for (AnnotatedField f : pojoproperties_collector_1_expr193_line_644) {
            int PROBE_START_LINE_645 = 645;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3092_line_645 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3093_line_645 = f;
			Object pojoproperties_collector_1_expr195_line_645 = v_ai_3092_line_645
					.findInjectableValueId(v_f_3093_line_645);
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3093_line_645_v1 = f;
			int PROBE_END_LINE_645 = 645;
			_doAddInjectable(pojoproperties_collector_1_expr195_line_645, v_f_3093_line_645_v1);
        }
        
        int PROBE_START_LINE_648 = 656;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3041_line_648 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr196_line_648 = f__class_def_3041_line_648
				.memberMethods();
		int PROBE_END_LINE_648 = 656;
		for (AnnotatedMethod m : pojoproperties_collector_1_expr196_line_648) {
            int PROBE_START_LINE_652 = 654;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_3094_line_652 = m;
			int pojoproperties_collector_1_expr198_line_652 = v_m_3094_line_652.getParameterCount();
			boolean pojoproperties_collector_1_expr197_line_652 = pojoproperties_collector_1_expr198_line_652 != 1;
			int PROBE_END_LINE_652 = 654;
			/* for now, only allow injection of a single arg
             * (to be changed in future)
             */
            if (pojoproperties_collector_1_expr197_line_652) {
                continue;
            }
            int PROBE_START_LINE_655 = 655;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3092_line_655 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_3094_line_655 = m;
			Object pojoproperties_collector_1_expr200_line_655 = v_ai_3092_line_655
					.findInjectableValueId(v_m_3094_line_655);
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_3094_line_655_v1 = m;
			int PROBE_END_LINE_655 = 655;
			_doAddInjectable(pojoproperties_collector_1_expr200_line_655, v_m_3094_line_655_v1);
        }
    }

    protected void _doAddInjectable(Object id, AnnotatedMember m)
    {
        int PROBE_START_LINE_661 = 663;
		Object p_id_3095_line_661 = id;
		boolean pojoproperties_collector_1_expr201_line_661 = p_id_3095_line_661 == null;
		int PROBE_END_LINE_661 = 663;
		if (pojoproperties_collector_1_expr201_line_661) {
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
        int PROBE_START_LINE_691 = 691;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_691 = _properties;
		Set<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> pojoproperties_collector_1_expr203_line_691 = f__properties_3027_line_691
				.entrySet();
		Iterator<Map.Entry<String, POJOPropertyBuilder>> pojoproperties_collector_1_expr202_line_691 = pojoproperties_collector_1_expr203_line_691
				.iterator();
		int PROBE_END_LINE_691 = 691;
		Iterator<Map.Entry<String,POJOPropertyBuilder>> it = pojoproperties_collector_1_expr202_line_691;
        int PROBE_START_LINE_692 = 692;
		MapperConfig<?> f__config_3037_line_692 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_infer_property_mutators_110_line_692 = MapperFeature.INFER_PROPERTY_MUTATORS;
		boolean pojoproperties_collector_1_expr205_line_692 = f__config_3037_line_692
				.isEnabled(q_infer_property_mutators_110_line_692);
		boolean pojoproperties_collector_1_expr204_line_692 = !pojoproperties_collector_1_expr205_line_692;
		int PROBE_END_LINE_692 = 692;
		final boolean forceNonVisibleRemoval = pojoproperties_collector_1_expr204_line_692;

        while (true) {
            int PROBE_START_LINE_694 = 694;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_3098_line_694 = it;
			boolean pojoproperties_collector_1_expr206_line_694 = v_it_3098_line_694.hasNext();
			if (!(pojoproperties_collector_1_expr206_line_694)) {
				break;
			}
			int PROBE_END_LINE_694 = 694;
			int PROBE_START_LINE_695 = 695;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_3098_line_695 = it;
			Map.Entry<String, POJOPropertyBuilder> pojoproperties_collector_1_expr207_line_695 = v_it_3098_line_695
					.next();
			int PROBE_END_LINE_695 = 695;
			Map.Entry<String, POJOPropertyBuilder> entry = pojoproperties_collector_1_expr207_line_695;
            int PROBE_START_LINE_696 = 696;
			java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_entry_3100_line_696 = entry;
			POJOPropertyBuilder pojoproperties_collector_1_expr208_line_696 = v_entry_3100_line_696.getValue();
			int PROBE_END_LINE_696 = 696;
			POJOPropertyBuilder prop = pojoproperties_collector_1_expr208_line_696;

            int PROBE_START_LINE_699 = 702;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3101_line_699 = prop;
			boolean pojoproperties_collector_1_expr210_line_699 = v_prop_3101_line_699.anyVisible();
			boolean pojoproperties_collector_1_expr209_line_699 = !pojoproperties_collector_1_expr210_line_699;
			int PROBE_END_LINE_699 = 702;
			// First: if nothing visible, just remove altogether
            if (pojoproperties_collector_1_expr209_line_699) {
                int PROBE_START_LINE_700 = 700;
				Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_3098_line_700 = it;
				int PROBE_END_LINE_700 = 700;
				v_it_3098_line_700.remove();
                continue;
            }
            int PROBE_START_LINE_704 = 716;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3101_line_704 = prop;
			boolean pojoproperties_collector_1_expr212_line_704 = v_prop_3101_line_704.anyIgnorals();
			int PROBE_END_LINE_704 = 716;
			// Otherwise, check ignorals
            if (pojoproperties_collector_1_expr212_line_704) {
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
            int PROBE_START_LINE_718 = 718;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3101_line_718 = prop;
			boolean v_force_non_visible_removal_3099_line_718 = forceNonVisibleRemoval;
			int PROBE_END_LINE_718 = 718;
			// and finally, handle removal of individual non-visible elements
            v_prop_3101_line_718.removeNonVisible(v_force_non_visible_removal_3099_line_718);
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
        int PROBE_START_LINE_741 = 741;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_741 = _properties;
		Set<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> pojoproperties_collector_1_expr215_line_741 = f__properties_3027_line_741
				.entrySet();
		Iterator<Map.Entry<String, POJOPropertyBuilder>> pojoproperties_collector_1_expr214_line_741 = pojoproperties_collector_1_expr215_line_741
				.iterator();
		int PROBE_END_LINE_741 = 741;
		// With renaming need to do in phases: first, find properties to rename
        Iterator<Map.Entry<String,POJOPropertyBuilder>> it = pojoproperties_collector_1_expr214_line_741;
        LinkedList<POJOPropertyBuilder> renamed = null;
        while (true) {
            int PROBE_START_LINE_743 = 743;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_3103_line_743 = it;
			boolean pojoproperties_collector_1_expr216_line_743 = v_it_3103_line_743.hasNext();
			if (!(pojoproperties_collector_1_expr216_line_743)) {
				break;
			}
			int PROBE_END_LINE_743 = 743;
			int PROBE_START_LINE_744 = 744;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_3103_line_744 = it;
			Map.Entry<String, POJOPropertyBuilder> pojoproperties_collector_1_expr217_line_744 = v_it_3103_line_744
					.next();
			int PROBE_END_LINE_744 = 744;
			Map.Entry<String, POJOPropertyBuilder> entry = pojoproperties_collector_1_expr217_line_744;
            int PROBE_START_LINE_745 = 745;
			java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_entry_3105_line_745 = entry;
			POJOPropertyBuilder pojoproperties_collector_1_expr218_line_745 = v_entry_3105_line_745.getValue();
			int PROBE_END_LINE_745 = 745;
			POJOPropertyBuilder prop = pojoproperties_collector_1_expr218_line_745;

            int PROBE_START_LINE_747 = 747;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3106_line_747 = prop;
			Collection<PropertyName> pojoproperties_collector_1_expr219_line_747 = v_prop_3106_line_747
					.findExplicitNames();
			int PROBE_END_LINE_747 = 747;
			Collection<PropertyName> l = pojoproperties_collector_1_expr219_line_747;
            int PROBE_START_LINE_749 = 751;
			Collection<com.fasterxml.jackson.databind.PropertyName> v_l_3107_line_749 = l;
			boolean pojoproperties_collector_1_expr220_line_749 = v_l_3107_line_749.isEmpty();
			int PROBE_END_LINE_749 = 751;
			// no explicit names? Implicit one is fine as is
            if (pojoproperties_collector_1_expr220_line_749) {
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
        
        int PROBE_START_LINE_779 = 791;
		LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_renamed_3104_line_779 = renamed;
		boolean pojoproperties_collector_1_expr221_line_779 = v_renamed_3104_line_779 != null;
		int PROBE_END_LINE_779 = 791;
		// and if any were renamed, merge back in...
        if (pojoproperties_collector_1_expr221_line_779) {
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
        int PROBE_START_LINE_908 = 908;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_908 = _properties;
		String p_impl_name_3111_line_908 = implName;
		POJOPropertyBuilder pojoproperties_collector_1_expr222_line_908 = f__properties_3027_line_908
				.get(p_impl_name_3111_line_908);
		int PROBE_END_LINE_908 = 908;
		POJOPropertyBuilder prop = pojoproperties_collector_1_expr222_line_908;
        int PROBE_START_LINE_909 = 913;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3112_line_909 = prop;
		boolean pojoproperties_collector_1_expr223_line_909 = v_prop_3112_line_909 == null;
		int PROBE_END_LINE_909 = 913;
		if (pojoproperties_collector_1_expr223_line_909) {
            int PROBE_START_LINE_910 = 911;
			String p_impl_name_3111_line_910 = implName;
			int PROBE_END_LINE_910 = 911;
			prop = new POJOPropertyBuilder(new PropertyName(p_impl_name_3111_line_910),
                    _annotationIntrospector, _forSerialization);
            int PROBE_START_LINE_912 = 912;
			LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3027_line_912 = _properties;
			String p_impl_name_3111_line_912 = implName;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3112_line_912 = prop;
			int PROBE_END_LINE_912 = 912;
			f__properties_3027_line_912.put(p_impl_name_3111_line_912, v_prop_3112_line_912);
        }
        int PROBE_START_LINE_914 = 914;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3112_line_914 = prop;
		int PROBE_END_LINE_914 = 914;
		return v_prop_3112_line_914;
    }

    private PropertyNamingStrategy _findNamingStrategy()
    {
        int PROBE_START_LINE_919 = 920;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3043_line_919 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr231_line_919 = f__annotation_introspector_3043_line_919 == null;
		boolean pojoproperties_collector_1_expr229_line_919 = (pojoproperties_collector_1_expr231_line_919);
		Object pojoproperties_collector_1_expr228_line_919 = pojoproperties_collector_1_expr229_line_919
				? null
				: _annotationIntrospector.findNamingStrategy(_classDef);
		int PROBE_END_LINE_919 = 920;
		Object namingDef = pojoproperties_collector_1_expr228_line_919;
        int PROBE_START_LINE_921 = 923;
		Object v_naming_def_3113_line_921 = namingDef;
		boolean pojoproperties_collector_1_expr232_line_921 = v_naming_def_3113_line_921 == null;
		int PROBE_END_LINE_921 = 923;
		if (pojoproperties_collector_1_expr232_line_921) {
            int PROBE_START_LINE_922 = 922;
			MapperConfig<?> f__config_3037_line_922 = _config;
			com.fasterxml.jackson.databind.PropertyNamingStrategy pojoproperties_collector_1_expr233_line_922 = f__config_3037_line_922
					.getPropertyNamingStrategy();
			int PROBE_END_LINE_922 = 922;
			return pojoproperties_collector_1_expr233_line_922;
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
