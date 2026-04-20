package org.mockito.internal.configuration.plugins;

import org.mockito.exceptions.base.MockitoException;
import org.mockito.exceptions.misusing.MockitoConfigurationException;
import org.mockito.internal.util.collections.Iterables;
import org.mockito.plugins.PluginSwitch;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;

class PluginLoader {

    private final PluginSwitch pluginSwitch;

    public PluginLoader(PluginSwitch pluginSwitch) {
        int PROBE_START_LINE_17 = 17;
		org.mockito.plugins.PluginSwitch p_plugin_switch_6_line_17 = pluginSwitch;
		int PROBE_END_LINE_17 = 17;
		this.pluginSwitch = p_plugin_switch_6_line_17;
    }

    /**
     * Scans the classpath for given pluginType. If not found, default class is used.
     */
    <T> T loadPlugin(Class<T> pluginType, String defaultPluginClassName) {
        int PROBE_START_LINE_24 = 24;
		Class<T> p_plugin_type_8_line_24 = pluginType;
		T plugin_loader_1_expr4_line_24 = loadImpl(p_plugin_type_8_line_24);
		int PROBE_END_LINE_24 = 24;
		T plugin = plugin_loader_1_expr4_line_24;
        int PROBE_START_LINE_25 = 27;
		T v_plugin_10_line_25 = plugin;
		boolean plugin_loader_1_expr5_line_25 = v_plugin_10_line_25 != null;
		int PROBE_END_LINE_25 = 27;
		if (plugin_loader_1_expr5_line_25) {
            return plugin;
        }

        try {
            int PROBE_START_LINE_33 = 33;
			Class<T> p_plugin_type_8_line_33 = pluginType;
			String p_default_plugin_class_name_9_line_33 = defaultPluginClassName;
			Class<?> plugin_loader_1_expr8_line_33 = Class.forName(p_default_plugin_class_name_9_line_33);
			java.lang.Object plugin_loader_1_expr7_line_33 = plugin_loader_1_expr8_line_33.newInstance();
			T plugin_loader_1_expr6_line_33 = p_plugin_type_8_line_33.cast(plugin_loader_1_expr7_line_33);
			int PROBE_END_LINE_33 = 33;
			// Default implementation. Use our own ClassLoader instead of the context
            // ClassLoader, as the default implementation is assumed to be part of
            // Mockito and may not be available via the context ClassLoader.
            return plugin_loader_1_expr6_line_33;
        } catch (Exception e) {
            throw new MockitoException("Internal problem occurred, please report it. " +
                    "Mockito is unable to load the default implementation of class that is a part of Mockito distribution. " +
                    "Failed to load " + pluginType, e);
        }
    }

    /**
     * Equivalent to {@link java.util.ServiceLoader#load} but without requiring
     * Java 6 / Android 2.3 (Gingerbread).
     */
    <T> T loadImpl(Class<T> service) {
        int PROBE_START_LINE_46 = 46;
		Thread plugin_loader_1_expr10_line_46 = Thread.currentThread();
		ClassLoader plugin_loader_1_expr9_line_46 = plugin_loader_1_expr10_line_46.getContextClassLoader();
		int PROBE_END_LINE_46 = 46;
		ClassLoader loader = plugin_loader_1_expr9_line_46;
        int PROBE_START_LINE_47 = 49;
		ClassLoader v_loader_12_line_47 = loader;
		boolean plugin_loader_1_expr11_line_47 = v_loader_12_line_47 == null;
		int PROBE_END_LINE_47 = 49;
		if (plugin_loader_1_expr11_line_47) {
            loader = ClassLoader.getSystemClassLoader();
        }
        Enumeration<URL> resources = null;
        try {
            int PROBE_START_LINE_52 = 52;
			ClassLoader v_loader_12_line_52 = loader;
			Class<T> p_service_11_line_52 = service;
			String plugin_loader_1_expr15_line_52 = p_service_11_line_52.getName();
			String plugin_loader_1_expr14_line_52 = "mockito-extensions/" + plugin_loader_1_expr15_line_52;
			Enumeration<java.net.URL> plugin_loader_1_expr13_line_52 = v_loader_12_line_52
					.getResources(plugin_loader_1_expr14_line_52);
			int PROBE_END_LINE_52 = 52;
			resources = plugin_loader_1_expr13_line_52;
        } catch (IOException e) {
            throw new MockitoException("Failed to load " + service, e);
        }

        try {
            int PROBE_START_LINE_58 = 58;
			org.mockito.plugins.PluginSwitch f_plugin_switch_7_line_58 = pluginSwitch;
			Enumeration<java.net.URL> v_resources_13_line_58 = resources;
			Iterable<java.net.URL> plugin_loader_1_expr17_line_58 = Iterables.toIterable(v_resources_13_line_58);
			String plugin_loader_1_expr16_line_58 = new PluginFinder(f_plugin_switch_7_line_58)
					.findPluginClass(plugin_loader_1_expr17_line_58);
			int PROBE_END_LINE_58 = 58;
			String foundPluginClass = plugin_loader_1_expr16_line_58;
            int PROBE_START_LINE_59 = 63;
			String v_found_plugin_class_14_line_59 = foundPluginClass;
			boolean plugin_loader_1_expr19_line_59 = v_found_plugin_class_14_line_59 != null;
			int PROBE_END_LINE_59 = 63;
			if (plugin_loader_1_expr19_line_59) {
                Class<?> pluginClass = loader.loadClass(foundPluginClass);
                Object plugin = pluginClass.newInstance();
                return service.cast(plugin);
            }
            return null;
        } catch (Exception e) {
            throw new MockitoConfigurationException(
                    "Failed to load " + service + " implementation declared in " + resources, e);
        }
    }
}
