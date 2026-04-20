/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.configuration;

import org.mockito.ReturnValues;
import org.mockito.configuration.AnnotationEngine;
import org.mockito.configuration.DefaultMockitoConfiguration;
import org.mockito.configuration.IMockitoConfiguration;
import org.mockito.stubbing.Answer;

/**
 * Thread-safe wrapper on user-defined org.mockito.configuration.MockitoConfiguration implementation
 */
@SuppressWarnings("deprecation")//supressed until ReturnValues are removed
public class GlobalConfiguration implements IMockitoConfiguration {
    
    private static ThreadLocal<IMockitoConfiguration> globalConfiguration = new ThreadLocal<IMockitoConfiguration>();

    //back door for testing
    IMockitoConfiguration getIt() {
        int PROBE_START_LINE_23 = 23;
		ThreadLocal<org.mockito.configuration.IMockitoConfiguration> f_global_configuration_164_line_23 = globalConfiguration;
		org.mockito.configuration.IMockitoConfiguration global_configuration_1_expr2_line_23 = f_global_configuration_164_line_23
				.get();
		int PROBE_END_LINE_23 = 23;
		return global_configuration_1_expr2_line_23;
    }
    
    public GlobalConfiguration() {
        int PROBE_START_LINE_28 = 30;
		ThreadLocal<org.mockito.configuration.IMockitoConfiguration> f_global_configuration_164_line_28 = globalConfiguration;
		org.mockito.configuration.IMockitoConfiguration global_configuration_1_expr4_line_28 = f_global_configuration_164_line_28
				.get();
		boolean global_configuration_1_expr3_line_28 = global_configuration_1_expr4_line_28 == null;
		int PROBE_END_LINE_28 = 30;
		//Configuration should be loaded only once but I cannot really test it
        if (global_configuration_1_expr3_line_28) {
            int PROBE_START_LINE_29 = 29;
			ThreadLocal<org.mockito.configuration.IMockitoConfiguration> f_global_configuration_164_line_29 = globalConfiguration;
			org.mockito.configuration.IMockitoConfiguration global_configuration_1_expr6_line_29 = createConfig();
			int PROBE_END_LINE_29 = 29;
			f_global_configuration_164_line_29.set(global_configuration_1_expr6_line_29);
        }
    }
    
    @SuppressWarnings("deprecation")
    private IMockitoConfiguration createConfig() {
        IMockitoConfiguration defaultConfiguration = new DefaultMockitoConfiguration();
        int PROBE_START_LINE_36 = 36;
		IMockitoConfiguration global_configuration_1_expr8_line_36 = new ClassPathLoader().loadConfiguration();
		int PROBE_END_LINE_36 = 36;
		IMockitoConfiguration config = global_configuration_1_expr8_line_36;
        int PROBE_START_LINE_37 = 41;
		org.mockito.configuration.IMockitoConfiguration v_config_166_line_37 = config;
		boolean global_configuration_1_expr10_line_37 = v_config_166_line_37 != null;
		int PROBE_END_LINE_37 = 41;
		if (global_configuration_1_expr10_line_37) {
            int PROBE_START_LINE_38 = 38;
			org.mockito.configuration.IMockitoConfiguration v_config_166_line_38 = config;
			int PROBE_END_LINE_38 = 38;
			return v_config_166_line_38;
        } else {
            return defaultConfiguration;
        }
    }
    
    public static void validate() {
        new GlobalConfiguration();
    }
    
    public ReturnValues getReturnValues() {
        return globalConfiguration.get().getReturnValues();
    }

    public AnnotationEngine getAnnotationEngine() {
        int PROBE_START_LINE_53 = 53;
		ThreadLocal<org.mockito.configuration.IMockitoConfiguration> f_global_configuration_164_line_53 = globalConfiguration;
		org.mockito.configuration.IMockitoConfiguration global_configuration_1_expr13_line_53 = f_global_configuration_164_line_53
				.get();
		org.mockito.configuration.AnnotationEngine global_configuration_1_expr12_line_53 = global_configuration_1_expr13_line_53
				.getAnnotationEngine();
		int PROBE_END_LINE_53 = 53;
		return global_configuration_1_expr12_line_53;
    }

    public boolean cleansStackTrace() {
        return globalConfiguration.get().cleansStackTrace();
    }

    public Answer<Object> getDefaultAnswer() {
        return globalConfiguration.get().getDefaultAnswer();
    }
}