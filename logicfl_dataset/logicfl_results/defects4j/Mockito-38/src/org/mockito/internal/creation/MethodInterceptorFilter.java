/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.creation;

import java.lang.reflect.Method;

import org.mockito.cglib.proxy.MethodInterceptor;
import org.mockito.cglib.proxy.MethodProxy;
import org.mockito.internal.creation.cglib.CGLIBHacker;

@SuppressWarnings("unchecked")
public class MethodInterceptorFilter<T extends MethodInterceptor> implements MethodInterceptor {
    
    private final Method equalsMethod;
    private final Method hashCodeMethod;

    private final T delegate;

    @SuppressWarnings("unchecked")
    public MethodInterceptorFilter(Class toMock, T delegate) {
        try {
            int PROBE_START_LINE_24 = 26;
			Class p_to_mock_167_line_24 = toMock;
			boolean method_interceptor_filter_1_expr1_line_24 = p_to_mock_167_line_24.isInterface();
			int PROBE_END_LINE_24 = 26;
			if (method_interceptor_filter_1_expr1_line_24) {
                toMock = Object.class;
            }
            int PROBE_START_LINE_27 = 27;
			Class p_to_mock_167_line_27 = toMock;
			java.lang.reflect.Method method_interceptor_filter_1_expr5_line_27 = p_to_mock_167_line_27
					.getMethod("equals", new Class[]{Object.class});
			int PROBE_END_LINE_27 = 27;
			equalsMethod = method_interceptor_filter_1_expr5_line_27;
            int PROBE_START_LINE_28 = 28;
			Class p_to_mock_167_line_28 = toMock;
			java.lang.reflect.Method method_interceptor_filter_1_expr10_line_28 = p_to_mock_167_line_28
					.getMethod("hashCode", (Class[]) null);
			int PROBE_END_LINE_28 = 28;
			hashCodeMethod = method_interceptor_filter_1_expr10_line_28;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("\nSomething went really wrong. Object method could not be found!" +
                "\n please report it to the mocking mailing list at http://mockito.org");
        }
        int PROBE_START_LINE_33 = 33;
		T p_delegate_168_line_33 = delegate;
		int PROBE_END_LINE_33 = 33;
		this.delegate = p_delegate_168_line_33;
    }

    public Object intercept(Object proxy, Method method, Object[] args, MethodProxy methodProxy)
            throws Throwable {
        if (equalsMethod.equals(method)) {
            return Boolean.valueOf(proxy == args[0]);
        } else if (hashCodeMethod.equals(method)) {
            return hashCodeForMock(proxy);
        }
        
        new CGLIBHacker().setMockitoNamingPolicy(methodProxy);
        
        return delegate.intercept(proxy, method, args, methodProxy);
    }

    private int hashCodeForMock(Object mock) {
        return new Integer(System.identityHashCode(mock));
    }

    public T getDelegate() {
        return delegate;
    }
}