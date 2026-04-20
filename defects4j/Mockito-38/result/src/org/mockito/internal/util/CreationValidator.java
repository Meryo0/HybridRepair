/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.util;

import org.mockito.exceptions.Reporter;
import org.mockito.internal.creation.jmock.ClassImposterizer;

@SuppressWarnings("unchecked")
public class CreationValidator {

    public void validateType(Class classToMock) {
        int PROBE_START_LINE_14 = 16;
		org.mockito.internal.creation.jmock.ClassImposterizer q_instance_1_line_14 = ClassImposterizer.INSTANCE;
		Class p_class_to_mock_280_line_14 = classToMock;
		boolean creation_validator_1_expr2_line_14 = q_instance_1_line_14.canImposterise(p_class_to_mock_280_line_14);
		boolean creation_validator_1_expr1_line_14 = !creation_validator_1_expr2_line_14;
		int PROBE_END_LINE_14 = 16;
		if (creation_validator_1_expr1_line_14) {
            new Reporter().cannotMockFinalClass(classToMock);
        }
    }
    
    public void validateExtraInterfaces(Class classToMock, Class ... extraInterfaces) {
        int PROBE_START_LINE_20 = 22;
		Class[] p_extra_interfaces_282_line_20 = extraInterfaces;
		boolean creation_validator_1_expr3_line_20 = p_extra_interfaces_282_line_20 == null;
		int PROBE_END_LINE_20 = 22;
		if (creation_validator_1_expr3_line_20) {
            return;
        }
        
        for (Class i : extraInterfaces) {
            if (classToMock == i) {
                new Reporter().extraInterfacesCannotContainMockedType(classToMock);
            }
        }
    }
}