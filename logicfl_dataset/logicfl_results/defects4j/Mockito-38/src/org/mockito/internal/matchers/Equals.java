/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.matchers;

import org.hamcrest.Description;
import org.hamcrest.SelfDescribing;
import org.mockito.ArgumentMatcher;

public class Equals extends ArgumentMatcher<Object> implements ContainsExtraTypeInformation {

    private final Object wanted;

    public Equals(Object wanted) {
        int PROBE_START_LINE_16 = 16;
		Object p_wanted_220_line_16 = wanted;
		int PROBE_END_LINE_16 = 16;
		this.wanted = p_wanted_220_line_16;
    }

    public boolean matches(Object actual) {
        int PROBE_START_LINE_20 = 22;
		Object f_wanted_221_line_20 = this.wanted;
		boolean equals_1_expr4_line_20 = f_wanted_221_line_20 == null;
		int PROBE_END_LINE_20 = 22;
		if (equals_1_expr4_line_20) {
            return actual == null;
        }
        int PROBE_START_LINE_23 = 23;
		Object f_wanted_221_line_23 = wanted;
		Object p_actual_222_line_23 = actual;
		boolean equals_1_expr7_line_23 = f_wanted_221_line_23.equals(p_actual_222_line_23);
		int PROBE_END_LINE_23 = 23;
		return equals_1_expr7_line_23;
    }

    public void describeTo(Description description) {
        int PROBE_START_LINE_27 = 27;
		org.hamcrest.Description p_description_223_line_27 = description;
		Object f_wanted_221_line_27 = wanted;
		String equals_1_expr9_line_27 = describe(f_wanted_221_line_27);
		int PROBE_END_LINE_27 = 27;
		p_description_223_line_27.appendText(equals_1_expr9_line_27);
    }

    public String describe(Object object) {
        int PROBE_START_LINE_31 = 31;
		String equals_1_expr10_line_31 = quoting();
		int PROBE_END_LINE_31 = 31;
		String text = equals_1_expr10_line_31;
        int PROBE_START_LINE_32 = 36;
		Object p_object_224_line_32 = object;
		boolean equals_1_expr11_line_32 = p_object_224_line_32 == null;
		int PROBE_END_LINE_32 = 36;
		if (equals_1_expr11_line_32) {
            text+="null";
        } else {
            int PROBE_START_LINE_35 = 35;
			Object p_object_224_line_35 = object;
			String equals_1_expr13_line_35 = p_object_224_line_35.toString();
			int PROBE_END_LINE_35 = 35;
			text+=equals_1_expr13_line_35;
        }
        int PROBE_START_LINE_37 = 37;
		String equals_1_expr15_line_37 = quoting();
		int PROBE_END_LINE_37 = 37;
		text+= equals_1_expr15_line_37;
        int PROBE_START_LINE_38 = 38;
		String v_text_225_line_38 = text;
		int PROBE_END_LINE_38 = 38;
		return v_text_225_line_38;
    }

    private String quoting() {
        int PROBE_START_LINE_42 = 48;
		Object f_wanted_221_line_42 = wanted;
		boolean equals_1_expr16_line_42 = f_wanted_221_line_42 instanceof String;
		int PROBE_END_LINE_42 = 48;
		if (equals_1_expr16_line_42) {
            return "\"";
        } else {
			int PROBE_START_LINE_44 = 48;
			Object f_wanted_221_line_44 = wanted;
			boolean equals_1_expr17_line_44 = f_wanted_221_line_44 instanceof Character;
			int PROBE_END_LINE_44 = 48;
			if (equals_1_expr17_line_44) {
				return "'";
			} else {
				return "";
			}
		}
    }

    protected final Object getWanted() {
        return wanted;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || !this.getClass().equals(o.getClass())) {
            return false;
        }
        Equals other = (Equals) o;
        return this.wanted == null && other.wanted == null || this.wanted != null && this.wanted.equals(other.wanted);
    }

    @Override
    public int hashCode() {
        throw new UnsupportedOperationException("hashCode() is not supported");
    }

    public SelfDescribing withExtraTypeInfo() {
        return new SelfDescribing() {
            public void describeTo(Description description) {
                description.appendText(describe("("+ wanted.getClass().getSimpleName() +") " + wanted));
            }};
    }

    public boolean typeMatches(Object object) {
        return wanted != null && object != null && object.getClass() == wanted.getClass();
    }
}