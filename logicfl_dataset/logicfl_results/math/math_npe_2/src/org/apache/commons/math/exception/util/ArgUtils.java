/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.math.exception.util;

import java.util.List;
import java.util.ArrayList;

/**
 * Utility class for transforming the list of arguments passed to
 * constructors of exceptions.
 *
 * @version $Id$
 */
public class ArgUtils {
    /**
     * Class contains only static methods.
     */
    private ArgUtils() {}

    /**
     * Transform a multidimensional array into a one-dimensional list.
     *
     * @param array Array (possibly multidimensional).
     * @return a list of all the {@code Object} instances contained in
     * {@code array}.
     */
    public static Object[] flatten(Object[] array) {
        final List<Object> list = new ArrayList<Object>();
        int PROBE_START_LINE_43 = 53;
		Object[] p_array_17_line_43 = array;
		boolean arg_utils_1_expr2_line_43 = p_array_17_line_43 != null;
		int PROBE_END_LINE_43 = 53;
		if (arg_utils_1_expr2_line_43) {
            int PROBE_START_LINE_44 = 52;
			Object[] p_array_17_line_44 = array;
			int PROBE_END_LINE_44 = 52;
			for (Object o : p_array_17_line_44) {
                int PROBE_START_LINE_45 = 51;
				Object v_o_19_line_45 = o;
				boolean arg_utils_1_expr3_line_45 = v_o_19_line_45 instanceof Object[];
				int PROBE_END_LINE_45 = 51;
				if (arg_utils_1_expr3_line_45) {
                    int PROBE_START_LINE_46 = 48;
					Object v_o_19_line_46 = o;
					Object[] arg_utils_1_expr4_line_46 = flatten((Object[]) v_o_19_line_46);
					int PROBE_END_LINE_46 = 48;
					for (Object oR : arg_utils_1_expr4_line_46) {
                        int PROBE_START_LINE_47 = 47;
						List<Object> v_list_18_line_47 = list;
						Object v_o_r_20_line_47 = oR;
						int PROBE_END_LINE_47 = 47;
						v_list_18_line_47.add(v_o_r_20_line_47);
                    }
                } else {
                    int PROBE_START_LINE_50 = 50;
					List<Object> v_list_18_line_50 = list;
					Object v_o_19_line_50 = o;
					int PROBE_END_LINE_50 = 50;
					v_list_18_line_50.add(v_o_19_line_50);
                }
            }
        }
        int PROBE_START_LINE_54 = 54;
		List<Object> v_list_18_line_54 = list;
		Object[] arg_utils_1_expr8_line_54 = v_list_18_line_54.toArray();
		int PROBE_END_LINE_54 = 54;
		return arg_utils_1_expr8_line_54;
    }
}
