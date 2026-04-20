package com.fasterxml.jackson.databind.introspect;

import java.util.Collections;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
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

    /**
     * @since 2.9
     */
    protected transient List<PropertyName> _aliases;

    protected ConcreteBeanPropertyBase(PropertyMetadata md) {
        int PROBE_START_LINE_45 = 45;
		com.fasterxml.jackson.databind.PropertyMetadata p_md_3931_line_45 = md;
		boolean concrete_bean_property_base_1_expr4_line_45 = p_md_3931_line_45 == null;
		boolean concrete_bean_property_base_1_expr3_line_45 = (concrete_bean_property_base_1_expr4_line_45);
		com.fasterxml.jackson.databind.PropertyMetadata q_std_required_or_optional_116_line_45 = null;
		com.fasterxml.jackson.databind.PropertyMetadata p_md_3931_line_45_v1 = null;
		if (concrete_bean_property_base_1_expr3_line_45) {
			q_std_required_or_optional_116_line_45 = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
		} else {
			p_md_3931_line_45_v1 = md;
		}
		com.fasterxml.jackson.databind.PropertyMetadata concrete_bean_property_base_1_expr2_line_45 = concrete_bean_property_base_1_expr3_line_45
				? q_std_required_or_optional_116_line_45
				: p_md_3931_line_45_v1;
		int PROBE_END_LINE_45 = 45;
		_metadata = concrete_bean_property_base_1_expr2_line_45;
    }

    protected ConcreteBeanPropertyBase(ConcreteBeanPropertyBase src) {
        int PROBE_START_LINE_49 = 49;
		com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase p_src_3933_line_49 = src;
		com.fasterxml.jackson.databind.PropertyMetadata q__metadata_117_line_49 = p_src_3933_line_49._metadata;
		int PROBE_END_LINE_49 = 49;
		_metadata = q__metadata_117_line_49;
        int PROBE_START_LINE_50 = 50;
		com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase p_src_3933_line_50 = src;
		com.fasterxml.jackson.annotation.JsonFormat.Value q__property_format_118_line_50 = p_src_3933_line_50._propertyFormat;
		int PROBE_END_LINE_50 = 50;
		_propertyFormat = q__property_format_118_line_50;
    }

    @Override
    public boolean isRequired() { return _metadata.isRequired(); }

    @Override
    public PropertyMetadata getMetadata() { int PROBE_START_LINE_57 = 57;
		com.fasterxml.jackson.databind.PropertyMetadata f__metadata_3932_line_57 = _metadata;
		int PROBE_END_LINE_57 = 57;
	return f__metadata_3932_line_57; }
    
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
        int PROBE_START_LINE_83 = 83;
		JsonFormat.Value f__property_format_3934_line_83 = _propertyFormat;
		int PROBE_END_LINE_83 = 83;
		// 15-Apr-2016, tatu: Let's calculate lazily, retain; assumption being however that
        //    baseType is always the same
        JsonFormat.Value v = f__property_format_3934_line_83;
        int PROBE_START_LINE_84 = 100;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3938_line_84 = v;
		boolean concrete_bean_property_base_1_expr7_line_84 = v_v_3938_line_84 == null;
		int PROBE_END_LINE_84 = 100;
		if (concrete_bean_property_base_1_expr7_line_84) {
            int PROBE_START_LINE_85 = 85;
			MapperConfig<?> p_config_3936_line_85 = config;
			Class<?> p_base_type_3937_line_85 = baseType;
			JsonFormat.Value concrete_bean_property_base_1_expr8_line_85 = p_config_3936_line_85
					.getDefaultPropertyFormat(p_base_type_3937_line_85);
			int PROBE_END_LINE_85 = 85;
			JsonFormat.Value v1 = concrete_bean_property_base_1_expr8_line_85;
            JsonFormat.Value v2 = null;
            int PROBE_START_LINE_87 = 87;
			MapperConfig<?> p_config_3936_line_87 = config;
			AnnotationIntrospector concrete_bean_property_base_1_expr9_line_87 = p_config_3936_line_87
					.getAnnotationIntrospector();
			int PROBE_END_LINE_87 = 87;
			AnnotationIntrospector intr = concrete_bean_property_base_1_expr9_line_87;
            int PROBE_START_LINE_88 = 93;
			com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3941_line_88 = intr;
			boolean concrete_bean_property_base_1_expr10_line_88 = v_intr_3941_line_88 != null;
			int PROBE_END_LINE_88 = 93;
			if (concrete_bean_property_base_1_expr10_line_88) {
                int PROBE_START_LINE_89 = 89;
				AnnotatedMember concrete_bean_property_base_1_expr11_line_89 = getMember();
				int PROBE_END_LINE_89 = 89;
				AnnotatedMember member = concrete_bean_property_base_1_expr11_line_89;
                int PROBE_START_LINE_90 = 92;
				com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_3942_line_90 = member;
				boolean concrete_bean_property_base_1_expr12_line_90 = v_member_3942_line_90 != null;
				int PROBE_END_LINE_90 = 92;
				if (concrete_bean_property_base_1_expr12_line_90) {
                    int PROBE_START_LINE_91 = 91;
					com.fasterxml.jackson.databind.AnnotationIntrospector v_intr_3941_line_91 = intr;
					com.fasterxml.jackson.databind.introspect.AnnotatedMember v_member_3942_line_91 = member;
					com.fasterxml.jackson.annotation.JsonFormat.Value concrete_bean_property_base_1_expr14_line_91 = v_intr_3941_line_91
							.findFormat(v_member_3942_line_91);
					int PROBE_END_LINE_91 = 91;
					v2 = concrete_bean_property_base_1_expr14_line_91;
                }
            }
            int PROBE_START_LINE_94 = 98;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_v_1_3939_line_94 = v1;
			boolean concrete_bean_property_base_1_expr15_line_94 = v_v_1_3939_line_94 == null;
			int PROBE_END_LINE_94 = 98;
			if (concrete_bean_property_base_1_expr15_line_94) {
                v = (v2 == null) ? EMPTY_FORMAT : v2;
            } else {
                int PROBE_START_LINE_97 = 97;
				com.fasterxml.jackson.annotation.JsonFormat.Value v_v_2_3940_line_97 = v2;
				boolean concrete_bean_property_base_1_expr20_line_97 = v_v_2_3940_line_97 == null;
				boolean concrete_bean_property_base_1_expr18_line_97 = (concrete_bean_property_base_1_expr20_line_97);
				com.fasterxml.jackson.annotation.JsonFormat.Value v_v_1_3939_line_97 = null;
				com.fasterxml.jackson.annotation.JsonFormat.Value concrete_bean_property_base_1_expr19_line_97 = null;
				if (concrete_bean_property_base_1_expr18_line_97) {
					v_v_1_3939_line_97 = v1;
				} else {
					com.fasterxml.jackson.annotation.JsonFormat.Value v_v_1_3939_line_97_v1 = v1;
					com.fasterxml.jackson.annotation.JsonFormat.Value v_v_2_3940_line_97_v1 = v2;
					concrete_bean_property_base_1_expr19_line_97 = v_v_1_3939_line_97_v1
							.withOverrides(v_v_2_3940_line_97_v1);
				}
				com.fasterxml.jackson.annotation.JsonFormat.Value concrete_bean_property_base_1_expr17_line_97 = concrete_bean_property_base_1_expr18_line_97
						? v_v_1_3939_line_97
						: concrete_bean_property_base_1_expr19_line_97;
				int PROBE_END_LINE_97 = 97;
				v = concrete_bean_property_base_1_expr17_line_97;
            }
            int PROBE_START_LINE_99 = 99;
			com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3938_line_99 = v;
			int PROBE_END_LINE_99 = 99;
			_propertyFormat = v_v_3938_line_99;
        }
        int PROBE_START_LINE_101 = 101;
		com.fasterxml.jackson.annotation.JsonFormat.Value v_v_3938_line_101 = v;
		int PROBE_END_LINE_101 = 101;
		return v_v_3938_line_101;
    }

    @Override
    public JsonInclude.Value findPropertyInclusion(MapperConfig<?> config, Class<?> baseType)
    {
        AnnotationIntrospector intr = config.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        if (member == null) {
            JsonInclude.Value def = config.getDefaultPropertyInclusion(baseType);
            return def;
        }
        JsonInclude.Value v0 = config.getDefaultInclusion(baseType, member.getRawType());
        if (intr == null) {
            return v0;
        }
        JsonInclude.Value v = intr.findPropertyInclusion(member);
        if (v0 == null) {
            return v;
        }
        return v0.withOverrides(v);
    }

    @Override
    public List<PropertyName> findAliases(MapperConfig<?> config)
    {
        List<PropertyName> aliases = _aliases;
        if (aliases == null) {
            AnnotationIntrospector intr = config.getAnnotationIntrospector();
            if (intr != null) {
                aliases = intr.findPropertyAliases(getMember());
            }
            if (aliases == null) {
                aliases = Collections.emptyList();
            }
            _aliases = aliases;
        }
        return aliases;
    }
}
