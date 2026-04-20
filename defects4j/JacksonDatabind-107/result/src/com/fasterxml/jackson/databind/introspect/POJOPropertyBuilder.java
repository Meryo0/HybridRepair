package com.fasterxml.jackson.databind.introspect;

import java.util.*;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.cfg.ConfigOverride;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Iterator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import java.util.Set;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.annotation.JsonSetter.Value;

/**
 * Helper class used for aggregating information about a single
 * potential POJO property.
 */
public class POJOPropertyBuilder
    extends BeanPropertyDefinition
    implements Comparable<POJOPropertyBuilder>
{
    /**
     * Marker value used to denote that no reference-property information found for
     * this property
     *
     * @since 2.9
     */
    private final static AnnotationIntrospector.ReferenceProperty NOT_REFEFERENCE_PROP =
            AnnotationIntrospector.ReferenceProperty.managed("");

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

    protected transient PropertyMetadata _metadata;

    /**
     * Lazily accessed information about this property iff it is a forward or
     * back reference.
     *
     * @since 2.9
     */
    protected transient AnnotationIntrospector.ReferenceProperty _referenceInfo;

    public POJOPropertyBuilder(MapperConfig<?> config, AnnotationIntrospector ai,
            boolean forSerialization, PropertyName internalName) {
        this(config, ai, forSerialization, internalName, internalName);
    }

    protected POJOPropertyBuilder(MapperConfig<?> config, AnnotationIntrospector ai,
            boolean forSerialization, PropertyName internalName, PropertyName name)
    {
        int PROBE_START_LINE_81 = 81;
		MapperConfig<?> p_config_4269_line_81 = config;
		int PROBE_END_LINE_81 = 81;
		_config = p_config_4269_line_81;
        int PROBE_START_LINE_82 = 82;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_ai_4270_line_82 = ai;
		int PROBE_END_LINE_82 = 82;
		_annotationIntrospector = p_ai_4270_line_82;
        int PROBE_START_LINE_83 = 83;
		com.fasterxml.jackson.databind.PropertyName p_internal_name_4272_line_83 = internalName;
		int PROBE_END_LINE_83 = 83;
		_internalName = p_internal_name_4272_line_83;
        int PROBE_START_LINE_84 = 84;
		com.fasterxml.jackson.databind.PropertyName p_name_4273_line_84 = name;
		int PROBE_END_LINE_84 = 84;
		_name = p_name_4273_line_84;
        int PROBE_START_LINE_85 = 85;
		boolean p_for_serialization_4271_line_85 = forSerialization;
		int PROBE_END_LINE_85 = 85;
		_forSerialization = p_for_serialization_4271_line_85;
    }

    // protected since 2.9 (was public before)
    protected POJOPropertyBuilder(POJOPropertyBuilder src, PropertyName newName)
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
    /* Mutant factory methods
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
        int PROBE_START_LINE_153 = 153;
		com.fasterxml.jackson.databind.PropertyName f__name_4277_line_153 = _name;
		boolean pojoproperty_builder_1_expr11_line_153 = f__name_4277_line_153 == null;
		boolean pojoproperty_builder_1_expr9_line_153 = (pojoproperty_builder_1_expr11_line_153);
		String pojoproperty_builder_1_expr10_line_153 = null;
		if (!pojoproperty_builder_1_expr9_line_153) {
			com.fasterxml.jackson.databind.PropertyName f__name_4277_line_153_v1 = _name;
			pojoproperty_builder_1_expr10_line_153 = f__name_4277_line_153_v1.getSimpleName();
		}
		String pojoproperty_builder_1_expr8_line_153 = pojoproperty_builder_1_expr9_line_153
				? null
				: pojoproperty_builder_1_expr10_line_153;
		int PROBE_END_LINE_153 = 153;
		return pojoproperty_builder_1_expr8_line_153;
    }

    @Override
    public PropertyName getFullName() {
        int PROBE_START_LINE_158 = 158;
		com.fasterxml.jackson.databind.PropertyName f__name_4277_line_158 = _name;
		int PROBE_END_LINE_158 = 158;
		return f__name_4277_line_158;
    }

    @Override
    public boolean hasName(PropertyName name) {
        return _name.equals(name);
    }

    @Override
    public String getInternalName() { return _internalName.getSimpleName(); }

    @Override
    public PropertyName getWrapperName() {
        int PROBE_START_LINE_176 = 176;
		AnnotatedMember pojoproperty_builder_1_expr12_line_176 = getPrimaryMember();
		int PROBE_END_LINE_176 = 176;
		/* 13-Mar-2013, tatu: Accessing via primary member SHOULD work,
         *   due to annotation merging. However, I have seen some problems
         *   with this access (for other annotations)... so if this should
         *   occur, try commenting out full traversal code
         */
        AnnotatedMember member = pojoproperty_builder_1_expr12_line_176;
        int PROBE_START_LINE_177 = 178;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_4285_line_177 = member;
		boolean pojoproperty_builder_1_expr17_line_177 = v_member_4285_line_177 == null;
		boolean pojoproperty_builder_1_expr18_line_177 = false;
		if (!pojoproperty_builder_1_expr17_line_177) {
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_177 = _annotationIntrospector;
			pojoproperty_builder_1_expr18_line_177 = f__annotation_introspector_4275_line_177 == null;
		}
		boolean pojoproperty_builder_1_expr16_line_177 = pojoproperty_builder_1_expr17_line_177
				|| pojoproperty_builder_1_expr18_line_177;
		boolean pojoproperty_builder_1_expr14_line_177 = (pojoproperty_builder_1_expr16_line_177);
		com.fasterxml.jackson.databind.PropertyName pojoproperty_builder_1_expr13_line_177 = pojoproperty_builder_1_expr14_line_177
				? null
				: _annotationIntrospector.findWrapperName(member);
		int PROBE_END_LINE_177 = 178;
		return pojoproperty_builder_1_expr13_line_177;
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
    /* Simple metadata
    /**********************************************************
     */

    @Override
    public PropertyMetadata getMetadata() {
        int PROBE_START_LINE_219 = 233;
		com.fasterxml.jackson.databind.PropertyMetadata f__metadata_4286_line_219 = _metadata;
		boolean pojoproperty_builder_1_expr19_line_219 = f__metadata_4286_line_219 == null;
		int PROBE_END_LINE_219 = 233;
		if (pojoproperty_builder_1_expr19_line_219) {
            int PROBE_START_LINE_220 = 220;
			Boolean pojoproperty_builder_1_expr20_line_220 = _findRequired();
			int PROBE_END_LINE_220 = 220;
			final Boolean b = pojoproperty_builder_1_expr20_line_220;
            int PROBE_START_LINE_221 = 221;
			String pojoproperty_builder_1_expr21_line_221 = _findDescription();
			int PROBE_END_LINE_221 = 221;
			final String desc = pojoproperty_builder_1_expr21_line_221;
            int PROBE_START_LINE_222 = 222;
			Integer pojoproperty_builder_1_expr22_line_222 = _findIndex();
			int PROBE_END_LINE_222 = 222;
			final Integer idx = pojoproperty_builder_1_expr22_line_222;
            int PROBE_START_LINE_223 = 223;
			String pojoproperty_builder_1_expr23_line_223 = _findDefaultValue();
			int PROBE_END_LINE_223 = 223;
			final String def = pojoproperty_builder_1_expr23_line_223;
            int PROBE_START_LINE_224 = 229;
			Boolean v_b_4287_line_224 = b;
			boolean pojoproperty_builder_1_expr26_line_224 = v_b_4287_line_224 == null;
			boolean pojoproperty_builder_1_expr27_line_224 = true;
			if (pojoproperty_builder_1_expr26_line_224) {
				Integer v_idx_4289_line_224 = idx;
				pojoproperty_builder_1_expr27_line_224 = v_idx_4289_line_224 == null;
			}
			boolean pojoproperty_builder_1_expr25_line_224 = pojoproperty_builder_1_expr26_line_224
					&& pojoproperty_builder_1_expr27_line_224;
			boolean pojoproperty_builder_1_expr28_line_224 = true;
			if (pojoproperty_builder_1_expr25_line_224) {
				String v_def_4290_line_224 = def;
				pojoproperty_builder_1_expr28_line_224 = v_def_4290_line_224 == null;
			}
			boolean pojoproperty_builder_1_expr24_line_224 = pojoproperty_builder_1_expr25_line_224
					&& pojoproperty_builder_1_expr28_line_224;
			int PROBE_END_LINE_224 = 229;
			if (pojoproperty_builder_1_expr24_line_224) {
                int PROBE_START_LINE_225 = 226;
				String v_desc_4288_line_225 = desc;
				boolean pojoproperty_builder_1_expr33_line_225 = v_desc_4288_line_225 == null;
				boolean pojoproperty_builder_1_expr31_line_225 = (pojoproperty_builder_1_expr33_line_225);
				com.fasterxml.jackson.databind.PropertyMetadata q_std_required_or_optional_127_line_225 = null;
				if (pojoproperty_builder_1_expr31_line_225) {
					q_std_required_or_optional_127_line_225 = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
				}
				com.fasterxml.jackson.databind.PropertyMetadata pojoproperty_builder_1_expr30_line_225 = pojoproperty_builder_1_expr31_line_225
						? q_std_required_or_optional_127_line_225
						: PropertyMetadata.STD_REQUIRED_OR_OPTIONAL.withDescription(desc);
				int PROBE_END_LINE_225 = 226;
				_metadata = pojoproperty_builder_1_expr30_line_225;
            } else {
                _metadata = PropertyMetadata.construct(b, desc, idx, def);
            }
            int PROBE_START_LINE_230 = 232;
			boolean f__for_serialization_4278_line_230 = _forSerialization;
			boolean pojoproperty_builder_1_expr34_line_230 = !f__for_serialization_4278_line_230;
			int PROBE_END_LINE_230 = 232;
			if (pojoproperty_builder_1_expr34_line_230) {
                int PROBE_START_LINE_231 = 231;
				com.fasterxml.jackson.databind.PropertyMetadata f__metadata_4286_line_231 = _metadata;
				com.fasterxml.jackson.databind.PropertyMetadata pojoproperty_builder_1_expr36_line_231 = _getSetterInfo(
						f__metadata_4286_line_231);
				int PROBE_END_LINE_231 = 231;
				_metadata = pojoproperty_builder_1_expr36_line_231;
            }
        }
        int PROBE_START_LINE_234 = 234;
		com.fasterxml.jackson.databind.PropertyMetadata f__metadata_4286_line_234 = _metadata;
		int PROBE_END_LINE_234 = 234;
		return f__metadata_4286_line_234;
    }

    /**
     * Helper method that contains logic for accessing and merging all setter
     * information that we needed, regarding things like possible merging
     * of property value, and handling of incoming nulls.
     */
    protected PropertyMetadata _getSetterInfo(PropertyMetadata metadata)
    {
        boolean needMerge = true;
        Nulls valueNulls = null;
        Nulls contentNulls = null;
        
        int PROBE_START_LINE_250 = 250;
		AnnotatedMember pojoproperty_builder_1_expr37_line_250 = getPrimaryMember();
		int PROBE_END_LINE_250 = 250;
		// Slightly confusing: first, annotations should be accessed via primary member
        // (mutator); but accessor is needed for actual merge operation. So:
        AnnotatedMember prim = pojoproperty_builder_1_expr37_line_250;
        int PROBE_START_LINE_251 = 251;
		AnnotatedMember pojoproperty_builder_1_expr38_line_251 = getAccessor();
		int PROBE_END_LINE_251 = 251;
		AnnotatedMember acc = pojoproperty_builder_1_expr38_line_251;

        int PROBE_START_LINE_253 = 295;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_prim_4295_line_253 = prim;
		boolean pojoproperty_builder_1_expr39_line_253 = v_prim_4295_line_253 != null;
		int PROBE_END_LINE_253 = 295;
		if (pojoproperty_builder_1_expr39_line_253) {
            int PROBE_START_LINE_255 = 270;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_255 = _annotationIntrospector;
			boolean pojoproperty_builder_1_expr40_line_255 = f__annotation_introspector_4275_line_255 != null;
			int PROBE_END_LINE_255 = 270;
			// Ok, first: does property itself have something to say?
            if (pojoproperty_builder_1_expr40_line_255) {
                int PROBE_START_LINE_256 = 264;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember v_acc_4296_line_256 = acc;
				boolean pojoproperty_builder_1_expr41_line_256 = v_acc_4296_line_256 != null;
				int PROBE_END_LINE_256 = 264;
				if (pojoproperty_builder_1_expr41_line_256) {
                    int PROBE_START_LINE_257 = 257;
					com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_257 = _annotationIntrospector;
					com.fasterxml.jackson.databind.introspect.AnnotatedMember v_prim_4295_line_257 = prim;
					Boolean pojoproperty_builder_1_expr42_line_257 = f__annotation_introspector_4275_line_257
							.findMergeInfo(v_prim_4295_line_257);
					int PROBE_END_LINE_257 = 257;
					Boolean b = pojoproperty_builder_1_expr42_line_257;
                    int PROBE_START_LINE_258 = 263;
					Boolean v_b_4297_line_258 = b;
					boolean pojoproperty_builder_1_expr43_line_258 = v_b_4297_line_258 != null;
					int PROBE_END_LINE_258 = 263;
					if (pojoproperty_builder_1_expr43_line_258) {
                        needMerge = false;
                        if (b.booleanValue()) {
                            metadata = metadata.withMergeInfo(PropertyMetadata.MergeInfo.createForPropertyOverride(acc));
                        }
                    }
                }
                int PROBE_START_LINE_265 = 265;
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_265 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember v_prim_4295_line_265 = prim;
				JsonSetter.Value pojoproperty_builder_1_expr44_line_265 = f__annotation_introspector_4275_line_265
						.findSetterInfo(v_prim_4295_line_265);
				int PROBE_END_LINE_265 = 265;
				JsonSetter.Value setterInfo = pojoproperty_builder_1_expr44_line_265;
                int PROBE_START_LINE_266 = 269;
				com.fasterxml.jackson.annotation.JsonSetter.Value v_setter_info_4298_line_266 = setterInfo;
				boolean pojoproperty_builder_1_expr45_line_266 = v_setter_info_4298_line_266 != null;
				int PROBE_END_LINE_266 = 269;
				if (pojoproperty_builder_1_expr45_line_266) {
                    int PROBE_START_LINE_267 = 267;
					com.fasterxml.jackson.annotation.JsonSetter.Value v_setter_info_4298_line_267 = setterInfo;
					com.fasterxml.jackson.annotation.Nulls pojoproperty_builder_1_expr47_line_267 = v_setter_info_4298_line_267
							.nonDefaultValueNulls();
					int PROBE_END_LINE_267 = 267;
					valueNulls = pojoproperty_builder_1_expr47_line_267;
                    int PROBE_START_LINE_268 = 268;
					com.fasterxml.jackson.annotation.JsonSetter.Value v_setter_info_4298_line_268 = setterInfo;
					com.fasterxml.jackson.annotation.Nulls pojoproperty_builder_1_expr49_line_268 = v_setter_info_4298_line_268
							.nonDefaultContentNulls();
					int PROBE_END_LINE_268 = 268;
					contentNulls = pojoproperty_builder_1_expr49_line_268;
                }
            }
            int PROBE_START_LINE_273 = 294;
			boolean v_need_merge_4292_line_273 = needMerge;
			boolean pojoproperty_builder_1_expr51_line_273 = false;
			boolean pojoproperty_builder_1_expr53_line_273 = false;
			if (!v_need_merge_4292_line_273) {
				com.fasterxml.jackson.annotation.Nulls v_value_nulls_4293_line_273 = valueNulls;
				boolean pojoproperty_builder_1_expr52_line_273 = v_value_nulls_4293_line_273 == null;
				pojoproperty_builder_1_expr51_line_273 = (pojoproperty_builder_1_expr52_line_273);
				if (!pojoproperty_builder_1_expr51_line_273) {
					com.fasterxml.jackson.annotation.Nulls v_content_nulls_4294_line_273 = contentNulls;
					boolean pojoproperty_builder_1_expr54_line_273 = v_content_nulls_4294_line_273 == null;
					pojoproperty_builder_1_expr53_line_273 = (pojoproperty_builder_1_expr54_line_273);
				}
			}
			boolean pojoproperty_builder_1_expr50_line_273 = v_need_merge_4292_line_273
					|| pojoproperty_builder_1_expr51_line_273 || pojoproperty_builder_1_expr53_line_273;
			int PROBE_END_LINE_273 = 294;
			// If not, config override?
            // 25-Oct-2016, tatu: Either this, or type of accessor...
            if (pojoproperty_builder_1_expr50_line_273) {
                int PROBE_START_LINE_274 = 274;
				Class<?> pojoproperty_builder_1_expr55_line_274 = getRawPrimaryType();
				int PROBE_END_LINE_274 = 274;
				Class<?> rawType = pojoproperty_builder_1_expr55_line_274;
                int PROBE_START_LINE_275 = 275;
				MapperConfig<?> f__config_4274_line_275 = _config;
				Class<?> v_raw_type_4299_line_275 = rawType;
				ConfigOverride pojoproperty_builder_1_expr56_line_275 = f__config_4274_line_275
						.getConfigOverride(v_raw_type_4299_line_275);
				int PROBE_END_LINE_275 = 275;
				ConfigOverride co = pojoproperty_builder_1_expr56_line_275;
                int PROBE_START_LINE_276 = 276;
				com.fasterxml.jackson.databind.cfg.ConfigOverride v_co_4300_line_276 = co;
				JsonSetter.Value pojoproperty_builder_1_expr57_line_276 = v_co_4300_line_276.getSetterInfo();
				int PROBE_END_LINE_276 = 276;
				JsonSetter.Value setterInfo = pojoproperty_builder_1_expr57_line_276;
                int PROBE_START_LINE_277 = 284;
				com.fasterxml.jackson.annotation.JsonSetter.Value v_setter_info_4301_line_277 = setterInfo;
				boolean pojoproperty_builder_1_expr58_line_277 = v_setter_info_4301_line_277 != null;
				int PROBE_END_LINE_277 = 284;
				if (pojoproperty_builder_1_expr58_line_277) {
                    if (valueNulls == null) {
                        valueNulls = setterInfo.nonDefaultValueNulls();
                    }
                    if (contentNulls == null) {
                        contentNulls = setterInfo.nonDefaultContentNulls();
                    }
                }
                int PROBE_START_LINE_285 = 293;
				boolean v_need_merge_4292_line_285 = needMerge;
				boolean pojoproperty_builder_1_expr60_line_285 = true;
				if (v_need_merge_4292_line_285) {
					com.fasterxml.jackson.databind.introspect.AnnotatedMember v_acc_4296_line_285 = acc;
					boolean pojoproperty_builder_1_expr61_line_285 = v_acc_4296_line_285 != null;
					pojoproperty_builder_1_expr60_line_285 = (pojoproperty_builder_1_expr61_line_285);
				}
				boolean pojoproperty_builder_1_expr59_line_285 = v_need_merge_4292_line_285
						&& pojoproperty_builder_1_expr60_line_285;
				int PROBE_END_LINE_285 = 293;
				if (pojoproperty_builder_1_expr59_line_285) {
                    int PROBE_START_LINE_286 = 286;
					com.fasterxml.jackson.databind.cfg.ConfigOverride v_co_4300_line_286 = co;
					Boolean pojoproperty_builder_1_expr62_line_286 = v_co_4300_line_286.getMergeable();
					int PROBE_END_LINE_286 = 286;
					Boolean b = pojoproperty_builder_1_expr62_line_286;
                    int PROBE_START_LINE_287 = 292;
					Boolean v_b_4302_line_287 = b;
					boolean pojoproperty_builder_1_expr63_line_287 = v_b_4302_line_287 != null;
					int PROBE_END_LINE_287 = 292;
					if (pojoproperty_builder_1_expr63_line_287) {
                        needMerge = false;
                        if (b.booleanValue()) {
                            metadata = metadata.withMergeInfo(PropertyMetadata.MergeInfo.createForTypeOverride(acc));
                        }
                    }
                }
            }
        }
        int PROBE_START_LINE_296 = 310;
		boolean v_need_merge_4292_line_296 = needMerge;
		boolean pojoproperty_builder_1_expr65_line_296 = false;
		boolean pojoproperty_builder_1_expr67_line_296 = false;
		if (!v_need_merge_4292_line_296) {
			com.fasterxml.jackson.annotation.Nulls v_value_nulls_4293_line_296 = valueNulls;
			boolean pojoproperty_builder_1_expr66_line_296 = v_value_nulls_4293_line_296 == null;
			pojoproperty_builder_1_expr65_line_296 = (pojoproperty_builder_1_expr66_line_296);
			if (!pojoproperty_builder_1_expr65_line_296) {
				com.fasterxml.jackson.annotation.Nulls v_content_nulls_4294_line_296 = contentNulls;
				boolean pojoproperty_builder_1_expr68_line_296 = v_content_nulls_4294_line_296 == null;
				pojoproperty_builder_1_expr67_line_296 = (pojoproperty_builder_1_expr68_line_296);
			}
		}
		boolean pojoproperty_builder_1_expr64_line_296 = v_need_merge_4292_line_296
				|| pojoproperty_builder_1_expr65_line_296 || pojoproperty_builder_1_expr67_line_296;
		int PROBE_END_LINE_296 = 310;
		if (pojoproperty_builder_1_expr64_line_296) {
            int PROBE_START_LINE_297 = 297;
			MapperConfig<?> f__config_4274_line_297 = _config;
			JsonSetter.Value pojoproperty_builder_1_expr69_line_297 = f__config_4274_line_297.getDefaultSetterInfo();
			int PROBE_END_LINE_297 = 297;
			JsonSetter.Value setterInfo = pojoproperty_builder_1_expr69_line_297;
            int PROBE_START_LINE_298 = 300;
			com.fasterxml.jackson.annotation.Nulls v_value_nulls_4293_line_298 = valueNulls;
			boolean pojoproperty_builder_1_expr70_line_298 = v_value_nulls_4293_line_298 == null;
			int PROBE_END_LINE_298 = 300;
			if (pojoproperty_builder_1_expr70_line_298) {
                int PROBE_START_LINE_299 = 299;
				com.fasterxml.jackson.annotation.JsonSetter.Value v_setter_info_4303_line_299 = setterInfo;
				com.fasterxml.jackson.annotation.Nulls pojoproperty_builder_1_expr72_line_299 = v_setter_info_4303_line_299
						.nonDefaultValueNulls();
				int PROBE_END_LINE_299 = 299;
				valueNulls = pojoproperty_builder_1_expr72_line_299;
            }
            int PROBE_START_LINE_301 = 303;
			com.fasterxml.jackson.annotation.Nulls v_content_nulls_4294_line_301 = contentNulls;
			boolean pojoproperty_builder_1_expr73_line_301 = v_content_nulls_4294_line_301 == null;
			int PROBE_END_LINE_301 = 303;
			if (pojoproperty_builder_1_expr73_line_301) {
                int PROBE_START_LINE_302 = 302;
				com.fasterxml.jackson.annotation.JsonSetter.Value v_setter_info_4303_line_302 = setterInfo;
				com.fasterxml.jackson.annotation.Nulls pojoproperty_builder_1_expr75_line_302 = v_setter_info_4303_line_302
						.nonDefaultContentNulls();
				int PROBE_END_LINE_302 = 302;
				contentNulls = pojoproperty_builder_1_expr75_line_302;
            }
            int PROBE_START_LINE_304 = 309;
			boolean v_need_merge_4292_line_304 = needMerge;
			int PROBE_END_LINE_304 = 309;
			if (v_need_merge_4292_line_304) {
                int PROBE_START_LINE_305 = 305;
				MapperConfig<?> f__config_4274_line_305 = _config;
				Boolean pojoproperty_builder_1_expr76_line_305 = f__config_4274_line_305.getDefaultMergeable();
				int PROBE_END_LINE_305 = 305;
				Boolean b = pojoproperty_builder_1_expr76_line_305;
                int PROBE_START_LINE_306 = 308;
				Boolean q_true_127_line_306 = Boolean.TRUE;
				Boolean v_b_4304_line_306 = b;
				boolean pojoproperty_builder_1_expr78_line_306 = q_true_127_line_306.equals(v_b_4304_line_306);
				boolean pojoproperty_builder_1_expr79_line_306 = true;
				if (pojoproperty_builder_1_expr78_line_306) {
					com.fasterxml.jackson.databind.introspect.AnnotatedMember v_acc_4296_line_306 = acc;
					boolean pojoproperty_builder_1_expr80_line_306 = v_acc_4296_line_306 != null;
					pojoproperty_builder_1_expr79_line_306 = (pojoproperty_builder_1_expr80_line_306);
				}
				boolean pojoproperty_builder_1_expr77_line_306 = pojoproperty_builder_1_expr78_line_306
						&& pojoproperty_builder_1_expr79_line_306;
				int PROBE_END_LINE_306 = 308;
				if (pojoproperty_builder_1_expr77_line_306) {
                    metadata = metadata.withMergeInfo(PropertyMetadata.MergeInfo.createForDefaults(acc));
                }
            }
        }
        int PROBE_START_LINE_311 = 313;
		com.fasterxml.jackson.annotation.Nulls v_value_nulls_4293_line_311 = valueNulls;
		boolean pojoproperty_builder_1_expr83_line_311 = v_value_nulls_4293_line_311 != null;
		boolean pojoproperty_builder_1_expr82_line_311 = (pojoproperty_builder_1_expr83_line_311);
		boolean pojoproperty_builder_1_expr84_line_311 = false;
		if (!pojoproperty_builder_1_expr82_line_311) {
			com.fasterxml.jackson.annotation.Nulls v_content_nulls_4294_line_311 = contentNulls;
			boolean pojoproperty_builder_1_expr85_line_311 = v_content_nulls_4294_line_311 != null;
			pojoproperty_builder_1_expr84_line_311 = (pojoproperty_builder_1_expr85_line_311);
		}
		boolean pojoproperty_builder_1_expr81_line_311 = pojoproperty_builder_1_expr82_line_311
				|| pojoproperty_builder_1_expr84_line_311;
		int PROBE_END_LINE_311 = 313;
		if (pojoproperty_builder_1_expr81_line_311) {
            metadata = metadata.withNulls(valueNulls, contentNulls);
        }
        int PROBE_START_LINE_314 = 314;
		com.fasterxml.jackson.databind.PropertyMetadata p_metadata_4291_line_314 = metadata;
		int PROBE_END_LINE_314 = 314;
		return p_metadata_4291_line_314;
    }

    /**
     * Type determined from the primary member for the property being built,
     * considering precedence according to whether we are processing serialization
     * or deserialization.
     */
    @Override
    public JavaType getPrimaryType() {
        int PROBE_START_LINE_324 = 335;
		boolean f__for_serialization_4278_line_324 = _forSerialization;
		int PROBE_END_LINE_324 = 335;
		if (f__for_serialization_4278_line_324) {
            AnnotatedMember m = getGetter();
            if (m == null) {
                m = getField();
                if (m == null) {
                    // 09-Feb-2017, tatu: Not sure if this or `null` but...
                    return TypeFactory.unknownType();
                }
                return m.getType();
            }
            return m.getType();
        }
        int PROBE_START_LINE_336 = 336;
		AnnotatedMember pojoproperty_builder_1_expr86_line_336 = getConstructorParameter();
		int PROBE_END_LINE_336 = 336;
		AnnotatedMember m = pojoproperty_builder_1_expr86_line_336;
        int PROBE_START_LINE_337 = 345;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_4305_line_337 = m;
		boolean pojoproperty_builder_1_expr87_line_337 = v_m_4305_line_337 == null;
		int PROBE_END_LINE_337 = 345;
		if (pojoproperty_builder_1_expr87_line_337) {
            int PROBE_START_LINE_338 = 338;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod pojoproperty_builder_1_expr89_line_338 = getSetter();
			int PROBE_END_LINE_338 = 338;
			m = pojoproperty_builder_1_expr89_line_338;
            int PROBE_START_LINE_341 = 343;
			com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_4305_line_341 = m;
			boolean pojoproperty_builder_1_expr90_line_341 = v_m_4305_line_341 != null;
			int PROBE_END_LINE_341 = 343;
			// Important: can't try direct type access for setter; what we need is
            // type of the first parameter
            if (pojoproperty_builder_1_expr90_line_341) {
                int PROBE_START_LINE_342 = 342;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_4305_line_342 = m;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod pojoproperty_builder_1_expr92_line_342 = ((AnnotatedMethod) v_m_4305_line_342);
				com.fasterxml.jackson.databind.JavaType pojoproperty_builder_1_expr91_line_342 = pojoproperty_builder_1_expr92_line_342
						.getParameterType(0);
				int PROBE_END_LINE_342 = 342;
				return pojoproperty_builder_1_expr91_line_342;
            }
            m = getField();
        }
        // for setterless properties, however, can further try getter
        if (m == null) {
            m = getGetter();
            if (m == null) {
                return TypeFactory.unknownType();
            }
        }
        return m.getType();
    }

    @Override
    public Class<?> getRawPrimaryType() {
        int PROBE_START_LINE_358 = 358;
		com.fasterxml.jackson.databind.JavaType pojoproperty_builder_1_expr95_line_358 = getPrimaryType();
		Class<?> pojoproperty_builder_1_expr94_line_358 = pojoproperty_builder_1_expr95_line_358.getRawClass();
		int PROBE_END_LINE_358 = 358;
		return pojoproperty_builder_1_expr94_line_358;
    }

    /*
    /**********************************************************
    /* BeanPropertyDefinition implementation, accessor access
    /**********************************************************
     */

    @Override
    public boolean hasGetter() { return _getters != null; }

    @Override
    public boolean hasSetter() { int PROBE_START_LINE_371 = 371;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_371 = _setters;
		boolean pojoproperty_builder_1_expr96_line_371 = f__setters_4306_line_371 != null;
		int PROBE_END_LINE_371 = 371;
	return pojoproperty_builder_1_expr96_line_371; }

    @Override
    public boolean hasField() { return _fields != null; }

    @Override
    public boolean hasConstructorParameter() { int PROBE_START_LINE_377 = 377;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_377 = _ctorParameters;
		boolean pojoproperty_builder_1_expr97_line_377 = f__ctor_parameters_4307_line_377 != null;
		int PROBE_END_LINE_377 = 377;
	return pojoproperty_builder_1_expr97_line_377; }

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
        int PROBE_START_LINE_393 = 393;
		Linked<AnnotatedMethod> f__getters_4309_line_393 = _getters;
		int PROBE_END_LINE_393 = 393;
		// Easy with zero or one getters...
        Linked<AnnotatedMethod> curr = f__getters_4309_line_393;
        int PROBE_START_LINE_394 = 396;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_curr_4308_line_394 = curr;
		boolean pojoproperty_builder_1_expr98_line_394 = v_curr_4308_line_394 == null;
		int PROBE_END_LINE_394 = 396;
		if (pojoproperty_builder_1_expr98_line_394) {
            return null;
        }
        int PROBE_START_LINE_397 = 397;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_curr_4308_line_397 = curr;
		Linked<AnnotatedMethod> q_next_127_line_397 = v_curr_4308_line_397.next;
		int PROBE_END_LINE_397 = 397;
		Linked<AnnotatedMethod> next = q_next_127_line_397;
        int PROBE_START_LINE_398 = 400;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_next_4310_line_398 = next;
		boolean pojoproperty_builder_1_expr99_line_398 = v_next_4310_line_398 == null;
		int PROBE_END_LINE_398 = 400;
		if (pojoproperty_builder_1_expr99_line_398) {
            int PROBE_START_LINE_399 = 399;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_curr_4308_line_399 = curr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod q_value_128_line_399 = v_curr_4308_line_399.value;
			int PROBE_END_LINE_399 = 399;
			return q_value_128_line_399;
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
        int PROBE_START_LINE_444 = 444;
		Linked<AnnotatedMethod> f__setters_4306_line_444 = _setters;
		int PROBE_END_LINE_444 = 444;
		// Easy with zero or one getters...
        Linked<AnnotatedMethod> curr = f__setters_4306_line_444;
        int PROBE_START_LINE_445 = 447;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_curr_4311_line_445 = curr;
		boolean pojoproperty_builder_1_expr100_line_445 = v_curr_4311_line_445 == null;
		int PROBE_END_LINE_445 = 447;
		if (pojoproperty_builder_1_expr100_line_445) {
            return null;
        }
        int PROBE_START_LINE_448 = 448;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_curr_4311_line_448 = curr;
		Linked<AnnotatedMethod> q_next_129_line_448 = v_curr_4311_line_448.next;
		int PROBE_END_LINE_448 = 448;
		Linked<AnnotatedMethod> next = q_next_129_line_448;
        int PROBE_START_LINE_449 = 451;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_next_4312_line_449 = next;
		boolean pojoproperty_builder_1_expr101_line_449 = v_next_4312_line_449 == null;
		int PROBE_END_LINE_449 = 451;
		if (pojoproperty_builder_1_expr101_line_449) {
            int PROBE_START_LINE_450 = 450;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_curr_4311_line_450 = curr;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod q_value_130_line_450 = v_curr_4311_line_450.value;
			int PROBE_END_LINE_450 = 450;
			return q_value_130_line_450;
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
        if (_fields == null) {
            return null;
        }
        // If multiple, verify that they do not conflict...
        AnnotatedField field = _fields.value;
        Linked<AnnotatedField> next = _fields.next;
        for (; next != null; next = next.next) {
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
        return field;
    }

    @Override
    public AnnotatedParameter getConstructorParameter()
    {
        int PROBE_START_LINE_537 = 539;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_537 = _ctorParameters;
		boolean pojoproperty_builder_1_expr102_line_537 = f__ctor_parameters_4307_line_537 == null;
		int PROBE_END_LINE_537 = 539;
		if (pojoproperty_builder_1_expr102_line_537) {
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
        int PROBE_START_LINE_560 = 562;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_560 = _ctorParameters;
		boolean pojoproperty_builder_1_expr103_line_560 = f__ctor_parameters_4307_line_560 == null;
		int PROBE_END_LINE_560 = 562;
		if (pojoproperty_builder_1_expr103_line_560) {
            int PROBE_START_LINE_561 = 561;
			Iterator<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr104_line_561 = ClassUtil
					.emptyIterator();
			int PROBE_END_LINE_561 = 561;
			return pojoproperty_builder_1_expr104_line_561;
        }
        return new MemberIterator<AnnotatedParameter>(_ctorParameters);
    }

    @Override
    public AnnotatedMember getPrimaryMember() {
        int PROBE_START_LINE_568 = 570;
		boolean f__for_serialization_4278_line_568 = _forSerialization;
		int PROBE_END_LINE_568 = 570;
		if (f__for_serialization_4278_line_568) {
            return getAccessor();
        }
        int PROBE_START_LINE_571 = 571;
		AnnotatedMember pojoproperty_builder_1_expr105_line_571 = getMutator();
		int PROBE_END_LINE_571 = 571;
		AnnotatedMember m = pojoproperty_builder_1_expr105_line_571;
        int PROBE_START_LINE_573 = 575;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_4313_line_573 = m;
		boolean pojoproperty_builder_1_expr106_line_573 = v_m_4313_line_573 == null;
		int PROBE_END_LINE_573 = 575;
		// for setterless properties, however...
        if (pojoproperty_builder_1_expr106_line_573) {
            m = getAccessor();
        }
        int PROBE_START_LINE_576 = 576;
		com.fasterxml.jackson.databind.introspect.AnnotatedMember v_m_4313_line_576 = m;
		int PROBE_END_LINE_576 = 576;
		return v_m_4313_line_576;
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
        int PROBE_START_LINE_611 = 616;
		Class<?>[] pojoproperty_builder_1_expr107_line_611 = fromMemberAnnotations(new WithMember<Class<?>[]>() {
			@Override
			public Class<?>[] withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_614 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_4316_line_614 = member;
				Class<?>[] pojoproperty_builder_1_expr109_line_614 = f__annotation_introspector_4275_line_614
						.findViews(p_member_4316_line_614);
				return pojoproperty_builder_1_expr109_line_614;
			}
		});
		int PROBE_END_LINE_611 = 616;
		return pojoproperty_builder_1_expr107_line_611;
    }

    @Override
    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        int PROBE_START_LINE_623 = 623;
		AnnotationIntrospector.ReferenceProperty f__reference_info_4318_line_623 = _referenceInfo;
		int PROBE_END_LINE_623 = 623;
		// 30-Mar-2017, tatu: Access lazily but retain information since it needs
        //   to be accessed multiple times during processing.
        AnnotationIntrospector.ReferenceProperty result = f__reference_info_4318_line_623;
        int PROBE_START_LINE_624 = 629;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_result_4317_line_624 = result;
		boolean pojoproperty_builder_1_expr110_line_624 = v_result_4317_line_624 != null;
		int PROBE_END_LINE_624 = 629;
		if (pojoproperty_builder_1_expr110_line_624) {
            int PROBE_START_LINE_625 = 627;
			com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_result_4317_line_625 = result;
			com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty f_not_refeference_prop_4264_line_625 = NOT_REFEFERENCE_PROP;
			boolean pojoproperty_builder_1_expr111_line_625 = v_result_4317_line_625 == f_not_refeference_prop_4264_line_625;
			int PROBE_END_LINE_625 = 627;
			if (pojoproperty_builder_1_expr111_line_625) {
                return null;
            }
            return result;
        }
        int PROBE_START_LINE_630 = 635;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty pojoproperty_builder_1_expr113_line_630 = fromMemberAnnotations(
				new WithMember<AnnotationIntrospector.ReferenceProperty>() {
					@Override
					public AnnotationIntrospector.ReferenceProperty withMember(AnnotatedMember member) {
						com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_633 = _annotationIntrospector;
						com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_4319_line_633 = member;
						com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty pojoproperty_builder_1_expr115_line_633 = f__annotation_introspector_4275_line_633
								.findReferenceType(p_member_4319_line_633);
						return pojoproperty_builder_1_expr115_line_633;
					}
				});
		int PROBE_END_LINE_630 = 635;
		result = pojoproperty_builder_1_expr113_line_630;
        int PROBE_START_LINE_636 = 636;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_result_4317_line_636 = result;
		boolean pojoproperty_builder_1_expr119_line_636 = v_result_4317_line_636 == null;
		boolean pojoproperty_builder_1_expr118_line_636 = (pojoproperty_builder_1_expr119_line_636);
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty f_not_refeference_prop_4264_line_636 = null;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_result_4317_line_636_v1 = null;
		if (pojoproperty_builder_1_expr118_line_636) {
			f_not_refeference_prop_4264_line_636 = NOT_REFEFERENCE_PROP;
		} else {
			v_result_4317_line_636_v1 = result;
		}
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty pojoproperty_builder_1_expr117_line_636 = pojoproperty_builder_1_expr118_line_636
				? f_not_refeference_prop_4264_line_636
				: v_result_4317_line_636_v1;
		int PROBE_END_LINE_636 = 636;
		_referenceInfo = pojoproperty_builder_1_expr117_line_636;
        int PROBE_START_LINE_637 = 637;
		com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty v_result_4317_line_637 = result;
		int PROBE_END_LINE_637 = 637;
		return v_result_4317_line_637;
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

    protected Boolean _findRequired() {
       int PROBE_START_LINE_652 = 657;
		Boolean pojoproperty_builder_1_expr120_line_652 = fromMemberAnnotations(new WithMember<Boolean>() {
			@Override
			public Boolean withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_655 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_4321_line_655 = member;
				Boolean pojoproperty_builder_1_expr122_line_655 = f__annotation_introspector_4275_line_655
						.hasRequiredMarker(p_member_4321_line_655);
				return pojoproperty_builder_1_expr122_line_655;
			}
		});
		int PROBE_END_LINE_652 = 657;
	return pojoproperty_builder_1_expr120_line_652;
    }
    
    protected String _findDescription() {
        int PROBE_START_LINE_661 = 666;
		String pojoproperty_builder_1_expr123_line_661 = fromMemberAnnotations(new WithMember<String>() {
			@Override
			public String withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_664 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_4322_line_664 = member;
				String pojoproperty_builder_1_expr125_line_664 = f__annotation_introspector_4275_line_664
						.findPropertyDescription(p_member_4322_line_664);
				return pojoproperty_builder_1_expr125_line_664;
			}
		});
		int PROBE_END_LINE_661 = 666;
		return pojoproperty_builder_1_expr123_line_661;
    }

    protected Integer _findIndex() {
        int PROBE_START_LINE_670 = 675;
		Integer pojoproperty_builder_1_expr126_line_670 = fromMemberAnnotations(new WithMember<Integer>() {
			@Override
			public Integer withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_673 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_4323_line_673 = member;
				Integer pojoproperty_builder_1_expr128_line_673 = f__annotation_introspector_4275_line_673
						.findPropertyIndex(p_member_4323_line_673);
				return pojoproperty_builder_1_expr128_line_673;
			}
		});
		int PROBE_END_LINE_670 = 675;
		return pojoproperty_builder_1_expr126_line_670;
    }

    protected String _findDefaultValue() {
        int PROBE_START_LINE_679 = 684;
		String pojoproperty_builder_1_expr129_line_679 = fromMemberAnnotations(new WithMember<String>() {
			@Override
			public String withMember(AnnotatedMember member) {
				com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_682 = _annotationIntrospector;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_4324_line_682 = member;
				String pojoproperty_builder_1_expr131_line_682 = f__annotation_introspector_4275_line_682
						.findPropertyDefaultValue(p_member_4324_line_682);
				return pojoproperty_builder_1_expr131_line_682;
			}
		});
		int PROBE_END_LINE_679 = 684;
		return pojoproperty_builder_1_expr129_line_679;
    }
    
    @Override
    public ObjectIdInfo findObjectIdInfo() {
        int PROBE_START_LINE_689 = 698;
		com.fasterxml.jackson.databind.introspect.ObjectIdInfo pojoproperty_builder_1_expr132_line_689 = fromMemberAnnotations(
				new WithMember<ObjectIdInfo>() {
					@Override
					public ObjectIdInfo withMember(AnnotatedMember member) {
						com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_692 = _annotationIntrospector;
						com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_4325_line_692 = member;
						ObjectIdInfo pojoproperty_builder_1_expr134_line_692 = f__annotation_introspector_4275_line_692
								.findObjectIdInfo(p_member_4325_line_692);
						ObjectIdInfo info = pojoproperty_builder_1_expr134_line_692;
						com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_4326_line_693 = info;
						boolean pojoproperty_builder_1_expr135_line_693 = v_info_4326_line_693 != null;
						if (pojoproperty_builder_1_expr135_line_693) {
							info = _annotationIntrospector.findObjectReferenceInfo(member, info);
						}
						com.fasterxml.jackson.databind.introspect.ObjectIdInfo v_info_4326_line_696 = info;
						return v_info_4326_line_696;
					}
				});
		int PROBE_END_LINE_689 = 698;
		return pojoproperty_builder_1_expr132_line_689;
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
        int PROBE_START_LINE_714 = 719;
		com.fasterxml.jackson.annotation.JsonProperty.Access pojoproperty_builder_1_expr136_line_714 = fromMemberAnnotationsExcept(
				new WithMember<JsonProperty.Access>() {
					@Override
					public JsonProperty.Access withMember(AnnotatedMember member) {
						com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_717 = _annotationIntrospector;
						com.fasterxml.jackson.databind.introspect.AnnotatedMember p_member_4327_line_717 = member;
						com.fasterxml.jackson.annotation.JsonProperty.Access pojoproperty_builder_1_expr138_line_717 = f__annotation_introspector_4275_line_717
								.findPropertyAccess(p_member_4327_line_717);
						return pojoproperty_builder_1_expr138_line_717;
					}
				}, JsonProperty.Access.AUTO);
		int PROBE_END_LINE_714 = 719;
		return pojoproperty_builder_1_expr136_line_714;
    }

    /*
    /**********************************************************
    /* Data aggregation
    /**********************************************************
     */
    
    public void addField(AnnotatedField a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        int PROBE_START_LINE_729 = 729;
		com.fasterxml.jackson.databind.introspect.AnnotatedField p_a_4328_line_729 = a;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_729 = _fields;
		com.fasterxml.jackson.databind.PropertyName p_name_4329_line_729 = name;
		boolean p_expl_name_4330_line_729 = explName;
		boolean p_visible_4331_line_729 = visible;
		boolean p_ignored_4332_line_729 = ignored;
		int PROBE_END_LINE_729 = 729;
		_fields = new Linked<AnnotatedField>(p_a_4328_line_729, f__fields_4333_line_729, p_name_4329_line_729, p_expl_name_4330_line_729, p_visible_4331_line_729, p_ignored_4332_line_729);
    }

    public void addCtor(AnnotatedParameter a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        _ctorParameters = new Linked<AnnotatedParameter>(a, _ctorParameters, name, explName, visible, ignored);
    }

    public void addGetter(AnnotatedMethod a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        int PROBE_START_LINE_737 = 737;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_a_4339_line_737 = a;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_4309_line_737 = _getters;
		com.fasterxml.jackson.databind.PropertyName p_name_4340_line_737 = name;
		boolean p_expl_name_4341_line_737 = explName;
		boolean p_visible_4342_line_737 = visible;
		boolean p_ignored_4343_line_737 = ignored;
		int PROBE_END_LINE_737 = 737;
		_getters = new Linked<AnnotatedMethod>(p_a_4339_line_737, f__getters_4309_line_737, p_name_4340_line_737, p_expl_name_4341_line_737, p_visible_4342_line_737, p_ignored_4343_line_737);
    }

    public void addSetter(AnnotatedMethod a, PropertyName name, boolean explName, boolean visible, boolean ignored) {
        int PROBE_START_LINE_741 = 741;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_a_4344_line_741 = a;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_741 = _setters;
		com.fasterxml.jackson.databind.PropertyName p_name_4345_line_741 = name;
		boolean p_expl_name_4346_line_741 = explName;
		boolean p_visible_4347_line_741 = visible;
		boolean p_ignored_4348_line_741 = ignored;
		int PROBE_END_LINE_741 = 741;
		_setters = new Linked<AnnotatedMethod>(p_a_4344_line_741, f__setters_4306_line_741, p_name_4345_line_741, p_expl_name_4346_line_741, p_visible_4347_line_741, p_ignored_4348_line_741);
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
        int PROBE_START_LINE_795 = 795;
		JsonProperty.Access pojoproperty_builder_1_expr145_line_795 = findAccess();
		int PROBE_END_LINE_795 = 795;
		/* 07-Jun-2015, tatu: With 2.6, we will allow optional definition
         *  of explicit access type for property; if not "AUTO", it will
         *  dictate how visibility checks are applied.
         */
        JsonProperty.Access acc = pojoproperty_builder_1_expr145_line_795;
        int PROBE_START_LINE_796 = 798;
		com.fasterxml.jackson.annotation.JsonProperty.Access v_acc_4353_line_796 = acc;
		boolean pojoproperty_builder_1_expr146_line_796 = v_acc_4353_line_796 == null;
		int PROBE_END_LINE_796 = 798;
		if (pojoproperty_builder_1_expr146_line_796) {
            int PROBE_START_LINE_797 = 797;
			com.fasterxml.jackson.annotation.JsonProperty.Access q_auto_132_line_797 = JsonProperty.Access.AUTO;
			int PROBE_END_LINE_797 = 797;
			acc = q_auto_132_line_797;
        }
        int PROBE_START_LINE_799 = 827;
		com.fasterxml.jackson.annotation.JsonProperty.Access v_acc_4353_line_799 = acc;
		int PROBE_END_LINE_799 = 827;
		switch (v_acc_4353_line_799) {
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
		int PROBE_START_LINE_820 = 820;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_4309_line_820 = _getters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr149_line_820 = _removeNonVisible(
				f__getters_4309_line_820);
		int PROBE_END_LINE_820 = 820;
		_getters = pojoproperty_builder_1_expr149_line_820;
		int PROBE_START_LINE_821 = 821;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_821 = _ctorParameters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr151_line_821 = _removeNonVisible(
				f__ctor_parameters_4307_line_821);
		int PROBE_END_LINE_821 = 821;
		_ctorParameters = pojoproperty_builder_1_expr151_line_821;
    
		int PROBE_START_LINE_823 = 826;
		boolean p_infer_mutators_4352_line_823 = inferMutators;
		boolean pojoproperty_builder_1_expr153_line_823 = !p_infer_mutators_4352_line_823;
		boolean pojoproperty_builder_1_expr154_line_823 = false;
		if (!pojoproperty_builder_1_expr153_line_823) {
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_4309_line_823 = _getters;
			boolean pojoproperty_builder_1_expr155_line_823 = f__getters_4309_line_823 == null;
			pojoproperty_builder_1_expr154_line_823 = (pojoproperty_builder_1_expr155_line_823);
		}
		boolean pojoproperty_builder_1_expr152_line_823 = pojoproperty_builder_1_expr153_line_823
				|| pojoproperty_builder_1_expr154_line_823;
		int PROBE_END_LINE_823 = 826;
		if (pojoproperty_builder_1_expr152_line_823) {
                _fields = _removeNonVisible(_fields);
                _setters = _removeNonVisible(_setters);
            }
        }
        int PROBE_START_LINE_828 = 828;
		com.fasterxml.jackson.annotation.JsonProperty.Access v_acc_4353_line_828 = acc;
		int PROBE_END_LINE_828 = 828;
		return v_acc_4353_line_828;
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
        int PROBE_START_LINE_847 = 847;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_847 = _fields;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> pojoproperty_builder_1_expr157_line_847 = _trimByVisibility(
				f__fields_4333_line_847);
		int PROBE_END_LINE_847 = 847;
		_fields = pojoproperty_builder_1_expr157_line_847;
        int PROBE_START_LINE_848 = 848;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_4309_line_848 = _getters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr159_line_848 = _trimByVisibility(
				f__getters_4309_line_848);
		int PROBE_END_LINE_848 = 848;
		_getters = pojoproperty_builder_1_expr159_line_848;
        int PROBE_START_LINE_849 = 849;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_849 = _setters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr161_line_849 = _trimByVisibility(
				f__setters_4306_line_849);
		int PROBE_END_LINE_849 = 849;
		_setters = pojoproperty_builder_1_expr161_line_849;
        int PROBE_START_LINE_850 = 850;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_850 = _ctorParameters;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> pojoproperty_builder_1_expr163_line_850 = _trimByVisibility(
				f__ctor_parameters_4307_line_850);
		int PROBE_END_LINE_850 = 850;
		_ctorParameters = pojoproperty_builder_1_expr163_line_850;
    }

    @SuppressWarnings("unchecked")
    public void mergeAnnotations(boolean forSerialization)
    {
        int PROBE_START_LINE_856 = 875;
		boolean p_for_serialization_4354_line_856 = forSerialization;
		int PROBE_END_LINE_856 = 875;
		if (p_for_serialization_4354_line_856) {
            if (_getters != null) {
                AnnotationMap ann = _mergeAnnotations(0, _getters, _fields, _ctorParameters, _setters);
                _getters = _applyAnnotations(_getters, ann);
            } else if (_fields != null) {
                AnnotationMap ann = _mergeAnnotations(0, _fields, _ctorParameters, _setters);
                _fields = _applyAnnotations(_fields, ann);
            }
        } else { // for deserialization
            int PROBE_START_LINE_865 = 874;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_865 = _ctorParameters;
			boolean pojoproperty_builder_1_expr164_line_865 = f__ctor_parameters_4307_line_865 != null;
			int PROBE_END_LINE_865 = 874;
			if (pojoproperty_builder_1_expr164_line_865) {
                AnnotationMap ann = _mergeAnnotations(0, _ctorParameters, _setters, _fields, _getters);
                _ctorParameters = _applyAnnotations(_ctorParameters, ann);
            } else {
				int PROBE_START_LINE_868 = 874;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_868 = _setters;
				boolean pojoproperty_builder_1_expr165_line_868 = f__setters_4306_line_868 != null;
				int PROBE_END_LINE_868 = 874;
				if (pojoproperty_builder_1_expr165_line_868) {
					int PROBE_START_LINE_869 = 869;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_869 = _setters;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_869 = _fields;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_4309_line_869 = _getters;
					AnnotationMap pojoproperty_builder_1_expr166_line_869 = _mergeAnnotations(0,
							f__setters_4306_line_869, f__fields_4333_line_869, f__getters_4309_line_869);
					int PROBE_END_LINE_869 = 869;
					AnnotationMap ann = pojoproperty_builder_1_expr166_line_869;
					int PROBE_START_LINE_870 = 870;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_870 = _setters;
					com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_4355_line_870 = ann;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> pojoproperty_builder_1_expr168_line_870 = _applyAnnotations(
							f__setters_4306_line_870, v_ann_4355_line_870);
					int PROBE_END_LINE_870 = 870;
					_setters = pojoproperty_builder_1_expr168_line_870;
				} else {
					int PROBE_START_LINE_871 = 874;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_871 = _fields;
					boolean pojoproperty_builder_1_expr169_line_871 = f__fields_4333_line_871 != null;
					int PROBE_END_LINE_871 = 874;
					if (pojoproperty_builder_1_expr169_line_871) {
						AnnotationMap ann = _mergeAnnotations(0, _fields, _getters);
						_fields = _applyAnnotations(_fields, ann);
					}
				}
			}
        }
    }

    private AnnotationMap _mergeAnnotations(int index,
            Linked<? extends AnnotatedMember>... nodes)
    {
        int PROBE_START_LINE_881 = 881;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_4357_line_881 = nodes;
		int p_index_4356_line_881 = index;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> pojoproperty_builder_1_expr171_line_881 = p_nodes_4357_line_881[p_index_4356_line_881];
		AnnotationMap pojoproperty_builder_1_expr170_line_881 = _getAllAnnotations(
				pojoproperty_builder_1_expr171_line_881);
		int PROBE_END_LINE_881 = 881;
		AnnotationMap ann = pojoproperty_builder_1_expr170_line_881;
        while (true) {
            int PROBE_START_LINE_882 = 882;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_4357_line_882 = nodes;
			int q_length_132_line_882 = p_nodes_4357_line_882.length;
			boolean pojoproperty_builder_1_expr172_line_882 = ++index < q_length_132_line_882;
			if (!(pojoproperty_builder_1_expr172_line_882)) {
				break;
			}
			int PROBE_END_LINE_882 = 882;
			int PROBE_START_LINE_883 = 885;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_4357_line_883 = nodes;
			int p_index_4356_line_883 = index;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> pojoproperty_builder_1_expr175_line_883 = p_nodes_4357_line_883[p_index_4356_line_883];
			boolean pojoproperty_builder_1_expr174_line_883 = pojoproperty_builder_1_expr175_line_883 != null;
			int PROBE_END_LINE_883 = 885;
			if (pojoproperty_builder_1_expr174_line_883) {
                int PROBE_START_LINE_884 = 884;
				com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_4358_line_884 = ann;
				int p_index_4356_line_884 = index;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember>[] p_nodes_4357_line_884 = nodes;
				com.fasterxml.jackson.databind.introspect.AnnotationMap pojoproperty_builder_1_expr177_line_884 = _mergeAnnotations(
						p_index_4356_line_884, p_nodes_4357_line_884);
				com.fasterxml.jackson.databind.introspect.AnnotationMap pojoproperty_builder_1_expr176_line_884 = AnnotationMap
						.merge(v_ann_4358_line_884, pojoproperty_builder_1_expr177_line_884);
				int PROBE_END_LINE_884 = 884;
				return pojoproperty_builder_1_expr176_line_884;
            }
        }
        int PROBE_START_LINE_887 = 887;
		com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_4358_line_887 = ann;
		int PROBE_END_LINE_887 = 887;
		return v_ann_4358_line_887;
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
        int PROBE_START_LINE_900 = 900;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4359_line_900 = node;
		T q_value_133_line_900 = p_node_4359_line_900.value;
		AnnotationMap pojoproperty_builder_1_expr178_line_900 = q_value_133_line_900.getAllAnnotations();
		int PROBE_END_LINE_900 = 900;
		AnnotationMap ann = pojoproperty_builder_1_expr178_line_900;
        int PROBE_START_LINE_901 = 903;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4359_line_901 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_134_line_901 = p_node_4359_line_901.next;
		boolean pojoproperty_builder_1_expr179_line_901 = q_next_134_line_901 != null;
		int PROBE_END_LINE_901 = 903;
		if (pojoproperty_builder_1_expr179_line_901) {
            ann = AnnotationMap.merge(ann, _getAllAnnotations(node.next));
        }
        int PROBE_START_LINE_904 = 904;
		com.fasterxml.jackson.databind.introspect.AnnotationMap v_ann_4360_line_904 = ann;
		int PROBE_END_LINE_904 = 904;
		return v_ann_4360_line_904;
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
        int PROBE_START_LINE_917 = 918;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4362_line_918 = node;
		T q_value_135_line_918 = p_node_4362_line_918.value;
		com.fasterxml.jackson.databind.introspect.AnnotationMap p_ann_4363_line_918 = ann;
		com.fasterxml.jackson.databind.introspect.Annotated pojoproperty_builder_1_expr181_line_918 = q_value_135_line_918
				.withAnnotations(p_ann_4363_line_918);
		int PROBE_END_LINE_917 = 918;
		@SuppressWarnings("unchecked")
        T value = (T) pojoproperty_builder_1_expr181_line_918;
        int PROBE_START_LINE_919 = 921;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4362_line_919 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_136_line_919 = p_node_4362_line_919.next;
		boolean pojoproperty_builder_1_expr182_line_919 = q_next_136_line_919 != null;
		int PROBE_END_LINE_919 = 921;
		if (pojoproperty_builder_1_expr182_line_919) {
            node = node.withNext(_applyAnnotations(node.next, ann));
        }
        int PROBE_START_LINE_922 = 922;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4362_line_922 = node;
		T v_value_4364_line_922 = value;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr183_line_922 = p_node_4362_line_922
				.withValue(v_value_4364_line_922);
		int PROBE_END_LINE_922 = 922;
		return pojoproperty_builder_1_expr183_line_922;
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
        int PROBE_START_LINE_935 = 937;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4367_line_935 = node;
		boolean pojoproperty_builder_1_expr184_line_935 = p_node_4367_line_935 == null;
		int PROBE_END_LINE_935 = 937;
		if (pojoproperty_builder_1_expr184_line_935) {
            int PROBE_START_LINE_936 = 936;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4367_line_936 = node;
			int PROBE_END_LINE_936 = 936;
			return p_node_4367_line_936;
        }
        int PROBE_START_LINE_938 = 938;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4367_line_938 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr185_line_938 = p_node_4367_line_938
				.withoutNonVisible();
		int PROBE_END_LINE_938 = 938;
		return pojoproperty_builder_1_expr185_line_938;
    }

    private <T> Linked<T> _trimByVisibility(Linked<T> node)
    {
        int PROBE_START_LINE_943 = 945;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4368_line_943 = node;
		boolean pojoproperty_builder_1_expr186_line_943 = p_node_4368_line_943 == null;
		int PROBE_END_LINE_943 = 945;
		if (pojoproperty_builder_1_expr186_line_943) {
            int PROBE_START_LINE_944 = 944;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4368_line_944 = node;
			int PROBE_END_LINE_944 = 944;
			return p_node_4368_line_944;
        }
        int PROBE_START_LINE_946 = 946;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_node_4368_line_946 = node;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr187_line_946 = p_node_4368_line_946
				.trimByVisibility();
		int PROBE_END_LINE_946 = 946;
		return pojoproperty_builder_1_expr187_line_946;
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
        int PROBE_START_LINE_976 = 980;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_976 = _fields;
		boolean pojoproperty_builder_1_expr189_line_976 = _anyVisible(f__fields_4333_line_976);
		boolean pojoproperty_builder_1_expr188_line_976 = pojoproperty_builder_1_expr189_line_976
				|| _anyVisible(_getters) || _anyVisible(_setters) || _anyVisible(_ctorParameters);
		int PROBE_END_LINE_976 = 980;
		return pojoproperty_builder_1_expr188_line_976
        ;
    }

    private <T> boolean _anyVisible(Linked<T> n)
    {
        int PROBE_START_LINE_984 = 984;
		boolean FOR_STMT_TOGGLE_LINE_985 = false;
		int PROBE_END_LINE_984 = 984;
		for (; true;) {
            int PROBE_START_LINE_986 = 988;
			if (FOR_STMT_TOGGLE_LINE_985) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_4371_line_985_v1 = n;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_137_line_985 = p_n_4371_line_985_v1.next;
				n = q_next_137_line_985;
			} else {
				FOR_STMT_TOGGLE_LINE_985 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_4371_line_985 = n;
			boolean pojoproperty_builder_1_expr190_line_985 = p_n_4371_line_985 != null;
			if (!(pojoproperty_builder_1_expr190_line_985)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_4371_line_986 = n;
			boolean q_is_visible_138_line_986 = p_n_4371_line_986.isVisible;
			int PROBE_END_LINE_986 = 988;
			if (q_is_visible_138_line_986) {
                return true;
            }
        }
        return false;
    }
    
    public boolean anyIgnorals() {
        int PROBE_START_LINE_994 = 998;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_994 = _fields;
		boolean pojoproperty_builder_1_expr193_line_994 = _anyIgnorals(f__fields_4333_line_994);
		boolean pojoproperty_builder_1_expr192_line_994 = pojoproperty_builder_1_expr193_line_994
				|| _anyIgnorals(_getters) || _anyIgnorals(_setters) || _anyIgnorals(_ctorParameters);
		int PROBE_END_LINE_994 = 998;
		return pojoproperty_builder_1_expr192_line_994
        ;
    }

    private <T> boolean _anyIgnorals(Linked<T> n)
    {
        int PROBE_START_LINE_1002 = 1002;
		boolean FOR_STMT_TOGGLE_LINE_1003 = false;
		int PROBE_END_LINE_1002 = 1002;
		for (; true;) {
            int PROBE_START_LINE_1004 = 1006;
			if (FOR_STMT_TOGGLE_LINE_1003) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_4372_line_1003_v1 = n;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> q_next_139_line_1003 = p_n_4372_line_1003_v1.next;
				n = q_next_139_line_1003;
			} else {
				FOR_STMT_TOGGLE_LINE_1003 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_4372_line_1003 = n;
			boolean pojoproperty_builder_1_expr194_line_1003 = p_n_4372_line_1003 != null;
			if (!(pojoproperty_builder_1_expr194_line_1003)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_4372_line_1004 = n;
			boolean q_is_marked_ignored_140_line_1004 = p_n_4372_line_1004.isMarkedIgnored;
			int PROBE_END_LINE_1004 = 1006;
			if (q_is_marked_ignored_140_line_1004) {
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
        int PROBE_START_LINE_1020 = 1020;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_1020 = _fields;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_4373_line_1020 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr197_line_1020 = _findExplicitNames(
				f__fields_4333_line_1020, v_renamed_4373_line_1020);
		int PROBE_END_LINE_1020 = 1020;
		renamed = pojoproperty_builder_1_expr197_line_1020;
        int PROBE_START_LINE_1021 = 1021;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_4309_line_1021 = _getters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_4373_line_1021 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr199_line_1021 = _findExplicitNames(
				f__getters_4309_line_1021, v_renamed_4373_line_1021);
		int PROBE_END_LINE_1021 = 1021;
		renamed = pojoproperty_builder_1_expr199_line_1021;
        int PROBE_START_LINE_1022 = 1022;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_1022 = _setters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_4373_line_1022 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr201_line_1022 = _findExplicitNames(
				f__setters_4306_line_1022, v_renamed_4373_line_1022);
		int PROBE_END_LINE_1022 = 1022;
		renamed = pojoproperty_builder_1_expr201_line_1022;
        int PROBE_START_LINE_1023 = 1023;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_1023 = _ctorParameters;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_4373_line_1023 = renamed;
		Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr203_line_1023 = _findExplicitNames(
				f__ctor_parameters_4307_line_1023, v_renamed_4373_line_1023);
		int PROBE_END_LINE_1023 = 1023;
		renamed = pojoproperty_builder_1_expr203_line_1023;
        int PROBE_START_LINE_1024 = 1026;
		Set<com.fasterxml.jackson.databind.PropertyName> v_renamed_4373_line_1024 = renamed;
		boolean pojoproperty_builder_1_expr204_line_1024 = v_renamed_4373_line_1024 == null;
		int PROBE_END_LINE_1024 = 1026;
		if (pojoproperty_builder_1_expr204_line_1024) {
            int PROBE_START_LINE_1025 = 1025;
			Set<com.fasterxml.jackson.databind.PropertyName> pojoproperty_builder_1_expr205_line_1025 = Collections
					.emptySet();
			int PROBE_END_LINE_1025 = 1025;
			return pojoproperty_builder_1_expr205_line_1025;
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
        int PROBE_START_LINE_1093 = 1093;
		boolean FOR_STMT_TOGGLE_LINE_1094 = false;
		int PROBE_END_LINE_1093 = 1093;
		for (; true;) {
            int PROBE_START_LINE_1101 = 1103;
			if (FOR_STMT_TOGGLE_LINE_1094) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_4378_line_1094_v1 = node;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> q_next_141_line_1094 = p_node_4378_line_1094_v1.next;
				node = q_next_141_line_1094;
			} else {
				FOR_STMT_TOGGLE_LINE_1094 = true;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_4378_line_1094 = node;
			boolean pojoproperty_builder_1_expr206_line_1094 = p_node_4378_line_1094 != null;
			if (!(pojoproperty_builder_1_expr206_line_1094)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_4378_line_1101 = node;
			boolean q_is_name_explicit_142_line_1101 = p_node_4378_line_1101.isNameExplicit;
			boolean pojoproperty_builder_1_expr209_line_1101 = !q_is_name_explicit_142_line_1101;
			boolean pojoproperty_builder_1_expr210_line_1101 = false;
			if (!pojoproperty_builder_1_expr209_line_1101) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<? extends com.fasterxml.jackson.databind.introspect.AnnotatedMember> p_node_4378_line_1101_v1 = node;
				com.fasterxml.jackson.databind.PropertyName q_name_143_line_1101 = p_node_4378_line_1101_v1.name;
				pojoproperty_builder_1_expr210_line_1101 = q_name_143_line_1101 == null;
			}
			boolean pojoproperty_builder_1_expr208_line_1101 = pojoproperty_builder_1_expr209_line_1101
					|| pojoproperty_builder_1_expr210_line_1101;
			int PROBE_END_LINE_1101 = 1103;
			/* 30-Mar-2014, tatu: Second check should not be needed, but seems like
             *   removing it can cause nasty exceptions with certain version
             *   combinations (2.4 databind, an older module).
             *   So leaving it in for now until this is resolved
             *   (or version beyond 2.4)
             */
            if (pojoproperty_builder_1_expr208_line_1101) {
                continue;
            }
            if (renamed == null) {
                renamed = new HashSet<PropertyName>();
            }
            renamed.add(node.name);
        }
        int PROBE_START_LINE_1109 = 1109;
		Set<com.fasterxml.jackson.databind.PropertyName> p_renamed_4379_line_1109 = renamed;
		int PROBE_END_LINE_1109 = 1109;
		return p_renamed_4379_line_1109;
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
        int PROBE_START_LINE_1140 = 1156;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_1140 = _annotationIntrospector;
		boolean pojoproperty_builder_1_expr211_line_1140 = f__annotation_introspector_4275_line_1140 != null;
		int PROBE_END_LINE_1140 = 1156;
		if (pojoproperty_builder_1_expr211_line_1140) {
            int PROBE_START_LINE_1141 = 1152;
			boolean f__for_serialization_4278_line_1141 = _forSerialization;
			int PROBE_END_LINE_1141 = 1152;
			if (f__for_serialization_4278_line_1141) {
                if (_getters != null) {
                    result = func.withMember(_getters.value);
                }
            } else {
                int PROBE_START_LINE_1146 = 1148;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_1146 = _ctorParameters;
				boolean pojoproperty_builder_1_expr212_line_1146 = f__ctor_parameters_4307_line_1146 != null;
				int PROBE_END_LINE_1146 = 1148;
				if (pojoproperty_builder_1_expr212_line_1146) {
                    result = func.withMember(_ctorParameters.value);
                }
                int PROBE_START_LINE_1149 = 1151;
				T v_result_4381_line_1149 = result;
				boolean pojoproperty_builder_1_expr214_line_1149 = v_result_4381_line_1149 == null;
				boolean pojoproperty_builder_1_expr215_line_1149 = true;
				if (pojoproperty_builder_1_expr214_line_1149) {
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_1149 = _setters;
					pojoproperty_builder_1_expr215_line_1149 = f__setters_4306_line_1149 != null;
				}
				boolean pojoproperty_builder_1_expr213_line_1149 = pojoproperty_builder_1_expr214_line_1149
						&& pojoproperty_builder_1_expr215_line_1149;
				int PROBE_END_LINE_1149 = 1151;
				if (pojoproperty_builder_1_expr213_line_1149) {
                    int PROBE_START_LINE_1150 = 1150;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember<T> p_func_4380_line_1150 = func;
					com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_1150 = _setters;
					com.fasterxml.jackson.databind.introspect.AnnotatedMethod q_value_144_line_1150 = f__setters_4306_line_1150.value;
					T pojoproperty_builder_1_expr217_line_1150 = p_func_4380_line_1150
							.withMember(q_value_144_line_1150);
					int PROBE_END_LINE_1150 = 1150;
					result = pojoproperty_builder_1_expr217_line_1150;
                }
            }
            int PROBE_START_LINE_1153 = 1155;
			T v_result_4381_line_1153 = result;
			boolean pojoproperty_builder_1_expr219_line_1153 = v_result_4381_line_1153 == null;
			boolean pojoproperty_builder_1_expr220_line_1153 = true;
			if (pojoproperty_builder_1_expr219_line_1153) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_1153 = _fields;
				pojoproperty_builder_1_expr220_line_1153 = f__fields_4333_line_1153 != null;
			}
			boolean pojoproperty_builder_1_expr218_line_1153 = pojoproperty_builder_1_expr219_line_1153
					&& pojoproperty_builder_1_expr220_line_1153;
			int PROBE_END_LINE_1153 = 1155;
			if (pojoproperty_builder_1_expr218_line_1153) {
                int PROBE_START_LINE_1154 = 1154;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember<T> p_func_4380_line_1154 = func;
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_1154 = _fields;
				com.fasterxml.jackson.databind.introspect.AnnotatedField q_value_145_line_1154 = f__fields_4333_line_1154.value;
				T pojoproperty_builder_1_expr222_line_1154 = p_func_4380_line_1154.withMember(q_value_145_line_1154);
				int PROBE_END_LINE_1154 = 1154;
				result = pojoproperty_builder_1_expr222_line_1154;
            }
        }
        int PROBE_START_LINE_1157 = 1157;
		T v_result_4381_line_1157 = result;
		int PROBE_END_LINE_1157 = 1157;
		return v_result_4381_line_1157;
    }

    protected <T> T fromMemberAnnotationsExcept(WithMember<T> func, T defaultValue)
    {
        int PROBE_START_LINE_1162 = 1164;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__annotation_introspector_4275_line_1162 = _annotationIntrospector;
		boolean pojoproperty_builder_1_expr223_line_1162 = f__annotation_introspector_4275_line_1162 == null;
		int PROBE_END_LINE_1162 = 1164;
		if (pojoproperty_builder_1_expr223_line_1162) {
            return null;
        }

        int PROBE_START_LINE_1168 = 1194;
		boolean f__for_serialization_4278_line_1168 = _forSerialization;
		int PROBE_END_LINE_1168 = 1194;
		// NOTE: here we must ask ALL accessors, but the order varies between
        // serialization, deserialization
        if (f__for_serialization_4278_line_1168) {
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
        int PROBE_START_LINE_1195 = 1200;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedParameter> f__ctor_parameters_4307_line_1195 = _ctorParameters;
		boolean pojoproperty_builder_1_expr224_line_1195 = f__ctor_parameters_4307_line_1195 != null;
		int PROBE_END_LINE_1195 = 1200;
		if (pojoproperty_builder_1_expr224_line_1195) {
            T result = func.withMember(_ctorParameters.value);
            if ((result != null) && (result != defaultValue)) {
                return result;
            }
        }
        int PROBE_START_LINE_1201 = 1206;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_1201 = _setters;
		boolean pojoproperty_builder_1_expr225_line_1201 = f__setters_4306_line_1201 != null;
		int PROBE_END_LINE_1201 = 1206;
		if (pojoproperty_builder_1_expr225_line_1201) {
            int PROBE_START_LINE_1202 = 1202;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember<T> p_func_4382_line_1202 = func;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__setters_4306_line_1202 = _setters;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod q_value_146_line_1202 = f__setters_4306_line_1202.value;
			T pojoproperty_builder_1_expr226_line_1202 = p_func_4382_line_1202.withMember(q_value_146_line_1202);
			int PROBE_END_LINE_1202 = 1202;
			T result = pojoproperty_builder_1_expr226_line_1202;
            int PROBE_START_LINE_1203 = 1205;
			T v_result_4384_line_1203 = result;
			boolean pojoproperty_builder_1_expr229_line_1203 = v_result_4384_line_1203 != null;
			boolean pojoproperty_builder_1_expr228_line_1203 = (pojoproperty_builder_1_expr229_line_1203);
			boolean pojoproperty_builder_1_expr230_line_1203 = true;
			if (pojoproperty_builder_1_expr228_line_1203) {
				T v_result_4384_line_1203_v1 = result;
				T p_default_value_4383_line_1203 = defaultValue;
				boolean pojoproperty_builder_1_expr231_line_1203 = v_result_4384_line_1203_v1 != p_default_value_4383_line_1203;
				pojoproperty_builder_1_expr230_line_1203 = (pojoproperty_builder_1_expr231_line_1203);
			}
			boolean pojoproperty_builder_1_expr227_line_1203 = pojoproperty_builder_1_expr228_line_1203
					&& pojoproperty_builder_1_expr230_line_1203;
			int PROBE_END_LINE_1203 = 1205;
			if (pojoproperty_builder_1_expr227_line_1203) {
                return result;
            }
        }
        int PROBE_START_LINE_1207 = 1212;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_1207 = _fields;
		boolean pojoproperty_builder_1_expr232_line_1207 = f__fields_4333_line_1207 != null;
		int PROBE_END_LINE_1207 = 1212;
		if (pojoproperty_builder_1_expr232_line_1207) {
            int PROBE_START_LINE_1208 = 1208;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember<T> p_func_4382_line_1208 = func;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> f__fields_4333_line_1208 = _fields;
			com.fasterxml.jackson.databind.introspect.AnnotatedField q_value_146_line_1208 = f__fields_4333_line_1208.value;
			T pojoproperty_builder_1_expr233_line_1208 = p_func_4382_line_1208.withMember(q_value_146_line_1208);
			int PROBE_END_LINE_1208 = 1208;
			T result = pojoproperty_builder_1_expr233_line_1208;
            int PROBE_START_LINE_1209 = 1211;
			T v_result_4385_line_1209 = result;
			boolean pojoproperty_builder_1_expr236_line_1209 = v_result_4385_line_1209 != null;
			boolean pojoproperty_builder_1_expr235_line_1209 = (pojoproperty_builder_1_expr236_line_1209);
			boolean pojoproperty_builder_1_expr237_line_1209 = true;
			if (pojoproperty_builder_1_expr235_line_1209) {
				T v_result_4385_line_1209_v1 = result;
				T p_default_value_4383_line_1209 = defaultValue;
				boolean pojoproperty_builder_1_expr238_line_1209 = v_result_4385_line_1209_v1 != p_default_value_4383_line_1209;
				pojoproperty_builder_1_expr237_line_1209 = (pojoproperty_builder_1_expr238_line_1209);
			}
			boolean pojoproperty_builder_1_expr234_line_1209 = pojoproperty_builder_1_expr235_line_1209
					&& pojoproperty_builder_1_expr237_line_1209;
			int PROBE_END_LINE_1209 = 1211;
			if (pojoproperty_builder_1_expr234_line_1209) {
                return result;
            }
        }
        int PROBE_START_LINE_1213 = 1218;
		com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_4309_line_1213 = _getters;
		boolean pojoproperty_builder_1_expr239_line_1213 = f__getters_4309_line_1213 != null;
		int PROBE_END_LINE_1213 = 1218;
		if (pojoproperty_builder_1_expr239_line_1213) {
            int PROBE_START_LINE_1214 = 1214;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember<T> p_func_4382_line_1214 = func;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> f__getters_4309_line_1214 = _getters;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod q_value_146_line_1214 = f__getters_4309_line_1214.value;
			T pojoproperty_builder_1_expr240_line_1214 = p_func_4382_line_1214.withMember(q_value_146_line_1214);
			int PROBE_END_LINE_1214 = 1214;
			T result = pojoproperty_builder_1_expr240_line_1214;
            int PROBE_START_LINE_1215 = 1217;
			T v_result_4386_line_1215 = result;
			boolean pojoproperty_builder_1_expr243_line_1215 = v_result_4386_line_1215 != null;
			boolean pojoproperty_builder_1_expr242_line_1215 = (pojoproperty_builder_1_expr243_line_1215);
			boolean pojoproperty_builder_1_expr244_line_1215 = true;
			if (pojoproperty_builder_1_expr242_line_1215) {
				T v_result_4386_line_1215_v1 = result;
				T p_default_value_4383_line_1215 = defaultValue;
				boolean pojoproperty_builder_1_expr245_line_1215 = v_result_4386_line_1215_v1 != p_default_value_4383_line_1215;
				pojoproperty_builder_1_expr244_line_1215 = (pojoproperty_builder_1_expr245_line_1215);
			}
			boolean pojoproperty_builder_1_expr241_line_1215 = pojoproperty_builder_1_expr242_line_1215
					&& pojoproperty_builder_1_expr244_line_1215;
			int PROBE_END_LINE_1215 = 1217;
			if (pojoproperty_builder_1_expr241_line_1215) {
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
            int PROBE_START_LINE_1281 = 1281;
			T p_v_4389_line_1281 = v;
			int PROBE_END_LINE_1281 = 1281;
			value = p_v_4389_line_1281;
            int PROBE_START_LINE_1282 = 1282;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_n_4390_line_1282 = n;
			int PROBE_END_LINE_1282 = 1282;
			next = p_n_4390_line_1282;
            int PROBE_START_LINE_1284 = 1284;
			com.fasterxml.jackson.databind.PropertyName p_name_4391_line_1284 = name;
			boolean pojoproperty_builder_1_expr254_line_1284 = p_name_4391_line_1284 == null;
			boolean pojoproperty_builder_1_expr255_line_1284 = false;
			if (!pojoproperty_builder_1_expr254_line_1284) {
				com.fasterxml.jackson.databind.PropertyName p_name_4391_line_1284_v1 = name;
				pojoproperty_builder_1_expr255_line_1284 = p_name_4391_line_1284_v1.isEmpty();
			}
			boolean pojoproperty_builder_1_expr253_line_1284 = pojoproperty_builder_1_expr254_line_1284
					|| pojoproperty_builder_1_expr255_line_1284;
			boolean pojoproperty_builder_1_expr252_line_1284 = (pojoproperty_builder_1_expr253_line_1284);
			com.fasterxml.jackson.databind.PropertyName p_name_4391_line_1284_v2 = null;
			if (!pojoproperty_builder_1_expr252_line_1284) {
				p_name_4391_line_1284_v2 = name;
			}
			com.fasterxml.jackson.databind.PropertyName pojoproperty_builder_1_expr250_line_1284 = pojoproperty_builder_1_expr252_line_1284
					? null
					: p_name_4391_line_1284_v2;
			int PROBE_END_LINE_1284 = 1284;
			// ensure that we'll never have missing names
            this.name = pojoproperty_builder_1_expr250_line_1284;

            int PROBE_START_LINE_1286 = 1295;
			boolean p_expl_name_4392_line_1286 = explName;
			int PROBE_END_LINE_1286 = 1295;
			if (p_expl_name_4392_line_1286) {
                if (this.name == null) { // sanity check to catch internal problems
                    throw new IllegalArgumentException("Cannot pass true for 'explName' if name is null/empty");
                }
                // 03-Apr-2014, tatu: But how about name-space only override?
                //   Probably should not be explicit? Or, need to merge somehow?
                if (!name.hasSimpleName()) {
                    explName = false;
                }
            }
            
            int PROBE_START_LINE_1297 = 1297;
			boolean p_expl_name_4392_line_1297 = explName;
			int PROBE_END_LINE_1297 = 1297;
			isNameExplicit = p_expl_name_4392_line_1297;
            int PROBE_START_LINE_1298 = 1298;
			boolean p_visible_4393_line_1298 = visible;
			int PROBE_END_LINE_1298 = 1298;
			isVisible = p_visible_4393_line_1298;
            int PROBE_START_LINE_1299 = 1299;
			boolean p_ignored_4394_line_1299 = ignored;
			int PROBE_END_LINE_1299 = 1299;
			isMarkedIgnored = p_ignored_4394_line_1299;
        }

        public Linked<T> withoutNext() {
            if (next == null) {
                return this;
            }
            return new Linked<T>(value, null, name, isNameExplicit, isVisible, isMarkedIgnored);
        }
        
        public Linked<T> withValue(T newValue) {
            int PROBE_START_LINE_1310 = 1312;
			T p_new_value_4401_line_1310 = newValue;
			T f_value_4395_line_1310 = value;
			boolean pojoproperty_builder_1_expr259_line_1310 = p_new_value_4401_line_1310 == f_value_4395_line_1310;
			int PROBE_END_LINE_1310 = 1312;
			if (pojoproperty_builder_1_expr259_line_1310) {
                return this;
            }
            int PROBE_START_LINE_1313 = 1313;
			T p_new_value_4401_line_1313 = newValue;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_4396_line_1313 = next;
			com.fasterxml.jackson.databind.PropertyName f_name_4397_line_1313 = name;
			boolean f_is_name_explicit_4398_line_1313 = isNameExplicit;
			boolean f_is_visible_4399_line_1313 = isVisible;
			boolean f_is_marked_ignored_4400_line_1313 = isMarkedIgnored;
			int PROBE_END_LINE_1313 = 1313;
			return new Linked<T>(p_new_value_4401_line_1313, f_next_4396_line_1313, f_name_4397_line_1313, f_is_name_explicit_4398_line_1313, f_is_visible_4399_line_1313, f_is_marked_ignored_4400_line_1313);
        }
        
        public Linked<T> withNext(Linked<T> newNext) {
            int PROBE_START_LINE_1317 = 1319;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> p_new_next_4402_line_1317 = newNext;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_4396_line_1317 = next;
			boolean pojoproperty_builder_1_expr261_line_1317 = p_new_next_4402_line_1317 == f_next_4396_line_1317;
			int PROBE_END_LINE_1317 = 1319;
			if (pojoproperty_builder_1_expr261_line_1317) {
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
            int PROBE_START_LINE_1337 = 1337;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_4396_line_1337 = next;
			boolean pojoproperty_builder_1_expr266_line_1337 = f_next_4396_line_1337 == null;
			boolean pojoproperty_builder_1_expr264_line_1337 = (pojoproperty_builder_1_expr266_line_1337);
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr265_line_1337 = null;
			if (!pojoproperty_builder_1_expr264_line_1337) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_4396_line_1337_v1 = next;
				pojoproperty_builder_1_expr265_line_1337 = f_next_4396_line_1337_v1.withoutNonVisible();
			}
			Linked<T> pojoproperty_builder_1_expr263_line_1337 = pojoproperty_builder_1_expr264_line_1337
					? null
					: pojoproperty_builder_1_expr265_line_1337;
			int PROBE_END_LINE_1337 = 1337;
			Linked<T> newNext = pojoproperty_builder_1_expr263_line_1337;
            int PROBE_START_LINE_1338 = 1338;
			boolean f_is_visible_4399_line_1338 = isVisible;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr268_line_1338 = null;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> v_new_next_4403_line_1338_v1 = null;
			if (f_is_visible_4399_line_1338) {
				com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> v_new_next_4403_line_1338 = newNext;
				pojoproperty_builder_1_expr268_line_1338 = withNext(v_new_next_4403_line_1338);
			} else {
				v_new_next_4403_line_1338_v1 = newNext;
			}
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> pojoproperty_builder_1_expr267_line_1338 = f_is_visible_4399_line_1338
					? pojoproperty_builder_1_expr268_line_1338
					: v_new_next_4403_line_1338_v1;
			int PROBE_END_LINE_1338 = 1338;
			return pojoproperty_builder_1_expr267_line_1338;
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
            int PROBE_START_LINE_1353 = 1355;
			com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.Linked<T> f_next_4396_line_1353 = next;
			boolean pojoproperty_builder_1_expr269_line_1353 = f_next_4396_line_1353 == null;
			int PROBE_END_LINE_1353 = 1355;
			if (pojoproperty_builder_1_expr269_line_1353) {
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
            String msg = String.format("%s[visible=%b,ignore=%b,explicitName=%b]",
                    value.toString(), isVisible, isMarkedIgnored, isNameExplicit);
            if (next != null) {
                msg = msg + ", "+next.toString();
            }
            return msg;
        }
    }
}
