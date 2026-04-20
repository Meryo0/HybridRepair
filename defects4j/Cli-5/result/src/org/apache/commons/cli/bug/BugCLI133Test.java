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
package org.apache.commons.cli.bug;

import junit.framework.TestCase;
import org.apache.commons.cli.*;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.PosixParser;
import org.apache.commons.cli.Option;

/**
 * @author brianegge
 */
public class BugCLI133Test extends TestCase {
    public void testOrder() throws ParseException {
        Option optionA = new Option("a", "first");
        Options opts = new Options();
        int PROBE_START_LINE_29 = 29;
		org.apache.commons.cli.Options v_opts_119_line_29 = opts;
		org.apache.commons.cli.Option v_option_a_118_line_29 = optionA;
		int PROBE_END_LINE_29 = 29;
		v_opts_119_line_29.addOption(v_option_a_118_line_29);
        PosixParser posixParser = new PosixParser();
        int PROBE_START_LINE_31 = 31;
		org.apache.commons.cli.PosixParser v_posix_parser_120_line_31 = posixParser;
		org.apache.commons.cli.Options v_opts_119_line_31 = opts;
		CommandLine bug_cli133test_1_expr5_line_31 = v_posix_parser_120_line_31.parse(v_opts_119_line_31, null);
		int PROBE_END_LINE_31 = 31;
		CommandLine line = bug_cli133test_1_expr5_line_31;
        int PROBE_START_LINE_32 = 32;
		org.apache.commons.cli.CommandLine v_line_121_line_32 = line;
		boolean bug_cli133test_1_expr7_line_32 = v_line_121_line_32.hasOption(null);
		int PROBE_END_LINE_32 = 32;
		assertFalse(bug_cli133test_1_expr7_line_32);
    }
}
