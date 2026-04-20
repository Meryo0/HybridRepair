package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Modifier;
import java.util.*;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

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
import com.fasterxml.jackson.annotation.JacksonInject.Value;
import java.util.LinkedHashMap;
import java.util.HashSet;
import com.fasterxml.jackson.databind.MapperFeature;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
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
     * @since 2.9
     */
    protected final boolean _useAnnotations;

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

    protected LinkedList<POJOPropertyBuilder> _creatorProperties;
    
    protected LinkedList<AnnotatedMember> _anyGetters;

    protected LinkedList<AnnotatedMethod> _anySetters;
    
    protected LinkedList<AnnotatedMember> _anySetterField;

    /**
     * Method(s) marked with 'JsonValue' annotation
     *<p>
     * NOTE: before 2.9, was `AnnotatedMethod`; with 2.9 allows fields too
     */
    protected LinkedList<AnnotatedMember> _jsonValueAccessors;

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
        int PROBE_START_LINE_129 = 129;
		MapperConfig<?> p_config_4147_line_129 = config;
		int PROBE_END_LINE_129 = 129;
		_config = p_config_4147_line_129;
        int PROBE_START_LINE_130 = 130;
		MapperConfig<?> p_config_4147_line_130 = config;
		com.fasterxml.jackson.databind.MapperFeature q_use_std_bean_naming_121_line_130 = MapperFeature.USE_STD_BEAN_NAMING;
		boolean pojoproperties_collector_1_expr3_line_130 = p_config_4147_line_130
				.isEnabled(q_use_std_bean_naming_121_line_130);
		int PROBE_END_LINE_130 = 130;
		_stdBeanNaming = pojoproperties_collector_1_expr3_line_130;
        int PROBE_START_LINE_131 = 131;
		boolean p_for_serialization_4148_line_131 = forSerialization;
		int PROBE_END_LINE_131 = 131;
		_forSerialization = p_for_serialization_4148_line_131;
        int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.JavaType p_type_4149_line_132 = type;
		int PROBE_END_LINE_132 = 132;
		_type = p_type_4149_line_132;
        int PROBE_START_LINE_133 = 133;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass p_class_def_4150_line_133 = classDef;
		int PROBE_END_LINE_133 = 133;
		_classDef = p_class_def_4150_line_133;
        int PROBE_START_LINE_134 = 134;
		String p_mutator_prefix_4151_line_134 = mutatorPrefix;
		boolean pojoproperties_collector_1_expr10_line_134 = p_mutator_prefix_4151_line_134 == null;
		boolean pojoproperties_collector_1_expr9_line_134 = (pojoproperties_collector_1_expr10_line_134);
		String p_mutator_prefix_4151_line_134_v1 = null;
		if (!pojoproperties_collector_1_expr9_line_134) {
			p_mutator_prefix_4151_line_134_v1 = mutatorPrefix;
		}
		String pojoproperties_collector_1_expr8_line_134 = pojoproperties_collector_1_expr9_line_134
				? "set"
				: p_mutator_prefix_4151_line_134_v1;
		int PROBE_END_LINE_134 = 134;
		_mutatorPrefix = pojoproperties_collector_1_expr8_line_134;
        int PROBE_START_LINE_135 = 141;
		MapperConfig<?> p_config_4147_line_135 = config;
		boolean pojoproperties_collector_1_expr11_line_135 = p_config_4147_line_135.isAnnotationProcessingEnabled();
		int PROBE_END_LINE_135 = 141;
		if (pojoproperties_collector_1_expr11_line_135) {
            _useAnnotations = true;
            int PROBE_START_LINE_137 = 137;
			MapperConfig<?> f__config_4152_line_137 = _config;
			com.fasterxml.jackson.databind.AnnotationIntrospector pojoproperties_collector_1_expr14_line_137 = f__config_4152_line_137
					.getAnnotationIntrospector();
			int PROBE_END_LINE_137 = 137;
			_annotationIntrospector = pojoproperties_collector_1_expr14_line_137;
        } else {
            _useAnnotations = false;
            _annotationIntrospector = AnnotationIntrospector.nopInstance();
        }
        int PROBE_START_LINE_142 = 143;
		MapperConfig<?> f__config_4152_line_142 = _config;
		com.fasterxml.jackson.databind.JavaType p_type_4149_line_142 = type;
		Class<?> pojoproperties_collector_1_expr17_line_142 = p_type_4149_line_142.getRawClass();
		VisibilityChecker<?> pojoproperties_collector_1_expr16_line_142 = f__config_4152_line_142
				.getDefaultVisibilityChecker(pojoproperties_collector_1_expr17_line_142, classDef);
		int PROBE_END_LINE_142 = 143;
		_visibilityChecker = pojoproperties_collector_1_expr16_line_142;
    }

    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    public MapperConfig<?> getConfig() {
        int PROBE_START_LINE_153 = 153;
		MapperConfig<?> f__config_4152_line_153 = _config;
		int PROBE_END_LINE_153 = 153;
		return f__config_4152_line_153;
    }

    public JavaType getType() {
        int PROBE_START_LINE_157 = 157;
		com.fasterxml.jackson.databind.JavaType f__type_4155_line_157 = _type;
		int PROBE_END_LINE_157 = 157;
		return f__type_4155_line_157;
    }
    
    public AnnotatedClass getClassDef() {
        int PROBE_START_LINE_161 = 161;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_161 = _classDef;
		int PROBE_END_LINE_161 = 161;
		return f__class_def_4156_line_161;
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return _annotationIntrospector;
    }
    
    public List<BeanPropertyDefinition> getProperties() {
        int PROBE_START_LINE_170 = 170;
		Map<String, POJOPropertyBuilder> pojoproperties_collector_1_expr18_line_170 = getPropertyMap();
		int PROBE_END_LINE_170 = 170;
		// make sure we return a copy, so caller can remove entries if need be:
        Map<String, POJOPropertyBuilder> props = pojoproperties_collector_1_expr18_line_170;
        int PROBE_START_LINE_171 = 171;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4161_line_171 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr20_line_171 = v_props_4161_line_171
				.values();
		int PROBE_END_LINE_171 = 171;
		return new ArrayList<BeanPropertyDefinition>(pojoproperties_collector_1_expr20_line_171);
    }

    public Map<Object, AnnotatedMember> getInjectables() {
        int PROBE_START_LINE_175 = 177;
		boolean f__collected_4162_line_175 = _collected;
		boolean pojoproperties_collector_1_expr21_line_175 = !f__collected_4162_line_175;
		int PROBE_END_LINE_175 = 177;
		if (pojoproperties_collector_1_expr21_line_175) {
            collectAll();
        }
        int PROBE_START_LINE_178 = 178;
		LinkedHashMap<Object, com.fasterxml.jackson.databind.introspect.AnnotatedMember> f__injectables_4163_line_178 = _injectables;
		int PROBE_END_LINE_178 = 178;
		return f__injectables_4163_line_178;
    }

    @Deprecated // since 2.9
    public AnnotatedMethod getJsonValueMethod() {
        AnnotatedMember m = getJsonValueAccessor();
        if (m instanceof AnnotatedMethod) {
            return (AnnotatedMethod) m;
        }
        return null;
    }

    /**
     * @since 2.9
     */
    public AnnotatedMember getJsonValueAccessor()
    {
        if (!_collected) {
            collectAll();
        }
        // If @JsonValue defined, must have a single one
        if (_jsonValueAccessors != null) {
            if (_jsonValueAccessors.size() > 1) {
                reportProblem("Multiple 'as-value' properties defined (%s vs %s)",
                        _jsonValueAccessors.get(0),
                        _jsonValueAccessors.get(1));
            }
            // otherwise we won't greatly care
            return _jsonValueAccessors.get(0);
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
                reportProblem("Multiple 'any-getters' defined (%s vs %s)",
                        _anyGetters.get(0), _anyGetters.get(1));
            }
            return _anyGetters.getFirst();
        }        
        return null;
    }

    public AnnotatedMember getAnySetterField()
    {
        int PROBE_START_LINE_228 = 230;
		boolean f__collected_4162_line_228 = _collected;
		boolean pojoproperties_collector_1_expr22_line_228 = !f__collected_4162_line_228;
		int PROBE_END_LINE_228 = 230;
		if (pojoproperties_collector_1_expr22_line_228) {
            collectAll();
        }
        int PROBE_START_LINE_231 = 237;
		LinkedList<com.fasterxml.jackson.databind.introspect.AnnotatedMember> f__any_setter_field_4164_line_231 = _anySetterField;
		boolean pojoproperties_collector_1_expr23_line_231 = f__any_setter_field_4164_line_231 != null;
		int PROBE_END_LINE_231 = 237;
		if (pojoproperties_collector_1_expr23_line_231) {
            if (_anySetterField.size() > 1) {
                reportProblem("Multiple 'any-setter' fields defined (%s vs %s)",
                        _anySetterField.get(0), _anySetterField.get(1));
            }
            return _anySetterField.getFirst();
        }
        return null;
    }

    public AnnotatedMethod getAnySetterMethod()
    {
        int PROBE_START_LINE_243 = 245;
		boolean f__collected_4162_line_243 = _collected;
		boolean pojoproperties_collector_1_expr24_line_243 = !f__collected_4162_line_243;
		int PROBE_END_LINE_243 = 245;
		if (pojoproperties_collector_1_expr24_line_243) {
            collectAll();
        }
        int PROBE_START_LINE_246 = 252;
		LinkedList<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__any_setters_4165_line_246 = _anySetters;
		boolean pojoproperties_collector_1_expr25_line_246 = f__any_setters_4165_line_246 != null;
		int PROBE_END_LINE_246 = 252;
		if (pojoproperties_collector_1_expr25_line_246) {
            if (_anySetters.size() > 1) {
                reportProblem("Multiple 'any-setter' methods defined (%s vs %s)",
                        _anySetters.get(0), _anySetters.get(1));
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
        int PROBE_START_LINE_261 = 261;
		HashSet<String> f__ignored_property_names_4166_line_261 = _ignoredPropertyNames;
		int PROBE_END_LINE_261 = 261;
		return f__ignored_property_names_4166_line_261;
    }

    /**
     * Accessor to find out whether type specified requires inclusion
     * of Object Identifier.
     */
    public ObjectIdInfo getObjectIdInfo()
    {
        int PROBE_START_LINE_270 = 270;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4159_line_270 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_270 = _classDef;
		ObjectIdInfo pojoproperties_collector_1_expr26_line_270 = f__annotation_introspector_4159_line_270
				.findObjectIdInfo(f__class_def_4156_line_270);
		int PROBE_END_LINE_270 = 270;
		ObjectIdInfo info = pojoproperties_collector_1_expr26_line_270;
        int PROBE_START_LINE_271 = 273;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_4167_line_271 = info;
		boolean pojoproperties_collector_1_expr27_line_271 = v_info_4167_line_271 != null;
		int PROBE_END_LINE_271 = 273;
		if (pojoproperties_collector_1_expr27_line_271) { // 2.1: may also have different defaults for refs:
            info = _annotationIntrospector.findObjectReferenceInfo(_classDef, info);
        }
        int PROBE_START_LINE_274 = 274;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_4167_line_274 = info;
		int PROBE_END_LINE_274 = 274;
		return v_info_4167_line_274;
    }

    /**
     * Method for finding Class to use as POJO builder, if any.
     */
    public Class<?> findPOJOBuilderClass() {
        return _annotationIntrospector.findPOJOBuilder(_classDef);
    }
    
    // for unit tests:
    protected Map<String, POJOPropertyBuilder> getPropertyMap() {
        int PROBE_START_LINE_286 = 288;
		boolean f__collected_4162_line_286 = _collected;
		boolean pojoproperties_collector_1_expr28_line_286 = !f__collected_4162_line_286;
		int PROBE_END_LINE_286 = 288;
		if (pojoproperties_collector_1_expr28_line_286) {
            collectAll();
        }
        int PROBE_START_LINE_289 = 289;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__properties_4168_line_289 = _properties;
		int PROBE_END_LINE_289 = 289;
		return f__properties_4168_line_289;
    }

    /*
    /**********************************************************
    /* Public API: main-level collection
    /**********************************************************
     */

    /**
     * Internal method that will collect actual property information.
     *
     * @since 2.6
     */
    protected void collectAll()
    {
        LinkedHashMap<String, POJOPropertyBuilder> props = new LinkedHashMap<String, POJOPropertyBuilder>();

        int PROBE_START_LINE_308 = 308;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_308 = props;
		int PROBE_END_LINE_308 = 308;
		// First: gather basic data
        _addFields(v_props_4169_line_308);
        int PROBE_START_LINE_309 = 309;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_309 = props;
		int PROBE_END_LINE_309 = 309;
		_addMethods(v_props_4169_line_309);
        int PROBE_START_LINE_312 = 314;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_312 = _classDef;
		boolean pojoproperties_collector_1_expr34_line_312 = f__class_def_4156_line_312.isNonStaticInnerClass();
		boolean pojoproperties_collector_1_expr33_line_312 = !pojoproperties_collector_1_expr34_line_312;
		int PROBE_END_LINE_312 = 314;
		// 25-Jan-2016, tatu: Avoid introspecting (constructor-)creators for non-static
        //    inner classes, see [databind#1502]
        if (pojoproperties_collector_1_expr33_line_312) {
            int PROBE_START_LINE_313 = 313;
			LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_313 = props;
			int PROBE_END_LINE_313 = 313;
			_addCreators(v_props_4169_line_313);
        }
        int PROBE_START_LINE_315 = 315;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_315 = props;
		int PROBE_END_LINE_315 = 315;
		_addInjectables(v_props_4169_line_315);

        int PROBE_START_LINE_319 = 319;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_319 = props;
		int PROBE_END_LINE_319 = 319;
		// Remove ignored properties, first; this MUST precede annotation merging
        // since logic relies on knowing exactly which accessor has which annotation
        _removeUnwantedProperties(v_props_4169_line_319);
        int PROBE_START_LINE_321 = 321;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_321 = props;
		int PROBE_END_LINE_321 = 321;
		// and then remove unneeded accessors (wrt read-only, read-write)
        _removeUnwantedAccessor(v_props_4169_line_321);

        int PROBE_START_LINE_324 = 324;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_324 = props;
		int PROBE_END_LINE_324 = 324;
		// Rename remaining properties
        _renameProperties(v_props_4169_line_324);

        int PROBE_START_LINE_329 = 331;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_329 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr40_line_329 = v_props_4169_line_329
				.values();
		int PROBE_END_LINE_329 = 331;
		// then merge annotations, to simplify further processing
        // 26-Sep-2017, tatu: Before 2.9.2 was done earlier but that prevented some of
        //   annotations from getting properly merged
        for (POJOPropertyBuilder property : pojoproperties_collector_1_expr40_line_329) {
            int PROBE_START_LINE_330 = 330;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_property_4170_line_330 = property;
			boolean f__for_serialization_4154_line_330 = _forSerialization;
			int PROBE_END_LINE_330 = 330;
			v_property_4170_line_330.mergeAnnotations(f__for_serialization_4154_line_330);
        }

        int PROBE_START_LINE_334 = 334;
		PropertyNamingStrategy pojoproperties_collector_1_expr42_line_334 = _findNamingStrategy();
		int PROBE_END_LINE_334 = 334;
		// And use custom naming strategy, if applicable...
        PropertyNamingStrategy naming = pojoproperties_collector_1_expr42_line_334;
        int PROBE_START_LINE_335 = 337;
		com.fasterxml.jackson.databind.PropertyNamingStrategy v_naming_4171_line_335 = naming;
		boolean pojoproperties_collector_1_expr43_line_335 = v_naming_4171_line_335 != null;
		int PROBE_END_LINE_335 = 337;
		if (pojoproperties_collector_1_expr43_line_335) {
            _renameUsing(props, naming);
        }

        int PROBE_START_LINE_343 = 345;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_343 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr44_line_343 = v_props_4169_line_343
				.values();
		int PROBE_END_LINE_343 = 345;
		/* Sort by visibility (explicit over implicit); drop all but first
         * of member type (getter, setter etc) if there is visibility
         * difference
         */
        for (POJOPropertyBuilder property : pojoproperties_collector_1_expr44_line_343) {
            int PROBE_START_LINE_344 = 344;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_property_4172_line_344 = property;
			int PROBE_END_LINE_344 = 344;
			v_property_4172_line_344.trimByVisibility();
        }

        int PROBE_START_LINE_350 = 352;
		MapperConfig<?> f__config_4152_line_350 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_use_wrapper_name_as_property_name_122_line_350 = MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME;
		boolean pojoproperties_collector_1_expr46_line_350 = f__config_4152_line_350
				.isEnabled(q_use_wrapper_name_as_property_name_122_line_350);
		int PROBE_END_LINE_350 = 352;
		/* and, if required, apply wrapper name: note, MUST be done after
         * annotations are merged.
         */
        if (pojoproperties_collector_1_expr46_line_350) {
            _renameWithWrappers(props);
        }

        int PROBE_START_LINE_355 = 355;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_355 = props;
		int PROBE_END_LINE_355 = 355;
		// well, almost last: there's still ordering...
        _sortProperties(v_props_4169_line_355);
        int PROBE_START_LINE_356 = 356;
		LinkedHashMap<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_props_4169_line_356 = props;
		int PROBE_END_LINE_356 = 356;
		_properties = v_props_4169_line_356;
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
        int PROBE_START_LINE_371 = 371;
		AnnotationIntrospector f__annotation_introspector_4159_line_371 = _annotationIntrospector;
		int PROBE_END_LINE_371 = 371;
		final AnnotationIntrospector ai = f__annotation_introspector_4159_line_371;
        int PROBE_START_LINE_376 = 376;
		boolean f__for_serialization_4154_line_376 = _forSerialization;
		boolean pojoproperties_collector_1_expr51_line_376 = !f__for_serialization_4154_line_376;
		boolean pojoproperties_collector_1_expr52_line_376 = true;
		if (pojoproperties_collector_1_expr51_line_376) {
			MapperConfig<?> f__config_4152_line_376 = _config;
			com.fasterxml.jackson.databind.MapperFeature q_allow_final_fields_as_mutators_123_line_376 = MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS;
			boolean pojoproperties_collector_1_expr53_line_376 = f__config_4152_line_376
					.isEnabled(q_allow_final_fields_as_mutators_123_line_376);
			pojoproperties_collector_1_expr52_line_376 = !pojoproperties_collector_1_expr53_line_376;
		}
		boolean pojoproperties_collector_1_expr50_line_376 = pojoproperties_collector_1_expr51_line_376
				&& pojoproperties_collector_1_expr52_line_376;
		int PROBE_END_LINE_376 = 376;
		/* 28-Mar-2013, tatu: For deserialization we may also want to remove
         *   final fields, as often they won't make very good mutators...
         *   (although, maybe surprisingly, JVM _can_ force setting of such fields!)
         */
        final boolean pruneFinalFields = pojoproperties_collector_1_expr50_line_376;
        int PROBE_START_LINE_377 = 377;
		MapperConfig<?> f__config_4152_line_377 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_propagate_transient_marker_124_line_377 = MapperFeature.PROPAGATE_TRANSIENT_MARKER;
		boolean pojoproperties_collector_1_expr54_line_377 = f__config_4152_line_377
				.isEnabled(q_propagate_transient_marker_124_line_377);
		int PROBE_END_LINE_377 = 377;
		final boolean transientAsIgnoral = pojoproperties_collector_1_expr54_line_377;
        
        int PROBE_START_LINE_379 = 448;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_379 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperties_collector_1_expr55_line_379 = f__class_def_4156_line_379
				.fields();
		int PROBE_END_LINE_379 = 448;
		for (AnnotatedField f : pojoproperties_collector_1_expr55_line_379) {
            int PROBE_START_LINE_380 = 380;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4174_line_380 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_380 = f;
			String pojoproperties_collector_1_expr56_line_380 = v_ai_4174_line_380
					.findImplicitPropertyName(v_f_4177_line_380);
			int PROBE_END_LINE_380 = 380;
			String implName = pojoproperties_collector_1_expr56_line_380;
            int PROBE_START_LINE_382 = 388;
			Boolean q_true_125_line_382 = Boolean.TRUE;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4174_line_382 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_382 = f;
			Boolean pojoproperties_collector_1_expr58_line_382 = v_ai_4174_line_382.hasAsValue(v_f_4177_line_382);
			boolean pojoproperties_collector_1_expr57_line_382 = q_true_125_line_382
					.equals(pojoproperties_collector_1_expr58_line_382);
			int PROBE_END_LINE_382 = 388;
			// @JsonValue?
            if (pojoproperties_collector_1_expr57_line_382) {
                if (_jsonValueAccessors == null) {
                    _jsonValueAccessors = new LinkedList<>();
                }
                _jsonValueAccessors.add(f);
                continue;
            }
            int PROBE_START_LINE_390 = 396;
			Boolean q_true_125_line_390 = Boolean.TRUE;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4174_line_390 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_390 = f;
			Boolean pojoproperties_collector_1_expr60_line_390 = v_ai_4174_line_390.hasAnySetter(v_f_4177_line_390);
			boolean pojoproperties_collector_1_expr59_line_390 = q_true_125_line_390
					.equals(pojoproperties_collector_1_expr60_line_390);
			int PROBE_END_LINE_390 = 396;
			// @JsonAnySetter?
            if (pojoproperties_collector_1_expr59_line_390) {
                if (_anySetterField == null) {
                    _anySetterField = new LinkedList<AnnotatedMember>();
                }
                _anySetterField.add(f);
                continue;
            }
            int PROBE_START_LINE_397 = 399;
			String v_impl_name_4178_line_397 = implName;
			boolean pojoproperties_collector_1_expr61_line_397 = v_impl_name_4178_line_397 == null;
			int PROBE_END_LINE_397 = 399;
			if (pojoproperties_collector_1_expr61_line_397) {
                int PROBE_START_LINE_398 = 398;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_398 = f;
				String pojoproperties_collector_1_expr63_line_398 = v_f_4177_line_398.getName();
				int PROBE_END_LINE_398 = 398;
				implName = pojoproperties_collector_1_expr63_line_398;
            }
            PropertyName pn = null;

            int PROBE_START_LINE_402 = 411;
			boolean f__for_serialization_4154_line_402 = _forSerialization;
			int PROBE_END_LINE_402 = 411;
			if (f__for_serialization_4154_line_402) {
                /* 18-Aug-2011, tatu: As per existing unit tests, we should only
                 *   use serialization annotation (@JsonSerialize) when serializing
                 *   fields, and similarly for deserialize-only annotations... so
                 *   no fallbacks in this particular case.
                 */
                pn = ai.findNameForSerialization(f);
            } else {
                int PROBE_START_LINE_410 = 410;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4174_line_410 = ai;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_410 = f;
				com.fasterxml.jackson.databind.PropertyName pojoproperties_collector_1_expr65_line_410 = v_ai_4174_line_410
						.findNameForDeserialization(v_f_4177_line_410);
				int PROBE_END_LINE_410 = 410;
				pn = pojoproperties_collector_1_expr65_line_410;
            }
            int PROBE_START_LINE_412 = 412;
			com.fasterxml.jackson.databind.PropertyName v_pn_4180_line_412 = pn;
			boolean pojoproperties_collector_1_expr67_line_412 = v_pn_4180_line_412 != null;
			boolean pojoproperties_collector_1_expr66_line_412 = (pojoproperties_collector_1_expr67_line_412);
			int PROBE_END_LINE_412 = 412;
			boolean hasName = pojoproperties_collector_1_expr66_line_412;
            int PROBE_START_LINE_413 = 413;
			boolean v_has_name_4181_line_413 = hasName;
			int PROBE_END_LINE_413 = 413;
			boolean nameExplicit = v_has_name_4181_line_413;

            int PROBE_START_LINE_415 = 418;
			boolean v_name_explicit_4182_line_415 = nameExplicit;
			boolean pojoproperties_collector_1_expr69_line_415 = true;
			if (v_name_explicit_4182_line_415) {
				com.fasterxml.jackson.databind.PropertyName v_pn_4180_line_415 = pn;
				pojoproperties_collector_1_expr69_line_415 = v_pn_4180_line_415.isEmpty();
			}
			boolean pojoproperties_collector_1_expr68_line_415 = v_name_explicit_4182_line_415
					&& pojoproperties_collector_1_expr69_line_415;
			int PROBE_END_LINE_415 = 418;
			if (pojoproperties_collector_1_expr68_line_415) { // empty String meaning "use default name", here just means "same as field name"
                pn = _propNameFromSimple(implName);
                nameExplicit = false;
            }
            int PROBE_START_LINE_420 = 420;
			com.fasterxml.jackson.databind.PropertyName v_pn_4180_line_420 = pn;
			boolean pojoproperties_collector_1_expr71_line_420 = v_pn_4180_line_420 != null;
			boolean pojoproperties_collector_1_expr70_line_420 = (pojoproperties_collector_1_expr71_line_420);
			int PROBE_END_LINE_420 = 420;
			// having explicit name means that field is visible; otherwise need to check the rules
            boolean visible = pojoproperties_collector_1_expr70_line_420;
            int PROBE_START_LINE_421 = 423;
			boolean v_visible_4183_line_421 = visible;
			boolean pojoproperties_collector_1_expr72_line_421 = !v_visible_4183_line_421;
			int PROBE_END_LINE_421 = 423;
			if (pojoproperties_collector_1_expr72_line_421) {
                int PROBE_START_LINE_422 = 422;
				VisibilityChecker<?> f__visibility_checker_4160_line_422 = _visibilityChecker;
				com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_422 = f;
				boolean pojoproperties_collector_1_expr74_line_422 = f__visibility_checker_4160_line_422
						.isFieldVisible(v_f_4177_line_422);
				int PROBE_END_LINE_422 = 422;
				visible = pojoproperties_collector_1_expr74_line_422;
            }
            int PROBE_START_LINE_425 = 425;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4174_line_425 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_425 = f;
			boolean pojoproperties_collector_1_expr75_line_425 = v_ai_4174_line_425.hasIgnoreMarker(v_f_4177_line_425);
			int PROBE_END_LINE_425 = 425;
			// and finally, may also have explicit ignoral
            boolean ignored = pojoproperties_collector_1_expr75_line_425;

            int PROBE_START_LINE_428 = 437;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_428 = f;
			boolean pojoproperties_collector_1_expr76_line_428 = v_f_4177_line_428.isTransient();
			int PROBE_END_LINE_428 = 437;
			// 13-May-2015, tatu: Moved from earlier place (AnnotatedClass) in 2.6
            if (pojoproperties_collector_1_expr76_line_428) {
                // 20-May-2016, tatu: as per [databind#1184] explicit annotation should override
                //    "default" `transient`
                if (!hasName) {
                    visible = false;
                    if (transientAsIgnoral) {
                        ignored = true;
                    }
                }
            }
            int PROBE_START_LINE_443 = 446;
			boolean v_prune_final_fields_4175_line_443 = pruneFinalFields;
			boolean pojoproperties_collector_1_expr78_line_443 = true;
			boolean pojoproperties_collector_1_expr80_line_443 = true;
			if (v_prune_final_fields_4175_line_443) {
				com.fasterxml.jackson.databind.PropertyName v_pn_4180_line_443 = pn;
				boolean pojoproperties_collector_1_expr79_line_443 = v_pn_4180_line_443 == null;
				pojoproperties_collector_1_expr78_line_443 = (pojoproperties_collector_1_expr79_line_443);
				if (pojoproperties_collector_1_expr78_line_443) {
					boolean v_ignored_4184_line_443 = ignored;
					pojoproperties_collector_1_expr80_line_443 = !v_ignored_4184_line_443;
				}
			}
			boolean pojoproperties_collector_1_expr77_line_443 = v_prune_final_fields_4175_line_443
					&& pojoproperties_collector_1_expr78_line_443 && pojoproperties_collector_1_expr80_line_443
					&& Modifier.isFinal(f.getModifiers());
			int PROBE_END_LINE_443 = 446;
			/* [databind#190]: this is the place to prune final fields, if they are not
             *  to be used as mutators. Must verify they are not explicitly included.
             *  Also: if 'ignored' is set, need to included until a later point, to
             *  avoid losing ignoral information.
             */
            if (pojoproperties_collector_1_expr77_line_443) {
                continue;
            }
            int PROBE_START_LINE_447 = 447;
			Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4173_line_447 = props;
			String v_impl_name_4178_line_447 = implName;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder pojoproperties_collector_1_expr82_line_447 = _property(
					p_props_4173_line_447, v_impl_name_4178_line_447);
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4177_line_447 = f;
			com.fasterxml.jackson.databind.PropertyName v_pn_4180_line_447 = pn;
			boolean v_name_explicit_4182_line_447 = nameExplicit;
			boolean v_visible_4183_line_447 = visible;
			boolean v_ignored_4184_line_447 = ignored;
			int PROBE_END_LINE_447 = 447;
			pojoproperties_collector_1_expr82_line_447.addField(v_f_4177_line_447, v_pn_4180_line_447, v_name_explicit_4182_line_447, v_visible_4183_line_447, v_ignored_4184_line_447);
        }
    }

    /**
     * Method for collecting basic information on constructor(s) found
     */
    protected void _addCreators(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_457 = 459;
		boolean f__use_annotations_4158_line_457 = _useAnnotations;
		boolean pojoproperties_collector_1_expr83_line_457 = !f__use_annotations_4158_line_457;
		int PROBE_END_LINE_457 = 459;
		// can be null if annotation processing is disabled...
        if (pojoproperties_collector_1_expr83_line_457) {
            return;
        }
        int PROBE_START_LINE_460 = 467;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_460 = _classDef;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> pojoproperties_collector_1_expr84_line_460 = f__class_def_4156_line_460
				.getConstructors();
		int PROBE_END_LINE_460 = 467;
		for (AnnotatedConstructor ctor : pojoproperties_collector_1_expr84_line_460) {
            int PROBE_START_LINE_461 = 463;
			LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_4187_line_461 = _creatorProperties;
			boolean pojoproperties_collector_1_expr85_line_461 = f__creator_properties_4187_line_461 == null;
			int PROBE_END_LINE_461 = 463;
			if (pojoproperties_collector_1_expr85_line_461) {
                _creatorProperties = new LinkedList<POJOPropertyBuilder>();
            }
            int PROBE_START_LINE_463 = 463;
			boolean FOR_STMT_TOGGLE_LINE_464 = false;
			int PROBE_END_LINE_463 = 463;
			for (int i = 0, len = 0; true;) {
                int PROBE_START_LINE_465 = 465;
				if (!FOR_STMT_TOGGLE_LINE_464) {
					FOR_STMT_TOGGLE_LINE_464 = true;
					i = 0;
					com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_4186_line_464 = ctor;
					int pojoproperties_collector_1_expr89_line_464 = v_ctor_4186_line_464.getParameterCount();
					len = pojoproperties_collector_1_expr89_line_464;
				} else {
					if (FOR_STMT_TOGGLE_LINE_464) {
						++i;
					} else {
						FOR_STMT_TOGGLE_LINE_464 = true;
					}
				}
				int v_i_4188_line_464 = i;
				int v_len_4189_line_464 = len;
				boolean pojoproperties_collector_1_expr90_line_464 = v_i_4188_line_464 < v_len_4189_line_464;
				if (!(pojoproperties_collector_1_expr90_line_464)) {
					break;
				}
				Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4185_line_465 = props;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_4186_line_465 = ctor;
				int v_i_4188_line_465 = i;
				com.fasterxml.jackson.databind.introspect.AnnotatedParameter pojoproperties_collector_1_expr93_line_465 = v_ctor_4186_line_465
						.getParameter(v_i_4188_line_465);
				int PROBE_END_LINE_465 = 465;
				_addCreatorParam(p_props_4185_line_465, pojoproperties_collector_1_expr93_line_465);
            }
        }
        int PROBE_START_LINE_468 = 475;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_468 = _classDef;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr94_line_468 = f__class_def_4156_line_468
				.getFactoryMethods();
		int PROBE_END_LINE_468 = 475;
		for (AnnotatedMethod factory : pojoproperties_collector_1_expr94_line_468) {
            int PROBE_START_LINE_469 = 471;
			LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_4187_line_469 = _creatorProperties;
			boolean pojoproperties_collector_1_expr95_line_469 = f__creator_properties_4187_line_469 == null;
			int PROBE_END_LINE_469 = 471;
			if (pojoproperties_collector_1_expr95_line_469) {
                _creatorProperties = new LinkedList<POJOPropertyBuilder>();
            }
            int PROBE_START_LINE_471 = 471;
			boolean FOR_STMT_TOGGLE_LINE_472 = false;
			int PROBE_END_LINE_471 = 471;
			for (int i = 0, len = 0; true;) {
                int PROBE_START_LINE_473 = 473;
				if (!FOR_STMT_TOGGLE_LINE_472) {
					FOR_STMT_TOGGLE_LINE_472 = true;
					i = 0;
					com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_factory_4190_line_472 = factory;
					int pojoproperties_collector_1_expr99_line_472 = v_factory_4190_line_472.getParameterCount();
					len = pojoproperties_collector_1_expr99_line_472;
				} else {
					if (FOR_STMT_TOGGLE_LINE_472) {
						++i;
					} else {
						FOR_STMT_TOGGLE_LINE_472 = true;
					}
				}
				int v_i_4191_line_472 = i;
				int v_len_4192_line_472 = len;
				boolean pojoproperties_collector_1_expr100_line_472 = v_i_4191_line_472 < v_len_4192_line_472;
				if (!(pojoproperties_collector_1_expr100_line_472)) {
					break;
				}
				int PROBE_END_LINE_473 = 473;
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
        int PROBE_START_LINE_485 = 485;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4159_line_485 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter p_param_4194_line_485 = param;
		String pojoproperties_collector_1_expr102_line_485 = f__annotation_introspector_4159_line_485
				.findImplicitPropertyName(p_param_4194_line_485);
		int PROBE_END_LINE_485 = 485;
		// JDK 8, paranamer, Scala can give implicit name
        String impl = pojoproperties_collector_1_expr102_line_485;
        int PROBE_START_LINE_486 = 488;
		String v_impl_4195_line_486 = impl;
		boolean pojoproperties_collector_1_expr103_line_486 = v_impl_4195_line_486 == null;
		int PROBE_END_LINE_486 = 488;
		if (pojoproperties_collector_1_expr103_line_486) {
            impl = "";
        }
        int PROBE_START_LINE_489 = 489;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4159_line_489 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter p_param_4194_line_489 = param;
		PropertyName pojoproperties_collector_1_expr105_line_489 = f__annotation_introspector_4159_line_489
				.findNameForDeserialization(p_param_4194_line_489);
		int PROBE_END_LINE_489 = 489;
		PropertyName pn = pojoproperties_collector_1_expr105_line_489;
        int PROBE_START_LINE_490 = 490;
		com.fasterxml.jackson.databind.PropertyName v_pn_4196_line_490 = pn;
		boolean pojoproperties_collector_1_expr108_line_490 = v_pn_4196_line_490 != null;
		boolean pojoproperties_collector_1_expr109_line_490 = true;
		if (pojoproperties_collector_1_expr108_line_490) {
			com.fasterxml.jackson.databind.PropertyName v_pn_4196_line_490_v1 = pn;
			boolean pojoproperties_collector_1_expr110_line_490 = v_pn_4196_line_490_v1.isEmpty();
			pojoproperties_collector_1_expr109_line_490 = !pojoproperties_collector_1_expr110_line_490;
		}
		boolean pojoproperties_collector_1_expr107_line_490 = pojoproperties_collector_1_expr108_line_490
				&& pojoproperties_collector_1_expr109_line_490;
		boolean pojoproperties_collector_1_expr106_line_490 = (pojoproperties_collector_1_expr107_line_490);
		int PROBE_END_LINE_490 = 490;
		boolean expl = pojoproperties_collector_1_expr106_line_490;
        int PROBE_START_LINE_491 = 504;
		boolean v_expl_4197_line_491 = expl;
		boolean pojoproperties_collector_1_expr111_line_491 = !v_expl_4197_line_491;
		int PROBE_END_LINE_491 = 504;
		if (pojoproperties_collector_1_expr111_line_491) {
            int PROBE_START_LINE_492 = 496;
			String v_impl_4195_line_492 = impl;
			boolean pojoproperties_collector_1_expr112_line_492 = v_impl_4195_line_492.isEmpty();
			int PROBE_END_LINE_492 = 496;
			if (pojoproperties_collector_1_expr112_line_492) {
                // Important: if neither implicit nor explicit name, cannot make use of
                // this creator parameter -- may or may not be a problem, verified at a later point.
                return;
            }
            // Also: if this occurs, there MUST be explicit annotation on creator itself
            JsonCreator.Mode creatorMode = _annotationIntrospector.findCreatorAnnotation(_config,
                    param.getOwner());
            if ((creatorMode == null) || (creatorMode == JsonCreator.Mode.DISABLED)) {
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
        int PROBE_START_LINE_524 = 524;
		AnnotationIntrospector f__annotation_introspector_4159_line_524 = _annotationIntrospector;
		int PROBE_END_LINE_524 = 524;
		final AnnotationIntrospector ai = f__annotation_introspector_4159_line_524;
        int PROBE_START_LINE_525 = 546;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_525 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr113_line_525 = f__class_def_4156_line_525
				.memberMethods();
		int PROBE_END_LINE_525 = 546;
		for (AnnotatedMethod m : pojoproperties_collector_1_expr113_line_525) {
            int PROBE_START_LINE_531 = 531;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_4200_line_531 = m;
			int pojoproperties_collector_1_expr114_line_531 = v_m_4200_line_531.getParameterCount();
			int PROBE_END_LINE_531 = 531;
			/* For methods, handling differs between getters and setters; and
             * we will also only consider entries that either follow the bean
             * naming convention or are explicitly marked: just being visible
             * is not enough (unlike with fields)
             */
            int argCount = pojoproperties_collector_1_expr114_line_531;
            int PROBE_START_LINE_532 = 545;
			int v_arg_count_4201_line_532 = argCount;
			boolean pojoproperties_collector_1_expr115_line_532 = v_arg_count_4201_line_532 == 0;
			int PROBE_END_LINE_532 = 545;
			if (pojoproperties_collector_1_expr115_line_532) { // getters (including 'any getter')
            	int PROBE_START_LINE_533 = 533;
				Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4198_line_533 = props;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_4200_line_533 = m;
				com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4199_line_533 = ai;
				int PROBE_END_LINE_533 = 533;
				_addGetterMethod(p_props_4198_line_533, v_m_4200_line_533, v_ai_4199_line_533);
            } else {
				int PROBE_START_LINE_534 = 545;
				int v_arg_count_4201_line_534 = argCount;
				boolean pojoproperties_collector_1_expr117_line_534 = v_arg_count_4201_line_534 == 1;
				int PROBE_END_LINE_534 = 545;
				if (pojoproperties_collector_1_expr117_line_534) {
					int PROBE_START_LINE_535 = 535;
					Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4198_line_535 = props;
					com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_4200_line_535 = m;
					com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4199_line_535 = ai;
					int PROBE_END_LINE_535 = 535;
					_addSetterMethod(p_props_4198_line_535, v_m_4200_line_535, v_ai_4199_line_535);
				} else if (argCount == 2) {
					if (ai != null) {
						if (Boolean.TRUE.equals(ai.hasAnySetter(m))) {
							if (_anySetters == null) {
								_anySetters = new LinkedList<AnnotatedMethod>();
							}
							_anySetters.add(m);
						}
					}
				}
			}
        }
    }

    protected void _addGetterMethod(Map<String, POJOPropertyBuilder> props,
            AnnotatedMethod m, AnnotationIntrospector ai)
    {
        int PROBE_START_LINE_553 = 555;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_553 = m;
		boolean pojoproperties_collector_1_expr120_line_553 = p_m_4203_line_553.hasReturnType();
		boolean pojoproperties_collector_1_expr119_line_553 = !pojoproperties_collector_1_expr120_line_553;
		int PROBE_END_LINE_553 = 555;
		// Very first thing: skip if not returning any value
        if (pojoproperties_collector_1_expr119_line_553) {
            return;
        }
        
        int PROBE_START_LINE_559 = 565;
		Boolean q_true_125_line_559 = Boolean.TRUE;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4204_line_559 = ai;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_559 = m;
		Boolean pojoproperties_collector_1_expr122_line_559 = p_ai_4204_line_559.hasAnyGetter(p_m_4203_line_559);
		boolean pojoproperties_collector_1_expr121_line_559 = q_true_125_line_559
				.equals(pojoproperties_collector_1_expr122_line_559);
		int PROBE_END_LINE_559 = 565;
		// any getter?
        // @JsonAnyGetter?
        if (pojoproperties_collector_1_expr121_line_559) {
            if (_anyGetters == null) {
                _anyGetters = new LinkedList<AnnotatedMember>();
            }
            _anyGetters.add(m);
            return;
        }
        int PROBE_START_LINE_567 = 573;
		Boolean q_true_125_line_567 = Boolean.TRUE;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4204_line_567 = ai;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_567 = m;
		Boolean pojoproperties_collector_1_expr124_line_567 = p_ai_4204_line_567.hasAsValue(p_m_4203_line_567);
		boolean pojoproperties_collector_1_expr123_line_567 = q_true_125_line_567
				.equals(pojoproperties_collector_1_expr124_line_567);
		int PROBE_END_LINE_567 = 573;
		// @JsonValue?
        if (pojoproperties_collector_1_expr123_line_567) {
            if (_jsonValueAccessors == null) {
                _jsonValueAccessors = new LinkedList<>();
            }
            _jsonValueAccessors.add(m);
            return;
        }
        String implName = null; // from naming convention
        boolean visible = false;

        int PROBE_START_LINE_577 = 577;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4204_line_577 = ai;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_577 = m;
		PropertyName pojoproperties_collector_1_expr125_line_577 = p_ai_4204_line_577
				.findNameForSerialization(p_m_4203_line_577);
		int PROBE_END_LINE_577 = 577;
		PropertyName pn = pojoproperties_collector_1_expr125_line_577;
        int PROBE_START_LINE_578 = 578;
		com.fasterxml.jackson.databind.PropertyName v_pn_4205_line_578 = pn;
		boolean pojoproperties_collector_1_expr127_line_578 = v_pn_4205_line_578 != null;
		boolean pojoproperties_collector_1_expr126_line_578 = (pojoproperties_collector_1_expr127_line_578);
		int PROBE_END_LINE_578 = 578;
		boolean nameExplicit = pojoproperties_collector_1_expr126_line_578;

        int PROBE_START_LINE_580 = 610;
		boolean v_name_explicit_4206_line_580 = nameExplicit;
		boolean pojoproperties_collector_1_expr128_line_580 = !v_name_explicit_4206_line_580;
		int PROBE_END_LINE_580 = 610;
		if (pojoproperties_collector_1_expr128_line_580) { // no explicit name; must consider implicit
            int PROBE_START_LINE_581 = 581;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4204_line_581 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_581 = m;
			String pojoproperties_collector_1_expr130_line_581 = p_ai_4204_line_581
					.findImplicitPropertyName(p_m_4203_line_581);
			int PROBE_END_LINE_581 = 581;
			implName = pojoproperties_collector_1_expr130_line_581;
            int PROBE_START_LINE_582 = 584;
			String v_impl_name_4207_line_582 = implName;
			boolean pojoproperties_collector_1_expr131_line_582 = v_impl_name_4207_line_582 == null;
			int PROBE_END_LINE_582 = 584;
			if (pojoproperties_collector_1_expr131_line_582) {
                int PROBE_START_LINE_583 = 583;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_583 = m;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_583_v1 = m;
				String pojoproperties_collector_1_expr134_line_583 = p_m_4203_line_583_v1.getName();
				boolean f__std_bean_naming_4153_line_583 = _stdBeanNaming;
				String pojoproperties_collector_1_expr133_line_583 = BeanUtil.okNameForRegularGetter(p_m_4203_line_583,
						pojoproperties_collector_1_expr134_line_583, f__std_bean_naming_4153_line_583);
				int PROBE_END_LINE_583 = 583;
				implName = pojoproperties_collector_1_expr133_line_583;
            }
            int PROBE_START_LINE_585 = 593;
			String v_impl_name_4207_line_585 = implName;
			boolean pojoproperties_collector_1_expr135_line_585 = v_impl_name_4207_line_585 == null;
			int PROBE_END_LINE_585 = 593;
			if (pojoproperties_collector_1_expr135_line_585) { // if not, must skip
                int PROBE_START_LINE_586 = 586;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_586 = m;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_586_v1 = m;
				String pojoproperties_collector_1_expr138_line_586 = p_m_4203_line_586_v1.getName();
				boolean f__std_bean_naming_4153_line_586 = _stdBeanNaming;
				String pojoproperties_collector_1_expr137_line_586 = BeanUtil.okNameForIsGetter(p_m_4203_line_586,
						pojoproperties_collector_1_expr138_line_586, f__std_bean_naming_4153_line_586);
				int PROBE_END_LINE_586 = 586;
				implName = pojoproperties_collector_1_expr137_line_586;
                int PROBE_START_LINE_587 = 589;
				String v_impl_name_4207_line_587 = implName;
				boolean pojoproperties_collector_1_expr139_line_587 = v_impl_name_4207_line_587 == null;
				int PROBE_END_LINE_587 = 589;
				if (pojoproperties_collector_1_expr139_line_587) {
                    return;
                }
                visible = _visibilityChecker.isIsGetterVisible(m);
            } else {
                int PROBE_START_LINE_592 = 592;
				VisibilityChecker<?> f__visibility_checker_4160_line_592 = _visibilityChecker;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_592 = m;
				boolean pojoproperties_collector_1_expr141_line_592 = f__visibility_checker_4160_line_592
						.isGetterVisible(p_m_4203_line_592);
				int PROBE_END_LINE_592 = 592;
				visible = pojoproperties_collector_1_expr141_line_592;
            }
        } else { // explicit indication of inclusion, but may be empty
            // we still need implicit name to link with other pieces
            implName = ai.findImplicitPropertyName(m);
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
        int PROBE_START_LINE_611 = 611;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4204_line_611 = ai;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_611 = m;
		boolean pojoproperties_collector_1_expr142_line_611 = p_ai_4204_line_611.hasIgnoreMarker(p_m_4203_line_611);
		int PROBE_END_LINE_611 = 611;
		boolean ignore = pojoproperties_collector_1_expr142_line_611;
        int PROBE_START_LINE_612 = 612;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4202_line_612 = props;
		String v_impl_name_4207_line_612 = implName;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder pojoproperties_collector_1_expr144_line_612 = _property(
				p_props_4202_line_612, v_impl_name_4207_line_612);
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4203_line_612 = m;
		com.fasterxml.jackson.databind.PropertyName v_pn_4205_line_612 = pn;
		boolean v_name_explicit_4206_line_612 = nameExplicit;
		boolean v_visible_4208_line_612 = visible;
		boolean v_ignore_4209_line_612 = ignore;
		int PROBE_END_LINE_612 = 612;
		pojoproperties_collector_1_expr144_line_612.addGetter(p_m_4203_line_612, v_pn_4205_line_612, v_name_explicit_4206_line_612, v_visible_4208_line_612, v_ignore_4209_line_612);
    }

    protected void _addSetterMethod(Map<String, POJOPropertyBuilder> props,
            AnnotatedMethod m, AnnotationIntrospector ai)
    {
        String implName = null; // from naming convention
        boolean visible = false;
        int PROBE_START_LINE_620 = 620;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4212_line_620 = ai;
		boolean pojoproperties_collector_1_expr148_line_620 = p_ai_4212_line_620 == null;
		boolean pojoproperties_collector_1_expr146_line_620 = (pojoproperties_collector_1_expr148_line_620);
		com.fasterxml.jackson.databind.PropertyName pojoproperties_collector_1_expr147_line_620 = null;
		if (!pojoproperties_collector_1_expr146_line_620) {
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4212_line_620_v1 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4211_line_620 = m;
			pojoproperties_collector_1_expr147_line_620 = p_ai_4212_line_620_v1
					.findNameForDeserialization(p_m_4211_line_620);
		}
		PropertyName pojoproperties_collector_1_expr145_line_620 = pojoproperties_collector_1_expr146_line_620
				? null
				: pojoproperties_collector_1_expr147_line_620;
		int PROBE_END_LINE_620 = 620;
		PropertyName pn = pojoproperties_collector_1_expr145_line_620;
        int PROBE_START_LINE_621 = 621;
		com.fasterxml.jackson.databind.PropertyName v_pn_4213_line_621 = pn;
		boolean pojoproperties_collector_1_expr150_line_621 = v_pn_4213_line_621 != null;
		boolean pojoproperties_collector_1_expr149_line_621 = (pojoproperties_collector_1_expr150_line_621);
		int PROBE_END_LINE_621 = 621;
		boolean nameExplicit = pojoproperties_collector_1_expr149_line_621;
        int PROBE_START_LINE_622 = 647;
		boolean v_name_explicit_4214_line_622 = nameExplicit;
		boolean pojoproperties_collector_1_expr151_line_622 = !v_name_explicit_4214_line_622;
		int PROBE_END_LINE_622 = 647;
		if (pojoproperties_collector_1_expr151_line_622) { // no explicit name; must follow naming convention
            int PROBE_START_LINE_623 = 623;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4212_line_623 = ai;
			boolean pojoproperties_collector_1_expr156_line_623 = p_ai_4212_line_623 == null;
			boolean pojoproperties_collector_1_expr154_line_623 = (pojoproperties_collector_1_expr156_line_623);
			String pojoproperties_collector_1_expr155_line_623 = null;
			if (!pojoproperties_collector_1_expr154_line_623) {
				com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4212_line_623_v1 = ai;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4211_line_623 = m;
				pojoproperties_collector_1_expr155_line_623 = p_ai_4212_line_623_v1
						.findImplicitPropertyName(p_m_4211_line_623);
			}
			String pojoproperties_collector_1_expr153_line_623 = pojoproperties_collector_1_expr154_line_623
					? null
					: pojoproperties_collector_1_expr155_line_623;
			int PROBE_END_LINE_623 = 623;
			implName = pojoproperties_collector_1_expr153_line_623;
            int PROBE_START_LINE_624 = 626;
			String v_impl_name_4215_line_624 = implName;
			boolean pojoproperties_collector_1_expr157_line_624 = v_impl_name_4215_line_624 == null;
			int PROBE_END_LINE_624 = 626;
			if (pojoproperties_collector_1_expr157_line_624) {
                int PROBE_START_LINE_625 = 625;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4211_line_625 = m;
				String f__mutator_prefix_4157_line_625 = _mutatorPrefix;
				boolean f__std_bean_naming_4153_line_625 = _stdBeanNaming;
				String pojoproperties_collector_1_expr159_line_625 = BeanUtil.okNameForMutator(p_m_4211_line_625,
						f__mutator_prefix_4157_line_625, f__std_bean_naming_4153_line_625);
				int PROBE_END_LINE_625 = 625;
				implName = pojoproperties_collector_1_expr159_line_625;
            }
            int PROBE_START_LINE_627 = 629;
			String v_impl_name_4215_line_627 = implName;
			boolean pojoproperties_collector_1_expr160_line_627 = v_impl_name_4215_line_627 == null;
			int PROBE_END_LINE_627 = 629;
			if (pojoproperties_collector_1_expr160_line_627) { // if not, must skip
            	return;
            }
            int PROBE_START_LINE_630 = 630;
			VisibilityChecker<?> f__visibility_checker_4160_line_630 = _visibilityChecker;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4211_line_630 = m;
			boolean pojoproperties_collector_1_expr162_line_630 = f__visibility_checker_4160_line_630
					.isSetterVisible(p_m_4211_line_630);
			int PROBE_END_LINE_630 = 630;
			visible = pojoproperties_collector_1_expr162_line_630;
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
        int PROBE_START_LINE_648 = 648;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4212_line_648 = ai;
		boolean pojoproperties_collector_1_expr166_line_648 = p_ai_4212_line_648 == null;
		boolean pojoproperties_collector_1_expr164_line_648 = (pojoproperties_collector_1_expr166_line_648);
		boolean pojoproperties_collector_1_expr165_line_648 = false;
		if (!pojoproperties_collector_1_expr164_line_648) {
			com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4212_line_648_v1 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4211_line_648 = m;
			pojoproperties_collector_1_expr165_line_648 = p_ai_4212_line_648_v1.hasIgnoreMarker(p_m_4211_line_648);
		}
		boolean pojoproperties_collector_1_expr163_line_648 = pojoproperties_collector_1_expr164_line_648
				? false
				: pojoproperties_collector_1_expr165_line_648;
		int PROBE_END_LINE_648 = 648;
		boolean ignore = pojoproperties_collector_1_expr163_line_648;
        int PROBE_START_LINE_649 = 649;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4210_line_649 = props;
		String v_impl_name_4215_line_649 = implName;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder pojoproperties_collector_1_expr168_line_649 = _property(
				p_props_4210_line_649, v_impl_name_4215_line_649);
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_m_4211_line_649 = m;
		com.fasterxml.jackson.databind.PropertyName v_pn_4213_line_649 = pn;
		boolean v_name_explicit_4214_line_649 = nameExplicit;
		boolean v_visible_4216_line_649 = visible;
		boolean v_ignore_4217_line_649 = ignore;
		int PROBE_END_LINE_649 = 649;
		pojoproperties_collector_1_expr168_line_649.addSetter(p_m_4211_line_649, v_pn_4213_line_649, v_name_explicit_4214_line_649, v_visible_4216_line_649, v_ignore_4217_line_649);
    }

    protected void _addInjectables(Map<String, POJOPropertyBuilder> props)
    {
        int PROBE_START_LINE_654 = 654;
		AnnotationIntrospector f__annotation_introspector_4159_line_654 = _annotationIntrospector;
		int PROBE_END_LINE_654 = 654;
		final AnnotationIntrospector ai = f__annotation_introspector_4159_line_654;
        int PROBE_START_LINE_656 = 658;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_656 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperties_collector_1_expr169_line_656 = f__class_def_4156_line_656
				.fields();
		int PROBE_END_LINE_656 = 658;
		// first fields, then methods, to allow overriding
        for (AnnotatedField f : pojoproperties_collector_1_expr169_line_656) {
            int PROBE_START_LINE_657 = 657;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4219_line_657 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4220_line_657 = f;
			com.fasterxml.jackson.annotation.JacksonInject.Value pojoproperties_collector_1_expr171_line_657 = v_ai_4219_line_657
					.findInjectableValue(v_f_4220_line_657);
			com.fasterxml.jackson.databind.introspect.AnnotatedField v_f_4220_line_657_v1 = f;
			int PROBE_END_LINE_657 = 657;
			_doAddInjectable(pojoproperties_collector_1_expr171_line_657, v_f_4220_line_657_v1);
        }
        
        int PROBE_START_LINE_660 = 666;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_660 = _classDef;
		Iterable<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperties_collector_1_expr172_line_660 = f__class_def_4156_line_660
				.memberMethods();
		int PROBE_END_LINE_660 = 666;
		for (AnnotatedMethod m : pojoproperties_collector_1_expr172_line_660) {
            int PROBE_START_LINE_662 = 664;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_4221_line_662 = m;
			int pojoproperties_collector_1_expr174_line_662 = v_m_4221_line_662.getParameterCount();
			boolean pojoproperties_collector_1_expr173_line_662 = pojoproperties_collector_1_expr174_line_662 != 1;
			int PROBE_END_LINE_662 = 664;
			// for now, only allow injection of a single arg (to be changed in future?)
            if (pojoproperties_collector_1_expr173_line_662) {
                continue;
            }
            int PROBE_START_LINE_665 = 665;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_ai_4219_line_665 = ai;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_4221_line_665 = m;
			com.fasterxml.jackson.annotation.JacksonInject.Value pojoproperties_collector_1_expr176_line_665 = v_ai_4219_line_665
					.findInjectableValue(v_m_4221_line_665);
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_m_4221_line_665_v1 = m;
			int PROBE_END_LINE_665 = 665;
			_doAddInjectable(pojoproperties_collector_1_expr176_line_665, v_m_4221_line_665_v1);
        }
    }

    protected void _doAddInjectable(JacksonInject.Value injectable, AnnotatedMember m)
    {
        int PROBE_START_LINE_671 = 673;
		com.fasterxml.jackson.annotation.JacksonInject.Value p_injectable_4222_line_671 = injectable;
		boolean pojoproperties_collector_1_expr177_line_671 = p_injectable_4222_line_671 == null;
		int PROBE_END_LINE_671 = 673;
		if (pojoproperties_collector_1_expr177_line_671) {
            return;
        }
        Object id = injectable.getId();
        if (_injectables == null) {
            _injectables = new LinkedHashMap<Object, AnnotatedMember>();
        }
        AnnotatedMember prev = _injectables.put(id, m);
        if (prev != null) {
            // 12-Apr-2017, tatu: Let's allow masking of Field by Method
            if (prev.getClass() == m.getClass()) {
                String type = id.getClass().getName();
                throw new IllegalArgumentException("Duplicate injectable value with id '"
                        +String.valueOf(id)+"' (of type "+type+")");
            }
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
        int PROBE_START_LINE_705 = 705;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4225_line_705 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr179_line_705 = p_props_4225_line_705
				.values();
		Iterator<POJOPropertyBuilder> pojoproperties_collector_1_expr178_line_705 = pojoproperties_collector_1_expr179_line_705
				.iterator();
		int PROBE_END_LINE_705 = 705;
		Iterator<POJOPropertyBuilder> it = pojoproperties_collector_1_expr178_line_705;
        while (true) {
            int PROBE_START_LINE_706 = 706;
			Iterator<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_it_4226_line_706 = it;
			boolean pojoproperties_collector_1_expr180_line_706 = v_it_4226_line_706.hasNext();
			if (!(pojoproperties_collector_1_expr180_line_706)) {
				break;
			}
			int PROBE_END_LINE_706 = 706;
			int PROBE_START_LINE_707 = 707;
			Iterator<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_it_4226_line_707 = it;
			POJOPropertyBuilder pojoproperties_collector_1_expr181_line_707 = v_it_4226_line_707.next();
			int PROBE_END_LINE_707 = 707;
			POJOPropertyBuilder prop = pojoproperties_collector_1_expr181_line_707;

            int PROBE_START_LINE_710 = 713;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4227_line_710 = prop;
			boolean pojoproperties_collector_1_expr183_line_710 = v_prop_4227_line_710.anyVisible();
			boolean pojoproperties_collector_1_expr182_line_710 = !pojoproperties_collector_1_expr183_line_710;
			int PROBE_END_LINE_710 = 713;
			// First: if nothing visible, just remove altogether
            if (pojoproperties_collector_1_expr182_line_710) {
                it.remove();
                continue;
            }
            int PROBE_START_LINE_715 = 727;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4227_line_715 = prop;
			boolean pojoproperties_collector_1_expr184_line_715 = v_prop_4227_line_715.anyIgnorals();
			int PROBE_END_LINE_715 = 727;
			// Otherwise, check ignorals
            if (pojoproperties_collector_1_expr184_line_715) {
                // first: if one or more ignorals, and no explicit markers, remove the whole thing
                if (!prop.isExplicitlyIncluded()) {
                    it.remove();
                    _collectIgnorals(prop.getName());
                    continue;
                }
                // otherwise just remove ones marked to be ignored
                prop.removeIgnored();
                if (!prop.couldDeserialize()) {
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
        int PROBE_START_LINE_738 = 738;
		MapperConfig<?> f__config_4152_line_738 = _config;
		com.fasterxml.jackson.databind.MapperFeature q_infer_property_mutators_125_line_738 = MapperFeature.INFER_PROPERTY_MUTATORS;
		boolean pojoproperties_collector_1_expr185_line_738 = f__config_4152_line_738
				.isEnabled(q_infer_property_mutators_125_line_738);
		int PROBE_END_LINE_738 = 738;
		final boolean inferMutators = pojoproperties_collector_1_expr185_line_738;
        int PROBE_START_LINE_739 = 739;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4228_line_739 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr187_line_739 = p_props_4228_line_739
				.values();
		Iterator<POJOPropertyBuilder> pojoproperties_collector_1_expr186_line_739 = pojoproperties_collector_1_expr187_line_739
				.iterator();
		int PROBE_END_LINE_739 = 739;
		Iterator<POJOPropertyBuilder> it = pojoproperties_collector_1_expr186_line_739;

        while (true) {
            int PROBE_START_LINE_741 = 741;
			Iterator<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_it_4230_line_741 = it;
			boolean pojoproperties_collector_1_expr188_line_741 = v_it_4230_line_741.hasNext();
			if (!(pojoproperties_collector_1_expr188_line_741)) {
				break;
			}
			int PROBE_END_LINE_741 = 741;
			int PROBE_START_LINE_742 = 742;
			Iterator<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_it_4230_line_742 = it;
			POJOPropertyBuilder pojoproperties_collector_1_expr189_line_742 = v_it_4230_line_742.next();
			int PROBE_END_LINE_742 = 742;
			POJOPropertyBuilder prop = pojoproperties_collector_1_expr189_line_742;
            int PROBE_START_LINE_744 = 744;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4231_line_744 = prop;
			boolean v_infer_mutators_4229_line_744 = inferMutators;
			JsonProperty.Access pojoproperties_collector_1_expr190_line_744 = v_prop_4231_line_744
					.removeNonVisible(v_infer_mutators_4229_line_744);
			int PROBE_END_LINE_744 = 744;
			// 26-Jan-2017, tatu: [databind#935]: need to denote removal of
            JsonProperty.Access acc = pojoproperties_collector_1_expr190_line_744;
            int PROBE_START_LINE_745 = 747;
			com.fasterxml.jackson.annotation.JsonProperty.Access v_acc_4232_line_745 = acc;
			com.fasterxml.jackson.annotation.JsonProperty.Access q_read_only_126_line_745 = JsonProperty.Access.READ_ONLY;
			boolean pojoproperties_collector_1_expr191_line_745 = v_acc_4232_line_745 == q_read_only_126_line_745;
			int PROBE_END_LINE_745 = 747;
			if (pojoproperties_collector_1_expr191_line_745) {
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
        int PROBE_START_LINE_775 = 775;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4234_line_775 = props;
		Set<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> pojoproperties_collector_1_expr193_line_775 = p_props_4234_line_775
				.entrySet();
		Iterator<Map.Entry<String, POJOPropertyBuilder>> pojoproperties_collector_1_expr192_line_775 = pojoproperties_collector_1_expr193_line_775
				.iterator();
		int PROBE_END_LINE_775 = 775;
		// With renaming need to do in phases: first, find properties to rename
        Iterator<Map.Entry<String,POJOPropertyBuilder>> it = pojoproperties_collector_1_expr192_line_775;
        LinkedList<POJOPropertyBuilder> renamed = null;
        while (true) {
            int PROBE_START_LINE_777 = 777;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_4235_line_777 = it;
			boolean pojoproperties_collector_1_expr194_line_777 = v_it_4235_line_777.hasNext();
			if (!(pojoproperties_collector_1_expr194_line_777)) {
				break;
			}
			int PROBE_END_LINE_777 = 777;
			int PROBE_START_LINE_778 = 778;
			Iterator<java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder>> v_it_4235_line_778 = it;
			Map.Entry<String, POJOPropertyBuilder> pojoproperties_collector_1_expr195_line_778 = v_it_4235_line_778
					.next();
			int PROBE_END_LINE_778 = 778;
			Map.Entry<String, POJOPropertyBuilder> entry = pojoproperties_collector_1_expr195_line_778;
            int PROBE_START_LINE_779 = 779;
			java.util.Map.Entry<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_entry_4237_line_779 = entry;
			POJOPropertyBuilder pojoproperties_collector_1_expr196_line_779 = v_entry_4237_line_779.getValue();
			int PROBE_END_LINE_779 = 779;
			POJOPropertyBuilder prop = pojoproperties_collector_1_expr196_line_779;

            int PROBE_START_LINE_781 = 781;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4238_line_781 = prop;
			Collection<PropertyName> pojoproperties_collector_1_expr197_line_781 = v_prop_4238_line_781
					.findExplicitNames();
			int PROBE_END_LINE_781 = 781;
			Collection<PropertyName> l = pojoproperties_collector_1_expr197_line_781;

            int PROBE_START_LINE_784 = 786;
			Collection<com.fasterxml.jackson.databind.PropertyName> v_l_4239_line_784 = l;
			boolean pojoproperties_collector_1_expr198_line_784 = v_l_4239_line_784.isEmpty();
			int PROBE_END_LINE_784 = 786;
			// no explicit names? Implicit one is fine as is
            if (pojoproperties_collector_1_expr198_line_784) {
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
        
        int PROBE_START_LINE_814 = 832;
		LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_renamed_4236_line_814 = renamed;
		boolean pojoproperties_collector_1_expr199_line_814 = v_renamed_4236_line_814 != null;
		int PROBE_END_LINE_814 = 832;
		// and if any were renamed, merge back in...
        if (pojoproperties_collector_1_expr199_line_814) {
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
                // [databind#2001]: New name of property was ignored previously? Remove from ignored
                // 01-May-2018, tatu: I have a feeling this will need to be revisited at some point,
                //   to avoid removing some types of removals, possibly. But will do for now.
                if (_ignoredPropertyNames != null) {
                    _ignoredPropertyNames.remove(name);
                }
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
            if ((rename != null) && !fullName.hasSimpleName(rename)) {
                prop = prop.withSimpleName(rename);
                simpleName = rename;
            } else {
                simpleName = fullName.getSimpleName();
            }
            // Need to consider case where there may already be something in there...
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
        // 11-Sep-2012, tatu: To support 'MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME',
        //   need another round of renaming...
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
            // One trickier part (wrt [#24] of JAXB annotations: wrapper that
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
        int PROBE_START_LINE_942 = 942;
		AnnotationIntrospector f__annotation_introspector_4159_line_942 = _annotationIntrospector;
		int PROBE_END_LINE_942 = 942;
		// Then how about explicit ordering?
        AnnotationIntrospector intr = f__annotation_introspector_4159_line_942;
        int PROBE_START_LINE_943 = 943;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_4244_line_943 = intr;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_943 = _classDef;
		Boolean pojoproperties_collector_1_expr200_line_943 = v_intr_4244_line_943
				.findSerializationSortAlphabetically((Annotated) f__class_def_4156_line_943);
		int PROBE_END_LINE_943 = 943;
		Boolean alpha = pojoproperties_collector_1_expr200_line_943;
        boolean sort = false;
        
        int PROBE_START_LINE_946 = 950;
		Boolean v_alpha_4245_line_946 = alpha;
		boolean pojoproperties_collector_1_expr202_line_946 = v_alpha_4245_line_946 == null;
		int PROBE_END_LINE_946 = 950;
		if (pojoproperties_collector_1_expr202_line_946) {
            int PROBE_START_LINE_947 = 947;
			MapperConfig<?> f__config_4152_line_947 = _config;
			boolean pojoproperties_collector_1_expr204_line_947 = f__config_4152_line_947
					.shouldSortPropertiesAlphabetically();
			int PROBE_END_LINE_947 = 947;
			sort = pojoproperties_collector_1_expr204_line_947;
        } else {
            sort = alpha.booleanValue();
        }
        int PROBE_START_LINE_951 = 951;
		com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_4244_line_951 = intr;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_951 = _classDef;
		String[] pojoproperties_collector_1_expr205_line_951 = v_intr_4244_line_951
				.findSerializationPropertyOrder(f__class_def_4156_line_951);
		int PROBE_END_LINE_951 = 951;
		String[] propertyOrder = pojoproperties_collector_1_expr205_line_951;
        
        int PROBE_START_LINE_954 = 956;
		boolean v_sort_4246_line_954 = sort;
		boolean pojoproperties_collector_1_expr207_line_954 = !v_sort_4246_line_954;
		boolean pojoproperties_collector_1_expr208_line_954 = true;
		boolean pojoproperties_collector_1_expr210_line_954 = true;
		if (pojoproperties_collector_1_expr207_line_954) {
			LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_4187_line_954 = _creatorProperties;
			boolean pojoproperties_collector_1_expr209_line_954 = f__creator_properties_4187_line_954 == null;
			pojoproperties_collector_1_expr208_line_954 = (pojoproperties_collector_1_expr209_line_954);
			if (pojoproperties_collector_1_expr208_line_954) {
				String[] v_property_order_4247_line_954 = propertyOrder;
				boolean pojoproperties_collector_1_expr211_line_954 = v_property_order_4247_line_954 == null;
				pojoproperties_collector_1_expr210_line_954 = (pojoproperties_collector_1_expr211_line_954);
			}
		}
		boolean pojoproperties_collector_1_expr206_line_954 = pojoproperties_collector_1_expr207_line_954
				&& pojoproperties_collector_1_expr208_line_954 && pojoproperties_collector_1_expr210_line_954;
		int PROBE_END_LINE_954 = 956;
		// no sorting? no need to shuffle, then
        if (pojoproperties_collector_1_expr206_line_954) {
            return;
        }
        int PROBE_START_LINE_957 = 957;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4243_line_957 = props;
		int pojoproperties_collector_1_expr212_line_957 = p_props_4243_line_957.size();
		int PROBE_END_LINE_957 = 957;
		int size = pojoproperties_collector_1_expr212_line_957;
        Map<String, POJOPropertyBuilder> all = null;
        int PROBE_START_LINE_960 = 964;
		boolean v_sort_4246_line_960 = sort;
		int PROBE_END_LINE_960 = 964;
		// Need to (re)sort alphabetically?
        if (v_sort_4246_line_960) {
            all = new TreeMap<String,POJOPropertyBuilder>();
        } else {
            int PROBE_START_LINE_963 = 963;
			int v_size_4248_line_963 = size;
			int v_size_4248_line_963_v1 = size;
			int pojoproperties_collector_1_expr215_line_963 = v_size_4248_line_963 + v_size_4248_line_963_v1;
			int PROBE_END_LINE_963 = 963;
			all = new LinkedHashMap<String,POJOPropertyBuilder>(pojoproperties_collector_1_expr215_line_963);
        }

        int PROBE_START_LINE_966 = 968;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4243_line_966 = props;
		Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> pojoproperties_collector_1_expr216_line_966 = p_props_4243_line_966
				.values();
		int PROBE_END_LINE_966 = 968;
		for (POJOPropertyBuilder prop : pojoproperties_collector_1_expr216_line_966) {
            int PROBE_START_LINE_967 = 967;
			Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_all_4249_line_967 = all;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4250_line_967 = prop;
			String pojoproperties_collector_1_expr218_line_967 = v_prop_4250_line_967.getName();
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4250_line_967_v1 = prop;
			int PROBE_END_LINE_967 = 967;
			v_all_4249_line_967.put(pojoproperties_collector_1_expr218_line_967, v_prop_4250_line_967_v1);
        }
        int PROBE_START_LINE_969 = 969;
		int v_size_4248_line_969 = size;
		int v_size_4248_line_969_v1 = size;
		int pojoproperties_collector_1_expr220_line_969 = v_size_4248_line_969 + v_size_4248_line_969_v1;
		int PROBE_END_LINE_969 = 969;
		Map<String,POJOPropertyBuilder> ordered = new LinkedHashMap<String,POJOPropertyBuilder>(pojoproperties_collector_1_expr220_line_969);
        int PROBE_START_LINE_971 = 988;
		String[] v_property_order_4247_line_971 = propertyOrder;
		boolean pojoproperties_collector_1_expr221_line_971 = v_property_order_4247_line_971 != null;
		int PROBE_END_LINE_971 = 988;
		// Ok: primarily by explicit order
        if (pojoproperties_collector_1_expr221_line_971) {
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
        int PROBE_START_LINE_990 = 1015;
		LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_4187_line_990 = _creatorProperties;
		boolean pojoproperties_collector_1_expr222_line_990 = f__creator_properties_4187_line_990 != null;
		int PROBE_END_LINE_990 = 1015;
		// And secondly by sorting Creator properties before other unordered properties
        if (pojoproperties_collector_1_expr222_line_990) {
            /* As per [databind#311], this is bit delicate; but if alphabetic ordering
             * is mandated, at least ensure creator properties are in alphabetic
             * order. Related question of creator vs non-creator is punted for now,
             * so creator properties still fully predate non-creator ones.
             */
            Collection<POJOPropertyBuilder> cr = null;
            int PROBE_START_LINE_997 = 1006;
			boolean v_sort_4246_line_997 = sort;
			int PROBE_END_LINE_997 = 1006;
			if (v_sort_4246_line_997) {
                TreeMap<String, POJOPropertyBuilder> sorted =
                        new TreeMap<String,POJOPropertyBuilder>();
                for (POJOPropertyBuilder prop : _creatorProperties) {
                    sorted.put(prop.getName(), prop);
                }
                cr = sorted.values();
            } else {
                int PROBE_START_LINE_1005 = 1005;
				LinkedList<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> f__creator_properties_4187_line_1005 = _creatorProperties;
				int PROBE_END_LINE_1005 = 1005;
				cr = f__creator_properties_4187_line_1005;
            }
            int PROBE_START_LINE_1007 = 1014;
			Collection<com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_cr_4252_line_1007 = cr;
			int PROBE_END_LINE_1007 = 1014;
			for (POJOPropertyBuilder prop : v_cr_4252_line_1007) {
                // 16-Jan-2016, tatu: Related to [databind#1317], make sure not to accidentally
                //    add back pruned creator properties!
                String name = prop.getName();
                if (all.containsKey(name)) {
                    ordered.put(name, prop);
                }
            }
        }
        int PROBE_START_LINE_1017 = 1017;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_ordered_4251_line_1017 = ordered;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_all_4249_line_1017 = all;
		int PROBE_END_LINE_1017 = 1017;
		// And finally whatever is left (trying to put again will not change ordering)
        v_ordered_4251_line_1017.putAll(v_all_4249_line_1017);
        int PROBE_START_LINE_1018 = 1018;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4243_line_1018 = props;
		int PROBE_END_LINE_1018 = 1018;
		p_props_4243_line_1018.clear();
        int PROBE_START_LINE_1019 = 1019;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4243_line_1019 = props;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> v_ordered_4251_line_1019 = ordered;
		int PROBE_END_LINE_1019 = 1019;
		p_props_4243_line_1019.putAll(v_ordered_4251_line_1019);
    }        

    /*
    /**********************************************************
    /* Internal methods; helpers
    /**********************************************************
     */

    protected void reportProblem(String msg, Object... args) {
        if (args.length > 0) {
            msg = String.format(msg, args);
        }
        throw new IllegalArgumentException("Problem with definition of "+_classDef+": "+msg);
    }

    protected POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> props,
            PropertyName name) {
        String simpleName = name.getSimpleName();
        POJOPropertyBuilder prop = props.get(simpleName);
        if (prop == null) {
            prop = new POJOPropertyBuilder(_config, _annotationIntrospector,
                    _forSerialization, name);
            props.put(simpleName, prop);
        }
        return prop;
    }
    
    // !!! TODO: deprecate, require use of PropertyName
    protected POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> props,
            String implName)
    {
        int PROBE_START_LINE_1051 = 1051;
		Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4258_line_1051 = props;
		String p_impl_name_4259_line_1051 = implName;
		POJOPropertyBuilder pojoproperties_collector_1_expr227_line_1051 = p_props_4258_line_1051
				.get(p_impl_name_4259_line_1051);
		int PROBE_END_LINE_1051 = 1051;
		POJOPropertyBuilder prop = pojoproperties_collector_1_expr227_line_1051;
        int PROBE_START_LINE_1052 = 1056;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4260_line_1052 = prop;
		boolean pojoproperties_collector_1_expr228_line_1052 = v_prop_4260_line_1052 == null;
		int PROBE_END_LINE_1052 = 1056;
		if (pojoproperties_collector_1_expr228_line_1052) {
            int PROBE_START_LINE_1053 = 1054;
			MapperConfig<?> f__config_4152_line_1053 = _config;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4159_line_1053 = _annotationIntrospector;
			boolean f__for_serialization_4154_line_1053 = _forSerialization;
			int PROBE_END_LINE_1053 = 1054;
			prop = new POJOPropertyBuilder(f__config_4152_line_1053, f__annotation_introspector_4159_line_1053, f__for_serialization_4154_line_1053,
                    PropertyName.construct(implName));
            int PROBE_START_LINE_1055 = 1055;
			Map<String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> p_props_4258_line_1055 = props;
			String p_impl_name_4259_line_1055 = implName;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4260_line_1055 = prop;
			int PROBE_END_LINE_1055 = 1055;
			p_props_4258_line_1055.put(p_impl_name_4259_line_1055, v_prop_4260_line_1055);
        }
        int PROBE_START_LINE_1057 = 1057;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder v_prop_4260_line_1057 = prop;
		int PROBE_END_LINE_1057 = 1057;
		return v_prop_4260_line_1057;
    }

    private PropertyNamingStrategy _findNamingStrategy()
    {
        int PROBE_START_LINE_1062 = 1062;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4159_line_1062 = _annotationIntrospector;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass f__class_def_4156_line_1062 = _classDef;
		Object pojoproperties_collector_1_expr233_line_1062 = f__annotation_introspector_4159_line_1062
				.findNamingStrategy(f__class_def_4156_line_1062);
		int PROBE_END_LINE_1062 = 1062;
		Object namingDef = pojoproperties_collector_1_expr233_line_1062;
        int PROBE_START_LINE_1063 = 1065;
		Object v_naming_def_4261_line_1063 = namingDef;
		boolean pojoproperties_collector_1_expr234_line_1063 = v_naming_def_4261_line_1063 == null;
		int PROBE_END_LINE_1063 = 1065;
		if (pojoproperties_collector_1_expr234_line_1063) {
            int PROBE_START_LINE_1064 = 1064;
			MapperConfig<?> f__config_4152_line_1064 = _config;
			com.fasterxml.jackson.databind.PropertyNamingStrategy pojoproperties_collector_1_expr235_line_1064 = f__config_4152_line_1064
					.getPropertyNamingStrategy();
			int PROBE_END_LINE_1064 = 1064;
			return pojoproperties_collector_1_expr235_line_1064;
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
            final String intName = prop.getInternalName();
            for (int i = 0, len = creatorProperties.size(); i < len; ++i) {
                if (creatorProperties.get(i).getInternalName().equals(intName)) {
                    creatorProperties.set(i, prop);
                    break;
                }
            }
        }
    }
}
