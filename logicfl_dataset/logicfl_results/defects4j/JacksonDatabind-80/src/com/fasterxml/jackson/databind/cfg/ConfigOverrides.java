package com.fasterxml.jackson.databind.cfg;

import java.util.*;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonInclude.Value;

/**
 * Container for individual {@link ConfigOverride} values.
 * 
 * @since 2.8
 */
public class ConfigOverrides
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * Per-type override definitions
     */
    protected Map<Class<?>, MutableConfigOverride> _overrides;

    // // // Global defaulting

    /**
     * @since 2.9
     */
    protected JsonInclude.Value _defaultInclusion;

    /**
     * @since 2.9
     */
    protected JsonSetter.Value _defaultSetterInfo;

    /**
     * @since 2.9
     */
    protected VisibilityChecker<?> _visibilityChecker;

    /**
     * @since 2.9
     */
    protected Boolean _defaultMergeable;

    /*
    /**********************************************************
    /* Life cycle
    /**********************************************************
     */

    public ConfigOverrides() {
        this(null,
                // !!! TODO: change to (ALWAYS, ALWAYS)?
                JsonInclude.Value.empty(),
                JsonSetter.Value.empty(),
                VisibilityChecker.Std.defaultInstance(),
                null
        );
    }

    protected ConfigOverrides(Map<Class<?>, MutableConfigOverride> overrides,
            JsonInclude.Value defIncl,
            JsonSetter.Value defSetter,
            VisibilityChecker<?> defVisibility,
            Boolean defMergeable) {
        int PROBE_START_LINE_67 = 67;
				Map<Class<?>, com.fasterxml.jackson.databind.cfg.MutableConfigOverride> p_overrides_1128_line_67 = overrides;
				int PROBE_END_LINE_67 = 67;
		_overrides = p_overrides_1128_line_67;
        int PROBE_START_LINE_68 = 68;
		com.fasterxml.jackson.annotation.JsonInclude.Value p_def_incl_1129_line_68 = defIncl;
		int PROBE_END_LINE_68 = 68;
		_defaultInclusion = p_def_incl_1129_line_68;
        int PROBE_START_LINE_69 = 69;
		com.fasterxml.jackson.annotation.JsonSetter.Value p_def_setter_1130_line_69 = defSetter;
		int PROBE_END_LINE_69 = 69;
		_defaultSetterInfo = p_def_setter_1130_line_69;
        int PROBE_START_LINE_70 = 70;
		VisibilityChecker<?> p_def_visibility_1131_line_70 = defVisibility;
		int PROBE_END_LINE_70 = 70;
		_visibilityChecker = p_def_visibility_1131_line_70;
        int PROBE_START_LINE_71 = 71;
		Boolean p_def_mergeable_1132_line_71 = defMergeable;
		int PROBE_END_LINE_71 = 71;
		_defaultMergeable = p_def_mergeable_1132_line_71;
    }

    public ConfigOverrides copy()
    {
        Map<Class<?>, MutableConfigOverride> newOverrides;
        if (_overrides == null) {
            newOverrides = null;
        } else {
            newOverrides = _newMap();
            for (Map.Entry<Class<?>, MutableConfigOverride> entry : _overrides.entrySet()) {
                newOverrides.put(entry.getKey(), entry.getValue().copy());
            }
        }
        return new ConfigOverrides(newOverrides,
                _defaultInclusion, _defaultSetterInfo, _visibilityChecker, _defaultMergeable);
    }

    /*
    /**********************************************************
    /* Per-type override access
    /**********************************************************
     */
    
    public ConfigOverride findOverride(Class<?> type) {
        if (_overrides == null) {
            return null;
        }
        return _overrides.get(type);
    }

    public MutableConfigOverride findOrCreateOverride(Class<?> type) {
        if (_overrides == null) {
            _overrides = _newMap();
        }
        MutableConfigOverride override = _overrides.get(type);
        if (override == null) {
            override = new MutableConfigOverride();
            _overrides.put(type, override);
        }
        return override;
    }

    /*
    /**********************************************************
    /* Global defaults access
    /**********************************************************
     */

    public JsonInclude.Value getDefaultInclusion() {
        return _defaultInclusion;
    }

    public JsonSetter.Value getDefaultSetterInfo() {
        return _defaultSetterInfo;
    }

    public Boolean getDefaultMergeable() {
        return _defaultMergeable;
    }

    /**
     * @since 2.9
     */
    public VisibilityChecker<?> getDefaultVisibility() {
        return _visibilityChecker;
    }

    /**
     * @since 2.9
     */
    public void setDefaultInclusion(JsonInclude.Value v) {
        _defaultInclusion = v;
    }

    /**
     * @since 2.9
     */
    public void setDefaultSetterInfo(JsonSetter.Value v) {
        _defaultSetterInfo = v;
    }

    /**
     * @since 2.9
     */
    public void setDefaultMergeable(Boolean v) {
        _defaultMergeable = v;
    }

    /**
     * @since 2.9
     */
    public void setDefaultVisibility(VisibilityChecker<?> v) {
        _visibilityChecker = v;
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */
    
    protected Map<Class<?>, MutableConfigOverride> _newMap() {
        return new HashMap<Class<?>, MutableConfigOverride>();
    }
}
