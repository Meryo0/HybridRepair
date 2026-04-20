package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.ser.*;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ArrayIterator;
import com.fasterxml.jackson.databind.ser.BeanSerializerModifier;
import com.fasterxml.jackson.databind.ser.Serializers;

/**
 * Configuration settings container class for
 * {@link SerializerFactory} implementations.
 */
public final class SerializerFactoryConfig
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;
    /**
     * Constant for empty <code>Serializers</code> array (which by definition
     * is stateless and reusable)
     */
    protected final static Serializers[] NO_SERIALIZERS = new Serializers[0];

    protected final static BeanSerializerModifier[] NO_MODIFIERS = new BeanSerializerModifier[0];
    
    /**
     * List of providers for additional serializers, checked before considering default
     * basic or bean serialializers.
     */
    protected final Serializers[] _additionalSerializers;

    /**
     * List of providers for additional key serializers, checked before considering default
     * key serialializers.
     */
    protected final Serializers[] _additionalKeySerializers;
    
    /**
     * List of modifiers that can change the way {@link BeanSerializer} instances
     * are configured and constructed.
     */
    protected final BeanSerializerModifier[] _modifiers;
    
    public SerializerFactoryConfig() {
        this(null, null, null);
    }

    protected SerializerFactoryConfig(Serializers[] allAdditionalSerializers,
            Serializers[] allAdditionalKeySerializers,
            BeanSerializerModifier[] modifiers)
    {
        int PROBE_START_LINE_49 = 50;
		com.fasterxml.jackson.databind.ser.Serializers[] p_all_additional_serializers_1526_line_49 = allAdditionalSerializers;
		boolean serializer_factory_config_1_expr7_line_49 = p_all_additional_serializers_1526_line_49 == null;
		boolean serializer_factory_config_1_expr6_line_49 = (serializer_factory_config_1_expr7_line_49);
		com.fasterxml.jackson.databind.ser.Serializers[] serializer_factory_config_1_expr5_line_49 = serializer_factory_config_1_expr6_line_49
				? NO_SERIALIZERS
				: allAdditionalSerializers;
		int PROBE_END_LINE_49 = 50;
		_additionalSerializers = serializer_factory_config_1_expr5_line_49;
        int PROBE_START_LINE_51 = 52;
		com.fasterxml.jackson.databind.ser.Serializers[] p_all_additional_key_serializers_1527_line_51 = allAdditionalKeySerializers;
		boolean serializer_factory_config_1_expr11_line_51 = p_all_additional_key_serializers_1527_line_51 == null;
		boolean serializer_factory_config_1_expr10_line_51 = (serializer_factory_config_1_expr11_line_51);
		com.fasterxml.jackson.databind.ser.Serializers[] serializer_factory_config_1_expr9_line_51 = serializer_factory_config_1_expr10_line_51
				? NO_SERIALIZERS
				: allAdditionalKeySerializers;
		int PROBE_END_LINE_51 = 52;
		_additionalKeySerializers = serializer_factory_config_1_expr9_line_51;
        int PROBE_START_LINE_53 = 53;
		com.fasterxml.jackson.databind.ser.BeanSerializerModifier[] p_modifiers_1528_line_53 = modifiers;
		boolean serializer_factory_config_1_expr15_line_53 = p_modifiers_1528_line_53 == null;
		boolean serializer_factory_config_1_expr14_line_53 = (serializer_factory_config_1_expr15_line_53);
		com.fasterxml.jackson.databind.ser.BeanSerializerModifier[] f_no_modifiers_1525_line_53 = null;
		com.fasterxml.jackson.databind.ser.BeanSerializerModifier[] p_modifiers_1528_line_53_v1 = null;
		if (serializer_factory_config_1_expr14_line_53) {
			f_no_modifiers_1525_line_53 = NO_MODIFIERS;
		} else {
			p_modifiers_1528_line_53_v1 = modifiers;
		}
		com.fasterxml.jackson.databind.ser.BeanSerializerModifier[] serializer_factory_config_1_expr13_line_53 = serializer_factory_config_1_expr14_line_53
				? f_no_modifiers_1525_line_53
				: p_modifiers_1528_line_53_v1;
		int PROBE_END_LINE_53 = 53;
		_modifiers = serializer_factory_config_1_expr13_line_53;
    }

    public SerializerFactoryConfig withAdditionalSerializers(Serializers additional)
    {
        if (additional == null) {
            throw new IllegalArgumentException("Cannot pass null Serializers");
        }
        Serializers[] all = ArrayBuilders.insertInListNoDup(_additionalSerializers, additional);
        return new SerializerFactoryConfig(all, _additionalKeySerializers, _modifiers);
    }

    public SerializerFactoryConfig withAdditionalKeySerializers(Serializers additional)
    {
        if (additional == null) {
            throw new IllegalArgumentException("Cannot pass null Serializers");
        }
        Serializers[] all = ArrayBuilders.insertInListNoDup(_additionalKeySerializers, additional);
        return new SerializerFactoryConfig(_additionalSerializers, all, _modifiers);
    }
    
    public SerializerFactoryConfig withSerializerModifier(BeanSerializerModifier modifier)
    {
        if (modifier == null) {
            throw new IllegalArgumentException("Cannot pass null modifier");
        }
        BeanSerializerModifier[] modifiers = ArrayBuilders.insertInListNoDup(_modifiers, modifier);
        return new SerializerFactoryConfig(_additionalSerializers, _additionalKeySerializers, modifiers);
    }

    public boolean hasSerializers() { return _additionalSerializers.length > 0; }
    public boolean hasKeySerializers() { return _additionalKeySerializers.length > 0; }
    public boolean hasSerializerModifiers() { return _modifiers.length > 0; }
    public Iterable<Serializers> serializers() { return new ArrayIterator<Serializers>(_additionalSerializers); }
    public Iterable<Serializers> keySerializers() { return new ArrayIterator<Serializers>(_additionalKeySerializers); }
    public Iterable<BeanSerializerModifier> serializerModifiers() { return new ArrayIterator<BeanSerializerModifier>(_modifiers); }
}
