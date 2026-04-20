package com.fasterxml.jackson.databind;

import java.util.*;

import com.fasterxml.jackson.core.*;

import com.fasterxml.jackson.databind.cfg.*;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.jsontype.*;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.util.LinkedNode;
import com.fasterxml.jackson.databind.util.RootNameLookup;

/**
 * Object that contains baseline configuration for deserialization
 * process. An instance is owned by {@link ObjectMapper}, which
 * passes an immutable instance to be used for deserialization process.
 *<p>
 * Note that instances are considered immutable and as such no copies
 * should need to be created for sharing; all copying is done with
 * "fluent factory" methods.
 */
public final class DeserializationConfig
    extends MapperConfigBase<DeserializationFeature, DeserializationConfig>
    implements java.io.Serializable // since 2.1
{
    // since 2.9
    private static final long serialVersionUID = 2;

    /*
    /**********************************************************
    /* Configured helper objects
    /**********************************************************
     */

    /**
     * Linked list that contains all registered problem handlers.
     * Implementation as front-added linked list allows for sharing
     * of the list (tail) without copying the list.
     */
    protected final LinkedNode<DeserializationProblemHandler> _problemHandlers;

    /**
     * Factory used for constructing {@link com.fasterxml.jackson.databind.JsonNode} instances.
     */
    protected final JsonNodeFactory _nodeFactory;

    /*
    /**********************************************************
    /* Deserialization features 
    /**********************************************************
     */

    /**
     * Set of {@link DeserializationFeature}s enabled.
     */
    protected final int _deserFeatures;

    /*
    /**********************************************************
    /* Parser features: generic, format-specific
    /**********************************************************
     */

    /**
     * States of {@link com.fasterxml.jackson.core.JsonParser.Feature}s to enable/disable.
     */
    protected final int _parserFeatures;

    /**
     * Bitflag of {@link com.fasterxml.jackson.core.JsonParser.Feature}s to enable/disable
     */
    protected final int _parserFeaturesToChange;

    /**
     * States of {@link com.fasterxml.jackson.core.FormatFeature}s to enable/disable.
     *
     * @since 2.7
     */
    protected final int _formatReadFeatures;

    /**
     * Bitflag of {@link com.fasterxml.jackson.core.FormatFeature}s to enable/disable
     *
     * @since 2.7
     */
    protected final int _formatReadFeaturesToChange;

    /*
    /**********************************************************
    /* Life-cycle, primary constructors for new instances
    /**********************************************************
     */

    /**
     * Constructor used by ObjectMapper to create default configuration object instance.
     */
    public DeserializationConfig(BaseSettings base,
            SubtypeResolver str, SimpleMixInResolver mixins, RootNameLookup rootNames,
            ConfigOverrides configOverrides)
    {
        super(base, str, mixins, rootNames, configOverrides);
        int PROBE_START_LINE_104 = 104;
		int deserialization_config_1_expr3_line_104 = collectFeatureDefaults(DeserializationFeature.class);
		int PROBE_END_LINE_104 = 104;
		_deserFeatures = deserialization_config_1_expr3_line_104;
        int PROBE_START_LINE_105 = 105;
		com.fasterxml.jackson.databind.node.JsonNodeFactory q_instance_2_line_105 = JsonNodeFactory.instance;
		int PROBE_END_LINE_105 = 105;
		_nodeFactory = q_instance_2_line_105;
        _problemHandlers = null;
        _parserFeatures = 0;
        _parserFeaturesToChange = 0;
        _formatReadFeatures = 0;
        _formatReadFeaturesToChange = 0;
    }

    /**
     * Copy-constructor used for making a copy used by new {@link ObjectMapper}.
     *
     * @since 2.9
     */
    protected DeserializationConfig(DeserializationConfig src,
            SimpleMixInResolver mixins, RootNameLookup rootNames,
            ConfigOverrides configOverrides)
    {
        super(src, mixins, rootNames, configOverrides);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
        _formatReadFeatures = src._formatReadFeatures;
        _formatReadFeaturesToChange = src._formatReadFeaturesToChange;
    }

    /*
    /**********************************************************
    /* Life-cycle, secondary constructors to support
    /* "mutant factories", with single property changes
    /**********************************************************
     */

    private DeserializationConfig(DeserializationConfig src,
            int mapperFeatures, int deserFeatures,
            int parserFeatures, int parserFeatureMask,
            int formatFeatures, int formatFeatureMask)
    {
        super(src, mapperFeatures);
        _deserFeatures = deserFeatures;
        _nodeFactory = src._nodeFactory;
        _problemHandlers = src._problemHandlers;
        _parserFeatures = parserFeatures;
        _parserFeaturesToChange = parserFeatureMask;
        _formatReadFeatures = formatFeatures;
        _formatReadFeaturesToChange = formatFeatureMask;
    }
    
    /**
     * Copy constructor used to create a non-shared instance with given mix-in
     * annotation definitions and subtype resolver.
     */
    private DeserializationConfig(DeserializationConfig src, SubtypeResolver str)
    {
        super(src, str);
        _deserFeatures = src._deserFeatures;
        _nodeFactory = src._nodeFactory;
        _problemHandlers = src._problemHandlers;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
        _formatReadFeatures = src._formatReadFeatures;
        _formatReadFeaturesToChange = src._formatReadFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig src, BaseSettings base)
    {
        super(src, base);
        int PROBE_START_LINE_173 = 173;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_192_line_173 = src;
		int q__deser_features_3_line_173 = p_src_192_line_173._deserFeatures;
		int PROBE_END_LINE_173 = 173;
		_deserFeatures = q__deser_features_3_line_173;
        int PROBE_START_LINE_174 = 174;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_192_line_174 = src;
		com.fasterxml.jackson.databind.node.JsonNodeFactory q__node_factory_4_line_174 = p_src_192_line_174._nodeFactory;
		int PROBE_END_LINE_174 = 174;
		_nodeFactory = q__node_factory_4_line_174;
        int PROBE_START_LINE_175 = 175;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_192_line_175 = src;
		LinkedNode<com.fasterxml.jackson.databind.deser.DeserializationProblemHandler> q__problem_handlers_5_line_175 = p_src_192_line_175._problemHandlers;
		int PROBE_END_LINE_175 = 175;
		_problemHandlers = q__problem_handlers_5_line_175;
        int PROBE_START_LINE_176 = 176;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_192_line_176 = src;
		int q__parser_features_6_line_176 = p_src_192_line_176._parserFeatures;
		int PROBE_END_LINE_176 = 176;
		_parserFeatures = q__parser_features_6_line_176;
        int PROBE_START_LINE_177 = 177;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_192_line_177 = src;
		int q__parser_features_to_change_7_line_177 = p_src_192_line_177._parserFeaturesToChange;
		int PROBE_END_LINE_177 = 177;
		_parserFeaturesToChange = q__parser_features_to_change_7_line_177;
        int PROBE_START_LINE_178 = 178;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_192_line_178 = src;
		int q__format_read_features_8_line_178 = p_src_192_line_178._formatReadFeatures;
		int PROBE_END_LINE_178 = 178;
		_formatReadFeatures = q__format_read_features_8_line_178;
        int PROBE_START_LINE_179 = 179;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_192_line_179 = src;
		int q__format_read_features_to_change_9_line_179 = p_src_192_line_179._formatReadFeaturesToChange;
		int PROBE_END_LINE_179 = 179;
		_formatReadFeaturesToChange = q__format_read_features_to_change_9_line_179;
    }
    
    private DeserializationConfig(DeserializationConfig src, JsonNodeFactory f)
    {
        super(src);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = f;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
        _formatReadFeatures = src._formatReadFeatures;
        _formatReadFeaturesToChange = src._formatReadFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig src,
            LinkedNode<DeserializationProblemHandler> problemHandlers)
    {
        super(src);
        int PROBE_START_LINE_198 = 198;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_196_line_198 = src;
		int q__deser_features_10_line_198 = p_src_196_line_198._deserFeatures;
		int PROBE_END_LINE_198 = 198;
		_deserFeatures = q__deser_features_10_line_198;
        int PROBE_START_LINE_199 = 199;
		LinkedNode<com.fasterxml.jackson.databind.deser.DeserializationProblemHandler> p_problem_handlers_197_line_199 = problemHandlers;
		int PROBE_END_LINE_199 = 199;
		_problemHandlers = p_problem_handlers_197_line_199;
        int PROBE_START_LINE_200 = 200;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_196_line_200 = src;
		com.fasterxml.jackson.databind.node.JsonNodeFactory q__node_factory_11_line_200 = p_src_196_line_200._nodeFactory;
		int PROBE_END_LINE_200 = 200;
		_nodeFactory = q__node_factory_11_line_200;
        int PROBE_START_LINE_201 = 201;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_196_line_201 = src;
		int q__parser_features_12_line_201 = p_src_196_line_201._parserFeatures;
		int PROBE_END_LINE_201 = 201;
		_parserFeatures = q__parser_features_12_line_201;
        int PROBE_START_LINE_202 = 202;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_196_line_202 = src;
		int q__parser_features_to_change_13_line_202 = p_src_196_line_202._parserFeaturesToChange;
		int PROBE_END_LINE_202 = 202;
		_parserFeaturesToChange = q__parser_features_to_change_13_line_202;
        int PROBE_START_LINE_203 = 203;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_196_line_203 = src;
		int q__format_read_features_14_line_203 = p_src_196_line_203._formatReadFeatures;
		int PROBE_END_LINE_203 = 203;
		_formatReadFeatures = q__format_read_features_14_line_203;
        int PROBE_START_LINE_204 = 204;
		com.fasterxml.jackson.databind.DeserializationConfig p_src_196_line_204 = src;
		int q__format_read_features_to_change_15_line_204 = p_src_196_line_204._formatReadFeaturesToChange;
		int PROBE_END_LINE_204 = 204;
		_formatReadFeaturesToChange = q__format_read_features_to_change_15_line_204;
    }

    private DeserializationConfig(DeserializationConfig src, PropertyName rootName)
    {
        super(src, rootName);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
        _formatReadFeatures = src._formatReadFeatures;
        _formatReadFeaturesToChange = src._formatReadFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig src, Class<?> view)
    {
        super(src, view);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
        _formatReadFeatures = src._formatReadFeatures;
        _formatReadFeaturesToChange = src._formatReadFeaturesToChange;
    }

    protected DeserializationConfig(DeserializationConfig src, ContextAttributes attrs)
    {
        super(src, attrs);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
        _formatReadFeatures = src._formatReadFeatures;
        _formatReadFeaturesToChange = src._formatReadFeaturesToChange;
    }

    protected DeserializationConfig(DeserializationConfig src, SimpleMixInResolver mixins)
    {
        super(src, mixins);
        _deserFeatures = src._deserFeatures;
        _problemHandlers = src._problemHandlers;
        _nodeFactory = src._nodeFactory;
        _parserFeatures = src._parserFeatures;
        _parserFeaturesToChange = src._parserFeaturesToChange;
        _formatReadFeatures = src._formatReadFeatures;
        _formatReadFeaturesToChange = src._formatReadFeaturesToChange;
    }

    // for unit tests only:
    protected BaseSettings getBaseSettings() { return _base; }

    /*
    /**********************************************************
    /* Life-cycle, general factory methods from MapperConfig(Base)
    /**********************************************************
     */

    @Override // since 2.9
    protected final DeserializationConfig _withBase(BaseSettings newBase) {
        int PROBE_START_LINE_266 = 266;
		com.fasterxml.jackson.databind.cfg.BaseSettings f__base_207_line_266 = _base;
		com.fasterxml.jackson.databind.cfg.BaseSettings p_new_base_206_line_266 = newBase;
		boolean deserialization_config_1_expr31_line_266 = f__base_207_line_266 == p_new_base_206_line_266;
		boolean deserialization_config_1_expr28_line_266 = (deserialization_config_1_expr31_line_266);
		com.fasterxml.jackson.databind.cfg.BaseSettings p_new_base_206_line_266_v1 = null;
		if (!deserialization_config_1_expr28_line_266) {
			p_new_base_206_line_266_v1 = newBase;
		}
		com.fasterxml.jackson.databind.DeserializationConfig deserialization_config_1_expr27_line_266 = deserialization_config_1_expr28_line_266
				? this
				: new DeserializationConfig(this, p_new_base_206_line_266_v1);
		int PROBE_END_LINE_266 = 266;
		return deserialization_config_1_expr27_line_266;
    }

    @Override // since 2.9
    protected final DeserializationConfig _withMapperFeatures(int mapperFeatures) {
        return new DeserializationConfig(this, mapperFeatures, _deserFeatures,
                        _parserFeatures, _parserFeaturesToChange,
                        _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /*
    /**********************************************************
    /* Life-cycle, specific factory methods from MapperConfig
    /**********************************************************
     */

    @Override
    public DeserializationConfig with(SubtypeResolver str) {
        return (_subtypeResolver == str) ? this : new DeserializationConfig(this, str);
    }

    @Override
    public DeserializationConfig withRootName(PropertyName rootName) {
        if (rootName == null) {
            if (_rootName == null) {
                return this;
            }
        } else if (rootName.equals(_rootName)) {
            return this;
        }
        return new DeserializationConfig(this, rootName);
    }

    @Override
    public DeserializationConfig withView(Class<?> view) {
        return (_view == view) ? this : new DeserializationConfig(this, view);
    }

    @Override
    public DeserializationConfig with(ContextAttributes attrs) {
        return (attrs == _attributes) ? this : new DeserializationConfig(this, attrs);
    }

    /*
    /**********************************************************
    /* Life-cycle, DeserializationFeature-based factory methods
    /**********************************************************
     */

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     */
    public DeserializationConfig with(DeserializationFeature feature)
    {
        int newDeserFeatures = (_deserFeatures | feature.getMask());
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     */
    public DeserializationConfig with(DeserializationFeature first,
            DeserializationFeature... features)
    {
        int newDeserFeatures = _deserFeatures | first.getMask();
        for (DeserializationFeature f : features) {
            newDeserFeatures |= f.getMask();
        }
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     */
    public DeserializationConfig withFeatures(DeserializationFeature... features)
    {
        int newDeserFeatures = _deserFeatures;
        for (DeserializationFeature f : features) {
            newDeserFeatures |= f.getMask();
        }
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }
    
    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified feature disabled.
     */
    public DeserializationConfig without(DeserializationFeature feature)
    {
        int newDeserFeatures = _deserFeatures & ~feature.getMask();
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features disabled.
     */
    public DeserializationConfig without(DeserializationFeature first,
            DeserializationFeature... features)
    {
        int newDeserFeatures = _deserFeatures & ~first.getMask();
        for (DeserializationFeature f : features) {
            newDeserFeatures &= ~f.getMask();
        }
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features disabled.
     */
    public DeserializationConfig withoutFeatures(DeserializationFeature... features)
    {
        int newDeserFeatures = _deserFeatures;
        for (DeserializationFeature f : features) {
            newDeserFeatures &= ~f.getMask();
        }
        return (newDeserFeatures == _deserFeatures) ? this :
            new DeserializationConfig(this, _mapperFeatures, newDeserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /*
    /**********************************************************
    /* Life-cycle, JsonParser.Feature-based factory methods
    /**********************************************************
     */

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     *
     * @since 2.5
     */
    public DeserializationConfig with(JsonParser.Feature feature)
    {
        int newSet = _parserFeatures | feature.getMask();
        int newMask = _parserFeaturesToChange | feature.getMask();
        return ((_parserFeatures == newSet) && (_parserFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    newSet, newMask,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     *
     * @since 2.5
     */
    public DeserializationConfig withFeatures(JsonParser.Feature... features)
    {
        int newSet = _parserFeatures;
        int newMask = _parserFeaturesToChange;
        for (JsonParser.Feature f : features) {
            int mask = f.getMask();
            newSet |= mask;
            newMask |= mask;
        }
        return ((_parserFeatures == newSet) && (_parserFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    newSet, newMask,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }
    
    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified feature disabled.
     *
     * @since 2.5
     */
    public DeserializationConfig without(JsonParser.Feature feature)
    {
        int newSet = _parserFeatures & ~feature.getMask();
        int newMask = _parserFeaturesToChange | feature.getMask();
        return ((_parserFeatures == newSet) && (_parserFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    newSet, newMask,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features disabled.
     *
     * @since 2.5
     */
    public DeserializationConfig withoutFeatures(JsonParser.Feature... features)
    {
        int newSet = _parserFeatures;
        int newMask = _parserFeaturesToChange;
        for (JsonParser.Feature f : features) {
            int mask = f.getMask();
            newSet &= ~mask;
            newMask |= mask;
        }
        return ((_parserFeatures == newSet) && (_parserFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    newSet, newMask,
                    _formatReadFeatures, _formatReadFeaturesToChange);
    }

    /*
    /**********************************************************
    /* Life-cycle, JsonParser.FormatFeature-based factory methods
    /**********************************************************
     */

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     *
     * @since 2.7
     */
    public DeserializationConfig with(FormatFeature feature)
    {
        int newSet = _formatReadFeatures | feature.getMask();
        int newMask = _formatReadFeaturesToChange | feature.getMask();
        return ((_formatReadFeatures == newSet) && (_formatReadFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    newSet, newMask);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features enabled.
     *
     * @since 2.7
     */
    public DeserializationConfig withFeatures(FormatFeature... features)
    {
        int newSet = _formatReadFeatures;
        int newMask = _formatReadFeaturesToChange;
        for (FormatFeature f : features) {
            int mask = f.getMask();
            newSet |= mask;
            newMask |= mask;
        }
        return ((_formatReadFeatures == newSet) && (_formatReadFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    newSet, newMask);
    }
    
    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified feature disabled.
     *
     * @since 2.7
     */
    public DeserializationConfig without(FormatFeature feature)
    {
        int newSet = _formatReadFeatures & ~feature.getMask();
        int newMask = _formatReadFeaturesToChange | feature.getMask();
        return ((_formatReadFeatures == newSet) && (_formatReadFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    newSet, newMask);
    }

    /**
     * Fluent factory method that will construct and return a new configuration
     * object instance with specified features disabled.
     *
     * @since 2.7
     */
    public DeserializationConfig withoutFeatures(FormatFeature... features)
    {
        int newSet = _formatReadFeatures;
        int newMask = _formatReadFeaturesToChange;
        for (FormatFeature f : features) {
            int mask = f.getMask();
            newSet &= ~mask;
            newMask |= mask;
        }
        return ((_formatReadFeatures == newSet) && (_formatReadFeaturesToChange == newMask)) ? this :
            new DeserializationConfig(this,  _mapperFeatures, _deserFeatures,
                    _parserFeatures, _parserFeaturesToChange,
                    newSet, newMask);
    }    

    /*
    /**********************************************************
    /* Life-cycle, deserialization-specific factory methods
    /**********************************************************
     */

    /**
     * Fluent factory method that will construct a new instance with
     * specified {@link JsonNodeFactory}
     */
    public DeserializationConfig with(JsonNodeFactory f) {
        if (_nodeFactory == f) {
            return this;
        }
        return new DeserializationConfig(this, f);
    }

    /**
     * Method that can be used to add a handler that can (try to)
     * resolve non-fatal deserialization problems.
     */
    public DeserializationConfig withHandler(DeserializationProblemHandler h)
    {
        int PROBE_START_LINE_591 = 593;
		LinkedNode<com.fasterxml.jackson.databind.deser.DeserializationProblemHandler> f__problem_handlers_174_line_591 = _problemHandlers;
		com.fasterxml.jackson.databind.deser.DeserializationProblemHandler p_h_230_line_591 = h;
		boolean deserialization_config_1_expr33_line_591 = LinkedNode.contains(f__problem_handlers_174_line_591,
				p_h_230_line_591);
		int PROBE_END_LINE_591 = 593;
		// Sanity check: let's prevent adding same handler multiple times
        if (deserialization_config_1_expr33_line_591) {
            return this;
        }
        return new DeserializationConfig(this,
                new LinkedNode<DeserializationProblemHandler>(h, _problemHandlers));
    }

    /**
     * Method for removing all configured problem handlers; usually done to replace
     * existing handler(s) with different one(s)
     */
    public DeserializationConfig withNoProblemHandlers() {
        if (_problemHandlers == null) {
            return this;
        }
        return new DeserializationConfig(this,
                (LinkedNode<DeserializationProblemHandler>) null);
    }

    /*
    /**********************************************************
    /* JsonParser initialization
    /**********************************************************
     */

    /**
     * Method called by {@link ObjectMapper} and {@link ObjectReader}
     * to modify those {@link com.fasterxml.jackson.core.JsonParser.Feature} settings
     * that have been configured via this config instance.
     * 
     * @since 2.5
     */
    public void initialize(JsonParser p) {
        int PROBE_START_LINE_624 = 626;
		int f__parser_features_to_change_176_line_624 = _parserFeaturesToChange;
		boolean deserialization_config_1_expr37_line_624 = f__parser_features_to_change_176_line_624 != 0;
		int PROBE_END_LINE_624 = 626;
		if (deserialization_config_1_expr37_line_624) {
            p.overrideStdFeatures(_parserFeatures, _parserFeaturesToChange);
        }
        int PROBE_START_LINE_627 = 629;
		int f__format_read_features_to_change_178_line_627 = _formatReadFeaturesToChange;
		boolean deserialization_config_1_expr38_line_627 = f__format_read_features_to_change_178_line_627 != 0;
		int PROBE_END_LINE_627 = 629;
		if (deserialization_config_1_expr38_line_627) {
            p.overrideFormatFeatures(_formatReadFeatures, _formatReadFeaturesToChange);
        }
    }

    /*
    /**********************************************************
    /* MapperConfig implementation/overrides: other
    /**********************************************************
     */

    @Override
    public boolean useRootWrapping()
    {
        int PROBE_START_LINE_641 = 643;
		com.fasterxml.jackson.databind.PropertyName f__root_name_232_line_641 = _rootName;
		boolean deserialization_config_1_expr39_line_641 = f__root_name_232_line_641 != null;
		int PROBE_END_LINE_641 = 643;
		if (deserialization_config_1_expr39_line_641) { // empty String disables wrapping; non-empty enables
            return !_rootName.isEmpty();
        }
        int PROBE_START_LINE_644 = 644;
		com.fasterxml.jackson.databind.DeserializationFeature q_unwrap_root_value_16_line_644 = DeserializationFeature.UNWRAP_ROOT_VALUE;
		boolean deserialization_config_1_expr40_line_644 = isEnabled(q_unwrap_root_value_16_line_644);
		int PROBE_END_LINE_644 = 644;
		return deserialization_config_1_expr40_line_644;
    }

    public final boolean isEnabled(DeserializationFeature f) {
        int PROBE_START_LINE_648 = 648;
		int f__deser_features_172_line_648 = _deserFeatures;
		com.fasterxml.jackson.databind.DeserializationFeature p_f_233_line_648 = f;
		int deserialization_config_1_expr44_line_648 = p_f_233_line_648.getMask();
		int deserialization_config_1_expr43_line_648 = f__deser_features_172_line_648
				& deserialization_config_1_expr44_line_648;
		int deserialization_config_1_expr42_line_648 = (deserialization_config_1_expr43_line_648);
		boolean deserialization_config_1_expr41_line_648 = deserialization_config_1_expr42_line_648 != 0;
		int PROBE_END_LINE_648 = 648;
		return deserialization_config_1_expr41_line_648;
    }

    public final boolean isEnabled(JsonParser.Feature f, JsonFactory factory) {
        int mask = f.getMask();
        if ((_parserFeaturesToChange & mask) != 0) {
            return (_parserFeatures & f.getMask()) != 0;
        }
        return factory.isEnabled(f);
    }

    /**
     * Bulk access method for checking that all features specified by
     * mask are enabled.
     * 
     * @since 2.3
     */
    public final boolean hasDeserializationFeatures(int featureMask) {
        return (_deserFeatures & featureMask) == featureMask;
    }

    /**
     * Bulk access method for checking that at least one of features specified by
     * mask is enabled.
     * 
     * @since 2.6
     */
    public final boolean hasSomeOfFeatures(int featureMask) {
        return (_deserFeatures & featureMask) != 0;
    }

    /**
     * Bulk access method for getting the bit mask of all {@link DeserializationFeature}s
     * that are enabled.
     */
    public final int getDeserializationFeatures() {
        int PROBE_START_LINE_684 = 684;
		int f__deser_features_172_line_684 = _deserFeatures;
		int PROBE_END_LINE_684 = 684;
		return f__deser_features_172_line_684;
    }

    /**
     * Convenience method equivalant to:
     *<code>
     *   isEnabled(DeserializationFeature.FAIL_ON_TRAILING_TOKENS)
     *</code>
     *
     * @since 2.9
     */
    public final boolean requiresFullValue() {
        return DeserializationFeature.FAIL_ON_TRAILING_TOKENS.enabledIn(_deserFeatures);
    }

    /*
    /**********************************************************
    /* Other configuration
    /**********************************************************
     */

    /**
     * Method for getting head of the problem handler chain. May be null,
     * if no handlers have been added.
     */
    public LinkedNode<DeserializationProblemHandler> getProblemHandlers() {
        int PROBE_START_LINE_710 = 710;
		LinkedNode<com.fasterxml.jackson.databind.deser.DeserializationProblemHandler> f__problem_handlers_174_line_710 = _problemHandlers;
		int PROBE_END_LINE_710 = 710;
		return f__problem_handlers_174_line_710;
    }

    public final JsonNodeFactory getNodeFactory() {
        return _nodeFactory;
    }

    /*
    /**********************************************************
    /* Introspection methods
    /**********************************************************
     */

    /**
     * Method that will introspect full bean properties for the purpose
     * of building a bean deserializer
     *
     * @param type Type of class to be introspected
     */
    @SuppressWarnings("unchecked")
    public <T extends BeanDescription> T introspect(JavaType type) {
        int PROBE_START_LINE_731 = 731;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector deserialization_config_1_expr49_line_731 = getClassIntrospector();
		com.fasterxml.jackson.databind.JavaType p_type_238_line_731 = type;
		com.fasterxml.jackson.databind.BeanDescription deserialization_config_1_expr46_line_731 = deserialization_config_1_expr49_line_731
				.forDeserialization(this, p_type_238_line_731, this);
		int PROBE_END_LINE_731 = 731;
		return (T) deserialization_config_1_expr46_line_731;
    }

    /**
     * Method that will introspect subset of bean properties needed to
     * construct bean instance.
     */
    @SuppressWarnings("unchecked")
    public <T extends BeanDescription> T introspectForCreation(JavaType type) {
        int PROBE_START_LINE_740 = 740;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector deserialization_config_1_expr54_line_740 = getClassIntrospector();
		com.fasterxml.jackson.databind.JavaType p_type_239_line_740 = type;
		com.fasterxml.jackson.databind.BeanDescription deserialization_config_1_expr51_line_740 = deserialization_config_1_expr54_line_740
				.forCreation(this, p_type_239_line_740, this);
		int PROBE_END_LINE_740 = 740;
		return (T) deserialization_config_1_expr51_line_740;
    }

    /**
     * @since 2.0
     */
    @SuppressWarnings("unchecked")
    public <T extends BeanDescription> T introspectForBuilder(JavaType type) {
        return (T) getClassIntrospector().forDeserializationWithBuilder(this, type, this);
    }

    /*
    /**********************************************************
    /* Support for polymorphic type handling
    /**********************************************************
     */
    
    /**
     * Helper method that is needed to properly handle polymorphic referenced
     * types, such as types referenced by {@link java.util.concurrent.atomic.AtomicReference},
     * or various "optional" types.
     * 
     * @since 2.4
     */
    public TypeDeserializer findTypeDeserializer(JavaType baseType)
        throws JsonMappingException
    {
        BeanDescription bean = introspectClassAnnotations(baseType.getRawClass());
        AnnotatedClass ac = bean.getClassInfo();
        TypeResolverBuilder<?> b = getAnnotationIntrospector().findTypeResolver(this, ac, baseType);

        /* Ok: if there is no explicit type info handler, we may want to
         * use a default. If so, config object knows what to use.
         */
        Collection<NamedType> subtypes = null;
        if (b == null) {
            b = getDefaultTyper(baseType);
            if (b == null) {
                return null;
            }
        } else {
            subtypes = getSubtypeResolver().collectAndResolveSubtypesByTypeId(this, ac);
        }
        return b.buildTypeDeserializer(this, baseType, subtypes);
    }
}
