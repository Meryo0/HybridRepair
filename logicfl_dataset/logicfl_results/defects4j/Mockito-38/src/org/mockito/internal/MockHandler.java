/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal;

import java.lang.reflect.Method;
import java.util.List;

import org.mockito.cglib.proxy.MethodInterceptor;
import org.mockito.cglib.proxy.MethodProxy;
import org.mockito.internal.creation.MockSettingsImpl;
import org.mockito.internal.invocation.Invocation;
import org.mockito.internal.invocation.InvocationMatcher;
import org.mockito.internal.invocation.MatchersBinder;
import org.mockito.internal.invocation.realmethod.FilteredCGLIBProxyRealMethod;
import org.mockito.internal.progress.MockingProgress;
import org.mockito.internal.progress.SequenceNumber;
import org.mockito.internal.stubbing.MockitoStubber;
import org.mockito.internal.stubbing.OngoingStubbingImpl;
import org.mockito.internal.stubbing.VoidMethodStubbableImpl;
import org.mockito.internal.util.MockName;
import org.mockito.internal.verification.RegisteredInvocations;
import org.mockito.internal.verification.VerificationDataImpl;
import org.mockito.internal.verification.VerificationModeFactory;
import org.mockito.internal.verification.api.VerificationMode;
import org.mockito.stubbing.Answer;
import org.mockito.stubbing.VoidMethodStubbable;

/**
 * Invocation handler set on mock objects.
 *
 * @param <T> type of mock object to handle
 */
public class MockHandler<T> implements MethodInterceptor {

    private final RegisteredInvocations registeredInvocations;
    private final MockitoStubber mockitoStubber;
    private final MatchersBinder matchersBinder;
    private final MockingProgress mockingProgress;
    private final MockName mockName;
    private final MockSettingsImpl mockSettings;

    public MockHandler(MockName mockName, MockingProgress mockingProgress, MatchersBinder matchersBinder, MockSettingsImpl mockSettings) {
        int PROBE_START_LINE_45 = 45;
		org.mockito.internal.util.MockName p_mock_name_129_line_45 = mockName;
		int PROBE_END_LINE_45 = 45;
		this.mockName = p_mock_name_129_line_45;
        int PROBE_START_LINE_46 = 46;
		org.mockito.internal.progress.MockingProgress p_mocking_progress_130_line_46 = mockingProgress;
		int PROBE_END_LINE_46 = 46;
		this.mockingProgress = p_mocking_progress_130_line_46;
        int PROBE_START_LINE_47 = 47;
		org.mockito.internal.invocation.MatchersBinder p_matchers_binder_131_line_47 = matchersBinder;
		int PROBE_END_LINE_47 = 47;
		this.matchersBinder = p_matchers_binder_131_line_47;
        int PROBE_START_LINE_48 = 48;
		org.mockito.internal.creation.MockSettingsImpl p_mock_settings_132_line_48 = mockSettings;
		int PROBE_END_LINE_48 = 48;
		this.mockSettings = p_mock_settings_132_line_48;
        int PROBE_START_LINE_49 = 49;
		org.mockito.internal.progress.MockingProgress p_mocking_progress_130_line_49 = mockingProgress;
		int PROBE_END_LINE_49 = 49;
		this.mockitoStubber = new MockitoStubber(p_mocking_progress_130_line_49);
        this.registeredInvocations = new RegisteredInvocations();
    }
    
    public MockHandler(MockHandler<T> oldMockHandler) {
        this(oldMockHandler.mockName, oldMockHandler.mockingProgress, oldMockHandler.matchersBinder, oldMockHandler.mockSettings);
    }

    public Object intercept(Object proxy, Method method, Object[] args, MethodProxy methodProxy) throws Throwable {
        if (mockitoStubber.hasAnswersForStubbing()) {
            //stubbing voids with stubVoid() or doAnswer() style
            Invocation invocation = new Invocation(proxy, method, args, SequenceNumber.next(), new FilteredCGLIBProxyRealMethod(methodProxy));
            InvocationMatcher invocationMatcher = matchersBinder.bindMatchers(mockingProgress.getArgumentMatcherStorage(), invocation);
            mockitoStubber.setMethodForStubbing(invocationMatcher);
            return null;
        }
        VerificationMode verificationMode = mockingProgress.pullVerificationMode();

        Invocation invocation = new Invocation(proxy, method, args, SequenceNumber.next(), new FilteredCGLIBProxyRealMethod(methodProxy));
        InvocationMatcher invocationMatcher = matchersBinder.bindMatchers(mockingProgress.getArgumentMatcherStorage(), invocation);
        
        mockingProgress.validateState();

        if (verificationMode != null) {
            VerificationDataImpl data = new VerificationDataImpl(registeredInvocations.getAll(), invocationMatcher);
            verificationMode.verify(data);
            return null;
        }

        registeredInvocations.add(invocationMatcher.getInvocation());
        mockitoStubber.setInvocationForPotentialStubbing(invocationMatcher);
        OngoingStubbingImpl<T> ongoingStubbing = new OngoingStubbingImpl<T>(mockitoStubber, registeredInvocations);
        mockingProgress.reportOngoingStubbing(ongoingStubbing);

        Answer<?> stubbedAnswer = mockitoStubber.findAnswerFor(invocation);
        if (!invocation.isVoid() && stubbedAnswer == null) {
            //it is a return-value interaction but not stubbed. This *might* be a problem
            mockingProgress.getDebuggingInfo().addPotentiallyUnstubbed(invocationMatcher);
        }
        
        if (stubbedAnswer != null) {
            mockingProgress.getDebuggingInfo().reportUsedStub(invocationMatcher);
            return stubbedAnswer.answer(invocation);
        } else {
            Object ret = mockSettings.getDefaultAnswer().answer(invocation);
            
            //redo setting invocation for potential stubbing in case of partial mocks / spies.
            //Without it, the real method inside 'when' might have delegated 
            //to other self method and overwrite the intended stubbed method with a different one.
            mockitoStubber.setInvocationForPotentialStubbing(invocationMatcher);
            return ret;
        }
    }

    public void verifyNoMoreInteractions() {
        VerificationDataImpl data = new VerificationDataImpl(registeredInvocations.getAll(), null);
        VerificationModeFactory.noMoreInteractions().verify(data);
    }

    public VoidMethodStubbable<T> voidMethodStubbable(T mock) {
        return new VoidMethodStubbableImpl<T>(mock, mockitoStubber);
    }

    public List<Invocation> getRegisteredInvocations() {
        return registeredInvocations.getAll();
    }

    public MockName getMockName() {
        return mockName;
    }

    @SuppressWarnings("unchecked")
    public void setAnswersForStubbing(List<Answer> answers) {
        mockitoStubber.setAnswersForStubbing(answers);
    }
}