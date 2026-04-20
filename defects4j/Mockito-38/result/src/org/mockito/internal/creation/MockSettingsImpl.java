/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.creation;

import org.mockito.MockSettings;
import org.mockito.exceptions.Reporter;
import org.mockito.stubbing.Answer;

public class MockSettingsImpl implements MockSettings {

    private Class<?>[] extraInterfaces;
    private String name;
    private Object spiedInstance;
    private Answer<Object> defaultAnswer;

    public MockSettings extraInterfaces(Class<?>... extraInterfaces) {
        if (extraInterfaces == null || extraInterfaces.length == 0) {
            new Reporter().extraInterfacesRequiresAtLeastOneInterface();
        }
            
        for (Class<?> i : extraInterfaces) {
            if (i == null) {
                new Reporter().extraInterfacesDoesNotAcceptNullParameters();
            } else if (!i.isInterface()) {
                new Reporter().extraInterfacesAcceptsOnlyInterfaces(i);
            }
        }
        this.extraInterfaces = extraInterfaces;
        return this;
    }

    public String getMockName() {
        int PROBE_START_LINE_35 = 35;
		String f_name_178_line_35 = name;
		int PROBE_END_LINE_35 = 35;
		return f_name_178_line_35;
    }

    public Class<?>[] getExtraInterfaces() {
        int PROBE_START_LINE_39 = 39;
		Class<?>[] f_extra_interfaces_179_line_39 = extraInterfaces;
		int PROBE_END_LINE_39 = 39;
		return f_extra_interfaces_179_line_39;
    }

    public Object getSpiedInstance() {
        int PROBE_START_LINE_43 = 43;
		Object f_spied_instance_180_line_43 = spiedInstance;
		int PROBE_END_LINE_43 = 43;
		return f_spied_instance_180_line_43;
    }

    public MockSettings name(String name) {
        this.name = name;
        return this;
    }

    public MockSettings spiedInstance(Object spiedInstance) {
        this.spiedInstance = spiedInstance;
        return this;
    }

    @SuppressWarnings("unchecked")
    public MockSettings defaultAnswer(Answer defaultAnswer) {
        int PROBE_START_LINE_58 = 58;
		org.mockito.stubbing.Answer p_default_answer_183_line_58 = defaultAnswer;
		int PROBE_END_LINE_58 = 58;
		this.defaultAnswer = p_default_answer_183_line_58;
        return this;
    }

    public Answer<Object> getDefaultAnswer() {
        return defaultAnswer;
    }
}