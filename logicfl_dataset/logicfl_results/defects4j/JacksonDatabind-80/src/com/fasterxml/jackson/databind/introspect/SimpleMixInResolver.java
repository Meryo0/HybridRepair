package com.fasterxml.jackson.databind.introspect;

import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.databind.type.ClassKey;

/**
 * Simple implementation of {@link ClassIntrospector.MixInResolver}
 * that just uses a {@link java.util.Map} for containing mapping
 * from target to mix-in classes.
 *<p>
 * Implementation is only thread-safe after initialization (that is,
 * when underlying Map is not modified but only read).
 * 
 * @since 2.6
 */
public class SimpleMixInResolver
    implements ClassIntrospector.MixInResolver,
        java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * External resolver that gets called before looking at any locally defined
     * mix-in target classes.
     */
    protected final ClassIntrospector.MixInResolver _overrides;

    /**
     * Simple mix-in targets defined locally.
     */
    protected Map<ClassKey,Class<?>> _localMixIns;

    public SimpleMixInResolver(ClassIntrospector.MixInResolver overrides) {
        int PROBE_START_LINE_36 = 36;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver p_overrides_2109_line_36 = overrides;
		int PROBE_END_LINE_36 = 36;
		_overrides = p_overrides_2109_line_36;
    }

    protected SimpleMixInResolver(ClassIntrospector.MixInResolver overrides,
            Map<ClassKey,Class<?>> mixins) {
        _overrides = overrides;
        _localMixIns = mixins;
    }

    /**
     * Mutant factory for constructor a new resolver instance with given
     * mix-in resolver override.
     */
    public SimpleMixInResolver withOverrides(ClassIntrospector.MixInResolver overrides) {
        return new SimpleMixInResolver(overrides, _localMixIns);
    }

    /**
     * Mutant factory method that constructs a new instance that has no locally
     * defined mix-in/target mappings.
     */
    public SimpleMixInResolver withoutLocalDefinitions() {
        return new SimpleMixInResolver(_overrides, null);
    }

    public void setLocalDefinitions(Map<Class<?>, Class<?>> sourceMixins) {
        if (sourceMixins == null || sourceMixins.isEmpty()) {
            _localMixIns = null;
        } else {
            Map<ClassKey,Class<?>> mixIns = new HashMap<ClassKey,Class<?>>(sourceMixins.size());
            for (Map.Entry<Class<?>,Class<?>> en : sourceMixins.entrySet()) {
                mixIns.put(new ClassKey(en.getKey()), en.getValue());
            }
            _localMixIns = mixIns;
        }
    }

    public void addLocalDefinition(Class<?> target, Class<?> mixinSource) {
        if (_localMixIns == null) {
            _localMixIns = new HashMap<ClassKey,Class<?>>();
        }
        _localMixIns.put(new ClassKey(target), mixinSource);
    }

    @Override
    public SimpleMixInResolver copy() {
        ClassIntrospector.MixInResolver overrides = (_overrides == null)
                ? null : _overrides.copy();
        Map<ClassKey,Class<?>> mixIns = (_localMixIns == null)
                ? null : new HashMap<ClassKey,Class<?>>(_localMixIns);
        return new SimpleMixInResolver(overrides, mixIns);
    }

    @Override
    public Class<?> findMixInClassFor(Class<?> cls)
    {
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__overrides_2110_line_92 = _overrides;
		boolean simple_mix_in_resolver_1_expr5_line_92 = f__overrides_2110_line_92 == null;
		boolean simple_mix_in_resolver_1_expr3_line_92 = (simple_mix_in_resolver_1_expr5_line_92);
		Class<?> simple_mix_in_resolver_1_expr4_line_92 = null;
		if (!simple_mix_in_resolver_1_expr3_line_92) {
			com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver f__overrides_2110_line_92_v1 = _overrides;
			Class<?> p_cls_2117_line_92 = cls;
			simple_mix_in_resolver_1_expr4_line_92 = f__overrides_2110_line_92_v1.findMixInClassFor(p_cls_2117_line_92);
		}
		Class<?> simple_mix_in_resolver_1_expr2_line_92 = simple_mix_in_resolver_1_expr3_line_92
				? null
				: simple_mix_in_resolver_1_expr4_line_92;
		int PROBE_END_LINE_92 = 92;
		Class<?> mixin = simple_mix_in_resolver_1_expr2_line_92;
        int PROBE_START_LINE_93 = 95;
		Class<?> v_mixin_2118_line_93 = mixin;
		boolean simple_mix_in_resolver_1_expr7_line_93 = v_mixin_2118_line_93 == null;
		boolean simple_mix_in_resolver_1_expr8_line_93 = true;
		if (simple_mix_in_resolver_1_expr7_line_93) {
			Map<com.fasterxml.jackson.databind.type.ClassKey, Class<?>> f__local_mix_ins_2119_line_93 = _localMixIns;
			boolean simple_mix_in_resolver_1_expr9_line_93 = f__local_mix_ins_2119_line_93 != null;
			simple_mix_in_resolver_1_expr8_line_93 = (simple_mix_in_resolver_1_expr9_line_93);
		}
		boolean simple_mix_in_resolver_1_expr6_line_93 = simple_mix_in_resolver_1_expr7_line_93
				&& simple_mix_in_resolver_1_expr8_line_93;
		int PROBE_END_LINE_93 = 95;
		if (simple_mix_in_resolver_1_expr6_line_93) {
            mixin = _localMixIns.get(new ClassKey(cls));
        }
        int PROBE_START_LINE_96 = 96;
		Class<?> v_mixin_2118_line_96 = mixin;
		int PROBE_END_LINE_96 = 96;
		return v_mixin_2118_line_96;
    }

    public int localSize() {
        return (_localMixIns == null) ? 0 : _localMixIns.size();
    }
}
