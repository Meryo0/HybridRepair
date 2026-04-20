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
 * @version $Revision$, $Date$
 * @since 1.1
 */
class OptionValidator
{
    /**
     * Validates whether <code>opt</code> is a permissable Option
     * shortOpt.  The rules that specify if the <code>opt</code>
     * is valid are:
     *
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
    static void validateOption(String opt) throws IllegalArgumentException
    {
        int PROBE_START_LINE_48 = 51;
		String p_opt_103_line_48 = opt;
		boolean option_validator_1_expr1_line_48 = p_opt_103_line_48 == null;
		int PROBE_END_LINE_48 = 51;
		// check that opt is not NULL
        if (option_validator_1_expr1_line_48)
        {
            return;
        }
        
        int PROBE_START_LINE_54 = 76;
		String p_opt_103_line_54 = opt;
		int option_validator_1_expr3_line_54 = p_opt_103_line_54.length();
		boolean option_validator_1_expr2_line_54 = option_validator_1_expr3_line_54 == 1;
		int PROBE_END_LINE_54 = 76;
		// handle the single character opt
        if (option_validator_1_expr2_line_54)
        {
            int PROBE_START_LINE_56 = 56;
			String p_opt_103_line_56 = opt;
			char option_validator_1_expr4_line_56 = p_opt_103_line_56.charAt(0);
			int PROBE_END_LINE_56 = 56;
			char ch = option_validator_1_expr4_line_56;

            int PROBE_START_LINE_58 = 61;
			char v_ch_104_line_58 = ch;
			boolean option_validator_1_expr6_line_58 = isValidOpt(v_ch_104_line_58);
			boolean option_validator_1_expr5_line_58 = !option_validator_1_expr6_line_58;
			int PROBE_END_LINE_58 = 61;
			if (option_validator_1_expr5_line_58)
            {
                throw new IllegalArgumentException("Illegal option name '" + ch + "'");
            }
        }

        // handle the multi character opt
        else
        {
            char[] chars = opt.toCharArray();

            for (int i = 0; i < chars.length; i++)
            {
                if (!isValidChar(chars[i]))
                {
                    throw new IllegalArgumentException("The option '" + opt + "' contains an illegal character : '" + chars[i] + "'");
                }
            }
        }
    }

    /**
     * Returns whether the specified character is a valid Option.
     *
     * @param c the option to validate
     * @return true if <code>c</code> is a letter, '?' or '@', otherwise false.
     */
    private static boolean isValidOpt(char c)
    {
        int PROBE_START_LINE_87 = 87;
		char p_c_105_line_87 = c;
		boolean option_validator_1_expr9_line_87 = isValidChar(p_c_105_line_87);
		boolean option_validator_1_expr10_line_87 = false;
		if (!option_validator_1_expr9_line_87) {
			char p_c_105_line_87_v1 = c;
			option_validator_1_expr10_line_87 = p_c_105_line_87_v1 == '?';
		}
		boolean option_validator_1_expr8_line_87 = option_validator_1_expr9_line_87
				|| option_validator_1_expr10_line_87;
		boolean option_validator_1_expr11_line_87 = false;
		if (!option_validator_1_expr8_line_87) {
			char p_c_105_line_87_v2 = c;
			option_validator_1_expr11_line_87 = p_c_105_line_87_v2 == '@';
		}
		boolean option_validator_1_expr7_line_87 = option_validator_1_expr8_line_87
				|| option_validator_1_expr11_line_87;
		int PROBE_END_LINE_87 = 87;
		return option_validator_1_expr7_line_87;
    }

    /**
     * Returns whether the specified character is a valid character.
     *
     * @param c the character to validate
     * @return true if <code>c</code> is a letter.
     */
    private static boolean isValidChar(char c)
    {
        int PROBE_START_LINE_98 = 98;
		char p_c_106_line_98 = c;
		boolean option_validator_1_expr12_line_98 = Character.isJavaIdentifierPart(p_c_106_line_98);
		int PROBE_END_LINE_98 = 98;
		return option_validator_1_expr12_line_98;
    }
}
