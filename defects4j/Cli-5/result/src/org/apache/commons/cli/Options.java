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
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/** <p>Main entry-point into the library.</p>
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
 * @version $Revision$
 */
public class Options {

    /** a map of the options with the character key */
    private Map shortOpts = new HashMap();

    /** a map of the options with the long key */
    private Map longOpts = new HashMap();

    /** a map of the required options */
    private List requiredOpts = new ArrayList();

    /** a map of the option groups */
    private Map optionGroups = new HashMap();

    /** Construct a new Options descriptor
     */
    public Options()
    {
        // nothing to do
    }

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
     * @return a Collection of OptionGroup instances.
     */
    Collection getOptionGroups(){
    	return new HashSet(optionGroups.values());
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
    public Options addOption(String opt, String longOpt, boolean hasArg, 
                             String description)
    {
        addOption(new Option(opt, longOpt, hasArg, description));

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
        int PROBE_START_LINE_146 = 146;
		org.apache.commons.cli.Option p_opt_66_line_146 = opt;
		String options_1_expr5_line_146 = p_opt_66_line_146.getKey();
		int PROBE_END_LINE_146 = 146;
		String key = options_1_expr5_line_146;

        int PROBE_START_LINE_149 = 152;
		org.apache.commons.cli.Option p_opt_66_line_149 = opt;
		boolean options_1_expr6_line_149 = p_opt_66_line_149.hasLongOpt();
		int PROBE_END_LINE_149 = 152;
		// add it to the long option list
        if (options_1_expr6_line_149)
        {
            longOpts.put(opt.getLongOpt(), opt);
        }

        int PROBE_START_LINE_155 = 161;
		org.apache.commons.cli.Option p_opt_66_line_155 = opt;
		boolean options_1_expr7_line_155 = p_opt_66_line_155.isRequired();
		int PROBE_END_LINE_155 = 161;
		// if the option is required add it to the required list
        if (options_1_expr7_line_155 ) 
        {
            if( requiredOpts.contains(key) ) {
                requiredOpts.remove( requiredOpts.indexOf(key) );
            }
            requiredOpts.add(key);
        }

        int PROBE_START_LINE_163 = 163;
		java.util.Map f_short_opts_54_line_163 = shortOpts;
		String v_key_67_line_163 = key;
		org.apache.commons.cli.Option p_opt_66_line_163 = opt;
		int PROBE_END_LINE_163 = 163;
		f_short_opts_54_line_163.put(v_key_67_line_163, p_opt_66_line_163);

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
		java.util.Map f_short_opts_54_line_185 = shortOpts;
		java.util.Collection options_1_expr11_line_185 = f_short_opts_54_line_185.values();
		int PROBE_END_LINE_185 = 185;
		List opts = new ArrayList(options_1_expr11_line_185);

        int PROBE_START_LINE_189 = 189;
		java.util.Map f_long_opts_55_line_189 = longOpts;
		java.util.Collection options_1_expr13_line_189 = f_long_opts_55_line_189.values();
		Iterator options_1_expr12_line_189 = options_1_expr13_line_189.iterator();
		int PROBE_END_LINE_189 = 189;
		// now look through the long opts to see if there are any Long-opt
        // only options
        Iterator iter = options_1_expr12_line_189;

        while (true)
        {
            int PROBE_START_LINE_191 = 191;
			java.util.Iterator v_iter_69_line_191 = iter;
			boolean options_1_expr14_line_191 = v_iter_69_line_191.hasNext();
			if (!(options_1_expr14_line_191)) {
				break;
			}
			int PROBE_END_LINE_191 = 191;
			Object item = iter.next();

            if (!opts.contains(item))
            {
                opts.add(item);
            }
        }

        int PROBE_START_LINE_201 = 201;
		java.util.List v_opts_68_line_201 = opts;
		int PROBE_END_LINE_201 = 201;
		return new ArrayList(v_opts_68_line_201);
    }

    /** 
     * Returns the required options as a
     * <code>java.util.Collection</code>.
     *
     * @return Collection of required options
     */
    public List getRequiredOptions()
    {
        int PROBE_START_LINE_212 = 212;
		java.util.List f_required_opts_56_line_212 = requiredOpts;
		int PROBE_END_LINE_212 = 212;
		return f_required_opts_56_line_212;
    }

    /** 
     * Retrieve the named {@link Option}
     *
     * @param opt short or long name of the {@link Option}
     * @return the option represented by opt
     */
    public Option getOption(String opt)
    {
        opt = Util.stripLeadingHyphens(opt);

        if (shortOpts.containsKey(opt))
        {
            return (Option) shortOpts.get(opt);
        }

        return (Option) longOpts.get(opt);
    }

    /** 
     * Returns whether the named {@link Option} is a member
     * of this {@link Options}.
     *
     * @param opt short or long name of the {@link Option}
     * @return true if the named {@link Option} is a member
     * of this {@link Options}
     */
    public boolean hasOption(String opt)
    {
        opt = Util.stripLeadingHyphens(opt);

        return shortOpts.containsKey(opt) || longOpts.containsKey(opt);
    }

    /** 
     * Returns the OptionGroup the <code>opt</code>
     * belongs to.
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