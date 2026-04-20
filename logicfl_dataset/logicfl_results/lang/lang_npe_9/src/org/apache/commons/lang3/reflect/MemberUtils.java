/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.lang3.reflect;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

import org.apache.commons.lang3.ClassUtils;

/**
 * Contains common code for working with {@link java.lang.reflect.Method Methods}/{@link java.lang.reflect.Constructor Constructors},
 * extracted and refactored from {@link MethodUtils} when it was imported from Commons BeanUtils.
 *
 * @since 2.5
 */
abstract class MemberUtils {
    // TODO extract an interface to implement compareParameterSets(...)?

    private static final int ACCESS_TEST = Modifier.PUBLIC | Modifier.PROTECTED | Modifier.PRIVATE;

    int PROBE_START_LINE_38 = 40;

	private static final Class<Byte> q_type_12_line_39 = Byte.TYPE;

	private static final Class<Short> q_type_12_line_39_v1 = Short.TYPE;

	int PROBE_END_LINE_38 = 40;

	/** Array of primitive number types ordered by "promotability" */
    private static final Class<?>[] ORDERED_PRIMITIVE_TYPES = { q_type_12_line_39, q_type_12_line_39_v1,
            Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE };

    /**
     * XXX Default access superclass workaround.
     *
     * When a {@code public} class has a default access superclass with {@code public} members,
     * these members are accessible. Calling them from compiled code works fine.
     * Unfortunately, on some JVMs, using reflection to invoke these members
     * seems to (wrongly) prevent access even when the modifier is {@code public}.
     * Calling {@code setAccessible(true)} solves the problem but will only work from
     * sufficiently privileged code. Better workarounds would be gratefully
     * accepted.
     * @param o the AccessibleObject to set as accessible
     * @return a boolean indicating whether the accessibility of the object was set to true.
     */
    static boolean setAccessibleWorkaround(final AccessibleObject o) {
        int PROBE_START_LINE_56 = 58;
		java.lang.reflect.AccessibleObject p_o_848_line_56 = o;
		boolean member_utils_1_expr3_line_56 = p_o_848_line_56 == null;
		boolean member_utils_1_expr4_line_56 = false;
		if (!member_utils_1_expr3_line_56) {
			java.lang.reflect.AccessibleObject p_o_848_line_56_v1 = o;
			member_utils_1_expr4_line_56 = p_o_848_line_56_v1.isAccessible();
		}
		boolean member_utils_1_expr2_line_56 = member_utils_1_expr3_line_56 || member_utils_1_expr4_line_56;
		int PROBE_END_LINE_56 = 58;
		if (member_utils_1_expr2_line_56) {
            return false;
        }
        int PROBE_START_LINE_59 = 59;
		java.lang.reflect.AccessibleObject p_o_848_line_59 = o;
		int PROBE_END_LINE_59 = 59;
		final Member m = (Member) p_o_848_line_59;
        int PROBE_START_LINE_60 = 67;
		java.lang.reflect.AccessibleObject p_o_848_line_60 = o;
		boolean member_utils_1_expr8_line_60 = p_o_848_line_60.isAccessible();
		boolean member_utils_1_expr7_line_60 = !member_utils_1_expr8_line_60;
		boolean member_utils_1_expr9_line_60 = true;
		boolean member_utils_1_expr11_line_60 = true;
		if (member_utils_1_expr7_line_60) {
			java.lang.reflect.Member v_m_849_line_60 = m;
			int member_utils_1_expr10_line_60 = v_m_849_line_60.getModifiers();
			member_utils_1_expr9_line_60 = Modifier.isPublic(member_utils_1_expr10_line_60);
			if (member_utils_1_expr9_line_60) {
				java.lang.reflect.Member v_m_849_line_60_v1 = m;
				Class<?> member_utils_1_expr13_line_60 = v_m_849_line_60_v1.getDeclaringClass();
				int member_utils_1_expr12_line_60 = member_utils_1_expr13_line_60.getModifiers();
				member_utils_1_expr11_line_60 = isPackageAccess(member_utils_1_expr12_line_60);
			}
		}
		boolean member_utils_1_expr6_line_60 = member_utils_1_expr7_line_60 && member_utils_1_expr9_line_60
				&& member_utils_1_expr11_line_60;
		int PROBE_END_LINE_60 = 67;
		if (member_utils_1_expr6_line_60) {
            try {
                o.setAccessible(true);
                return true;
            } catch (final SecurityException e) { // NOPMD
                // ignore in favor of subsequent IllegalAccessException
            }
        }
        return false;
    }

    /**
     * Returns whether a given set of modifiers implies package access.
     * @param modifiers to test
     * @return {@code true} unless {@code package}/{@code protected}/{@code private} modifier detected
     */
    static boolean isPackageAccess(final int modifiers) {
        int PROBE_START_LINE_77 = 77;
		int p_modifiers_850_line_77 = modifiers;
		int f_access_test_851_line_77 = ACCESS_TEST;
		int member_utils_1_expr16_line_77 = p_modifiers_850_line_77 & f_access_test_851_line_77;
		int member_utils_1_expr15_line_77 = (member_utils_1_expr16_line_77);
		boolean member_utils_1_expr14_line_77 = member_utils_1_expr15_line_77 == 0;
		int PROBE_END_LINE_77 = 77;
		return member_utils_1_expr14_line_77;
    }

    /**
     * Returns whether a {@link Member} is accessible.
     * @param m Member to check
     * @return {@code true} if {@code m} is accessible
     */
    static boolean isAccessible(final Member m) {
        int PROBE_START_LINE_86 = 86;
		java.lang.reflect.Member p_m_852_line_86 = m;
		boolean member_utils_1_expr19_line_86 = p_m_852_line_86 != null;
		boolean member_utils_1_expr20_line_86 = true;
		if (member_utils_1_expr19_line_86) {
			java.lang.reflect.Member p_m_852_line_86_v1 = m;
			int member_utils_1_expr21_line_86 = p_m_852_line_86_v1.getModifiers();
			member_utils_1_expr20_line_86 = Modifier.isPublic(member_utils_1_expr21_line_86);
		}
		boolean member_utils_1_expr18_line_86 = member_utils_1_expr19_line_86 && member_utils_1_expr20_line_86;
		boolean member_utils_1_expr22_line_86 = true;
		if (member_utils_1_expr18_line_86) {
			java.lang.reflect.Member p_m_852_line_86_v2 = m;
			boolean member_utils_1_expr23_line_86 = p_m_852_line_86_v2.isSynthetic();
			member_utils_1_expr22_line_86 = !member_utils_1_expr23_line_86;
		}
		boolean member_utils_1_expr17_line_86 = member_utils_1_expr18_line_86 && member_utils_1_expr22_line_86;
		int PROBE_END_LINE_86 = 86;
		return member_utils_1_expr17_line_86;
    }

    /**
     * Compares the relative fitness of two Constructors in terms of how well they
     * match a set of runtime parameter types, such that a list ordered
     * by the results of the comparison would return the best match first
     * (least).
     *
     * @param left the "left" Constructor
     * @param right the "right" Constructor
     * @param actual the runtime parameter types to match against
     * {@code left}/{@code right}
     * @return int consistent with {@code compare} semantics
     * @since 3.5
     */
    static int compareConstructorFit(final Constructor<?> left, final Constructor<?> right, final Class<?>[] actual) {
      return compareParameterTypes(Executable.of(left), Executable.of(right), actual);
    }

    /**
     * Compares the relative fitness of two Methods in terms of how well they
     * match a set of runtime parameter types, such that a list ordered
     * by the results of the comparison would return the best match first
     * (least).
     *
     * @param left the "left" Method
     * @param right the "right" Method
     * @param actual the runtime parameter types to match against
     * {@code left}/{@code right}
     * @return int consistent with {@code compare} semantics
     * @since 3.5
     */
    static int compareMethodFit(final Method left, final Method right, final Class<?>[] actual) {
      int PROBE_START_LINE_120 = 120;
		java.lang.reflect.Method p_left_856_line_120 = left;
		org.apache.commons.lang3.reflect.MemberUtils.Executable member_utils_1_expr25_line_120 = Executable
				.of(p_left_856_line_120);
		java.lang.reflect.Method p_right_857_line_120 = right;
		org.apache.commons.lang3.reflect.MemberUtils.Executable member_utils_1_expr26_line_120 = Executable
				.of(p_right_857_line_120);
		Class<?>[] p_actual_858_line_120 = actual;
		int member_utils_1_expr24_line_120 = compareParameterTypes(member_utils_1_expr25_line_120,
				member_utils_1_expr26_line_120, p_actual_858_line_120);
		int PROBE_END_LINE_120 = 120;
	return member_utils_1_expr24_line_120;
    }

    /**
     * Compares the relative fitness of two Executables in terms of how well they
     * match a set of runtime parameter types, such that a list ordered
     * by the results of the comparison would return the best match first
     * (least).
     *
     * @param left the "left" Executable
     * @param right the "right" Executable
     * @param actual the runtime parameter types to match against
     * {@code left}/{@code right}
     * @return int consistent with {@code compare} semantics
     */
    private static int compareParameterTypes(final Executable left, final Executable right, final Class<?>[] actual) {
        int PROBE_START_LINE_136 = 136;
		Class<?>[] p_actual_861_line_136 = actual;
		org.apache.commons.lang3.reflect.MemberUtils.Executable p_left_859_line_136 = left;
		float member_utils_1_expr27_line_136 = getTotalTransformationCost(p_actual_861_line_136, p_left_859_line_136);
		int PROBE_END_LINE_136 = 136;
		final float leftCost = member_utils_1_expr27_line_136;
        int PROBE_START_LINE_137 = 137;
		Class<?>[] p_actual_861_line_137 = actual;
		org.apache.commons.lang3.reflect.MemberUtils.Executable p_right_860_line_137 = right;
		float member_utils_1_expr28_line_137 = getTotalTransformationCost(p_actual_861_line_137, p_right_860_line_137);
		int PROBE_END_LINE_137 = 137;
		final float rightCost = member_utils_1_expr28_line_137;
        int PROBE_START_LINE_138 = 138;
		float v_left_cost_862_line_138 = leftCost;
		float v_right_cost_863_line_138 = rightCost;
		int member_utils_1_expr29_line_138 = Float.compare(v_left_cost_862_line_138, v_right_cost_863_line_138);
		int PROBE_END_LINE_138 = 138;
		return member_utils_1_expr29_line_138;
    }

    /**
     * Returns the sum of the object transformation cost for each class in the
     * source argument list.
     * @param srcArgs The source arguments
     * @param executable The executable to calculate transformation costs for
     * @return The total transformation cost
     */
    private static float getTotalTransformationCost(final Class<?>[] srcArgs, final Executable executable) {
        int PROBE_START_LINE_149 = 149;
		org.apache.commons.lang3.reflect.MemberUtils.Executable p_executable_865_line_149 = executable;
		Class<?>[] member_utils_1_expr30_line_149 = p_executable_865_line_149.getParameterTypes();
		int PROBE_END_LINE_149 = 149;
		final Class<?>[] destArgs = member_utils_1_expr30_line_149;
        int PROBE_START_LINE_150 = 150;
		org.apache.commons.lang3.reflect.MemberUtils.Executable p_executable_865_line_150 = executable;
		boolean member_utils_1_expr31_line_150 = p_executable_865_line_150.isVarArgs();
		int PROBE_END_LINE_150 = 150;
		final boolean isVarArgs = member_utils_1_expr31_line_150;

        // "source" and "destination" are the actual and declared args respectively.
        float totalCost = 0.0f;
        int PROBE_START_LINE_154 = 154;
		boolean v_is_var_args_867_line_154 = isVarArgs;
		int member_utils_1_expr33_line_154 = 0;
		int q_length_12_line_154 = 0;
		if (v_is_var_args_867_line_154) {
			Class<?>[] v_dest_args_866_line_154 = destArgs;
			int q_length_13_line_154 = v_dest_args_866_line_154.length;
			member_utils_1_expr33_line_154 = q_length_13_line_154 - 1;
		} else {
			Class<?>[] v_dest_args_866_line_154_v1 = destArgs;
			q_length_12_line_154 = v_dest_args_866_line_154_v1.length;
		}
		long member_utils_1_expr32_line_154 = v_is_var_args_867_line_154
				? member_utils_1_expr33_line_154
				: q_length_12_line_154;
		int PROBE_END_LINE_154 = 154;
		final long normalArgsLen = member_utils_1_expr32_line_154;
        int PROBE_START_LINE_155 = 157;
		Class<?>[] p_src_args_864_line_155 = srcArgs;
		int q_length_13_line_155 = p_src_args_864_line_155.length;
		long v_normal_args_len_869_line_155 = normalArgsLen;
		boolean member_utils_1_expr34_line_155 = q_length_13_line_155 < v_normal_args_len_869_line_155;
		int PROBE_END_LINE_155 = 157;
		if (member_utils_1_expr34_line_155) {
            return Float.MAX_VALUE;
        }
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_159 = 159;
			int v_i_870_line_158 = i;
			long v_normal_args_len_869_line_158 = normalArgsLen;
			boolean member_utils_1_expr36_line_158 = v_i_870_line_158 < v_normal_args_len_869_line_158;
			if (!(member_utils_1_expr36_line_158)) {
				break;
			}
			int PROBE_END_LINE_159 = 159;
			totalCost += getObjectTransformationCost(srcArgs[i], destArgs[i]);
        }
        int PROBE_START_LINE_161 = 182;
		boolean v_is_var_args_867_line_161 = isVarArgs;
		int PROBE_END_LINE_161 = 182;
		if (v_is_var_args_867_line_161) {
            int PROBE_START_LINE_164 = 164;
			Class<?>[] p_src_args_864_line_164 = srcArgs;
			int q_length_14_line_164 = p_src_args_864_line_164.length;
			Class<?>[] v_dest_args_866_line_164 = destArgs;
			int q_length_14_line_164_v1 = v_dest_args_866_line_164.length;
			boolean member_utils_1_expr38_line_164 = q_length_14_line_164 < q_length_14_line_164_v1;
			int PROBE_END_LINE_164 = 164;
			// When isVarArgs is true, srcArgs and dstArgs may differ in length.
            // There are two special cases to consider:
            final boolean noVarArgsPassed = member_utils_1_expr38_line_164;
            int PROBE_START_LINE_165 = 165;
			Class<?>[] p_src_args_864_line_165 = srcArgs;
			int q_length_14_line_165 = p_src_args_864_line_165.length;
			Class<?>[] v_dest_args_866_line_165 = destArgs;
			int q_length_14_line_165_v1 = v_dest_args_866_line_165.length;
			boolean member_utils_1_expr40_line_165 = q_length_14_line_165 == q_length_14_line_165_v1;
			boolean member_utils_1_expr41_line_165 = true;
			if (member_utils_1_expr40_line_165) {
				Class<?>[] p_src_args_864_line_165_v1 = srcArgs;
				Class<?>[] p_src_args_864_line_165_v2 = srcArgs;
				int q_length_14_line_165_v2 = p_src_args_864_line_165_v2.length;
				int member_utils_1_expr43_line_165 = q_length_14_line_165_v2 - 1;
				Class<?> member_utils_1_expr42_line_165 = p_src_args_864_line_165_v1[member_utils_1_expr43_line_165];
				member_utils_1_expr41_line_165 = member_utils_1_expr42_line_165.isArray();
			}
			boolean member_utils_1_expr39_line_165 = member_utils_1_expr40_line_165 && member_utils_1_expr41_line_165;
			int PROBE_END_LINE_165 = 165;
			final boolean explicitArrayForVarags = member_utils_1_expr39_line_165;

            final float varArgsCost = 0.001f;
            int PROBE_START_LINE_168 = 168;
			Class<?>[] v_dest_args_866_line_168 = destArgs;
			Class<?>[] v_dest_args_866_line_168_v1 = destArgs;
			int q_length_14_line_168 = v_dest_args_866_line_168_v1.length;
			int member_utils_1_expr46_line_168 = q_length_14_line_168 - 1;
			Class<?> member_utils_1_expr45_line_168 = v_dest_args_866_line_168[member_utils_1_expr46_line_168];
			Class<?> member_utils_1_expr44_line_168 = member_utils_1_expr45_line_168.getComponentType();
			int PROBE_END_LINE_168 = 168;
			final Class<?> destClass = member_utils_1_expr44_line_168;
            int PROBE_START_LINE_169 = 181;
			boolean v_no_var_args_passed_871_line_169 = noVarArgsPassed;
			int PROBE_END_LINE_169 = 181;
			if (v_no_var_args_passed_871_line_169) {
                // When no varargs passed, the best match is the most generic matching type, not the most specific.
                totalCost += getObjectTransformationCost(destClass, Object.class) + varArgsCost;
            } else {
				int PROBE_START_LINE_172 = 181;
				boolean v_explicit_array_for_varags_872_line_172 = explicitArrayForVarags;
				int PROBE_END_LINE_172 = 181;
				if (v_explicit_array_for_varags_872_line_172) {
					final Class<?> sourceClass = srcArgs[srcArgs.length - 1].getComponentType();
					totalCost += getObjectTransformationCost(sourceClass, destClass) + varArgsCost;
				} else {
					int PROBE_START_LINE_176 = 176;
					boolean FOR_STMT_TOGGLE_LINE_177 = false;
					int PROBE_END_LINE_176 = 176;
					for (int i = 0; true;) {
						int PROBE_START_LINE_178 = 178;
						if (!FOR_STMT_TOGGLE_LINE_177) {
							FOR_STMT_TOGGLE_LINE_177 = true;
							Class<?>[] v_dest_args_866_line_177 = destArgs;
							int q_length_14_line_177 = v_dest_args_866_line_177.length;
							int member_utils_1_expr48_line_177 = q_length_14_line_177 - 1;
							i = member_utils_1_expr48_line_177;
						} else {
							if (FOR_STMT_TOGGLE_LINE_177) {
								i++;
							} else {
								FOR_STMT_TOGGLE_LINE_177 = true;
							}
						}
						int v_i_875_line_177 = i;
						Class<?>[] p_src_args_864_line_177 = srcArgs;
						int q_length_14_line_177_v1 = p_src_args_864_line_177.length;
						boolean member_utils_1_expr49_line_177 = v_i_875_line_177 < q_length_14_line_177_v1;
						if (!(member_utils_1_expr49_line_177)) {
							break;
						}
						Class<?>[] p_src_args_864_line_178 = srcArgs;
						int v_i_875_line_178 = i;
						Class<?> member_utils_1_expr51_line_178 = p_src_args_864_line_178[v_i_875_line_178];
						int PROBE_END_LINE_178 = 178;
						final Class<?> srcClass = member_utils_1_expr51_line_178;
						int PROBE_START_LINE_179 = 179;
						Class<?> v_src_class_876_line_179 = srcClass;
						Class<?> v_dest_class_874_line_179 = destClass;
						float member_utils_1_expr54_line_179 = getObjectTransformationCost(v_src_class_876_line_179,
								v_dest_class_874_line_179);
						float v_var_args_cost_873_line_179 = varArgsCost;
						float member_utils_1_expr53_line_179 = member_utils_1_expr54_line_179
								+ v_var_args_cost_873_line_179;
						int PROBE_END_LINE_179 = 179;
						totalCost += member_utils_1_expr53_line_179;
					}
				}
			}
        }
        int PROBE_START_LINE_183 = 183;
		float v_total_cost_868_line_183 = totalCost;
		int PROBE_END_LINE_183 = 183;
		return v_total_cost_868_line_183;
    }

    /**
     * Gets the number of steps required needed to turn the source class into
     * the destination class. This represents the number of steps in the object
     * hierarchy graph.
     * @param srcClass The source class
     * @param destClass The destination class
     * @return The cost of transforming an object
     */
    private static float getObjectTransformationCost(Class<?> srcClass, final Class<?> destClass) {
        int PROBE_START_LINE_195 = 197;
		Class<?> p_dest_class_878_line_195 = destClass;
		boolean member_utils_1_expr55_line_195 = p_dest_class_878_line_195.isPrimitive();
		int PROBE_END_LINE_195 = 197;
		if (member_utils_1_expr55_line_195) {
            return getPrimitivePromotionCost(srcClass, destClass);
        }
        float cost = 0.0f;
        while (true) {
            int PROBE_START_LINE_199 = 199;
			Class<?> p_src_class_877_line_199 = srcClass;
			boolean member_utils_1_expr57_line_199 = p_src_class_877_line_199 != null;
			boolean member_utils_1_expr58_line_199 = true;
			if (member_utils_1_expr57_line_199) {
				Class<?> p_dest_class_878_line_199 = destClass;
				Class<?> p_src_class_877_line_199_v1 = srcClass;
				boolean member_utils_1_expr59_line_199 = p_dest_class_878_line_199.equals(p_src_class_877_line_199_v1);
				member_utils_1_expr58_line_199 = !member_utils_1_expr59_line_199;
			}
			boolean member_utils_1_expr56_line_199 = member_utils_1_expr57_line_199 && member_utils_1_expr58_line_199;
			if (!(member_utils_1_expr56_line_199)) {
				break;
			}
			int PROBE_END_LINE_199 = 199;
			int PROBE_START_LINE_200 = 208;
			Class<?> p_dest_class_878_line_200 = destClass;
			boolean member_utils_1_expr61_line_200 = p_dest_class_878_line_200.isInterface();
			boolean member_utils_1_expr62_line_200 = true;
			if (member_utils_1_expr61_line_200) {
				Class<?> p_src_class_877_line_200 = srcClass;
				Class<?> p_dest_class_878_line_200_v1 = destClass;
				member_utils_1_expr62_line_200 = ClassUtils.isAssignable(p_src_class_877_line_200,
						p_dest_class_878_line_200_v1);
			}
			boolean member_utils_1_expr60_line_200 = member_utils_1_expr61_line_200 && member_utils_1_expr62_line_200;
			int PROBE_END_LINE_200 = 208;
			if (member_utils_1_expr60_line_200) {
                // slight penalty for interface match.
                // we still want an exact match to override an interface match,
                // but
                // an interface match should override anything where we have to
                // get a superclass.
                cost += 0.25f;
                break;
            }
            cost++;
            int PROBE_START_LINE_210 = 210;
			Class<?> p_src_class_877_line_210 = srcClass;
			Class<?> member_utils_1_expr65_line_210 = p_src_class_877_line_210.getSuperclass();
			int PROBE_END_LINE_210 = 210;
			srcClass = member_utils_1_expr65_line_210;
        }
        int PROBE_START_LINE_216 = 218;
		Class<?> p_src_class_877_line_216 = srcClass;
		boolean member_utils_1_expr66_line_216 = p_src_class_877_line_216 == null;
		int PROBE_END_LINE_216 = 218;
		/*
         * If the destination class is null, we've traveled all the way up to
         * an Object match. We'll penalize this by adding 1.5 to the cost.
         */
        if (member_utils_1_expr66_line_216) {
            cost += 1.5f;
        }
        int PROBE_START_LINE_219 = 219;
		float v_cost_879_line_219 = cost;
		int PROBE_END_LINE_219 = 219;
		return v_cost_879_line_219;
    }

    /**
     * Gets the number of steps required to promote a primitive number to another
     * type.
     * @param srcClass the (primitive) source class
     * @param destClass the (primitive) destination class
     * @return The cost of promoting the primitive
     */
    private static float getPrimitivePromotionCost(final Class<?> srcClass, final Class<?> destClass) {
        float cost = 0.0f;
        Class<?> cls = srcClass;
        if (!cls.isPrimitive()) {
            // slight unwrapping penalty
            cost += 0.1f;
            cls = ClassUtils.wrapperToPrimitive(cls);
        }
        for (int i = 0; cls != destClass && i < ORDERED_PRIMITIVE_TYPES.length; i++) {
            if (cls == ORDERED_PRIMITIVE_TYPES[i]) {
                cost += 0.1f;
                if (i < ORDERED_PRIMITIVE_TYPES.length - 1) {
                    cls = ORDERED_PRIMITIVE_TYPES[i + 1];
                }
            }
        }
        return cost;
    }

    static boolean isMatchingMethod(final Method method, final Class<?>[] parameterTypes) {
      int PROBE_START_LINE_249 = 249;
		java.lang.reflect.Method p_method_882_line_249 = method;
		org.apache.commons.lang3.reflect.MemberUtils.Executable member_utils_1_expr69_line_249 = Executable
				.of(p_method_882_line_249);
		Class<?>[] p_parameter_types_883_line_249 = parameterTypes;
		boolean member_utils_1_expr68_line_249 = isMatchingExecutable(member_utils_1_expr69_line_249,
				p_parameter_types_883_line_249);
		int PROBE_END_LINE_249 = 249;
	return member_utils_1_expr68_line_249;
    }

    static boolean isMatchingConstructor(final Constructor<?> method, final Class<?>[] parameterTypes) {
      return isMatchingExecutable(Executable.of(method), parameterTypes);
    }

    private static boolean isMatchingExecutable(final Executable method, final Class<?>[] parameterTypes) {
        int PROBE_START_LINE_257 = 257;
		org.apache.commons.lang3.reflect.MemberUtils.Executable p_method_886_line_257 = method;
		Class<?>[] member_utils_1_expr70_line_257 = p_method_886_line_257.getParameterTypes();
		int PROBE_END_LINE_257 = 257;
		final Class<?>[] methodParameterTypes = member_utils_1_expr70_line_257;
        int PROBE_START_LINE_258 = 260;
		Class<?>[] p_parameter_types_887_line_258 = parameterTypes;
		Class<?>[] v_method_parameter_types_888_line_258 = methodParameterTypes;
		boolean member_utils_1_expr71_line_258 = ClassUtils.isAssignable(p_parameter_types_887_line_258,
				v_method_parameter_types_888_line_258, true);
		int PROBE_END_LINE_258 = 260;
		if (member_utils_1_expr71_line_258) {
            return true;
        }

        int PROBE_START_LINE_262 = 276;
		org.apache.commons.lang3.reflect.MemberUtils.Executable p_method_886_line_262 = method;
		boolean member_utils_1_expr72_line_262 = p_method_886_line_262.isVarArgs();
		int PROBE_END_LINE_262 = 276;
		if (member_utils_1_expr72_line_262) {
            int i = 0;
            for (i = 0; true; i++) {
                int PROBE_START_LINE_265 = 267;
				int v_i_889_line_264 = i;
				Class<?>[] v_method_parameter_types_888_line_264 = methodParameterTypes;
				int q_length_14_line_264 = v_method_parameter_types_888_line_264.length;
				int member_utils_1_expr76_line_264 = q_length_14_line_264 - 1;
				boolean member_utils_1_expr75_line_264 = v_i_889_line_264 < member_utils_1_expr76_line_264;
				boolean member_utils_1_expr77_line_264 = true;
				if (member_utils_1_expr75_line_264) {
					int v_i_889_line_264_v1 = i;
					Class<?>[] p_parameter_types_887_line_264 = parameterTypes;
					int q_length_15_line_264 = p_parameter_types_887_line_264.length;
					member_utils_1_expr77_line_264 = v_i_889_line_264_v1 < q_length_15_line_264;
				}
				boolean member_utils_1_expr74_line_264 = member_utils_1_expr75_line_264
						&& member_utils_1_expr77_line_264;
				if (!(member_utils_1_expr74_line_264)) {
					break;
				}
				int PROBE_END_LINE_265 = 267;
				if (!ClassUtils.isAssignable(parameterTypes[i], methodParameterTypes[i], true)) {
                    return false;
                }
            }
            int PROBE_START_LINE_269 = 269;
			Class<?>[] v_method_parameter_types_888_line_269 = methodParameterTypes;
			Class<?>[] v_method_parameter_types_888_line_269_v1 = methodParameterTypes;
			int q_length_16_line_269 = v_method_parameter_types_888_line_269_v1.length;
			int member_utils_1_expr81_line_269 = q_length_16_line_269 - 1;
			Class<?> member_utils_1_expr80_line_269 = v_method_parameter_types_888_line_269[member_utils_1_expr81_line_269];
			Class<?> member_utils_1_expr79_line_269 = member_utils_1_expr80_line_269.getComponentType();
			int PROBE_END_LINE_269 = 269;
			final Class<?> varArgParameterType = member_utils_1_expr79_line_269;
            for (; true; i++) {
                int PROBE_START_LINE_271 = 273;
				int v_i_889_line_270 = i;
				Class<?>[] p_parameter_types_887_line_270 = parameterTypes;
				int q_length_16_line_270 = p_parameter_types_887_line_270.length;
				boolean member_utils_1_expr82_line_270 = v_i_889_line_270 < q_length_16_line_270;
				if (!(member_utils_1_expr82_line_270)) {
					break;
				}
				Class<?>[] p_parameter_types_887_line_271 = parameterTypes;
				int v_i_889_line_271 = i;
				Class<?> member_utils_1_expr86_line_271 = p_parameter_types_887_line_271[v_i_889_line_271];
				Class<?> v_var_arg_parameter_type_890_line_271 = varArgParameterType;
				boolean member_utils_1_expr85_line_271 = ClassUtils.isAssignable(member_utils_1_expr86_line_271,
						v_var_arg_parameter_type_890_line_271, true);
				boolean member_utils_1_expr84_line_271 = !member_utils_1_expr85_line_271;
				int PROBE_END_LINE_271 = 273;
				if (member_utils_1_expr84_line_271) {
                    return false;
                }
            }
            return true;
        }

        return false;
    }

    /**
     * <p> A class providing a subset of the API of java.lang.reflect.Executable in Java 1.8,
     * providing a common representation for function signatures for Constructors and Methods.</p>
     */
    private static final class Executable {
      private final Class<?>[] parameterTypes;
      private final boolean  isVarArgs;

      private static Executable of(final Method method) {
          int PROBE_START_LINE_290 = 290;
		java.lang.reflect.Method p_method_891_line_290 = method;
		int PROBE_END_LINE_290 = 290;
		return new Executable(p_method_891_line_290);
      }

      private static Executable of(final Constructor<?> constructor) {
          return new Executable(constructor);
      }

      private Executable(final Method method) {
        int PROBE_START_LINE_298 = 298;
		java.lang.reflect.Method p_method_893_line_298 = method;
		Class<?>[] member_utils_1_expr89_line_298 = p_method_893_line_298.getParameterTypes();
		int PROBE_END_LINE_298 = 298;
		parameterTypes = member_utils_1_expr89_line_298;
        int PROBE_START_LINE_299 = 299;
		java.lang.reflect.Method p_method_893_line_299 = method;
		boolean member_utils_1_expr91_line_299 = p_method_893_line_299.isVarArgs();
		int PROBE_END_LINE_299 = 299;
		isVarArgs = member_utils_1_expr91_line_299;
      }

      private Executable(final Constructor<?> constructor) {
        parameterTypes = constructor.getParameterTypes();
        isVarArgs = constructor.isVarArgs();
      }

      public Class<?>[] getParameterTypes() {
          int PROBE_START_LINE_308 = 308;
		Class<?>[] f_parameter_types_894_line_308 = parameterTypes;
		int PROBE_END_LINE_308 = 308;
		return f_parameter_types_894_line_308;
      }

      public boolean isVarArgs() {
          int PROBE_START_LINE_312 = 312;
		boolean f_is_var_args_895_line_312 = isVarArgs;
		int PROBE_END_LINE_312 = 312;
		return f_is_var_args_895_line_312;
      }
    }

}
