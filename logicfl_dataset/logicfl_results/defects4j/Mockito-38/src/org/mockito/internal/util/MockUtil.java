/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.util;

import org.mockito.cglib.proxy.Callback;
import org.mockito.cglib.proxy.Enhancer;
import org.mockito.cglib.proxy.Factory;
import org.mockito.exceptions.misusing.NotAMockException;
import org.mockito.internal.MockHandler;
import org.mockito.internal.creation.MethodInterceptorFilter;
import org.mockito.internal.creation.MockSettingsImpl;
import org.mockito.internal.creation.jmock.ClassImposterizer;
import org.mockito.internal.invocation.MatchersBinder;
import org.mockito.internal.progress.MockingProgress;
import org.mockito.internal.util.copy.LenientCopyTool;

public class MockUtil {
    
    private final CreationValidator creationValidator;

    public MockUtil(CreationValidator creationValidator) {
        int PROBE_START_LINE_24 = 24;
		org.mockito.internal.util.CreationValidator p_creation_validator_289_line_24 = creationValidator;
		int PROBE_END_LINE_24 = 24;
		this.creationValidator = p_creation_validator_289_line_24;
    }
    
    public MockUtil() {
        this(new CreationValidator());
    }

    public <T> T createMock(Class<T> classToMock, MockingProgress progress, MockSettingsImpl settings) {
        int PROBE_START_LINE_32 = 32;
		org.mockito.internal.util.CreationValidator f_creation_validator_290_line_32 = creationValidator;
		Class<T> p_class_to_mock_291_line_32 = classToMock;
		int PROBE_END_LINE_32 = 32;
		f_creation_validator_290_line_32.validateType(p_class_to_mock_291_line_32);
        int PROBE_START_LINE_33 = 33;
		org.mockito.internal.util.CreationValidator f_creation_validator_290_line_33 = creationValidator;
		Class<T> p_class_to_mock_291_line_33 = classToMock;
		org.mockito.internal.creation.MockSettingsImpl p_settings_293_line_33 = settings;
		Class<?>[] mock_util_1_expr8_line_33 = p_settings_293_line_33.getExtraInterfaces();
		int PROBE_END_LINE_33 = 33;
		f_creation_validator_290_line_33.validateExtraInterfaces(p_class_to_mock_291_line_33, mock_util_1_expr8_line_33);
        
        int PROBE_START_LINE_35 = 35;
		org.mockito.internal.creation.MockSettingsImpl p_settings_293_line_35 = settings;
		String mock_util_1_expr10_line_35 = p_settings_293_line_35.getMockName();
		Class<T> p_class_to_mock_291_line_35 = classToMock;
		int PROBE_END_LINE_35 = 35;
		MockName mockName = new MockName(mock_util_1_expr10_line_35, p_class_to_mock_291_line_35);
        int PROBE_START_LINE_36 = 36;
		org.mockito.internal.util.MockName v_mock_name_294_line_36 = mockName;
		org.mockito.internal.progress.MockingProgress p_progress_292_line_36 = progress;
		org.mockito.internal.creation.MockSettingsImpl p_settings_293_line_36 = settings;
		int PROBE_END_LINE_36 = 36;
		MockHandler<T> mockHandler = new MockHandler<T>(v_mock_name_294_line_36, p_progress_292_line_36, new MatchersBinder(), p_settings_293_line_36);
        int PROBE_START_LINE_37 = 37;
		Class<T> p_class_to_mock_291_line_37 = classToMock;
		MockHandler<T> v_mock_handler_295_line_37 = mockHandler;
		int PROBE_END_LINE_37 = 37;
		MethodInterceptorFilter<MockHandler<T>> filter = new MethodInterceptorFilter<MockHandler<T>>(p_class_to_mock_291_line_37, v_mock_handler_295_line_37);
        int PROBE_START_LINE_38 = 38;
		org.mockito.internal.creation.MockSettingsImpl p_settings_293_line_38 = settings;
		Class<?>[] mock_util_1_expr14_line_38 = p_settings_293_line_38.getExtraInterfaces();
		int PROBE_END_LINE_38 = 38;
		Class<?>[] interfaces = mock_util_1_expr14_line_38;
        int PROBE_START_LINE_39 = 39;
		Class<?>[] v_interfaces_297_line_39 = interfaces;
		boolean mock_util_1_expr16_line_39 = v_interfaces_297_line_39 == null;
		Class<?>[] v_interfaces_297_line_39_v1 = null;
		if (!mock_util_1_expr16_line_39) {
			v_interfaces_297_line_39_v1 = interfaces;
		}
		Class<?>[] mock_util_1_expr15_line_39 = mock_util_1_expr16_line_39
				? new Class<?>[0]
				: v_interfaces_297_line_39_v1;
		int PROBE_END_LINE_39 = 39;
		Class<?>[] ancillaryTypes = mock_util_1_expr15_line_39;
        int PROBE_START_LINE_40 = 40;
		org.mockito.internal.creation.MockSettingsImpl p_settings_293_line_40 = settings;
		Object mock_util_1_expr18_line_40 = p_settings_293_line_40.getSpiedInstance();
		int PROBE_END_LINE_40 = 40;
		Object spiedInstance = mock_util_1_expr18_line_40;
        
        T mock = ClassImposterizer.INSTANCE.imposterise(filter, classToMock, ancillaryTypes);
        
        if (spiedInstance != null) {
            new LenientCopyTool().copyToMock(spiedInstance, mock);
        }
        
        return mock;
    }

    public <T> void resetMock(T mock, MockingProgress progress) {
        MockHandler<T> oldMockHandler = (MockHandler<T>) getMockHandler(mock);
        MockHandler<T> newMockHandler = new MockHandler<T>(oldMockHandler);
        MethodInterceptorFilter<MockHandler<T>> newFilter = new MethodInterceptorFilter<MockHandler<T>>(Object.class, newMockHandler);
        ((Factory) mock).setCallback(0, newFilter);
    }

    public <T> MockHandler<T> getMockHandler(T mock) {
        if (mock == null) {
            throw new NotAMockException("Argument should be a mock, but is null!");
        }

        if (isMockitoMock(mock)) {
            return getInterceptor(mock).getDelegate();
        } else {
            throw new NotAMockException("Argument should be a mock, but is: " + mock.getClass());
        }
    }

    private <T> boolean isMockitoMock(T mock) {
        return Enhancer.isEnhanced(mock.getClass()) && getInterceptor(mock) != null;
    }

    public boolean isMock(Object mock) {
        return mock != null && isMockitoMock(mock);
    }

    @SuppressWarnings("unchecked")
    private <T> MethodInterceptorFilter<MockHandler<T>> getInterceptor(T mock) {
        Factory factory = (Factory) mock;
        Callback callback = factory.getCallback(0);
        if (callback instanceof MethodInterceptorFilter) {
            return (MethodInterceptorFilter<MockHandler<T>>) callback;
        }
        return null;
    }

    public MockName getMockName(Object mock) {
        return getMockHandler(mock).getMockName();
    }
}