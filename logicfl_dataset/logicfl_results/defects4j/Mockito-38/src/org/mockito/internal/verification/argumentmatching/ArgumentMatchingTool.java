/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.verification.argumentmatching;

import java.util.LinkedList;
import java.util.List;

import org.hamcrest.Matcher;
import org.hamcrest.StringDescription;
import org.mockito.internal.matchers.ContainsExtraTypeInformation;

@SuppressWarnings("unchecked")
public class ArgumentMatchingTool {

    /**
     * Suspiciously not matching arguments are those that don't much, the toString() representation is the same but types are different.
     */
    public Integer[] getSuspiciouslyNotMatchingArgsIndexes(List<Matcher> matchers, Object[] arguments) {
        int PROBE_START_LINE_21 = 23;
		List<org.hamcrest.Matcher> p_matchers_310_line_21 = matchers;
		int argument_matching_tool_1_expr2_line_21 = p_matchers_310_line_21.size();
		Object[] p_arguments_311_line_21 = arguments;
		int q_length_2_line_21 = p_arguments_311_line_21.length;
		boolean argument_matching_tool_1_expr1_line_21 = argument_matching_tool_1_expr2_line_21 != q_length_2_line_21;
		int PROBE_END_LINE_21 = 23;
		if (argument_matching_tool_1_expr1_line_21) {
            return new Integer[0];
        }
        
        List<Integer> suspicious = new LinkedList<Integer>();
        int i = 0;
        int PROBE_START_LINE_27 = 35;
		List<org.hamcrest.Matcher> p_matchers_310_line_27 = matchers;
		int PROBE_END_LINE_27 = 35;
		for (Matcher m : p_matchers_310_line_27) {
            int PROBE_START_LINE_28 = 33;
			org.hamcrest.Matcher v_m_314_line_28 = m;
			boolean argument_matching_tool_1_expr5_line_28 = v_m_314_line_28 instanceof ContainsExtraTypeInformation;
			boolean argument_matching_tool_1_expr4_line_28 = argument_matching_tool_1_expr5_line_28
					&& !safelyMatches(m, arguments[i]) && toStringEquals(m, arguments[i])
					&& !((ContainsExtraTypeInformation) m).typeMatches(arguments[i]);
			int PROBE_END_LINE_28 = 33;
			if (argument_matching_tool_1_expr4_line_28) {
                suspicious.add(i);
            }
            i++;
        }
        return suspicious.toArray(new Integer[0]);
    }

    private boolean safelyMatches(Matcher m, Object arg) {
        try {
            int PROBE_START_LINE_41 = 41;
			org.hamcrest.Matcher p_m_315_line_41 = m;
			Object p_arg_316_line_41 = arg;
			boolean argument_matching_tool_1_expr6_line_41 = p_m_315_line_41.matches(p_arg_316_line_41);
			int PROBE_END_LINE_41 = 41;
			return argument_matching_tool_1_expr6_line_41;
        } catch (Throwable t) {
            return false;
        }
    }

    private boolean toStringEquals(Matcher m, Object arg) {
        int PROBE_START_LINE_48 = 48;
		org.hamcrest.Matcher p_m_317_line_48 = m;
		String argument_matching_tool_1_expr9_line_48 = StringDescription.toString(p_m_317_line_48);
		Object p_arg_318_line_48 = arg;
		String argument_matching_tool_1_expr8_line_48 = p_arg_318_line_48.toString();
		boolean argument_matching_tool_1_expr7_line_48 = argument_matching_tool_1_expr9_line_48
				.equals(argument_matching_tool_1_expr8_line_48);
		int PROBE_END_LINE_48 = 48;
		return argument_matching_tool_1_expr7_line_48;
    }
}
