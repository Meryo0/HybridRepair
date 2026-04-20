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

import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.ClassUtils.Interfaces;
import org.apache.commons.lang3.Validate;

/**
 * <p>Utility reflection methods focused on {@link Method}s, originally from Commons BeanUtils.
 * Differences from the BeanUtils version may be noted, especially where similar functionality
 * already existed within Lang.
 * </p>
 *
 * <h2>Known Limitations</h2>
 * <h3>Accessing Public Methods In A Default Access Superclass</h3>
 * <p>There is an issue when invoking {@code public} methods contained in a default access superclass on JREs prior to 1.4.
 * Reflection locates these methods fine and correctly assigns them as {@code public}.
 * However, an {@link IllegalAccessException} is thrown if the method is invoked.</p>
 *
 * <p>{@link MethodUtils} contains a workaround for this situation.
 * It will attempt to call {@link java.lang.reflect.AccessibleObject#setAccessible(boolean)} on this method.
 * If this call succeeds, then the method can be invoked as normal.
 * This call will only succeed when the application has sufficient security privileges.
 * If this call fails then the method may fail.</p>
 *
 * @since 2.5
 */
public class MethodUtils {

    /**
     * <p>{@link MethodUtils} instances should NOT be constructed in standard programming.
     * Instead, the class should be used as
     * {@code MethodUtils.getAccessibleMethod(method)}.</p>
     *
     * <p>This constructor is {@code public} to permit tools that require a JavaBean
     * instance to operate.</p>
     */
    public MethodUtils() {
        super();
    }

    /**
     * <p>Invokes a named method without parameters.</p>
     *
     * <p>This method delegates the method search to {@link #getMatchingAccessibleMethod(Class, String, Class[])}.</p>
     *
     * <p>This is a convenient wrapper for
     * {@link #invokeMethod(Object object, String methodName, Object[] args, Class[] parameterTypes)}.
     * </p>
     *
     * @param object invoke method on this object
     * @param methodName get method with this name
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the method invoked
     * @throws IllegalAccessException if the requested method is not accessible via reflection
     *
     *  @since 3.4
     */
    public static Object invokeMethod(final Object object, final String methodName) throws NoSuchMethodException,
            IllegalAccessException, InvocationTargetException {
        return invokeMethod(object, methodName, ArrayUtils.EMPTY_OBJECT_ARRAY, null);
    }

    /**
     * <p>Invokes a named method without parameters.</p>
     *
     * <p>This is a convenient wrapper for
     * {@link #invokeMethod(Object object, boolean forceAccess, String methodName, Object[] args, Class[] parameterTypes)}.
     * </p>
     *
     * @param object invoke method on this object
     * @param forceAccess force access to invoke method even if it's not accessible
     * @param methodName get method with this name
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the method invoked
     * @throws IllegalAccessException if the requested method is not accessible via reflection
     *
     * @since 3.5
     */
    public static Object invokeMethod(final Object object, final boolean forceAccess, final String methodName)
            throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        return invokeMethod(object, forceAccess, methodName, ArrayUtils.EMPTY_OBJECT_ARRAY, null);
    }

    /**
     * <p>Invokes a named method whose parameter type matches the object type.</p>
     *
     * <p>This method delegates the method search to {@link #getMatchingAccessibleMethod(Class, String, Class[])}.</p>
     *
     * <p>This method supports calls to methods taking primitive parameters
     * via passing in wrapping classes. So, for example, a {@code Boolean} object
     * would match a {@code boolean} primitive.</p>
     *
     * <p>This is a convenient wrapper for
     * {@link #invokeMethod(Object object, String methodName, Object[] args, Class[] parameterTypes)}.
     * </p>
     *
     * @param object invoke method on this object
     * @param methodName get method with this name
     * @param args use these arguments - treat null as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the method invoked
     * @throws IllegalAccessException if the requested method is not accessible via reflection
     */
    public static Object invokeMethod(final Object object, final String methodName,
            Object... args) throws NoSuchMethodException,
            IllegalAccessException, InvocationTargetException {
        int PROBE_START_LINE_146 = 146;
				Object[] p_args_904_line_146 = args;
				Object[] method_utils_1_expr2_line_146 = ArrayUtils.nullToEmpty(p_args_904_line_146);
				int PROBE_END_LINE_146 = 146;
		args = method_utils_1_expr2_line_146;
        int PROBE_START_LINE_147 = 147;
		Object[] p_args_904_line_147 = args;
		Class<?>[] method_utils_1_expr3_line_147 = ClassUtils.toClass(p_args_904_line_147);
		int PROBE_END_LINE_147 = 147;
		final Class<?>[] parameterTypes = method_utils_1_expr3_line_147;
        int PROBE_START_LINE_148 = 148;
		Object p_object_902_line_148 = object;
		String p_method_name_903_line_148 = methodName;
		Object[] p_args_904_line_148 = args;
		Class<?>[] v_parameter_types_905_line_148 = parameterTypes;
		Object method_utils_1_expr4_line_148 = invokeMethod(p_object_902_line_148, p_method_name_903_line_148,
				p_args_904_line_148, v_parameter_types_905_line_148);
		int PROBE_END_LINE_148 = 148;
		return method_utils_1_expr4_line_148;
    }

    /**
     * <p>Invokes a named method whose parameter type matches the object type.</p>
     *
     * <p>This method supports calls to methods taking primitive parameters
     * via passing in wrapping classes. So, for example, a {@code Boolean} object
     * would match a {@code boolean} primitive.</p>
     *
     * <p>This is a convenient wrapper for
     * {@link #invokeMethod(Object object, boolean forceAccess, String methodName, Object[] args, Class[] parameterTypes)}.
     * </p>
     *
     * @param object invoke method on this object
     * @param forceAccess force access to invoke method even if it's not accessible
     * @param methodName get method with this name
     * @param args use these arguments - treat null as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the method invoked
     * @throws IllegalAccessException if the requested method is not accessible via reflection
     *
     * @since 3.5
     */
    public static Object invokeMethod(final Object object, final boolean forceAccess, final String methodName,
            Object... args) throws NoSuchMethodException,
            IllegalAccessException, InvocationTargetException {
        args = ArrayUtils.nullToEmpty(args);
        final Class<?>[] parameterTypes = ClassUtils.toClass(args);
        return invokeMethod(object, forceAccess, methodName, args, parameterTypes);
    }

    /**
     * <p>Invokes a named method whose parameter type matches the object type.</p>
     *
     * <p>This method supports calls to methods taking primitive parameters
     * via passing in wrapping classes. So, for example, a {@code Boolean} object
     * would match a {@code boolean} primitive.</p>
     *
     * @param object invoke method on this object
     * @param forceAccess force access to invoke method even if it's not accessible
     * @param methodName get method with this name
     * @param args use these arguments - treat null as empty array
     * @param parameterTypes match these parameters - treat null as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the method invoked
     * @throws IllegalAccessException if the requested method is not accessible via reflection
     * @since 3.5
     */
    public static Object invokeMethod(final Object object, final boolean forceAccess, final String methodName,
            Object[] args, Class<?>[] parameterTypes)
            throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        int PROBE_START_LINE_204 = 204;
				Class<?>[] p_parameter_types_914_line_204 = parameterTypes;
				Class<?>[] method_utils_1_expr6_line_204 = ArrayUtils.nullToEmpty(p_parameter_types_914_line_204);
				int PROBE_END_LINE_204 = 204;
		parameterTypes = method_utils_1_expr6_line_204;
        int PROBE_START_LINE_205 = 205;
		Object[] p_args_913_line_205 = args;
		Object[] method_utils_1_expr8_line_205 = ArrayUtils.nullToEmpty(p_args_913_line_205);
		int PROBE_END_LINE_205 = 205;
		args = method_utils_1_expr8_line_205;

        final String messagePrefix;
        Method method = null;

        int PROBE_START_LINE_210 = 221;
		boolean p_force_access_911_line_210 = forceAccess;
		int PROBE_END_LINE_210 = 221;
		if (p_force_access_911_line_210) {
            messagePrefix = "No such method: ";
            method = getMatchingMethod(object.getClass(),
                    methodName, parameterTypes);
            if (method != null && !method.isAccessible()) {
                method.setAccessible(true);
            }
        } else {
            messagePrefix = "No such accessible method: ";
            int PROBE_START_LINE_219 = 220;
			Object p_object_910_line_219 = object;
			Class<? extends Object> method_utils_1_expr12_line_219 = p_object_910_line_219.getClass();
			java.lang.reflect.Method method_utils_1_expr11_line_219 = getMatchingAccessibleMethod(
					method_utils_1_expr12_line_219, methodName, parameterTypes);
			int PROBE_END_LINE_219 = 220;
			method = method_utils_1_expr11_line_219;
        }

        int PROBE_START_LINE_223 = 227;
		java.lang.reflect.Method v_method_915_line_223 = method;
		boolean method_utils_1_expr13_line_223 = v_method_915_line_223 == null;
		int PROBE_END_LINE_223 = 227;
		if (method_utils_1_expr13_line_223) {
            throw new NoSuchMethodException(messagePrefix
                    + methodName + "() on object: "
                    + object.getClass().getName());
        }
        int PROBE_START_LINE_228 = 228;
		java.lang.reflect.Method v_method_915_line_228 = method;
		Object[] p_args_913_line_228 = args;
		Object[] method_utils_1_expr15_line_228 = toVarArgs(v_method_915_line_228, p_args_913_line_228);
		int PROBE_END_LINE_228 = 228;
		args = method_utils_1_expr15_line_228;

        int PROBE_START_LINE_230 = 230;
		java.lang.reflect.Method v_method_915_line_230 = method;
		Object p_object_910_line_230 = object;
		Object[] p_args_913_line_230 = args;
		Object method_utils_1_expr16_line_230 = v_method_915_line_230.invoke(p_object_910_line_230,
				p_args_913_line_230);
		int PROBE_END_LINE_230 = 230;
		return method_utils_1_expr16_line_230;
    }

    /**
     * <p>Invokes a named method whose parameter type matches the object type.</p>
     *
     * <p>This method delegates the method search to {@link #getMatchingAccessibleMethod(Class, String, Class[])}.</p>
     *
     * <p>This method supports calls to methods taking primitive parameters
     * via passing in wrapping classes. So, for example, a {@code Boolean} object
     * would match a {@code boolean} primitive.</p>
     *
     * @param object invoke method on this object
     * @param methodName get method with this name
     * @param args use these arguments - treat null as empty array
     * @param parameterTypes match these parameters - treat null as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the method invoked
     * @throws IllegalAccessException if the requested method is not accessible via reflection
     */
    public static Object invokeMethod(final Object object, final String methodName,
            final Object[] args, final Class<?>[] parameterTypes)
            throws NoSuchMethodException, IllegalAccessException,
            InvocationTargetException {
        int PROBE_START_LINE_256 = 256;
				Object p_object_917_line_256 = object;
				String p_method_name_918_line_256 = methodName;
				Object[] p_args_919_line_256 = args;
				Class<?>[] p_parameter_types_920_line_256 = parameterTypes;
				Object method_utils_1_expr17_line_256 = invokeMethod(p_object_917_line_256, false,
						p_method_name_918_line_256, p_args_919_line_256, p_parameter_types_920_line_256);
				int PROBE_END_LINE_256 = 256;
		return method_utils_1_expr17_line_256;
    }

    /**
     * <p>Invokes a method whose parameter types match exactly the object
     * types.</p>
     *
     * <p>This uses reflection to invoke the method obtained from a call to
     * {@link #getAccessibleMethod}(Class, String, Class[])}.</p>
     *
     * @param object invoke method on this object
     * @param methodName get method with this name
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the
     *  method invoked
     * @throws IllegalAccessException if the requested method is not accessible
     *  via reflection
     *
     * @since 3.4
     */
    public static Object invokeExactMethod(final Object object, final String methodName) throws NoSuchMethodException,
            IllegalAccessException, InvocationTargetException {
        return invokeExactMethod(object, methodName, ArrayUtils.EMPTY_OBJECT_ARRAY, null);
    }

    /**
     * <p>Invokes a method with no parameters.</p>
     *
     * <p>This uses reflection to invoke the method obtained from a call to
     * {@link #getAccessibleMethod}(Class, String, Class[])}.</p>
     *
     * @param object invoke method on this object
     * @param methodName get method with this name
     * @param args use these arguments - treat null as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the
     *  method invoked
     * @throws IllegalAccessException if the requested method is not accessible
     *  via reflection
     */
    public static Object invokeExactMethod(final Object object, final String methodName,
            Object... args) throws NoSuchMethodException,
            IllegalAccessException, InvocationTargetException {
        args = ArrayUtils.nullToEmpty(args);
        final Class<?>[] parameterTypes = ClassUtils.toClass(args);
        return invokeExactMethod(object, methodName, args, parameterTypes);
    }

    /**
     * <p>Invokes a method whose parameter types match exactly the parameter
     * types given.</p>
     *
     * <p>This uses reflection to invoke the method obtained from a call to
     * {@link #getAccessibleMethod(Class, String, Class[])}.</p>
     *
     * @param object invoke method on this object
     * @param methodName get method with this name
     * @param args use these arguments - treat null as empty array
     * @param parameterTypes match these parameters - treat {@code null} as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the
     *  method invoked
     * @throws IllegalAccessException if the requested method is not accessible
     *  via reflection
     */
    public static Object invokeExactMethod(final Object object, final String methodName,
            Object[] args, Class<?>[] parameterTypes)
            throws NoSuchMethodException, IllegalAccessException,
            InvocationTargetException {
        args = ArrayUtils.nullToEmpty(args);
        parameterTypes = ArrayUtils.nullToEmpty(parameterTypes);
        final Method method = getAccessibleMethod(object.getClass(), methodName,
                parameterTypes);
        if (method == null) {
            throw new NoSuchMethodException("No such accessible method: "
                    + methodName + "() on object: "
                    + object.getClass().getName());
        }
        return method.invoke(object, args);
    }

    /**
     * <p>Invokes a {@code static} method whose parameter types match exactly the parameter
     * types given.</p>
     *
     * <p>This uses reflection to invoke the method obtained from a call to
     * {@link #getAccessibleMethod(Class, String, Class[])}.</p>
     *
     * @param cls invoke static method on this class
     * @param methodName get method with this name
     * @param args use these arguments - treat {@code null} as empty array
     * @param parameterTypes match these parameters - treat {@code null} as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the
     *  method invoked
     * @throws IllegalAccessException if the requested method is not accessible
     *  via reflection
     */
    public static Object invokeExactStaticMethod(final Class<?> cls, final String methodName,
            Object[] args, Class<?>[] parameterTypes)
            throws NoSuchMethodException, IllegalAccessException,
            InvocationTargetException {
        args = ArrayUtils.nullToEmpty(args);
        parameterTypes = ArrayUtils.nullToEmpty(parameterTypes);
        final Method method = getAccessibleMethod(cls, methodName, parameterTypes);
        if (method == null) {
            throw new NoSuchMethodException("No such accessible method: "
                    + methodName + "() on class: " + cls.getName());
        }
        return method.invoke(null, args);
    }

    /**
     * <p>Invokes a named {@code static} method whose parameter type matches the object type.</p>
     *
     * <p>This method delegates the method search to {@link #getMatchingAccessibleMethod(Class, String, Class[])}.</p>
     *
     * <p>This method supports calls to methods taking primitive parameters
     * via passing in wrapping classes. So, for example, a {@code Boolean} class
     * would match a {@code boolean} primitive.</p>
     *
     * <p>This is a convenient wrapper for
     * {@link #invokeStaticMethod(Class, String, Object[], Class[])}.
     * </p>
     *
     * @param cls invoke static method on this class
     * @param methodName get method with this name
     * @param args use these arguments - treat {@code null} as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the
     *  method invoked
     * @throws IllegalAccessException if the requested method is not accessible
     *  via reflection
     */
    public static Object invokeStaticMethod(final Class<?> cls, final String methodName,
            Object... args) throws NoSuchMethodException,
            IllegalAccessException, InvocationTargetException {
        args = ArrayUtils.nullToEmpty(args);
        final Class<?>[] parameterTypes = ClassUtils.toClass(args);
        return invokeStaticMethod(cls, methodName, args, parameterTypes);
    }

    /**
     * <p>Invokes a named {@code static} method whose parameter type matches the object type.</p>
     *
     * <p>This method delegates the method search to {@link #getMatchingAccessibleMethod(Class, String, Class[])}.</p>
     *
     * <p>This method supports calls to methods taking primitive parameters
     * via passing in wrapping classes. So, for example, a {@code Boolean} class
     * would match a {@code boolean} primitive.</p>
     *
     *
     * @param cls invoke static method on this class
     * @param methodName get method with this name
     * @param args use these arguments - treat {@code null} as empty array
     * @param parameterTypes match these parameters - treat {@code null} as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the
     *  method invoked
     * @throws IllegalAccessException if the requested method is not accessible
     *  via reflection
     */
    public static Object invokeStaticMethod(final Class<?> cls, final String methodName,
            Object[] args, Class<?>[] parameterTypes)
            throws NoSuchMethodException, IllegalAccessException,
            InvocationTargetException {
        args = ArrayUtils.nullToEmpty(args);
        parameterTypes = ArrayUtils.nullToEmpty(parameterTypes);
        final Method method = getMatchingAccessibleMethod(cls, methodName,
                parameterTypes);
        if (method == null) {
            throw new NoSuchMethodException("No such accessible method: "
                    + methodName + "() on class: " + cls.getName());
        }
        args = toVarArgs(method, args);
        return method.invoke(null, args);
    }

    private static Object[] toVarArgs(final Method method, Object[] args) {
        int PROBE_START_LINE_447 = 450;
		java.lang.reflect.Method p_method_941_line_447 = method;
		boolean method_utils_1_expr18_line_447 = p_method_941_line_447.isVarArgs();
		int PROBE_END_LINE_447 = 450;
		if (method_utils_1_expr18_line_447) {
            int PROBE_START_LINE_448 = 448;
			java.lang.reflect.Method p_method_941_line_448 = method;
			Class<?>[] method_utils_1_expr19_line_448 = p_method_941_line_448.getParameterTypes();
			int PROBE_END_LINE_448 = 448;
			final Class<?>[] methodParameterTypes = method_utils_1_expr19_line_448;
            int PROBE_START_LINE_449 = 449;
			Object[] p_args_942_line_449 = args;
			Class<?>[] v_method_parameter_types_943_line_449 = methodParameterTypes;
			Object[] method_utils_1_expr21_line_449 = getVarArgs(p_args_942_line_449,
					v_method_parameter_types_943_line_449);
			int PROBE_END_LINE_449 = 449;
			args = method_utils_1_expr21_line_449;
        }
        int PROBE_START_LINE_451 = 451;
		Object[] p_args_942_line_451 = args;
		int PROBE_END_LINE_451 = 451;
		return p_args_942_line_451;
    }

    /**
     * <p>Given an arguments array passed to a varargs method, return an array of arguments in the canonical form,
     * i.e. an array with the declared number of parameters, and whose last parameter is an array of the varargs type.
     * </p>
     *
     * @param args the array of arguments passed to the varags method
     * @param methodParameterTypes the declared array of method parameter types
     * @return an array of the variadic arguments passed to the method
     * @since 3.5
     */
    static Object[] getVarArgs(final Object[] args, final Class<?>[] methodParameterTypes) {
        int PROBE_START_LINE_465 = 469;
		Object[] p_args_944_line_465 = args;
		int q_length_16_line_465 = p_args_944_line_465.length;
		Class<?>[] p_method_parameter_types_945_line_465 = methodParameterTypes;
		int q_length_17_line_465 = p_method_parameter_types_945_line_465.length;
		boolean method_utils_1_expr23_line_465 = q_length_16_line_465 == q_length_17_line_465;
		boolean method_utils_1_expr22_line_465 = method_utils_1_expr23_line_465
				&& args[args.length - 1].getClass().equals(methodParameterTypes[methodParameterTypes.length - 1]);
		int PROBE_END_LINE_465 = 469;
		if (method_utils_1_expr22_line_465) {
            // The args array is already in the canonical form for the method.
            return args;
        }

        int PROBE_START_LINE_472 = 472;
		Class<?>[] p_method_parameter_types_945_line_472 = methodParameterTypes;
		int q_length_18_line_472 = p_method_parameter_types_945_line_472.length;
		int PROBE_END_LINE_472 = 472;
		// Construct a new array matching the method's declared parameter types.
        final Object[] newArgs = new Object[q_length_18_line_472];

        int PROBE_START_LINE_475 = 475;
		Object[] p_args_944_line_475 = args;
		Object[] v_new_args_946_line_475 = newArgs;
		Class<?>[] p_method_parameter_types_945_line_475 = methodParameterTypes;
		int q_length_18_line_475 = p_method_parameter_types_945_line_475.length;
		int method_utils_1_expr26_line_475 = q_length_18_line_475 - 1;
		int PROBE_END_LINE_475 = 475;
		// Copy the normal (non-varargs) parameters
        System.arraycopy(p_args_944_line_475, 0, v_new_args_946_line_475, 0, method_utils_1_expr26_line_475);

        int PROBE_START_LINE_478 = 478;
		Class<?>[] p_method_parameter_types_945_line_478 = methodParameterTypes;
		Class<?>[] p_method_parameter_types_945_line_478_v1 = methodParameterTypes;
		int q_length_18_line_478 = p_method_parameter_types_945_line_478_v1.length;
		int method_utils_1_expr29_line_478 = q_length_18_line_478 - 1;
		Class<?> method_utils_1_expr28_line_478 = p_method_parameter_types_945_line_478[method_utils_1_expr29_line_478];
		Class<?> method_utils_1_expr27_line_478 = method_utils_1_expr28_line_478.getComponentType();
		int PROBE_END_LINE_478 = 478;
		// Construct a new array for the variadic parameters
        final Class<?> varArgComponentType = method_utils_1_expr27_line_478;
        int PROBE_START_LINE_479 = 479;
		Object[] p_args_944_line_479 = args;
		int q_length_18_line_479 = p_args_944_line_479.length;
		Class<?>[] p_method_parameter_types_945_line_479 = methodParameterTypes;
		int q_length_18_line_479_v1 = p_method_parameter_types_945_line_479.length;
		int method_utils_1_expr31_line_479 = q_length_18_line_479 - q_length_18_line_479_v1;
		int method_utils_1_expr30_line_479 = method_utils_1_expr31_line_479 + 1;
		int PROBE_END_LINE_479 = 479;
		final int varArgLength = method_utils_1_expr30_line_479;

        int PROBE_START_LINE_481 = 481;
		Class<?> v_var_arg_component_type_947_line_481 = varArgComponentType;
		Class<?> method_utils_1_expr33_line_481 = ClassUtils.primitiveToWrapper(v_var_arg_component_type_947_line_481);
		int v_var_arg_length_948_line_481 = varArgLength;
		Object method_utils_1_expr32_line_481 = Array.newInstance(method_utils_1_expr33_line_481,
				v_var_arg_length_948_line_481);
		int PROBE_END_LINE_481 = 481;
		Object varArgsArray = method_utils_1_expr32_line_481;
        int PROBE_START_LINE_483 = 483;
		Object[] p_args_944_line_483 = args;
		Class<?>[] p_method_parameter_types_945_line_483 = methodParameterTypes;
		int q_length_18_line_483 = p_method_parameter_types_945_line_483.length;
		int method_utils_1_expr35_line_483 = q_length_18_line_483 - 1;
		Object v_var_args_array_949_line_483 = varArgsArray;
		int v_var_arg_length_948_line_483 = varArgLength;
		int PROBE_END_LINE_483 = 483;
		// Copy the variadic arguments into the varargs array.
        System.arraycopy(p_args_944_line_483, method_utils_1_expr35_line_483, v_var_args_array_949_line_483, 0, v_var_arg_length_948_line_483);

        int PROBE_START_LINE_485 = 488;
		Class<?> v_var_arg_component_type_947_line_485 = varArgComponentType;
		boolean method_utils_1_expr36_line_485 = v_var_arg_component_type_947_line_485.isPrimitive();
		int PROBE_END_LINE_485 = 488;
		if (method_utils_1_expr36_line_485) {
            // unbox from wrapper type to primitive type
            varArgsArray = ArrayUtils.toPrimitive(varArgsArray);
        }

        int PROBE_START_LINE_491 = 491;
		Object[] v_new_args_946_line_491 = newArgs;
		Class<?>[] p_method_parameter_types_945_line_491 = methodParameterTypes;
		int q_length_18_line_491 = p_method_parameter_types_945_line_491.length;
		int method_utils_1_expr39_line_491 = q_length_18_line_491 - 1;
		Object v_var_args_array_949_line_491 = varArgsArray;
		int PROBE_END_LINE_491 = 491;
		// Store the varargs array in the last position of the array to return
        v_new_args_946_line_491[method_utils_1_expr39_line_491] = v_var_args_array_949_line_491;

        int PROBE_START_LINE_494 = 494;
		Object[] v_new_args_946_line_494 = newArgs;
		int PROBE_END_LINE_494 = 494;
		// Return the canonical varargs array.
        return v_new_args_946_line_494;
    }

    /**
     * <p>Invokes a {@code static} method whose parameter types match exactly the object
     * types.</p>
     *
     * <p>This uses reflection to invoke the method obtained from a call to
     * {@link #getAccessibleMethod(Class, String, Class[])}.</p>
     *
     * @param cls invoke static method on this class
     * @param methodName get method with this name
     * @param args use these arguments - treat {@code null} as empty array
     * @return The value returned by the invoked method
     *
     * @throws NoSuchMethodException if there is no such accessible method
     * @throws InvocationTargetException wraps an exception thrown by the
     *  method invoked
     * @throws IllegalAccessException if the requested method is not accessible
     *  via reflection
     */
    public static Object invokeExactStaticMethod(final Class<?> cls, final String methodName,
            Object... args) throws NoSuchMethodException,
            IllegalAccessException, InvocationTargetException {
        args = ArrayUtils.nullToEmpty(args);
        final Class<?>[] parameterTypes = ClassUtils.toClass(args);
        return invokeExactStaticMethod(cls, methodName, args, parameterTypes);
    }

    /**
     * <p>Returns an accessible method (that is, one that can be invoked via
     * reflection) with given name and parameters. If no such method
     * can be found, return {@code null}.
     * This is just a convenience wrapper for
     * {@link #getAccessibleMethod(Method)}.</p>
     *
     * @param cls get method from this class
     * @param methodName get method with this name
     * @param parameterTypes with these parameters types
     * @return The accessible method
     */
    public static Method getAccessibleMethod(final Class<?> cls, final String methodName,
            final Class<?>... parameterTypes) {
        try {
            return getAccessibleMethod(cls.getMethod(methodName,
                    parameterTypes));
        } catch (final NoSuchMethodException e) {
            return null;
        }
    }

    /**
     * <p>Returns an accessible method (that is, one that can be invoked via
     * reflection) that implements the specified Method. If no such method
     * can be found, return {@code null}.</p>
     *
     * @param method The method that we wish to call
     * @return The accessible method
     */
    public static Method getAccessibleMethod(Method method) {
        int PROBE_START_LINE_554 = 556;
		java.lang.reflect.Method p_method_956_line_554 = method;
		boolean method_utils_1_expr41_line_554 = MemberUtils.isAccessible(p_method_956_line_554);
		boolean method_utils_1_expr40_line_554 = !method_utils_1_expr41_line_554;
		int PROBE_END_LINE_554 = 556;
		if (method_utils_1_expr40_line_554) {
            return null;
        }
        int PROBE_START_LINE_558 = 558;
		java.lang.reflect.Method p_method_956_line_558 = method;
		Class<?> method_utils_1_expr42_line_558 = p_method_956_line_558.getDeclaringClass();
		int PROBE_END_LINE_558 = 558;
		// If the declaring class is public, we are done
        final Class<?> cls = method_utils_1_expr42_line_558;
        int PROBE_START_LINE_559 = 561;
		Class<?> v_cls_957_line_559 = cls;
		int method_utils_1_expr44_line_559 = v_cls_957_line_559.getModifiers();
		boolean method_utils_1_expr43_line_559 = Modifier.isPublic(method_utils_1_expr44_line_559);
		int PROBE_END_LINE_559 = 561;
		if (method_utils_1_expr43_line_559) {
            int PROBE_START_LINE_560 = 560;
			java.lang.reflect.Method p_method_956_line_560 = method;
			int PROBE_END_LINE_560 = 560;
			return p_method_956_line_560;
        }
        final String methodName = method.getName();
        final Class<?>[] parameterTypes = method.getParameterTypes();

        // Check the implemented interfaces and subinterfaces
        method = getAccessibleMethodFromInterfaceNest(cls, methodName,
                parameterTypes);

        // Check the superclass chain
        if (method == null) {
            method = getAccessibleMethodFromSuperclass(cls, methodName,
                    parameterTypes);
        }
        return method;
    }

    /**
     * <p>Returns an accessible method (that is, one that can be invoked via
     * reflection) by scanning through the superclasses. If no such method
     * can be found, return {@code null}.</p>
     *
     * @param cls Class to be checked
     * @param methodName Method name of the method we wish to call
     * @param parameterTypes The parameter type signatures
     * @return the accessible method or {@code null} if not found
     */
    private static Method getAccessibleMethodFromSuperclass(final Class<?> cls,
            final String methodName, final Class<?>... parameterTypes) {
        Class<?> parentClass = cls.getSuperclass();
        while (parentClass != null) {
            if (Modifier.isPublic(parentClass.getModifiers())) {
                try {
                    return parentClass.getMethod(methodName, parameterTypes);
                } catch (final NoSuchMethodException e) {
                    return null;
                }
            }
            parentClass = parentClass.getSuperclass();
        }
        return null;
    }

    /**
     * <p>Returns an accessible method (that is, one that can be invoked via
     * reflection) that implements the specified method, by scanning through
     * all implemented interfaces and subinterfaces. If no such method
     * can be found, return {@code null}.</p>
     *
     * <p>There isn't any good reason why this method must be {@code private}.
     * It is because there doesn't seem any reason why other classes should
     * call this rather than the higher level methods.</p>
     *
     * @param cls Parent class for the interfaces to be checked
     * @param methodName Method name of the method we wish to call
     * @param parameterTypes The parameter type signatures
     * @return the accessible method or {@code null} if not found
     */
    private static Method getAccessibleMethodFromInterfaceNest(Class<?> cls,
            final String methodName, final Class<?>... parameterTypes) {
        // Search up the superclass chain
        for (; cls != null; cls = cls.getSuperclass()) {

            // Check the implemented interfaces of the parent class
            final Class<?>[] interfaces = cls.getInterfaces();
            for (final Class<?> anInterface : interfaces) {
                // Is this interface public?
                if (!Modifier.isPublic(anInterface.getModifiers())) {
                    continue;
                }
                // Does the method exist on this interface?
                try {
                    return anInterface.getDeclaredMethod(methodName,
                            parameterTypes);
                } catch (final NoSuchMethodException e) { // NOPMD
                    /*
                     * Swallow, if no method is found after the loop then this
                     * method returns null.
                     */
                }
                // Recursively check our parent interfaces
                final Method method = getAccessibleMethodFromInterfaceNest(anInterface,
                        methodName, parameterTypes);
                if (method != null) {
                    return method;
                }
            }
        }
        return null;
    }

    /**
     * <p>Finds an accessible method that matches the given name and has compatible parameters.
     * Compatible parameters mean that every method parameter is assignable from
     * the given parameters.
     * In other words, it finds a method with the given name
     * that will take the parameters given.</p>
     *
     * <p>This method is used by
     * {@link
     * #invokeMethod(Object object, String methodName, Object[] args, Class[] parameterTypes)}.
     * </p>
     *
     * <p>This method can match primitive parameter by passing in wrapper classes.
     * For example, a {@code Boolean} will match a primitive {@code boolean}
     * parameter.
     * </p>
     *
     * @param cls find method in this class
     * @param methodName find method with this name
     * @param parameterTypes find method with most compatible parameters
     * @return The accessible method
     */
    public static Method getMatchingAccessibleMethod(final Class<?> cls,
            final String methodName, final Class<?>... parameterTypes) {
        try {
            final Method method = cls.getMethod(methodName, parameterTypes);
            MemberUtils.setAccessibleWorkaround(method);
            return method;
        } catch (final NoSuchMethodException e) { // NOPMD - Swallow the exception
        }
        // search through all methods
        Method bestMatch = null;
        int PROBE_START_LINE_683 = 683;
		Class<?> p_cls_964_line_683 = cls;
		Method[] method_utils_1_expr45_line_683 = p_cls_964_line_683.getMethods();
		int PROBE_END_LINE_683 = 683;
		final Method[] methods = method_utils_1_expr45_line_683;
        int PROBE_START_LINE_684 = 697;
		java.lang.reflect.Method[] v_methods_969_line_684 = methods;
		int PROBE_END_LINE_684 = 697;
		for (final Method method : v_methods_969_line_684) {
            int PROBE_START_LINE_686 = 696;
			java.lang.reflect.Method v_method_970_line_686 = method;
			String method_utils_1_expr48_line_686 = v_method_970_line_686.getName();
			String p_method_name_965_line_686 = methodName;
			boolean method_utils_1_expr47_line_686 = method_utils_1_expr48_line_686.equals(p_method_name_965_line_686);
			boolean method_utils_1_expr49_line_687 = true;
			if (method_utils_1_expr47_line_686) {
				java.lang.reflect.Method v_method_970_line_687 = method;
				Class<?>[] p_parameter_types_966_line_687 = parameterTypes;
				method_utils_1_expr49_line_687 = MemberUtils.isMatchingMethod(v_method_970_line_687,
						p_parameter_types_966_line_687);
			}
			boolean method_utils_1_expr46_line_686 = method_utils_1_expr47_line_686 && method_utils_1_expr49_line_687;
			int PROBE_END_LINE_686 = 696;
			// compare name and parameters
            if (method_utils_1_expr46_line_686) {
                int PROBE_START_LINE_689 = 689;
						java.lang.reflect.Method v_method_970_line_689 = method;
						Method method_utils_1_expr50_line_689 = getAccessibleMethod(v_method_970_line_689);
						int PROBE_END_LINE_689 = 689;
				// get accessible version of method
                final Method accessibleMethod = method_utils_1_expr50_line_689;
                int PROBE_START_LINE_690 = 695;
				java.lang.reflect.Method v_accessible_method_971_line_690 = accessibleMethod;
				boolean method_utils_1_expr52_line_690 = v_accessible_method_971_line_690 != null;
				boolean method_utils_1_expr53_line_690 = true;
				if (method_utils_1_expr52_line_690) {
					java.lang.reflect.Method v_best_match_968_line_690 = bestMatch;
					boolean method_utils_1_expr55_line_690 = v_best_match_968_line_690 == null;
					boolean method_utils_1_expr56_line_690 = false;
					if (!method_utils_1_expr55_line_690) {
						int method_utils_1_expr57_line_690 = MemberUtils.compareMethodFit(accessibleMethod, bestMatch,
								parameterTypes);
						method_utils_1_expr56_line_690 = method_utils_1_expr57_line_690 < 0;
					}
					boolean method_utils_1_expr54_line_690 = method_utils_1_expr55_line_690
							|| method_utils_1_expr56_line_690;
					method_utils_1_expr53_line_690 = (method_utils_1_expr54_line_690);
				}
				boolean method_utils_1_expr51_line_690 = method_utils_1_expr52_line_690
						&& method_utils_1_expr53_line_690;
				int PROBE_END_LINE_690 = 695;
				if (method_utils_1_expr51_line_690) {
                    int PROBE_START_LINE_694 = 694;
								java.lang.reflect.Method v_accessible_method_971_line_694 = accessibleMethod;
								int PROBE_END_LINE_694 = 694;
					bestMatch = v_accessible_method_971_line_694;
                }
            }
        }
        int PROBE_START_LINE_698 = 700;
		java.lang.reflect.Method v_best_match_968_line_698 = bestMatch;
		boolean method_utils_1_expr59_line_698 = v_best_match_968_line_698 != null;
		int PROBE_END_LINE_698 = 700;
		if (method_utils_1_expr59_line_698) {
            int PROBE_START_LINE_699 = 699;
			java.lang.reflect.Method v_best_match_968_line_699 = bestMatch;
			int PROBE_END_LINE_699 = 699;
			MemberUtils.setAccessibleWorkaround(v_best_match_968_line_699);
        }

        int PROBE_START_LINE_702 = 713;
		java.lang.reflect.Method v_best_match_968_line_702 = bestMatch;
		boolean method_utils_1_expr64_line_702 = v_best_match_968_line_702 != null;
		boolean method_utils_1_expr65_line_702 = true;
		if (method_utils_1_expr64_line_702) {
			java.lang.reflect.Method v_best_match_968_line_702_v1 = bestMatch;
			method_utils_1_expr65_line_702 = v_best_match_968_line_702_v1.isVarArgs();
		}
		boolean method_utils_1_expr63_line_702 = method_utils_1_expr64_line_702 && method_utils_1_expr65_line_702;
		boolean method_utils_1_expr66_line_702 = true;
		if (method_utils_1_expr63_line_702) {
			java.lang.reflect.Method v_best_match_968_line_702_v2 = bestMatch;
			Class<?>[] method_utils_1_expr68_line_702 = v_best_match_968_line_702_v2.getParameterTypes();
			int method_utils_1_expr67_line_702 = method_utils_1_expr68_line_702.length;
			method_utils_1_expr66_line_702 = method_utils_1_expr67_line_702 > 0;
		}
		boolean method_utils_1_expr62_line_702 = method_utils_1_expr63_line_702 && method_utils_1_expr66_line_702;
		boolean method_utils_1_expr69_line_702 = true;
		if (method_utils_1_expr62_line_702) {
			Class<?>[] p_parameter_types_966_line_702 = parameterTypes;
			int q_length_18_line_702 = p_parameter_types_966_line_702.length;
			method_utils_1_expr69_line_702 = q_length_18_line_702 > 0;
		}
		boolean method_utils_1_expr61_line_702 = method_utils_1_expr62_line_702 && method_utils_1_expr69_line_702;
		int PROBE_END_LINE_702 = 713;
		if (method_utils_1_expr61_line_702) {
            int PROBE_START_LINE_703 = 703;
			java.lang.reflect.Method v_best_match_968_line_703 = bestMatch;
			Class<?>[] method_utils_1_expr70_line_703 = v_best_match_968_line_703.getParameterTypes();
			int PROBE_END_LINE_703 = 703;
			final Class<?>[] methodParameterTypes = method_utils_1_expr70_line_703;
            int PROBE_START_LINE_704 = 704;
			Class<?>[] v_method_parameter_types_973_line_704 = methodParameterTypes;
			Class<?>[] v_method_parameter_types_973_line_704_v1 = methodParameterTypes;
			int q_length_19_line_704 = v_method_parameter_types_973_line_704_v1.length;
			int method_utils_1_expr73_line_704 = q_length_19_line_704 - 1;
			Class<?> method_utils_1_expr72_line_704 = v_method_parameter_types_973_line_704[method_utils_1_expr73_line_704];
			Class<?> method_utils_1_expr71_line_704 = method_utils_1_expr72_line_704.getComponentType();
			int PROBE_END_LINE_704 = 704;
			final Class<?> methodParameterComponentType = method_utils_1_expr71_line_704;
            int PROBE_START_LINE_705 = 705;
			Class<?> v_method_parameter_component_type_974_line_705 = methodParameterComponentType;
			Class<?> method_utils_1_expr75_line_705 = ClassUtils
					.primitiveToWrapper(v_method_parameter_component_type_974_line_705);
			String method_utils_1_expr74_line_705 = method_utils_1_expr75_line_705.getName();
			int PROBE_END_LINE_705 = 705;
			final String methodParameterComponentTypeName = method_utils_1_expr74_line_705;
            int PROBE_START_LINE_706 = 706;
			Class<?>[] p_parameter_types_966_line_706 = parameterTypes;
			Class<?>[] p_parameter_types_966_line_706_v1 = parameterTypes;
			int q_length_20_line_706 = p_parameter_types_966_line_706_v1.length;
			int method_utils_1_expr78_line_706 = q_length_20_line_706 - 1;
			Class<?> method_utils_1_expr77_line_706 = p_parameter_types_966_line_706[method_utils_1_expr78_line_706];
			String method_utils_1_expr76_line_706 = method_utils_1_expr77_line_706.getName();
			int PROBE_END_LINE_706 = 706;
			final String parameterTypeName = method_utils_1_expr76_line_706;
            int PROBE_START_LINE_707 = 707;
			Class<?>[] p_parameter_types_966_line_707 = parameterTypes;
			Class<?>[] p_parameter_types_966_line_707_v1 = parameterTypes;
			int q_length_20_line_707 = p_parameter_types_966_line_707_v1.length;
			int method_utils_1_expr82_line_707 = q_length_20_line_707 - 1;
			Class<?> method_utils_1_expr81_line_707 = p_parameter_types_966_line_707[method_utils_1_expr82_line_707];
			Class<?> method_utils_1_expr80_line_707 = method_utils_1_expr81_line_707.getSuperclass();
			String method_utils_1_expr79_line_707 = method_utils_1_expr80_line_707.getName();
			int PROBE_END_LINE_707 = 707;
			final String parameterTypeSuperClassName = method_utils_1_expr79_line_707;

            int PROBE_START_LINE_709 = 712;
			String v_method_parameter_component_type_name_975_line_709 = methodParameterComponentTypeName;
			String v_parameter_type_name_976_line_709 = parameterTypeName;
			boolean method_utils_1_expr85_line_709 = v_method_parameter_component_type_name_975_line_709
					.equals(v_parameter_type_name_976_line_709);
			boolean method_utils_1_expr84_line_709 = !method_utils_1_expr85_line_709;
			boolean method_utils_1_expr83_line_709 = method_utils_1_expr84_line_709
					&& !methodParameterComponentTypeName.equals(parameterTypeSuperClassName);
			int PROBE_END_LINE_709 = 712;
			if (method_utils_1_expr83_line_709) {
                return null;
            }
        }

        int PROBE_START_LINE_715 = 715;
		java.lang.reflect.Method v_best_match_968_line_715 = bestMatch;
		int PROBE_END_LINE_715 = 715;
		return v_best_match_968_line_715;
    }

    /**
     * <p>Retrieves a method whether or not it's accessible. If no such method
     * can be found, return {@code null}.</p>
     * @param cls The class that will be subjected to the method search
     * @param methodName The method that we wish to call
     * @param parameterTypes Argument class types
     * @return The method
     *
     * @since 3.5
     */
    public static Method getMatchingMethod(final Class<?> cls, final String methodName,
            final Class<?>... parameterTypes) {
        Validate.notNull(cls, "Null class not allowed.");
        Validate.notEmpty(methodName, "Null or blank methodName not allowed.");

        // Address methods in superclasses
        Method[] methodArray = cls.getDeclaredMethods();
        final List<Class<?>> superclassList = ClassUtils.getAllSuperclasses(cls);
        for (final Class<?> klass : superclassList) {
            methodArray = ArrayUtils.addAll(methodArray, klass.getDeclaredMethods());
        }

        Method inexactMatch = null;
        for (final Method method : methodArray) {
            if (methodName.equals(method.getName()) &&
                    Objects.deepEquals(parameterTypes, method.getParameterTypes())) {
                return method;
            } else if (methodName.equals(method.getName()) &&
                    ClassUtils.isAssignable(parameterTypes, method.getParameterTypes(), true)) {
                if (inexactMatch == null) {
                    inexactMatch = method;
                } else if (distance(parameterTypes, method.getParameterTypes())
                        < distance(parameterTypes, inexactMatch.getParameterTypes())) {
                    inexactMatch = method;
                }
            }

        }
        return inexactMatch;
    }

    /**
     * <p>Returns the aggregate number of inheritance hops between assignable argument class types.  Returns -1
     * if the arguments aren't assignable.  Fills a specific purpose for getMatchingMethod and is not generalized.</p>
     * @param classArray
     * @param toClassArray
     * @return the aggregate number of inheritance hops between assignable argument class types.
     */
    private static int distance(final Class<?>[] classArray, final Class<?>[] toClassArray) {
        int answer = 0;

        if (!ClassUtils.isAssignable(classArray, toClassArray, true)) {
            return -1;
        }
        for (int offset = 0; offset < classArray.length; offset++) {
            // Note InheritanceUtils.distance() uses different scoring system.
            if (classArray[offset].equals(toClassArray[offset])) {
                continue;
            } else if (ClassUtils.isAssignable(classArray[offset], toClassArray[offset], true)
                    && !ClassUtils.isAssignable(classArray[offset], toClassArray[offset], false)) {
                answer++;
            } else {
                answer = answer + 2;
            }
        }

        return answer;
    }

    /**
     * Gets the hierarchy of overridden methods down to {@code result} respecting generics.
     * @param method lowest to consider
     * @param interfacesBehavior whether to search interfaces, {@code null} {@code implies} false
     * @return Set&lt;Method&gt; in ascending order from sub- to superclass
     * @throws NullPointerException if the specified method is {@code null}
     * @since 3.2
     */
    public static Set<Method> getOverrideHierarchy(final Method method, final Interfaces interfacesBehavior) {
        Validate.notNull(method);
        final Set<Method> result = new LinkedHashSet<>();
        result.add(method);

        final Class<?>[] parameterTypes = method.getParameterTypes();

        final Class<?> declaringClass = method.getDeclaringClass();

        final Iterator<Class<?>> hierarchy = ClassUtils.hierarchy(declaringClass, interfacesBehavior).iterator();
        //skip the declaring class :P
        hierarchy.next();
        hierarchyTraversal: while (hierarchy.hasNext()) {
            final Class<?> c = hierarchy.next();
            final Method m = getMatchingAccessibleMethod(c, method.getName(), parameterTypes);
            if (m == null) {
                continue;
            }
            if (Arrays.equals(m.getParameterTypes(), parameterTypes)) {
                // matches without generics
                result.add(m);
                continue;
            }
            // necessary to get arguments every time in the case that we are including interfaces
            final Map<TypeVariable<?>, Type> typeArguments = TypeUtils.getTypeArguments(declaringClass, m.getDeclaringClass());
            for (int i = 0; i < parameterTypes.length; i++) {
                final Type childType = TypeUtils.unrollVariables(typeArguments, method.getGenericParameterTypes()[i]);
                final Type parentType = TypeUtils.unrollVariables(typeArguments, m.getGenericParameterTypes()[i]);
                if (!TypeUtils.equals(childType, parentType)) {
                    continue hierarchyTraversal;
                }
            }
            result.add(m);
        }
        return result;
    }

    /**
     * Gets all class level public methods of the given class that are annotated with the given annotation.
     * @param cls
     *            the {@link Class} to query
     * @param annotationCls
     *            the {@link java.lang.annotation.Annotation} that must be present on a method to be matched
     * @return an array of Methods (possibly empty).
     * @throws IllegalArgumentException
     *            if the class or annotation are {@code null}
     * @since 3.4
     */
    public static Method[] getMethodsWithAnnotation(final Class<?> cls, final Class<? extends Annotation> annotationCls) {
        return getMethodsWithAnnotation(cls, annotationCls, false, false);
    }

    /**
     * Gets all class level public methods of the given class that are annotated with the given annotation.
     * @param cls
     *            the {@link Class} to query
     * @param annotationCls
     *            the {@link Annotation} that must be present on a method to be matched
     * @return a list of Methods (possibly empty).
     * @throws IllegalArgumentException
     *            if the class or annotation are {@code null}
     * @since 3.4
     */
    public static List<Method> getMethodsListWithAnnotation(final Class<?> cls, final Class<? extends Annotation> annotationCls) {
        return getMethodsListWithAnnotation(cls, annotationCls, false, false);
    }

    /**
     * Gets all methods of the given class that are annotated with the given annotation.
     * @param cls
     *            the {@link Class} to query
     * @param annotationCls
     *            the {@link java.lang.annotation.Annotation} that must be present on a method to be matched
     * @param searchSupers
     *            determines if a lookup in the entire inheritance hierarchy of the given class should be performed
     * @param ignoreAccess
     *            determines if non public methods should be considered
     * @return an array of Methods (possibly empty).
     * @throws IllegalArgumentException
     *            if the class or annotation are {@code null}
     * @since 3.6
     */
    public static Method[] getMethodsWithAnnotation(final Class<?> cls, final Class<? extends Annotation> annotationCls,
                                                    final boolean searchSupers, final boolean ignoreAccess) {
        final List<Method> annotatedMethodsList = getMethodsListWithAnnotation(cls, annotationCls, searchSupers,
                ignoreAccess);
        return annotatedMethodsList.toArray(ArrayUtils.EMPTY_METHOD_ARRAY);
    }

    /**
     * Gets all methods of the given class that are annotated with the given annotation.
     * @param cls
     *            the {@link Class} to query
     * @param annotationCls
     *            the {@link Annotation} that must be present on a method to be matched
     * @param searchSupers
     *            determines if a lookup in the entire inheritance hierarchy of the given class should be performed
     * @param ignoreAccess
     *            determines if non public methods should be considered
     * @return a list of Methods (possibly empty).
     * @throws IllegalArgumentException
     *            if the class or annotation are {@code null}
     * @since 3.6
     */
    public static List<Method> getMethodsListWithAnnotation(final Class<?> cls,
                                                            final Class<? extends Annotation> annotationCls,
                                                            final boolean searchSupers, final boolean ignoreAccess) {

        Validate.isTrue(cls != null, "The class must not be null");
        Validate.isTrue(annotationCls != null, "The annotation class must not be null");
        final List<Class<?>> classes = (searchSupers ? getAllSuperclassesAndInterfaces(cls)
                : new ArrayList<>());
        classes.add(0, cls);
        final List<Method> annotatedMethods = new ArrayList<>();
        for (final Class<?> acls : classes) {
            final Method[] methods = (ignoreAccess ? acls.getDeclaredMethods() : acls.getMethods());
            for (final Method method : methods) {
                if (method.getAnnotation(annotationCls) != null) {
                    annotatedMethods.add(method);
                }
            }
        }
        return annotatedMethods;
    }

    /**
     * <p>Gets the annotation object with the given annotation type that is present on the given method
     * or optionally on any equivalent method in super classes and interfaces. Returns null if the annotation
     * type was not present.</p>
     *
     * <p>Stops searching for an annotation once the first annotation of the specified type has been
     * found. Additional annotations of the specified type will be silently ignored.</p>
     * @param <A>
     *            the annotation type
     * @param method
     *            the {@link Method} to query
     * @param annotationCls
     *            the {@link Annotation} to check if is present on the method
     * @param searchSupers
     *            determines if a lookup in the entire inheritance hierarchy of the given class is performed
     *            if the annotation was not directly present
     * @param ignoreAccess
     *            determines if underlying method has to be accessible
     * @return the first matching annotation, or {@code null} if not found
     * @throws IllegalArgumentException
     *            if the method or annotation are {@code null}
     * @since 3.6
     */
    public static <A extends Annotation> A getAnnotation(final Method method, final Class<A> annotationCls,
                                                         final boolean searchSupers, final boolean ignoreAccess) {

        Validate.isTrue(method != null, "The method must not be null");
        Validate.isTrue(annotationCls != null, "The annotation class must not be null");
        if (!ignoreAccess && !MemberUtils.isAccessible(method)) {
            return null;
        }

        A annotation = method.getAnnotation(annotationCls);

        if (annotation == null && searchSupers) {
            final Class<?> mcls = method.getDeclaringClass();
            final List<Class<?>> classes = getAllSuperclassesAndInterfaces(mcls);
            for (final Class<?> acls : classes) {
                Method equivalentMethod;
                try {
                    equivalentMethod = (ignoreAccess ? acls.getDeclaredMethod(method.getName(), method.getParameterTypes())
                            : acls.getMethod(method.getName(), method.getParameterTypes()));
                } catch (final NoSuchMethodException e) {
                    // if not found, just keep searching
                    continue;
                }
                annotation = equivalentMethod.getAnnotation(annotationCls);
                if (annotation != null) {
                    break;
                }
            }
        }

        return annotation;
    }

    /**
     * <p>Gets a combination of {@link ClassUtils#getAllSuperclasses}(Class)} and
     * {@link ClassUtils#getAllInterfaces}(Class)}, one from superclasses, one
     * from interfaces, and so on in a breadth first way.</p>
     *
     * @param cls  the class to look up, may be {@code null}
     * @return the combined {@code List} of superclasses and interfaces in order
     * going up from this one
     *  {@code null} if null input
     */
    private static List<Class<?>> getAllSuperclassesAndInterfaces(final Class<?> cls) {
        if (cls == null) {
            return null;
        }

        final List<Class<?>> allSuperClassesAndInterfaces = new ArrayList<>();
        final List<Class<?>> allSuperclasses = ClassUtils.getAllSuperclasses(cls);
        int superClassIndex = 0;
        final List<Class<?>> allInterfaces = ClassUtils.getAllInterfaces(cls);
        int interfaceIndex = 0;
        while (interfaceIndex < allInterfaces.size() ||
                superClassIndex < allSuperclasses.size()) {
            Class<?> acls;
            if (interfaceIndex >= allInterfaces.size()) {
                acls = allSuperclasses.get(superClassIndex++);
            } else if (superClassIndex >= allSuperclasses.size()) {
                acls = allInterfaces.get(interfaceIndex++);
            } else if (interfaceIndex < superClassIndex) {
                acls = allInterfaces.get(interfaceIndex++);
            } else if (superClassIndex < interfaceIndex) {
                acls = allSuperclasses.get(superClassIndex++);
            } else {
                acls = allInterfaces.get(interfaceIndex++);
            }
            allSuperClassesAndInterfaces.add(acls);
        }
        return allSuperClassesAndInterfaces;
    }
}
