package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Modifier;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
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
     * precedence for serialization annotations), or not (false, deserialization)
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
     * State flag we keep to indicate whether actual property information
     * has been collected or not.
     */
    protected boolean _collected;
    
    /**
     * Set of logical property information collected so far.
     *<p>
     * Since 2.6, this has been constructed (more) lazily, to defer
     * throwing of exceptions for potential conflicts in cases where
     * this may not be an actual problem.
     */
    protected LinkedHashMap<String, POJOPropertyBuilder> _properties;

    protected LinkedList<POJOPropertyBuilder> _creatorProperties ;
    
    protected LinkedList<AnnotatedMember> _anyGetters;

    protected LinkedList<AnnotatedMethod> _anySetters;
    
    protected LinkedList<AnnotatedMember> _anySetterField;

    /**
     * Method(s) marked with 'JsonValue' annotation
     */
    protected LinkedList<AnnotatedMethod> _jsonValueGetters;

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
        int PROBE_START_LINE_119 = 119;
		MapperConfig<?> p_config_3246_line_119 = config;
		int PROBE_END_LINE_119 = 119;
		_config = p_config_3246_line_119;
        int PROBE_START_LINE_120 = 120;
		MapperConfig<?> p_config_3246_line_120 = config;
		com.fasterxml.jackson.databind.MapperFeature q_use_std_bean_naming_87_line_120 = MapperFeature.USE_STD_BEAN_NAMING;
		boolean pojoproperties_collector_1_expr3_line_120 = p_config_3246_line_120
				.isEnabled(q_use_std_bean_naming_87_line_120);
		int PROBE_END_LINE_120 = 120;
		_stdBeanNaming = pojoproperties_collector_1_expr3_line_120;
        int PROBE_START_LINE_121 = 121;
		boolean p_for_serialization_3247_line_121 = forSerialization;
		int PROBE_END_LINE_121 = 121;
		_forSerialization = p_for_serialization_3247_line_121;
        int PROBE_START_LINE_122 = 122;
		com.fasterxml.jackson.databind.JavaType p_type_3248_line_122 = type;
		int PROBE_END_LINE_122 = 122;
		_type = p_type_3248_line_122;
        int PROBE_START_LINE_123 = 123;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_3249_line_123 = classDef;
		int PROBE_END_LINE_123 = 123;
		_classDef = p_class_def_3249_line_123;
        int PROBE_START_LINE_124 = 124;
		String p_mutator_prefix_3250_line_124 = mutatorPrefix;
		boolean pojoproperties_collector_1_expr10_line_124 = p_mutator_prefix_3250_line_124 == null;
		boolean pojoproperties_collector_1_expr9_line_124 = (pojoproperties_collector_1_expr10_line_124);
		String p_mutator_prefix_3250_line_124_v1 = null;
		if (!pojoproperties_collector_1_expr9_line_124) {
			p_mutator_prefix_3250_line_124_v1 = mutatorPrefix;
		}
		String pojoproperties_collector_1_expr8_line_124 = pojoproperties_collector_1_expr9_line_124
				? "set"
				: p_mutator_prefix_3250_line_124_v1;
		int PROBE_END_LINE_124 = 124;
		_mutatorPrefix = pojoproperties_collector_1_expr8_line_124;
        int PROBE_START_LINE_125 = 126;
		MapperConfig<?> p_config_3246_line_125 = config;
		boolean pojoproperties_collector_1_expr13_line_125 = p_config_3246_line_125.isAnnotationProcessingEnabled();
		com.fasterxml.jackson.databind.AnnotationIntrospector pojoproperties_collector_1_expr12_line_125 = pojoproperties_collector_1_expr13_line_125
				? _config.getAnnotationIntrospector()
				: null;
		int PROBE_END_LINE_125 = 126;
		_annotationIntrospector = pojoproperties_collector_1_expr12_line_125;
        int PROBE_START_LINE_127 = 132;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3257_line_127 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr15_line_127 = f__annotation_introspector_3257_line_127 == null;
		int PROBE_END_LINE_127 = 132;
		if (pojoproperties_collector_1_expr15_line_127) {
            _visibilityChecker = _config.getDefaultVisibilityChecker();
        } else {
            int PROBE_START_LINE_130 = 131;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3257_line_130 = _annotationIntrospector;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_3249_line_130 = classDef;
			VisibilityChecker<?> pojoproperties_collector_1_expr17_line_130 = f__annotation_introspector_3257_line_130
					.findAutoDetectVisibility(p_class_def_3249_line_130, _config.getDefaultVisibilityChecker());
			int PROBE_END_LINE_130 = 131;
			_visibilityChecker = pojoproperties_collector_1_expr17_line_130;
        }
    }

    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    public MapperConfig<?> getConfig() {
        int PROBE_START_LINE_142 = 142;
		MapperConfig<?> f__config_3251_line_142 = _config;
		int PROBE_END_LINE_142 = 142;
		return f__config_3251_line_142;
    }

    public JavaType getType() {
        int PROBE_START_LINE_146 = 146;
		com.fasterxml.jackson.databind.JavaType f__type_3254_line_146 = _type;
		int PROBE_END_LINE_146 = 146;
		return f__type_3254_line_146;
    }
    
    public AnnotatedClass getClassDef() {
        int PROBE_START_LINE_150 = 150;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_150 = _classDef;
		int PROBE_END_LINE_150 = 150;
		return f__class_def_3255_line_150;
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return _annotationIntrospector;
    }
    
    public List<BeanPropertyDefinition> getProperties() {
        int PROBE_START_LINE_159 = 159;
		Map<String, POJOPropertyBuilder> pojoproperties_collector_1_expr19_line_159 = getPropertyMap();
		int PROBE_END_LINE_159 = 159;
		// make sure we return a copy, so caller can remove entries if need be:
        Map<String, POJOPropertyBuilder> props = pojoproperties_collector_1_expr19_line_159;
        int PROBE_START_LINE_160 = 160;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3259_line_160 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr21_line_160 = v_props_3259_line_160
				.values();
		int PROBE_END_LINE_160 = 160;
		return new ArrayList<BeanPropertyDefinition>(pojoproperties_collector_1_expr21_line_160);
    }

    public Map<Object, AnnotatedMember> getInjectables() {
        int PROBE_START_LINE_164 = 166;
		boolean f__collected_3260_line_164 = _collected;
		boolean pojoproperties_collector_1_expr22_line_164 = !f__collected_3260_line_164;
		int PROBE_END_LINE_164 = 166;
		if (pojoproperties_collector_1_expr22_line_164) {
            collectAll();
        }
        int PROBE_START_LINE_167 = 167;
		LinkedHashMap<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> f__injectables_3261_line_167 = _injectables;
		int PROBE_END_LINE_167 = 167;
		return f__injectables_3261_line_167;
    }
    
    public AnnotatedMethod getJsonValueMethod()
    {
        if (!_collected) {
            collectAll();
        }
        // If @JsonValue defined, must have a single one
        if (_jsonValueGetters != null) {
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
        if (!_collected) {
            collectAll();
        }
        if (_anyGetters != null) {
            if (_anyGetters.size() > 1) {
                reportProblem("Multiple 'any-getters' defined ("+_anyGetters.get(0)+" vs "
                        +_anyGetters.get(1)+")");
            }
            return _anyGetters.getFirst();
        }        
        return null;
    }
    
    public AnnotatedMember getAnySetterField()
    {
        int PROBE_START_LINE_204 = 206;
		boolean f__collected_3260_line_204 = _collected;
		boolean pojoproperties_collector_1_expr23_line_204 = !f__collected_3260_line_204;
		int PROBE_END_LINE_204 = 206;
		if (pojoproperties_collector_1_expr23_line_204) {
            collectAll();
        }
        int PROBE_START_LINE_207 = 213;
		LinkedList<com.fasterxml.jackson.databind.introspect.AnnotatedMember> f__any_setter_field_3262_line_207 = _anySetterField;
		boolean pojoproperties_collector_1_expr24_line_207 = f__any_setter_field_3262_line_207 != null;
		int PROBE_END_LINE_207 = 213;
		if (pojoproperties_collector_1_expr24_line_207) {
            if (_anySetterField.size() > 1) {
                reportProblem("Multiple 'any-Setters' defined ("+_anySetters.get(0)+" vs "
                        +_anySetterField.get(1)+")");
            }
            return _anySetterField.getFirst();
        }
        return null;
    }

    public AnnotatedMethod getAnySetterMethod()
    {
        int PROBE_START_LINE_219 = 221;
		boolean f__collected_3260_line_219 = _collected;
		boolean pojoproperties_collector_1_expr25_line_219 = !f__collected_3260_line_219;
		int PROBE_END_LINE_219 = 221;
		if (pojoproperties_collector_1_expr25_line_219) {
            collectAll();
        }
        int PROBE_START_LINE_222 = 228;
		LinkedList<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__any_setters_3263_line_222 = _anySetters;
		boolean pojoproperties_collector_1_expr26_line_222 = f__any_setters_3263_line_222 != null;
		int PROBE_END_LINE_222 = 228;
		if (pojoproperties_collector_1_expr26_line_222) {
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
        int PROBE_START_LINE_237 = 237;
		HashSet<String> f__ignored_property_names_3264_line_237 = _ignoredPropertyNames;
		int PROBE_END_LINE_237 = 237;
		return f__ignored_property_names_3264_line_237;
    }

    /**
     * Accessor to find out whether type specified requires inclusion
     * of Object Identifier.
     */
    public ObjectIdInfo getObjectIdInfo()
    {
        int PROBE_START_LINE_246 = 248;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3257_line_246 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr27_line_246 = f__annotation_introspector_3257_line_246 == null;
		int PROBE_END_LINE_246 = 248;
		if (pojoproperties_collector_1_expr27_line_246) {
            return null;
        }
        int PROBE_START_LINE_249 = 249;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3257_line_249 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_249 = _classDef;
		ObjectIdInfo pojoproperties_collector_1_expr28_line_249 = f__annotation_introspector_3257_line_249
				.findObjectIdInfo(f__class_def_3255_line_249);
		int PROBE_END_LINE_249 = 249;
		ObjectIdInfo info = pojoproperties_collector_1_expr28_line_249;
        int PROBE_START_LINE_250 = 252;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3265_line_250 = info;
		boolean pojoproperties_collector_1_expr29_line_250 = v_info_3265_line_250 != null;
		int PROBE_END_LINE_250 = 252;
		if (pojoproperties_collector_1_expr29_line_250) { // 2.1: may also have different defaults for refs:
            info = _annotationIntrospector.findObjectReferenceInfo(_classDef, info);
        }
        int PROBE_START_LINE_253 = 253;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3265_line_253 = info;
		int PROBE_END_LINE_253 = 253;
		return v_info_3265_line_253;
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
        int PROBE_START_LINE_266 = 268;
		boolean f__collected_3260_line_266 = _collected;
		boolean pojoproperties_collector_1_expr30_line_266 = !f__collected_3260_line_266;
		int PROBE_END_LINE_266 = 268;
		if (pojoproperties_collector_1_expr30_line_266) {
            collectAll();
        }
        int PROBE_START_LINE_269 = 269;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_3266_line_269 = _properties;
		int PROBE_END_LINE_269 = 269;
		return f__properties_3266_line_269;
    }

    /*
    /**********************************************************
    /* Public API: main-level collection
    /**********************************************************
     */

    /**
     * Method that orchestrates collection activities, and needs to be called
     * after creating the instance.
     *<p>
     * Since 2.6 has become a no-op and actual collection is done more lazily
     * at point where properties are actually needed.
     * 
     * @deprecated Since 2.6; no need to call
     */
    @Deprecated
    public POJOPropertiesCollector collect() {
        return this;
    }

    /**
     * Internal method that will collect actual property information.
     *
     * @since 2.6
     */
    protected void collectAll()
    {
        LinkedHashMap<String, POJOPropertyBuilder> props = new LinkedHashMap<String, POJOPropertyBuilder>();

        int PROBE_START_LINE_302 = 302;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_302 = props;
		int PROBE_END_LINE_302 = 302;
		// First: gather basic data
        _addFields(v_props_3267_line_302);
        int PROBE_START_LINE_303 = 303;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_303 = props;
		int PROBE_END_LINE_303 = 303;
		_addMethods(v_props_3267_line_303);
        int PROBE_START_LINE_306 = 308;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_306 = _classDef;
		boolean pojoproperties_collector_1_expr36_line_306 = f__class_def_3255_line_306.isNonStaticInnerClass();
		boolean pojoproperties_collector_1_expr35_line_306 = !pojoproperties_collector_1_expr36_line_306;
		int PROBE_END_LINE_306 = 308;
		// 25-Jan-2016, tatu: Avoid introspecting (constructor-)creators for non-static
        //    inner classes, see [databind#1502]
        if (pojoproperties_collector_1_expr35_line_306) {
            int PROBE_START_LINE_307 = 307;
			LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_307 = props;
			int PROBE_END_LINE_307 = 307;
			_addCreators(v_props_3267_line_307);
        }
        int PROBE_START_LINE_309 = 309;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_309 = props;
		int PROBE_END_LINE_309 = 309;
		_addInjectables(v_props_3267_line_309);

        int PROBE_START_LINE_313 = 313;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_313 = props;
		int PROBE_END_LINE_313 = 313;
		// Remove ignored properties, first; this MUST precede annotation merging
        // since logic relies on knowing exactly which accessor has which annotation
        _removeUnwantedProperties(v_props_3267_line_313);

        int PROBE_START_LINE_316 = 318;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_316 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr40_line_316 = v_props_3267_line_316
				.values();
		int PROBE_END_LINE_316 = 318;
		// then merge annotations, to simplify further processing
        for (POJOPropertyBuilder property : pojoproperties_collector_1_expr40_line_316) {
            int PROBE_START_LINE_317 = 317;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_property_3268_line_317 = property;
			boolean f__for_serialization_3253_line_317 = _forSerialization;
			int PROBE_END_LINE_317 = 317;
			v_property_3268_line_317.mergeAnnotations(f__for_serialization_3253_line_317);
        }
        int PROBE_START_LINE_320 = 320;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_320 = props;
		int PROBE_END_LINE_320 = 320;
		// and then remove unneeded accessors (wrt read-only, read-write)
        _removeUnwantedAccessor(v_props_3267_line_320);

        int PROBE_START_LINE_323 = 323;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_323 = props;
		int PROBE_END_LINE_323 = 323;
		// Rename remaining properties
        _renameProperties(v_props_3267_line_323);

        int PROBE_START_LINE_326 = 326;
		PropertyNamingStrategy pojoproperties_collector_1_expr44_line_326 = _findNamingStrategy();
		int PROBE_END_LINE_326 = 326;
		// And use custom naming strategy, if applicable...
        PropertyNamingStrategy naming = pojoproperties_collector_1_expr44_line_326;
        int PROBE_START_LINE_327 = 329;
		com.fasterxml.jackson.databind.PropertyNamingStrategy v_naming_3269_line_327 = naming;
		boolean pojoproperties_collector_1_expr45_line_327 = v_naming_3269_line_327 != null;
		int PROBE_END_LINE_327 = 329;
		if (pojoproperties_collector_1_expr45_line_327) {
            _renameUsing(props, naming);
        }

        int PROBE_START_LINE_335 = 337;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_335 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr46_line_335 = v_props_3267_line_335
				.values();
		int PROBE_END_LINE_335 = 337;
		/* Sort by visibility (explicit over implicit); drop all but first
         * of member type (getter, setter etc) if there is visibility
         * difference
         */
        for (POJOPropertyBuilder property : pojoproperties_collector_1_expr46_line_335) {
            int PROBE_START_LINE_336 = 336;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_property_3270_line_336 = property;
			int PROBE_END_LINE_336 = 336;
			v_property_3270_line_336.trimByVisibility();
        }

        int PROBE_START_LINE_342 = 344;
		MapperConfig<?> f__config_3251_line_342 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_use_wrapper_name_as_property_name_88_line_342 = MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME;
		boolean pojoproperties_collector_1_expr48_line_342 = f__config_3251_line_342
				.isEnabled(q_use_wrapper_name_as_property_name_88_line_342);
		int PROBE_END_LINE_342 = 344;
		/* and, if required, apply wrapper name: note, MUST be done after
         * annotations are merged.
         */
        if (pojoproperties_collector_1_expr48_line_342) {
            _renameWithWrappers(props);
        }
        
        int PROBE_START_LINE_347 = 347;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_347 = props;
		int PROBE_END_LINE_347 = 347;
		// well, almost last: there's still ordering...
        _sortProperties(v_props_3267_line_347);
        int PROBE_START_LINE_348 = 348;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_3267_line_348 = props;
		int PROBE_END_LINE_348 = 348;
		_properties = v_props_3267_line_348;
        _collected = true;
    }

    /*
    /**********************************************************
    /* Overridable internal methods, adding members
    /**********************************************************
     */
    
    /**
     * Method for collecting basic information on all fields found
     */
    protected void _addFields(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_363 = 363;
		AnnotationIntrospector f__annotation_introspector_3257_line_363 = _annotationIntrospector;
		int PROBE_END_LINE_363 = 363;
		final AnnotationIntrospector ai = f__annotation_introspector_3257_line_363;
        int PROBE_START_LINE_368 = 368;
		boolean f__for_serialization_3253_line_368 = _forSerialization;
		boolean pojoproperties_collector_1_expr53_line_368 = !f__for_serialization_3253_line_368;
		boolean pojoproperties_collector_1_expr54_line_368 = true;
		if (pojoproperties_collector_1_expr53_line_368) {
			MapperConfig<?> f__config_3251_line_368 = _config;
			com.fasterxml.jackson.databind.MapperFeature q_allow_final_fields_as_mutators_89_line_368 = MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS;
			boolean pojoproperties_collector_1_expr55_line_368 = f__config_3251_line_368
					.isEnabled(q_allow_final_fields_as_mutators_89_line_368);
			pojoproperties_collector_1_expr54_line_368 = !pojoproperties_collector_1_expr55_line_368;
		}
		boolean pojoproperties_collector_1_expr52_line_368 = pojoproperties_collector_1_expr53_line_368
				&& pojoproperties_collector_1_expr54_line_368;
		int PROBE_END_LINE_368 = 368;
		/* 28-Mar-2013, tatu: For deserialization we may also want to remove
         *   final fields, as often they won't make very good mutators...
         *   (although, maybe surprisingly, JVM _can_ force setting of such fields!)
         */
        final boolean pruneFinalFields = pojoproperties_collector_1_expr52_line_368;
        int PROBE_START_LINE_369 = 369;
		MapperConfig<?> f__config_3251_line_369 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_propagate_transient_marker_90_line_369 = MapperFeature.PROPAGATE_TRANSIENT_MARKER;
		boolean pojoproperties_collector_1_expr56_line_369 = f__config_3251_line_369
				.isEnabled(q_propagate_transient_marker_90_line_369);
		int PROBE_END_LINE_369 = 369;
		final boolean transientAsIgnoral = pojoproperties_collector_1_expr56_line_369;
        
        int PROBE_START_LINE_371 = 434;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_371 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperties_collector_1_expr57_line_371 = f__class_def_3255_line_371
				.fields();
		int PROBE_END_LINE_371 = 434;
		for (AnnotatedField f : pojoproperties_collector_1_expr57_line_371) {
            int PROBE_START_LINE_372 = 372;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3272_line_372 = ai;
			boolean pojoproperties_collector_1_expr61_line_372 = v_ai_3272_line_372 == null;
			boolean pojoproperties_collector_1_expr59_line_372 = (pojoproperties_collector_1_expr61_line_372);
			String pojoproperties_collector_1_expr60_line_372 = null;
			if (!pojoproperties_collector_1_expr59_line_372) {
				com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3272_line_372_v1 = ai;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_372 = f;
				pojoproperties_collector_1_expr60_line_372 = v_ai_3272_line_372_v1
						.findImplicitPropertyName(v_f_3275_line_372);
			}
			String pojoproperties_collector_1_expr58_line_372 = pojoproperties_collector_1_expr59_line_372
					? null
					: pojoproperties_collector_1_expr60_line_372;
			int PROBE_END_LINE_372 = 372;
			String implName = pojoproperties_collector_1_expr58_line_372;
            int PROBE_START_LINE_373 = 375;
			String v_impl_name_3276_line_373 = implName;
			boolean pojoproperties_collector_1_expr62_line_373 = v_impl_name_3276_line_373 == null;
			int PROBE_END_LINE_373 = 375;
			if (pojoproperties_collector_1_expr62_line_373) {
                int PROBE_START_LINE_374 = 374;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_374 = f;
				String pojoproperties_collector_1_expr64_line_374 = v_f_3275_line_374.getName();
				int PROBE_END_LINE_374 = 374;
				implName = pojoproperties_collector_1_expr64_line_374;
            }

            PropertyName pn = null;

            int PROBE_START_LINE_379 = 390;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3272_line_379 = ai;
			boolean pojoproperties_collector_1_expr65_line_379 = v_ai_3272_line_379 == null;
			int PROBE_END_LINE_379 = 390;
			if (pojoproperties_collector_1_expr65_line_379) {
                pn = null;
            } else {
				int PROBE_START_LINE_381 = 390;
				boolean f__for_serialization_3253_line_381 = _forSerialization;
				int PROBE_END_LINE_381 = 390;
				if (f__for_serialization_3253_line_381) {
					pn = ai.findNameForSerialization(f);
				} else {
					int PROBE_START_LINE_389 = 389;
					com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3272_line_389 = ai;
					com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_389 = f;
					com.fasterxml.jackson.databind.PropertyName pojoproperties_collector_1_expr67_line_389 = v_ai_3272_line_389
							.findNameForDeserialization(v_f_3275_line_389);
					int PROBE_END_LINE_389 = 389;
					pn = pojoproperties_collector_1_expr67_line_389;
				}
			}
            int PROBE_START_LINE_391 = 391;
			com.fasterxml.jackson.databind.PropertyName v_pn_3277_line_391 = pn;
			boolean pojoproperties_collector_1_expr69_line_391 = v_pn_3277_line_391 != null;
			boolean pojoproperties_collector_1_expr68_line_391 = (pojoproperties_collector_1_expr69_line_391);
			int PROBE_END_LINE_391 = 391;
			boolean hasName = pojoproperties_collector_1_expr68_line_391;
            int PROBE_START_LINE_392 = 392;
			boolean v_has_name_3278_line_392 = hasName;
			int PROBE_END_LINE_392 = 392;
			boolean nameExplicit = v_has_name_3278_line_392;

            int PROBE_START_LINE_394 = 397;
			boolean v_name_explicit_3279_line_394 = nameExplicit;
			boolean pojoproperties_collector_1_expr71_line_394 = true;
			if (v_name_explicit_3279_line_394) {
				com.fasterxml.jackson.databind.PropertyName v_pn_3277_line_394 = pn;
				pojoproperties_collector_1_expr71_line_394 = v_pn_3277_line_394.isEmpty();
			}
			boolean pojoproperties_collector_1_expr70_line_394 = v_name_explicit_3279_line_394
					&& pojoproperties_collector_1_expr71_line_394;
			int PROBE_END_LINE_394 = 397;
			if (pojoproperties_collector_1_expr70_line_394) { // empty String meaning "use default name", here just means "same as field name"
                pn = _propNameFromSimple(implName);
                nameExplicit = false;
            }
            int PROBE_START_LINE_399 = 399;
			com.fasterxml.jackson.databind.PropertyName v_pn_3277_line_399 = pn;
			boolean pojoproperties_collector_1_expr73_line_399 = v_pn_3277_line_399 != null;
			boolean pojoproperties_collector_1_expr72_line_399 = (pojoproperties_collector_1_expr73_line_399);
			int PROBE_END_LINE_399 = 399;
			// having explicit name means that field is visible; otherwise need to check the rules
            boolean visible = pojoproperties_collector_1_expr72_line_399;
            int PROBE_START_LINE_400 = 402;
			boolean v_visible_3280_line_400 = visible;
			boolean pojoproperties_collector_1_expr74_line_400 = !v_visible_3280_line_400;
			int PROBE_END_LINE_400 = 402;
			if (pojoproperties_collector_1_expr74_line_400) {
                int PROBE_START_LINE_401 = 401;
				VisibilityChecker<?> f__visibility_checker_3258_line_401 = _visibilityChecker;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_401 = f;
				boolean pojoproperties_collector_1_expr76_line_401 = f__visibility_checker_3258_line_401
						.isFieldVisible(v_f_3275_line_401);
				int PROBE_END_LINE_401 = 401;
				visible = pojoproperties_collector_1_expr76_line_401;
            }
            int PROBE_START_LINE_404 = 404;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3272_line_404 = ai;
			boolean pojoproperties_collector_1_expr79_line_404 = v_ai_3272_line_404 != null;
			boolean pojoproperties_collector_1_expr78_line_404 = (pojoproperties_collector_1_expr79_line_404);
			boolean pojoproperties_collector_1_expr80_line_404 = true;
			if (pojoproperties_collector_1_expr78_line_404) {
				com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3272_line_404_v1 = ai;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_404 = f;
				pojoproperties_collector_1_expr80_line_404 = v_ai_3272_line_404_v1.hasIgnoreMarker(v_f_3275_line_404);
			}
			boolean pojoproperties_collector_1_expr77_line_404 = pojoproperties_collector_1_expr78_line_404
					&& pojoproperties_collector_1_expr80_line_404;
			int PROBE_END_LINE_404 = 404;
			// and finally, may also have explicit ignoral
            boolean ignored = pojoproperties_collector_1_expr77_line_404;

            int PROBE_START_LINE_407 = 416;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_407 = f;
			boolean pojoproperties_collector_1_expr81_line_407 = v_f_3275_line_407.isTransient();
			int PROBE_END_LINE_407 = 416;
			// 13-May-2015, tatu: Moved from earlier place (AnnotatedClass) in 2.6
            if (pojoproperties_collector_1_expr81_line_407) {
                // 20-May-2016, tatu: as per [databind#1184] explicit annotation should override
                //    "default" `transient`
                if (!hasName) {
                    visible = false;
                    if (transientAsIgnoral) {
                        ignored = true;
                    }
                }
            }
            int PROBE_START_LINE_422 = 424;
			boolean v_prune_final_fields_3273_line_422 = pruneFinalFields;
			boolean pojoproperties_collector_1_expr83_line_422 = true;
			boolean pojoproperties_collector_1_expr85_line_422 = true;
			boolean pojoproperties_collector_1_expr86_line_422 = true;
			if (v_prune_final_fields_3273_line_422) {
				com.fasterxml.jackson.databind.PropertyName v_pn_3277_line_422 = pn;
				boolean pojoproperties_collector_1_expr84_line_422 = v_pn_3277_line_422 == null;
				pojoproperties_collector_1_expr83_line_422 = (pojoproperties_collector_1_expr84_line_422);
				if (pojoproperties_collector_1_expr83_line_422) {
					boolean v_ignored_3281_line_422 = ignored;
					pojoproperties_collector_1_expr85_line_422 = !v_ignored_3281_line_422;
					if (pojoproperties_collector_1_expr85_line_422) {
						com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_422 = f;
						int pojoproperties_collector_1_expr87_line_422 = v_f_3275_line_422.getModifiers();
						pojoproperties_collector_1_expr86_line_422 = Modifier
								.isFinal(pojoproperties_collector_1_expr87_line_422);
					}
				}
			}
			boolean pojoproperties_collector_1_expr82_line_422 = v_prune_final_fields_3273_line_422
					&& pojoproperties_collector_1_expr83_line_422 && pojoproperties_collector_1_expr85_line_422
					&& pojoproperties_collector_1_expr86_line_422;
			int PROBE_END_LINE_422 = 424;
			/* [databind#190]: this is the place to prune final fields, if they are not
             *  to be used as mutators. Must verify they are not explicitly included.
             *  Also: if 'ignored' is set, need to included until a later point, to
             *  avoid losing ignoral information.
             */
            if (pojoproperties_collector_1_expr82_line_422) {
                continue;
            }

            int PROBE_START_LINE_427 = 432;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_427 = f;
			boolean pojoproperties_collector_1_expr88_line_427 = v_f_3275_line_427.hasAnnotation(JsonAnySetter.class);
			int PROBE_END_LINE_427 = 432;
			//if field has annotation @JsonAnySetter
            if(pojoproperties_collector_1_expr88_line_427) {
            	if (_anySetterField == null) {
            		_anySetterField = new LinkedList<AnnotatedMember>();
            	}
            	_anySetterField.add(f);
            }
            int PROBE_START_LINE_433 = 433;
			Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3271_line_433 = props;
			String v_impl_name_3276_line_433 = implName;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder pojoproperties_collector_1_expr91_line_433 = _property(
					p_props_3271_line_433, v_impl_name_3276_line_433);
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3275_line_433 = f;
			com.fasterxml.jackson.databind.PropertyName v_pn_3277_line_433 = pn;
			boolean v_name_explicit_3279_line_433 = nameExplicit;
			boolean v_visible_3280_line_433 = visible;
			boolean v_ignored_3281_line_433 = ignored;
			int PROBE_END_LINE_433 = 433;
			pojoproperties_collector_1_expr91_line_433.addField(v_f_3275_line_433, v_pn_3277_line_433, v_name_explicit_3279_line_433, v_visible_3280_line_433, v_ignored_3281_line_433);
        }
    }

    /**
     * Method for collecting basic information on constructor(s) found
     */
    protected void _addCreators(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_443 = 445;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3257_line_443 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr92_line_443 = f__annotation_introspector_3257_line_443 == null;
		int PROBE_END_LINE_443 = 445;
		// can be null if annotation processing is disabled...
        if (pojoproperties_collector_1_expr92_line_443) {
            return;
        }
        int PROBE_START_LINE_446 = 453;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_446 = _classDef;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> pojoproperties_collector_1_expr93_line_446 = f__class_def_3255_line_446
				.getConstructors();
		int PROBE_END_LINE_446 = 453;
		for (AnnotatedConstructor ctor : pojoproperties_collector_1_expr93_line_446) {
            if (_creatorProperties == null) {
                _creatorProperties = new LinkedList<POJOPropertyBuilder>();
            }
            for (int i = 0, len = ctor.getParameterCount(); i < len; ++i) {
                _addCreatorParam(props, ctor.getParameter(i));
            }
        }
        int PROBE_START_LINE_454 = 461;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_454 = _classDef;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr94_line_454 = f__class_def_3255_line_454
				.getStaticMethods();
		int PROBE_END_LINE_454 = 461;
		for (AnnotatedMethod factory : pojoproperties_collector_1_expr94_line_454) {
            int PROBE_START_LINE_455 = 457;
			LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3285_line_455 = _creatorProperties;
			boolean pojoproperties_collector_1_expr95_line_455 = f__creator_properties_3285_line_455 == null;
			int PROBE_END_LINE_455 = 457;
			if (pojoproperties_collector_1_expr95_line_455) {
                _creatorProperties = new LinkedList<POJOPropertyBuilder>();
            }
            int PROBE_START_LINE_457 = 457;
			boolean FOR_STMT_TOGGLE_LINE_458 = false;
			int PROBE_END_LINE_457 = 457;
			for (int i = 0, len = 0; true;) {
                int PROBE_START_LINE_459 = 459;
				if (!FOR_STMT_TOGGLE_LINE_458) {
					FOR_STMT_TOGGLE_LINE_458 = true;
					i = 0;
					com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_factory_3284_line_458 = factory;
					int pojoproperties_collector_1_expr99_line_458 = v_factory_3284_line_458.getParameterCount();
					len = pojoproperties_collector_1_expr99_line_458;
				} else {
					if (FOR_STMT_TOGGLE_LINE_458) {
						++i;
					} else {
						FOR_STMT_TOGGLE_LINE_458 = true;
					}
				}
				int v_i_3286_line_458 = i;
				int v_len_3287_line_458 = len;
				boolean pojoproperties_collector_1_expr100_line_458 = v_i_3286_line_458 < v_len_3287_line_458;
				if (!(pojoproperties_collector_1_expr100_line_458)) {
					break;
				}
				int PROBE_END_LINE_459 = 459;
				_addCreatorParam(props, factory.getParameter(i));
            }
        }
    }

    /**
     * @since 2.4
     */
    protected void _addCreatorParam(Map<String, POJOPropertyBuilder> props,
            AnnotatedParameter param)
    {
        // JDK 8, paranamer, Scala can give implicit name
        String impl = _annotationIntrospector.findImplicitPropertyName(param);
        if (impl == null) {
            impl = "";
        }
        PropertyName pn = _annotationIntrospector.findNameForDeserialization(param);
        boolean expl = (pn != null && !pn.isEmpty());
        if (!expl) {
            if (impl.isEmpty()) {
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
            pn = PropertyName.construct(impl);
        }

        // shouldn't need to worry about @JsonIgnore, since creators only added
        // if so annotated

        /* 13-May-2015, tatu: We should try to start with implicit name, similar to how
         *   fields and methods work; but unlike those, we don't necessarily have
         *   implicit name to use (pre-Java8 at least). So:
         */
        POJOPropertyBuilder prop = (expl && impl.isEmpty())
                ? _property(props, pn) : _property(props, impl);
        prop.addCtor(param, pn, expl, true, false);
        _creatorProperties.add(prop);
    }
    
    /**
     * Method for collecting basic information on all fields found
     */
    protected void _addMethods(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_510 = 510;
		AnnotationIntrospector f__annotation_introspector_3257_line_510 = _annotationIntrospector;
		int PROBE_END_LINE_510 = 510;
		final AnnotationIntrospector ai = f__annotation_introspector_3257_line_510;
        
        int PROBE_START_LINE_512 = 531;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_512 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr102_line_512 = f__class_def_3255_line_512
				.memberMethods();
		int PROBE_END_LINE_512 = 531;
		for (AnnotatedMethod m : pojoproperties_collector_1_expr102_line_512) {
            /* For methods, handling differs between getters and setters; and
             * we will also only consider entries that either follow the bean
             * naming convention or are explicitly marked: just being visible
             * is not enough (unlike with fields)
             */
            int argCount = m.getParameterCount();
            if (argCount == 0) { // getters (including 'any getter')
            	_addGetterMethod(props, m, ai);
            } else if (argCount == 1) { // setters
            	_addSetterMethod(props, m, ai);
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

    protected void _addGetterMethod(Map<String, POJOPropertyBuilder> props,
            AnnotatedMethod m, AnnotationIntrospector ai)
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
                implName = BeanUtil.okNameForRegularGetter(m, m.getName(), _stdBeanNaming);
            }
            if (implName == null) { // if not, must skip
                implName = BeanUtil.okNameForIsGetter(m, m.getName(), _stdBeanNaming);
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
        _property(props, implName).addGetter(m, pn, nameExplicit, visible, ignore);
    }

    protected void _addSetterMethod(Map<String, POJOPropertyBuilder> props,
            AnnotatedMethod m, AnnotationIntrospector ai)
    {
        String implName; // from naming convention
        boolean visible;
        PropertyName pn = (ai == null) ? null : ai.findNameForDeserialization(m);
        boolean nameExplicit = (pn != null);
        if (!nameExplicit) { // no explicit name; must follow naming convention
            implName = (ai == null) ? null : ai.findImplicitPropertyName(m);
            if (implName == null) {
                implName = BeanUtil.okNameForMutator(m, _mutatorPrefix, _stdBeanNaming);
            }
            if (implName == null) { // if not, must skip
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
        _property(props, implName).addSetter(m, pn, nameExplicit, visible, ignore);
    }
    
    protected void _addInjectables(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_640 = 640;
		AnnotationIntrospector f__annotation_introspector_3257_line_640 = _annotationIntrospector;
		int PROBE_END_LINE_640 = 640;
		final AnnotationIntrospector ai = f__annotation_introspector_3257_line_640;
        int PROBE_START_LINE_641 = 643;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3300_line_641 = ai;
		boolean pojoproperties_collector_1_expr103_line_641 = v_ai_3300_line_641 == null;
		int PROBE_END_LINE_641 = 643;
		if (pojoproperties_collector_1_expr103_line_641) {
            return;
        }
        
        int PROBE_START_LINE_646 = 648;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_646 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperties_collector_1_expr104_line_646 = f__class_def_3255_line_646
				.fields();
		int PROBE_END_LINE_646 = 648;
		// first fields, then methods
        for (AnnotatedField f : pojoproperties_collector_1_expr104_line_646) {
            int PROBE_START_LINE_647 = 647;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_3300_line_647 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3301_line_647 = f;
			Object pojoproperties_collector_1_expr106_line_647 = v_ai_3300_line_647
					.findInjectableValueId(v_f_3301_line_647);
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_3301_line_647_v1 = f;
			int PROBE_END_LINE_647 = 647;
			_doAddInjectable(pojoproperties_collector_1_expr106_line_647, v_f_3301_line_647_v1);
        }
        
        int PROBE_START_LINE_650 = 658;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_650 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr107_line_650 = f__class_def_3255_line_650
				.memberMethods();
		int PROBE_END_LINE_650 = 658;
		for (AnnotatedMethod m : pojoproperties_collector_1_expr107_line_650) {
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
        int PROBE_START_LINE_663 = 665;
		Object p_id_3303_line_663 = id;
		boolean pojoproperties_collector_1_expr108_line_663 = p_id_3303_line_663 == null;
		int PROBE_END_LINE_663 = 665;
		if (pojoproperties_collector_1_expr108_line_663) {
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
     * as ignored.
     */
    protected void _removeUnwantedProperties(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_693 = 693;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3306_line_693 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr110_line_693 = p_props_3306_line_693
				.values();
		Iterator<POJOPropertyBuilder> pojoproperties_collector_1_expr109_line_693 = pojoproperties_collector_1_expr110_line_693
				.iterator();
		int PROBE_END_LINE_693 = 693;
		Iterator<POJOPropertyBuilder> it = pojoproperties_collector_1_expr109_line_693;
        while (true) {
            int PROBE_START_LINE_694 = 694;
			Iterator<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_it_3307_line_694 = it;
			boolean pojoproperties_collector_1_expr111_line_694 = v_it_3307_line_694.hasNext();
			if (!(pojoproperties_collector_1_expr111_line_694)) {
				break;
			}
			int PROBE_END_LINE_694 = 694;
			int PROBE_START_LINE_695 = 695;
			Iterator<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_it_3307_line_695 = it;
			POJOPropertyBuilder pojoproperties_collector_1_expr112_line_695 = v_it_3307_line_695.next();
			int PROBE_END_LINE_695 = 695;
			POJOPropertyBuilder prop = pojoproperties_collector_1_expr112_line_695;

            int PROBE_START_LINE_698 = 701;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3308_line_698 = prop;
			boolean pojoproperties_collector_1_expr114_line_698 = v_prop_3308_line_698.anyVisible();
			boolean pojoproperties_collector_1_expr113_line_698 = !pojoproperties_collector_1_expr114_line_698;
			int PROBE_END_LINE_698 = 701;
			// First: if nothing visible, just remove altogether
            if (pojoproperties_collector_1_expr113_line_698) {
                it.remove();
                continue;
            }
            int PROBE_START_LINE_703 = 715;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3308_line_703 = prop;
			boolean pojoproperties_collector_1_expr115_line_703 = v_prop_3308_line_703.anyIgnorals();
			int PROBE_END_LINE_703 = 715;
			// Otherwise, check ignorals
            if (pojoproperties_collector_1_expr115_line_703) {
                // first: if one or more ignorals, and no explicit markers, remove the whole thing
                if (!prop.isExplicitlyIncluded()) {
                    it.remove();
                    _collectIgnorals(prop.getName());
                    continue;
                }
                // otherwise just remove ones marked to be ignored
                prop.removeIgnored();
                if (!_forSerialization && !prop.couldDeserialize()) {
                    _collectIgnorals(prop.getName());
                }
            }
        }
    }

    /**
     * Method called to further get rid of unwanted individual accessors,
     * based on read/write settings and rules for "pulling in" accessors
     * (or not).
     */
    protected void _removeUnwantedAccessor(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_726 = 726;
		MapperConfig<?> f__config_3251_line_726 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_infer_property_mutators_91_line_726 = MapperFeature.INFER_PROPERTY_MUTATORS;
		boolean pojoproperties_collector_1_expr116_line_726 = f__config_3251_line_726
				.isEnabled(q_infer_property_mutators_91_line_726);
		int PROBE_END_LINE_726 = 726;
		final boolean inferMutators = pojoproperties_collector_1_expr116_line_726;
        int PROBE_START_LINE_727 = 727;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3309_line_727 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr118_line_727 = p_props_3309_line_727
				.values();
		Iterator<POJOPropertyBuilder> pojoproperties_collector_1_expr117_line_727 = pojoproperties_collector_1_expr118_line_727
				.iterator();
		int PROBE_END_LINE_727 = 727;
		Iterator<POJOPropertyBuilder> it = pojoproperties_collector_1_expr117_line_727;

        while (true) {
            int PROBE_START_LINE_729 = 729;
			Iterator<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_it_3311_line_729 = it;
			boolean pojoproperties_collector_1_expr119_line_729 = v_it_3311_line_729.hasNext();
			if (!(pojoproperties_collector_1_expr119_line_729)) {
				break;
			}
			int PROBE_END_LINE_729 = 729;
			int PROBE_START_LINE_730 = 730;
			Iterator<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_it_3311_line_730 = it;
			POJOPropertyBuilder pojoproperties_collector_1_expr120_line_730 = v_it_3311_line_730.next();
			int PROBE_END_LINE_730 = 730;
			POJOPropertyBuilder prop = pojoproperties_collector_1_expr120_line_730;
            int PROBE_START_LINE_732 = 732;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3312_line_732 = prop;
			boolean v_infer_mutators_3310_line_732 = inferMutators;
			Access pojoproperties_collector_1_expr121_line_732 = v_prop_3312_line_732
					.removeNonVisible(v_infer_mutators_3310_line_732);
			int PROBE_END_LINE_732 = 732;
			// 26-Jan-2017, tatu: [databind#935]: need to denote removal of
            Access acc = pojoproperties_collector_1_expr121_line_732;
            int PROBE_START_LINE_733 = 735;
			boolean f__for_serialization_3253_line_733 = _forSerialization;
			boolean pojoproperties_collector_1_expr123_line_733 = !f__for_serialization_3253_line_733;
			boolean pojoproperties_collector_1_expr124_line_733 = true;
			if (pojoproperties_collector_1_expr123_line_733) {
				com.fasterxml.jackson.annotation.JsonProperty.Access v_acc_3313_line_733 = acc;
				com.fasterxml.jackson.annotation.JsonProperty.Access q_read_only_92_line_733 = Access.READ_ONLY;
				boolean pojoproperties_collector_1_expr125_line_733 = v_acc_3313_line_733 == q_read_only_92_line_733;
				pojoproperties_collector_1_expr124_line_733 = (pojoproperties_collector_1_expr125_line_733);
			}
			boolean pojoproperties_collector_1_expr122_line_733 = pojoproperties_collector_1_expr123_line_733
					&& pojoproperties_collector_1_expr124_line_733;
			int PROBE_END_LINE_733 = 735;
			if (pojoproperties_collector_1_expr122_line_733) {
                _collectIgnorals(prop.getName());
            }
        }
    }

    /**
     * Helper method called to add explicitly ignored properties to a list
     * of known ignored properties; this helps in proper reporting of
     * errors.
     */
    private void _collectIgnorals(String name)
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

    protected void _renameProperties(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_763 = 763;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3315_line_763 = props;
		Set<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> pojoproperties_collector_1_expr127_line_763 = p_props_3315_line_763
				.entrySet();
		Iterator<Map.Entry<String, POJOPropertyBuilder>> pojoproperties_collector_1_expr126_line_763 = pojoproperties_collector_1_expr127_line_763
				.iterator();
		int PROBE_END_LINE_763 = 763;
		// With renaming need to do in phases: first, find properties to rename
        Iterator<Map.Entry<String,POJOPropertyBuilder>> it = pojoproperties_collector_1_expr126_line_763;
        LinkedList<POJOPropertyBuilder> renamed = null;
        while (true) {
            int PROBE_START_LINE_765 = 765;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_3316_line_765 = it;
			boolean pojoproperties_collector_1_expr128_line_765 = v_it_3316_line_765.hasNext();
			if (!(pojoproperties_collector_1_expr128_line_765)) {
				break;
			}
			int PROBE_END_LINE_765 = 765;
			int PROBE_START_LINE_766 = 766;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_3316_line_766 = it;
			Map.Entry<String, POJOPropertyBuilder> pojoproperties_collector_1_expr129_line_766 = v_it_3316_line_766
					.next();
			int PROBE_END_LINE_766 = 766;
			Map.Entry<String, POJOPropertyBuilder> entry = pojoproperties_collector_1_expr129_line_766;
            int PROBE_START_LINE_767 = 767;
			java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_entry_3318_line_767 = entry;
			POJOPropertyBuilder pojoproperties_collector_1_expr130_line_767 = v_entry_3318_line_767.getValue();
			int PROBE_END_LINE_767 = 767;
			POJOPropertyBuilder prop = pojoproperties_collector_1_expr130_line_767;

            int PROBE_START_LINE_769 = 769;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3319_line_769 = prop;
			Collection<PropertyName> pojoproperties_collector_1_expr131_line_769 = v_prop_3319_line_769
					.findExplicitNames();
			int PROBE_END_LINE_769 = 769;
			Collection<PropertyName> l = pojoproperties_collector_1_expr131_line_769;

            int PROBE_START_LINE_772 = 774;
			Collection<com.fasterxml.jackson.databind.PropertyName> v_l_3320_line_772 = l;
			boolean pojoproperties_collector_1_expr132_line_772 = v_l_3320_line_772.isEmpty();
			int PROBE_END_LINE_772 = 774;
			// no explicit names? Implicit one is fine as is
            if (pojoproperties_collector_1_expr132_line_772) {
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
        
        int PROBE_START_LINE_802 = 814;
		LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_renamed_3317_line_802 = renamed;
		boolean pojoproperties_collector_1_expr133_line_802 = v_renamed_3317_line_802 != null;
		int PROBE_END_LINE_802 = 814;
		// and if any were renamed, merge back in...
        if (pojoproperties_collector_1_expr133_line_802) {
            for (POJOPropertyBuilder prop : renamed) {
                String name = prop.getName();
                POJOPropertyBuilder old = props.get(name);
                if (old == null) {
                    props.put(name, prop);
                } else {
                    old.addAll(prop);
                }
                // replace the creatorProperty too, if there is one
                _updateCreatorProperty(prop, _creatorProperties);
            }
        }
    }

    protected void _renameUsing(Map<String, POJOPropertyBuilder> propMap,
            PropertyNamingStrategy naming)
    {
        POJOPropertyBuilder[] props = propMap.values().toArray(new POJOPropertyBuilder[propMap.size()]);
        propMap.clear();
        for (POJOPropertyBuilder prop : props) {
            PropertyName fullName = prop.getFullName();
            String rename = null;
            // As per [databind#428] need to skip renaming if property has
            // explicitly defined name, unless feature  is enabled
            if (!prop.isExplicitlyNamed() || _config.isEnabled(MapperFeature.ALLOW_EXPLICIT_PROPERTY_RENAMING)) {
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
            POJOPropertyBuilder old = propMap.get(simpleName);
            if (old == null) {
                propMap.put(simpleName, prop);
            } else {
                old.addAll(prop);
            }
            // replace the creatorProperty too, if there is one
            _updateCreatorProperty(prop, _creatorProperties);
        }
    }

    protected void _renameWithWrappers(Map<String, POJOPropertyBuilder> props)
    {
        /* 11-Sep-2012, tatu: To support 'MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME',
         *   need another round of renaming...
         */
        Iterator<Map.Entry<String,POJOPropertyBuilder>> it = props.entrySet().iterator();
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
                POJOPropertyBuilder old = props.get(name);
                if (old == null) {
                    props.put(name, prop);
                } else {
                    old.addAll(prop);
                }
            }
        }
    }

    /*
    /**********************************************************
    /* Overridable internal methods, sorting, other stuff
    /**********************************************************
     */
    
    /* First, order by [JACKSON-90] (explicit ordering and/or alphabetic)
     * and then for [JACKSON-170] (implicitly order creator properties before others)
     */
    protected void _sortProperties(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_926 = 926;
		AnnotationIntrospector f__annotation_introspector_3257_line_926 = _annotationIntrospector;
		int PROBE_END_LINE_926 = 926;
		// Then how about explicit ordering?
        AnnotationIntrospector intr = f__annotation_introspector_3257_line_926;
        int PROBE_START_LINE_927 = 927;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3325_line_927 = intr;
		boolean pojoproperties_collector_1_expr137_line_927 = v_intr_3325_line_927 == null;
		boolean pojoproperties_collector_1_expr135_line_927 = (pojoproperties_collector_1_expr137_line_927);
		Boolean pojoproperties_collector_1_expr136_line_927 = null;
		if (!pojoproperties_collector_1_expr135_line_927) {
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3325_line_927_v1 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_927 = _classDef;
			pojoproperties_collector_1_expr136_line_927 = v_intr_3325_line_927_v1
					.findSerializationSortAlphabetically((Annotated) f__class_def_3255_line_927);
		}
		Boolean pojoproperties_collector_1_expr134_line_927 = pojoproperties_collector_1_expr135_line_927
				? null
				: pojoproperties_collector_1_expr136_line_927;
		int PROBE_END_LINE_927 = 927;
		Boolean alpha = pojoproperties_collector_1_expr134_line_927;
        boolean sort = false;
        
        int PROBE_START_LINE_930 = 934;
		Boolean v_alpha_3326_line_930 = alpha;
		boolean pojoproperties_collector_1_expr139_line_930 = v_alpha_3326_line_930 == null;
		int PROBE_END_LINE_930 = 934;
		if (pojoproperties_collector_1_expr139_line_930) {
            int PROBE_START_LINE_931 = 931;
			MapperConfig<?> f__config_3251_line_931 = _config;
			boolean pojoproperties_collector_1_expr141_line_931 = f__config_3251_line_931
					.shouldSortPropertiesAlphabetically();
			int PROBE_END_LINE_931 = 931;
			sort = pojoproperties_collector_1_expr141_line_931;
        } else {
            sort = alpha.booleanValue();
        }
        int PROBE_START_LINE_935 = 935;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3325_line_935 = intr;
		boolean pojoproperties_collector_1_expr145_line_935 = v_intr_3325_line_935 == null;
		boolean pojoproperties_collector_1_expr143_line_935 = (pojoproperties_collector_1_expr145_line_935);
		String[] pojoproperties_collector_1_expr144_line_935 = null;
		if (!pojoproperties_collector_1_expr143_line_935) {
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3325_line_935_v1 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_3255_line_935 = _classDef;
			pojoproperties_collector_1_expr144_line_935 = v_intr_3325_line_935_v1
					.findSerializationPropertyOrder(f__class_def_3255_line_935);
		}
		String[] pojoproperties_collector_1_expr142_line_935 = pojoproperties_collector_1_expr143_line_935
				? null
				: pojoproperties_collector_1_expr144_line_935;
		int PROBE_END_LINE_935 = 935;
		String[] propertyOrder = pojoproperties_collector_1_expr142_line_935;
        
        int PROBE_START_LINE_938 = 940;
		boolean v_sort_3327_line_938 = sort;
		boolean pojoproperties_collector_1_expr147_line_938 = !v_sort_3327_line_938;
		boolean pojoproperties_collector_1_expr148_line_938 = true;
		boolean pojoproperties_collector_1_expr150_line_938 = true;
		if (pojoproperties_collector_1_expr147_line_938) {
			LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3285_line_938 = _creatorProperties;
			boolean pojoproperties_collector_1_expr149_line_938 = f__creator_properties_3285_line_938 == null;
			pojoproperties_collector_1_expr148_line_938 = (pojoproperties_collector_1_expr149_line_938);
			if (pojoproperties_collector_1_expr148_line_938) {
				String[] v_property_order_3328_line_938 = propertyOrder;
				boolean pojoproperties_collector_1_expr151_line_938 = v_property_order_3328_line_938 == null;
				pojoproperties_collector_1_expr150_line_938 = (pojoproperties_collector_1_expr151_line_938);
			}
		}
		boolean pojoproperties_collector_1_expr146_line_938 = pojoproperties_collector_1_expr147_line_938
				&& pojoproperties_collector_1_expr148_line_938 && pojoproperties_collector_1_expr150_line_938;
		int PROBE_END_LINE_938 = 940;
		// no sorting? no need to shuffle, then
        if (pojoproperties_collector_1_expr146_line_938) {
            return;
        }
        int PROBE_START_LINE_941 = 941;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3324_line_941 = props;
		int pojoproperties_collector_1_expr152_line_941 = p_props_3324_line_941.size();
		int PROBE_END_LINE_941 = 941;
		int size = pojoproperties_collector_1_expr152_line_941;
        Map<String, POJOPropertyBuilder> all = null;
        int PROBE_START_LINE_944 = 948;
		boolean v_sort_3327_line_944 = sort;
		int PROBE_END_LINE_944 = 948;
		// Need to (re)sort alphabetically?
        if (v_sort_3327_line_944) {
            all = new TreeMap<String,POJOPropertyBuilder>();
        } else {
            int PROBE_START_LINE_947 = 947;
			int v_size_3329_line_947 = size;
			int v_size_3329_line_947_v1 = size;
			int pojoproperties_collector_1_expr155_line_947 = v_size_3329_line_947 + v_size_3329_line_947_v1;
			int PROBE_END_LINE_947 = 947;
			all = new LinkedHashMap<String,POJOPropertyBuilder>(pojoproperties_collector_1_expr155_line_947);
        }

        int PROBE_START_LINE_950 = 952;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3324_line_950 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr156_line_950 = p_props_3324_line_950
				.values();
		int PROBE_END_LINE_950 = 952;
		for (POJOPropertyBuilder prop : pojoproperties_collector_1_expr156_line_950) {
            int PROBE_START_LINE_951 = 951;
			Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_all_3330_line_951 = all;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3331_line_951 = prop;
			String pojoproperties_collector_1_expr158_line_951 = v_prop_3331_line_951.getName();
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3331_line_951_v1 = prop;
			int PROBE_END_LINE_951 = 951;
			v_all_3330_line_951.put(pojoproperties_collector_1_expr158_line_951, v_prop_3331_line_951_v1);
        }
        int PROBE_START_LINE_953 = 953;
		int v_size_3329_line_953 = size;
		int v_size_3329_line_953_v1 = size;
		int pojoproperties_collector_1_expr160_line_953 = v_size_3329_line_953 + v_size_3329_line_953_v1;
		int PROBE_END_LINE_953 = 953;
		Map<String,POJOPropertyBuilder> ordered = new LinkedHashMap<String,POJOPropertyBuilder>(pojoproperties_collector_1_expr160_line_953);
        int PROBE_START_LINE_955 = 972;
		String[] v_property_order_3328_line_955 = propertyOrder;
		boolean pojoproperties_collector_1_expr161_line_955 = v_property_order_3328_line_955 != null;
		int PROBE_END_LINE_955 = 972;
		// Ok: primarily by explicit order
        if (pojoproperties_collector_1_expr161_line_955) {
            for (String name : propertyOrder) {
                POJOPropertyBuilder w = all.get(name);
                if (w == null) { // will also allow use of "implicit" names for sorting
                    for (POJOPropertyBuilder prop : props.values()) {
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
        int PROBE_START_LINE_974 = 999;
		LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3285_line_974 = _creatorProperties;
		boolean pojoproperties_collector_1_expr162_line_974 = f__creator_properties_3285_line_974 != null;
		int PROBE_END_LINE_974 = 999;
		// And secondly by sorting Creator properties before other unordered properties
        if (pojoproperties_collector_1_expr162_line_974) {
            /* As per [databind#311], this is bit delicate; but if alphabetic ordering
             * is mandated, at least ensure creator properties are in alphabetic
             * order. Related question of creator vs non-creator is punted for now,
             * so creator properties still fully predate non-creator ones.
             */
            Collection<POJOPropertyBuilder> cr = null;
            int PROBE_START_LINE_981 = 990;
			boolean v_sort_3327_line_981 = sort;
			int PROBE_END_LINE_981 = 990;
			if (v_sort_3327_line_981) {
                TreeMap<String, POJOPropertyBuilder> sorted =
                        new TreeMap<String,POJOPropertyBuilder>();
                for (POJOPropertyBuilder prop : _creatorProperties) {
                    sorted.put(prop.getName(), prop);
                }
                cr = sorted.values();
            } else {
                int PROBE_START_LINE_989 = 989;
				LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_3285_line_989 = _creatorProperties;
				int PROBE_END_LINE_989 = 989;
				cr = f__creator_properties_3285_line_989;
            }
            int PROBE_START_LINE_991 = 998;
			Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_cr_3333_line_991 = cr;
			int PROBE_END_LINE_991 = 998;
			for (POJOPropertyBuilder prop : v_cr_3333_line_991) {
                // 16-Jan-2016, tatu: Related to [databind#1317], make sure not to accidentally
                //    add back pruned creator properties!
                String name = prop.getName();
                if (all.containsKey(name)) {
                    ordered.put(name, prop);
                }
            }
        }
        int PROBE_START_LINE_1001 = 1001;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_ordered_3332_line_1001 = ordered;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_all_3330_line_1001 = all;
		int PROBE_END_LINE_1001 = 1001;
		// And finally whatever is left (trying to put again will not change ordering)
        v_ordered_3332_line_1001.putAll(v_all_3330_line_1001);
        
        int PROBE_START_LINE_1003 = 1003;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3324_line_1003 = props;
		int PROBE_END_LINE_1003 = 1003;
		p_props_3324_line_1003.clear();
        int PROBE_START_LINE_1004 = 1004;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3324_line_1004 = props;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_ordered_3332_line_1004 = ordered;
		int PROBE_END_LINE_1004 = 1004;
		p_props_3324_line_1004.putAll(v_ordered_3332_line_1004);
    }        

    /*
    /**********************************************************
    /* Internal methods; helpers
    /**********************************************************
     */

    protected void reportProblem(String msg) {
        throw new IllegalArgumentException("Problem with definition of "+_classDef+": "+msg);
    }

    protected POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> props,
            PropertyName name) {
        return _property(props, name.getSimpleName());
    }
    
    // !!! TODO: deprecate, require use of PropertyName
    protected POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> props,
            String implName)
    {
        int PROBE_START_LINE_1026 = 1026;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3338_line_1026 = props;
		String p_impl_name_3339_line_1026 = implName;
		POJOPropertyBuilder pojoproperties_collector_1_expr167_line_1026 = p_props_3338_line_1026
				.get(p_impl_name_3339_line_1026);
		int PROBE_END_LINE_1026 = 1026;
		POJOPropertyBuilder prop = pojoproperties_collector_1_expr167_line_1026;
        int PROBE_START_LINE_1027 = 1031;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3340_line_1027 = prop;
		boolean pojoproperties_collector_1_expr168_line_1027 = v_prop_3340_line_1027 == null;
		int PROBE_END_LINE_1027 = 1031;
		if (pojoproperties_collector_1_expr168_line_1027) {
            int PROBE_START_LINE_1028 = 1029;
			MapperConfig<?> f__config_3251_line_1028 = _config;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3257_line_1028 = _annotationIntrospector;
			boolean f__for_serialization_3253_line_1028 = _forSerialization;
			int PROBE_END_LINE_1028 = 1029;
			prop = new POJOPropertyBuilder(f__config_3251_line_1028, f__annotation_introspector_3257_line_1028, f__for_serialization_3253_line_1028,
                    PropertyName.construct(implName));
            int PROBE_START_LINE_1030 = 1030;
			Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_3338_line_1030 = props;
			String p_impl_name_3339_line_1030 = implName;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3340_line_1030 = prop;
			int PROBE_END_LINE_1030 = 1030;
			p_props_3338_line_1030.put(p_impl_name_3339_line_1030, v_prop_3340_line_1030);
        }
        int PROBE_START_LINE_1032 = 1032;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_3340_line_1032 = prop;
		int PROBE_END_LINE_1032 = 1032;
		return v_prop_3340_line_1032;
    }

    private PropertyNamingStrategy _findNamingStrategy()
    {
        int PROBE_START_LINE_1037 = 1038;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3257_line_1037 = _annotationIntrospector;
		boolean pojoproperties_collector_1_expr176_line_1037 = f__annotation_introspector_3257_line_1037 == null;
		boolean pojoproperties_collector_1_expr174_line_1037 = (pojoproperties_collector_1_expr176_line_1037);
		Object pojoproperties_collector_1_expr173_line_1037 = pojoproperties_collector_1_expr174_line_1037
				? null
				: _annotationIntrospector.findNamingStrategy(_classDef);
		int PROBE_END_LINE_1037 = 1038;
		Object namingDef = pojoproperties_collector_1_expr173_line_1037;
        int PROBE_START_LINE_1039 = 1041;
		Object v_naming_def_3341_line_1039 = namingDef;
		boolean pojoproperties_collector_1_expr177_line_1039 = v_naming_def_3341_line_1039 == null;
		int PROBE_END_LINE_1039 = 1041;
		if (pojoproperties_collector_1_expr177_line_1039) {
            int PROBE_START_LINE_1040 = 1040;
			MapperConfig<?> f__config_3251_line_1040 = _config;
			com.fasterxml.jackson.databind.PropertyNamingStrategy pojoproperties_collector_1_expr178_line_1040 = f__config_3251_line_1040
					.getPropertyNamingStrategy();
			int PROBE_END_LINE_1040 = 1040;
			return pojoproperties_collector_1_expr178_line_1040;
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
        // 09-Nov-2015, tatu: Need to consider pseudo-value of STD, which means "use default"
        if (namingClass == PropertyNamingStrategy.class) {
            return null;
        }
        
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
