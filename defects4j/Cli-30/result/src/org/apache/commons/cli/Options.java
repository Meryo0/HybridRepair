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

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * <p>Main entry-point into the library.</p>
 *
 * <p>Options represents a collection of {@link Option} objects, which
 * describe the possible options for a command-line.<p>
 *
 * <p>It may flexibly parse long and short options, with or without
 * values.  Additionally, it may parse only a portion of a commandline,
 * allowing for flexible multi-stage parsing.<p>
 *
 * @see org.apache.commons.cli.CommandLine
 *
 * @author bob mcwhirter (bob @ werken.com)
 * @author <a href="mailto:jstrachan@apache.org">James Strachan</a>
 * @version $Revision$, $Date$
 */
public class Options implements Serializable
{
    /** The serial version UID. */
    private static final long serialVersionUID = 1L;

    /** a map of the options with the character key */
    private Map shortOpts = new HashMap();

    /** a map of the options with the long key */
    private Map longOpts = new HashMap();

    /** a map of the required options */
    private List requiredOpts = new ArrayList();

    /** a map of the option groups */
    private Map optionGroups = new HashMap();

    /**
     * Add the specified option group.
     *
     * @param group the OptionGroup that is to be added
     * @return the resulting Options instance
     */
    public Options addOptionGroup(OptionGroup group)
    {
        Iterator options = group.getOptions().iterator();

        if (group.isRequired())
        {
            requiredOpts.add(group);
        }

        while (options.hasNext())
        {
            Option option = (Option) options.next();

            // an Option cannot be required if it is in an
            // OptionGroup, either the group is required or
            // nothing is required
            option.setRequired(false);
            addOption(option);

            optionGroups.put(option.getKey(), group);
        }

        return this;
    }

    /**
     * Lists the OptionGroups that are members of this Options instance.
     *
     * @return a Collection of OptionGroup instances.
     */
    Collection getOptionGroups()
    {
        int PROBE_START_LINE_101 = 101;
		java.util.Map f_option_groups_110_line_101 = optionGroups;
		java.util.Collection options_1_expr6_line_101 = f_option_groups_110_line_101.values();
		int PROBE_END_LINE_101 = 101;
		return new HashSet(options_1_expr6_line_101);
    }

    /**
     * Add an option that only contains a short-name.
     * It may be specified as requiring an argument.
     *
     * @param opt Short single-character name of the option.
     * @param hasArg flag signally if an argument is required after this option
     * @param description Self-documenting description
     * @return the resulting Options instance
     */
    public Options addOption(String opt, boolean hasArg, String description)
    {
        addOption(opt, null, hasArg, description);

        return this;
    }

    /**
     * Add an option that contains a short-name and a long-name.
     * It may be specified as requiring an argument.
     *
     * @param opt Short single-character name of the option.
     * @param longOpt Long multi-character name of the option.
     * @param hasArg flag signally if an argument is required after this option
     * @param description Self-documenting description
     * @return the resulting Options instance
     */
    public Options addOption(String opt, String longOpt, boolean hasArg, String description)
    {
        int PROBE_START_LINE_132 = 132;
		String p_opt_115_line_132 = opt;
		String p_long_opt_116_line_132 = longOpt;
		boolean p_has_arg_117_line_132 = hasArg;
		String p_description_118_line_132 = description;
		int PROBE_END_LINE_132 = 132;
		addOption(new Option(p_opt_115_line_132, p_long_opt_116_line_132, p_has_arg_117_line_132, p_description_118_line_132));

        return this;
    }

    /**
     * Adds an option instance
     *
     * @param opt the option that is to be added
     * @return the resulting Options instance
     */
    public Options addOption(Option opt)
    {
        int PROBE_START_LINE_145 = 145;
		org.apache.commons.cli.Option p_opt_119_line_145 = opt;
		String options_1_expr10_line_145 = p_opt_119_line_145.getKey();
		int PROBE_END_LINE_145 = 145;
		String key = options_1_expr10_line_145;

        int PROBE_START_LINE_148 = 151;
		org.apache.commons.cli.Option p_opt_119_line_148 = opt;
		boolean options_1_expr11_line_148 = p_opt_119_line_148.hasLongOpt();
		int PROBE_END_LINE_148 = 151;
		// add it to the long option list
        if (options_1_expr11_line_148)
        {
            int PROBE_START_LINE_150 = 150;
			java.util.Map f_long_opts_108_line_150 = longOpts;
			org.apache.commons.cli.Option p_opt_119_line_150 = opt;
			String options_1_expr13_line_150 = p_opt_119_line_150.getLongOpt();
			org.apache.commons.cli.Option p_opt_119_line_150_v1 = opt;
			int PROBE_END_LINE_150 = 150;
			f_long_opts_108_line_150.put(options_1_expr13_line_150, p_opt_119_line_150_v1);
        }

        int PROBE_START_LINE_154 = 161;
		org.apache.commons.cli.Option p_opt_119_line_154 = opt;
		boolean options_1_expr14_line_154 = p_opt_119_line_154.isRequired();
		int PROBE_END_LINE_154 = 161;
		// if the option is required add it to the required list
        if (options_1_expr14_line_154)
        {
            if (requiredOpts.contains(key))
            {
                requiredOpts.remove(requiredOpts.indexOf(key));
            }
            requiredOpts.add(key);
        }

        int PROBE_START_LINE_163 = 163;
		java.util.Map f_short_opts_107_line_163 = shortOpts;
		String v_key_120_line_163 = key;
		org.apache.commons.cli.Option p_opt_119_line_163 = opt;
		int PROBE_END_LINE_163 = 163;
		f_short_opts_107_line_163.put(v_key_120_line_163, p_opt_119_line_163);

        return this;
    }

    /**
     * Retrieve a read-only list of options in this set
     *
     * @return read-only Collection of {@link Option} objects in this descriptor
     */
    public Collection getOptions()
    {
        return Collections.unmodifiableCollection(helpOptions());
    }

    /**
     * Returns the Options for use by the HelpFormatter.
     *
     * @return the List of Options
     */
    List helpOptions()
    {
        int PROBE_START_LINE_185 = 185;
		java.util.Map f_short_opts_107_line_185 = shortOpts;
		java.util.Collection options_1_expr18_line_185 = f_short_opts_107_line_185.values();
		int PROBE_END_LINE_185 = 185;
		return new ArrayList(options_1_expr18_line_185);
    }

    /**
     * Returns the required options.
     *
     * @return List of required options
     */
    public List getRequiredOptions()
    {
        int PROBE_START_LINE_195 = 195;
		java.util.List f_required_opts_109_line_195 = requiredOpts;
		int PROBE_END_LINE_195 = 195;
		return f_required_opts_109_line_195;
    }

    /**
     * Retrieve the {@link Option} matching the long or short name specified.
     * The leading hyphens in the name are ignored (up to 2).
     *
     * @param opt short or long name of the {@link Option}
     * @return the option represented by opt
     */
    public Option getOption(String opt)
    {
        int PROBE_START_LINE_207 = 207;
		String p_opt_121_line_207 = opt;
		String options_1_expr20_line_207 = Util.stripLeadingHyphens(p_opt_121_line_207);
		int PROBE_END_LINE_207 = 207;
		opt = options_1_expr20_line_207;

        int PROBE_START_LINE_209 = 212;
		java.util.Map f_short_opts_107_line_209 = shortOpts;
		String p_opt_121_line_209 = opt;
		boolean options_1_expr21_line_209 = f_short_opts_107_line_209.containsKey(p_opt_121_line_209);
		int PROBE_END_LINE_209 = 212;
		if (options_1_expr21_line_209)
        {
            return (Option) shortOpts.get(opt);
        }

        int PROBE_START_LINE_214 = 214;
		java.util.Map f_long_opts_108_line_214 = longOpts;
		String p_opt_121_line_214 = opt;
		Object options_1_expr23_line_214 = f_long_opts_108_line_214.get(p_opt_121_line_214);
		int PROBE_END_LINE_214 = 214;
		return (Option) options_1_expr23_line_214;
    }

    /**
     * Returns the options with a long name starting with the name specified.
     * 
     * @param opt the partial name of the option
     * @return the options matching the partial name specified, or an empty list if none matches
     * @since 1.3
     */
    public List getMatchingOptions(String opt)
    {
        opt = Util.stripLeadingHyphens(opt);
        
        List matchingOpts = new ArrayList();
        
        Iterator it = longOpts.keySet().iterator();
        while (it.hasNext())
        {
            String longOpt = (String) it.next();
            if (longOpt.startsWith(opt))
            {
                matchingOpts.add(longOpt);
            }
        }        
        
        return matchingOpts;
    }

    /**
     * Returns whether the named {@link Option} is a member of this {@link Options}.
     *
     * @param opt short or long name of the {@link Option}
     * @return true if the named {@link Option} is a member of this {@link Options}
     */
    public boolean hasOption(String opt)
    {
        opt = Util.stripLeadingHyphens(opt);

        return shortOpts.containsKey(opt) || longOpts.containsKey(opt);
    }

    /**
     * Returns whether the named {@link Option} is a member of this {@link Options}.
     *
     * @param opt long name of the {@link Option}
     * @return true if the named {@link Option} is a member of this {@link Options}
     * @since 1.3
     */
    public boolean hasLongOption(String opt)
    {
        opt = Util.stripLeadingHyphens(opt);

        return longOpts.containsKey(opt);
    }

    /**
     * Returns whether the named {@link Option} is a member of this {@link Options}.
     *
     * @param opt short name of the {@link Option}
     * @return true if the named {@link Option} is a member of this {@link Options}
     * @since 1.3
     */
    public boolean hasShortOption(String opt)
    {
        opt = Util.stripLeadingHyphens(opt);

        return shortOpts.containsKey(opt);
    }

    /**
     * Returns the OptionGroup the <code>opt</code> belongs to.
     * @param opt the option whose OptionGroup is being queried.
     *
     * @return the OptionGroup if <code>opt</code> is part
     * of an OptionGroup, otherwise return null
     */
    public OptionGroup getOptionGroup(Option opt)
    {
        return (OptionGroup) optionGroups.get(opt.getKey());
    }

    /**
     * Dump state, suitable for debugging.
     *
     * @return Stringified form of this object
     */
    public String toString()
    {
        StringBuffer buf = new StringBuffer();

        buf.append("[ Options: [ short ");
        buf.append(shortOpts.toString());
        buf.append(" ] [ long ");
        buf.append(longOpts);
        buf.append(" ]");

        return buf.toString();
    }
}
