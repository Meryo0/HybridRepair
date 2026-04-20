/**
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.cli;

/**
 * Contains useful helper methods for classes within this package.
 *
 * @author John Keyes (john at integralsource.com)
 */
class Util {

    /**
     * <p>Remove the hyphens from the begining of <code>str</code> and
     * return the new String.</p>
     *
     * @param str The string from which the hyphens should be removed.
     *
     * @return the new String.
     */
    static String stripLeadingHyphens(String str)
    {
        int PROBE_START_LINE_36 = 43;
		String p_str_116_line_36 = str;
		boolean util_1_expr1_line_36 = p_str_116_line_36.startsWith("--");
		int PROBE_END_LINE_36 = 43;
		if (util_1_expr1_line_36)
        {
            int PROBE_START_LINE_38 = 38;
			String p_str_116_line_38 = str;
			String p_str_116_line_38_v1 = str;
			int util_1_expr3_line_38 = p_str_116_line_38_v1.length();
			String util_1_expr2_line_38 = p_str_116_line_38.substring(2, util_1_expr3_line_38);
			int PROBE_END_LINE_38 = 38;
			return util_1_expr2_line_38;
        } else {
			int PROBE_START_LINE_40 = 43;
			String p_str_116_line_40 = str;
			boolean util_1_expr4_line_40 = p_str_116_line_40.startsWith("-");
			int PROBE_END_LINE_40 = 43;
			if (util_1_expr4_line_40) {
				int PROBE_START_LINE_42 = 42;
				String p_str_116_line_42 = str;
				String p_str_116_line_42_v1 = str;
				int util_1_expr6_line_42 = p_str_116_line_42_v1.length();
				String util_1_expr5_line_42 = p_str_116_line_42.substring(1, util_1_expr6_line_42);
				int PROBE_END_LINE_42 = 42;
				return util_1_expr5_line_42;
			}
		}

        return str;
    }

    /**
     * Remove the leading and trailing quotes from <code>str</code>.
     * E.g. if str is '"one two"', then 'one two' is returned.
     *
     * @param str The string from which the leading and trailing quotes
     * should be removed.
     *
     * @return The string without the leading and trailing quotes.
     */
    static String stripLeadingAndTrailingQuotes(String str)
    {
        if (str.startsWith("\"")) {
            str = str.substring(1, str.length());
        }
        if (str.endsWith("\"")) {
            str = str.substring(0, str.length()-1);
        }
        return str;
    }
}