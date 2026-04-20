package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.*;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class AnnotatedMethodCollector
    extends CollectorBase
{
    private final MixInResolver _mixInResolver;

    AnnotatedMethodCollector(AnnotationIntrospector intr,
            MixInResolver mixins)
    {
        super(intr);
        int PROBE_START_LINE_23 = 23;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_3645_line_23 = intr;
		boolean annotated_method_collector_1_expr5_line_23 = p_intr_3645_line_23 == null;
		boolean annotated_method_collector_1_expr4_line_23 = (annotated_method_collector_1_expr5_line_23);
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mixins_3646_line_23 = null;
		if (!annotated_method_collector_1_expr4_line_23) {
			p_mixins_3646_line_23 = mixins;
		}
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver annotated_method_collector_1_expr3_line_23 = annotated_method_collector_1_expr4_line_23
				? null
				: p_mixins_3646_line_23;
		int PROBE_END_LINE_23 = 23;
		_mixInResolver = annotated_method_collector_1_expr3_line_23;
    }

    public static AnnotatedMethodMap collectMethods(AnnotationIntrospector intr,
            TypeResolutionContext tc,
            MixInResolver mixins, TypeFactory types,
            JavaType type, List<JavaType> superTypes, Class<?> primaryMixIn)
    {
        int PROBE_START_LINE_32 = 33;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_3648_line_32 = intr;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_mixins_3650_line_32 = mixins;
		com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap annotated_method_collector_1_expr6_line_32 = new AnnotatedMethodCollector(
				p_intr_3648_line_32, p_mixins_3650_line_32).collect(types, tc, type, superTypes, primaryMixIn);
		int PROBE_END_LINE_32 = 33;
		// Constructor also always members of resolved class, parent == resolution context
        return annotated_method_collector_1_expr6_line_32;
    }

    AnnotatedMethodMap collect(TypeFactory typeFactory, TypeResolutionContext tc,
            JavaType mainType, List<JavaType> superTypes, Class<?> primaryMixIn)
    {
        Map<MemberKey,MethodBuilder> methods = new LinkedHashMap<>();
        
        int PROBE_START_LINE_42 = 42;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3656_line_42 = tc;
		com.fasterxml.jackson.databind.JavaType p_main_type_3657_line_42 = mainType;
		Class<?> annotated_method_collector_1_expr10_line_42 = p_main_type_3657_line_42.getRawClass();
		Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> v_methods_3660_line_42 = methods;
		Class<?> p_primary_mix_in_3659_line_42 = primaryMixIn;
		int PROBE_END_LINE_42 = 42;
		// first: methods from the class itself
        _addMemberMethods(p_tc_3656_line_42, annotated_method_collector_1_expr10_line_42, v_methods_3660_line_42, p_primary_mix_in_3659_line_42);

        int PROBE_START_LINE_45 = 50;
		List<com.fasterxml.jackson.databind.JavaType> p_super_types_3658_line_45 = superTypes;
		int PROBE_END_LINE_45 = 50;
		// and then augment these with annotations from super-types:
        for (JavaType type : p_super_types_3658_line_45) {
            Class<?> mixin = (_mixInResolver == null) ? null : _mixInResolver.findMixInClassFor(type.getRawClass());
            _addMemberMethods(
                    new TypeResolutionContext.Basic(typeFactory, type.getBindings()),
                    type.getRawClass(), methods, mixin);
        }
        // Special case: mix-ins for Object.class? (to apply to ALL classes)
        boolean checkJavaLangObject = false;
        int PROBE_START_LINE_53 = 59;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_3647_line_53 = _mixInResolver;
		boolean annotated_method_collector_1_expr11_line_53 = f__mix_in_resolver_3647_line_53 != null;
		int PROBE_END_LINE_53 = 59;
		if (annotated_method_collector_1_expr11_line_53) {
            int PROBE_START_LINE_54 = 54;
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__mix_in_resolver_3647_line_54 = _mixInResolver;
			Class<?> annotated_method_collector_1_expr12_line_54 = f__mix_in_resolver_3647_line_54
					.findMixInClassFor(Object.class);
			int PROBE_END_LINE_54 = 54;
			Class<?> mixin = annotated_method_collector_1_expr12_line_54;
            int PROBE_START_LINE_55 = 58;
			Class<?> v_mixin_3663_line_55 = mixin;
			boolean annotated_method_collector_1_expr14_line_55 = v_mixin_3663_line_55 != null;
			int PROBE_END_LINE_55 = 58;
			if (annotated_method_collector_1_expr14_line_55) {
                _addMethodMixIns(tc, mainType.getRawClass(), methods, mixin); //, mixins);
                checkJavaLangObject = true;
            }
        }

        int PROBE_START_LINE_65 = 83;
		boolean v_check_java_lang_object_3662_line_65 = checkJavaLangObject;
		boolean annotated_method_collector_1_expr16_line_65 = true;
		boolean annotated_method_collector_1_expr18_line_65 = true;
		if (v_check_java_lang_object_3662_line_65) {
			com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_65 = _intr;
			boolean annotated_method_collector_1_expr17_line_65 = f__intr_3516_line_65 != null;
			annotated_method_collector_1_expr16_line_65 = (annotated_method_collector_1_expr17_line_65);
			if (annotated_method_collector_1_expr16_line_65) {
				Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> v_methods_3660_line_65 = methods;
				boolean annotated_method_collector_1_expr19_line_65 = v_methods_3660_line_65.isEmpty();
				annotated_method_collector_1_expr18_line_65 = !annotated_method_collector_1_expr19_line_65;
			}
		}
		boolean annotated_method_collector_1_expr15_line_65 = v_check_java_lang_object_3662_line_65
				&& annotated_method_collector_1_expr16_line_65 && annotated_method_collector_1_expr18_line_65;
		int PROBE_END_LINE_65 = 83;
		// Any unmatched mix-ins? Most likely error cases (not matching any method);
        // but there is one possible real use case: exposing Object#hashCode
        // (alas, Object#getClass can NOT be exposed)
        // Since we only know of that ONE case, optimize for it
        if (annotated_method_collector_1_expr15_line_65) {
            // Could use lookup but probably as fast or faster to traverse
            for (Map.Entry<MemberKey,MethodBuilder> entry : methods.entrySet()) {
                MemberKey k = entry.getKey();
                if (!"hashCode".equals(k.getName()) || (0 != k.argCount())) {
                    continue;
                }
                try {
                    // And with that, we can generate it appropriately
                    Method m = Object.class.getDeclaredMethod(k.getName());
                    if (m != null) {
                        MethodBuilder b = entry.getValue();
                        b.annotations = collectDefaultAnnotations(b.annotations,
                                m.getDeclaredAnnotations());
                        b.method = m;
                   }
                } catch (Exception e) { }
            }
        }

        int PROBE_START_LINE_86 = 88;
		Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> v_methods_3660_line_86 = methods;
		boolean annotated_method_collector_1_expr20_line_86 = v_methods_3660_line_86.isEmpty();
		int PROBE_END_LINE_86 = 88;
		// And then let's create the lookup map
        if (annotated_method_collector_1_expr20_line_86) {
            return new AnnotatedMethodMap();
        }
        int PROBE_START_LINE_89 = 89;
		Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> v_methods_3660_line_89 = methods;
		int annotated_method_collector_1_expr22_line_89 = v_methods_3660_line_89.size();
		int PROBE_END_LINE_89 = 89;
		Map<MemberKey,AnnotatedMethod> actual = new LinkedHashMap<>(annotated_method_collector_1_expr22_line_89);
        int PROBE_START_LINE_90 = 95;
		Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> v_methods_3660_line_90 = methods;
		Set<java.util.Map.Entry<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder>> annotated_method_collector_1_expr23_line_90 = v_methods_3660_line_90
				.entrySet();
		int PROBE_END_LINE_90 = 95;
		for (Map.Entry<MemberKey,MethodBuilder> entry : annotated_method_collector_1_expr23_line_90) {
            int PROBE_START_LINE_91 = 91;
			java.util.Map.Entry<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> v_entry_3665_line_91 = entry;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder annotated_method_collector_1_expr25_line_91 = v_entry_3665_line_91
					.getValue();
			AnnotatedMethod annotated_method_collector_1_expr24_line_91 = annotated_method_collector_1_expr25_line_91
					.build();
			int PROBE_END_LINE_91 = 91;
			AnnotatedMethod am = annotated_method_collector_1_expr24_line_91;
            int PROBE_START_LINE_92 = 94;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_am_3666_line_92 = am;
			boolean annotated_method_collector_1_expr26_line_92 = v_am_3666_line_92 != null;
			int PROBE_END_LINE_92 = 94;
			if (annotated_method_collector_1_expr26_line_92) {
                int PROBE_START_LINE_93 = 93;
				Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_actual_3664_line_93 = actual;
				java.util.Map.Entry<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> v_entry_3665_line_93 = entry;
				com.fasterxml.jackson.databind.introspect.MemberKey annotated_method_collector_1_expr28_line_93 = v_entry_3665_line_93
						.getKey();
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_am_3666_line_93 = am;
				int PROBE_END_LINE_93 = 93;
				v_actual_3664_line_93.put(annotated_method_collector_1_expr28_line_93, v_am_3666_line_93);
            }
        }
        int PROBE_START_LINE_96 = 96;
		Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_actual_3664_line_96 = actual;
		int PROBE_END_LINE_96 = 96;
		return new AnnotatedMethodMap(v_actual_3664_line_96);
    }

    private void _addMemberMethods(TypeResolutionContext tc,
            Class<?> cls, Map<MemberKey,MethodBuilder> methods, Class<?> mixInCls)
    {
        int PROBE_START_LINE_103 = 105;
		Class<?> p_mix_in_cls_3670_line_103 = mixInCls;
		boolean annotated_method_collector_1_expr30_line_103 = p_mix_in_cls_3670_line_103 != null;
		int PROBE_END_LINE_103 = 105;
		// first, mixIns, since they have higher priority then class methods
        if (annotated_method_collector_1_expr30_line_103) {
            _addMethodMixIns(tc, cls, methods, mixInCls);
        }
        int PROBE_START_LINE_106 = 108;
		Class<?> p_cls_3668_line_106 = cls;
		boolean annotated_method_collector_1_expr31_line_106 = p_cls_3668_line_106 == null;
		int PROBE_END_LINE_106 = 108;
		if (annotated_method_collector_1_expr31_line_106) { // just so caller need not check when passing super-class
            return;
        }
        int PROBE_START_LINE_110 = 142;
		Class<?> p_cls_3668_line_110 = cls;
		java.lang.reflect.Method[] annotated_method_collector_1_expr32_line_110 = ClassUtil
				.getClassMethods(p_cls_3668_line_110);
		int PROBE_END_LINE_110 = 142;
		// then methods from the class itself
        for (Method m : annotated_method_collector_1_expr32_line_110) {
            int PROBE_START_LINE_111 = 113;
			java.lang.reflect.Method v_m_3671_line_111 = m;
			boolean annotated_method_collector_1_expr34_line_111 = _isIncludableMemberMethod(v_m_3671_line_111);
			boolean annotated_method_collector_1_expr33_line_111 = !annotated_method_collector_1_expr34_line_111;
			int PROBE_END_LINE_111 = 113;
			if (annotated_method_collector_1_expr33_line_111) {
                continue;
            }
            int PROBE_START_LINE_114 = 114;
			java.lang.reflect.Method v_m_3671_line_114 = m;
			int PROBE_END_LINE_114 = 114;
			final MemberKey key = new MemberKey(v_m_3671_line_114);
            int PROBE_START_LINE_115 = 115;
			Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> p_methods_3669_line_115 = methods;
			com.fasterxml.jackson.databind.introspect.MemberKey v_key_3672_line_115 = key;
			MethodBuilder annotated_method_collector_1_expr36_line_115 = p_methods_3669_line_115
					.get(v_key_3672_line_115);
			int PROBE_END_LINE_115 = 115;
			MethodBuilder b = annotated_method_collector_1_expr36_line_115;
            int PROBE_START_LINE_116 = 141;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder v_b_3673_line_116 = b;
			boolean annotated_method_collector_1_expr37_line_116 = v_b_3673_line_116 == null;
			int PROBE_END_LINE_116 = 141;
			if (annotated_method_collector_1_expr37_line_116) {
                int PROBE_START_LINE_117 = 118;
				com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_117 = _intr;
				boolean annotated_method_collector_1_expr42_line_117 = f__intr_3516_line_117 == null;
				boolean annotated_method_collector_1_expr39_line_117 = (annotated_method_collector_1_expr42_line_117);
				com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_method_collector_1_expr40_line_117 = null;
				if (annotated_method_collector_1_expr39_line_117) {
					annotated_method_collector_1_expr40_line_117 = AnnotationCollector.emptyCollector();
				}
				AnnotationCollector annotated_method_collector_1_expr38_line_117 = annotated_method_collector_1_expr39_line_117
						? annotated_method_collector_1_expr40_line_117
						: collectAnnotations(m.getDeclaredAnnotations());
				int PROBE_END_LINE_117 = 118;
				AnnotationCollector c = annotated_method_collector_1_expr38_line_117;
                int PROBE_START_LINE_119 = 119;
				Map<com.fasterxml.jackson.databind.introspect.MemberKey, com.fasterxml.jackson.databind.introspect.AnnotatedMethodCollector.MethodBuilder> p_methods_3669_line_119 = methods;
				com.fasterxml.jackson.databind.introspect.MemberKey v_key_3672_line_119 = key;
				com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3667_line_119 = tc;
				java.lang.reflect.Method v_m_3671_line_119 = m;
				com.fasterxml.jackson.databind.introspect.AnnotationCollector v_c_3674_line_119 = c;
				int PROBE_END_LINE_119 = 119;
				p_methods_3669_line_119.put(v_key_3672_line_119, new MethodBuilder(p_tc_3667_line_119, v_m_3671_line_119, v_c_3674_line_119));
            } else {
                if (_intr != null) {
                    b.annotations = collectDefaultAnnotations(b.annotations, m.getDeclaredAnnotations());
                }
                Method old = b.method;
                if (old == null) { // had "mix-over", replace
                    b.method = m;
//                } else if (old.getDeclaringClass().isInterface() && !m.getDeclaringClass().isInterface()) {
                } else if (Modifier.isAbstract(old.getModifiers())
                        && !Modifier.isAbstract(m.getModifiers())) {
                    // 06-Jan-2010, tatu: Except that if method we saw first is
                    // from an interface, and we now find a non-interface definition, we should
                    //   use this method, but with combination of annotations.
                    //   This helps (or rather, is essential) with JAXB annotations and
                    //   may also result in faster method calls (interface calls are slightly
                    //   costlier than regular method calls)
                    b.method = m;
                    // 23-Aug-2017, tatu: [databind#1705] Also need to change the type resolution context if so
                    //    (note: mix-over case above shouldn't need it)
                    b.typeContext = tc;
                }
            }
        }
    }

    protected void _addMethodMixIns(TypeResolutionContext tc, Class<?> targetClass,
            Map<MemberKey,MethodBuilder> methods, Class<?> mixInCls)
    {
        if (_intr == null) {
            return;
        }
        for (Class<?> mixin : ClassUtil.findRawSuperTypes(mixInCls, targetClass, true)) {
            for (Method m : ClassUtil.getDeclaredMethods(mixin)) {
                if (!_isIncludableMemberMethod(m)) {
                    continue;
                }
                final MemberKey key = new MemberKey(m);
                MethodBuilder b = methods.get(key);
                Annotation[] anns = m.getDeclaredAnnotations();
                if (b == null) {
                    // nothing yet; add but do NOT specify method -- this marks it
                    // as "mix-over", floating mix-in
                    methods.put(key, new MethodBuilder(tc, null, collectAnnotations(anns)));
                } else {
                    b.annotations = collectDefaultAnnotations(b.annotations, anns);
                }
            }
        }
    }

    private boolean _isIncludableMemberMethod(Method m)
    {
        int PROBE_START_LINE_172 = 177;
		java.lang.reflect.Method p_m_3679_line_172 = m;
		int annotated_method_collector_1_expr47_line_172 = p_m_3679_line_172.getModifiers();
		boolean annotated_method_collector_1_expr46_line_172 = Modifier
				.isStatic(annotated_method_collector_1_expr47_line_172);
		boolean annotated_method_collector_1_expr45_line_172 = annotated_method_collector_1_expr46_line_172
				|| m.isSynthetic() || m.isBridge();
		int PROBE_END_LINE_172 = 177;
		if (annotated_method_collector_1_expr45_line_172) {
            return false;
        }
        int PROBE_START_LINE_180 = 180;
		java.lang.reflect.Method p_m_3679_line_180 = m;
		Class<?>[] annotated_method_collector_1_expr49_line_180 = p_m_3679_line_180.getParameterTypes();
		int annotated_method_collector_1_expr48_line_180 = annotated_method_collector_1_expr49_line_180.length;
		int PROBE_END_LINE_180 = 180;
		// also, for now we have no use for methods with more than 2 arguments:
        // (2 argument methods for "any setter", fwtw)
        int pcount = annotated_method_collector_1_expr48_line_180;
        int PROBE_START_LINE_181 = 181;
		int v_pcount_3680_line_181 = pcount;
		boolean annotated_method_collector_1_expr51_line_181 = v_pcount_3680_line_181 <= 2;
		boolean annotated_method_collector_1_expr50_line_181 = (annotated_method_collector_1_expr51_line_181);
		int PROBE_END_LINE_181 = 181;
		return annotated_method_collector_1_expr50_line_181;
    }

    private final static class MethodBuilder {
        public TypeResolutionContext typeContext;

        // Method left empty for "floating" mix-in, filled in as need be
        public Method method;
        public AnnotationCollector annotations;

        public MethodBuilder(TypeResolutionContext tc, Method m,
                AnnotationCollector ann) {
            int PROBE_START_LINE_193 = 193;
					com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3681_line_193 = tc;
					int PROBE_END_LINE_193 = 193;
			typeContext = p_tc_3681_line_193;
            int PROBE_START_LINE_194 = 194;
			java.lang.reflect.Method p_m_3682_line_194 = m;
			int PROBE_END_LINE_194 = 194;
			method = p_m_3682_line_194;
            int PROBE_START_LINE_195 = 195;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector p_ann_3683_line_195 = ann;
			int PROBE_END_LINE_195 = 195;
			annotations = p_ann_3683_line_195;
        }

        public AnnotatedMethod build() {
            int PROBE_START_LINE_199 = 201;
			java.lang.reflect.Method f_method_3685_line_199 = method;
			boolean annotated_method_collector_1_expr55_line_199 = f_method_3685_line_199 == null;
			int PROBE_END_LINE_199 = 201;
			if (annotated_method_collector_1_expr55_line_199) {
                return null;
            }
            int PROBE_START_LINE_204 = 204;
			com.fasterxml.jackson.databind.introspect.TypeResolutionContext f_type_context_3684_line_204 = typeContext;
			java.lang.reflect.Method f_method_3685_line_204 = method;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector f_annotations_3686_line_204 = annotations;
			com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_method_collector_1_expr57_line_204 = f_annotations_3686_line_204
					.asAnnotationMap();
			int PROBE_END_LINE_204 = 204;
			// 12-Apr-2017, tatu: Note that parameter annotations are NOT collected -- we could
            //   collect them if that'd make sense but...
            return new AnnotatedMethod(f_type_context_3684_line_204, f_method_3685_line_204, annotated_method_collector_1_expr57_line_204, null);
        }
    }
}
