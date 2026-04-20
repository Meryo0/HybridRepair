package org.mockito.internal.configuration.plugins;

import org.mockito.exceptions.base.MockitoException;
import org.mockito.internal.util.io.IOUtil;
import org.mockito.plugins.PluginSwitch;

import java.io.InputStream;
import java.net.URL;

class PluginFinder {

    private final PluginSwitch pluginSwitch;

    public PluginFinder(PluginSwitch pluginSwitch) {
        int PROBE_START_LINE_15 = 15;
		org.mockito.plugins.PluginSwitch p_plugin_switch_2_line_15 = pluginSwitch;
		int PROBE_END_LINE_15 = 15;
		this.pluginSwitch = p_plugin_switch_2_line_15;
    }

    String findPluginClass(Iterable<URL> resources) {
        int PROBE_START_LINE_19 = 38;
		Iterable<java.net.URL> p_resources_4_line_19 = resources;
		int PROBE_END_LINE_19 = 38;
		for (URL resource : p_resources_4_line_19) {
            InputStream s = null;
            try {
                s = resource.openStream();
                String pluginClassName = new PluginFileReader().readPluginClass(s);
                if (pluginClassName == null) {
                    //For backwards compatibility
                    //If the resource does not have plugin class name we're ignoring it
                    continue;
                }
                if (!pluginSwitch.isEnabled(pluginClassName)) {
                    continue;
                }
                return pluginClassName;
            } catch(Exception e) {
                throw new MockitoException("Problems reading plugin implementation from: " + resource, e);
            } finally {
                IOUtil.closeQuietly(s);
            }
        }
        return null;
    }
}
