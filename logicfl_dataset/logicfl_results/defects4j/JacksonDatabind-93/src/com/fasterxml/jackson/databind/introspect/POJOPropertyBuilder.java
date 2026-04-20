package com.fasterxml.jackson.databind.introspect;

import java.util.*;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Iterator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import java.util.Set;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;

/**
 * Helper class used for aggregating information about a single
 * potential POJO property.
 */
public class POJOPropertyBuilder
    extends BeanPropertyDefinition
    implements Comparable<POJOPropertyBuilder>
{
    /**
     * Whether property is being composed for serialization
     * (true) or deserialization (false)
     */
    protected final boolean _forSerialization;

    protected final MapperConfig<?> _config;

    protected final AnnotationIntrospector _annotationIntrospector;

    /**
     * External name of logical property; may change with
     * renaming (by new instance being constructed using
     * a new name)
     */
    protected final PropertyName _name;

    /**
     * Original internal name, derived from accessor, of this
     * property. Will not be changed by renaming.
     */
    protected final PropertyName _internalName;

    protected Linked<AnnotatedField> _fields;

    protected Linked<AnnotatedParameter> _ctorParameters;

    protected Linked<AnnotatedMethod> _getters;

    protected Linked<AnnotatedMethod> _setters;

    public POJOPropertyBuilder(MapperConfig<?> config, AnnotationIntrospector ai,
            boolean forSerialization, PropertyName internalName) {
        this(config, ai, forSerialization, internalName, internalName);
    }

    protected POJOPropertyBuilder(MapperConfig<?> config, AnnotationIntrospector ai,
            boolean forSerialization, PropertyName internalName, PropertyName name)
    {
        int PROBE_START_LINE_58 = 58;
		MapperConfig<?> p_config_3348_line_58 = config;
		int PROBE_END_LINE_58 = 58;
		_config = p_config_3348_line_58;
        int PROBE_START_LINE_59 = 59;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_3349_line_59 = ai;
		int PROBE_END_LINE_59 = 59;
		_annotationIntrospector = p_ai_3349_line_59;
        int PROBE_START_LINE_60 = 60;
		com.fasterxml.jackson.databind.PropertyName p_internal_name_3351_line_60 = internalName;
		int PROBE_END_LINE_60 = 60;
		_internalName = p_internal_name_3351_line_60;
        int PROBE_START_LINE_61 = 61;
		com.fasterxml.jackson.databind.PropertyName p_name_3352_line_61 = name;
		int PROBE_END_LINE_61 = 61;
		_name = p_name_3352_line_61;
        int PROBE_START_LINE_62 = 62;
		boolean p_for_serialization_3350_line_62 = forSerialization;
		int PROBE_END_LINE_62 = 62;
		_forSerialization = p_for_serialization_3350_line_62;
    }

    public POJOPropertyBuilder(POJOPropertyBuilder src, PropertyName newName)
    {
        _config = src._config;
        _annotationIntrospector = src._annotationIntrospector;
        _internalName = src._internalName;
        _name = newName;
        _fields = src._fields;
        _ctorParameters = src._ctorParameters;
        _getters = src._getters;
        _setters = src._setters;
        _forSerialization = src._forSerialization;
    }
    
    /*
    /**********************************************************
    /* Fluent factory methods
    /**********************************************************
     */

    @Override
    public POJOPropertyBuilder withName(PropertyName newName) {
        return new POJOPropertyBuilder(this, newName);
    }

    @Override
    public POJOPropertyBuilder withSimpleName(String newSimpleName)
    {
        PropertyName newName = _name.withSimpleName(newSimpleName);
        return (newName == _name) ? this : new POJOPropertyBuilder(this, newName);
    }
    
    /*
    /**********************************************************
    /* Comparable implementation: sort alphabetically, except
    /* that properties with constructor parameters sorted
    /* before other properties
    /**********************************************************
     */

    @Override
    public int compareTo(POJOPropertyBuilder other)
    {
        // first, if one has ctor params, that should come first:
        if (_ctorParameters != null) {
            if (other._ctorParameters == null) {
                return -1;
            }
        } else if (other._ctorParameters != null) {
            return 1;
        }
        /* otherwise sort by external name (including sorting of
         * ctor parameters)
         */
        return getName().compareTo(other.getName());
    }

    /*
    /**********************************************************
    /* BeanPropertyDefinition implementation, name/type
    /**********************************************************
     */

    @Override
    public String getName() {
        int PROBE_START_LINE_129 = 129;
		com.fasterxml.jackson.databind.PropertyName f__name_3356_line_129 = _name;
		boolean pojoproperty_builder_1_expr10_line_129 = f__name_3356_line_129 == null;
		boolean pojoproperty_builder_1_expr8_line_129 = (pojoproperty_builder_1_expr10_line_129);
		String pojoproperty_builder_1_expr9_line_129 = null;
		if (!pojoproperty_builder_1_expr8_line_129) {
			com.fasterxml.jackson.databind.PropertyName f__name_3356_line_129_v1 = _name;
			pojoproperty_builder_1_expr9_line_129 = f__name_3356_line_129_v1.getSimpleName();
		}
		String pojoproperty_builder_1_expr7_line_129 = pojoproperty_builder_1_expr8_line_129
				? null
				: pojoproperty_builder_1_expr9_line_129;
		int PROBE_END_LINE_129 = 129;
		return pojoproperty_builder_1_expr7_line_129;
    }

    @Override
    public PropertyName getFullName() {
        int PROBE_START_LINE_134 = 134;
		com.fasterxml.jackson.databind.PropertyName f__name_3356_line_134 = _name;
		int PROBE_END_LINE_134 = 134;
		return f__name_3356_line_134;
    }

    @Override
    public boolean hasName(PropertyName name) {
        return _name.equals(name);
    }

    @Override
    public String getInternalName() { return _internalName.getSimpleName(); }

    @Override
    public PropertyName getWrapperName() {
        int PROBE_START_LINE_152 = 152;
		AnnotatedMember pojoproperty_builder_1_expr11_line_152 = getPrimaryMember();
		int PROBE_END_LINE_152 = 152;
		/* 13-Mar-2013, tatu: Accessing via primary member SHOULD work,
         *   due to annotation merging. However, I have seen some problems
         *   with this access (for other annotations)... so if this should
         *   occur, try commenting out full traversal code
         */
        AnnotatedMember member = pojoproperty_builder_1_expr11_line_152;
        int PROBE_START_LINE_153 = 154;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_3364_line_153 = member;
		boolean pojoproperty_builder_1_expr16_line_153 = v_member_3364_line_153 == null;
		boolean pojoproperty_builder_1_expr17_line_153 = false;
		if (!pojoproperty_builder_1_expr16_line_153) {
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_153 = _annotationIntrospector;
			pojoproperty_builder_1_expr17_line_153 = f__annotation_introspector_3354_line_153 == null;
		}
		boolean pojoproperty_builder_1_expr15_line_153 = pojoproperty_builder_1_expr16_line_153
				|| pojoproperty_builder_1_expr17_line_153;
		boolean pojoproperty_builder_1_expr13_line_153 = (pojoproperty_builder_1_expr15_line_153);
		com.fasterxml.jackson.databind.PropertyName pojoproperty_builder_1_expr12_line_153 = pojoproperty_builder_1_expr13_line_153
				? null
				: _annotationIntrospector.findWrapperName(member);
		int PROBE_END_LINE_153 = 154;
		return pojoproperty_builder_1_expr12_line_153;
    	/*
        return fromMemberAnnotations(new WithMember<PropertyName>() {
            @Override
            public PropertyName withMember(AnnotatedMember member) {
                return _annotationIntrospector.findWrapperName(member);
            }
        });
        */
    }

    @Override
    public boolean isExplicitlyIncluded() {
        return _anyExplicits(_fields)
                || _anyExplicits(_getters)
                || _anyExplicits(_setters)
                // 16-Jan-2016, tatu: Creator names are special, in that name should exist too;
                //   reason for this is [databind#1317]. Let's hope this works well, may need
                //   to tweak further if this lowers visibility
//                || _anyExplicits(_ctorParameters)
                || _anyExplicitNames(_ctorParameters)
                ;
    }

    @Override
    public boolean isExplicitlyNamed() {
        return _anyExplicitNames(_fields)
                || _anyExplicitNames(_getters)
                || _anyExplicitNames(_setters)
                || _anyExplicitNames(_ctorParameters)
                ;
    }
    
    /*
    /**********************************************************
    /* BeanPropertyDefinition implementation, accessor access
    /**********************************************************
     */

    @Override
    public boolean hasGetter() { return _getters != null; }

    @Override
    public boolean hasSetter() { int PROBE_START_LINE_197 = 197;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3365_line_197 = _setters;
		boolean pojoproperty_builder_1_expr18_line_197 = f__setters_3365_line_197 != null;
		int PROBE_END_LINE_197 = 197;
	return pojoproperty_builder_1_expr18_line_197; }

    @Override
    public boolean hasField() { int PROBE_START_LINE_200 = 200;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_200 = _fields;
		boolean pojoproperty_builder_1_expr19_line_200 = f__fields_3366_line_200 != null;
		int PROBE_END_LINE_200 = 200;
	return pojoproperty_builder_1_expr19_line_200; }

    @Override
    public boolean hasConstructorParameter() { int PROBE_START_LINE_203 = 203;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_203 = _ctorParameters;
		boolean pojoproperty_builder_1_expr20_line_203 = f__ctor_parameters_3367_line_203 != null;
		int PROBE_END_LINE_203 = 203;
	return pojoproperty_builder_1_expr20_line_203; }

    @Override
    public boolean couldDeserialize() {
        return (_ctorParameters != null) || (_setters != null) || (_fields != null);
    }

    @Override
    public boolean couldSerialize() {
        return (_getters != null) || (_fields != null);
    }

    @Override
    public AnnotatedMethod getGetter()
    {
        // Easy with zero or one getters...
        Linked<AnnotatedMethod> curr = _getters;
        if (curr == null) {
            return null;
        }
        Linked<AnnotatedMethod> next = curr.next;
        if (next == null) {
            return curr.value;
        }
        // But if multiple, verify that they do not conflict...
        for (; next != null; next = next.next) {
            /* [JACKSON-255] Allow masking, i.e. do not report exception if one
             *   is in super-class from the other
             */
            Class<?> currClass = curr.value.getDeclaringClass();
            Class<?> nextClass = next.value.getDeclaringClass();
            if (currClass != nextClass) {
                if (currClass.isAssignableFrom(nextClass)) { // next is more specific
                    curr = next;
                    continue;
                }
                if (nextClass.isAssignableFrom(currClass)) { // current more specific
                    continue;
                }
            }
            /* 30-May-2014, tatu: Three levels of precedence:
             * 
             * 1. Regular getters ("getX")
             * 2. Is-getters ("isX")
             * 3. Implicit, possible getters ("x")
             */
            int priNext = _getterPriority(next.value);
            int priCurr = _getterPriority(curr.value);

            if (priNext != priCurr) {
                if (priNext < priCurr) {
                    curr = next;
                }
                continue;
            }
            throw new IllegalArgumentException("Conflicting getter definitions for property \""+getName()+"\": "
                    +curr.value.getFullName()+" vs "+next.value.getFullName());
        }
        // One more thing; to avoid having to do it again...
        _getters = curr.withoutNext();
        return curr.value;
    }
    
    @Override
    public AnnotatedMethod getSetter()
    {
        int PROBE_START_LINE_270 = 270;
		Linked<AnnotatedMethod> f__setters_3365_line_270 = _setters;
		int PROBE_END_LINE_270 = 270;
		// Easy with zero or one getters...
        Linked<AnnotatedMethod> curr = f__setters_3365_line_270;
        int PROBE_START_LINE_271 = 273;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_curr_3368_line_271 = curr;
		boolean pojoproperty_builder_1_expr21_line_271 = v_curr_3368_line_271 == null;
		int PROBE_END_LINE_271 = 273;
		if (pojoproperty_builder_1_expr21_line_271) {
            return null;
        }
        Linked<AnnotatedMethod> next = curr.next;
        if (next == null) {
            return curr.value;
        }
        // But if multiple, verify that they do not conflict...
        for (; next != null; next = next.next) {
            // Allow masking, i.e. do not fail if one is in super-class from the other
            Class<?> currClass = curr.value.getDeclaringClass();
            Class<?> nextClass = next.value.getDeclaringClass();
            if (currClass != nextClass) {
                if (currClass.isAssignableFrom(nextClass)) { // next is more specific
                    curr = next;
                    continue;
                }
                if (nextClass.isAssignableFrom(currClass)) { // current more specific
                    continue;
                }
            }
            AnnotatedMethod nextM = next.value;
            AnnotatedMethod currM = curr.value;

            /* 30-May-2014, tatu: Two levels of precedence:
             * 
             * 1. Regular setters ("setX(...)")
             * 2. Implicit, possible setters ("x(...)")
             */
            int priNext = _setterPriority(nextM);
            int priCurr = _setterPriority(currM);

            if (priNext != priCurr) {
                if (priNext < priCurr) {
                    curr = next;
                }
                continue;
            }
            // 11-Dec-2015, tatu: As per [databind#1033] allow pluggable conflict resolution
            if (_annotationIntrospector != null) {
                AnnotatedMethod pref = _annotationIntrospector.resolveSetterConflict(_config,
                        currM, nextM);
                
                // note: should be one of nextM/currM; but no need to check
                if (pref == currM) {
                    continue;
                }
                if (pref == nextM) {
                    curr = next;
                    continue;
                }
            }
            throw new IllegalArgumentException(String.format(
 "Conflicting setter definitions for property \"%s\": %s vs %s",
 getName(), curr.value.getFullName(), next.value.getFullName()));
        }
        // One more thing; to avoid having to do it again...
        _setters = curr.withoutNext();
        return curr.value;
    }

    @Override
    public AnnotatedField getField()
    {
        int PROBE_START_LINE_335 = 337;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_335 = _fields;
		boolean pojoproperty_builder_1_expr22_line_335 = f__fields_3366_line_335 == null;
		int PROBE_END_LINE_335 = 337;
		if (pojoproperty_builder_1_expr22_line_335) {
            return null;
        }
        int PROBE_START_LINE_339 = 339;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_339 = _fields;
		AnnotatedField q_value_93_line_339 = f__fields_3366_line_339.value;
		int PROBE_END_LINE_339 = 339;
		// If multiple, verify that they do not conflict...
        AnnotatedField field = q_value_93_line_339;
        int PROBE_START_LINE_340 = 340;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_340 = _fields;
		Linked<AnnotatedField> q_next_94_line_340 = f__fields_3366_line_340.next;
		Linked<AnnotatedField> next = q_next_94_line_340;
        boolean FOR_STMT_TOGGLE_LINE_341 = false;
		int PROBE_END_LINE_340 = 340;
		for (; true;) {
            int PROBE_START_LINE_342 = 342;
			if (FOR_STMT_TOGGLE_LINE_341) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_next_3370_line_341_v1 = next;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> q_next_95_line_341 = v_next_3370_line_341_v1.next;
				next = q_next_95_line_341;
			} else {
				FOR_STMT_TOGGLE_LINE_341 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_next_3370_line_341 = next;
			boolean pojoproperty_builder_1_expr23_line_341 = v_next_3370_line_341 != null;
			if (!(pojoproperty_builder_1_expr23_line_341)) {
				break;
			}
			int PROBE_END_LINE_342 = 342;
			AnnotatedField nextField = next.value;
            Class<?> fieldClass = field.getDeclaringClass();
            Class<?> nextClass = nextField.getDeclaringClass();
            if (fieldClass != nextClass) {
                if (fieldClass.isAssignableFrom(nextClass)) { // next is more specific
                    field = nextField;
                    continue;
                }
                if (nextClass.isAssignableFrom(fieldClass)) { // getter more specific
                    continue;
                }
            }
            throw new IllegalArgumentException("Multiple fields representing property \""+getName()+"\": "
                    +field.getFullName()+" vs "+nextField.getFullName());
        }
        int PROBE_START_LINE_357 = 357;
		com.fasterxml.jackson.databind.introspect.AnnotatedField v_field_3369_line_357 = field;
		int PROBE_END_LINE_357 = 357;
		return v_field_3369_line_357;
    }

    @Override
    public AnnotatedParameter getConstructorParameter()
    {
        int PROBE_START_LINE_363 = 365;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_363 = _ctorParameters;
		boolean pojoproperty_builder_1_expr25_line_363 = f__ctor_parameters_3367_line_363 == null;
		int PROBE_END_LINE_363 = 365;
		if (pojoproperty_builder_1_expr25_line_363) {
            return null;
        }
        /* Hmmh. Checking for constructor parameters is trickier; for one,
         * we must allow creator and factory method annotations.
         * If this is the case, constructor parameter has the precedence.
         * 
         * So, for now, just try finding the first constructor parameter;
         * if none, first factory method. And don't check for dups, if we must,
         * can start checking for them later on.
         */
        Linked<AnnotatedParameter> curr = _ctorParameters;
        do {
            if (curr.value.getOwner() instanceof AnnotatedConstructor) {
                return curr.value;
            }
            curr = curr.next;
        } while (curr != null);
        return _ctorParameters.value;
    }

    @Override
    public Iterator<AnnotatedParameter> getConstructorParameters() {
        int PROBE_START_LINE_386 = 388;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_386 = _ctorParameters;
		boolean pojoproperty_builder_1_expr26_line_386 = f__ctor_parameters_3367_line_386 == null;
		int PROBE_END_LINE_386 = 388;
		if (pojoproperty_builder_1_expr26_line_386) {
            int PROBE_START_LINE_387 = 387;
			Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr27_line_387 = ClassUtil
					.emptyIterator();
			int PROBE_END_LINE_387 = 387;
			return pojoproperty_builder_1_expr27_line_387;
        }
        return new MemberIterator<AnnotatedParameter>(_ctorParameters);
    }
    
    @Override
    public AnnotatedMember getAccessor()
    {
        AnnotatedMember m = getGetter();
        if (m == null) {
            m = getField();
        }
        return m;
    }

    @Override
    public AnnotatedMember getMutator()
    {
        int PROBE_START_LINE_405 = 405;
		AnnotatedMember pojoproperty_builder_1_expr28_line_405 = getConstructorParameter();
		int PROBE_END_LINE_405 = 405;
		AnnotatedMember m = pojoproperty_builder_1_expr28_line_405;
        int PROBE_START_LINE_406 = 411;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3371_line_406 = m;
		boolean pojoproperty_builder_1_expr29_line_406 = v_m_3371_line_406 == null;
		int PROBE_END_LINE_406 = 411;
		if (pojoproperty_builder_1_expr29_line_406) {
            int PROBE_START_LINE_407 = 407;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod pojoproperty_builder_1_expr31_line_407 = getSetter();
			int PROBE_END_LINE_407 = 407;
			m = pojoproperty_builder_1_expr31_line_407;
            int PROBE_START_LINE_408 = 410;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3371_line_408 = m;
			boolean pojoproperty_builder_1_expr32_line_408 = v_m_3371_line_408 == null;
			int PROBE_END_LINE_408 = 410;
			if (pojoproperty_builder_1_expr32_line_408) {
                int PROBE_START_LINE_409 = 409;
				com.fasterxml.jackson.databind.introspect.AnnotatedField pojoproperty_builder_1_expr34_line_409 = getField();
				int PROBE_END_LINE_409 = 409;
				m = pojoproperty_builder_1_expr34_line_409;
            }
        }
        int PROBE_START_LINE_412 = 412;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3371_line_412 = m;
		int PROBE_END_LINE_412 = 412;
		return v_m_3371_line_412;
    }

    @Override
    public AnnotatedMember getNonConstructorMutator() {
        int PROBE_START_LINE_417 = 417;
		AnnotatedMember pojoproperty_builder_1_expr35_line_417 = getSetter();
		int PROBE_END_LINE_417 = 417;
		AnnotatedMember m = pojoproperty_builder_1_expr35_line_417;
        int PROBE_START_LINE_418 = 420;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3372_line_418 = m;
		boolean pojoproperty_builder_1_expr36_line_418 = v_m_3372_line_418 == null;
		int PROBE_END_LINE_418 = 420;
		if (pojoproperty_builder_1_expr36_line_418) {
            int PROBE_START_LINE_419 = 419;
			com.fasterxml.jackson.databind.introspect.AnnotatedField pojoproperty_builder_1_expr38_line_419 = getField();
			int PROBE_END_LINE_419 = 419;
			m = pojoproperty_builder_1_expr38_line_419;
        }
        int PROBE_START_LINE_421 = 421;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3372_line_421 = m;
		int PROBE_END_LINE_421 = 421;
		return v_m_3372_line_421;
    }

    @Override
    public AnnotatedMember getPrimaryMember() {
        int PROBE_START_LINE_426 = 428;
		boolean f__for_serialization_3357_line_426 = _forSerialization;
		int PROBE_END_LINE_426 = 428;
		if (f__for_serialization_3357_line_426) {
            return getAccessor();
        }
        int PROBE_START_LINE_429 = 429;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember pojoproperty_builder_1_expr39_line_429 = getMutator();
		int PROBE_END_LINE_429 = 429;
		return pojoproperty_builder_1_expr39_line_429;
    }

    protected int _getterPriority(AnnotatedMethod m)
    {
        final String name = m.getName();
        // [databind#238]: Also, regular getters have precedence over "is-getters"
        if (name.startsWith("get") && name.length() > 3) {
            // should we check capitalization?
            return 1;
        }
        if (name.startsWith("is") && name.length() > 2) {
            return 2;
        }
        return 3;
    }

    protected int _setterPriority(AnnotatedMethod m)
    {
        final String name = m.getName();
        if (name.startsWith("set") && name.length() > 3) {
            // should we check capitalization?
            return 1;
        }
        return 2;
    }

    /*
    /**********************************************************
    /* Implementations of refinement accessors
    /**********************************************************
     */

    @Override
    public Class<?>[] findViews() {
        int PROBE_START_LINE_464 = 469;
		Class<?>[] pojoproperty_builder_1_expr40_line_464 = fromMemberAnnotations(new WithMember<Class<?>[]>() {
			@Override
			public Class<?>[] withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_467 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3375_line_467 = member;
				Class<?>[] pojoproperty_builder_1_expr42_line_467 = f__annotation_introspector_3354_line_467
						.findViews(p_member_3375_line_467);
				return pojoproperty_builder_1_expr42_line_467;
			}
		});
		int PROBE_END_LINE_464 = 469;
		return pojoproperty_builder_1_expr40_line_464;
    }

    @Override
    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        int PROBE_START_LINE_474 = 479;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty pojoproperty_builder_1_expr43_line_474 = fromMemberAnnotations(
				new WithMember<AnnotationIntrospector.ReferenceProperty>() {
					@Override
					public AnnotationIntrospector.ReferenceProperty withMember(AnnotatedMember member) {
						com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_477 = _annotationIntrospector;
						com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3376_line_477 = member;
						com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty pojoproperty_builder_1_expr45_line_477 = f__annotation_introspector_3354_line_477
								.findReferenceType(p_member_3376_line_477);
						return pojoproperty_builder_1_expr45_line_477;
					}
				});
		int PROBE_END_LINE_474 = 479;
		return pojoproperty_builder_1_expr43_line_474;
    }

    @Override
    public boolean isTypeId() {
        Boolean b = fromMemberAnnotations(new WithMember<Boolean>() {
            @Override
            public Boolean withMember(AnnotatedMember member) {
                return _annotationIntrospector.isTypeId(member);
            }
        });
        return (b != null) && b.booleanValue();
    }

    @Override
    public PropertyMetadata getMetadata() {
        int PROBE_START_LINE_495 = 495;
		Boolean pojoproperty_builder_1_expr46_line_495 = _findRequired();
		int PROBE_END_LINE_495 = 495;
		final Boolean b = pojoproperty_builder_1_expr46_line_495;
        int PROBE_START_LINE_496 = 496;
		String pojoproperty_builder_1_expr47_line_496 = _findDescription();
		int PROBE_END_LINE_496 = 496;
		final String desc = pojoproperty_builder_1_expr47_line_496;
        int PROBE_START_LINE_497 = 497;
		Integer pojoproperty_builder_1_expr48_line_497 = _findIndex();
		int PROBE_END_LINE_497 = 497;
		final Integer idx = pojoproperty_builder_1_expr48_line_497;
        int PROBE_START_LINE_498 = 498;
		String pojoproperty_builder_1_expr49_line_498 = _findDefaultValue();
		int PROBE_END_LINE_498 = 498;
		final String def = pojoproperty_builder_1_expr49_line_498;
        int PROBE_START_LINE_499 = 502;
		Boolean v_b_3378_line_499 = b;
		boolean pojoproperty_builder_1_expr52_line_499 = v_b_3378_line_499 == null;
		boolean pojoproperty_builder_1_expr53_line_499 = true;
		if (pojoproperty_builder_1_expr52_line_499) {
			Integer v_idx_3380_line_499 = idx;
			pojoproperty_builder_1_expr53_line_499 = v_idx_3380_line_499 == null;
		}
		boolean pojoproperty_builder_1_expr51_line_499 = pojoproperty_builder_1_expr52_line_499
				&& pojoproperty_builder_1_expr53_line_499;
		boolean pojoproperty_builder_1_expr54_line_499 = true;
		if (pojoproperty_builder_1_expr51_line_499) {
			String v_def_3381_line_499 = def;
			pojoproperty_builder_1_expr54_line_499 = v_def_3381_line_499 == null;
		}
		boolean pojoproperty_builder_1_expr50_line_499 = pojoproperty_builder_1_expr51_line_499
				&& pojoproperty_builder_1_expr54_line_499;
		int PROBE_END_LINE_499 = 502;
		if (pojoproperty_builder_1_expr50_line_499) {
            int PROBE_START_LINE_500 = 501;
			String v_desc_3379_line_500 = desc;
			boolean pojoproperty_builder_1_expr58_line_500 = v_desc_3379_line_500 == null;
			boolean pojoproperty_builder_1_expr56_line_500 = (pojoproperty_builder_1_expr58_line_500);
			com.fasterxml.jackson.databind.PropertyMetadata q_std_required_or_optional_96_line_500 = null;
			if (pojoproperty_builder_1_expr56_line_500) {
				q_std_required_or_optional_96_line_500 = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
			}
			com.fasterxml.jackson.databind.PropertyMetadata pojoproperty_builder_1_expr55_line_500 = pojoproperty_builder_1_expr56_line_500
					? q_std_required_or_optional_96_line_500
					: PropertyMetadata.STD_REQUIRED_OR_OPTIONAL.withDescription(desc);
			int PROBE_END_LINE_500 = 501;
			return pojoproperty_builder_1_expr55_line_500;
        }
        return PropertyMetadata.construct(b, desc, idx, def);
    }

    protected Boolean _findRequired() {
       int PROBE_START_LINE_507 = 512;
		Boolean pojoproperty_builder_1_expr59_line_507 = fromMemberAnnotations(new WithMember<Boolean>() {
			@Override
			public Boolean withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_510 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3382_line_510 = member;
				Boolean pojoproperty_builder_1_expr61_line_510 = f__annotation_introspector_3354_line_510
						.hasRequiredMarker(p_member_3382_line_510);
				return pojoproperty_builder_1_expr61_line_510;
			}
		});
		int PROBE_END_LINE_507 = 512;
	return pojoproperty_builder_1_expr59_line_507;
    }
    
    protected String _findDescription() {
        int PROBE_START_LINE_516 = 521;
		String pojoproperty_builder_1_expr62_line_516 = fromMemberAnnotations(new WithMember<String>() {
			@Override
			public String withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_519 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3383_line_519 = member;
				String pojoproperty_builder_1_expr64_line_519 = f__annotation_introspector_3354_line_519
						.findPropertyDescription(p_member_3383_line_519);
				return pojoproperty_builder_1_expr64_line_519;
			}
		});
		int PROBE_END_LINE_516 = 521;
		return pojoproperty_builder_1_expr62_line_516;
    }

    protected Integer _findIndex() {
        int PROBE_START_LINE_525 = 530;
		Integer pojoproperty_builder_1_expr65_line_525 = fromMemberAnnotations(new WithMember<Integer>() {
			@Override
			public Integer withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_528 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3384_line_528 = member;
				Integer pojoproperty_builder_1_expr67_line_528 = f__annotation_introspector_3354_line_528
						.findPropertyIndex(p_member_3384_line_528);
				return pojoproperty_builder_1_expr67_line_528;
			}
		});
		int PROBE_END_LINE_525 = 530;
		return pojoproperty_builder_1_expr65_line_525;
    }

    protected String _findDefaultValue() {
        int PROBE_START_LINE_534 = 539;
		String pojoproperty_builder_1_expr68_line_534 = fromMemberAnnotations(new WithMember<String>() {
			@Override
			public String withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_537 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3385_line_537 = member;
				String pojoproperty_builder_1_expr70_line_537 = f__annotation_introspector_3354_line_537
						.findPropertyDefaultValue(p_member_3385_line_537);
				return pojoproperty_builder_1_expr70_line_537;
			}
		});
		int PROBE_END_LINE_534 = 539;
		return pojoproperty_builder_1_expr68_line_534;
    }
    
    @Override
    public ObjectIdInfo findObjectIdInfo() {
        int PROBE_START_LINE_544 = 553;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo pojoproperty_builder_1_expr71_line_544 = fromMemberAnnotations(
				new WithMember<ObjectIdInfo>() {
					@Override
					public ObjectIdInfo withMember(AnnotatedMember member) {
						com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_547 = _annotationIntrospector;
						com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3386_line_547 = member;
						ObjectIdInfo pojoproperty_builder_1_expr73_line_547 = f__annotation_introspector_3354_line_547
								.findObjectIdInfo(p_member_3386_line_547);
						ObjectIdInfo info = pojoproperty_builder_1_expr73_line_547;
						com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3387_line_548 = info;
						boolean pojoproperty_builder_1_expr74_line_548 = v_info_3387_line_548 != null;
						if (pojoproperty_builder_1_expr74_line_548) {
							info = _annotationIntrospector.findObjectReferenceInfo(member, info);
						}
						com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3387_line_551 = info;
						return v_info_3387_line_551;
					}
				});
		int PROBE_END_LINE_544 = 553;
		return pojoproperty_builder_1_expr71_line_544;
    }

    @Override
    public JsonInclude.Value findInclusion() {
        AnnotatedMember a = getAccessor();
        // 16-Apr-2106, tatu: Let's include per-type default inclusion too
        // 17-Aug-2016, tatu: Do NOT include global, or per-type defaults, because
        //    not all of this information (specifically, enclosing type's settings)
        //    is available here
        JsonInclude.Value v = (_annotationIntrospector == null) ?
                null : _annotationIntrospector.findPropertyInclusion(a);
        return (v == null) ? JsonInclude.Value.empty() : v;
    }

    public JsonProperty.Access findAccess() {
        int PROBE_START_LINE_569 = 574;
		com.fasterxml.jackson.annotation.JsonProperty.Access pojoproperty_builder_1_expr75_line_569 = fromMemberAnnotationsExcept(
				new WithMember<JsonProperty.Access>() {
					@Override
					public JsonProperty.Access withMember(AnnotatedMember member) {
						com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_572 = _annotationIntrospector;
						com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3388_line_572 = member;
						com.fasterxml.jackson.annotation.JsonProperty.Access pojoproperty_builder_1_expr77_line_572 = f__annotation_introspector_3354_line_572
								.findPropertyAccess(p_member_3388_line_572);
						return pojoproperty_builder_1_expr77_line_572;
					}
				}, JsonProperty.Access.AUTO);
		int PROBE_END_LINE_569 = 574;
		return pojoproperty_builder_1_expr75_line_569;
    }
    
    /*
    /**********************************************************
    /* Data aggregation
    /**********************************************************
     */
    
    public void addField(AnnotatedField a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        int PROBE_START_LINE_584 = 584;
		com.fasterxml.jackson.databind.introspect.AnnotatedField p_a_3389_line_584 = a;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_584 = _fields;
		com.fasterxml.jackson.databind.PropertyName p_name_3390_line_584 = name;
		boolean p_expl_name_3391_line_584 = explName;
		boolean p_visible_3392_line_584 = visible;
		boolean p_ignored_3393_line_584 = ignored;
		int PROBE_END_LINE_584 = 584;
		_fields = new Linked<AnnotatedField>(p_a_3389_line_584, f__fields_3366_line_584, p_name_3390_line_584, p_expl_name_3391_line_584, p_visible_3392_line_584, p_ignored_3393_line_584);
    }

    public void addCtor(AnnotatedParameter a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        _ctorParameters = new Linked<AnnotatedParameter>(a, _ctorParameters, name, explName, visible, ignored);
    }

    public void addGetter(AnnotatedMethod a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        _getters = new Linked<AnnotatedMethod>(a, _getters, name, explName, visible, ignored);
    }

    public void addSetter(AnnotatedMethod a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        _setters = new Linked<AnnotatedMethod>(a, _setters, name, explName, visible, ignored);
    }

    /**
     * Method for adding all property members from specified collector into
     * this collector.
     */
    public void addAll(POJOPropertyBuilder src)
    {
        _fields = merge(_fields, src._fields);
        _ctorParameters = merge(_ctorParameters, src._ctorParameters);
        _getters= merge(_getters, src._getters);
        _setters = merge(_setters, src._setters);
    }

    private static <T> Linked<T> merge(Linked<T> chain1, Linked<T> chain2)
    {
        if (chain1 == null) {
            return chain2;
        }
        if (chain2 == null) {
            return chain1;
        }
        return chain1.append(chain2);
    }

    /*
    /**********************************************************
    /* Modifications
    /**********************************************************
     */

    /**
     * Method called to remove all entries that are marked as
     * ignored.
     */
    public void removeIgnored()
    {
        _fields = _removeIgnored(_fields);
        _getters = _removeIgnored(_getters);
        _setters = _removeIgnored(_setters);
        _ctorParameters = _removeIgnored(_ctorParameters);
    }

    /**
     * @param inferMutators Whether mutators can be "pulled in" by visible
     *    accessors or not. 
     */
    public JsonProperty.Access removeNonVisible(boolean inferMutators)
    {
        int PROBE_START_LINE_650 = 650;
		JsonProperty.Access pojoproperty_builder_1_expr80_line_650 = findAccess();
		int PROBE_END_LINE_650 = 650;
		/* 07-Jun-2015, tatu: With 2.6, we will allow optional definition
         *  of explicit access type for property; if not "AUTO", it will
         *  dictate how visibility checks are applied.
         */
        JsonProperty.Access acc = pojoproperty_builder_1_expr80_line_650;
        int PROBE_START_LINE_651 = 653;
		com.fasterxml.jackson.annotation.JsonProperty.Access v_acc_3413_line_651 = acc;
		boolean pojoproperty_builder_1_expr81_line_651 = v_acc_3413_line_651 == null;
		int PROBE_END_LINE_651 = 653;
		if (pojoproperty_builder_1_expr81_line_651) {
            int PROBE_START_LINE_652 = 652;
			com.fasterxml.jackson.annotation.JsonProperty.Access q_auto_97_line_652 = JsonProperty.Access.AUTO;
			int PROBE_END_LINE_652 = 652;
			acc = q_auto_97_line_652;
        }
        int PROBE_START_LINE_654 = 682;
		com.fasterxml.jackson.annotation.JsonProperty.Access v_acc_3413_line_654 = acc;
		int PROBE_END_LINE_654 = 682;
		switch (v_acc_3413_line_654) {
        case READ_ONLY:
            // Remove setters, creators for sure, but fields too if deserializing
            _setters = null;
            _ctorParameters = null;
            if (!_forSerialization) {
                _fields = null;
            }
            break;
        case READ_WRITE:
            // no trimming whatsoever?
            break;
        case WRITE_ONLY:
            // remove getters, definitely, but also fields if serializing
            _getters = null;
            if (_forSerialization) {
                _fields = null;
            }
            break;
        default:
        case AUTO: // the default case: base it on visibility
		int PROBE_START_LINE_675 = 675;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3414_line_675 = _getters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr84_line_675 = _removeNonVisible(
				f__getters_3414_line_675);
		int PROBE_END_LINE_675 = 675;
		_getters = pojoproperty_builder_1_expr84_line_675;
		int PROBE_START_LINE_676 = 676;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_676 = _ctorParameters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr86_line_676 = _removeNonVisible(
				f__ctor_parameters_3367_line_676);
		int PROBE_END_LINE_676 = 676;
		_ctorParameters = pojoproperty_builder_1_expr86_line_676;
    
		int PROBE_START_LINE_678 = 681;
		boolean p_infer_mutators_3412_line_678 = inferMutators;
		boolean pojoproperty_builder_1_expr88_line_678 = !p_infer_mutators_3412_line_678;
		boolean pojoproperty_builder_1_expr89_line_678 = false;
		if (!pojoproperty_builder_1_expr88_line_678) {
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3414_line_678 = _getters;
			boolean pojoproperty_builder_1_expr90_line_678 = f__getters_3414_line_678 == null;
			pojoproperty_builder_1_expr89_line_678 = (pojoproperty_builder_1_expr90_line_678);
		}
		boolean pojoproperty_builder_1_expr87_line_678 = pojoproperty_builder_1_expr88_line_678
				|| pojoproperty_builder_1_expr89_line_678;
		int PROBE_END_LINE_678 = 681;
		if (pojoproperty_builder_1_expr87_line_678) {
                int PROBE_START_LINE_679 = 679;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_679 = _fields;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperty_builder_1_expr92_line_679 = _removeNonVisible(
						f__fields_3366_line_679);
				int PROBE_END_LINE_679 = 679;
				_fields = pojoproperty_builder_1_expr92_line_679;
                int PROBE_START_LINE_680 = 680;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3365_line_680 = _setters;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr94_line_680 = _removeNonVisible(
						f__setters_3365_line_680);
				int PROBE_END_LINE_680 = 680;
				_setters = pojoproperty_builder_1_expr94_line_680;
            }
        }
        int PROBE_START_LINE_683 = 683;
		com.fasterxml.jackson.annotation.JsonProperty.Access v_acc_3413_line_683 = acc;
		int PROBE_END_LINE_683 = 683;
		return v_acc_3413_line_683;
    }

    /**
     * Mutator that will simply drop any constructor parameters property may have.
     * 
     * @since 2.5
     */
    public void removeConstructors() {
        _ctorParameters = null;
    }
    
    /**
     * Method called to trim unnecessary entries, such as implicit
     * getter if there is an explict one available. This is important
     * for later stages, to avoid unnecessary conflicts.
     */
    public void trimByVisibility()
    {
        int PROBE_START_LINE_702 = 702;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_702 = _fields;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperty_builder_1_expr96_line_702 = _trimByVisibility(
				f__fields_3366_line_702);
		int PROBE_END_LINE_702 = 702;
		_fields = pojoproperty_builder_1_expr96_line_702;
        int PROBE_START_LINE_703 = 703;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3414_line_703 = _getters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr98_line_703 = _trimByVisibility(
				f__getters_3414_line_703);
		int PROBE_END_LINE_703 = 703;
		_getters = pojoproperty_builder_1_expr98_line_703;
        int PROBE_START_LINE_704 = 704;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3365_line_704 = _setters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr100_line_704 = _trimByVisibility(
				f__setters_3365_line_704);
		int PROBE_END_LINE_704 = 704;
		_setters = pojoproperty_builder_1_expr100_line_704;
        int PROBE_START_LINE_705 = 705;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_705 = _ctorParameters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr102_line_705 = _trimByVisibility(
				f__ctor_parameters_3367_line_705);
		int PROBE_END_LINE_705 = 705;
		_ctorParameters = pojoproperty_builder_1_expr102_line_705;
    }

    @SuppressWarnings("unchecked")
    public void mergeAnnotations(boolean forSerialization)
    {
        int PROBE_START_LINE_711 = 730;
		boolean p_for_serialization_3415_line_711 = forSerialization;
		int PROBE_END_LINE_711 = 730;
		if (p_for_serialization_3415_line_711) {
            if (_getters != null) {
                AnnotationMap ann = _mergeAnnotations(0, _getters, _fields, _ctorParameters, _setters);
                _getters = _applyAnnotations(_getters, ann);
            } else if (_fields != null) {
                AnnotationMap ann = _mergeAnnotations(0, _fields, _ctorParameters, _setters);
                _fields = _applyAnnotations(_fields, ann);
            }
        } else { // for deserialization
            int PROBE_START_LINE_720 = 729;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_720 = _ctorParameters;
			boolean pojoproperty_builder_1_expr103_line_720 = f__ctor_parameters_3367_line_720 != null;
			int PROBE_END_LINE_720 = 729;
			if (pojoproperty_builder_1_expr103_line_720) {
                AnnotationMap ann = _mergeAnnotations(0, _ctorParameters, _setters, _fields, _getters);
                _ctorParameters = _applyAnnotations(_ctorParameters, ann);
            } else {
				int PROBE_START_LINE_723 = 729;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3365_line_723 = _setters;
				boolean pojoproperty_builder_1_expr104_line_723 = f__setters_3365_line_723 != null;
				int PROBE_END_LINE_723 = 729;
				if (pojoproperty_builder_1_expr104_line_723) {
					AnnotationMap ann = _mergeAnnotations(0, _setters, _fields, _getters);
					_setters = _applyAnnotations(_setters, ann);
				} else {
					int PROBE_START_LINE_726 = 729;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_726 = _fields;
					boolean pojoproperty_builder_1_expr105_line_726 = f__fields_3366_line_726 != null;
					int PROBE_END_LINE_726 = 729;
					if (pojoproperty_builder_1_expr105_line_726) {
						int PROBE_START_LINE_727 = 727;
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_727 = _fields;
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3414_line_727 = _getters;
						AnnotationMap pojoproperty_builder_1_expr106_line_727 = _mergeAnnotations(0,
								f__fields_3366_line_727, f__getters_3414_line_727);
						int PROBE_END_LINE_727 = 727;
						AnnotationMap ann = pojoproperty_builder_1_expr106_line_727;
						int PROBE_START_LINE_728 = 728;
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_728 = _fields;
						com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_3416_line_728 = ann;
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperty_builder_1_expr108_line_728 = _applyAnnotations(
								f__fields_3366_line_728, v_ann_3416_line_728);
						int PROBE_END_LINE_728 = 728;
						_fields = pojoproperty_builder_1_expr108_line_728;
					}
				}
			}
        }
    }

    private AnnotationMap _mergeAnnotations(int index,
            Linked<? extends AnnotatedMember>... nodes)
    {
        int PROBE_START_LINE_736 = 736;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_3418_line_736 = nodes;
		int p_index_3417_line_736 = index;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> pojoproperty_builder_1_expr110_line_736 = p_nodes_3418_line_736[p_index_3417_line_736];
		AnnotationMap pojoproperty_builder_1_expr109_line_736 = _getAllAnnotations(
				pojoproperty_builder_1_expr110_line_736);
		int PROBE_END_LINE_736 = 736;
		AnnotationMap ann = pojoproperty_builder_1_expr109_line_736;
        while (true) {
            int PROBE_START_LINE_737 = 737;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_3418_line_737 = nodes;
			int q_length_97_line_737 = p_nodes_3418_line_737.length;
			boolean pojoproperty_builder_1_expr111_line_737 = ++index < q_length_97_line_737;
			if (!(pojoproperty_builder_1_expr111_line_737)) {
				break;
			}
			int PROBE_END_LINE_737 = 737;
			int PROBE_START_LINE_738 = 740;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_3418_line_738 = nodes;
			int p_index_3417_line_738 = index;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> pojoproperty_builder_1_expr114_line_738 = p_nodes_3418_line_738[p_index_3417_line_738];
			boolean pojoproperty_builder_1_expr113_line_738 = pojoproperty_builder_1_expr114_line_738 != null;
			int PROBE_END_LINE_738 = 740;
			if (pojoproperty_builder_1_expr113_line_738) {
              return AnnotationMap.merge(ann, _mergeAnnotations(index, nodes));
            }
        }
        int PROBE_START_LINE_742 = 742;
		com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_3419_line_742 = ann;
		int PROBE_END_LINE_742 = 742;
		return v_ann_3419_line_742;
    }

    /**
     * Replacement, as per [databind#868], of simple access to annotations, which
     * does "deep merge" if an as necessary.
     *<pre>
     * nodes[index].value.getAllAnnotations()
     *</pre>
     * 
     * @since 2.6
     */
    private <T extends AnnotatedMember> AnnotationMap _getAllAnnotations(Linked<T> node) {
        int PROBE_START_LINE_755 = 755;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3420_line_755 = node;
		T q_value_98_line_755 = p_node_3420_line_755.value;
		AnnotationMap pojoproperty_builder_1_expr115_line_755 = q_value_98_line_755.getAllAnnotations();
		int PROBE_END_LINE_755 = 755;
		AnnotationMap ann = pojoproperty_builder_1_expr115_line_755;
        int PROBE_START_LINE_756 = 758;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3420_line_756 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_99_line_756 = p_node_3420_line_756.next;
		boolean pojoproperty_builder_1_expr116_line_756 = q_next_99_line_756 != null;
		int PROBE_END_LINE_756 = 758;
		if (pojoproperty_builder_1_expr116_line_756) {
            ann = AnnotationMap.merge(ann, _getAllAnnotations(node.next));
        }
        int PROBE_START_LINE_759 = 759;
		com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_3421_line_759 = ann;
		int PROBE_END_LINE_759 = 759;
		return v_ann_3421_line_759;
    }

    /**
     * Helper method to handle recursive merging of annotations within accessor class,
     * to ensure no annotations are accidentally dropped within chain when non-visible
     * and secondary accessors are pruned later on.
     *<p>
     * See [databind#868] for more information.
     *
     * @since 2.6
     */
    private <T extends AnnotatedMember> Linked<T> _applyAnnotations(Linked<T> node, AnnotationMap ann) {
        int PROBE_START_LINE_772 = 773;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3423_line_773 = node;
		T q_value_100_line_773 = p_node_3423_line_773.value;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_ann_3424_line_773 = ann;
		com.fasterxml.jackson.databind.introspect.Annotated pojoproperty_builder_1_expr118_line_773 = q_value_100_line_773
				.withAnnotations(p_ann_3424_line_773);
		int PROBE_END_LINE_772 = 773;
		@SuppressWarnings("unchecked")
        T value = (T) pojoproperty_builder_1_expr118_line_773;
        int PROBE_START_LINE_774 = 776;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3423_line_774 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_101_line_774 = p_node_3423_line_774.next;
		boolean pojoproperty_builder_1_expr119_line_774 = q_next_101_line_774 != null;
		int PROBE_END_LINE_774 = 776;
		if (pojoproperty_builder_1_expr119_line_774) {
            node = node.withNext(_applyAnnotations(node.next, ann));
        }
        int PROBE_START_LINE_777 = 777;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3423_line_777 = node;
		T v_value_3425_line_777 = value;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr120_line_777 = p_node_3423_line_777
				.withValue(v_value_3425_line_777);
		int PROBE_END_LINE_777 = 777;
		return pojoproperty_builder_1_expr120_line_777;
    }

    private <T> Linked<T> _removeIgnored(Linked<T> node)
    {
        if (node == null) {
            return node;
        }
        return node.withoutIgnored();
    }

    private <T> Linked<T> _removeNonVisible(Linked<T> node)
    {
        int PROBE_START_LINE_790 = 792;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3428_line_790 = node;
		boolean pojoproperty_builder_1_expr121_line_790 = p_node_3428_line_790 == null;
		int PROBE_END_LINE_790 = 792;
		if (pojoproperty_builder_1_expr121_line_790) {
            int PROBE_START_LINE_791 = 791;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3428_line_791 = node;
			int PROBE_END_LINE_791 = 791;
			return p_node_3428_line_791;
        }
        int PROBE_START_LINE_793 = 793;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3428_line_793 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr122_line_793 = p_node_3428_line_793
				.withoutNonVisible();
		int PROBE_END_LINE_793 = 793;
		return pojoproperty_builder_1_expr122_line_793;
    }

    private <T> Linked<T> _trimByVisibility(Linked<T> node)
    {
        int PROBE_START_LINE_798 = 800;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3429_line_798 = node;
		boolean pojoproperty_builder_1_expr123_line_798 = p_node_3429_line_798 == null;
		int PROBE_END_LINE_798 = 800;
		if (pojoproperty_builder_1_expr123_line_798) {
            int PROBE_START_LINE_799 = 799;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3429_line_799 = node;
			int PROBE_END_LINE_799 = 799;
			return p_node_3429_line_799;
        }
        int PROBE_START_LINE_801 = 801;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3429_line_801 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr124_line_801 = p_node_3429_line_801
				.trimByVisibility();
		int PROBE_END_LINE_801 = 801;
		return pojoproperty_builder_1_expr124_line_801;
    }
        
    /*
    /**********************************************************
    /* Accessors for aggregate information
    /**********************************************************
     */

    private <T> boolean _anyExplicits(Linked<T> n)
    {
        for (; n != null; n = n.next) {
            if (n.name != null && n.name.hasSimpleName()) {
                return true;
            }
        }
        return false;
    }

    private <T> boolean _anyExplicitNames(Linked<T> n)
    {
        for (; n != null; n = n.next) {
            if (n.name != null && n.isNameExplicit) {
                return true;
            }
        }
        return false;
    }

    public boolean anyVisible() {
        int PROBE_START_LINE_831 = 835;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_831 = _fields;
		boolean pojoproperty_builder_1_expr126_line_831 = _anyVisible(f__fields_3366_line_831);
		boolean pojoproperty_builder_1_expr125_line_831 = pojoproperty_builder_1_expr126_line_831
				|| _anyVisible(_getters) || _anyVisible(_setters) || _anyVisible(_ctorParameters);
		int PROBE_END_LINE_831 = 835;
		return pojoproperty_builder_1_expr125_line_831
        ;
    }

    private <T> boolean _anyVisible(Linked<T> n)
    {
        int PROBE_START_LINE_839 = 839;
		boolean FOR_STMT_TOGGLE_LINE_840 = false;
		int PROBE_END_LINE_839 = 839;
		for (; true;) {
            int PROBE_START_LINE_841 = 843;
			if (FOR_STMT_TOGGLE_LINE_840) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3432_line_840_v1 = n;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_102_line_840 = p_n_3432_line_840_v1.next;
				n = q_next_102_line_840;
			} else {
				FOR_STMT_TOGGLE_LINE_840 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3432_line_840 = n;
			boolean pojoproperty_builder_1_expr127_line_840 = p_n_3432_line_840 != null;
			if (!(pojoproperty_builder_1_expr127_line_840)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3432_line_841 = n;
			boolean q_is_visible_103_line_841 = p_n_3432_line_841.isVisible;
			int PROBE_END_LINE_841 = 843;
			if (q_is_visible_103_line_841) {
                return true;
            }
        }
        return false;
    }
    
    public boolean anyIgnorals() {
        int PROBE_START_LINE_849 = 853;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_849 = _fields;
		boolean pojoproperty_builder_1_expr130_line_849 = _anyIgnorals(f__fields_3366_line_849);
		boolean pojoproperty_builder_1_expr129_line_849 = pojoproperty_builder_1_expr130_line_849
				|| _anyIgnorals(_getters) || _anyIgnorals(_setters) || _anyIgnorals(_ctorParameters);
		int PROBE_END_LINE_849 = 853;
		return pojoproperty_builder_1_expr129_line_849
        ;
    }

    private <T> boolean _anyIgnorals(Linked<T> n)
    {
        int PROBE_START_LINE_857 = 857;
		boolean FOR_STMT_TOGGLE_LINE_858 = false;
		int PROBE_END_LINE_857 = 857;
		for (; true;) {
            int PROBE_START_LINE_859 = 861;
			if (FOR_STMT_TOGGLE_LINE_858) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3433_line_858_v1 = n;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_104_line_858 = p_n_3433_line_858_v1.next;
				n = q_next_104_line_858;
			} else {
				FOR_STMT_TOGGLE_LINE_858 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3433_line_858 = n;
			boolean pojoproperty_builder_1_expr131_line_858 = p_n_3433_line_858 != null;
			if (!(pojoproperty_builder_1_expr131_line_858)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3433_line_859 = n;
			boolean q_is_marked_ignored_105_line_859 = p_n_3433_line_859.isMarkedIgnored;
			int PROBE_END_LINE_859 = 861;
			if (q_is_marked_ignored_105_line_859) {
                return true;
            }
        }
        return false;
    }

    /**
     * Method called to find out set of explicit names for accessors
     * bound together due to implicit name.
     * 
     * @since 2.4
     */
    public Set<PropertyName> findExplicitNames()
    {
        Set<PropertyName> renamed = null;
        int PROBE_START_LINE_875 = 875;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_875 = _fields;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3434_line_875 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr134_line_875 = _findExplicitNames(
				f__fields_3366_line_875, v_renamed_3434_line_875);
		int PROBE_END_LINE_875 = 875;
		renamed = pojoproperty_builder_1_expr134_line_875;
        int PROBE_START_LINE_876 = 876;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3414_line_876 = _getters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3434_line_876 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr136_line_876 = _findExplicitNames(
				f__getters_3414_line_876, v_renamed_3434_line_876);
		int PROBE_END_LINE_876 = 876;
		renamed = pojoproperty_builder_1_expr136_line_876;
        int PROBE_START_LINE_877 = 877;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3365_line_877 = _setters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3434_line_877 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr138_line_877 = _findExplicitNames(
				f__setters_3365_line_877, v_renamed_3434_line_877);
		int PROBE_END_LINE_877 = 877;
		renamed = pojoproperty_builder_1_expr138_line_877;
        int PROBE_START_LINE_878 = 878;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_878 = _ctorParameters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3434_line_878 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr140_line_878 = _findExplicitNames(
				f__ctor_parameters_3367_line_878, v_renamed_3434_line_878);
		int PROBE_END_LINE_878 = 878;
		renamed = pojoproperty_builder_1_expr140_line_878;
        int PROBE_START_LINE_879 = 881;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3434_line_879 = renamed;
		boolean pojoproperty_builder_1_expr141_line_879 = v_renamed_3434_line_879 == null;
		int PROBE_END_LINE_879 = 881;
		if (pojoproperty_builder_1_expr141_line_879) {
            int PROBE_START_LINE_880 = 880;
			Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr142_line_880 = Collections
					.emptySet();
			int PROBE_END_LINE_880 = 880;
			return pojoproperty_builder_1_expr142_line_880;
        }
        return renamed;
    }

    /**
     * Method called when a previous call to {@link #findExplicitNames} found
     * multiple distinct explicit names, and the property this builder represents
     * basically needs to be broken apart and replaced by a set of more than
     * one properties.
     * 
     * @since 2.4
     */
    public Collection<POJOPropertyBuilder> explode(Collection<PropertyName> newNames)
    {
        HashMap<PropertyName,POJOPropertyBuilder> props = new HashMap<PropertyName,POJOPropertyBuilder>();
        _explode(newNames, props, _fields);
        _explode(newNames, props, _getters);
        _explode(newNames, props, _setters);
        _explode(newNames, props, _ctorParameters);
        return props.values();
    }

    @SuppressWarnings("unchecked")
    private void _explode(Collection<PropertyName> newNames,
            Map<PropertyName,POJOPropertyBuilder> props,
            Linked<?> accessors)
    {
        final Linked<?> firstAcc = accessors; // clumsy, part 1
        for (Linked<?> node = accessors; node != null; node = node.next) {
            PropertyName name = node.name;
            if (!node.isNameExplicit || name == null) { // no explicit name -- problem!
                // [databind#541] ... but only as long as it's visible
                if (!node.isVisible) {
                    continue;
                }
                
                throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name '"
                        +_name+"'): found multiple explicit names: "
                        +newNames+", but also implicit accessor: "+node);
            }
            POJOPropertyBuilder prop = props.get(name);
            if (prop == null) {
                prop = new POJOPropertyBuilder(_config, _annotationIntrospector, _forSerialization,
                        _internalName, name);
                props.put(name, prop);
            }
            // ultra-clumsy, part 2 -- lambdas would be nice here
            if (firstAcc == _fields) {
                Linked<AnnotatedField> n2 = (Linked<AnnotatedField>) node;
                prop._fields = n2.withNext(prop._fields);
            } else if (firstAcc == _getters) {
                Linked<AnnotatedMethod> n2 = (Linked<AnnotatedMethod>) node;
                prop._getters = n2.withNext(prop._getters);
            } else if (firstAcc == _setters) {
                Linked<AnnotatedMethod> n2 = (Linked<AnnotatedMethod>) node;
                prop._setters = n2.withNext(prop._setters);
            } else if (firstAcc == _ctorParameters) {
                Linked<AnnotatedParameter> n2 = (Linked<AnnotatedParameter>) node;
                prop._ctorParameters = n2.withNext(prop._ctorParameters);
            } else {
                throw new IllegalStateException("Internal error: mismatched accessors, property: "+this);
            }
        }
    }
    
    private Set<PropertyName> _findExplicitNames(Linked<? extends AnnotatedMember> node,
            Set<PropertyName> renamed)
    {
        int PROBE_START_LINE_948 = 948;
		boolean FOR_STMT_TOGGLE_LINE_949 = false;
		int PROBE_END_LINE_948 = 948;
		for (; true;) {
            int PROBE_START_LINE_956 = 958;
			if (FOR_STMT_TOGGLE_LINE_949) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_3439_line_949_v1 = node;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> q_next_106_line_949 = p_node_3439_line_949_v1.next;
				node = q_next_106_line_949;
			} else {
				FOR_STMT_TOGGLE_LINE_949 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_3439_line_949 = node;
			boolean pojoproperty_builder_1_expr143_line_949 = p_node_3439_line_949 != null;
			if (!(pojoproperty_builder_1_expr143_line_949)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_3439_line_956 = node;
			boolean q_is_name_explicit_107_line_956 = p_node_3439_line_956.isNameExplicit;
			boolean pojoproperty_builder_1_expr146_line_956 = !q_is_name_explicit_107_line_956;
			boolean pojoproperty_builder_1_expr147_line_956 = false;
			if (!pojoproperty_builder_1_expr146_line_956) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_3439_line_956_v1 = node;
				com.fasterxml.jackson.databind.PropertyName q_name_108_line_956 = p_node_3439_line_956_v1.name;
				pojoproperty_builder_1_expr147_line_956 = q_name_108_line_956 == null;
			}
			boolean pojoproperty_builder_1_expr145_line_956 = pojoproperty_builder_1_expr146_line_956
					|| pojoproperty_builder_1_expr147_line_956;
			int PROBE_END_LINE_956 = 958;
			/* 30-Mar-2014, tatu: Second check should not be needed, but seems like
             *   removing it can cause nasty exceptions with certain version
             *   combinations (2.4 databind, an older module).
             *   So leaving it in for now until this is resolved
             *   (or version beyond 2.4)
             */
            if (pojoproperty_builder_1_expr145_line_956) {
                continue;
            }
            if (renamed == null) {
                renamed = new HashSet<PropertyName>();
            }
            renamed.add(node.name);
        }
        int PROBE_START_LINE_964 = 964;
		Set<com.fasterxml.jackson.databind.PropertyName> p_renamed_3440_line_964 = renamed;
		int PROBE_END_LINE_964 = 964;
		return p_renamed_3440_line_964;
    }
    
    // For trouble-shooting
    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append("[Property '").append(_name)
          .append("'; ctors: ").append(_ctorParameters)
          .append(", field(s): ").append(_fields)
          .append(", getter(s): ").append(_getters)
          .append(", setter(s): ").append(_setters)
          ;
        sb.append("]");
        return sb.toString();
    }
    
    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    /**
     * Helper method used for finding annotation values, from accessors
     * relevant to current usage (deserialization, serialization)
     */
    protected <T> T fromMemberAnnotations(WithMember<T> func)
    {
        T result = null;
        int PROBE_START_LINE_995 = 1011;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_995 = _annotationIntrospector;
		boolean pojoproperty_builder_1_expr148_line_995 = f__annotation_introspector_3354_line_995 != null;
		int PROBE_END_LINE_995 = 1011;
		if (pojoproperty_builder_1_expr148_line_995) {
            int PROBE_START_LINE_996 = 1007;
			boolean f__for_serialization_3357_line_996 = _forSerialization;
			int PROBE_END_LINE_996 = 1007;
			if (f__for_serialization_3357_line_996) {
                if (_getters != null) {
                    result = func.withMember(_getters.value);
                }
            } else {
                int PROBE_START_LINE_1001 = 1003;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_1001 = _ctorParameters;
				boolean pojoproperty_builder_1_expr149_line_1001 = f__ctor_parameters_3367_line_1001 != null;
				int PROBE_END_LINE_1001 = 1003;
				if (pojoproperty_builder_1_expr149_line_1001) {
                    result = func.withMember(_ctorParameters.value);
                }
                int PROBE_START_LINE_1004 = 1006;
				T v_result_3442_line_1004 = result;
				boolean pojoproperty_builder_1_expr151_line_1004 = v_result_3442_line_1004 == null;
				boolean pojoproperty_builder_1_expr152_line_1004 = true;
				if (pojoproperty_builder_1_expr151_line_1004) {
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3365_line_1004 = _setters;
					pojoproperty_builder_1_expr152_line_1004 = f__setters_3365_line_1004 != null;
				}
				boolean pojoproperty_builder_1_expr150_line_1004 = pojoproperty_builder_1_expr151_line_1004
						&& pojoproperty_builder_1_expr152_line_1004;
				int PROBE_END_LINE_1004 = 1006;
				if (pojoproperty_builder_1_expr150_line_1004) {
                    result = func.withMember(_setters.value);
                }
            }
            int PROBE_START_LINE_1008 = 1010;
			T v_result_3442_line_1008 = result;
			boolean pojoproperty_builder_1_expr154_line_1008 = v_result_3442_line_1008 == null;
			boolean pojoproperty_builder_1_expr155_line_1008 = true;
			if (pojoproperty_builder_1_expr154_line_1008) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_1008 = _fields;
				pojoproperty_builder_1_expr155_line_1008 = f__fields_3366_line_1008 != null;
			}
			boolean pojoproperty_builder_1_expr153_line_1008 = pojoproperty_builder_1_expr154_line_1008
					&& pojoproperty_builder_1_expr155_line_1008;
			int PROBE_END_LINE_1008 = 1010;
			if (pojoproperty_builder_1_expr153_line_1008) {
                int PROBE_START_LINE_1009 = 1009;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember<T> p_func_3441_line_1009 = func;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_1009 = _fields;
				com.fasterxml.jackson.databind.introspect.AnnotatedField q_value_109_line_1009 = f__fields_3366_line_1009.value;
				T pojoproperty_builder_1_expr157_line_1009 = p_func_3441_line_1009.withMember(q_value_109_line_1009);
				int PROBE_END_LINE_1009 = 1009;
				result = pojoproperty_builder_1_expr157_line_1009;
            }
        }
        int PROBE_START_LINE_1012 = 1012;
		T v_result_3442_line_1012 = result;
		int PROBE_END_LINE_1012 = 1012;
		return v_result_3442_line_1012;
    }

    protected <T> T fromMemberAnnotationsExcept(WithMember<T> func, T defaultValue)
    {
        int PROBE_START_LINE_1017 = 1019;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3354_line_1017 = _annotationIntrospector;
		boolean pojoproperty_builder_1_expr158_line_1017 = f__annotation_introspector_3354_line_1017 == null;
		int PROBE_END_LINE_1017 = 1019;
		if (pojoproperty_builder_1_expr158_line_1017) {
            return null;
        }

        int PROBE_START_LINE_1023 = 1049;
		boolean f__for_serialization_3357_line_1023 = _forSerialization;
		int PROBE_END_LINE_1023 = 1049;
		// NOTE: here we must ask ALL accessors, but the order varies between
        // serialization, deserialization
        if (f__for_serialization_3357_line_1023) {
            if (_getters != null) {
                T result = func.withMember(_getters.value);
                if ((result != null) && (result != defaultValue)) {
                    return result;
                }
            }
            if (_fields != null) {
                T result = func.withMember(_fields.value);
                if ((result != null) && (result != defaultValue)) {
                    return result;
                }
            }
            if (_ctorParameters != null) {
                T result = func.withMember(_ctorParameters.value);
                if ((result != null) && (result != defaultValue)) {
                    return result;
                }
            }
            if (_setters != null) {
                T result = func.withMember(_setters.value);
                if ((result != null) && (result != defaultValue)) {
                    return result;
                }
            }
            return null;
        }
        int PROBE_START_LINE_1050 = 1055;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3367_line_1050 = _ctorParameters;
		boolean pojoproperty_builder_1_expr159_line_1050 = f__ctor_parameters_3367_line_1050 != null;
		int PROBE_END_LINE_1050 = 1055;
		if (pojoproperty_builder_1_expr159_line_1050) {
            T result = func.withMember(_ctorParameters.value);
            if ((result != null) && (result != defaultValue)) {
                return result;
            }
        }
        int PROBE_START_LINE_1056 = 1061;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3365_line_1056 = _setters;
		boolean pojoproperty_builder_1_expr160_line_1056 = f__setters_3365_line_1056 != null;
		int PROBE_END_LINE_1056 = 1061;
		if (pojoproperty_builder_1_expr160_line_1056) {
            T result = func.withMember(_setters.value);
            if ((result != null) && (result != defaultValue)) {
                return result;
            }
        }
        int PROBE_START_LINE_1062 = 1067;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_1062 = _fields;
		boolean pojoproperty_builder_1_expr161_line_1062 = f__fields_3366_line_1062 != null;
		int PROBE_END_LINE_1062 = 1067;
		if (pojoproperty_builder_1_expr161_line_1062) {
            int PROBE_START_LINE_1063 = 1063;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember<T> p_func_3443_line_1063 = func;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3366_line_1063 = _fields;
			com.fasterxml.jackson.databind.introspect.AnnotatedField q_value_109_line_1063 = f__fields_3366_line_1063.value;
			T pojoproperty_builder_1_expr162_line_1063 = p_func_3443_line_1063.withMember(q_value_109_line_1063);
			int PROBE_END_LINE_1063 = 1063;
			T result = pojoproperty_builder_1_expr162_line_1063;
            int PROBE_START_LINE_1064 = 1066;
			T v_result_3445_line_1064 = result;
			boolean pojoproperty_builder_1_expr165_line_1064 = v_result_3445_line_1064 != null;
			boolean pojoproperty_builder_1_expr164_line_1064 = (pojoproperty_builder_1_expr165_line_1064);
			boolean pojoproperty_builder_1_expr166_line_1064 = true;
			if (pojoproperty_builder_1_expr164_line_1064) {
				T v_result_3445_line_1064_v1 = result;
				T p_default_value_3444_line_1064 = defaultValue;
				boolean pojoproperty_builder_1_expr167_line_1064 = v_result_3445_line_1064_v1 != p_default_value_3444_line_1064;
				pojoproperty_builder_1_expr166_line_1064 = (pojoproperty_builder_1_expr167_line_1064);
			}
			boolean pojoproperty_builder_1_expr163_line_1064 = pojoproperty_builder_1_expr164_line_1064
					&& pojoproperty_builder_1_expr166_line_1064;
			int PROBE_END_LINE_1064 = 1066;
			if (pojoproperty_builder_1_expr163_line_1064) {
                return result;
            }
        }
        int PROBE_START_LINE_1068 = 1073;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3414_line_1068 = _getters;
		boolean pojoproperty_builder_1_expr168_line_1068 = f__getters_3414_line_1068 != null;
		int PROBE_END_LINE_1068 = 1073;
		if (pojoproperty_builder_1_expr168_line_1068) {
            T result = func.withMember(_getters.value);
            if ((result != null) && (result != defaultValue)) {
                return result;
            }
        }
        return null;
    }
    
    /*
    /**********************************************************
    /* Helper classes
    /**********************************************************
     */

    private interface WithMember<T> {
        public T withMember(AnnotatedMember member);
    }

    /**
     * @since 2.5
     */
    protected static class MemberIterator<T extends AnnotatedMember>
        implements Iterator<T>
    {
        private Linked<T> next;
        
        public MemberIterator(Linked<T> first) {
            next = first;
        }
        
        @Override
        public boolean hasNext() {
            return (next != null);
        }

        @Override
        public T next() {
            if (next == null) throw new NoSuchElementException();
            T result = next.value;
            next = next.next;
            return result;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
        
    }
    
    /**
     * Node used for creating simple linked lists to efficiently store small sets
     * of things.
     */
    protected final static class Linked<T>
    {
        public final T value;
        public final Linked<T> next;

        public final PropertyName name;
        public final boolean isNameExplicit;
        public final boolean isVisible;
        public final boolean isMarkedIgnored;
        
        public Linked(T v, Linked<T> n,
                PropertyName name, boolean explName, boolean visible, boolean ignored)
        {
            int PROBE_START_LINE_1136 = 1136;
			T p_v_3448_line_1136 = v;
			int PROBE_END_LINE_1136 = 1136;
			value = p_v_3448_line_1136;
            int PROBE_START_LINE_1137 = 1137;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3449_line_1137 = n;
			int PROBE_END_LINE_1137 = 1137;
			next = p_n_3449_line_1137;
            int PROBE_START_LINE_1139 = 1139;
			com.fasterxml.jackson.databind.PropertyName p_name_3450_line_1139 = name;
			boolean pojoproperty_builder_1_expr177_line_1139 = p_name_3450_line_1139 == null;
			boolean pojoproperty_builder_1_expr178_line_1139 = false;
			if (!pojoproperty_builder_1_expr177_line_1139) {
				com.fasterxml.jackson.databind.PropertyName p_name_3450_line_1139_v1 = name;
				pojoproperty_builder_1_expr178_line_1139 = p_name_3450_line_1139_v1.isEmpty();
			}
			boolean pojoproperty_builder_1_expr176_line_1139 = pojoproperty_builder_1_expr177_line_1139
					|| pojoproperty_builder_1_expr178_line_1139;
			boolean pojoproperty_builder_1_expr175_line_1139 = (pojoproperty_builder_1_expr176_line_1139);
			com.fasterxml.jackson.databind.PropertyName p_name_3450_line_1139_v2 = null;
			if (!pojoproperty_builder_1_expr175_line_1139) {
				p_name_3450_line_1139_v2 = name;
			}
			com.fasterxml.jackson.databind.PropertyName pojoproperty_builder_1_expr173_line_1139 = pojoproperty_builder_1_expr175_line_1139
					? null
					: p_name_3450_line_1139_v2;
			int PROBE_END_LINE_1139 = 1139;
			// ensure that we'll never have missing names
            this.name = pojoproperty_builder_1_expr173_line_1139;

            int PROBE_START_LINE_1141 = 1150;
			boolean p_expl_name_3451_line_1141 = explName;
			int PROBE_END_LINE_1141 = 1150;
			if (p_expl_name_3451_line_1141) {
                if (this.name == null) { // sanity check to catch internal problems
                    throw new IllegalArgumentException("Can not pass true for 'explName' if name is null/empty");
                }
                // 03-Apr-2014, tatu: But how about name-space only override?
                //   Probably should not be explicit? Or, need to merge somehow?
                if (!name.hasSimpleName()) {
                    explName = false;
                }
            }
            
            int PROBE_START_LINE_1152 = 1152;
			boolean p_expl_name_3451_line_1152 = explName;
			int PROBE_END_LINE_1152 = 1152;
			isNameExplicit = p_expl_name_3451_line_1152;
            int PROBE_START_LINE_1153 = 1153;
			boolean p_visible_3452_line_1153 = visible;
			int PROBE_END_LINE_1153 = 1153;
			isVisible = p_visible_3452_line_1153;
            int PROBE_START_LINE_1154 = 1154;
			boolean p_ignored_3453_line_1154 = ignored;
			int PROBE_END_LINE_1154 = 1154;
			isMarkedIgnored = p_ignored_3453_line_1154;
        }

        public Linked<T> withoutNext() {
            if (next == null) {
                return this;
            }
            return new Linked<T>(value, null, name, isNameExplicit, isVisible, isMarkedIgnored);
        }
        
        public Linked<T> withValue(T newValue) {
            int PROBE_START_LINE_1165 = 1167;
			T p_new_value_3460_line_1165 = newValue;
			T f_value_3454_line_1165 = value;
			boolean pojoproperty_builder_1_expr182_line_1165 = p_new_value_3460_line_1165 == f_value_3454_line_1165;
			int PROBE_END_LINE_1165 = 1167;
			if (pojoproperty_builder_1_expr182_line_1165) {
                return this;
            }
            int PROBE_START_LINE_1168 = 1168;
			T p_new_value_3460_line_1168 = newValue;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3455_line_1168 = next;
			com.fasterxml.jackson.databind.PropertyName f_name_3456_line_1168 = name;
			boolean f_is_name_explicit_3457_line_1168 = isNameExplicit;
			boolean f_is_visible_3458_line_1168 = isVisible;
			boolean f_is_marked_ignored_3459_line_1168 = isMarkedIgnored;
			int PROBE_END_LINE_1168 = 1168;
			return new Linked<T>(p_new_value_3460_line_1168, f_next_3455_line_1168, f_name_3456_line_1168, f_is_name_explicit_3457_line_1168, f_is_visible_3458_line_1168, f_is_marked_ignored_3459_line_1168);
        }
        
        public Linked<T> withNext(Linked<T> newNext) {
            int PROBE_START_LINE_1172 = 1174;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_new_next_3461_line_1172 = newNext;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3455_line_1172 = next;
			boolean pojoproperty_builder_1_expr184_line_1172 = p_new_next_3461_line_1172 == f_next_3455_line_1172;
			int PROBE_END_LINE_1172 = 1174;
			if (pojoproperty_builder_1_expr184_line_1172) {
                return this;
            }
            return new Linked<T>(value, newNext, name, isNameExplicit, isVisible, isMarkedIgnored);
        }
        
        public Linked<T> withoutIgnored() {
            if (isMarkedIgnored) {
                return (next == null) ? null : next.withoutIgnored();
            }
            if (next != null) {
                Linked<T> newNext = next.withoutIgnored();
                if (newNext != next) {
                    return withNext(newNext);
                }
            }
            return this;
        }
        
        public Linked<T> withoutNonVisible() {
            int PROBE_START_LINE_1192 = 1192;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3455_line_1192 = next;
			boolean pojoproperty_builder_1_expr189_line_1192 = f_next_3455_line_1192 == null;
			boolean pojoproperty_builder_1_expr187_line_1192 = (pojoproperty_builder_1_expr189_line_1192);
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr188_line_1192 = null;
			if (!pojoproperty_builder_1_expr187_line_1192) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3455_line_1192_v1 = next;
				pojoproperty_builder_1_expr188_line_1192 = f_next_3455_line_1192_v1.withoutNonVisible();
			}
			Linked<T> pojoproperty_builder_1_expr186_line_1192 = pojoproperty_builder_1_expr187_line_1192
					? null
					: pojoproperty_builder_1_expr188_line_1192;
			int PROBE_END_LINE_1192 = 1192;
			Linked<T> newNext = pojoproperty_builder_1_expr186_line_1192;
            int PROBE_START_LINE_1193 = 1193;
			boolean f_is_visible_3458_line_1193 = isVisible;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr191_line_1193 = null;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> v_new_next_3462_line_1193_v1 = null;
			if (f_is_visible_3458_line_1193) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> v_new_next_3462_line_1193 = newNext;
				pojoproperty_builder_1_expr191_line_1193 = withNext(v_new_next_3462_line_1193);
			} else {
				v_new_next_3462_line_1193_v1 = newNext;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr190_line_1193 = f_is_visible_3458_line_1193
					? pojoproperty_builder_1_expr191_line_1193
					: v_new_next_3462_line_1193_v1;
			int PROBE_END_LINE_1193 = 1193;
			return pojoproperty_builder_1_expr190_line_1193;
        }

        /**
         * Method called to append given node(s) at the end of this
         * node chain.
         */
        protected Linked<T> append(Linked<T> appendable) {
            if (next == null) {
                return withNext(appendable);
            }
            return withNext(next.append(appendable));
        }

        public Linked<T> trimByVisibility() {
            int PROBE_START_LINE_1208 = 1210;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3455_line_1208 = next;
			boolean pojoproperty_builder_1_expr192_line_1208 = f_next_3455_line_1208 == null;
			int PROBE_END_LINE_1208 = 1210;
			if (pojoproperty_builder_1_expr192_line_1208) {
                return this;
            }
            Linked<T> newNext = next.trimByVisibility();
            if (name != null) { // this already has highest; how about next one?
                if (newNext.name == null) { // next one not, drop it
                    return withNext(null);
                }
                //  both have it, keep
                return withNext(newNext);
            }
            if (newNext.name != null) { // next one has higher, return it...
                return newNext;
            }
            // neither has explicit name; how about visibility?
            if (isVisible == newNext.isVisible) { // same; keep both in current order
                return withNext(newNext);
            }
            return isVisible ? withNext(null) : newNext;
        }
        
        @Override
        public String toString() {
            String msg = value.toString()+"[visible="+isVisible+",ignore="+isMarkedIgnored
                    +",explicitName="+isNameExplicit+"]";
            if (next != null) {
                msg = msg + ", "+next.toString();
            }
            return msg;
        }
    }
}
