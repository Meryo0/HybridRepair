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
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Properties;
import java.util.Collection;

/**
 * <code>Parser</code> creates {@link CommandLine}s.
 *
 * @author John Keyes (john at integralsource.com)
 * @version $Revision$, $Date$
 * @deprecated The two-pass parsing with the flatten method is not enough flexible to handle complex cases
 */
public abstract class Parser implements CommandLineParser
{
    /** commandline instance */
    protected CommandLine cmd;

    /** current Options */
    private Options options;

    /** list of required options strings */
    private List requiredOptions;

    protected void setOptions(final Options options)
    {
        int PROBE_START_LINE_48 = 48;
		org.apache.commons.cli.Options p_options_127_line_48 = options;
		int PROBE_END_LINE_48 = 48;
		this.options = p_options_127_line_48;
        int PROBE_START_LINE_49 = 49;
		org.apache.commons.cli.Options p_options_127_line_49 = options;
		java.util.List parser_1_expr8_line_49 = p_options_127_line_49.getRequiredOptions();
		int PROBE_END_LINE_49 = 49;
		this.requiredOptions = new ArrayList(parser_1_expr8_line_49);
    }

    protected Options getOptions()
    {
        int PROBE_START_LINE_54 = 54;
		org.apache.commons.cli.Options f_options_128_line_54 = options;
		int PROBE_END_LINE_54 = 54;
		return f_options_128_line_54;
    }

    protected List getRequiredOptions()
    {
        return requiredOptions;
    }

    /**
     * Subclasses must implement this method to reduce
     * the <code>arguments</code> that have been passed to the parse method.
     *
     * @param opts The Options to parse the arguments by.
     * @param arguments The arguments that have to be flattened.
     * @param stopAtNonOption specifies whether to stop
     * flattening when a non option has been encountered
     * @return a String array of the flattened arguments
     */
    protected abstract String[] flatten(Options opts, String[] arguments, boolean stopAtNonOption) throws ParseException;

    /**
     * Parses the specified <code>arguments</code> based
     * on the specifed {@link Options}.
     *
     * @param options the <code>Options</code>
     * @param arguments the <code>arguments</code>
     * @return the <code>CommandLine</code>
     * @throws ParseException if an error occurs when parsing the
     * arguments.
     */
    public CommandLine parse(Options options, String[] arguments) throws ParseException
    {
        return parse(options, arguments, null, false);
    }

    /**
     * Parse the arguments according to the specified options and properties.
     *
     * @param options    the specified Options
     * @param arguments  the command line arguments
     * @param properties command line option name-value pairs
     * @return the list of atomic option and value tokens
     * @throws ParseException if there are any problems encountered
     *                        while parsing the command line tokens.
     *
     * @since 1.1
     */
    public CommandLine parse(Options options, String[] arguments, Properties properties) throws ParseException
    {
        int PROBE_START_LINE_103 = 103;
		org.apache.commons.cli.Options p_options_135_line_103 = options;
		String[] p_arguments_136_line_103 = arguments;
		java.util.Properties p_properties_137_line_103 = properties;
		org.apache.commons.cli.CommandLine parser_1_expr9_line_103 = parse(p_options_135_line_103,
				p_arguments_136_line_103, p_properties_137_line_103, false);
		int PROBE_END_LINE_103 = 103;
		return parser_1_expr9_line_103;
    }

    /**
     * Parses the specified <code>arguments</code>
     * based on the specifed {@link Options}.
     *
     * @param options         the <code>Options</code>
     * @param arguments       the <code>arguments</code>
     * @param stopAtNonOption if <tt>true</tt> an unrecognized argument stops
     *     the parsing and the remaining arguments are added to the 
     *     {@link CommandLine}s args list. If <tt>false</tt> an unrecognized
     *     argument triggers a ParseException.
     * @return the <code>CommandLine</code>
     * @throws ParseException if an error occurs when parsing the arguments.
     */
    public CommandLine parse(Options options, String[] arguments, boolean stopAtNonOption) throws ParseException
    {
        return parse(options, arguments, null, stopAtNonOption);
    }

    /**
     * Parse the arguments according to the specified options and
     * properties.
     *
     * @param options the specified Options
     * @param arguments the command line arguments
     * @param properties command line option name-value pairs
     * @param stopAtNonOption if <tt>true</tt> an unrecognized argument stops
     *     the parsing and the remaining arguments are added to the 
     *     {@link CommandLine}s args list. If <tt>false</tt> an unrecognized
     *     argument triggers a ParseException.
     *
     * @return the list of atomic option and value tokens
     *
     * @throws ParseException if there are any problems encountered
     * while parsing the command line tokens.
     *
     * @since 1.1
     */
    public CommandLine parse(Options options, String[] arguments, Properties properties, boolean stopAtNonOption)
            throws ParseException
    {
        int PROBE_START_LINE_146 = 146;
		boolean FOR_STMT_TOGGLE_LINE_147 = false;
		int PROBE_END_LINE_146 = 146;
		// clear out the data in options in case it's been used before (CLI-71)
        for (Iterator it = null; true;)
        {
            int PROBE_START_LINE_149 = 149;
			if (!FOR_STMT_TOGGLE_LINE_147) {
				FOR_STMT_TOGGLE_LINE_147 = true;
				org.apache.commons.cli.Options p_options_141_line_147 = options;
				java.util.List parser_1_expr12_line_147 = p_options_141_line_147.helpOptions();
				Iterator parser_1_expr11_line_147 = parser_1_expr12_line_147.iterator();
				it = parser_1_expr11_line_147;
			} else {
				if (FOR_STMT_TOGGLE_LINE_147) {
				} else {
					FOR_STMT_TOGGLE_LINE_147 = true;
				}
			}
			java.util.Iterator v_it_145_line_147 = it;
			boolean parser_1_expr13_line_147 = v_it_145_line_147.hasNext();
			if (!(parser_1_expr13_line_147)) {
				break;
			}
			int PROBE_END_LINE_149 = 149;
			Option opt = (Option) it.next();
            opt.clearValues();
        }
        
        int PROBE_START_LINE_153 = 153;
		boolean FOR_STMT_TOGGLE_LINE_154 = false;
		int PROBE_END_LINE_153 = 153;
		// clear the data from the groups
        for (Iterator it = null; true;)
        {
            int PROBE_START_LINE_156 = 156;
			if (!FOR_STMT_TOGGLE_LINE_154) {
				FOR_STMT_TOGGLE_LINE_154 = true;
				org.apache.commons.cli.Options p_options_141_line_154 = options;
				java.util.Collection parser_1_expr16_line_154 = p_options_141_line_154.getOptionGroups();
				Iterator parser_1_expr15_line_154 = parser_1_expr16_line_154.iterator();
				it = parser_1_expr15_line_154;
			} else {
				if (FOR_STMT_TOGGLE_LINE_154) {
				} else {
					FOR_STMT_TOGGLE_LINE_154 = true;
				}
			}
			java.util.Iterator v_it_146_line_154 = it;
			boolean parser_1_expr17_line_154 = v_it_146_line_154.hasNext();
			if (!(parser_1_expr17_line_154)) {
				break;
			}
			int PROBE_END_LINE_156 = 156;
			OptionGroup group = (OptionGroup) it.next();
            group.setSelected(null);
        }        

        int PROBE_START_LINE_161 = 161;
		org.apache.commons.cli.Options p_options_141_line_161 = options;
		int PROBE_END_LINE_161 = 161;
		// initialise members
        setOptions(p_options_141_line_161);

        cmd = new CommandLine();

        boolean eatTheRest = false;

        int PROBE_START_LINE_167 = 170;
		String[] p_arguments_142_line_167 = arguments;
		boolean parser_1_expr21_line_167 = p_arguments_142_line_167 == null;
		int PROBE_END_LINE_167 = 170;
		if (parser_1_expr21_line_167)
        {
            arguments = new String[0];
        }

        int PROBE_START_LINE_172 = 172;
		org.apache.commons.cli.Options parser_1_expr26_line_172 = getOptions();
		String[] p_arguments_142_line_172 = arguments;
		boolean p_stop_at_non_option_144_line_172 = stopAtNonOption;
		String[] parser_1_expr25_line_172 = flatten(parser_1_expr26_line_172, p_arguments_142_line_172,
				p_stop_at_non_option_144_line_172);
		List parser_1_expr24_line_172 = Arrays.asList(parser_1_expr25_line_172);
		int PROBE_END_LINE_172 = 172;
		List tokenList = parser_1_expr24_line_172;

        int PROBE_START_LINE_174 = 174;
		java.util.List v_token_list_149_line_174 = tokenList;
		ListIterator parser_1_expr27_line_174 = v_token_list_149_line_174.listIterator();
		int PROBE_END_LINE_174 = 174;
		ListIterator iterator = parser_1_expr27_line_174;

        // process each flattened token
        while (iterator.hasNext())
        {
            String t = (String) iterator.next();

            // the value is the double-dash
            if ("--".equals(t))
            {
                eatTheRest = true;
            }

            // the value is a single dash
            else if ("-".equals(t))
            {
                if (stopAtNonOption)
                {
                    eatTheRest = true;
                }
                else
                {
                    cmd.addArg(t);
                }
            }

            // the value is an option
            else if (t.startsWith("-"))
            {
                if (stopAtNonOption && !getOptions().hasOption(t))
                {
                    eatTheRest = true;
                    cmd.addArg(t);
                }
                else
                {
                    processOption(t, iterator);
                }
            }

            // the value is an argument
            else
            {
                cmd.addArg(t);

                if (stopAtNonOption)
                {
                    eatTheRest = true;
                }
            }

            // eat the remaining tokens
            if (eatTheRest)
            {
                while (iterator.hasNext())
                {
                    String str = (String) iterator.next();

                    // ensure only one double-dash is added
                    if (!"--".equals(str))
                    {
                        cmd.addArg(str);
                    }
                }
            }
        }

        int PROBE_START_LINE_241 = 241;
		java.util.Properties p_properties_143_line_241 = properties;
		int PROBE_END_LINE_241 = 241;
		processProperties(p_properties_143_line_241);
        checkRequiredOptions();

        return cmd;
    }

    /**
     * Sets the values of Options using the values in <code>properties</code>.
     *
     * @param properties The value properties to be processed.
     */
    protected void processProperties(Properties properties) throws ParseException
    {
        int PROBE_START_LINE_254 = 257;
		java.util.Properties p_properties_151_line_254 = properties;
		boolean parser_1_expr29_line_254 = p_properties_151_line_254 == null;
		int PROBE_END_LINE_254 = 257;
		if (parser_1_expr29_line_254)
        {
            return;
        }

        int PROBE_START_LINE_258 = 258;
		boolean FOR_STMT_TOGGLE_LINE_259 = false;
		int PROBE_END_LINE_258 = 258;
		for (Enumeration e = null; true;)
        {
            int PROBE_START_LINE_261 = 261;
			if (!FOR_STMT_TOGGLE_LINE_259) {
				FOR_STMT_TOGGLE_LINE_259 = true;
				java.util.Properties p_properties_151_line_259 = properties;
				Enumeration parser_1_expr31_line_259 = p_properties_151_line_259.propertyNames();
				e = parser_1_expr31_line_259;
			} else {
				if (FOR_STMT_TOGGLE_LINE_259) {
				} else {
					FOR_STMT_TOGGLE_LINE_259 = true;
				}
			}
			java.util.Enumeration v_e_152_line_259 = e;
			boolean parser_1_expr32_line_259 = v_e_152_line_259.hasMoreElements();
			if (!(parser_1_expr32_line_259)) {
				break;
			}
			java.util.Enumeration v_e_152_line_261 = e;
			Object parser_1_expr34_line_261 = v_e_152_line_261.nextElement();
			String parser_1_expr33_line_261 = parser_1_expr34_line_261.toString();
			int PROBE_END_LINE_261 = 261;
			String option = parser_1_expr33_line_261;
            
            int PROBE_START_LINE_263 = 297;
			org.apache.commons.cli.CommandLine f_cmd_147_line_263 = cmd;
			String v_option_153_line_263 = option;
			boolean parser_1_expr36_line_263 = f_cmd_147_line_263.hasOption(v_option_153_line_263);
			boolean parser_1_expr35_line_263 = !parser_1_expr36_line_263;
			int PROBE_END_LINE_263 = 297;
			if (parser_1_expr35_line_263)
            {
                int PROBE_START_LINE_265 = 265;
				org.apache.commons.cli.Options parser_1_expr38_line_265 = getOptions();
				String v_option_153_line_265 = option;
				Option parser_1_expr37_line_265 = parser_1_expr38_line_265.getOption(v_option_153_line_265);
				int PROBE_END_LINE_265 = 265;
				Option opt = parser_1_expr37_line_265;
            
            // if the option is part of a group, check if another option of the group has been selected
            
                int PROBE_START_LINE_270 = 270;
				java.util.Properties p_properties_151_line_270 = properties;
				String v_option_153_line_270 = option;
				String parser_1_expr39_line_270 = p_properties_151_line_270.getProperty(v_option_153_line_270);
				int PROBE_END_LINE_270 = 270;
				// get the value from the properties instance
                String value = parser_1_expr39_line_270;

                int PROBE_START_LINE_272 = 293;
				org.apache.commons.cli.Option v_opt_154_line_272 = opt;
				boolean parser_1_expr40_line_272 = v_opt_154_line_272.hasArg();
				int PROBE_END_LINE_272 = 293;
				if (parser_1_expr40_line_272)
                {
                    if (opt.getValues() == null || opt.getValues().length == 0)
                    {
                        try
                        {
                            opt.addValueForProcessing(value);
                        }
                        catch (RuntimeException exp)
                        {
                            // if we cannot add the value don't worry about it
                        }
                    }
                }
                else if (!("yes".equalsIgnoreCase(value)
                        || "true".equalsIgnoreCase(value)
                        || "1".equalsIgnoreCase(value)))
                {
                    // if the value is not yes, true or 1 then don't add the
                    // option to the CommandLine
                    continue;
                }

                cmd.addOption(opt);
                updateRequiredOptions(opt);
            }
        }
    }

    /**
     * Throws a {@link MissingOptionException} if all of the required options
     * are not present.
     *
     * @throws MissingOptionException if any of the required Options
     * are not present.
     */
    protected void checkRequiredOptions() throws MissingOptionException
    {
        // if there are required options that have not been processsed
        if (!getRequiredOptions().isEmpty())
        {
            throw new MissingOptionException(getRequiredOptions());
        }
    }

    /**
     * <p>Process the argument values for the specified Option
     * <code>opt</code> using the values retrieved from the
     * specified iterator <code>iter</code>.
     *
     * @param opt The current Option
     * @param iter The iterator over the flattened command line
     * Options.
     *
     * @throws ParseException if an argument value is required
     * and it is has not been found.
     */
    public void processArgs(Option opt, ListIterator iter) throws ParseException
    {
        // loop until an option is found
        while (iter.hasNext())
        {
            String str = (String) iter.next();

            // found an Option, not an argument
            if (getOptions().hasOption(str) && str.startsWith("-"))
            {
                iter.previous();
                break;
            }

            // found a value
            try
            {
                opt.addValueForProcessing(Util.stripLeadingAndTrailingQuotes(str));
            }
            catch (RuntimeException exp)
            {
                iter.previous();
                break;
            }
        }

        if (opt.getValues() == null && !opt.hasOptionalArg())
        {
            throw new MissingArgumentException(opt);
        }
    }

    /**
     * Process the Option specified by <code>arg</code> using the values
     * retrieved from the specfied iterator <code>iter</code>.
     *
     * @param arg The String value representing an Option
     * @param iter The iterator over the flattened command line arguments.
     *
     * @throws ParseException if <code>arg</code> does not represent an Option
     */
    protected void processOption(String arg, ListIterator iter) throws ParseException
    {
        boolean hasOption = getOptions().hasOption(arg);

        // if there is no option throw an UnrecognisedOptionException
        if (!hasOption)
        {
            throw new UnrecognizedOptionException("Unrecognized option: " + arg, arg);
        }

        // get the option represented by arg
        Option opt = (Option) getOptions().getOption(arg).clone();
        
        // update the required options and groups
        updateRequiredOptions(opt);
        
        // if the option takes an argument value
        if (opt.hasArg())
        {
            processArgs(opt, iter);
        }
        
        // set the option on the command line
        cmd.addOption(opt);
    }

    /**
     * Removes the option or its group from the list of expected elements.
     * 
     * @param opt
     */
    private void updateRequiredOptions(Option opt) throws ParseException
    {
        // if the option is a required option remove the option from
        // the requiredOptions list
        if (opt.isRequired())
        {
            getRequiredOptions().remove(opt.getKey());
        }

        // if the option is in an OptionGroup make that option the selected
        // option of the group
        if (getOptions().getOptionGroup(opt) != null)
        {
            OptionGroup group = getOptions().getOptionGroup(opt);

            if (group.isRequired())
            {
                getRequiredOptions().remove(group);
            }

            group.setSelected(opt);
        }
    }
}
