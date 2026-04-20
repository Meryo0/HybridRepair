/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.util;

public class MockName {
    
    private final String mockName;
    private boolean surrogate;

    @SuppressWarnings("unchecked")
    public MockName(String mockName, Class classToMock) {
        int PROBE_START_LINE_14 = 19;
		String p_mock_name_283_line_14 = mockName;
		boolean mock_name_1_expr1_line_14 = p_mock_name_283_line_14 == null;
		int PROBE_END_LINE_14 = 19;
		if (mock_name_1_expr1_line_14) {
            int PROBE_START_LINE_15 = 15;
			Class p_class_to_mock_284_line_15 = classToMock;
			String mock_name_1_expr4_line_15 = toInstanceName(p_class_to_mock_284_line_15);
			int PROBE_END_LINE_15 = 15;
			this.mockName = mock_name_1_expr4_line_15;
            this.surrogate = true;
        } else {
            this.mockName = mockName;
        }
    }

    private static String toInstanceName(Class<?> clazz) {
        int PROBE_START_LINE_23 = 23;
		Class<?> p_clazz_287_line_23 = clazz;
		String mock_name_1_expr9_line_23 = p_clazz_287_line_23.getSimpleName();
		int PROBE_END_LINE_23 = 23;
		String className = mock_name_1_expr9_line_23;
        int PROBE_START_LINE_25 = 25;
		String v_class_name_288_line_25 = className;
		String mock_name_1_expr12_line_25 = v_class_name_288_line_25.substring(0, 1);
		String mock_name_1_expr11_line_25 = mock_name_1_expr12_line_25.toLowerCase();
		String v_class_name_288_line_25_v1 = className;
		String mock_name_1_expr13_line_25 = v_class_name_288_line_25_v1.substring(1);
		String mock_name_1_expr10_line_25 = mock_name_1_expr11_line_25 + mock_name_1_expr13_line_25;
		int PROBE_END_LINE_25 = 25;
		//lower case first letter
        return mock_name_1_expr10_line_25;
    }
    
    public boolean isSurrogate() {
        return surrogate;
    }
    
    @Override
    public String toString() {
        return mockName;
    }
}
