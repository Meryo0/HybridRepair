package com.fasterxml.jackson.databind.introspect;

import java.util.*;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.util.EmptyIterator;
import java.util.Iterator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
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

    public POJOPropertyBuilder(PropertyName internalName, AnnotationIntrospector ai,
            boolean forSerialization) {
        this(internalName, internalName, ai, forSerialization);
    }

    protected POJOPropertyBuilder(PropertyName internalName, PropertyName name,
            AnnotationIntrospector annotationIntrospector, boolean forSerialization)
    {
        int PROBE_START_LINE_54 = 54;
		com.fasterxml.jackson.databind.PropertyName p_internal_name_3119_line_54 = internalName;
		int PROBE_END_LINE_54 = 54;
		_internalName = p_internal_name_3119_line_54;
        int PROBE_START_LINE_55 = 55;
		com.fasterxml.jackson.databind.PropertyName p_name_3120_line_55 = name;
		int PROBE_END_LINE_55 = 55;
		_name = p_name_3120_line_55;
        int PROBE_START_LINE_56 = 56;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_annotation_introspector_3121_line_56 = annotationIntrospector;
		int PROBE_END_LINE_56 = 56;
		_annotationIntrospector = p_annotation_introspector_3121_line_56;
        int PROBE_START_LINE_57 = 57;
		boolean p_for_serialization_3122_line_57 = forSerialization;
		int PROBE_END_LINE_57 = 57;
		_forSerialization = p_for_serialization_3122_line_57;
    }

    public POJOPropertyBuilder(POJOPropertyBuilder src, PropertyName newName)
    {
        _internalName = src._internalName;
        _name = newName;
        _annotationIntrospector = src._annotationIntrospector;
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
        int PROBE_START_LINE_123 = 123;
		com.fasterxml.jackson.databind.PropertyName f__name_3124_line_123 = _name;
		boolean pojoproperty_builder_1_expr9_line_123 = f__name_3124_line_123 == null;
		boolean pojoproperty_builder_1_expr7_line_123 = (pojoproperty_builder_1_expr9_line_123);
		String pojoproperty_builder_1_expr8_line_123 = null;
		if (!pojoproperty_builder_1_expr7_line_123) {
			com.fasterxml.jackson.databind.PropertyName f__name_3124_line_123_v1 = _name;
			pojoproperty_builder_1_expr8_line_123 = f__name_3124_line_123_v1.getSimpleName();
		}
		String pojoproperty_builder_1_expr6_line_123 = pojoproperty_builder_1_expr7_line_123
				? null
				: pojoproperty_builder_1_expr8_line_123;
		int PROBE_END_LINE_123 = 123;
		return pojoproperty_builder_1_expr6_line_123;
    }

    @Override
    public PropertyName getFullName() {
        int PROBE_START_LINE_128 = 128;
		com.fasterxml.jackson.databind.PropertyName f__name_3124_line_128 = _name;
		int PROBE_END_LINE_128 = 128;
		return f__name_3124_line_128;
    }
    
    @Override
    public String getInternalName() { return _internalName.getSimpleName(); }

    @Override
    public PropertyName getWrapperName() {
        int PROBE_START_LINE_141 = 141;
		AnnotatedMember pojoproperty_builder_1_expr10_line_141 = getPrimaryMember();
		int PROBE_END_LINE_141 = 141;
		/* 13-Mar-2013, tatu: Accessing via primary member SHOULD work,
         *   due to annotation merging. However, I have seen some problems
         *   with this access (for other annotations)... so if this should
         *   occur, try commenting out full traversal code
         */
        AnnotatedMember member = pojoproperty_builder_1_expr10_line_141;
        int PROBE_START_LINE_142 = 143;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_3132_line_142 = member;
		boolean pojoproperty_builder_1_expr15_line_142 = v_member_3132_line_142 == null;
		boolean pojoproperty_builder_1_expr16_line_142 = false;
		if (!pojoproperty_builder_1_expr15_line_142) {
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_142 = _annotationIntrospector;
			pojoproperty_builder_1_expr16_line_142 = f__annotation_introspector_3125_line_142 == null;
		}
		boolean pojoproperty_builder_1_expr14_line_142 = pojoproperty_builder_1_expr15_line_142
				|| pojoproperty_builder_1_expr16_line_142;
		boolean pojoproperty_builder_1_expr12_line_142 = (pojoproperty_builder_1_expr14_line_142);
		com.fasterxml.jackson.databind.PropertyName pojoproperty_builder_1_expr11_line_142 = pojoproperty_builder_1_expr12_line_142
				? null
				: _annotationIntrospector.findWrapperName(member);
		int PROBE_END_LINE_142 = 143;
		return pojoproperty_builder_1_expr11_line_142;
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
                || _anyExplicits(_ctorParameters)
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
    public boolean hasSetter() { int PROBE_START_LINE_182 = 182;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3133_line_182 = _setters;
		boolean pojoproperty_builder_1_expr17_line_182 = f__setters_3133_line_182 != null;
		int PROBE_END_LINE_182 = 182;
	return pojoproperty_builder_1_expr17_line_182; }

    @Override
    public boolean hasField() { int PROBE_START_LINE_185 = 185;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_185 = _fields;
		boolean pojoproperty_builder_1_expr18_line_185 = f__fields_3134_line_185 != null;
		int PROBE_END_LINE_185 = 185;
	return pojoproperty_builder_1_expr18_line_185; }

    @Override
    public boolean hasConstructorParameter() { int PROBE_START_LINE_188 = 188;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3135_line_188 = _ctorParameters;
		boolean pojoproperty_builder_1_expr19_line_188 = f__ctor_parameters_3135_line_188 != null;
		int PROBE_END_LINE_188 = 188;
	return pojoproperty_builder_1_expr19_line_188; }

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
        int PROBE_START_LINE_255 = 255;
		Linked<AnnotatedMethod> f__setters_3133_line_255 = _setters;
		int PROBE_END_LINE_255 = 255;
		// Easy with zero or one getters...
        Linked<AnnotatedMethod> curr = f__setters_3133_line_255;
        int PROBE_START_LINE_256 = 258;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_curr_3136_line_256 = curr;
		boolean pojoproperty_builder_1_expr20_line_256 = v_curr_3136_line_256 == null;
		int PROBE_END_LINE_256 = 258;
		if (pojoproperty_builder_1_expr20_line_256) {
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
            /* 30-May-2014, tatu: Two levels of precedence:
             * 
             * 1. Regular setters ("setX(...)")
             * 2. Implicit, possible setters ("x(...)")
             */
            int priNext = _setterPriority(next.value);
            int priCurr = _setterPriority(curr.value);

            if (priNext != priCurr) {
                if (priNext < priCurr) {
                    curr = next;
                }
                continue;
            }
            throw new IllegalArgumentException("Conflicting setter definitions for property \""+getName()+"\": "
                    +curr.value.getFullName()+" vs "+next.value.getFullName());
        }
        // One more thing; to avoid having to do it again...
        _setters = curr.withoutNext();
        return curr.value;
    }

    @Override
    public AnnotatedField getField()
    {
        int PROBE_START_LINE_304 = 306;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_304 = _fields;
		boolean pojoproperty_builder_1_expr21_line_304 = f__fields_3134_line_304 == null;
		int PROBE_END_LINE_304 = 306;
		if (pojoproperty_builder_1_expr21_line_304) {
            return null;
        }
        int PROBE_START_LINE_308 = 308;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_308 = _fields;
		AnnotatedField q_value_111_line_308 = f__fields_3134_line_308.value;
		int PROBE_END_LINE_308 = 308;
		// If multiple, verify that they do not conflict...
        AnnotatedField field = q_value_111_line_308;
        int PROBE_START_LINE_309 = 309;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_309 = _fields;
		Linked<AnnotatedField> q_next_112_line_309 = f__fields_3134_line_309.next;
		Linked<AnnotatedField> next = q_next_112_line_309;
        boolean FOR_STMT_TOGGLE_LINE_310 = false;
		int PROBE_END_LINE_309 = 309;
		for (; true;) {
            int PROBE_START_LINE_311 = 311;
			if (FOR_STMT_TOGGLE_LINE_310) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_next_3138_line_310_v1 = next;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> q_next_113_line_310 = v_next_3138_line_310_v1.next;
				next = q_next_113_line_310;
			} else {
				FOR_STMT_TOGGLE_LINE_310 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_next_3138_line_310 = next;
			boolean pojoproperty_builder_1_expr22_line_310 = v_next_3138_line_310 != null;
			if (!(pojoproperty_builder_1_expr22_line_310)) {
				break;
			}
			int PROBE_END_LINE_311 = 311;
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
        int PROBE_START_LINE_326 = 326;
		com.fasterxml.jackson.databind.introspect.AnnotatedField v_field_3137_line_326 = field;
		int PROBE_END_LINE_326 = 326;
		return v_field_3137_line_326;
    }

    @Override
    public AnnotatedParameter getConstructorParameter()
    {
        int PROBE_START_LINE_332 = 334;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3135_line_332 = _ctorParameters;
		boolean pojoproperty_builder_1_expr24_line_332 = f__ctor_parameters_3135_line_332 == null;
		int PROBE_END_LINE_332 = 334;
		if (pojoproperty_builder_1_expr24_line_332) {
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
        int PROBE_START_LINE_355 = 357;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3135_line_355 = _ctorParameters;
		boolean pojoproperty_builder_1_expr25_line_355 = f__ctor_parameters_3135_line_355 == null;
		int PROBE_END_LINE_355 = 357;
		if (pojoproperty_builder_1_expr25_line_355) {
            int PROBE_START_LINE_356 = 356;
			Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr26_line_356 = EmptyIterator
					.instance();
			int PROBE_END_LINE_356 = 356;
			return pojoproperty_builder_1_expr26_line_356;
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
        int PROBE_START_LINE_374 = 374;
		AnnotatedMember pojoproperty_builder_1_expr27_line_374 = getConstructorParameter();
		int PROBE_END_LINE_374 = 374;
		AnnotatedMember m = pojoproperty_builder_1_expr27_line_374;
        int PROBE_START_LINE_375 = 380;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3139_line_375 = m;
		boolean pojoproperty_builder_1_expr28_line_375 = v_m_3139_line_375 == null;
		int PROBE_END_LINE_375 = 380;
		if (pojoproperty_builder_1_expr28_line_375) {
            int PROBE_START_LINE_376 = 376;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod pojoproperty_builder_1_expr30_line_376 = getSetter();
			int PROBE_END_LINE_376 = 376;
			m = pojoproperty_builder_1_expr30_line_376;
            int PROBE_START_LINE_377 = 379;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3139_line_377 = m;
			boolean pojoproperty_builder_1_expr31_line_377 = v_m_3139_line_377 == null;
			int PROBE_END_LINE_377 = 379;
			if (pojoproperty_builder_1_expr31_line_377) {
                int PROBE_START_LINE_378 = 378;
				com.fasterxml.jackson.databind.introspect.AnnotatedField pojoproperty_builder_1_expr33_line_378 = getField();
				int PROBE_END_LINE_378 = 378;
				m = pojoproperty_builder_1_expr33_line_378;
            }
        }
        int PROBE_START_LINE_381 = 381;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3139_line_381 = m;
		int PROBE_END_LINE_381 = 381;
		return v_m_3139_line_381;
    }

    @Override
    public AnnotatedMember getNonConstructorMutator() {
        int PROBE_START_LINE_386 = 386;
		AnnotatedMember pojoproperty_builder_1_expr34_line_386 = getSetter();
		int PROBE_END_LINE_386 = 386;
		AnnotatedMember m = pojoproperty_builder_1_expr34_line_386;
        int PROBE_START_LINE_387 = 389;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3140_line_387 = m;
		boolean pojoproperty_builder_1_expr35_line_387 = v_m_3140_line_387 == null;
		int PROBE_END_LINE_387 = 389;
		if (pojoproperty_builder_1_expr35_line_387) {
            int PROBE_START_LINE_388 = 388;
			com.fasterxml.jackson.databind.introspect.AnnotatedField pojoproperty_builder_1_expr37_line_388 = getField();
			int PROBE_END_LINE_388 = 388;
			m = pojoproperty_builder_1_expr37_line_388;
        }
        int PROBE_START_LINE_390 = 390;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_3140_line_390 = m;
		int PROBE_END_LINE_390 = 390;
		return v_m_3140_line_390;
    }

    @Override
    public AnnotatedMember getPrimaryMember() {
        int PROBE_START_LINE_395 = 397;
		boolean f__for_serialization_3126_line_395 = _forSerialization;
		int PROBE_END_LINE_395 = 397;
		if (f__for_serialization_3126_line_395) {
            return getAccessor();
        }
        int PROBE_START_LINE_398 = 398;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember pojoproperty_builder_1_expr38_line_398 = getMutator();
		int PROBE_END_LINE_398 = 398;
		return pojoproperty_builder_1_expr38_line_398;
    }

    protected int _getterPriority(AnnotatedMethod m)
    {
        final String name = m.getName();
        // [#238]: Also, regular getters have precedence over "is-getters"
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
        int PROBE_START_LINE_433 = 438;
		Class<?>[] pojoproperty_builder_1_expr39_line_433 = fromMemberAnnotations(new WithMember<Class<?>[]>() {
			@Override
			public Class<?>[] withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_436 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3143_line_436 = member;
				Class<?>[] pojoproperty_builder_1_expr41_line_436 = f__annotation_introspector_3125_line_436
						.findViews(p_member_3143_line_436);
				return pojoproperty_builder_1_expr41_line_436;
			}
		});
		int PROBE_END_LINE_433 = 438;
		return pojoproperty_builder_1_expr39_line_433;
    }

    @Override
    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        int PROBE_START_LINE_443 = 448;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty pojoproperty_builder_1_expr42_line_443 = fromMemberAnnotations(
				new WithMember<AnnotationIntrospector.ReferenceProperty>() {
					@Override
					public AnnotationIntrospector.ReferenceProperty withMember(AnnotatedMember member) {
						com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_446 = _annotationIntrospector;
						com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3144_line_446 = member;
						com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty pojoproperty_builder_1_expr44_line_446 = f__annotation_introspector_3125_line_446
								.findReferenceType(p_member_3144_line_446);
						return pojoproperty_builder_1_expr44_line_446;
					}
				});
		int PROBE_END_LINE_443 = 448;
		return pojoproperty_builder_1_expr42_line_443;
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
        int PROBE_START_LINE_464 = 464;
		Boolean pojoproperty_builder_1_expr45_line_464 = _findRequired();
		int PROBE_END_LINE_464 = 464;
		final Boolean b = pojoproperty_builder_1_expr45_line_464;
        int PROBE_START_LINE_465 = 465;
		String pojoproperty_builder_1_expr46_line_465 = _findDescription();
		int PROBE_END_LINE_465 = 465;
		final String desc = pojoproperty_builder_1_expr46_line_465;
        int PROBE_START_LINE_466 = 466;
		Integer pojoproperty_builder_1_expr47_line_466 = _findIndex();
		int PROBE_END_LINE_466 = 466;
		final Integer idx = pojoproperty_builder_1_expr47_line_466;
        int PROBE_START_LINE_467 = 467;
		String pojoproperty_builder_1_expr48_line_467 = _findDefaultValue();
		int PROBE_END_LINE_467 = 467;
		final String def = pojoproperty_builder_1_expr48_line_467;
        int PROBE_START_LINE_468 = 471;
		Boolean v_b_3146_line_468 = b;
		boolean pojoproperty_builder_1_expr51_line_468 = v_b_3146_line_468 == null;
		boolean pojoproperty_builder_1_expr52_line_468 = true;
		if (pojoproperty_builder_1_expr51_line_468) {
			Integer v_idx_3148_line_468 = idx;
			pojoproperty_builder_1_expr52_line_468 = v_idx_3148_line_468 == null;
		}
		boolean pojoproperty_builder_1_expr50_line_468 = pojoproperty_builder_1_expr51_line_468
				&& pojoproperty_builder_1_expr52_line_468;
		boolean pojoproperty_builder_1_expr53_line_468 = true;
		if (pojoproperty_builder_1_expr50_line_468) {
			String v_def_3149_line_468 = def;
			pojoproperty_builder_1_expr53_line_468 = v_def_3149_line_468 == null;
		}
		boolean pojoproperty_builder_1_expr49_line_468 = pojoproperty_builder_1_expr50_line_468
				&& pojoproperty_builder_1_expr53_line_468;
		int PROBE_END_LINE_468 = 471;
		if (pojoproperty_builder_1_expr49_line_468) {
            int PROBE_START_LINE_469 = 470;
			String v_desc_3147_line_469 = desc;
			boolean pojoproperty_builder_1_expr57_line_469 = v_desc_3147_line_469 == null;
			boolean pojoproperty_builder_1_expr55_line_469 = (pojoproperty_builder_1_expr57_line_469);
			com.fasterxml.jackson.databind.PropertyMetadata q_std_required_or_optional_114_line_469 = null;
			if (pojoproperty_builder_1_expr55_line_469) {
				q_std_required_or_optional_114_line_469 = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
			}
			com.fasterxml.jackson.databind.PropertyMetadata pojoproperty_builder_1_expr54_line_469 = pojoproperty_builder_1_expr55_line_469
					? q_std_required_or_optional_114_line_469
					: PropertyMetadata.STD_REQUIRED_OR_OPTIONAL.withDescription(desc);
			int PROBE_END_LINE_469 = 470;
			return pojoproperty_builder_1_expr54_line_469;
        }
        return PropertyMetadata.construct(b.booleanValue(), desc, idx, def);
    }

    protected Boolean _findRequired() {
        int PROBE_START_LINE_476 = 481;
		Boolean pojoproperty_builder_1_expr58_line_476 = fromMemberAnnotations(new WithMember<Boolean>() {
			@Override
			public Boolean withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_479 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3151_line_479 = member;
				Boolean pojoproperty_builder_1_expr60_line_479 = f__annotation_introspector_3125_line_479
						.hasRequiredMarker(p_member_3151_line_479);
				return pojoproperty_builder_1_expr60_line_479;
			}
		});
		int PROBE_END_LINE_476 = 481;
		Boolean b = pojoproperty_builder_1_expr58_line_476;
        int PROBE_START_LINE_482 = 482;
		Boolean v_b_3150_line_482 = b;
		int PROBE_END_LINE_482 = 482;
		return v_b_3150_line_482;
    }
    
    protected String _findDescription() {
        int PROBE_START_LINE_486 = 491;
		String pojoproperty_builder_1_expr61_line_486 = fromMemberAnnotations(new WithMember<String>() {
			@Override
			public String withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_489 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3152_line_489 = member;
				String pojoproperty_builder_1_expr63_line_489 = f__annotation_introspector_3125_line_489
						.findPropertyDescription(p_member_3152_line_489);
				return pojoproperty_builder_1_expr63_line_489;
			}
		});
		int PROBE_END_LINE_486 = 491;
		return pojoproperty_builder_1_expr61_line_486;
    }

    protected Integer _findIndex() {
        int PROBE_START_LINE_495 = 500;
		Integer pojoproperty_builder_1_expr64_line_495 = fromMemberAnnotations(new WithMember<Integer>() {
			@Override
			public Integer withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_498 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3153_line_498 = member;
				Integer pojoproperty_builder_1_expr66_line_498 = f__annotation_introspector_3125_line_498
						.findPropertyIndex(p_member_3153_line_498);
				return pojoproperty_builder_1_expr66_line_498;
			}
		});
		int PROBE_END_LINE_495 = 500;
		return pojoproperty_builder_1_expr64_line_495;
    }

    protected String _findDefaultValue() {
        int PROBE_START_LINE_504 = 509;
		String pojoproperty_builder_1_expr67_line_504 = fromMemberAnnotations(new WithMember<String>() {
			@Override
			public String withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_507 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3154_line_507 = member;
				String pojoproperty_builder_1_expr69_line_507 = f__annotation_introspector_3125_line_507
						.findPropertyDefaultValue(p_member_3154_line_507);
				return pojoproperty_builder_1_expr69_line_507;
			}
		});
		int PROBE_END_LINE_504 = 509;
		return pojoproperty_builder_1_expr67_line_504;
    }
    
    @Override
    public ObjectIdInfo findObjectIdInfo() {
        int PROBE_START_LINE_514 = 523;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo pojoproperty_builder_1_expr70_line_514 = fromMemberAnnotations(
				new WithMember<ObjectIdInfo>() {
					@Override
					public ObjectIdInfo withMember(AnnotatedMember member) {
						com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_517 = _annotationIntrospector;
						com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_3155_line_517 = member;
						ObjectIdInfo pojoproperty_builder_1_expr72_line_517 = f__annotation_introspector_3125_line_517
								.findObjectIdInfo(p_member_3155_line_517);
						ObjectIdInfo info = pojoproperty_builder_1_expr72_line_517;
						com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3156_line_518 = info;
						boolean pojoproperty_builder_1_expr73_line_518 = v_info_3156_line_518 != null;
						if (pojoproperty_builder_1_expr73_line_518) {
							info = _annotationIntrospector.findObjectReferenceInfo(member, info);
						}
						com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_3156_line_521 = info;
						return v_info_3156_line_521;
					}
				});
		int PROBE_END_LINE_514 = 523;
		return pojoproperty_builder_1_expr70_line_514;
    }

    @Override
    public JsonInclude.Include findInclusion() {
        if (_annotationIntrospector == null) {
            return null;
        }
        AnnotatedMember am = getAccessor();
        return _annotationIntrospector.findSerializationInclusion(am, null);
    }

    /*
    /**********************************************************
    /* Data aggregation
    /**********************************************************
     */
    
    public void addField(AnnotatedField a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        int PROBE_START_LINE_542 = 542;
		com.fasterxml.jackson.databind.introspect.AnnotatedField p_a_3157_line_542 = a;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_542 = _fields;
		com.fasterxml.jackson.databind.PropertyName p_name_3158_line_542 = name;
		boolean p_expl_name_3159_line_542 = explName;
		boolean p_visible_3160_line_542 = visible;
		boolean p_ignored_3161_line_542 = ignored;
		int PROBE_END_LINE_542 = 542;
		_fields = new Linked<AnnotatedField>(p_a_3157_line_542, f__fields_3134_line_542, p_name_3158_line_542, p_expl_name_3159_line_542, p_visible_3160_line_542, p_ignored_3161_line_542);
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

    // // Deprecated variants that do not take 'explName': to be removed in a later version
    // // (but are used at least by 2.3 and earlier versions of Scala module at least so
    // // need to be careful with phasing out if before 3.0)
    
    /**
     * @deprecated Since 2.4 call method that takes additional 'explName' argument, to indicate
     *   whether name of property was provided by annotation (and not derived from accessor name);
     *   this method assumes the name is explicit if it is non-null.
     */
    @Deprecated
    public void addField(AnnotatedField a, String name, boolean visible, boolean ignored) {
        addField(a, _propName(name), name != null, visible, ignored);
    }

    @Deprecated
    public void addField(AnnotatedField a, String name, boolean explName, boolean visible, boolean ignored) {
        addField(a, _propName(name), explName, visible, ignored);
    }
    
    /**
     * @deprecated Since 2.4 call method that takes additional 'explName' argument, to indicate
     *   whether name of property was provided by annotation (and not derived from accessor name);
     *   this method assumes the name is explicit if it is non-null.
     */
    @Deprecated
    public void addCtor(AnnotatedParameter a, String name, boolean visible, boolean ignored) {
        addCtor(a, _propName(name), name != null, visible, ignored);
    }
    @Deprecated
    public void addCtor(AnnotatedParameter a, String name, boolean explName, boolean visible, boolean ignored) {
        addCtor(a, _propName(name), explName, visible, ignored);
    }
    
    /**
     * @deprecated Since 2.4 call method that takes additional 'explName' argument, to indicate
     *   whether name of property was provided by annotation (and not derived from accessor name);
     *   this method assumes the name is explicit if it is non-null.
     */
    @Deprecated
    public void addGetter(AnnotatedMethod a, String name, boolean visible, boolean ignored) {
        addGetter(a, _propName(name), name != null, visible, ignored);
    }
    @Deprecated
    public void addGetter(AnnotatedMethod a, String name, boolean explName, boolean visible, boolean ignored) {
        addGetter(a, _propName(name), explName, visible, ignored);
    }
    
    /**
     * @deprecated Since 2.4 call method that takes additional 'explName' argument, to indicate
     *   whether name of property was provided by annotation (and not derived from accessor name);
     *   this method assumes the name is explicit if it is non-null.
     */
    @Deprecated
    public void addSetter(AnnotatedMethod a, String name, boolean visible, boolean ignored) {
        addSetter(a, _propName(name), name != null, visible, ignored);
    }
    @Deprecated
    public void addSetter(AnnotatedMethod a, String name, boolean explName, boolean visible, boolean ignored) {
        addSetter(a, _propName(name), explName, visible, ignored);
    }

    private PropertyName _propName(String simple) {
        return PropertyName.construct(simple, null);
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

    public void removeNonVisible(boolean force)
    {
        int PROBE_START_LINE_675 = 675;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3218_line_675 = _getters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr77_line_675 = _removeNonVisible(
				f__getters_3218_line_675);
		int PROBE_END_LINE_675 = 675;
		/* 21-Aug-2011, tatu: This is tricky part -- if and when allow
         *   non-visible property elements to be "pulled in" by visible
         *   counterparts?
         *   For now, we will only do this to pull in setter or field used
         *   as setter, if an explicit getter is found.
         */
        /*
         * 28-Mar-2013, tatu: Also, as per [Issue#195], may force removal
         *   if inferred properties are NOT supported.
         */
        _getters = pojoproperty_builder_1_expr77_line_675;
        int PROBE_START_LINE_676 = 676;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3135_line_676 = _ctorParameters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr79_line_676 = _removeNonVisible(
				f__ctor_parameters_3135_line_676);
		int PROBE_END_LINE_676 = 676;
		_ctorParameters = pojoproperty_builder_1_expr79_line_676;

        int PROBE_START_LINE_678 = 681;
		boolean p_force_3217_line_678 = force;
		boolean pojoproperty_builder_1_expr81_line_678 = false;
		if (!p_force_3217_line_678) {
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3218_line_678 = _getters;
			boolean pojoproperty_builder_1_expr82_line_678 = f__getters_3218_line_678 == null;
			pojoproperty_builder_1_expr81_line_678 = (pojoproperty_builder_1_expr82_line_678);
		}
		boolean pojoproperty_builder_1_expr80_line_678 = p_force_3217_line_678
				|| pojoproperty_builder_1_expr81_line_678;
		int PROBE_END_LINE_678 = 681;
		if (pojoproperty_builder_1_expr80_line_678) {
            int PROBE_START_LINE_679 = 679;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_679 = _fields;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperty_builder_1_expr84_line_679 = _removeNonVisible(
					f__fields_3134_line_679);
			int PROBE_END_LINE_679 = 679;
			_fields = pojoproperty_builder_1_expr84_line_679;
            int PROBE_START_LINE_680 = 680;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3133_line_680 = _setters;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr86_line_680 = _removeNonVisible(
					f__setters_3133_line_680);
			int PROBE_END_LINE_680 = 680;
			_setters = pojoproperty_builder_1_expr86_line_680;
        }
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
        int PROBE_START_LINE_700 = 700;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_700 = _fields;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperty_builder_1_expr88_line_700 = _trimByVisibility(
				f__fields_3134_line_700);
		int PROBE_END_LINE_700 = 700;
		_fields = pojoproperty_builder_1_expr88_line_700;
        int PROBE_START_LINE_701 = 701;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3218_line_701 = _getters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr90_line_701 = _trimByVisibility(
				f__getters_3218_line_701);
		int PROBE_END_LINE_701 = 701;
		_getters = pojoproperty_builder_1_expr90_line_701;
        int PROBE_START_LINE_702 = 702;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3133_line_702 = _setters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr92_line_702 = _trimByVisibility(
				f__setters_3133_line_702);
		int PROBE_END_LINE_702 = 702;
		_setters = pojoproperty_builder_1_expr92_line_702;
        int PROBE_START_LINE_703 = 703;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3135_line_703 = _ctorParameters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr94_line_703 = _trimByVisibility(
				f__ctor_parameters_3135_line_703);
		int PROBE_END_LINE_703 = 703;
		_ctorParameters = pojoproperty_builder_1_expr94_line_703;
    }

    @SuppressWarnings("unchecked")
    public void mergeAnnotations(boolean forSerialization)
    {
        int PROBE_START_LINE_709 = 728;
		boolean p_for_serialization_3219_line_709 = forSerialization;
		int PROBE_END_LINE_709 = 728;
		if (p_for_serialization_3219_line_709) {
            if (_getters != null) {
                AnnotationMap ann = _mergeAnnotations(0, _getters, _fields, _ctorParameters, _setters);
                _getters = _getters.withValue(_getters.value.withAnnotations(ann));
            } else if (_fields != null) {
                AnnotationMap ann = _mergeAnnotations(0, _fields, _ctorParameters, _setters);
                _fields = _fields.withValue(_fields.value.withAnnotations(ann));
            }
        } else { // for deserialization
            int PROBE_START_LINE_718 = 727;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3135_line_718 = _ctorParameters;
			boolean pojoproperty_builder_1_expr95_line_718 = f__ctor_parameters_3135_line_718 != null;
			int PROBE_END_LINE_718 = 727;
			if (pojoproperty_builder_1_expr95_line_718) {
                AnnotationMap ann = _mergeAnnotations(0, _ctorParameters, _setters, _fields, _getters);
                _ctorParameters = _ctorParameters.withValue(_ctorParameters.value.withAnnotations(ann));
            } else {
				int PROBE_START_LINE_721 = 727;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3133_line_721 = _setters;
				boolean pojoproperty_builder_1_expr96_line_721 = f__setters_3133_line_721 != null;
				int PROBE_END_LINE_721 = 727;
				if (pojoproperty_builder_1_expr96_line_721) {
					AnnotationMap ann = _mergeAnnotations(0, _setters, _fields, _getters);
					_setters = _setters.withValue(_setters.value.withAnnotations(ann));
				} else {
					int PROBE_START_LINE_724 = 727;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_724 = _fields;
					boolean pojoproperty_builder_1_expr97_line_724 = f__fields_3134_line_724 != null;
					int PROBE_END_LINE_724 = 727;
					if (pojoproperty_builder_1_expr97_line_724) {
						int PROBE_START_LINE_725 = 725;
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_725 = _fields;
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3218_line_725 = _getters;
						AnnotationMap pojoproperty_builder_1_expr98_line_725 = _mergeAnnotations(0,
								f__fields_3134_line_725, f__getters_3218_line_725);
						int PROBE_END_LINE_725 = 725;
						AnnotationMap ann = pojoproperty_builder_1_expr98_line_725;
						int PROBE_START_LINE_726 = 726;
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_726 = _fields;
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_726_v1 = _fields;
						com.fasterxml.jackson.databind.introspect.AnnotatedField q_value_115_line_726 = f__fields_3134_line_726_v1.value;
						com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_3220_line_726 = ann;
						com.fasterxml.jackson.databind.introspect.AnnotatedField pojoproperty_builder_1_expr101_line_726 = q_value_115_line_726
								.withAnnotations(v_ann_3220_line_726);
						com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperty_builder_1_expr100_line_726 = f__fields_3134_line_726
								.withValue(pojoproperty_builder_1_expr101_line_726);
						int PROBE_END_LINE_726 = 726;
						_fields = pojoproperty_builder_1_expr100_line_726;
					}
				}
			}
        }
    }

    private AnnotationMap _mergeAnnotations(int index, Linked<? extends AnnotatedMember>... nodes)
    {
        int PROBE_START_LINE_733 = 733;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_3223_line_733 = nodes;
		int p_index_3222_line_733 = index;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> pojoproperty_builder_1_expr104_line_733 = p_nodes_3223_line_733[p_index_3222_line_733];
		com.fasterxml.jackson.databind.introspect.AnnotatedMember pojoproperty_builder_1_expr103_line_733 = pojoproperty_builder_1_expr104_line_733.value;
		AnnotationMap pojoproperty_builder_1_expr102_line_733 = pojoproperty_builder_1_expr103_line_733
				.getAllAnnotations();
		int PROBE_END_LINE_733 = 733;
		AnnotationMap ann = pojoproperty_builder_1_expr102_line_733;
        ++index;
        for (; true; ++index) {
            int PROBE_START_LINE_736 = 738;
			int p_index_3222_line_735 = index;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_3223_line_735 = nodes;
			int q_length_115_line_735 = p_nodes_3223_line_735.length;
			boolean pojoproperty_builder_1_expr106_line_735 = p_index_3222_line_735 < q_length_115_line_735;
			if (!(pojoproperty_builder_1_expr106_line_735)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_3223_line_736 = nodes;
			int p_index_3222_line_736 = index;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> pojoproperty_builder_1_expr109_line_736 = p_nodes_3223_line_736[p_index_3222_line_736];
			boolean pojoproperty_builder_1_expr108_line_736 = pojoproperty_builder_1_expr109_line_736 != null;
			int PROBE_END_LINE_736 = 738;
			if (pojoproperty_builder_1_expr108_line_736) {
              return AnnotationMap.merge(ann, _mergeAnnotations(index, nodes));
            }
        }
        int PROBE_START_LINE_740 = 740;
		com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_3224_line_740 = ann;
		int PROBE_END_LINE_740 = 740;
		return v_ann_3224_line_740;
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
        int PROBE_START_LINE_753 = 755;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3227_line_753 = node;
		boolean pojoproperty_builder_1_expr110_line_753 = p_node_3227_line_753 == null;
		int PROBE_END_LINE_753 = 755;
		if (pojoproperty_builder_1_expr110_line_753) {
            int PROBE_START_LINE_754 = 754;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3227_line_754 = node;
			int PROBE_END_LINE_754 = 754;
			return p_node_3227_line_754;
        }
        int PROBE_START_LINE_756 = 756;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3227_line_756 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr111_line_756 = p_node_3227_line_756
				.withoutNonVisible();
		int PROBE_END_LINE_756 = 756;
		return pojoproperty_builder_1_expr111_line_756;
    }

    private <T> Linked<T> _trimByVisibility(Linked<T> node)
    {
        int PROBE_START_LINE_761 = 763;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3228_line_761 = node;
		boolean pojoproperty_builder_1_expr112_line_761 = p_node_3228_line_761 == null;
		int PROBE_END_LINE_761 = 763;
		if (pojoproperty_builder_1_expr112_line_761) {
            int PROBE_START_LINE_762 = 762;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3228_line_762 = node;
			int PROBE_END_LINE_762 = 762;
			return p_node_3228_line_762;
        }
        int PROBE_START_LINE_764 = 764;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_3228_line_764 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr113_line_764 = p_node_3228_line_764
				.trimByVisibility();
		int PROBE_END_LINE_764 = 764;
		return pojoproperty_builder_1_expr113_line_764;
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
        int PROBE_START_LINE_794 = 798;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_794 = _fields;
		boolean pojoproperty_builder_1_expr115_line_794 = _anyVisible(f__fields_3134_line_794);
		boolean pojoproperty_builder_1_expr114_line_794 = pojoproperty_builder_1_expr115_line_794
				|| _anyVisible(_getters) || _anyVisible(_setters) || _anyVisible(_ctorParameters);
		int PROBE_END_LINE_794 = 798;
		return pojoproperty_builder_1_expr114_line_794
        ;
    }

    private <T> boolean _anyVisible(Linked<T> n)
    {
        int PROBE_START_LINE_802 = 802;
		boolean FOR_STMT_TOGGLE_LINE_803 = false;
		int PROBE_END_LINE_802 = 802;
		for (; true;) {
            int PROBE_START_LINE_804 = 806;
			if (FOR_STMT_TOGGLE_LINE_803) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3231_line_803_v1 = n;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_116_line_803 = p_n_3231_line_803_v1.next;
				n = q_next_116_line_803;
			} else {
				FOR_STMT_TOGGLE_LINE_803 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3231_line_803 = n;
			boolean pojoproperty_builder_1_expr116_line_803 = p_n_3231_line_803 != null;
			if (!(pojoproperty_builder_1_expr116_line_803)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3231_line_804 = n;
			boolean q_is_visible_117_line_804 = p_n_3231_line_804.isVisible;
			int PROBE_END_LINE_804 = 806;
			if (q_is_visible_117_line_804) {
                return true;
            }
        }
        return false;
    }
    
    public boolean anyIgnorals() {
        int PROBE_START_LINE_812 = 816;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_812 = _fields;
		boolean pojoproperty_builder_1_expr119_line_812 = _anyIgnorals(f__fields_3134_line_812);
		boolean pojoproperty_builder_1_expr118_line_812 = pojoproperty_builder_1_expr119_line_812
				|| _anyIgnorals(_getters) || _anyIgnorals(_setters) || _anyIgnorals(_ctorParameters);
		int PROBE_END_LINE_812 = 816;
		return pojoproperty_builder_1_expr118_line_812
        ;
    }

    private <T> boolean _anyIgnorals(Linked<T> n)
    {
        int PROBE_START_LINE_820 = 820;
		boolean FOR_STMT_TOGGLE_LINE_821 = false;
		int PROBE_END_LINE_820 = 820;
		for (; true;) {
            int PROBE_START_LINE_822 = 824;
			if (FOR_STMT_TOGGLE_LINE_821) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3232_line_821_v1 = n;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_118_line_821 = p_n_3232_line_821_v1.next;
				n = q_next_118_line_821;
			} else {
				FOR_STMT_TOGGLE_LINE_821 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3232_line_821 = n;
			boolean pojoproperty_builder_1_expr120_line_821 = p_n_3232_line_821 != null;
			if (!(pojoproperty_builder_1_expr120_line_821)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3232_line_822 = n;
			boolean q_is_marked_ignored_119_line_822 = p_n_3232_line_822.isMarkedIgnored;
			int PROBE_END_LINE_822 = 824;
			if (q_is_marked_ignored_119_line_822) {
                return true;
            }
        }
        return false;
    }

    /**
     * @since 2.4 Use {@link #findExplicitNames} instead
     */
    @Deprecated
    public String findNewName()
    {
        Collection<PropertyName> l = findExplicitNames();
        if (l == null) {
            return null;
        }
        
        // 13-Apr-2014, tatu: Start with code similar to existing conflict checks
        if (l.size() > 1) {
            throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name '"
                    +_name+"'): found more than one explicit name: "
                    +l);
        }
        PropertyName first = l.iterator().next();
        if (first.equals(_name)) {
            return null;
        }
        return first.getSimpleName();
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
        int PROBE_START_LINE_862 = 862;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_862 = _fields;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3233_line_862 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr123_line_862 = _findExplicitNames(
				f__fields_3134_line_862, v_renamed_3233_line_862);
		int PROBE_END_LINE_862 = 862;
		renamed = pojoproperty_builder_1_expr123_line_862;
        int PROBE_START_LINE_863 = 863;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_3218_line_863 = _getters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3233_line_863 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr125_line_863 = _findExplicitNames(
				f__getters_3218_line_863, v_renamed_3233_line_863);
		int PROBE_END_LINE_863 = 863;
		renamed = pojoproperty_builder_1_expr125_line_863;
        int PROBE_START_LINE_864 = 864;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3133_line_864 = _setters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3233_line_864 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr127_line_864 = _findExplicitNames(
				f__setters_3133_line_864, v_renamed_3233_line_864);
		int PROBE_END_LINE_864 = 864;
		renamed = pojoproperty_builder_1_expr127_line_864;
        int PROBE_START_LINE_865 = 865;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3135_line_865 = _ctorParameters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3233_line_865 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr129_line_865 = _findExplicitNames(
				f__ctor_parameters_3135_line_865, v_renamed_3233_line_865);
		int PROBE_END_LINE_865 = 865;
		renamed = pojoproperty_builder_1_expr129_line_865;
        int PROBE_START_LINE_866 = 868;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_3233_line_866 = renamed;
		boolean pojoproperty_builder_1_expr130_line_866 = v_renamed_3233_line_866 == null;
		int PROBE_END_LINE_866 = 868;
		if (pojoproperty_builder_1_expr130_line_866) {
            int PROBE_START_LINE_867 = 867;
			Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr131_line_867 = Collections
					.emptySet();
			int PROBE_END_LINE_867 = 867;
			return pojoproperty_builder_1_expr131_line_867;
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
                // [Issue#541] ... but only as long as it's visible
                if (!node.isVisible) {
                    continue;
                }
                
                throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name '"
                        +_name+"'): found multiple explicit names: "
                        +newNames+", but also implicit accessor: "+node);
            }
            POJOPropertyBuilder prop = props.get(name);
            if (prop == null) {
                prop = new POJOPropertyBuilder(_internalName, name, _annotationIntrospector, _forSerialization);
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
        int PROBE_START_LINE_934 = 934;
		boolean FOR_STMT_TOGGLE_LINE_935 = false;
		int PROBE_END_LINE_934 = 934;
		for (; true;) {
            int PROBE_START_LINE_942 = 944;
			if (FOR_STMT_TOGGLE_LINE_935) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_3238_line_935_v1 = node;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> q_next_120_line_935 = p_node_3238_line_935_v1.next;
				node = q_next_120_line_935;
			} else {
				FOR_STMT_TOGGLE_LINE_935 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_3238_line_935 = node;
			boolean pojoproperty_builder_1_expr132_line_935 = p_node_3238_line_935 != null;
			if (!(pojoproperty_builder_1_expr132_line_935)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_3238_line_942 = node;
			boolean q_is_name_explicit_121_line_942 = p_node_3238_line_942.isNameExplicit;
			boolean pojoproperty_builder_1_expr135_line_942 = !q_is_name_explicit_121_line_942;
			boolean pojoproperty_builder_1_expr136_line_942 = false;
			if (!pojoproperty_builder_1_expr135_line_942) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_3238_line_942_v1 = node;
				com.fasterxml.jackson.databind.PropertyName q_name_122_line_942 = p_node_3238_line_942_v1.name;
				pojoproperty_builder_1_expr136_line_942 = q_name_122_line_942 == null;
			}
			boolean pojoproperty_builder_1_expr134_line_942 = pojoproperty_builder_1_expr135_line_942
					|| pojoproperty_builder_1_expr136_line_942;
			int PROBE_END_LINE_942 = 944;
			/* 30-Mar-2014, tatu: Second check should not be needed, but seems like
             *   removing it can cause nasty exceptions with certain version
             *   combinations (2.4 databind, an older module).
             *   So leaving it in for now until this is resolved
             *   (or version beyond 2.4)
             */
            if (pojoproperty_builder_1_expr134_line_942) {
                continue;
            }
            if (renamed == null) {
                renamed = new HashSet<PropertyName>();
            }
            renamed.add(node.name);
        }
        int PROBE_START_LINE_950 = 950;
		Set<com.fasterxml.jackson.databind.PropertyName> p_renamed_3239_line_950 = renamed;
		int PROBE_END_LINE_950 = 950;
		return p_renamed_3239_line_950;
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
        int PROBE_START_LINE_981 = 997;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_3125_line_981 = _annotationIntrospector;
		boolean pojoproperty_builder_1_expr137_line_981 = f__annotation_introspector_3125_line_981 != null;
		int PROBE_END_LINE_981 = 997;
		if (pojoproperty_builder_1_expr137_line_981) {
            int PROBE_START_LINE_982 = 993;
			boolean f__for_serialization_3126_line_982 = _forSerialization;
			int PROBE_END_LINE_982 = 993;
			if (f__for_serialization_3126_line_982) {
                if (_getters != null) {
                    result = func.withMember(_getters.value);
                }
            } else {
                int PROBE_START_LINE_987 = 989;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_3135_line_987 = _ctorParameters;
				boolean pojoproperty_builder_1_expr138_line_987 = f__ctor_parameters_3135_line_987 != null;
				int PROBE_END_LINE_987 = 989;
				if (pojoproperty_builder_1_expr138_line_987) {
                    result = func.withMember(_ctorParameters.value);
                }
                int PROBE_START_LINE_990 = 992;
				T v_result_3241_line_990 = result;
				boolean pojoproperty_builder_1_expr140_line_990 = v_result_3241_line_990 == null;
				boolean pojoproperty_builder_1_expr141_line_990 = true;
				if (pojoproperty_builder_1_expr140_line_990) {
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_3133_line_990 = _setters;
					pojoproperty_builder_1_expr141_line_990 = f__setters_3133_line_990 != null;
				}
				boolean pojoproperty_builder_1_expr139_line_990 = pojoproperty_builder_1_expr140_line_990
						&& pojoproperty_builder_1_expr141_line_990;
				int PROBE_END_LINE_990 = 992;
				if (pojoproperty_builder_1_expr139_line_990) {
                    result = func.withMember(_setters.value);
                }
            }
            int PROBE_START_LINE_994 = 996;
			T v_result_3241_line_994 = result;
			boolean pojoproperty_builder_1_expr143_line_994 = v_result_3241_line_994 == null;
			boolean pojoproperty_builder_1_expr144_line_994 = true;
			if (pojoproperty_builder_1_expr143_line_994) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_994 = _fields;
				pojoproperty_builder_1_expr144_line_994 = f__fields_3134_line_994 != null;
			}
			boolean pojoproperty_builder_1_expr142_line_994 = pojoproperty_builder_1_expr143_line_994
					&& pojoproperty_builder_1_expr144_line_994;
			int PROBE_END_LINE_994 = 996;
			if (pojoproperty_builder_1_expr142_line_994) {
                int PROBE_START_LINE_995 = 995;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember<T> p_func_3240_line_995 = func;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_3134_line_995 = _fields;
				com.fasterxml.jackson.databind.introspect.AnnotatedField q_value_123_line_995 = f__fields_3134_line_995.value;
				T pojoproperty_builder_1_expr146_line_995 = p_func_3240_line_995.withMember(q_value_123_line_995);
				int PROBE_END_LINE_995 = 995;
				result = pojoproperty_builder_1_expr146_line_995;
            }
        }
        int PROBE_START_LINE_998 = 998;
		T v_result_3241_line_998 = result;
		int PROBE_END_LINE_998 = 998;
		return v_result_3241_line_998;
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
    private final static class Linked<T>
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
            int PROBE_START_LINE_1060 = 1060;
			T p_v_3244_line_1060 = v;
			int PROBE_END_LINE_1060 = 1060;
			value = p_v_3244_line_1060;
            int PROBE_START_LINE_1061 = 1061;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_3245_line_1061 = n;
			int PROBE_END_LINE_1061 = 1061;
			next = p_n_3245_line_1061;
            int PROBE_START_LINE_1063 = 1063;
			com.fasterxml.jackson.databind.PropertyName p_name_3246_line_1063 = name;
			boolean pojoproperty_builder_1_expr155_line_1063 = p_name_3246_line_1063 == null;
			boolean pojoproperty_builder_1_expr156_line_1063 = false;
			if (!pojoproperty_builder_1_expr155_line_1063) {
				com.fasterxml.jackson.databind.PropertyName p_name_3246_line_1063_v1 = name;
				pojoproperty_builder_1_expr156_line_1063 = p_name_3246_line_1063_v1.isEmpty();
			}
			boolean pojoproperty_builder_1_expr154_line_1063 = pojoproperty_builder_1_expr155_line_1063
					|| pojoproperty_builder_1_expr156_line_1063;
			boolean pojoproperty_builder_1_expr153_line_1063 = (pojoproperty_builder_1_expr154_line_1063);
			com.fasterxml.jackson.databind.PropertyName p_name_3246_line_1063_v2 = null;
			if (!pojoproperty_builder_1_expr153_line_1063) {
				p_name_3246_line_1063_v2 = name;
			}
			com.fasterxml.jackson.databind.PropertyName pojoproperty_builder_1_expr151_line_1063 = pojoproperty_builder_1_expr153_line_1063
					? null
					: p_name_3246_line_1063_v2;
			int PROBE_END_LINE_1063 = 1063;
			// ensure that we'll never have missing names
            this.name = pojoproperty_builder_1_expr151_line_1063;

            int PROBE_START_LINE_1065 = 1074;
			boolean p_expl_name_3247_line_1065 = explName;
			int PROBE_END_LINE_1065 = 1074;
			if (p_expl_name_3247_line_1065) {
                if (this.name == null) { // sanity check to catch internal problems
                    throw new IllegalArgumentException("Can not pass true for 'explName' if name is null/empty");
                }
                // 03-Apr-2014, tatu: But how about name-space only override?
                //   Probably should not be explicit? Or, need to merge somehow?
                if (!name.hasSimpleName()) {
                    explName = false;
                }
            }
            
            int PROBE_START_LINE_1076 = 1076;
			boolean p_expl_name_3247_line_1076 = explName;
			int PROBE_END_LINE_1076 = 1076;
			isNameExplicit = p_expl_name_3247_line_1076;
            int PROBE_START_LINE_1077 = 1077;
			boolean p_visible_3248_line_1077 = visible;
			int PROBE_END_LINE_1077 = 1077;
			isVisible = p_visible_3248_line_1077;
            int PROBE_START_LINE_1078 = 1078;
			boolean p_ignored_3249_line_1078 = ignored;
			int PROBE_END_LINE_1078 = 1078;
			isMarkedIgnored = p_ignored_3249_line_1078;
        }

        public Linked<T> withoutNext() {
            if (next == null) {
                return this;
            }
            return new Linked<T>(value, null, name, isNameExplicit, isVisible, isMarkedIgnored);
        }
        
        public Linked<T> withValue(T newValue) {
            int PROBE_START_LINE_1089 = 1091;
			T p_new_value_3256_line_1089 = newValue;
			T f_value_3250_line_1089 = value;
			boolean pojoproperty_builder_1_expr160_line_1089 = p_new_value_3256_line_1089 == f_value_3250_line_1089;
			int PROBE_END_LINE_1089 = 1091;
			if (pojoproperty_builder_1_expr160_line_1089) {
                return this;
            }
            int PROBE_START_LINE_1092 = 1092;
			T p_new_value_3256_line_1092 = newValue;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3251_line_1092 = next;
			com.fasterxml.jackson.databind.PropertyName f_name_3252_line_1092 = name;
			boolean f_is_name_explicit_3253_line_1092 = isNameExplicit;
			boolean f_is_visible_3254_line_1092 = isVisible;
			boolean f_is_marked_ignored_3255_line_1092 = isMarkedIgnored;
			int PROBE_END_LINE_1092 = 1092;
			return new Linked<T>(p_new_value_3256_line_1092, f_next_3251_line_1092, f_name_3252_line_1092, f_is_name_explicit_3253_line_1092, f_is_visible_3254_line_1092, f_is_marked_ignored_3255_line_1092);
        }
        
        public Linked<T> withNext(Linked<T> newNext) {
            int PROBE_START_LINE_1096 = 1098;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_new_next_3257_line_1096 = newNext;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3251_line_1096 = next;
			boolean pojoproperty_builder_1_expr162_line_1096 = p_new_next_3257_line_1096 == f_next_3251_line_1096;
			int PROBE_END_LINE_1096 = 1098;
			if (pojoproperty_builder_1_expr162_line_1096) {
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
            int PROBE_START_LINE_1116 = 1116;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3251_line_1116 = next;
			boolean pojoproperty_builder_1_expr167_line_1116 = f_next_3251_line_1116 == null;
			boolean pojoproperty_builder_1_expr165_line_1116 = (pojoproperty_builder_1_expr167_line_1116);
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr166_line_1116 = null;
			if (!pojoproperty_builder_1_expr165_line_1116) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3251_line_1116_v1 = next;
				pojoproperty_builder_1_expr166_line_1116 = f_next_3251_line_1116_v1.withoutNonVisible();
			}
			Linked<T> pojoproperty_builder_1_expr164_line_1116 = pojoproperty_builder_1_expr165_line_1116
					? null
					: pojoproperty_builder_1_expr166_line_1116;
			int PROBE_END_LINE_1116 = 1116;
			Linked<T> newNext = pojoproperty_builder_1_expr164_line_1116;
            int PROBE_START_LINE_1117 = 1117;
			boolean f_is_visible_3254_line_1117 = isVisible;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr169_line_1117 = null;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> v_new_next_3258_line_1117_v1 = null;
			if (f_is_visible_3254_line_1117) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> v_new_next_3258_line_1117 = newNext;
				pojoproperty_builder_1_expr169_line_1117 = withNext(v_new_next_3258_line_1117);
			} else {
				v_new_next_3258_line_1117_v1 = newNext;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr168_line_1117 = f_is_visible_3254_line_1117
					? pojoproperty_builder_1_expr169_line_1117
					: v_new_next_3258_line_1117_v1;
			int PROBE_END_LINE_1117 = 1117;
			return pojoproperty_builder_1_expr168_line_1117;
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
            int PROBE_START_LINE_1132 = 1134;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_3251_line_1132 = next;
			boolean pojoproperty_builder_1_expr170_line_1132 = f_next_3251_line_1132 == null;
			int PROBE_END_LINE_1132 = 1134;
			if (pojoproperty_builder_1_expr170_line_1132) {
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
