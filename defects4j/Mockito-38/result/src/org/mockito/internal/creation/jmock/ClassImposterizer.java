/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.creation.jmock;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.List;

import org.mockito.cglib.core.CodeGenerationException;
import org.mockito.cglib.core.NamingPolicy;
import org.mockito.cglib.core.Predicate;
import org.mockito.cglib.proxy.Callback;
import org.mockito.cglib.proxy.CallbackFilter;
import org.mockito.cglib.proxy.Enhancer;
import org.mockito.cglib.proxy.Factory;
import org.mockito.cglib.proxy.MethodInterceptor;
import org.mockito.cglib.proxy.NoOp;
import org.mockito.exceptions.base.MockitoException;
import org.mockito.internal.creation.cglib.MockitoNamingPolicy;
import org.objenesis.ObjenesisStd;

/**
 * Thanks to jMock guys for this handy class that wraps all the cglib magic. 
 */
public class ClassImposterizer  {

    public static final ClassImposterizer INSTANCE = new ClassImposterizer();
    
    private ClassImposterizer() {}
    
    //TODO: after 1.8, in order to provide decent exception message when objenesis is not found,
    //have a constructor in this class that tries to instantiate ObjenesisStd and if it fails then show decent exception that dependency is missing
    //TODO: after 1.8, for the same reason catch and give better feedback when hamcrest core is not found.
    private ObjenesisStd objenesis = new ObjenesisStd();
    
    private static final NamingPolicy NAMING_POLICY_THAT_ALLOWS_IMPOSTERISATION_OF_CLASSES_IN_SIGNED_PACKAGES = new MockitoNamingPolicy() {
        @Override
        public String getClassName(String prefix, String source, Object key, Predicate names) {
            return "codegen." + super.getClassName(prefix, source, key, names);
        }
    };
    
    private static final CallbackFilter IGNORE_BRIDGE_METHODS = new CallbackFilter() {
        public int accept(Method method) {
            return method.isBridge() ? 1 : 0;
        }
    };
    
    public boolean canImposterise(Class<?> type) {
        int PROBE_START_LINE_53 = 53;
		Class<?> p_type_195_line_53 = type;
		boolean class_imposterizer_1_expr7_line_53 = p_type_195_line_53.isPrimitive();
		boolean class_imposterizer_1_expr6_line_53 = !class_imposterizer_1_expr7_line_53;
		boolean class_imposterizer_1_expr8_line_53 = true;
		boolean class_imposterizer_1_expr11_line_53 = true;
		if (class_imposterizer_1_expr6_line_53) {
			Class<?> p_type_195_line_53_v1 = type;
			int class_imposterizer_1_expr10_line_53 = p_type_195_line_53_v1.getModifiers();
			boolean class_imposterizer_1_expr9_line_53 = Modifier.isFinal(class_imposterizer_1_expr10_line_53);
			class_imposterizer_1_expr8_line_53 = !class_imposterizer_1_expr9_line_53;
			if (class_imposterizer_1_expr8_line_53) {
				Class<?> p_type_195_line_53_v2 = type;
				boolean class_imposterizer_1_expr12_line_53 = p_type_195_line_53_v2.isAnonymousClass();
				class_imposterizer_1_expr11_line_53 = !class_imposterizer_1_expr12_line_53;
			}
		}
		boolean class_imposterizer_1_expr5_line_53 = class_imposterizer_1_expr6_line_53
				&& class_imposterizer_1_expr8_line_53 && class_imposterizer_1_expr11_line_53;
		int PROBE_END_LINE_53 = 53;
		return class_imposterizer_1_expr5_line_53;
    }
    
    public <T> T imposterise(final MethodInterceptor interceptor, Class<T> mockedType, Class<?>... ancillaryTypes) {
        try {
            int PROBE_START_LINE_58 = 58;
			Class<T> p_mocked_type_197_line_58 = mockedType;
			int PROBE_END_LINE_58 = 58;
			setConstructorsAccessible(p_mocked_type_197_line_58, true);
            Class<?> proxyClass = createProxyClass(mockedType, ancillaryTypes);
            return mockedType.cast(createProxy(proxyClass, interceptor));
        } finally {
            int PROBE_START_LINE_62 = 62;
			Class<T> p_mocked_type_197_line_62 = mockedType;
			int PROBE_END_LINE_62 = 62;
			setConstructorsAccessible(p_mocked_type_197_line_62, false);
        }
    }
    
    private void setConstructorsAccessible(Class<?> mockedType, boolean accessible) {
        int PROBE_START_LINE_67 = 69;
		Class<?> p_mocked_type_199_line_67 = mockedType;
		Constructor<?>[] class_imposterizer_1_expr15_line_67 = p_mocked_type_199_line_67.getDeclaredConstructors();
		int PROBE_END_LINE_67 = 69;
		for (Constructor<?> constructor : class_imposterizer_1_expr15_line_67) {
            constructor.setAccessible(accessible);
        }
    }
    
    private <T> Class<?> createProxyClass(Class<?> mockedType, Class<?>...interfaces) {
        int PROBE_START_LINE_73 = 75;
		Class<?> p_mocked_type_202_line_73 = mockedType;
		boolean class_imposterizer_1_expr16_line_73 = p_mocked_type_202_line_73 == Object.class;
		int PROBE_END_LINE_73 = 75;
		if (class_imposterizer_1_expr16_line_73) {
            mockedType = ClassWithSuperclassToWorkAroundCglibBug.class;
        }
        
        Enhancer enhancer = new Enhancer() {
            @Override
            @SuppressWarnings("unchecked")
            protected void filterConstructors(Class sc, List constructors) {
                // Don't filter
            }
        };
        enhancer.setClassLoader(SearchingClassLoader.combineLoadersOf(mockedType));
        enhancer.setUseFactory(true);
        if (mockedType.isInterface()) {
            enhancer.setSuperclass(Object.class);
            enhancer.setInterfaces(prepend(mockedType, interfaces));
        } else {
            enhancer.setSuperclass(mockedType);
            enhancer.setInterfaces(interfaces);
        }
        enhancer.setCallbackTypes(new Class[]{MethodInterceptor.class, NoOp.class});
        enhancer.setCallbackFilter(IGNORE_BRIDGE_METHODS);
        if (mockedType.getSigners() != null) {
            enhancer.setNamingPolicy(NAMING_POLICY_THAT_ALLOWS_IMPOSTERISATION_OF_CLASSES_IN_SIGNED_PACKAGES);
        } else {
            enhancer.setNamingPolicy(MockitoNamingPolicy.INSTANCE);
        }
        
        try {
            return enhancer.createClass(); 
        } catch (CodeGenerationException e) {
            if (Modifier.isPrivate(mockedType.getModifiers())) {
                throw new MockitoException("\n"
                        + "Mockito cannot mock this class: " + mockedType 
                        + ".\n"
                        + "Most likely it is a private class that is not visible by Mockito");
            }
            throw new MockitoException("\n"
                    + "Mockito cannot mock this class: " + mockedType 
                    + ".\n" 
                    + "Mockito can only mock visible & non-final classes");
        }
    }
    
    private Object createProxy(Class<?> proxyClass, final MethodInterceptor interceptor) {
        Factory proxy = (Factory) objenesis.newInstance(proxyClass);
        proxy.setCallbacks(new Callback[] {interceptor, NoOp.INSTANCE});
        return proxy;
    }
    
    private Class<?>[] prepend(Class<?> first, Class<?>... rest) {
        Class<?>[] all = new Class<?>[rest.length+1];
        all[0] = first;
        System.arraycopy(rest, 0, all, 1, rest.length);
        return all;
    }
    
    public static class ClassWithSuperclassToWorkAroundCglibBug {}
}