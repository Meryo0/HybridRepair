package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.*;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.List;
import com.fasterxml.jackson.databind.type.TypeBindings;
import java.util.Map;
import java.util.Collection;
import java.lang.annotation.Annotation;

public class AnnotatedFieldCollector
    extends CollectorBase
{
    // // // Configuration

    private final TypeFactory _typeFactory;
    private final MixInResolver _mixInResolver;

    // // // Collected state

    AnnotatedFieldCollector(AnnotationIntrospector intr,
            TypeFactory types, MixInResolver mixins)
    {
        super(intr);
        int PROBE_START_LINE_27 = 27;
		com.fasterxml.jackson.databind.type.TypeFactory p_types_3576_line_27 = types;
		int PROBE_END_LINE_27 = 27;
		_typeFactory = p_types_3576_line_27;
        int PROBE_START_LINE_28 = 28;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_3575_line_28 = intr;
		boolean annotated_field_collector_1_expr6_line_28 = p_intr_3575_line_28 == null;
		boolean annotated_field_collector_1_expr5_line_28 = (annotated_field_collector_1_expr6_line_28);
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mixins_3577_line_28 = null;
		if (!annotated_field_collector_1_expr5_line_28) {
			p_mixins_3577_line_28 = mixins;
		}
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver annotated_field_collector_1_expr4_line_28 = annotated_field_collector_1_expr5_line_28
				? null
				: p_mixins_3577_line_28;
		int PROBE_END_LINE_28 = 28;
		_mixInResolver = annotated_field_collector_1_expr4_line_28;
    }

    public static List<AnnotatedField> collectFields(AnnotationIntrospector intr,
            TypeResolutionContext tc,
            MixInResolver mixins, TypeFactory types,
            JavaType type)
    {
        int PROBE_START_LINE_36 = 36;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_3580_line_36 = intr;
		com.fasterxml.jackson.databind.type.TypeFactory p_types_3583_line_36 = types;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mixins_3582_line_36 = mixins;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3581_line_36 = tc;
		com.fasterxml.jackson.databind.JavaType p_type_3584_line_36 = type;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> annotated_field_collector_1_expr7_line_36 = new AnnotatedFieldCollector(
				p_intr_3580_line_36, p_types_3583_line_36, p_mixins_3582_line_36)
				.collect(p_tc_3581_line_36, p_type_3584_line_36);
		int PROBE_END_LINE_36 = 36;
		return annotated_field_collector_1_expr7_line_36;
    }

    List<AnnotatedField> collect(TypeResolutionContext tc, JavaType type)
    {
        int PROBE_START_LINE_41 = 41;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3585_line_41 = tc;
		com.fasterxml.jackson.databind.JavaType p_type_3586_line_41 = type;
		Map<String, FieldBuilder> annotated_field_collector_1_expr9_line_41 = _findFields(p_tc_3585_line_41,
				p_type_3586_line_41, null);
		int PROBE_END_LINE_41 = 41;
		Map<String,FieldBuilder> foundFields = annotated_field_collector_1_expr9_line_41;
        int PROBE_START_LINE_42 = 44;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> v_found_fields_3587_line_42 = foundFields;
		boolean annotated_field_collector_1_expr10_line_42 = v_found_fields_3587_line_42 == null;
		int PROBE_END_LINE_42 = 44;
		if (annotated_field_collector_1_expr10_line_42) {
            return Collections.emptyList();
        }
        int PROBE_START_LINE_45 = 45;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> v_found_fields_3587_line_45 = foundFields;
		int annotated_field_collector_1_expr12_line_45 = v_found_fields_3587_line_45.size();
		int PROBE_END_LINE_45 = 45;
		List<AnnotatedField> result = new ArrayList<>(annotated_field_collector_1_expr12_line_45);
        int PROBE_START_LINE_46 = 48;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> v_found_fields_3587_line_46 = foundFields;
		Collection<com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> annotated_field_collector_1_expr13_line_46 = v_found_fields_3587_line_46
				.values();
		int PROBE_END_LINE_46 = 48;
		for (FieldBuilder b : annotated_field_collector_1_expr13_line_46) {
            int PROBE_START_LINE_47 = 47;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_result_3588_line_47 = result;
			com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder v_b_3589_line_47 = b;
			com.fasterxml.jackson.databind.introspect.AnnotatedField annotated_field_collector_1_expr15_line_47 = v_b_3589_line_47
					.build();
			int PROBE_END_LINE_47 = 47;
			v_result_3588_line_47.add(annotated_field_collector_1_expr15_line_47);
        }
        int PROBE_START_LINE_49 = 49;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedField> v_result_3588_line_49 = result;
		int PROBE_END_LINE_49 = 49;
		return v_result_3588_line_49;
    }

    private Map<String,FieldBuilder> _findFields(TypeResolutionContext tc,
            JavaType type, Map<String,FieldBuilder> fields)
    {
        int PROBE_START_LINE_58 = 58;
		com.fasterxml.jackson.databind.JavaType p_type_3591_line_58 = type;
		JavaType annotated_field_collector_1_expr16_line_58 = p_type_3591_line_58.getSuperClass();
		int PROBE_END_LINE_58 = 58;
		// First, a quick test: we only care for regular classes (not interfaces,
        //primitive types etc), except for Object.class. A simple check to rule out
        // other cases is to see if there is a super class or not.
        JavaType parent = annotated_field_collector_1_expr16_line_58;
        int PROBE_START_LINE_59 = 61;
		com.fasterxml.jackson.databind.JavaType v_parent_3593_line_59 = parent;
		boolean annotated_field_collector_1_expr17_line_59 = v_parent_3593_line_59 == null;
		int PROBE_END_LINE_59 = 61;
		if (annotated_field_collector_1_expr17_line_59) {
            int PROBE_START_LINE_60 = 60;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> p_fields_3592_line_60 = fields;
			int PROBE_END_LINE_60 = 60;
			return p_fields_3592_line_60;
        }
        int PROBE_START_LINE_62 = 62;
		com.fasterxml.jackson.databind.JavaType p_type_3591_line_62 = type;
		Class<?> annotated_field_collector_1_expr18_line_62 = p_type_3591_line_62.getRawClass();
		int PROBE_END_LINE_62 = 62;
		final Class<?> cls = annotated_field_collector_1_expr18_line_62;
        int PROBE_START_LINE_64 = 65;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_3578_line_64 = _typeFactory;
		com.fasterxml.jackson.databind.JavaType v_parent_3593_line_64 = parent;
		com.fasterxml.jackson.databind.type.TypeBindings annotated_field_collector_1_expr22_line_64 = v_parent_3593_line_64
				.getBindings();
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> annotated_field_collector_1_expr20_line_64 = _findFields(
				new TypeResolutionContext.Basic(f__type_factory_3578_line_64,
						annotated_field_collector_1_expr22_line_64),
				parent, fields);
		int PROBE_END_LINE_64 = 65;
		// Let's add super-class' fields first, then ours.
        fields = annotated_field_collector_1_expr20_line_64;
        int PROBE_START_LINE_66 = 82;
		Class<?> v_cls_3594_line_66 = cls;
		java.lang.reflect.Field[] annotated_field_collector_1_expr23_line_66 = ClassUtil
				.getDeclaredFields(v_cls_3594_line_66);
		int PROBE_END_LINE_66 = 82;
		for (Field f : annotated_field_collector_1_expr23_line_66) {
            int PROBE_START_LINE_68 = 70;
			java.lang.reflect.Field v_f_3595_line_68 = f;
			boolean annotated_field_collector_1_expr25_line_68 = _isIncludableField(v_f_3595_line_68);
			boolean annotated_field_collector_1_expr24_line_68 = !annotated_field_collector_1_expr25_line_68;
			int PROBE_END_LINE_68 = 70;
			// static fields not included (transients are at this point, filtered out later)
            if (annotated_field_collector_1_expr24_line_68) {
                continue;
            }
            int PROBE_START_LINE_74 = 76;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> p_fields_3592_line_74 = fields;
			boolean annotated_field_collector_1_expr26_line_74 = p_fields_3592_line_74 == null;
			int PROBE_END_LINE_74 = 76;
			// Ok now: we can (and need) not filter out ignorable fields at this point; partly
            // because mix-ins haven't been added, and partly because logic can be done
            // when determining get/settability of the field.
            if (annotated_field_collector_1_expr26_line_74) {
                fields = new LinkedHashMap<>();
            }
            int PROBE_START_LINE_77 = 77;
			com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3590_line_77 = tc;
			java.lang.reflect.Field v_f_3595_line_77 = f;
			int PROBE_END_LINE_77 = 77;
			FieldBuilder b = new FieldBuilder(p_tc_3590_line_77, v_f_3595_line_77);
            int PROBE_START_LINE_78 = 80;
			com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_78 = _intr;
			boolean annotated_field_collector_1_expr30_line_78 = f__intr_3516_line_78 != null;
			int PROBE_END_LINE_78 = 80;
			if (annotated_field_collector_1_expr30_line_78) {
                int PROBE_START_LINE_79 = 79;
				com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder v_b_3596_line_79 = b;
				com.fasterxml.jackson.databind.introspect.AnnotationCollector q_annotations_104_line_79 = v_b_3596_line_79.annotations;
				java.lang.reflect.Field v_f_3595_line_79 = f;
				java.lang.annotation.Annotation[] annotated_field_collector_1_expr33_line_79 = v_f_3595_line_79
						.getDeclaredAnnotations();
				com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_field_collector_1_expr32_line_79 = collectAnnotations(
						q_annotations_104_line_79, annotated_field_collector_1_expr33_line_79);
				int PROBE_END_LINE_79 = 79;
				b.annotations = annotated_field_collector_1_expr32_line_79;
            }
            int PROBE_START_LINE_81 = 81;
			Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> p_fields_3592_line_81 = fields;
			java.lang.reflect.Field v_f_3595_line_81 = f;
			String annotated_field_collector_1_expr35_line_81 = v_f_3595_line_81.getName();
			com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder v_b_3596_line_81 = b;
			int PROBE_END_LINE_81 = 81;
			p_fields_3592_line_81.put(annotated_field_collector_1_expr35_line_81, v_b_3596_line_81);
        }
        int PROBE_START_LINE_84 = 89;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_3579_line_84 = _mixInResolver;
		boolean annotated_field_collector_1_expr36_line_84 = f__mix_in_resolver_3579_line_84 != null;
		int PROBE_END_LINE_84 = 89;
		// And then... any mix-in overrides?
        if (annotated_field_collector_1_expr36_line_84) {
            int PROBE_START_LINE_85 = 85;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_3579_line_85 = _mixInResolver;
			Class<?> v_cls_3594_line_85 = cls;
			Class<?> annotated_field_collector_1_expr37_line_85 = f__mix_in_resolver_3579_line_85
					.findMixInClassFor(v_cls_3594_line_85);
			int PROBE_END_LINE_85 = 85;
			Class<?> mixin = annotated_field_collector_1_expr37_line_85;
            int PROBE_START_LINE_86 = 88;
			Class<?> v_mixin_3597_line_86 = mixin;
			boolean annotated_field_collector_1_expr38_line_86 = v_mixin_3597_line_86 != null;
			int PROBE_END_LINE_86 = 88;
			if (annotated_field_collector_1_expr38_line_86) {
                _addFieldMixIns(mixin, cls, fields);
            }
        }
        int PROBE_START_LINE_90 = 90;
		Map<String, com.fasterxml.jackson.databind.introspect.AnnotatedFieldCollector.FieldBuilder> p_fields_3592_line_90 = fields;
		int PROBE_END_LINE_90 = 90;
		return p_fields_3592_line_90;
    }

    /**
     * Method called to add field mix-ins from given mix-in class (and its fields)
     * into already collected actual fields (from introspected classes and their
     * super-classes)
     */
    private void _addFieldMixIns(Class<?> mixInCls, Class<?> targetClass,
            Map<String,FieldBuilder> fields)
    {
        List<Class<?>> parents = ClassUtil.findSuperClasses(mixInCls, targetClass, true);
        for (Class<?> mixin : parents) {
            for (Field mixinField : ClassUtil.getDeclaredFields(mixin)) {
                // there are some dummy things (static, synthetic); better ignore
                if (!_isIncludableField(mixinField)) {
                    continue;
                }
                String name = mixinField.getName();
                // anything to mask? (if not, quietly ignore)
                FieldBuilder b = fields.get(name);
                if (b != null) {
                    b.annotations = collectAnnotations(b.annotations, mixinField.getDeclaredAnnotations());
                }
            }
        }
    }

    private boolean _isIncludableField(Field f)
    {
        int PROBE_START_LINE_121 = 123;
		java.lang.reflect.Field p_f_3601_line_121 = f;
		boolean annotated_field_collector_1_expr39_line_121 = p_f_3601_line_121.isSynthetic();
		int PROBE_END_LINE_121 = 123;
		// Most likely synthetic fields, if any, are to be skipped similar to methods
        if (annotated_field_collector_1_expr39_line_121) {
            return false;
        }
        int PROBE_START_LINE_126 = 126;
		java.lang.reflect.Field p_f_3601_line_126 = f;
		int annotated_field_collector_1_expr40_line_126 = p_f_3601_line_126.getModifiers();
		int PROBE_END_LINE_126 = 126;
		// Static fields are never included. Transient are (since 2.6), for
        // purpose of propagating removal
        int mods = annotated_field_collector_1_expr40_line_126;
        int PROBE_START_LINE_127 = 129;
		int v_mods_3602_line_127 = mods;
		boolean annotated_field_collector_1_expr41_line_127 = Modifier.isStatic(v_mods_3602_line_127);
		int PROBE_END_LINE_127 = 129;
		if (annotated_field_collector_1_expr41_line_127) {
            return false;
        }
        return true;
    }

    private final static class FieldBuilder {
        public final TypeResolutionContext typeContext;
        public final Field field;

        public AnnotationCollector annotations;

        public FieldBuilder(TypeResolutionContext tc, Field f) {
            int PROBE_START_LINE_140 = 140;
			com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3603_line_140 = tc;
			int PROBE_END_LINE_140 = 140;
			typeContext = p_tc_3603_line_140;
            int PROBE_START_LINE_141 = 141;
			java.lang.reflect.Field p_f_3604_line_141 = f;
			int PROBE_END_LINE_141 = 141;
			field = p_f_3604_line_141;
            int PROBE_START_LINE_142 = 142;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_field_collector_1_expr45_line_142 = AnnotationCollector
					.emptyCollector();
			int PROBE_END_LINE_142 = 142;
			annotations = annotated_field_collector_1_expr45_line_142;
        }

        public AnnotatedField build() {
            int PROBE_START_LINE_146 = 146;
			com.fasterxml.jackson.databind.introspect.TypeResolutionContext f_type_context_3605_line_146 = typeContext;
			java.lang.reflect.Field f_field_3606_line_146 = field;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector f_annotations_3607_line_146 = annotations;
			com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_field_collector_1_expr47_line_146 = f_annotations_3607_line_146
					.asAnnotationMap();
			int PROBE_END_LINE_146 = 146;
			return new AnnotatedField(f_type_context_3605_line_146, f_field_3606_line_146, annotated_field_collector_1_expr47_line_146);
        }
    }
}
