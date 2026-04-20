package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.deser.*;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ArrayIterator;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.deser.KeyDeserializers;
import com.fasterxml.jackson.databind.deser.ValueInstantiators;
import com.fasterxml.jackson.databind.deser.BeanDeserializerModifier;

/**
 * Configuration settings container class for {@link DeserializerFactory}.
 */
public class DeserializerFactoryConfig
    implements java.io.Serializable // since 2.1
{
    private static final long serialVersionUID = 1L; // since 2.5

    protected final static Deserializers[] NO_DESERIALIZERS = new Deserializers[0];
    protected final static BeanDeserializerModifier[] NO_MODIFIERS = new BeanDeserializerModifier[0];
    protected final static AbstractTypeResolver[] NO_ABSTRACT_TYPE_RESOLVERS = new AbstractTypeResolver[0];
    protected final static ValueInstantiators[] NO_VALUE_INSTANTIATORS = new ValueInstantiators[0];

    /**
     * By default we plug default key deserializers using as "just another" set of
     * of key deserializers.
     * 
     * @since 2.2
     */
    protected final static KeyDeserializers[] DEFAULT_KEY_DESERIALIZERS = new KeyDeserializers[] {
        new StdKeyDeserializers()
    };
    
    /**
     * List of providers for additional deserializers, checked before considering default
     * basic or bean deserializers.
     */
    protected final Deserializers[] _additionalDeserializers;

    /**
     * List of providers for additional key deserializers, checked before considering
     * standard key deserializers.
     */
    protected final KeyDeserializers[] _additionalKeyDeserializers;
    
    /**
     * List of modifiers that can change the way {@link BeanDeserializer} instances
     * are configured and constructed.
     */
    protected final BeanDeserializerModifier[] _modifiers;

    /**
     * List of objects that may be able to resolve abstract types to
     * concrete types. Used by functionality like "mr Bean" to materialize
     * types as needed.
     */
    protected final AbstractTypeResolver[] _abstractTypeResolvers;

    /**
     * List of objects that know how to create instances of POJO types;
     * possibly using custom construction (non-annoted constructors; factory
     * methods external to value type etc).
     * Used to support objects that are created using non-standard methods;
     * or to support post-constructor functionality.
     */
    protected final ValueInstantiators[] _valueInstantiators;

    /**
     * Constructor for creating basic configuration with no additional
     * handlers.
     */
    public DeserializerFactoryConfig() {
        this(null, null, null, null, null);
    }

    /**
     * Copy-constructor that will create an instance that contains defined
     * set of additional deserializer providers.
     */
    protected DeserializerFactoryConfig(Deserializers[] allAdditionalDeserializers,
            KeyDeserializers[] allAdditionalKeyDeserializers,
            BeanDeserializerModifier[] modifiers,
            AbstractTypeResolver[] atr,
            ValueInstantiators[] vi)
    {
        int PROBE_START_LINE_84 = 85;
		com.fasterxml.jackson.databind.deser.Deserializers[] p_all_additional_deserializers_1173_line_84 = allAdditionalDeserializers;
		boolean deserializer_factory_config_1_expr11_line_84 = p_all_additional_deserializers_1173_line_84 == null;
		boolean deserializer_factory_config_1_expr10_line_84 = (deserializer_factory_config_1_expr11_line_84);
		com.fasterxml.jackson.databind.deser.Deserializers[] deserializer_factory_config_1_expr9_line_84 = deserializer_factory_config_1_expr10_line_84
				? NO_DESERIALIZERS
				: allAdditionalDeserializers;
		int PROBE_END_LINE_84 = 85;
		_additionalDeserializers = deserializer_factory_config_1_expr9_line_84;
        int PROBE_START_LINE_86 = 87;
		com.fasterxml.jackson.databind.deser.KeyDeserializers[] p_all_additional_key_deserializers_1174_line_86 = allAdditionalKeyDeserializers;
		boolean deserializer_factory_config_1_expr15_line_86 = p_all_additional_key_deserializers_1174_line_86 == null;
		boolean deserializer_factory_config_1_expr14_line_86 = (deserializer_factory_config_1_expr15_line_86);
		com.fasterxml.jackson.databind.deser.KeyDeserializers[] deserializer_factory_config_1_expr13_line_86 = deserializer_factory_config_1_expr14_line_86
				? DEFAULT_KEY_DESERIALIZERS
				: allAdditionalKeyDeserializers;
		int PROBE_END_LINE_86 = 87;
		_additionalKeyDeserializers = deserializer_factory_config_1_expr13_line_86;
        int PROBE_START_LINE_88 = 88;
		com.fasterxml.jackson.databind.deser.BeanDeserializerModifier[] p_modifiers_1175_line_88 = modifiers;
		boolean deserializer_factory_config_1_expr19_line_88 = p_modifiers_1175_line_88 == null;
		boolean deserializer_factory_config_1_expr18_line_88 = (deserializer_factory_config_1_expr19_line_88);
		com.fasterxml.jackson.databind.deser.BeanDeserializerModifier[] f_no_modifiers_1169_line_88 = null;
		com.fasterxml.jackson.databind.deser.BeanDeserializerModifier[] p_modifiers_1175_line_88_v1 = null;
		if (deserializer_factory_config_1_expr18_line_88) {
			f_no_modifiers_1169_line_88 = NO_MODIFIERS;
		} else {
			p_modifiers_1175_line_88_v1 = modifiers;
		}
		com.fasterxml.jackson.databind.deser.BeanDeserializerModifier[] deserializer_factory_config_1_expr17_line_88 = deserializer_factory_config_1_expr18_line_88
				? f_no_modifiers_1169_line_88
				: p_modifiers_1175_line_88_v1;
		int PROBE_END_LINE_88 = 88;
		_modifiers = deserializer_factory_config_1_expr17_line_88;
        int PROBE_START_LINE_89 = 89;
		com.fasterxml.jackson.databind.AbstractTypeResolver[] p_atr_1176_line_89 = atr;
		boolean deserializer_factory_config_1_expr23_line_89 = p_atr_1176_line_89 == null;
		boolean deserializer_factory_config_1_expr22_line_89 = (deserializer_factory_config_1_expr23_line_89);
		com.fasterxml.jackson.databind.AbstractTypeResolver[] f_no_abstract_type_resolvers_1170_line_89 = null;
		com.fasterxml.jackson.databind.AbstractTypeResolver[] p_atr_1176_line_89_v1 = null;
		if (deserializer_factory_config_1_expr22_line_89) {
			f_no_abstract_type_resolvers_1170_line_89 = NO_ABSTRACT_TYPE_RESOLVERS;
		} else {
			p_atr_1176_line_89_v1 = atr;
		}
		com.fasterxml.jackson.databind.AbstractTypeResolver[] deserializer_factory_config_1_expr21_line_89 = deserializer_factory_config_1_expr22_line_89
				? f_no_abstract_type_resolvers_1170_line_89
				: p_atr_1176_line_89_v1;
		int PROBE_END_LINE_89 = 89;
		_abstractTypeResolvers = deserializer_factory_config_1_expr21_line_89;
        int PROBE_START_LINE_90 = 90;
		com.fasterxml.jackson.databind.deser.ValueInstantiators[] p_vi_1177_line_90 = vi;
		boolean deserializer_factory_config_1_expr27_line_90 = p_vi_1177_line_90 == null;
		boolean deserializer_factory_config_1_expr26_line_90 = (deserializer_factory_config_1_expr27_line_90);
		com.fasterxml.jackson.databind.deser.ValueInstantiators[] f_no_value_instantiators_1171_line_90 = null;
		com.fasterxml.jackson.databind.deser.ValueInstantiators[] p_vi_1177_line_90_v1 = null;
		if (deserializer_factory_config_1_expr26_line_90) {
			f_no_value_instantiators_1171_line_90 = NO_VALUE_INSTANTIATORS;
		} else {
			p_vi_1177_line_90_v1 = vi;
		}
		com.fasterxml.jackson.databind.deser.ValueInstantiators[] deserializer_factory_config_1_expr25_line_90 = deserializer_factory_config_1_expr26_line_90
				? f_no_value_instantiators_1171_line_90
				: p_vi_1177_line_90_v1;
		int PROBE_END_LINE_90 = 90;
		_valueInstantiators = deserializer_factory_config_1_expr25_line_90;
    }

    /**
     * Fluent/factory method used to construct a configuration object that
     * has same deserializer providers as this instance, plus one specified
     * as argument. Additional provider will be added before existing ones,
     * meaning it has priority over existing definitions.
     */
    public DeserializerFactoryConfig withAdditionalDeserializers(Deserializers additional)
    {
        if (additional == null) {
            throw new IllegalArgumentException("Can not pass null Deserializers");
        }
        Deserializers[] all = ArrayBuilders.insertInListNoDup(_additionalDeserializers, additional);
        return new DeserializerFactoryConfig(all, _additionalKeyDeserializers, _modifiers,
                _abstractTypeResolvers, _valueInstantiators);
    }

    /**
     * Fluent/factory method used to construct a configuration object that
     * has same key deserializer providers as this instance, plus one specified
     * as argument. Additional provider will be added before existing ones,
     * meaning it has priority over existing definitions.
     */
    public DeserializerFactoryConfig withAdditionalKeyDeserializers(KeyDeserializers additional)
    {
        if (additional == null) {
            throw new IllegalArgumentException("Can not pass null KeyDeserializers");
        }
        KeyDeserializers[] all = ArrayBuilders.insertInListNoDup(_additionalKeyDeserializers, additional);
        return new DeserializerFactoryConfig(_additionalDeserializers, all, _modifiers,
                _abstractTypeResolvers, _valueInstantiators);
    }

    /**
     * Fluent/factory method used to construct a configuration object that
     * has same configuration as this instance plus one additional
     * deserialiazer modifier. Added modifier has the highest priority (that is, it
     * gets called before any already registered modifier).
     */
    public DeserializerFactoryConfig withDeserializerModifier(BeanDeserializerModifier modifier)
    {
        if (modifier == null) {
            throw new IllegalArgumentException("Can not pass null modifier");
        }
        BeanDeserializerModifier[] all = ArrayBuilders.insertInListNoDup(_modifiers, modifier);
        return new DeserializerFactoryConfig(_additionalDeserializers, _additionalKeyDeserializers, all,
                _abstractTypeResolvers, _valueInstantiators);
    }

    /**
     * Fluent/factory method used to construct a configuration object that
     * has same configuration as this instance plus one additional
     * abstract type resolver.
     * Added resolver has the highest priority (that is, it
     * gets called before any already registered resolver).
     */
    public DeserializerFactoryConfig withAbstractTypeResolver(AbstractTypeResolver resolver)
    {
        if (resolver == null) {
            throw new IllegalArgumentException("Can not pass null resolver");
        }
        AbstractTypeResolver[] all = ArrayBuilders.insertInListNoDup(_abstractTypeResolvers, resolver);
        return new DeserializerFactoryConfig(_additionalDeserializers, _additionalKeyDeserializers, _modifiers,
                all, _valueInstantiators);
    }

    /**
     * Fluent/factory method used to construct a configuration object that
     * has same configuration as this instance plus specified additional
     * value instantiator provider object.
     * Added instantiator provider has the highest priority (that is, it
     * gets called before any already registered resolver).
     * 
     * @param instantiators Object that can provide {@link com.fasterxml.jackson.databind.deser.ValueInstantiator}s for
     *    constructing POJO values during deserialization
     */
    public DeserializerFactoryConfig withValueInstantiators(ValueInstantiators instantiators) 
    {
        if (instantiators == null) {
            throw new IllegalArgumentException("Can not pass null resolver");
        }
        ValueInstantiators[] all = ArrayBuilders.insertInListNoDup(_valueInstantiators, instantiators);
        return new DeserializerFactoryConfig(_additionalDeserializers, _additionalKeyDeserializers, _modifiers,
                _abstractTypeResolvers, all);
    }
    
    public boolean hasDeserializers() { return _additionalDeserializers.length > 0; }

    public boolean hasKeyDeserializers() { return _additionalKeyDeserializers.length > 0; }
    
    public boolean hasDeserializerModifiers() { return _modifiers.length > 0; }

    public boolean hasAbstractTypeResolvers() { return _abstractTypeResolvers.length > 0; }

    public boolean hasValueInstantiators() { return _valueInstantiators.length > 0; }
    
    public Iterable<Deserializers> deserializers() {
        return new ArrayIterator<Deserializers>(_additionalDeserializers);
    }

    public Iterable<KeyDeserializers> keyDeserializers() {
        return new ArrayIterator<KeyDeserializers>(_additionalKeyDeserializers);
    }
    
    public Iterable<BeanDeserializerModifier> deserializerModifiers() {
        return new ArrayIterator<BeanDeserializerModifier>(_modifiers);
    }

    public Iterable<AbstractTypeResolver> abstractTypeResolvers() {
        return new ArrayIterator<AbstractTypeResolver>(_abstractTypeResolvers);
    }

    public Iterable<ValueInstantiators> valueInstantiators() {
        return new ArrayIterator<ValueInstantiators>(_valueInstantiators);
    }
}
