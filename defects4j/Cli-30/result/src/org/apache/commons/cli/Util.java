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
 * @version $Revision$, $Date$
 */
class Util
{
    /**
     * Remove the hyphens from the begining of <code>str</code> and
     * return the new String.
     *
     * @param str The string from which the hyphens should be removed.
     *
     * @return the new String.
     */
    static String stripLeadingHyphens(String str)
    {
        int PROBE_START_LINE_38 = 41;
		String p_str_181_line_38 = str;
		boolean util_1_expr1_line_38 = p_str_181_line_38 == null;
		int PROBE_END_LINE_38 = 41;
		if (util_1_expr1_line_38)
        {
            return null;
        }
        int PROBE_START_LINE_42 = 49;
		String p_str_181_line_42 = str;
		boolean util_1_expr2_line_42 = p_str_181_line_42.startsWith("--");
		int PROBE_END_LINE_42 = 49;
		if (util_1_expr2_line_42)
        {
            return str.substring(2, str.length());
        } else {
			int PROBE_START_LINE_46 = 49;
			String p_str_181_line_46 = str;
			boolean util_1_expr3_line_46 = p_str_181_line_46.startsWith("-");
			int PROBE_END_LINE_46 = 49;
			if (util_1_expr3_line_46) {
				return str.substring(1, str.length());
			}
		}

        int PROBE_START_LINE_51 = 51;
		String p_str_181_line_51 = str;
		int PROBE_END_LINE_51 = 51;
		return p_str_181_line_51;
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
        int length = str.length();
        if (length > 1 && str.startsWith("\"") && str.endsWith("\"") && str.substring(1, length - 1).indexOf('"') == -1)
        {
            str = str.substring(1, length - 1);
        }
        
        return str;
    }
}
