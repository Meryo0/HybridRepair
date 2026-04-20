package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.annotation.JacksonInject.Value;

public final class CreatorCandidate
{
    protected final AnnotationIntrospector _intr;
    protected final AnnotatedWithParams _creator;
    protected final int _paramCount;
    protected final Param[] _params;

    protected CreatorCandidate(AnnotationIntrospector intr,
            AnnotatedWithParams ct, Param[] params, int count) {
        int PROBE_START_LINE_19 = 19;
				com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_2645_line_19 = intr;
				int PROBE_END_LINE_19 = 19;
		_intr = p_intr_2645_line_19;
        int PROBE_START_LINE_20 = 20;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_ct_2646_line_20 = ct;
		int PROBE_END_LINE_20 = 20;
		_creator = p_ct_2646_line_20;
        int PROBE_START_LINE_21 = 21;
		com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param[] p_params_2647_line_21 = params;
		int PROBE_END_LINE_21 = 21;
		_params = p_params_2647_line_21;
        int PROBE_START_LINE_22 = 22;
		int p_count_2648_line_22 = count;
		int PROBE_END_LINE_22 = 22;
		_paramCount = p_count_2648_line_22;
    }

    public static CreatorCandidate construct(AnnotationIntrospector intr,
            AnnotatedWithParams creator, BeanPropertyDefinition[] propDefs)
    {
        int PROBE_START_LINE_28 = 28;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2654_line_28 = creator;
		int creator_candidate_1_expr5_line_28 = p_creator_2654_line_28.getParameterCount();
		int PROBE_END_LINE_28 = 28;
		final int pcount = creator_candidate_1_expr5_line_28;
        int PROBE_START_LINE_29 = 29;
		int v_pcount_2656_line_29 = pcount;
		int PROBE_END_LINE_29 = 29;
		Param[] params = new Param[v_pcount_2656_line_29];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_31 = 31;
			int v_i_2658_line_30 = i;
			int v_pcount_2656_line_30 = pcount;
			boolean creator_candidate_1_expr8_line_30 = v_i_2658_line_30 < v_pcount_2656_line_30;
			if (!(creator_candidate_1_expr8_line_30)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2654_line_31 = creator;
			int v_i_2658_line_31 = i;
			AnnotatedParameter creator_candidate_1_expr10_line_31 = p_creator_2654_line_31
					.getParameter(v_i_2658_line_31);
			int PROBE_END_LINE_31 = 31;
			AnnotatedParameter annParam = creator_candidate_1_expr10_line_31;
            int PROBE_START_LINE_32 = 32;
			com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_2653_line_32 = intr;
			com.fasterxml.jackson.databind.introspect.AnnotatedParameter v_ann_param_2659_line_32 = annParam;
			JacksonInject.Value creator_candidate_1_expr11_line_32 = p_intr_2653_line_32
					.findInjectableValue(v_ann_param_2659_line_32);
			int PROBE_END_LINE_32 = 32;
			JacksonInject.Value injectId = creator_candidate_1_expr11_line_32;
            int PROBE_START_LINE_33 = 33;
			com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param[] v_params_2657_line_33 = params;
			int v_i_2658_line_33 = i;
			com.fasterxml.jackson.databind.introspect.AnnotatedParameter v_ann_param_2659_line_33 = annParam;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[] p_prop_defs_2655_line_33 = propDefs;
			boolean creator_candidate_1_expr18_line_33 = p_prop_defs_2655_line_33 == null;
			boolean creator_candidate_1_expr16_line_33 = (creator_candidate_1_expr18_line_33);
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition creator_candidate_1_expr17_line_33 = null;
			if (!creator_candidate_1_expr16_line_33) {
				com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition[] p_prop_defs_2655_line_33_v1 = propDefs;
				int v_i_2658_line_33_v1 = i;
				creator_candidate_1_expr17_line_33 = p_prop_defs_2655_line_33_v1[v_i_2658_line_33_v1];
			}
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition creator_candidate_1_expr15_line_33 = creator_candidate_1_expr16_line_33
					? null
					: creator_candidate_1_expr17_line_33;
			com.fasterxml.jackson.annotation.JacksonInject.Value v_inject_id_2660_line_33 = injectId;
			int PROBE_END_LINE_33 = 33;
			v_params_2657_line_33[v_i_2658_line_33] = new Param(v_ann_param_2659_line_33, creator_candidate_1_expr15_line_33, v_inject_id_2660_line_33);
        }
        int PROBE_START_LINE_35 = 35;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_2653_line_35 = intr;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2654_line_35 = creator;
		com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param[] v_params_2657_line_35 = params;
		int v_pcount_2656_line_35 = pcount;
		int PROBE_END_LINE_35 = 35;
		return new CreatorCandidate(p_intr_2653_line_35, p_creator_2654_line_35, v_params_2657_line_35, v_pcount_2656_line_35);
    }

    public AnnotatedWithParams creator() { int PROBE_START_LINE_38 = 38;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__creator_2650_line_38 = _creator;
		int PROBE_END_LINE_38 = 38;
	return f__creator_2650_line_38; }
    public int paramCount() { int PROBE_START_LINE_39 = 39;
		int f__param_count_2652_line_39 = _paramCount;
		int PROBE_END_LINE_39 = 39;
	return f__param_count_2652_line_39; }
    public JacksonInject.Value injection(int i) { return _params[i].injection; }
    public AnnotatedParameter parameter(int i) { return _params[i].annotated; }
    public BeanPropertyDefinition propertyDef(int i) { int PROBE_START_LINE_42 = 42;
		com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param[] f__params_2651_line_42 = _params;
		int p_i_2663_line_42 = i;
		com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param creator_candidate_1_expr21_line_42 = f__params_2651_line_42[p_i_2663_line_42];
		com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition creator_candidate_1_expr20_line_42 = creator_candidate_1_expr21_line_42.propDef;
		int PROBE_END_LINE_42 = 42;
	return creator_candidate_1_expr20_line_42; }

    public PropertyName paramName(int i) {
        BeanPropertyDefinition propDef = _params[i].propDef;
        if (propDef != null) {
            return propDef.getFullName();
        }
        return null;
    }

    public PropertyName explicitParamName(int i) {
        BeanPropertyDefinition propDef = _params[i].propDef;
        if (propDef != null) {
            if (propDef.isExplicitlyNamed()) {
                return propDef.getFullName();
            }
        }
        return null;
    }
    
    public PropertyName findImplicitParamName(int i) {
        String str = _intr.findImplicitPropertyName(_params[i].annotated);
        if (str != null && !str.isEmpty()) {
            return PropertyName.construct(str);
        }
        return null;
    }

    /**
     * Specialized accessor that finds index of the one and only parameter
     * with NO injection and returns that; or, if none or more than one found,
     * returns -1.
     */
    public int findOnlyParamWithoutInjection()
    {
        int missing = -1;
        for (int i = 0; i < _paramCount; ++i) {
            if (_params[i].injection == null) {
                if (missing >= 0) {
                    return -1;
                }
                missing = i;
            }
        }
        return missing;
    }

    @Override
    public String toString() {
        return _creator.toString();
    }

    public final static class Param {
        public final AnnotatedParameter annotated;
        public final BeanPropertyDefinition propDef;
        public final JacksonInject.Value injection;

        public Param(AnnotatedParameter p, BeanPropertyDefinition pd,
                JacksonInject.Value i)
        {
            int PROBE_START_LINE_102 = 102;
			com.fasterxml.jackson.databind.introspect.AnnotatedParameter p_p_2668_line_102 = p;
			int PROBE_END_LINE_102 = 102;
			annotated = p_p_2668_line_102;
            int PROBE_START_LINE_103 = 103;
			com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition p_pd_2669_line_103 = pd;
			int PROBE_END_LINE_103 = 103;
			propDef = p_pd_2669_line_103;
            int PROBE_START_LINE_104 = 104;
			com.fasterxml.jackson.annotation.JacksonInject.Value p_i_2670_line_104 = i;
			int PROBE_END_LINE_104 = 104;
			injection = p_i_2670_line_104;
        }

        public PropertyName fullName() {
            if (propDef == null) {
                return null;
            }
            return propDef.getFullName();
        }

        public boolean hasFullName() {
            if (propDef == null) {
                return false;
            }
            PropertyName n = propDef.getFullName();
            return n.hasSimpleName();
        }
    }
}
