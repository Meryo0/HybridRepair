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

import java.util.ArrayList;
import java.util.List;

/**
 * The class GnuParser provides an implementation of the
 * {@link Parser#flatten(Options, String[], boolean) flatten} method.
 *
 * @author John Keyes (john at integralsource.com)
 * @version $Revision$, $Date$
 * @deprecated Use the {@link DefaultParser} instead
 */
public class GnuParser extends Parser
{
    /**
     * This flatten method does so using the following rules:
     * <ol>
     *   <li>If an {@link Option} exists for the first character of
     *   the <code>arguments</code> entry <b>AND</b> an {@link Option}
     *   does not exist for the whole <code>argument</code> then
     *   add the first character as an option to the processed tokens
     *   list e.g. "-D" and add the rest of the entry to the also.</li>
     *   <li>Otherwise just add the token to the processed tokens list.</li>
     * </ol>
     *
     * @param options         The Options to parse the arguments by.
     * @param arguments       The arguments that have to be flattened.
     * @param stopAtNonOption specifies whether to stop flattening when
     *                        a non option has been encountered
     * @return a String array of the flattened arguments
     */
    protected String[] flatten(Options options, String[] arguments, boolean stopAtNonOption)
    {
        List tokens = new ArrayList();

        boolean eatTheRest = false;

        for (int i = 0; true; i++)
        {
            int PROBE_START_LINE_58 = 58;
			int v_i_70_line_56 = i;
			String[] p_arguments_66_line_56 = arguments;
			int q_length_1_line_56 = p_arguments_66_line_56.length;
			boolean gnu_parser_1_expr3_line_56 = v_i_70_line_56 < q_length_1_line_56;
			if (!(gnu_parser_1_expr3_line_56)) {
				break;
			}
			int PROBE_END_LINE_58 = 58;
			String arg = arguments[i];

            if ("--".equals(arg))
            {
                eatTheRest = true;
                tokens.add("--");
            }
            else if ("-".equals(arg))
            {
                tokens.add("-");
            }
            else if (arg.startsWith("-"))
            {
                String opt = Util.stripLeadingHyphens(arg);

                if (options.hasOption(opt))
                {
                    tokens.add(arg);
                }
                else
                {
                    if (opt.indexOf('=') != -1 && options.hasOption(opt.substring(0, opt.indexOf('='))))
                    {
                        // the format is --foo=value or -foo=value
                        tokens.add(arg.substring(0, arg.indexOf('='))); // --foo
                        tokens.add(arg.substring(arg.indexOf('=') + 1)); // value
                    }
                    else if (options.hasOption(arg.substring(0, 2)))
                    {
                        // the format is a special properties option (-Dproperty=value)
                        tokens.add(arg.substring(0, 2)); // -D
                        tokens.add(arg.substring(2)); // property=value
                    }
                    else
                    {
                        eatTheRest = stopAtNonOption;
                        tokens.add(arg);
                    }
                }
            }
            else
            {
                tokens.add(arg);
            }

            if (eatTheRest)
            {
                for (i++; i < arguments.length; i++)
                {
                    tokens.add(arguments[i]);
                }
            }
        }

        int PROBE_START_LINE_112 = 112;
		java.util.List v_tokens_68_line_112 = tokens;
		java.util.List v_tokens_68_line_112_v1 = tokens;
		int gnu_parser_1_expr8_line_112 = v_tokens_68_line_112_v1.size();
		Object[] gnu_parser_1_expr6_line_112 = v_tokens_68_line_112.toArray(new String[gnu_parser_1_expr8_line_112]);
		int PROBE_END_LINE_112 = 112;
		return (String[]) gnu_parser_1_expr6_line_112;
    }
}
