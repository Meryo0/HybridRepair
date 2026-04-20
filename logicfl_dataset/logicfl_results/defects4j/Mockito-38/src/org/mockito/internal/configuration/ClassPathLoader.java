/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.configuration;

import org.mockito.configuration.IMockitoConfiguration;
import org.mockito.exceptions.misusing.MockitoConfigurationException;

public class ClassPathLoader {
    
    /**
     * @return configuration loaded from classpath or null
     */
    @SuppressWarnings({"unchecked"})
    public IMockitoConfiguration loadConfiguration() {
        //Trying to get config from classpath
        Class configClass = null;
        try {
            int PROBE_START_LINE_20 = 20;
			Class<?> class_path_loader_1_expr3_line_20 = Class
					.forName("org.mockito.configuration.MockitoConfiguration");
			int PROBE_END_LINE_20 = 20;
			configClass = (Class) class_path_loader_1_expr3_line_20;
        } catch (ClassNotFoundException e) {
            //that's ok, it means there is no global config, using default one. 
            return null;
        }
        
        try {
            int PROBE_START_LINE_27 = 27;
			Class v_config_class_161_line_27 = configClass;
			Object class_path_loader_1_expr5_line_27 = v_config_class_161_line_27.newInstance();
			int PROBE_END_LINE_27 = 27;
			return (IMockitoConfiguration) class_path_loader_1_expr5_line_27;
        } catch (ClassCastException e) {
            throw new MockitoConfigurationException("\n" +
                    "MockitoConfiguration class must implement org.mockito.configuration.IMockitoConfiguration interface.", e);
        } catch (Exception e) {
            throw new MockitoConfigurationException("\n" +
                    "Unable to instantianate org.mockito.configuration.MockitoConfiguration class. Does it have a safe, no-arg constructor?", e);
        }
    }
}