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

import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Properties;

/**
 * <p><code>Parser</code> creates {@link CommandLine}s.</p>
 *
 * @author John Keyes (john at integralsource.com)
 * @see Parser
 * @version $Revision$
 */
public abstract class Parser implements CommandLineParser {

    /** commandline instance */
    private CommandLine cmd;

    /** current Options */
    private Options options;

    /** list of required options strings */
    private List requiredOptions;

    /**
     * <p>Subclasses must implement this method to reduce
     * the <code>arguments</code> that have been passed to the parse 
     * method.</p>
     *
     * @param opts The Options to parse the arguments by.
     * @param arguments The arguments that have to be flattened.
     * @param stopAtNonOption specifies whether to stop 
     * flattening when a non option has been encountered
     * @return a String array of the flattened arguments
     */
    protected abstract String[] flatten(Options opts, String[] arguments, 
                                        boolean stopAtNonOption);

    /**
     * <p>Parses the specified <code>arguments</code> 
     * based on the specifed {@link Options}.</p>
     *
     * @param options the <code>Options</code>
     * @param arguments the <code>arguments</code>
     * @return the <code>CommandLine</code>
     * @throws ParseException if an error occurs when parsing the
     * arguments.
     */
    public CommandLine parse(Options options, String[] arguments)
                      throws ParseException
    {
        int PROBE_START_LINE_71 = 71;
		org.apache.commons.cli.Options p_options_76_line_71 = options;
		String[] p_arguments_77_line_71 = arguments;
		org.apache.commons.cli.CommandLine parser_1_expr1_line_71 = parse(p_options_76_line_71, p_arguments_77_line_71,
				null, false);
		int PROBE_END_LINE_71 = 71;
		return parser_1_expr1_line_71;
    }

    /**
     * Parse the arguments according to the specified options and
     * properties.
     *
     * @param options the specified Options
     * @param arguments the command line arguments
     * @param properties command line option name-value pairs
     * @return the list of atomic option and value tokens
     *
     * @throws ParseException if there are any problems encountered
     * while parsing the command line tokens.
     */
    public CommandLine parse(Options options, String[] arguments, 
                             Properties properties)
        throws ParseException
    {
        return parse(options, arguments, properties, false);
    }

    /**
     * <p>Parses the specified <code>arguments</code> 
     * based on the specifed {@link Options}.</p>
     *
     * @param options the <code>Options</code>
     * @param arguments the <code>arguments</code>
     * @param stopAtNonOption specifies whether to stop 
     * interpreting the arguments when a non option has 
     * been encountered and to add them to the CommandLines
     * args list.
     *
     * @return the <code>CommandLine</code>
     * @throws ParseException if an error occurs when parsing the
     * arguments.
     */
    public CommandLine parse(Options options, String[] arguments, 
                             boolean stopAtNonOption)
        throws ParseException
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
     * @param stopAtNonOption stop parsing the arguments when the first
     * non option is encountered.
     *
     * @return the list of atomic option and value tokens
     *
     * @throws ParseException if there are any problems encountered
     * while parsing the command line tokens.
     */
    public CommandLine parse(Options options, String[] arguments, 
                             Properties properties, boolean stopAtNonOption)
        throws ParseException
    {
        int PROBE_START_LINE_135 = 135;
		org.apache.commons.cli.Options p_options_84_line_135 = options;
		int PROBE_END_LINE_135 = 135;
		// initialise members
        this.options = p_options_84_line_135;

        int PROBE_START_LINE_137 = 137;
		boolean FOR_STMT_TOGGLE_LINE_138 = false;
		int PROBE_END_LINE_137 = 137;
		// clear out the data in options in case it's been used before (CLI-71)
        for (Iterator it = null; true;) {
            int PROBE_START_LINE_139 = 139;
			if (!FOR_STMT_TOGGLE_LINE_138) {
				FOR_STMT_TOGGLE_LINE_138 = true;
				org.apache.commons.cli.Options p_options_84_line_138 = options;
				java.util.List parser_1_expr7_line_138 = p_options_84_line_138.helpOptions();
				Iterator parser_1_expr6_line_138 = parser_1_expr7_line_138.iterator();
				it = parser_1_expr6_line_138;
			} else {
				if (FOR_STMT_TOGGLE_LINE_138) {
				} else {
					FOR_STMT_TOGGLE_LINE_138 = true;
				}
			}
			java.util.Iterator v_it_89_line_138 = it;
			boolean parser_1_expr8_line_138 = v_it_89_line_138.hasNext();
			if (!(parser_1_expr8_line_138)) {
				break;
			}
			java.util.Iterator v_it_89_line_139 = it;
			Object parser_1_expr10_line_139 = v_it_89_line_139.next();
			int PROBE_END_LINE_139 = 139;
			Option opt = (Option) parser_1_expr10_line_139;
            int PROBE_START_LINE_140 = 140;
			org.apache.commons.cli.Option v_opt_90_line_140 = opt;
			int PROBE_END_LINE_140 = 140;
			v_opt_90_line_140.clearValues();
        }

        int PROBE_START_LINE_143 = 143;
		org.apache.commons.cli.Options p_options_84_line_143 = options;
		java.util.List parser_1_expr13_line_143 = p_options_84_line_143.getRequiredOptions();
		int PROBE_END_LINE_143 = 143;
		requiredOptions = parser_1_expr13_line_143;
        cmd = new CommandLine();

        boolean eatTheRest = false;

        int PROBE_START_LINE_148 = 151;
		String[] p_arguments_85_line_148 = arguments;
		boolean parser_1_expr16_line_148 = p_arguments_85_line_148 == null;
		int PROBE_END_LINE_148 = 151;
		if (parser_1_expr16_line_148)
        {
            arguments = new String[0];
        }

        int PROBE_START_LINE_153 = 155;
		org.apache.commons.cli.Options f_options_88_line_153 = this.options;
		String[] parser_1_expr20_line_153 = flatten(f_options_88_line_153, arguments, stopAtNonOption);
		List parser_1_expr19_line_153 = Arrays.asList(parser_1_expr20_line_153);
		int PROBE_END_LINE_153 = 155;
		List tokenList = parser_1_expr19_line_153;

        int PROBE_START_LINE_157 = 157;
		java.util.List v_token_list_94_line_157 = tokenList;
		ListIterator parser_1_expr23_line_157 = v_token_list_94_line_157.listIterator();
		int PROBE_END_LINE_157 = 157;
		ListIterator iterator = parser_1_expr23_line_157;

        // process each flattened token
        while (true)
        {
            int PROBE_START_LINE_160 = 160;
			java.util.ListIterator v_iterator_95_line_160 = iterator;
			boolean parser_1_expr24_line_160 = v_iterator_95_line_160.hasNext();
			if (!(parser_1_expr24_line_160)) {
				break;
			}
			int PROBE_END_LINE_160 = 160;
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
                if (stopAtNonOption && !options.hasOption(t))
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

        int PROBE_START_LINE_224 = 224;
		java.util.Properties p_properties_86_line_224 = properties;
		int PROBE_END_LINE_224 = 224;
		processProperties(p_properties_86_line_224);
        checkRequiredOptions();

        int PROBE_START_LINE_227 = 227;
		org.apache.commons.cli.CommandLine f_cmd_92_line_227 = cmd;
		int PROBE_END_LINE_227 = 227;
		return f_cmd_92_line_227;
    }

    /**
     * <p>Sets the values of Options using the values in 
     * <code>properties</code>.</p>
     *
     * @param properties The value properties to be processed.
     */
    private void processProperties(Properties properties)
    {
        int PROBE_START_LINE_238 = 241;
		java.util.Properties p_properties_96_line_238 = properties;
		boolean parser_1_expr27_line_238 = p_properties_96_line_238 == null;
		int PROBE_END_LINE_238 = 241;
		if (parser_1_expr27_line_238)
        {
            return;
        }

        for (Enumeration e = properties.propertyNames(); e.hasMoreElements();)
        {
            String option = e.nextElement().toString();

            if (!cmd.hasOption(option))
            {
                Option opt = options.getOption(option);

                // get the value from the properties instance
                String value = properties.getProperty(option);

                if (opt.hasArg())
                {
                    if ((opt.getValues() == null)
                        || (opt.getValues().length == 0))
                    {
                        try
                        {
                            opt.addValue(value);
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
                    break;
                }

                cmd.addOption(opt);
            }
        }
    }

    /**
     * <p>Throws a {@link MissingOptionException} if all of the
     * required options are no present.</p>
     *
     * @throws MissingOptionException if any of the required Options
     * are not present.
     */
    private void checkRequiredOptions()
        throws MissingOptionException
    {
        int PROBE_START_LINE_295 = 310;
		java.util.List f_required_options_91_line_295 = requiredOptions;
		int parser_1_expr29_line_295 = f_required_options_91_line_295.size();
		boolean parser_1_expr28_line_295 = parser_1_expr29_line_295 > 0;
		int PROBE_END_LINE_295 = 310;
		// if there are required options that have not been
        // processsed
        if (parser_1_expr28_line_295)
        {
            Iterator iter = requiredOptions.iterator();
            StringBuffer buff = new StringBuffer("Missing required option");
            buff.append(requiredOptions.size() == 1 ? "" : "s");
            buff.append(": ");


            // loop through the required options
            while (iter.hasNext())
            {
                buff.append(iter.next());
            }

            throw new MissingOptionException(buff.toString());
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
    public void processArgs(Option opt, ListIterator iter)
        throws ParseException
    {
        // loop until an option is found
        while (iter.hasNext())
        {
            String str = (String) iter.next();

            // found an Option, not an argument
            if (options.hasOption(str) && str.startsWith("-"))
            {
                iter.previous();
                break;
            }

            // found a value
            try
            {
                opt.addValue( Util.stripLeadingAndTrailingQuotes(str) );
            }
            catch (RuntimeException exp)
            {
                iter.previous();
                break;
            }
        }

        if ((opt.getValues() == null) && !opt.hasOptionalArg())
        {
            throw new MissingArgumentException("Missing argument for option:"
                                               + opt.getKey());
        }
    }

    /**
     * <p>Process the Option specified by <code>arg</code>
     * using the values retrieved from the specfied iterator
     * <code>iter</code>.
     *
     * @param arg The String value representing an Option
     * @param iter The iterator over the flattened command 
     * line arguments.
     *
     * @throws ParseException if <code>arg</code> does not
     * represent an Option
     */
    private void processOption(String arg, ListIterator iter)
        throws ParseException
    {
        boolean hasOption = options.hasOption(arg);

        // if there is no option throw an UnrecognisedOptionException
        if (!hasOption)
        {
            throw new UnrecognizedOptionException("Unrecognized option: " 
                                                  + arg);
        }
        
        // get the option represented by arg
        final Option opt = options.getOption(arg);

        // if the option is a required option remove the option from
        // the requiredOptions list
        if (opt.isRequired())
        {
            requiredOptions.remove(opt.getKey());
        }

        // if the option is in an OptionGroup make that option the selected
        // option of the group
        if (options.getOptionGroup(opt) != null)
        {
            OptionGroup group = options.getOptionGroup(opt);

            if (group.isRequired())
            {
                requiredOptions.remove(group);
            }

            group.setSelected(opt);
        }

        // if the option takes an argument value
        if (opt.hasArg())
        {
            processArgs(opt, iter);
        }


        // set the option on the command line
        cmd.addOption(opt);
    }
}
