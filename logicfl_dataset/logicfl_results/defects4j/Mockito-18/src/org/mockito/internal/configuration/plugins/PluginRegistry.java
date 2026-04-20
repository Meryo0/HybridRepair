package org.mockito.internal.configuration.plugins;

import org.mockito.plugins.MockMaker;
import org.mockito.plugins.PluginSwitch;
import org.mockito.plugins.StackTraceCleanerProvider;

class PluginRegistry {

    int PROBE_START_LINE_9 = 10;

	private final String plugin_registry_1_expr3_line_10 = DefaultPluginSwitch.class.getName();

	private final org.mockito.plugins.PluginSwitch plugin_registry_1_expr1_line_10 = new PluginLoader(
			new DefaultPluginSwitch()).loadPlugin(PluginSwitch.class, plugin_registry_1_expr3_line_10);

	int PROBE_END_LINE_9 = 10;

	private final PluginSwitch pluginSwitch
            = plugin_registry_1_expr1_line_10;

    private final MockMaker mockMaker
            = new PluginLoader(pluginSwitch).loadPlugin(MockMaker.class, "org.mockito.internal.creation.bytebuddy.ByteBuddyMockMaker");

    private final StackTraceCleanerProvider stackTraceCleanerProvider
            = new PluginLoader(pluginSwitch).loadPlugin(StackTraceCleanerProvider.class, "org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider");

    /**
     * The implementation of the stack trace cleaner
     */
    StackTraceCleanerProvider getStackTraceCleanerProvider() {
        //TODO we should throw some sensible exception if this is null.
        return stackTraceCleanerProvider;
    }

    /**
     * Returns the implementation of the mock maker available for the current runtime.
     *
     * <p>Returns {@link org.mockito.internal.creation.cglib.CglibMockMaker} if no
     * {@link org.mockito.plugins.MockMaker} extension exists or is visible in the current classpath.</p>
     */
    MockMaker getMockMaker() {
        return mockMaker;
    }
}
