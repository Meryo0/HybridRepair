/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito;

import org.mockito.internal.progress.ThreadSafeMockingProgress;

public class StateMaster {
    
    private final ThreadSafeMockingProgress mockingProgress = new ThreadSafeMockingProgress();

    public void reset() {
        mockingProgress.reset();
    }
    
    public void validate() {
        int PROBE_START_LINE_18 = 18;
		org.mockito.internal.progress.ThreadSafeMockingProgress f_mocking_progress_74_line_18 = mockingProgress;
		int PROBE_END_LINE_18 = 18;
		f_mocking_progress_74_line_18.validateState();
    }
}