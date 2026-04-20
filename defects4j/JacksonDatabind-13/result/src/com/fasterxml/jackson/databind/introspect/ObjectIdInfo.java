package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.annotation.SimpleObjectIdResolver;
import com.fasterxml.jackson.databind.PropertyName;

/**
 * Container object that encapsulates information usually
 * derived from {@link JsonIdentityInfo} annotation or its
 * custom alternatives
 */
public class ObjectIdInfo
{
    protected final PropertyName _propertyName;
    protected final Class<? extends ObjectIdGenerator<?>> _generator;
    protected final Class<? extends ObjectIdResolver> _resolver;
    protected final Class<?> _scope;
    protected final boolean _alwaysAsId;

    public ObjectIdInfo(PropertyName name, Class<?> scope, Class<? extends ObjectIdGenerator<?>> gen,
            Class<? extends ObjectIdResolver> resolver)
    {
        this(name, scope, gen, false, resolver);
    }

    @Deprecated // since 2.4
    public ObjectIdInfo(PropertyName name, Class<?> scope, Class<? extends ObjectIdGenerator<?>> gen)
    {
        this(name, scope, gen, false);
    }

    @Deprecated // since 2.3
    public ObjectIdInfo(String name, Class<?> scope, Class<? extends ObjectIdGenerator<?>> gen) {
        this(new PropertyName(name), scope, gen, false);
    }
    
    protected ObjectIdInfo(PropertyName prop, Class<?> scope, Class<? extends ObjectIdGenerator<?>> gen,
            boolean alwaysAsId)
    {
        this(prop, scope, gen, alwaysAsId, SimpleObjectIdResolver.class);

    }

    protected ObjectIdInfo(PropertyName prop, Class<?> scope, Class<? extends ObjectIdGenerator<?>> gen,
            boolean alwaysAsId, Class<? extends ObjectIdResolver> resolver)
    {
        int PROBE_START_LINE_49 = 49;
		com.fasterxml.jackson.databind.PropertyName p_prop_3016_line_49 = prop;
		int PROBE_END_LINE_49 = 49;
		_propertyName = p_prop_3016_line_49;
        int PROBE_START_LINE_50 = 50;
		Class<?> p_scope_3017_line_50 = scope;
		int PROBE_END_LINE_50 = 50;
		_scope = p_scope_3017_line_50;
        int PROBE_START_LINE_51 = 51;
		Class<? extends ObjectIdGenerator<?>> p_gen_3018_line_51 = gen;
		int PROBE_END_LINE_51 = 51;
		_generator = p_gen_3018_line_51;
        int PROBE_START_LINE_52 = 52;
		boolean p_always_as_id_3019_line_52 = alwaysAsId;
		int PROBE_END_LINE_52 = 52;
		_alwaysAsId = p_always_as_id_3019_line_52;
        int PROBE_START_LINE_53 = 55;
		Class<? extends com.fasterxml.jackson.annotation.ObjectIdResolver> p_resolver_3020_line_53 = resolver;
		boolean object_id_info_1_expr6_line_53 = p_resolver_3020_line_53 == null;
		int PROBE_END_LINE_53 = 55;
		if (object_id_info_1_expr6_line_53) {
            resolver = SimpleObjectIdResolver.class;
        }
        int PROBE_START_LINE_56 = 56;
		Class<? extends com.fasterxml.jackson.annotation.ObjectIdResolver> p_resolver_3020_line_56 = resolver;
		int PROBE_END_LINE_56 = 56;
		_resolver = p_resolver_3020_line_56;
    }

    public ObjectIdInfo withAlwaysAsId(boolean state) {
        if (_alwaysAsId == state) {
            return this;
        }
        return new ObjectIdInfo(_propertyName, _scope, _generator, state, _resolver);
    }
    
    public PropertyName getPropertyName() { int PROBE_START_LINE_66 = 66;
		com.fasterxml.jackson.databind.PropertyName f__property_name_3021_line_66 = _propertyName;
		int PROBE_END_LINE_66 = 66;
	return f__property_name_3021_line_66; }
    public Class<?> getScope() { int PROBE_START_LINE_67 = 67;
		Class<?> f__scope_3022_line_67 = _scope;
		int PROBE_END_LINE_67 = 67;
	return f__scope_3022_line_67; }
    public Class<? extends ObjectIdGenerator<?>> getGeneratorType() { int PROBE_START_LINE_68 = 68;
		Class<? extends ObjectIdGenerator<?>> f__generator_3023_line_68 = _generator;
		int PROBE_END_LINE_68 = 68;
	return f__generator_3023_line_68; }
    public Class<? extends ObjectIdResolver> getResolverType() { int PROBE_START_LINE_69 = 69;
		Class<? extends com.fasterxml.jackson.annotation.ObjectIdResolver> f__resolver_3025_line_69 = _resolver;
		int PROBE_END_LINE_69 = 69;
	return f__resolver_3025_line_69; }
    public boolean getAlwaysAsId() { return _alwaysAsId; }

    @Override
    public String toString() {
        return "ObjectIdInfo: propName="+_propertyName
                +", scope="+(_scope == null ? "null" : _scope.getName())
                +", generatorType="+(_generator == null ? "null" : _generator.getName())
                +", alwaysAsId="+_alwaysAsId;
    }
}
