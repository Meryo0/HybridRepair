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
 * Validates an Option string.
 *
 * @author John Keyes ( john at integralsource.com )
 */
public class OptionValidator {

    /**
     * <p>Validates whether <code>opt</code> is a permissable Option
     * shortOpt.  The rules that specify if the <code>opt</code>
     * is valid are:</p>
     * <ul>
     *  <li><code>opt</code> is not NULL</li>
     *  <li>a single character <code>opt</code> that is either
     *  ' '(special case), '?', '@' or a letter</li>
     *  <li>a multi character <code>opt</code> that only contains
     *  letters.</li>
     * </ul>
     *
     * @param opt The option string to validate
     * @throws IllegalArgumentException if the Option is not valid.
     */
    static void validateOption(String opt)
                        throws IllegalArgumentException
    {
        int PROBE_START_LINE_45 = 76;
		String p_opt_50_line_45 = opt;
		boolean option_validator_1_expr1_line_45 = p_opt_50_line_45 == null;
		int PROBE_END_LINE_45 = 76;
		// check that opt is not NULL
        if (option_validator_1_expr1_line_45)
        {
            return;
        } else {
			int PROBE_START_LINE_51 = 76;
			String p_opt_50_line_51 = opt;
			int option_validator_1_expr3_line_51 = p_opt_50_line_51.length();
			boolean option_validator_1_expr2_line_51 = option_validator_1_expr3_line_51 == 1;
			int PROBE_END_LINE_51 = 76;
			if (option_validator_1_expr2_line_51) {
				int PROBE_START_LINE_53 = 53;
				String p_opt_50_line_53 = opt;
				char option_validator_1_expr4_line_53 = p_opt_50_line_53.charAt(0);
				int PROBE_END_LINE_53 = 53;
				char ch = option_validator_1_expr4_line_53;
				int PROBE_START_LINE_55 = 59;
				char v_ch_51_line_55 = ch;
				boolean option_validator_1_expr6_line_55 = isValidOpt(v_ch_51_line_55);
				boolean option_validator_1_expr5_line_55 = !option_validator_1_expr6_line_55;
				int PROBE_END_LINE_55 = 59;
				if (option_validator_1_expr5_line_55) {
					throw new IllegalArgumentException("illegal option value '" + ch + "'");
				}
			} else {
				char[] chars = opt.toCharArray();
				for (int i = 0; i < chars.length; i++) {
					if (!isValidChar(chars[i])) {
						throw new IllegalArgumentException("opt contains illegal character value '" + chars[i] + "'");
					}
				}
			}
		}
    }

    /**
     * <p>Returns whether the specified character is a valid Option.</p>
     *
     * @param c the option to validate
     * @return true if <code>c</code> is a letter, ' ', '?' or '@', 
     * otherwise false.
     */
    private static boolean isValidOpt(char c)
    {
        int PROBE_START_LINE_88 = 88;
		char p_c_52_line_88 = c;
		boolean option_validator_1_expr9_line_88 = isValidChar(p_c_52_line_88);
		boolean option_validator_1_expr10_line_88 = false;
		boolean option_validator_1_expr12_line_88 = false;
		boolean option_validator_1_expr14_line_88 = false;
		if (!option_validator_1_expr9_line_88) {
			char p_c_52_line_88_v1 = c;
			boolean option_validator_1_expr11_line_88 = p_c_52_line_88_v1 == ' ';
			option_validator_1_expr10_line_88 = (option_validator_1_expr11_line_88);
			if (!option_validator_1_expr10_line_88) {
				char p_c_52_line_88_v2 = c;
				boolean option_validator_1_expr13_line_88 = p_c_52_line_88_v2 == '?';
				option_validator_1_expr12_line_88 = (option_validator_1_expr13_line_88);
				if (!option_validator_1_expr12_line_88) {
					char p_c_52_line_88_v3 = c;
					option_validator_1_expr14_line_88 = p_c_52_line_88_v3 == '@';
				}
			}
		}
		boolean option_validator_1_expr8_line_88 = option_validator_1_expr9_line_88 || option_validator_1_expr10_line_88
				|| option_validator_1_expr12_line_88 || option_validator_1_expr14_line_88;
		boolean option_validator_1_expr7_line_88 = (option_validator_1_expr8_line_88);
		int PROBE_END_LINE_88 = 88;
		return option_validator_1_expr7_line_88;
    }

    /**
     * <p>Returns whether the specified character is a valid character.</p>
     *
     * @param c the character to validate
     * @return true if <code>c</code> is a letter.
     */
    private static boolean isValidChar(char c)
    {
        int PROBE_START_LINE_99 = 99;
		char p_c_53_line_99 = c;
		boolean option_validator_1_expr15_line_99 = Character.isJavaIdentifierPart(p_c_53_line_99);
		int PROBE_END_LINE_99 = 99;
		return option_validator_1_expr15_line_99;
    }
}