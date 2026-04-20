package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.ClassUtil.Ctor;

/**
 * Helper class used to contain details of how Creators (annotated constructors
 * and static methods) are discovered to be accessed by and via {@link AnnotatedClass}.
 *
 * @since 2.9
 */
final class AnnotatedCreatorCollector
    extends CollectorBase
{
    // // // Configuration

    private final TypeResolutionContext _typeContext;

    // // // Collected state

    private AnnotatedConstructor _defaultConstructor;

    AnnotatedCreatorCollector(AnnotationIntrospector intr,
            TypeResolutionContext tc)
    {
        super(intr);
        int PROBE_START_LINE_38 = 38;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3506_line_38 = tc;
		int PROBE_END_LINE_38 = 38;
		_typeContext = p_tc_3506_line_38;
    }

    public static Creators collectCreators(AnnotationIntrospector intr,
            TypeResolutionContext tc, 
            JavaType type, Class<?> primaryMixIn)
    {
        int PROBE_START_LINE_46 = 47;
		com.fasterxml.jackson.databind.AnnotationIntrospector p_intr_3508_line_46 = intr;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext p_tc_3509_line_46 = tc;
		com.fasterxml.jackson.databind.introspect.AnnotatedClass.Creators annotated_creator_collector_1_expr3_line_46 = new AnnotatedCreatorCollector(
				p_intr_3508_line_46, p_tc_3509_line_46).collect(type, primaryMixIn);
		int PROBE_END_LINE_46 = 47;
		// Constructor also always members of resolved class, parent == resolution context
        return annotated_creator_collector_1_expr3_line_46;
    }

    Creators collect(JavaType type, Class<?> primaryMixIn)
    {
    // 30-Apr-2016, tatu: [databind#1215]: Actually, while true, this does
    //   NOT apply to context since sub-class may have type bindings
//        TypeResolutionContext typeContext = new TypeResolutionContext.Basic(_typeFactory, _type.getBindings());

        int PROBE_START_LINE_56 = 56;
		com.fasterxml.jackson.databind.JavaType p_type_3512_line_56 = type;
		Class<?> p_primary_mix_in_3513_line_56 = primaryMixIn;
		List<AnnotatedConstructor> annotated_creator_collector_1_expr5_line_56 = _findPotentialConstructors(
				p_type_3512_line_56, p_primary_mix_in_3513_line_56);
		int PROBE_END_LINE_56 = 56;
		List<AnnotatedConstructor> constructors = annotated_creator_collector_1_expr5_line_56;
        int PROBE_START_LINE_57 = 57;
		com.fasterxml.jackson.databind.JavaType p_type_3512_line_57 = type;
		Class<?> p_primary_mix_in_3513_line_57 = primaryMixIn;
		List<AnnotatedMethod> annotated_creator_collector_1_expr6_line_57 = _findPotentialFactories(p_type_3512_line_57,
				p_primary_mix_in_3513_line_57);
		int PROBE_END_LINE_57 = 57;
		List<AnnotatedMethod> factories = annotated_creator_collector_1_expr6_line_57;

        int PROBE_START_LINE_63 = 80;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_63 = _intr;
		boolean annotated_creator_collector_1_expr7_line_63 = f__intr_3516_line_63 != null;
		int PROBE_END_LINE_63 = 80;
		/* And then... let's remove all constructors that are deemed
         * ignorable after all annotations have been properly collapsed.
         */
        // AnnotationIntrospector is null if annotations not enabled; if so, can skip:
        if (annotated_creator_collector_1_expr7_line_63) {
            int PROBE_START_LINE_64 = 68;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_3517_line_64 = _defaultConstructor;
			boolean annotated_creator_collector_1_expr8_line_64 = f__default_constructor_3517_line_64 != null;
			int PROBE_END_LINE_64 = 68;
			if (annotated_creator_collector_1_expr8_line_64) {
                int PROBE_START_LINE_65 = 67;
				com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_65 = _intr;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_3517_line_65 = _defaultConstructor;
				boolean annotated_creator_collector_1_expr9_line_65 = f__intr_3516_line_65
						.hasIgnoreMarker(f__default_constructor_3517_line_65);
				int PROBE_END_LINE_65 = 67;
				if (annotated_creator_collector_1_expr9_line_65) {
                    _defaultConstructor = null;
                }
            }
            int PROBE_START_LINE_69 = 69;
			boolean FOR_STMT_TOGGLE_LINE_70 = false;
			int PROBE_END_LINE_69 = 69;
			// count down to allow safe removal
            for (int i = 0; true; ) {
                int PROBE_START_LINE_71 = 73;
				if (!FOR_STMT_TOGGLE_LINE_70) {
					FOR_STMT_TOGGLE_LINE_70 = true;
					List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_3514_line_70 = constructors;
					int annotated_creator_collector_1_expr11_line_70 = v_constructors_3514_line_70.size();
					i = annotated_creator_collector_1_expr11_line_70;
				} else {
					if (FOR_STMT_TOGGLE_LINE_70) {
					} else {
						FOR_STMT_TOGGLE_LINE_70 = true;
					}
				}
				boolean annotated_creator_collector_1_expr12_line_70 = --i >= 0;
				if (!(annotated_creator_collector_1_expr12_line_70)) {
					break;
				}
				com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_71 = _intr;
				List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_3514_line_71 = constructors;
				int v_i_3518_line_71 = i;
				com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_creator_collector_1_expr15_line_71 = v_constructors_3514_line_71
						.get(v_i_3518_line_71);
				boolean annotated_creator_collector_1_expr14_line_71 = f__intr_3516_line_71
						.hasIgnoreMarker(annotated_creator_collector_1_expr15_line_71);
				int PROBE_END_LINE_71 = 73;
				if (annotated_creator_collector_1_expr14_line_71) {
                    constructors.remove(i);
                }
            }
            int PROBE_START_LINE_74 = 74;
			boolean FOR_STMT_TOGGLE_LINE_75 = false;
			int PROBE_END_LINE_74 = 74;
			for (int i = 0; true; ) {
                int PROBE_START_LINE_76 = 78;
				if (!FOR_STMT_TOGGLE_LINE_75) {
					FOR_STMT_TOGGLE_LINE_75 = true;
					List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_factories_3515_line_75 = factories;
					int annotated_creator_collector_1_expr17_line_75 = v_factories_3515_line_75.size();
					i = annotated_creator_collector_1_expr17_line_75;
				} else {
					if (FOR_STMT_TOGGLE_LINE_75) {
					} else {
						FOR_STMT_TOGGLE_LINE_75 = true;
					}
				}
				boolean annotated_creator_collector_1_expr18_line_75 = --i >= 0;
				if (!(annotated_creator_collector_1_expr18_line_75)) {
					break;
				}
				com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_76 = _intr;
				List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_factories_3515_line_76 = factories;
				int v_i_3519_line_76 = i;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod annotated_creator_collector_1_expr21_line_76 = v_factories_3515_line_76
						.get(v_i_3519_line_76);
				boolean annotated_creator_collector_1_expr20_line_76 = f__intr_3516_line_76
						.hasIgnoreMarker(annotated_creator_collector_1_expr21_line_76);
				int PROBE_END_LINE_76 = 78;
				if (annotated_creator_collector_1_expr20_line_76) {
                    factories.remove(i);
                }
            }
        }
        int PROBE_START_LINE_81 = 81;
		com.fasterxml.jackson.databind.introspect.AnnotatedConstructor f__default_constructor_3517_line_81 = _defaultConstructor;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_constructors_3514_line_81 = constructors;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_factories_3515_line_81 = factories;
		int PROBE_END_LINE_81 = 81;
		return new AnnotatedClass.Creators(f__default_constructor_3517_line_81, v_constructors_3514_line_81, v_factories_3515_line_81);
    }

    /**
     * Helper method for locating constructors (and matching mix-in overrides)
     * we might want to use; this is needed in order to mix information between
     * the two and construct resulting {@link AnnotatedConstructor}s
     */
    private List<AnnotatedConstructor> _findPotentialConstructors(JavaType type,
            Class<?> primaryMixIn)
    {
        ClassUtil.Ctor defaultCtor = null;
        List<ClassUtil.Ctor> ctors = null;

        int PROBE_START_LINE_100 = 115;
		com.fasterxml.jackson.databind.JavaType p_type_3520_line_100 = type;
		boolean annotated_creator_collector_1_expr24_line_100 = p_type_3520_line_100.isEnumType();
		boolean annotated_creator_collector_1_expr23_line_100 = !annotated_creator_collector_1_expr24_line_100;
		int PROBE_END_LINE_100 = 115;
		// 18-Jun-2016, tatu: Enum constructors will never be useful (unlike
        //    possibly static factory methods); but they can be royal PITA
        //    due to some oddities by JVM; see:
        //    [https://github.com/FasterXML/jackson-module-parameter-names/issues/35]
        //    for more. So, let's just skip them.
        if (annotated_creator_collector_1_expr23_line_100) {
            int PROBE_START_LINE_101 = 101;
			com.fasterxml.jackson.databind.JavaType p_type_3520_line_101 = type;
			Class<?> annotated_creator_collector_1_expr26_line_101 = p_type_3520_line_101.getRawClass();
			ClassUtil.Ctor[] annotated_creator_collector_1_expr25_line_101 = ClassUtil
					.getConstructors(annotated_creator_collector_1_expr26_line_101);
			int PROBE_END_LINE_101 = 101;
			ClassUtil.Ctor[] declaredCtors = annotated_creator_collector_1_expr25_line_101;
            int PROBE_START_LINE_102 = 114;
			com.fasterxml.jackson.databind.util.ClassUtil.Ctor[] v_declared_ctors_3524_line_102 = declaredCtors;
			int PROBE_END_LINE_102 = 114;
			for (ClassUtil.Ctor ctor : v_declared_ctors_3524_line_102) {
                int PROBE_START_LINE_103 = 105;
				com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_ctor_3525_line_103 = ctor;
				Constructor<?> annotated_creator_collector_1_expr29_line_103 = v_ctor_3525_line_103.getConstructor();
				boolean annotated_creator_collector_1_expr28_line_103 = isIncludableConstructor(
						annotated_creator_collector_1_expr29_line_103);
				boolean annotated_creator_collector_1_expr27_line_103 = !annotated_creator_collector_1_expr28_line_103;
				int PROBE_END_LINE_103 = 105;
				if (annotated_creator_collector_1_expr27_line_103) {
                    continue;
                }
                int PROBE_START_LINE_106 = 113;
				com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_ctor_3525_line_106 = ctor;
				int annotated_creator_collector_1_expr31_line_106 = v_ctor_3525_line_106.getParamCount();
				boolean annotated_creator_collector_1_expr30_line_106 = annotated_creator_collector_1_expr31_line_106 == 0;
				int PROBE_END_LINE_106 = 113;
				if (annotated_creator_collector_1_expr30_line_106) {
                    int PROBE_START_LINE_107 = 107;
					com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_ctor_3525_line_107 = ctor;
					int PROBE_END_LINE_107 = 107;
					defaultCtor = v_ctor_3525_line_107;
                } else {
                    int PROBE_START_LINE_109 = 111;
					List<com.fasterxml.jackson.databind.util.ClassUtil.Ctor> v_ctors_3523_line_109 = ctors;
					boolean annotated_creator_collector_1_expr33_line_109 = v_ctors_3523_line_109 == null;
					int PROBE_END_LINE_109 = 111;
					if (annotated_creator_collector_1_expr33_line_109) {
                        ctors = new ArrayList<>();
                    }
                    int PROBE_START_LINE_112 = 112;
					List<com.fasterxml.jackson.databind.util.ClassUtil.Ctor> v_ctors_3523_line_112 = ctors;
					com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_ctor_3525_line_112 = ctor;
					int PROBE_END_LINE_112 = 112;
					v_ctors_3523_line_112.add(v_ctor_3525_line_112);
                }
            }
        }
        List<AnnotatedConstructor> result = null;
        int ctorCount = 0;
        int PROBE_START_LINE_118 = 131;
		List<com.fasterxml.jackson.databind.util.ClassUtil.Ctor> v_ctors_3523_line_118 = ctors;
		boolean annotated_creator_collector_1_expr37_line_118 = v_ctors_3523_line_118 == null;
		int PROBE_END_LINE_118 = 131;
		if (annotated_creator_collector_1_expr37_line_118) {
            int PROBE_START_LINE_119 = 119;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> annotated_creator_collector_1_expr39_line_119 = Collections
					.emptyList();
			int PROBE_END_LINE_119 = 119;
			result = annotated_creator_collector_1_expr39_line_119;
            int PROBE_START_LINE_121 = 123;
			com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_default_ctor_3522_line_121 = defaultCtor;
			boolean annotated_creator_collector_1_expr40_line_121 = v_default_ctor_3522_line_121 == null;
			int PROBE_END_LINE_121 = 123;
			// Nothing found? Short-circuit
            if (annotated_creator_collector_1_expr40_line_121) { 
                return result;
            }
            ctorCount = 0;
        } else {
            int PROBE_START_LINE_126 = 126;
			List<com.fasterxml.jackson.databind.util.ClassUtil.Ctor> v_ctors_3523_line_126 = ctors;
			int annotated_creator_collector_1_expr43_line_126 = v_ctors_3523_line_126.size();
			int PROBE_END_LINE_126 = 126;
			ctorCount = annotated_creator_collector_1_expr43_line_126;
            int PROBE_START_LINE_127 = 127;
			int v_ctor_count_3527_line_127 = ctorCount;
			int PROBE_END_LINE_127 = 127;
			result = new ArrayList<>(v_ctor_count_3527_line_127);
            for (int i = 0; true; ++i) {
                int PROBE_START_LINE_129 = 129;
				int v_i_3528_line_128 = i;
				int v_ctor_count_3527_line_128 = ctorCount;
				boolean annotated_creator_collector_1_expr47_line_128 = v_i_3528_line_128 < v_ctor_count_3527_line_128;
				if (!(annotated_creator_collector_1_expr47_line_128)) {
					break;
				}
				List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_result_3526_line_129 = result;
				int PROBE_END_LINE_129 = 129;
				v_result_3526_line_129.add(null);
            }
        }

        int PROBE_START_LINE_134 = 162;
		Class<?> p_primary_mix_in_3521_line_134 = primaryMixIn;
		boolean annotated_creator_collector_1_expr50_line_134 = p_primary_mix_in_3521_line_134 != null;
		int PROBE_END_LINE_134 = 162;
		// so far so good; but do we also need to find mix-ins overrides?
        if (annotated_creator_collector_1_expr50_line_134) {
            MemberKey[] ctorKeys = null;
            for (ClassUtil.Ctor mixinCtor : ClassUtil.getConstructors(primaryMixIn)) {
                if (mixinCtor.getParamCount() == 0) {
                    if (defaultCtor != null) {
                        _defaultConstructor = constructDefaultConstructor(defaultCtor, mixinCtor);
                        defaultCtor = null;
                    }
                    continue;
                }
                if (ctors != null) {
                    if (ctorKeys == null) {
                        ctorKeys = new MemberKey[ctorCount];
                        for (int i = 0; i < ctorCount; ++i) {
                            ctorKeys[i] = new MemberKey(ctors.get(i).getConstructor());
                        }
                    }
                    MemberKey key = new MemberKey(mixinCtor.getConstructor());
    
                    for (int i = 0; i < ctorCount; ++i) {
                        if (key.equals(ctorKeys[i])) {
                            result.set(i,
                                    constructNonDefaultConstructor(ctors.get(i), mixinCtor));
                            break;
                        }
                    }
                }
            }
        }
        int PROBE_START_LINE_164 = 166;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_default_ctor_3522_line_164 = defaultCtor;
		boolean annotated_creator_collector_1_expr51_line_164 = v_default_ctor_3522_line_164 != null;
		int PROBE_END_LINE_164 = 166;
		// Ok: anything within mix-ins has been resolved; anything remaining we must resolve
        if (annotated_creator_collector_1_expr51_line_164) {
            int PROBE_START_LINE_165 = 165;
			com.fasterxml.jackson.databind.util.ClassUtil.Ctor v_default_ctor_3522_line_165 = defaultCtor;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor annotated_creator_collector_1_expr53_line_165 = constructDefaultConstructor(
					v_default_ctor_3522_line_165, null);
			int PROBE_END_LINE_165 = 165;
			_defaultConstructor = annotated_creator_collector_1_expr53_line_165;
        }
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_168 = 168;
			int v_i_3529_line_167 = i;
			int v_ctor_count_3527_line_167 = ctorCount;
			boolean annotated_creator_collector_1_expr55_line_167 = v_i_3529_line_167 < v_ctor_count_3527_line_167;
			if (!(annotated_creator_collector_1_expr55_line_167)) {
				break;
			}
			List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_result_3526_line_168 = result;
			int v_i_3529_line_168 = i;
			AnnotatedConstructor annotated_creator_collector_1_expr57_line_168 = v_result_3526_line_168
					.get(v_i_3529_line_168);
			int PROBE_END_LINE_168 = 168;
			AnnotatedConstructor ctor = annotated_creator_collector_1_expr57_line_168;
            int PROBE_START_LINE_169 = 172;
			com.fasterxml.jackson.databind.introspect.AnnotatedConstructor v_ctor_3530_line_169 = ctor;
			boolean annotated_creator_collector_1_expr58_line_169 = v_ctor_3530_line_169 == null;
			int PROBE_END_LINE_169 = 172;
			if (annotated_creator_collector_1_expr58_line_169) {
                int PROBE_START_LINE_170 = 171;
				List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_result_3526_line_170 = result;
				int v_i_3529_line_170 = i;
				int PROBE_END_LINE_170 = 171;
				v_result_3526_line_170.set(v_i_3529_line_170,
                        constructNonDefaultConstructor(ctors.get(i), null));
            }
        }
        int PROBE_START_LINE_174 = 174;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> v_result_3526_line_174 = result;
		int PROBE_END_LINE_174 = 174;
		return v_result_3526_line_174;
    }

    private List<AnnotatedMethod> _findPotentialFactories(JavaType type, Class<?> primaryMixIn)
    {
        List<Method> candidates = null;

        int PROBE_START_LINE_182 = 192;
		com.fasterxml.jackson.databind.JavaType p_type_3531_line_182 = type;
		Class<?> annotated_creator_collector_1_expr62_line_182 = p_type_3531_line_182.getRawClass();
		java.lang.reflect.Method[] annotated_creator_collector_1_expr61_line_182 = ClassUtil
				.getClassMethods(annotated_creator_collector_1_expr62_line_182);
		int PROBE_END_LINE_182 = 192;
		// First find all potentially relevant static methods
        for (Method m : annotated_creator_collector_1_expr61_line_182) {
            int PROBE_START_LINE_183 = 185;
			java.lang.reflect.Method v_m_3534_line_183 = m;
			int annotated_creator_collector_1_expr65_line_183 = v_m_3534_line_183.getModifiers();
			boolean annotated_creator_collector_1_expr64_line_183 = Modifier
					.isStatic(annotated_creator_collector_1_expr65_line_183);
			boolean annotated_creator_collector_1_expr63_line_183 = !annotated_creator_collector_1_expr64_line_183;
			int PROBE_END_LINE_183 = 185;
			if (annotated_creator_collector_1_expr63_line_183) {
                continue;
            }
            int PROBE_START_LINE_188 = 190;
			List<java.lang.reflect.Method> v_candidates_3533_line_188 = candidates;
			boolean annotated_creator_collector_1_expr66_line_188 = v_candidates_3533_line_188 == null;
			int PROBE_END_LINE_188 = 190;
			// all factory methods are fine:
            //int argCount = m.getParameterTypes().length;
            if (annotated_creator_collector_1_expr66_line_188) {
                candidates = new ArrayList<>();
            }
            int PROBE_START_LINE_191 = 191;
			List<java.lang.reflect.Method> v_candidates_3533_line_191 = candidates;
			java.lang.reflect.Method v_m_3534_line_191 = m;
			int PROBE_END_LINE_191 = 191;
			v_candidates_3533_line_191.add(v_m_3534_line_191);
        }
        int PROBE_START_LINE_194 = 196;
		List<java.lang.reflect.Method> v_candidates_3533_line_194 = candidates;
		boolean annotated_creator_collector_1_expr70_line_194 = v_candidates_3533_line_194 == null;
		int PROBE_END_LINE_194 = 196;
		// and then locate mix-ins, if any
        if (annotated_creator_collector_1_expr70_line_194) {
            int PROBE_START_LINE_195 = 195;
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> annotated_creator_collector_1_expr71_line_195 = Collections
					.emptyList();
			int PROBE_END_LINE_195 = 195;
			return annotated_creator_collector_1_expr71_line_195;
        }
        int PROBE_START_LINE_197 = 197;
		List<java.lang.reflect.Method> v_candidates_3533_line_197 = candidates;
		int annotated_creator_collector_1_expr72_line_197 = v_candidates_3533_line_197.size();
		int PROBE_END_LINE_197 = 197;
		int factoryCount = annotated_creator_collector_1_expr72_line_197;
        int PROBE_START_LINE_198 = 198;
		int v_factory_count_3535_line_198 = factoryCount;
		int PROBE_END_LINE_198 = 198;
		List<AnnotatedMethod> result = new ArrayList<>(v_factory_count_3535_line_198);
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_200 = 200;
			int v_i_3537_line_199 = i;
			int v_factory_count_3535_line_199 = factoryCount;
			boolean annotated_creator_collector_1_expr75_line_199 = v_i_3537_line_199 < v_factory_count_3535_line_199;
			if (!(annotated_creator_collector_1_expr75_line_199)) {
				break;
			}
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_result_3536_line_200 = result;
			int PROBE_END_LINE_200 = 200;
			v_result_3536_line_200.add(null);
        }
        int PROBE_START_LINE_203 = 224;
		Class<?> p_primary_mix_in_3532_line_203 = primaryMixIn;
		boolean annotated_creator_collector_1_expr78_line_203 = p_primary_mix_in_3532_line_203 != null;
		int PROBE_END_LINE_203 = 224;
		// so far so good; but do we also need to find mix-ins overrides?
        if (annotated_creator_collector_1_expr78_line_203) {
            MemberKey[] methodKeys = null;
            for (Method mixinFactory : ClassUtil.getDeclaredMethods(primaryMixIn)) {
                if (!Modifier.isStatic(mixinFactory.getModifiers())) {
                    continue;
                }
                if (methodKeys == null) {
                    methodKeys = new MemberKey[factoryCount];
                    for (int i = 0; i < factoryCount; ++i) {
                        methodKeys[i] = new MemberKey(candidates.get(i));
                    }
                }
                MemberKey key = new MemberKey(mixinFactory);
                for (int i = 0; i < factoryCount; ++i) {
                    if (key.equals(methodKeys[i])) {
                        result.set(i,
                                constructFactoryCreator(candidates.get(i), mixinFactory));
                        break;
                    }
                }
            }
        }
        // Ok: anything within mix-ins has been resolved; anything remaining we must resolve
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_227 = 227;
			int v_i_3538_line_226 = i;
			int v_factory_count_3535_line_226 = factoryCount;
			boolean annotated_creator_collector_1_expr80_line_226 = v_i_3538_line_226 < v_factory_count_3535_line_226;
			if (!(annotated_creator_collector_1_expr80_line_226)) {
				break;
			}
			List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_result_3536_line_227 = result;
			int v_i_3538_line_227 = i;
			AnnotatedMethod annotated_creator_collector_1_expr82_line_227 = v_result_3536_line_227
					.get(v_i_3538_line_227);
			int PROBE_END_LINE_227 = 227;
			AnnotatedMethod factory = annotated_creator_collector_1_expr82_line_227;
            int PROBE_START_LINE_228 = 231;
			com.fasterxml.jackson.databind.introspect.AnnotatedMethod v_factory_3539_line_228 = factory;
			boolean annotated_creator_collector_1_expr83_line_228 = v_factory_3539_line_228 == null;
			int PROBE_END_LINE_228 = 231;
			if (annotated_creator_collector_1_expr83_line_228) {
                int PROBE_START_LINE_229 = 230;
				List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_result_3536_line_229 = result;
				int v_i_3538_line_229 = i;
				int PROBE_END_LINE_229 = 230;
				v_result_3536_line_229.set(v_i_3538_line_229,
                        constructFactoryCreator(candidates.get(i), null));
            }
        }
        int PROBE_START_LINE_233 = 233;
		List<com.fasterxml.jackson.databind.introspect.AnnotatedMethod> v_result_3536_line_233 = result;
		int PROBE_END_LINE_233 = 233;
		return v_result_3536_line_233;
    }

    protected AnnotatedConstructor constructDefaultConstructor(ClassUtil.Ctor ctor,
            ClassUtil.Ctor mixin)
    {
        int PROBE_START_LINE_239 = 242;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_239 = _intr;
		boolean annotated_creator_collector_1_expr86_line_239 = f__intr_3516_line_239 == null;
		int PROBE_END_LINE_239 = 242;
		if (annotated_creator_collector_1_expr86_line_239) { // when annotation processing is disabled
            return new AnnotatedConstructor(_typeContext, ctor.getConstructor(),
                    _emptyAnnotationMap(), NO_ANNOTATION_MAPS);
        }
        int PROBE_START_LINE_243 = 246;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext f__type_context_3507_line_243 = _typeContext;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_ctor_3540_line_243 = ctor;
		Constructor<?> annotated_creator_collector_1_expr88_line_243 = p_ctor_3540_line_243.getConstructor();
		int PROBE_END_LINE_243 = 246;
		return new AnnotatedConstructor(f__type_context_3507_line_243, annotated_creator_collector_1_expr88_line_243,
                collectAnnotations(ctor, mixin),
                collectAnnotations(ctor.getConstructor().getParameterAnnotations(),
                        (mixin == null) ? null : mixin.getConstructor().getParameterAnnotations()));
    }

    protected AnnotatedConstructor constructNonDefaultConstructor(ClassUtil.Ctor ctor,
            ClassUtil.Ctor mixin)
    {
        int PROBE_START_LINE_252 = 252;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_ctor_3542_line_252 = ctor;
		int annotated_creator_collector_1_expr91_line_252 = p_ctor_3542_line_252.getParamCount();
		int PROBE_END_LINE_252 = 252;
		final int paramCount = annotated_creator_collector_1_expr91_line_252;
        int PROBE_START_LINE_253 = 256;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_253 = _intr;
		boolean annotated_creator_collector_1_expr92_line_253 = f__intr_3516_line_253 == null;
		int PROBE_END_LINE_253 = 256;
		if (annotated_creator_collector_1_expr92_line_253) { // when annotation processing is disabled
            return new AnnotatedConstructor(_typeContext, ctor.getConstructor(),
                    _emptyAnnotationMap(), _emptyAnnotationMaps(paramCount));
        }

        int PROBE_START_LINE_262 = 266;
		int v_param_count_3544_line_262 = paramCount;
		boolean annotated_creator_collector_1_expr93_line_262 = v_param_count_3544_line_262 == 0;
		int PROBE_END_LINE_262 = 266;
		/* Looks like JDK has discrepancy, whereas annotations for implicit 'this'
         * (for non-static inner classes) are NOT included, but type is?
         * Strange, sounds like a bug. Alas, we can't really fix that...
         */
        if (annotated_creator_collector_1_expr93_line_262) { // no-arg default constructors, can simplify slightly
            return new AnnotatedConstructor(_typeContext, ctor.getConstructor(),
                    collectAnnotations(ctor, mixin),
                    NO_ANNOTATION_MAPS);
        }
        // Also: enum value constructors
        AnnotationMap[] resolvedAnnotations;
        int PROBE_START_LINE_269 = 269;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_ctor_3542_line_269 = ctor;
		Annotation[][] annotated_creator_collector_1_expr94_line_269 = p_ctor_3542_line_269.getParameterAnnotations();
		int PROBE_END_LINE_269 = 269;
		Annotation[][] paramAnns = annotated_creator_collector_1_expr94_line_269;
        int PROBE_START_LINE_270 = 301;
		int v_param_count_3544_line_270 = paramCount;
		java.lang.annotation.Annotation[][] v_param_anns_3545_line_270 = paramAnns;
		int q_length_101_line_270 = v_param_anns_3545_line_270.length;
		boolean annotated_creator_collector_1_expr95_line_270 = v_param_count_3544_line_270 != q_length_101_line_270;
		int PROBE_END_LINE_270 = 301;
		if (annotated_creator_collector_1_expr95_line_270) {
            // Limits of the work-around (to avoid hiding real errors):
            // first, only applicable for member classes and then either:

            resolvedAnnotations = null;
            Class<?> dc = ctor.getDeclaringClass();
            // (a) is enum, which have two extra hidden params (name, index)
            if (dc.isEnum() && (paramCount == paramAnns.length + 2)) {
                Annotation[][] old = paramAnns;
                paramAnns = new Annotation[old.length+2][];
                System.arraycopy(old, 0, paramAnns, 2, old.length);
                resolvedAnnotations = collectAnnotations(paramAnns, null);
            } else if (dc.isMemberClass()) {
                // (b) non-static inner classes, get implicit 'this' for parameter, not  annotation
                if (paramCount == (paramAnns.length + 1)) {
                    // hack attack: prepend a null entry to make things match
                    Annotation[][] old = paramAnns;
                    paramAnns = new Annotation[old.length+1][];
                    System.arraycopy(old, 0, paramAnns, 1, old.length);
                    paramAnns[0] = NO_ANNOTATIONS;
                    resolvedAnnotations = collectAnnotations(paramAnns, null);
                }
            }
            if (resolvedAnnotations == null) {
                throw new IllegalStateException(String.format(
"Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations",
ctor.getDeclaringClass().getName(), paramCount, paramAnns.length));
            }
        } else {
            int PROBE_START_LINE_299 = 300;
			java.lang.annotation.Annotation[][] v_param_anns_3545_line_299 = paramAnns;
			com.fasterxml.jackson.databind.introspect.AnnotationMap[] annotated_creator_collector_1_expr97_line_299 = collectAnnotations(
					v_param_anns_3545_line_299, (mixin == null) ? null : mixin.getParameterAnnotations());
			int PROBE_END_LINE_299 = 300;
			resolvedAnnotations = annotated_creator_collector_1_expr97_line_299;
        }
        int PROBE_START_LINE_302 = 303;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext f__type_context_3507_line_302 = _typeContext;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_ctor_3542_line_302 = ctor;
		Constructor<?> annotated_creator_collector_1_expr100_line_302 = p_ctor_3542_line_302.getConstructor();
		int PROBE_END_LINE_302 = 303;
		return new AnnotatedConstructor(f__type_context_3507_line_302, annotated_creator_collector_1_expr100_line_302,
                collectAnnotations(ctor, mixin), resolvedAnnotations);
    }

    protected AnnotatedMethod constructFactoryCreator(Method m, Method mixin)
    {
        int PROBE_START_LINE_308 = 308;
		java.lang.reflect.Method p_m_3547_line_308 = m;
		Class<?>[] annotated_creator_collector_1_expr103_line_308 = p_m_3547_line_308.getParameterTypes();
		int annotated_creator_collector_1_expr102_line_308 = annotated_creator_collector_1_expr103_line_308.length;
		int PROBE_END_LINE_308 = 308;
		final int paramCount = annotated_creator_collector_1_expr102_line_308;
        int PROBE_START_LINE_309 = 312;
		com.fasterxml.jackson.databind.AnnotationIntrospector f__intr_3516_line_309 = _intr;
		boolean annotated_creator_collector_1_expr104_line_309 = f__intr_3516_line_309 == null;
		int PROBE_END_LINE_309 = 312;
		if (annotated_creator_collector_1_expr104_line_309) { // when annotation processing is disabled
            return new AnnotatedMethod(_typeContext, m, _emptyAnnotationMap(),
                    _emptyAnnotationMaps(paramCount));
        }
        int PROBE_START_LINE_313 = 316;
		int v_param_count_3549_line_313 = paramCount;
		boolean annotated_creator_collector_1_expr105_line_313 = v_param_count_3549_line_313 == 0;
		int PROBE_END_LINE_313 = 316;
		if (annotated_creator_collector_1_expr105_line_313) { // common enough we can slightly optimize
            int PROBE_START_LINE_314 = 315;
			com.fasterxml.jackson.databind.introspect.TypeResolutionContext f__type_context_3507_line_314 = _typeContext;
			java.lang.reflect.Method p_m_3547_line_314 = m;
			java.lang.reflect.Method p_m_3547_line_314_v1 = m;
			java.lang.reflect.Method p_mixin_3548_line_314 = mixin;
			com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_creator_collector_1_expr107_line_314 = collectAnnotations(
					p_m_3547_line_314_v1, p_mixin_3548_line_314);
			int PROBE_END_LINE_314 = 315;
			return new AnnotatedMethod(f__type_context_3507_line_314, p_m_3547_line_314, annotated_creator_collector_1_expr107_line_314,
                    NO_ANNOTATION_MAPS);
        }
        int PROBE_START_LINE_317 = 319;
		com.fasterxml.jackson.databind.introspect.TypeResolutionContext f__type_context_3507_line_317 = _typeContext;
		java.lang.reflect.Method p_m_3547_line_317 = m;
		java.lang.reflect.Method p_m_3547_line_317_v1 = m;
		java.lang.reflect.Method p_mixin_3548_line_317 = mixin;
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_creator_collector_1_expr109_line_317 = collectAnnotations(
				p_m_3547_line_317_v1, p_mixin_3548_line_317);
		int PROBE_END_LINE_317 = 319;
		return new AnnotatedMethod(f__type_context_3507_line_317, p_m_3547_line_317, annotated_creator_collector_1_expr109_line_317,
                collectAnnotations(m.getParameterAnnotations(),
                        (mixin == null) ? null : mixin.getParameterAnnotations()));
    }

    private AnnotationMap[] collectAnnotations(Annotation[][] mainAnns, Annotation[][] mixinAnns) {
        int PROBE_START_LINE_323 = 323;
		java.lang.annotation.Annotation[][] p_main_anns_3551_line_323 = mainAnns;
		int q_length_102_line_323 = p_main_anns_3551_line_323.length;
		int PROBE_END_LINE_323 = 323;
		final int count = q_length_102_line_323;
        int PROBE_START_LINE_324 = 324;
		int v_count_3553_line_324 = count;
		int PROBE_END_LINE_324 = 324;
		AnnotationMap[] result = new AnnotationMap[v_count_3553_line_324];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_326 = 327;
			int v_i_3555_line_325 = i;
			int v_count_3553_line_325 = count;
			boolean annotated_creator_collector_1_expr113_line_325 = v_i_3555_line_325 < v_count_3553_line_325;
			if (!(annotated_creator_collector_1_expr113_line_325)) {
				break;
			}
			com.fasterxml.jackson.databind.introspect.AnnotationCollector annotated_creator_collector_1_expr116_line_326 = AnnotationCollector
					.emptyCollector();
			AnnotationCollector annotated_creator_collector_1_expr115_line_326 = collectAnnotations(
					annotated_creator_collector_1_expr116_line_326, mainAnns[i]);
			int PROBE_END_LINE_326 = 327;
			AnnotationCollector c = annotated_creator_collector_1_expr115_line_326;
            int PROBE_START_LINE_328 = 330;
			java.lang.annotation.Annotation[][] p_mixin_anns_3552_line_328 = mixinAnns;
			boolean annotated_creator_collector_1_expr118_line_328 = p_mixin_anns_3552_line_328 != null;
			int PROBE_END_LINE_328 = 330;
			if (annotated_creator_collector_1_expr118_line_328) {
                c = collectAnnotations(c, mixinAnns[i]);
            }
            int PROBE_START_LINE_331 = 331;
			com.fasterxml.jackson.databind.introspect.AnnotationMap[] v_result_3554_line_331 = result;
			int v_i_3555_line_331 = i;
			com.fasterxml.jackson.databind.introspect.AnnotationCollector v_c_3556_line_331 = c;
			com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_creator_collector_1_expr121_line_331 = v_c_3556_line_331
					.asAnnotationMap();
			int PROBE_END_LINE_331 = 331;
			v_result_3554_line_331[v_i_3555_line_331] = annotated_creator_collector_1_expr121_line_331;
        }
        int PROBE_START_LINE_333 = 333;
		com.fasterxml.jackson.databind.introspect.AnnotationMap[] v_result_3554_line_333 = result;
		int PROBE_END_LINE_333 = 333;
		return v_result_3554_line_333;
    }

    // // NOTE: these are only called when we know we have AnnotationIntrospector
    
    private AnnotationMap collectAnnotations(ClassUtil.Ctor main, ClassUtil.Ctor mixin) {
        int PROBE_START_LINE_339 = 339;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_main_3557_line_339 = main;
		Constructor<?> annotated_creator_collector_1_expr124_line_339 = p_main_3557_line_339.getConstructor();
		java.lang.annotation.Annotation[] annotated_creator_collector_1_expr123_line_339 = annotated_creator_collector_1_expr124_line_339
				.getDeclaredAnnotations();
		AnnotationCollector annotated_creator_collector_1_expr122_line_339 = collectAnnotations(
				annotated_creator_collector_1_expr123_line_339);
		int PROBE_END_LINE_339 = 339;
		AnnotationCollector c = annotated_creator_collector_1_expr122_line_339;
        int PROBE_START_LINE_340 = 342;
		com.fasterxml.jackson.databind.util.ClassUtil.Ctor p_mixin_3558_line_340 = mixin;
		boolean annotated_creator_collector_1_expr125_line_340 = p_mixin_3558_line_340 != null;
		int PROBE_END_LINE_340 = 342;
		if (annotated_creator_collector_1_expr125_line_340) {
            c = collectAnnotations(c, mixin.getConstructor().getDeclaredAnnotations());
        }
        int PROBE_START_LINE_343 = 343;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector v_c_3559_line_343 = c;
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_creator_collector_1_expr126_line_343 = v_c_3559_line_343
				.asAnnotationMap();
		int PROBE_END_LINE_343 = 343;
		return annotated_creator_collector_1_expr126_line_343;
    }

    private final AnnotationMap collectAnnotations(AnnotatedElement main, AnnotatedElement mixin) {
        int PROBE_START_LINE_347 = 347;
		java.lang.reflect.AnnotatedElement p_main_3560_line_347 = main;
		java.lang.annotation.Annotation[] annotated_creator_collector_1_expr128_line_347 = p_main_3560_line_347
				.getDeclaredAnnotations();
		AnnotationCollector annotated_creator_collector_1_expr127_line_347 = collectAnnotations(
				annotated_creator_collector_1_expr128_line_347);
		int PROBE_END_LINE_347 = 347;
		AnnotationCollector c = annotated_creator_collector_1_expr127_line_347;
        int PROBE_START_LINE_348 = 350;
		java.lang.reflect.AnnotatedElement p_mixin_3561_line_348 = mixin;
		boolean annotated_creator_collector_1_expr129_line_348 = p_mixin_3561_line_348 != null;
		int PROBE_END_LINE_348 = 350;
		if (annotated_creator_collector_1_expr129_line_348) {
            c = collectAnnotations(c, mixin.getDeclaredAnnotations());
        }
        int PROBE_START_LINE_351 = 351;
		com.fasterxml.jackson.databind.introspect.AnnotationCollector v_c_3562_line_351 = c;
		com.fasterxml.jackson.databind.introspect.AnnotationMap annotated_creator_collector_1_expr130_line_351 = v_c_3562_line_351
				.asAnnotationMap();
		int PROBE_END_LINE_351 = 351;
		return annotated_creator_collector_1_expr130_line_351;
    }

    // for [databind#1005]: do not use or expose synthetic constructors
    private static boolean isIncludableConstructor(Constructor<?> c) {
        int PROBE_START_LINE_356 = 356;
		Constructor<?> p_c_3563_line_356 = c;
		boolean annotated_creator_collector_1_expr132_line_356 = p_c_3563_line_356.isSynthetic();
		boolean annotated_creator_collector_1_expr131_line_356 = !annotated_creator_collector_1_expr132_line_356;
		int PROBE_END_LINE_356 = 356;
		return annotated_creator_collector_1_expr131_line_356;
    }
}
