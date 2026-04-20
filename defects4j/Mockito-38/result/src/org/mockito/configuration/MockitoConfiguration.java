/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.configuration;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

import org.mockito.Mockito;
import org.mockito.internal.configuration.DefaultAnnotationEngine;
import org.mockito.stubbing.Answer;
import org.mockitousage.configuration.SmartMock;

public class MockitoConfiguration extends DefaultMockitoConfiguration implements IMockitoConfiguration {

    private Answer<Object> overriddenDefaultAnswer = null;
    private boolean cleansStackTrace;

    //for testing purposes, allow to override the configuration
    public void overrideDefaultAnswer(Answer<Object> defaultAnswer) {
        int PROBE_START_LINE_22 = 22;
		Answer<Object> p_default_answer_76_line_22 = defaultAnswer;
		int PROBE_END_LINE_22 = 22;
		this.overriddenDefaultAnswer = p_default_answer_76_line_22;
    }

    //for testing purposes, allow to override the configuration
    public void overrideCleansStackTrace(boolean cleansStackTrace) {
        int PROBE_START_LINE_27 = 27;
		boolean p_cleans_stack_trace_77_line_27 = cleansStackTrace;
		int PROBE_END_LINE_27 = 27;
		this.cleansStackTrace = p_cleans_stack_trace_77_line_27;
    }

    @Override
    public Answer<Object> getDefaultAnswer() {
        if (overriddenDefaultAnswer == null) {
            return super.getDefaultAnswer();
        } else {
            return overriddenDefaultAnswer;
        }
    }
    
    @Override
    public AnnotationEngine getAnnotationEngine() {
        return new DefaultAnnotationEngine() {
            @Override
            public Object createMockFor(Annotation annotation, Field field) {
                if (annotation instanceof SmartMock) {
                    return Mockito.mock(field.getType(), Mockito.RETURNS_SMART_NULLS);
                } else {
                    return super.createMockFor(annotation, field);
                }
            }
        };
    }
    
    @Override
    public boolean cleansStackTrace() {
        return cleansStackTrace;
    }
}