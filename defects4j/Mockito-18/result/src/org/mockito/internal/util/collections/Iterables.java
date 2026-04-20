package org.mockito.internal.util.collections;

import java.util.Enumeration;
import java.util.LinkedList;
import java.util.List;

/**
 * Utilities for Iterables
 */
public class Iterables {

    /**
     * Converts enumeration into iterable
     */
    public static <T> Iterable<T> toIterable(Enumeration<T> in) {
        List<T> out = new LinkedList<T>();
        while(true) {
            int PROBE_START_LINE_17 = 17;
			Enumeration<T> p_in_25_line_17 = in;
			boolean iterables_1_expr2_line_17 = p_in_25_line_17.hasMoreElements();
			if (!(iterables_1_expr2_line_17)) {
				break;
			}
			int PROBE_END_LINE_17 = 17;
			out.add(in.nextElement());
        }
        int PROBE_START_LINE_20 = 20;
		List<T> v_out_26_line_20 = out;
		int PROBE_END_LINE_20 = 20;
		return v_out_26_line_20;
    }
}
