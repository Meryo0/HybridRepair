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
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Collection;

/**
 * Default parser.
 * 
 * @author Emmanuel Bourg
 * @version $Revision$, $Date$
 * @since 1.3
 */
public class DefaultParser implements CommandLineParser
{    
    protected CommandLine cmd;
    protected Options options;

    /** 
     * Flag indicating how unrecognized tokens are handled. <tt>true</tt> to stop
     * the parsing and add the remaining tokens to the args list.
     * <tt>false</tt> to throw an exception. 
     */
    protected boolean stopAtNonOption;

    /** The token currently processed. */
    protected String currentToken;
    
    /** The last option parsed. */
    protected Option currentOption;
    
    /** Flag indicating if tokens should no longer be analysed and simply added as arguments of the command line. */
    protected boolean skipParsing;
    
    /** The required options expected to be found when parsing the command line. */
    protected List expectedOpts;
    
    public CommandLine parse(Options options, String[] arguments) throws ParseException
    {
        return parse(options, arguments, null);
    }

    /**
     * Parse the arguments according to the specified options and properties.
     *
     * @param options    the specified Options
     * @param arguments  the command line arguments
     * @param properties command line option name-value pairs
     * @return the list of atomic option and value tokens
     *
     * @throws ParseException if there are any problems encountered
     * while parsing the command line tokens.
     */
    public CommandLine parse(Options options, String[] arguments, Properties properties) throws ParseException
    {
        int PROBE_START_LINE_75 = 75;
		org.apache.commons.cli.Options p_options_27_line_75 = options;
		String[] p_arguments_28_line_75 = arguments;
		java.util.Properties p_properties_29_line_75 = properties;
		org.apache.commons.cli.CommandLine default_parser_1_expr1_line_75 = parse(p_options_27_line_75,
				p_arguments_28_line_75, p_properties_29_line_75, false);
		int PROBE_END_LINE_75 = 75;
		return default_parser_1_expr1_line_75;
    }

    public CommandLine parse(Options options, String[] arguments, boolean stopAtNonOption) throws ParseException
    {
        return parse(options, arguments, null, stopAtNonOption);
    }

    /**
     * Parse the arguments according to the specified options and properties.
     *
     * @param options         the specified Options
     * @param arguments       the command line arguments
     * @param properties      command line option name-value pairs
     * @param stopAtNonOption if <tt>true</tt> an unrecognized argument stops
     *     the parsing and the remaining arguments are added to the 
     *     {@link CommandLine}s args list. If <tt>false</tt> an unrecognized
     *     argument triggers a ParseException.
     *
     * @return the list of atomic option and value tokens
     * @throws ParseException if there are any problems encountered
     * while parsing the command line tokens.
     */
    public CommandLine parse(Options options, String[] arguments, Properties properties, boolean stopAtNonOption) throws ParseException
    {
        int PROBE_START_LINE_100 = 100;
		org.apache.commons.cli.Options p_options_33_line_100 = options;
		int PROBE_END_LINE_100 = 100;
		this.options = p_options_33_line_100;
        int PROBE_START_LINE_101 = 101;
		boolean p_stop_at_non_option_36_line_101 = stopAtNonOption;
		int PROBE_END_LINE_101 = 101;
		this.stopAtNonOption = p_stop_at_non_option_36_line_101;
        skipParsing = false;
        currentOption = null;
        int PROBE_START_LINE_104 = 104;
		org.apache.commons.cli.Options p_options_33_line_104 = options;
		java.util.List default_parser_1_expr12_line_104 = p_options_33_line_104.getRequiredOptions();
		int PROBE_END_LINE_104 = 104;
		expectedOpts = new ArrayList(default_parser_1_expr12_line_104);
        
        int PROBE_START_LINE_106 = 106;
		boolean FOR_STMT_TOGGLE_LINE_107 = false;
		int PROBE_END_LINE_106 = 106;
		// clear the data from the groups
        for (Iterator it = null; true;)
        {
            int PROBE_START_LINE_109 = 109;
			if (!FOR_STMT_TOGGLE_LINE_107) {
				FOR_STMT_TOGGLE_LINE_107 = true;
				org.apache.commons.cli.Options p_options_33_line_107 = options;
				java.util.Collection default_parser_1_expr15_line_107 = p_options_33_line_107.getOptionGroups();
				Iterator default_parser_1_expr14_line_107 = default_parser_1_expr15_line_107.iterator();
				it = default_parser_1_expr14_line_107;
			} else {
				if (FOR_STMT_TOGGLE_LINE_107) {
				} else {
					FOR_STMT_TOGGLE_LINE_107 = true;
				}
			}
			java.util.Iterator v_it_42_line_107 = it;
			boolean default_parser_1_expr16_line_107 = v_it_42_line_107.hasNext();
			if (!(default_parser_1_expr16_line_107)) {
				break;
			}
			int PROBE_END_LINE_109 = 109;
			OptionGroup group = (OptionGroup) it.next();
            group.setSelected(null);
        }
        
        cmd = new CommandLine();

        int PROBE_START_LINE_115 = 121;
		String[] p_arguments_34_line_115 = arguments;
		boolean default_parser_1_expr19_line_115 = p_arguments_34_line_115 != null;
		int PROBE_END_LINE_115 = 121;
		if (default_parser_1_expr19_line_115)
        {
            for (int i = 0; i < arguments.length; i++)
            {
                handleToken(arguments[i]);
            }
        }
        
        // check the arguments of the last option
        checkRequiredArgs();
        
        int PROBE_START_LINE_127 = 127;
		java.util.Properties p_properties_35_line_127 = properties;
		int PROBE_END_LINE_127 = 127;
		// add the default options
        handleProperties(p_properties_35_line_127);
        
        checkRequiredOptions();
        
        return cmd;
    }

    /**
     * Sets the values of Options using the values in <code>properties</code>.
     *
     * @param properties The value properties to be processed.
     */
    private void handleProperties(Properties properties) throws ParseException
    {
        int PROBE_START_LINE_141 = 144;
		java.util.Properties p_properties_44_line_141 = properties;
		boolean default_parser_1_expr22_line_141 = p_properties_44_line_141 == null;
		int PROBE_END_LINE_141 = 144;
		if (default_parser_1_expr22_line_141)
        {
            return;
        }
        
        int PROBE_START_LINE_145 = 145;
		boolean FOR_STMT_TOGGLE_LINE_146 = false;
		int PROBE_END_LINE_145 = 145;
		for (Enumeration e = null; true;)
        {
            int PROBE_START_LINE_148 = 148;
			if (!FOR_STMT_TOGGLE_LINE_146) {
				FOR_STMT_TOGGLE_LINE_146 = true;
				java.util.Properties p_properties_44_line_146 = properties;
				Enumeration default_parser_1_expr24_line_146 = p_properties_44_line_146.propertyNames();
				e = default_parser_1_expr24_line_146;
			} else {
				if (FOR_STMT_TOGGLE_LINE_146) {
				} else {
					FOR_STMT_TOGGLE_LINE_146 = true;
				}
			}
			java.util.Enumeration v_e_45_line_146 = e;
			boolean default_parser_1_expr25_line_146 = v_e_45_line_146.hasMoreElements();
			if (!(default_parser_1_expr25_line_146)) {
				break;
			}
			java.util.Enumeration v_e_45_line_148 = e;
			Object default_parser_1_expr27_line_148 = v_e_45_line_148.nextElement();
			String default_parser_1_expr26_line_148 = default_parser_1_expr27_line_148.toString();
			int PROBE_END_LINE_148 = 148;
			String option = default_parser_1_expr26_line_148;
            
            int PROBE_START_LINE_150 = 176;
			org.apache.commons.cli.CommandLine f_cmd_43_line_150 = cmd;
			String v_option_46_line_150 = option;
			boolean default_parser_1_expr29_line_150 = f_cmd_43_line_150.hasOption(v_option_46_line_150);
			boolean default_parser_1_expr28_line_150 = !default_parser_1_expr29_line_150;
			int PROBE_END_LINE_150 = 176;
			if (default_parser_1_expr28_line_150)
            {
                int PROBE_START_LINE_152 = 152;
				org.apache.commons.cli.Options f_options_37_line_152 = options;
				String v_option_46_line_152 = option;
				Option default_parser_1_expr30_line_152 = f_options_37_line_152.getOption(v_option_46_line_152);
				int PROBE_END_LINE_152 = 152;
				Option opt = default_parser_1_expr30_line_152;
            
            // if the option is part of a group, check if another option of the group has been selected
            
                int PROBE_START_LINE_157 = 157;
				java.util.Properties p_properties_44_line_157 = properties;
				String v_option_46_line_157 = option;
				String default_parser_1_expr31_line_157 = p_properties_44_line_157.getProperty(v_option_46_line_157);
				int PROBE_END_LINE_157 = 157;
				// get the value from the properties
                String value = default_parser_1_expr31_line_157;
                
                int PROBE_START_LINE_159 = 172;
				org.apache.commons.cli.Option v_opt_47_line_159 = opt;
				boolean default_parser_1_expr32_line_159 = v_opt_47_line_159.hasArg();
				int PROBE_END_LINE_159 = 172;
				if (default_parser_1_expr32_line_159)
                {
                    if (opt.getValues() == null || opt.getValues().length == 0)
                    {
                        opt.addValueForProcessing(value);
                    }
                }
                else if (!("yes".equalsIgnoreCase(value)
                        || "true".equalsIgnoreCase(value)
                        || "1".equalsIgnoreCase(value)))
                {
                    // if the value is not yes, true or 1 then don't add the option to the CommandLine
                    continue;
                }
                
                handleOption(opt);
                currentOption = null;
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
    private void checkRequiredOptions() throws MissingOptionException
    {       
        // if there are required options that have not been processsed
        if (!expectedOpts.isEmpty())
        {
            throw new MissingOptionException(expectedOpts);
        }
    }

    /**
     * Throw a {@link MissingArgumentException} if the current option
     * didn't receive the number of arguments expected.
     */
    private void checkRequiredArgs() throws ParseException
    {
        int PROBE_START_LINE_202 = 205;
		org.apache.commons.cli.Option f_current_option_40_line_202 = currentOption;
		boolean default_parser_1_expr34_line_202 = f_current_option_40_line_202 != null;
		boolean default_parser_1_expr35_line_202 = true;
		if (default_parser_1_expr34_line_202) {
			org.apache.commons.cli.Option f_current_option_40_line_202_v1 = currentOption;
			default_parser_1_expr35_line_202 = f_current_option_40_line_202_v1.requiresArg();
		}
		boolean default_parser_1_expr33_line_202 = default_parser_1_expr34_line_202 && default_parser_1_expr35_line_202;
		int PROBE_END_LINE_202 = 205;
		if (default_parser_1_expr33_line_202)
        {
            throw new MissingArgumentException(currentOption);
        }
    }

    /**
     * Handle any command line token.
     * 
     * @param token the command line token to handle
     * @throws ParseException
     */
    private void handleToken(String token) throws ParseException
    {
        currentToken = token;
        
        if (skipParsing)
        {
            cmd.addArg(token);
        }
        else if ("--".equals(token))
        {
            skipParsing = true;
        }
        else if (currentOption != null && currentOption.acceptsArg() && isArgument(token))
        {
            currentOption.addValueForProcessing(Util.stripLeadingAndTrailingQuotes(token));
        }
        else if (token.startsWith("--"))
        {
            handleLongOption(token);
        }
        else if (token.startsWith("-") && !"-".equals(token))
        {
            handleShortAndLongOption(token);
        }
        else
        {
            handleUnknownToken(token);
        }
        
        if (currentOption != null && !currentOption.acceptsArg())
        {
            currentOption = null;
        }
    }

    /**
     * Returns true is the token is a valid argument.
     * 
     * @param token
     */
    private boolean isArgument(String token)
    {
        return !isOption(token) || isNegativeNumber(token);
    }

    /**
     * Check if the token is a negative number.
     * 
     * @param token
     */
    private boolean isNegativeNumber(String token)
    {
        try
        {
            Double.parseDouble(token);
            return true;
        }
        catch (NumberFormatException e)
        {
            return false;
        }
    }

    /**
     * Tells if the token looks like an option.
     * 
     * @param token
     */
    private boolean isOption(String token)
    {
        return isLongOption(token) || isShortOption(token);
    }

    /**
     * Tells if the token looks like a short option.
     * 
     * @param token
     */
    private boolean isShortOption(String token)
    {
        // short options (-S, -SV, -S=V, -SV1=V2, -S1S2)
        return token.startsWith("-") && token.length() >= 2 && options.hasShortOption(token.substring(1, 2));
    }

    /**
     * Tells if the token looks like a long option.
     * 
     * @param token
     */
    private boolean isLongOption(String token)
    {
        if (!token.startsWith("-") || token.length() == 1)
        {
            return false;
        }

        int pos = token.indexOf("=");
        String t = pos == -1 ? token : token.substring(0, pos);
        
        if (!options.getMatchingOptions(t).isEmpty())
        {
            // long or partial long options (--L, -L, --L=V, -L=V, --l, --l=V)
            return true;
        }
        else if (getLongPrefix(token) != null && !token.startsWith("--"))
        {
            // -LV
            return true;
        }

        return false;
    }

    /**
     * Handles an unknown token. If the token starts with a dash an 
     * UnrecognizedOptionException is thrown. Otherwise the token is added 
     * to the arguments of the command line. If the stopAtNonOption flag 
     * is set, this stops the parsing and the remaining tokens are added 
     * as-is in the arguments of the command line.
     * 
     * @param token the command line token to handle
     */
    private void handleUnknownToken(String token) throws ParseException
    {
        if (token.startsWith("-") && token.length() > 1 && !stopAtNonOption)
        {
            throw new UnrecognizedOptionException("Unrecognized option: " + token, token);
        }
        
        cmd.addArg(token);
        if (stopAtNonOption)
        {
            skipParsing = true;
        }
    }

    /**
     * Handles the following tokens:
     * 
     * --L
     * --L=V
     * --L V
     * --l
     * 
     * @param token the command line token to handle
     */
    private void handleLongOption(String token) throws ParseException
    {
        if (token.indexOf('=') == -1)
        {
            handleLongOptionWithoutEqual(token);
        }
        else
        {
            handleLongOptionWithEqual(token);                                   
        }
    }

    /**
     * Handles the following tokens:
     * 
     * --L
     * -L
     * --l
     * -l
     * 
     * @param token the command line token to handle
     */
    private void handleLongOptionWithoutEqual(String token) throws ParseException
    {
        List matchingOpts = options.getMatchingOptions(token);
        if (matchingOpts.isEmpty())
        {
            handleUnknownToken(currentToken);
        }
        else if (matchingOpts.size() > 1)
        {
            throw new AmbiguousOptionException(token, matchingOpts);
        }
        else
        {
            handleOption(options.getOption((String) matchingOpts.get(0)));
        }
    }

    /**
     * Handles the following tokens:
     * 
     * --L=V
     * -L=V
     * --l=V
     * -l=V
     * 
     * @param token the command line token to handle
     */
    private void handleLongOptionWithEqual(String token) throws ParseException
    {
        int pos = token.indexOf('=');

        String value = token.substring(pos + 1);
        
        String opt = token.substring(0, pos);
        
        List matchingOpts = options.getMatchingOptions(opt);
        if (matchingOpts.isEmpty())
        {
            handleUnknownToken(currentToken);
        }
        else if (matchingOpts.size() > 1)
        {
            throw new AmbiguousOptionException(opt, matchingOpts);
        }
        else
        {
            Option option = options.getOption((String) matchingOpts.get(0));
            
            if (option.acceptsArg())
            {
                handleOption(option);
                currentOption.addValueForProcessing(value);
                currentOption = null;
            }
            else
            {
                handleUnknownToken(currentToken);
            }
        }
    }

    /**
     * Handles the following tokens:
     * 
     * -S
     * -SV
     * -S V
     * -S=V
     * -S1S2
     * -S1S2 V
     * -SV1=V2
     * 
     * -L
     * -LV
     * -L V
     * -L=V
     * -l
     * 
     * @param token the command line token to handle
     */
    private void handleShortAndLongOption(String token) throws ParseException
    {
        String t = Util.stripLeadingHyphens(token);
        
        int pos = t.indexOf('=');
        
        if (t.length() == 1)
        {
            // -S
            if (options.hasShortOption(t))
            {
                handleOption(options.getOption(t));
            }
            else
            {
                handleUnknownToken(token);
            }
        }
        else if (pos == -1)
        {
            if (options.hasShortOption(t))
            {
                handleOption(options.getOption(t));
            }
            else if (!options.getMatchingOptions(t).isEmpty())
            {
                // -L or -l
                handleLongOptionWithoutEqual(token);
            }
            else
            {
                // look for a long prefix (-Xmx512m)
                String opt = getLongPrefix(t);
                
                if (opt != null && options.getOption(opt).acceptsArg())
                {
                    handleOption(options.getOption(opt));
                    currentOption.addValueForProcessing(t.substring(opt.length()));
                    currentOption = null;
                }
                else if (isJavaProperty(t))
                {
                    // -SV1 (-Dflag)
                    handleOption(options.getOption(t.substring(0, 1)));
                    currentOption.addValueForProcessing(t.substring(1));
                    currentOption = null;
                }
                else
                {
                    // -S1S2S3 or -S1S2V
                    handleConcatenatedOptions(token);
                }
            }
        }
        else
        {
            String opt = t.substring(0, pos);
            String value = t.substring(pos + 1);
            
            if (opt.length() == 1)
            {
                // -S=V
                Option option = options.getOption(opt);
                if (option != null && option.acceptsArg())
                {
                    handleOption(option);
                    currentOption.addValueForProcessing(value);
                    currentOption = null;
                }
                else
                {
                    handleUnknownToken(token);
                }
            }
            else if (isJavaProperty(opt))
            {
                // -SV1=V2 (-Dkey=value)
                handleOption(options.getOption(opt.substring(0, 1)));
                currentOption.addValueForProcessing(opt.substring(1));
                currentOption.addValueForProcessing(value);
                currentOption = null;
            }
            else
            {
                // -L=V or -l=V
                handleLongOptionWithEqual(token);
            }
        }
    }

    /**
     * Search for a prefix that is the long name of an option (-Xmx512m)
     * 
     * @param token
     */
    private String getLongPrefix(String token)
    {
        String t = Util.stripLeadingHyphens(token);
        
        int i;
        String opt = null;
        for (i = t.length() - 2; i > 1; i--)
        {
            String prefix = t.substring(0, i);
            if (options.hasLongOption(prefix))
            {
                opt = prefix;
                break;
            }
        }
        
        return opt;
    }

    /**
     * Check if the specified token is a Java-like property (-Dkey=value).
     */
    private boolean isJavaProperty(String token)
    {
        String opt = token.substring(0, 1);
        Option option = options.getOption(opt);
        
        return option != null && (option.getArgs() >= 2 || option.getArgs() == Option.UNLIMITED_VALUES);
    }

    private void handleOption(Option option) throws ParseException
    {
        // check the previous option before handling the next one
        checkRequiredArgs();
        
        option = (Option) option.clone();
        
        updateRequiredOptions(option);
        
        cmd.addOption(option);
        
        if (option.hasArg())
        {
            currentOption = option;            
        }
        else
        {
            currentOption = null;
        }
    }

    /**
     * Removes the option or its group from the list of expected elements.
     * 
     * @param option
     */
    private void updateRequiredOptions(Option option) throws AlreadySelectedException
    {
        if (option.isRequired())
        {
            expectedOpts.remove(option.getKey());
        }

        // if the option is in an OptionGroup make that option the selected option of the group
        if (options.getOptionGroup(option) != null)
        {
            OptionGroup group = options.getOptionGroup(option);

            if (group.isRequired())
            {
                expectedOpts.remove(group);
            }

            group.setSelected(option);
        }
    }

    /**
     * Breaks <code>token</code> into its constituent parts
     * using the following algorithm.
     *
     * <ul>
     *  <li>ignore the first character ("<b>-</b>")</li>
     *  <li>foreach remaining character check if an {@link Option}
     *  exists with that id.</li>
     *  <li>if an {@link Option} does exist then add that character
     *  prepended with "<b>-</b>" to the list of processed tokens.</li>
     *  <li>if the {@link Option} can have an argument value and there
     *  are remaining characters in the token then add the remaining
     *  characters as a token to the list of processed tokens.</li>
     *  <li>if an {@link Option} does <b>NOT</b> exist <b>AND</b>
     *  <code>stopAtNonOption</code> <b>IS</b> set then add the special token
     *  "<b>--</b>" followed by the remaining characters and also
     *  the remaining tokens directly to the processed tokens list.</li>
     *  <li>if an {@link Option} does <b>NOT</b> exist <b>AND</b>
     *  <code>stopAtNonOption</code> <b>IS NOT</b> set then add that
     *  character prepended with "<b>-</b>".</li>
     * </ul>
     *
     * @param token The current token to be <b>burst</b>
     * at the first non-Option encountered.
     */
    protected void handleConcatenatedOptions(String token) throws ParseException
    {
        for (int i = 1; i < token.length(); i++)
        {
            String ch = String.valueOf(token.charAt(i));

            if (options.hasOption(ch))
            {
                handleOption(options.getOption(ch));
                
                if (currentOption != null && (token.length() != (i + 1)))
                {
                    // add the trail as an argument of the option
                    currentOption.addValueForProcessing(token.substring(i + 1));
                    break;
                }
            }
            else
            {                
                handleUnknownToken(stopAtNonOption && i > 1 ? token.substring(i) : token);
                break;
            }
        }
    }
}
