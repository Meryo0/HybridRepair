package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.annotation.JsonFormat.Value;

/**
 * Intermediate {@link BeanProperty} class shared by concrete readable- and
 * writable property implementations for sharing common functionality.
 *
 * @since 2.7
 */
public abstract class ConcreteBeanPropertyBase
    implements BeanProperty, java.io.Serializable
{
    private static final long serialVersionUID = 1;

    /**
     * Additional information about property
     *
     * @since 2.3
     */
    protected final PropertyMetadata _metadata;
    
    /**
     * Lazily accessed value for per-property format override definition.
     * 
     * @since 2.8
     */
    protected transient JsonFormat.Value _propertyFormat;

    protected ConcreteBeanPropertyBase(PropertyMetadata md) {
        int PROBE_START_LINE_36 = 36;
		com.fasterxml.jackson.databind.PropertyMetadata p_md_3081_line_36 = md;
		boolean concrete_bean_property_base_1_expr4_line_36 = p_md_3081_line_36 == null;
		boolean concrete_bean_property_base_1_expr3_line_36 = (concrete_bean_property_base_1_expr4_line_36);
		com.fasterxml.jackson.databind.PropertyMetadata q_std_required_or_optional_84_line_36 = null;
		com.fasterxml.jackson.databind.PropertyMetadata p_md_3081_line_36_v1 = null;
		if (concrete_bean_property_base_1_expr3_line_36) {
			q_std_required_or_optional_84_line_36 = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
		} else {
			p_md_3081_line_36_v1 = md;
		}
		com.fasterxml.jackson.databind.PropertyMetadata concrete_bean_property_base_1_expr2_line_36 = concrete_bean_property_base_1_expr3_line_36
				? q_std_required_or_optional_84_line_36
				: p_md_3081_line_36_v1;
		int PROBE_END_LINE_36 = 36;
		_metadata = concrete_bean_property_base_1_expr2_line_36;
    }

    protected ConcreteBeanPropertyBase(ConcreteBeanPropertyBase src) {
        int PROBE_START_LINE_40 = 40;
		com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase p_src_3083_line_40 = src;
		com.fasterxml.jackson.databind.PropertyMetadata q__metadata_85_line_40 = p_src_3083_line_40._metadata;
		int PROBE_END_LINE_40 = 40;
		_metadata = q__metadata_85_line_40;
        int PROBE_START_LINE_41 = 41;
		com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase p_src_3083_line_41 = src;
		com.fasterxml.jackson.annotation.JsonFormat.Value q__property_format_86_line_41 = p_src_3083_line_41._propertyFormat;
		int PROBE_END_LINE_41 = 41;
		_propertyFormat = q__property_format_86_line_41;
    }

    @Override
    public boolean isRequired() { return _metadata.isRequired(); }

    @Override
    public PropertyMetadata getMetadata() { return _metadata; }
    
    @Override
    public boolean isVirtual() { return false; }

    @Override
    @Deprecated
    public final JsonFormat.Value findFormatOverrides(AnnotationIntrospector intr) {
        JsonFormat.Value f = null;
        if (intr != null) {
            AnnotatedMember member = getMember();
            if (member != null) {
                f = intr.findFormat(member);
            }
        }
        if (f == null) {
            f = EMPTY_FORMAT;
        }
        return f;
    }

    @Override
    public JsonFormat.Value findPropertyFormat(MapperConfig<?> config, Class<?> baseType)
    {
        int PROBE_START_LINE_74 = 74;
		JsonFormat.Value f__property_format_3084_line_74 = _propertyFormat;
		int PROBE_END_LINE_74 = 74;
		// 15-Apr-2016, tatu: Let's calculate lazily, retain; assumption being however that
        //    baseType is always the same
        JsonFormat.Value v = f__property_format_3084_line_74;
        int PROBE_START_LINE_75 = 91;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3088_line_75 = v;
		boolean concrete_bean_property_base_1_expr7_line_75 = v_v_3088_line_75 == null;
		int PROBE_END_LINE_75 = 91;
		if (concrete_bean_property_base_1_expr7_line_75) {
            int PROBE_START_LINE_76 = 76;
			MapperConfig<?> p_config_3086_line_76 = config;
			Class<?> p_base_type_3087_line_76 = baseType;
			JsonFormat.Value concrete_bean_property_base_1_expr8_line_76 = p_config_3086_line_76
					.getDefaultPropertyFormat(p_base_type_3087_line_76);
			int PROBE_END_LINE_76 = 76;
			JsonFormat.Value v1 = concrete_bean_property_base_1_expr8_line_76;
            JsonFormat.Value v2 = null;
            int PROBE_START_LINE_78 = 78;
			MapperConfig<?> p_config_3086_line_78 = config;
			AnnotationIntrospector concrete_bean_property_base_1_expr9_line_78 = p_config_3086_line_78
					.getAnnotationIntrospector();
			int PROBE_END_LINE_78 = 78;
			AnnotationIntrospector intr = concrete_bean_property_base_1_expr9_line_78;
            int PROBE_START_LINE_79 = 84;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3091_line_79 = intr;
			boolean concrete_bean_property_base_1_expr10_line_79 = v_intr_3091_line_79 != null;
			int PROBE_END_LINE_79 = 84;
			if (concrete_bean_property_base_1_expr10_line_79) {
                int PROBE_START_LINE_80 = 80;
				AnnotatedMember concrete_bean_property_base_1_expr11_line_80 = getMember();
				int PROBE_END_LINE_80 = 80;
				AnnotatedMember member = concrete_bean_property_base_1_expr11_line_80;
                int PROBE_START_LINE_81 = 83;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_3092_line_81 = member;
				boolean concrete_bean_property_base_1_expr12_line_81 = v_member_3092_line_81 != null;
				int PROBE_END_LINE_81 = 83;
				if (concrete_bean_property_base_1_expr12_line_81) {
                    int PROBE_START_LINE_82 = 82;
					com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3091_line_82 = intr;
					com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_3092_line_82 = member;
					com.fasterxml.jackson.annotation.JsonFormat.Value concrete_bean_property_base_1_expr14_line_82 = v_intr_3091_line_82
							.findFormat(v_member_3092_line_82);
					int PROBE_END_LINE_82 = 82;
					v2 = concrete_bean_property_base_1_expr14_line_82;
                }
            }
            int PROBE_START_LINE_85 = 89;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_v_1_3089_line_85 = v1;
			boolean concrete_bean_property_base_1_expr15_line_85 = v_v_1_3089_line_85 == null;
			int PROBE_END_LINE_85 = 89;
			if (concrete_bean_property_base_1_expr15_line_85) {
                v = (v2 == null) ? EMPTY_FORMAT : v2;
            } else {
                int PROBE_START_LINE_88 = 88;
				com.fasterxml.jackson.annotation.JsonFormat.Value v_v_2_3090_line_88 = v2;
				boolean concrete_bean_property_base_1_expr20_line_88 = v_v_2_3090_line_88 == null;
				boolean concrete_bean_property_base_1_expr18_line_88 = (concrete_bean_property_base_1_expr20_line_88);
				com.fasterxml.jackson.annotation.JsonFormat.Value v_v_1_3089_line_88 = null;
				com.fasterxml.jackson.annotation.JsonFormat.Value concrete_bean_property_base_1_expr19_line_88 = null;
				if (concrete_bean_property_base_1_expr18_line_88) {
					v_v_1_3089_line_88 = v1;
				} else {
					com.fasterxml.jackson.annotation.JsonFormat.Value v_v_1_3089_line_88_v1 = v1;
					com.fasterxml.jackson.annotation.JsonFormat.Value v_v_2_3090_line_88_v1 = v2;
					concrete_bean_property_base_1_expr19_line_88 = v_v_1_3089_line_88_v1
							.withOverrides(v_v_2_3090_line_88_v1);
				}
				com.fasterxml.jackson.annotation.JsonFormat.Value concrete_bean_property_base_1_expr17_line_88 = concrete_bean_property_base_1_expr18_line_88
						? v_v_1_3089_line_88
						: concrete_bean_property_base_1_expr19_line_88;
				int PROBE_END_LINE_88 = 88;
				v = concrete_bean_property_base_1_expr17_line_88;
            }
            int PROBE_START_LINE_90 = 90;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3088_line_90 = v;
			int PROBE_END_LINE_90 = 90;
			_propertyFormat = v_v_3088_line_90;
        }
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3088_line_92 = v;
		int PROBE_END_LINE_92 = 92;
		return v_v_3088_line_92;
    }

    @Override
    public JsonInclude.Value findPropertyInclusion(MapperConfig<?> config, Class<?> baseType)
    {
        JsonInclude.Value v0 = config.getDefaultPropertyInclusion(baseType);
        AnnotationIntrospector intr = config.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        if ((intr == null) || (member == null)) {
            return v0;
        }
        JsonInclude.Value v = intr.findPropertyInclusion(member);
        if (v == null) {
            return v0;
        }
        return v0.withOverrides(v);
    }
}
