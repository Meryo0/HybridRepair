/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.configuration;

import org.mockito.configuration.MockitoConfiguration;
import org.mockito.configuration.IMockitoConfiguration;

public class ConfigurationAccess {

    public static MockitoConfiguration getConfig() {
        int PROBE_START_LINE_12 = 12;
		org.mockito.configuration.IMockitoConfiguration configuration_access_1_expr2_line_12 = new GlobalConfiguration()
				.getIt();
		int PROBE_END_LINE_12 = 12;
		return (MockitoConfiguration) configuration_access_1_expr2_line_12;
    }
}