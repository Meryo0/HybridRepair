/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.progress;

import org.mockito.internal.debugging.DebuggingInfo;
import org.mockito.internal.invocation.Invocation;
import org.mockito.internal.verification.api.VerificationMode;

public class ThreadSafeMockingProgress implements MockingProgress {
    
    private static ThreadLocal<MockingProgress> mockingProgress = new ThreadLocal<MockingProgress>();

    static MockingProgress threadSafely() {
        int PROBE_START_LINE_16 = 18;
		ThreadLocal<org.mockito.internal.progress.MockingProgress> f_mocking_progress_243_line_16 = mockingProgress;
		org.mockito.internal.progress.MockingProgress thread_safe_mocking_progress_1_expr3_line_16 = f_mocking_progress_243_line_16
				.get();
		boolean thread_safe_mocking_progress_1_expr2_line_16 = thread_safe_mocking_progress_1_expr3_line_16 == null;
		int PROBE_END_LINE_16 = 18;
		if (thread_safe_mocking_progress_1_expr2_line_16) {
            int PROBE_START_LINE_17 = 17;
			ThreadLocal<org.mockito.internal.progress.MockingProgress> f_mocking_progress_243_line_17 = mockingProgress;
			int PROBE_END_LINE_17 = 17;
			f_mocking_progress_243_line_17.set(new MockingProgressImpl());
        }
        int PROBE_START_LINE_19 = 19;
		ThreadLocal<org.mockito.internal.progress.MockingProgress> f_mocking_progress_243_line_19 = mockingProgress;
		org.mockito.internal.progress.MockingProgress thread_safe_mocking_progress_1_expr6_line_19 = f_mocking_progress_243_line_19
				.get();
		int PROBE_END_LINE_19 = 19;
		return thread_safe_mocking_progress_1_expr6_line_19;
    }
    
    public void reportOngoingStubbing(IOngoingStubbing iOngoingStubbing) {
        threadSafely().reportOngoingStubbing(iOngoingStubbing);
    }

    public IOngoingStubbing pullOngoingStubbing() {
        return threadSafely().pullOngoingStubbing();
    }
    
    public void verificationStarted(VerificationMode verify) {
        threadSafely().verificationStarted(verify);
    }

    public VerificationMode pullVerificationMode() {
        return threadSafely().pullVerificationMode();
    }

    public void stubbingStarted() {
        threadSafely().stubbingStarted();
    }

    public void validateState() {
        int PROBE_START_LINE_43 = 43;
		org.mockito.internal.progress.MockingProgress thread_safe_mocking_progress_1_expr8_line_43 = threadSafely();
		int PROBE_END_LINE_43 = 43;
		thread_safe_mocking_progress_1_expr8_line_43.validateState();
    }

    public void stubbingCompleted(Invocation invocation) {
        threadSafely().stubbingCompleted(invocation);
    }
    
    public String toString() {
        return threadSafely().toString();
    }

    public void reset() {
        threadSafely().reset();
    }

    public void resetOngoingStubbing() {
        int PROBE_START_LINE_59 = 59;
		org.mockito.internal.progress.MockingProgress thread_safe_mocking_progress_1_expr10_line_59 = threadSafely();
		int PROBE_END_LINE_59 = 59;
		thread_safe_mocking_progress_1_expr10_line_59.resetOngoingStubbing();
    }

    public ArgumentMatcherStorage getArgumentMatcherStorage() {
        return threadSafely().getArgumentMatcherStorage();
    }

    public DebuggingInfo getDebuggingInfo() {
        return threadSafely().getDebuggingInfo();
    }
}