package com.fasterxml.jackson.databind.deser.std;

import java.io.IOException;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.*;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.fasterxml.jackson.databind.JavaType;

/**
 * Default {@link ValueInstantiator} implementation, which supports
 * Creator methods that can be indicated by standard Jackson
 * annotations.
 */
@JacksonStdImpl
public class StdValueInstantiator
    extends ValueInstantiator
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    /**
     * Type of values that are instantiated; used
     * for error reporting purposes.
     */
    protected final String _valueTypeDesc;

    // // // Default (no-args) construction

    /**
     * Default (no-argument) constructor to use for instantiation
     * (with {@link #createUsingDefault})
     */
    protected AnnotatedWithParams _defaultCreator;

    // // // With-args (property-based) construction

    protected AnnotatedWithParams _withArgsCreator;
    protected CreatorProperty[] _constructorArguments;

    // // // Delegate construction
    
    protected JavaType _delegateType;
    protected AnnotatedWithParams _delegateCreator;
    protected CreatorProperty[] _delegateArguments;
    
    // // // Scalar construction

    protected AnnotatedWithParams _fromStringCreator;
    protected AnnotatedWithParams _fromIntCreator;
    protected AnnotatedWithParams _fromLongCreator;
    protected AnnotatedWithParams _fromDoubleCreator;
    protected AnnotatedWithParams _fromBooleanCreator;

    // // // Incomplete creator
    protected AnnotatedParameter  _incompleteParameter;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    public StdValueInstantiator(DeserializationConfig config, Class<?> valueType) {
        _valueTypeDesc = (valueType == null) ? "UNKNOWN TYPE" : valueType.getName();
    }

    public StdValueInstantiator(DeserializationConfig config, JavaType valueType) {
        int PROBE_START_LINE_70 = 70;
		com.fasterxml.jackson.databind.JavaType p_value_type_2438_line_70 = valueType;
		boolean std_value_instantiator_1_expr5_line_70 = p_value_type_2438_line_70 == null;
		boolean std_value_instantiator_1_expr3_line_70 = (std_value_instantiator_1_expr5_line_70);
		String std_value_instantiator_1_expr4_line_70 = null;
		if (!std_value_instantiator_1_expr3_line_70) {
			com.fasterxml.jackson.databind.JavaType p_value_type_2438_line_70_v1 = valueType;
			std_value_instantiator_1_expr4_line_70 = p_value_type_2438_line_70_v1.toString();
		}
		String std_value_instantiator_1_expr2_line_70 = std_value_instantiator_1_expr3_line_70
				? "UNKNOWN TYPE"
				: std_value_instantiator_1_expr4_line_70;
		int PROBE_END_LINE_70 = 70;
		_valueTypeDesc = std_value_instantiator_1_expr2_line_70;
    }

    /**
     * Copy-constructor that sub-classes can use when creating new instances
     * by fluent-style construction
     */
    protected StdValueInstantiator(StdValueInstantiator src)
    {
        _valueTypeDesc = src._valueTypeDesc;

        _defaultCreator = src._defaultCreator;

        _constructorArguments = src._constructorArguments;
        _withArgsCreator = src._withArgsCreator;

        _delegateType = src._delegateType;
        _delegateCreator = src._delegateCreator;
        _delegateArguments = src._delegateArguments;
        
        _fromStringCreator = src._fromStringCreator;
        _fromIntCreator = src._fromIntCreator;
        _fromLongCreator = src._fromLongCreator;
        _fromDoubleCreator = src._fromDoubleCreator;
        _fromBooleanCreator = src._fromBooleanCreator;
    }

    /**
     * Method for setting properties related to instantiating values
     * from JSON Object. We will choose basically only one approach (out of possible
     * three), and clear other properties
     */
    public void configureFromObjectSettings(AnnotatedWithParams defaultCreator,
            AnnotatedWithParams delegateCreator, JavaType delegateType, CreatorProperty[] delegateArgs,
            AnnotatedWithParams withArgsCreator, CreatorProperty[] constructorArgs)
    {
        int PROBE_START_LINE_106 = 106;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_default_creator_2441_line_106 = defaultCreator;
		int PROBE_END_LINE_106 = 106;
		_defaultCreator = p_default_creator_2441_line_106;
        int PROBE_START_LINE_107 = 107;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_delegate_creator_2442_line_107 = delegateCreator;
		int PROBE_END_LINE_107 = 107;
		_delegateCreator = p_delegate_creator_2442_line_107;
        int PROBE_START_LINE_108 = 108;
		com.fasterxml.jackson.databind.JavaType p_delegate_type_2443_line_108 = delegateType;
		int PROBE_END_LINE_108 = 108;
		_delegateType = p_delegate_type_2443_line_108;
        int PROBE_START_LINE_109 = 109;
		com.fasterxml.jackson.databind.deser.CreatorProperty[] p_delegate_args_2444_line_109 = delegateArgs;
		int PROBE_END_LINE_109 = 109;
		_delegateArguments = p_delegate_args_2444_line_109;
        int PROBE_START_LINE_110 = 110;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_with_args_creator_2445_line_110 = withArgsCreator;
		int PROBE_END_LINE_110 = 110;
		_withArgsCreator = p_with_args_creator_2445_line_110;
        int PROBE_START_LINE_111 = 111;
		com.fasterxml.jackson.databind.deser.CreatorProperty[] p_constructor_args_2446_line_111 = constructorArgs;
		int PROBE_END_LINE_111 = 111;
		_constructorArguments = p_constructor_args_2446_line_111;
    }

    public void configureFromStringCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_115 = 115;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2453_line_115 = creator;
		int PROBE_END_LINE_115 = 115;
		_fromStringCreator = p_creator_2453_line_115;
    }

    public void configureFromIntCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_119 = 119;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2455_line_119 = creator;
		int PROBE_END_LINE_119 = 119;
		_fromIntCreator = p_creator_2455_line_119;
    }

    public void configureFromLongCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_123 = 123;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2457_line_123 = creator;
		int PROBE_END_LINE_123 = 123;
		_fromLongCreator = p_creator_2457_line_123;
    }

    public void configureFromDoubleCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_127 = 127;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2459_line_127 = creator;
		int PROBE_END_LINE_127 = 127;
		_fromDoubleCreator = p_creator_2459_line_127;
    }

    public void configureFromBooleanCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_131 = 131;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2461_line_131 = creator;
		int PROBE_END_LINE_131 = 131;
		_fromBooleanCreator = p_creator_2461_line_131;
    }

    public void configureIncompleteParameter(AnnotatedParameter parameter) {
        int PROBE_START_LINE_135 = 135;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter p_parameter_2463_line_135 = parameter;
		int PROBE_END_LINE_135 = 135;
		_incompleteParameter = p_parameter_2463_line_135;
    }
    
    /*
    /**********************************************************
    /* Public API implementation; metadata
    /**********************************************************
     */

    @Override
    public String getValueTypeDesc() {
        return _valueTypeDesc;
    }
    
    @Override
    public boolean canCreateFromString() {
        return (_fromStringCreator != null);
    }

    @Override
    public boolean canCreateFromInt() {
        return (_fromIntCreator != null);
    }

    @Override
    public boolean canCreateFromLong() {
        return (_fromLongCreator != null);
    }

    @Override
    public boolean canCreateFromDouble() {
        return (_fromDoubleCreator != null);
    }

    @Override
    public boolean canCreateFromBoolean() {
        return (_fromBooleanCreator != null);
    }
    
    @Override
    public boolean canCreateUsingDefault() {
        int PROBE_START_LINE_176 = 176;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__default_creator_2447_line_176 = _defaultCreator;
		boolean std_value_instantiator_1_expr19_line_176 = f__default_creator_2447_line_176 != null;
		boolean std_value_instantiator_1_expr18_line_176 = (std_value_instantiator_1_expr19_line_176);
		int PROBE_END_LINE_176 = 176;
		return std_value_instantiator_1_expr18_line_176;
    }

    @Override
    public boolean canCreateUsingDelegate() {
        int PROBE_START_LINE_181 = 181;
		com.fasterxml.jackson.databind.JavaType f__delegate_type_2449_line_181 = _delegateType;
		boolean std_value_instantiator_1_expr20_line_181 = f__delegate_type_2449_line_181 != null;
		int PROBE_END_LINE_181 = 181;
		return std_value_instantiator_1_expr20_line_181;
    }
    
    @Override
    public boolean canCreateFromObjectWith() {
        int PROBE_START_LINE_186 = 186;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__with_args_creator_2451_line_186 = _withArgsCreator;
		boolean std_value_instantiator_1_expr22_line_186 = f__with_args_creator_2451_line_186 != null;
		boolean std_value_instantiator_1_expr21_line_186 = (std_value_instantiator_1_expr22_line_186);
		int PROBE_END_LINE_186 = 186;
		return std_value_instantiator_1_expr21_line_186;
    }

    @Override
    public JavaType getDelegateType(DeserializationConfig config) {
        return _delegateType;
    }

    @Override
    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig config) {
        int PROBE_START_LINE_196 = 196;
		com.fasterxml.jackson.databind.deser.CreatorProperty[] f__constructor_arguments_2452_line_196 = _constructorArguments;
		int PROBE_END_LINE_196 = 196;
		return f__constructor_arguments_2452_line_196;
    }
    
    /*
    /**********************************************************
    /* Public API implementation; instantiation from JSON Object
    /**********************************************************
     */
    
    @Override
    public Object createUsingDefault(DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_208 = 210;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__default_creator_2447_line_208 = _defaultCreator;
		boolean std_value_instantiator_1_expr23_line_208 = f__default_creator_2447_line_208 == null;
		int PROBE_END_LINE_208 = 210;
		if (std_value_instantiator_1_expr23_line_208) { // sanity-check; caller should check
            throw new IllegalStateException("No default constructor for "+getValueTypeDesc());
        }
        try {
            int PROBE_START_LINE_212 = 212;
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__default_creator_2447_line_212 = _defaultCreator;
			Object std_value_instantiator_1_expr24_line_212 = f__default_creator_2447_line_212.call();
			int PROBE_END_LINE_212 = 212;
			return std_value_instantiator_1_expr24_line_212;
        } catch (ExceptionInInitializerError e) {
            throw wrapException(e);
        } catch (Exception e) {
            throw wrapException(e);
        }
    }
    
    @Override
    public Object createFromObjectWith(DeserializationContext ctxt, Object[] args) throws IOException
    {
        if (_withArgsCreator == null) { // sanity-check; caller should check
            throw new IllegalStateException("No with-args constructor for "+getValueTypeDesc());
        }
        try {
            return _withArgsCreator.call(args);
        } catch (ExceptionInInitializerError e) {
            throw wrapException(e);
        } catch (Exception e) {
            throw wrapException(e);
        }
    }

    @Override
    public Object createUsingDelegate(DeserializationContext ctxt, Object delegate) throws IOException
    {
        if (_delegateCreator == null) { // sanity-check; caller should check
            throw new IllegalStateException("No delegate constructor for "+getValueTypeDesc());
        }
        try {
            // First simple case: just delegate, no injectables
            if (_delegateArguments == null) {
                return _delegateCreator.call1(delegate);
            }
            // And then the case with at least one injectable...
            final int len = _delegateArguments.length;
            Object[] args = new Object[len];
            for (int i = 0; i < len; ++i) {
                CreatorProperty prop = _delegateArguments[i];
                if (prop == null) { // delegate
                    args[i] = delegate;
                } else { // nope, injectable:
                    args[i] = ctxt.findInjectableValue(prop.getInjectableValueId(), prop, null);
                }
            }
            // and then try calling with full set of arguments
            return _delegateCreator.call(args);
        } catch (ExceptionInInitializerError e) {
            throw wrapException(e);
        } catch (Exception e) {
            throw wrapException(e);
        }
    }
    
    /*
    /**********************************************************
    /* Public API implementation; instantiation from JSON scalars
    /**********************************************************
     */
    
    @Override
    public Object createFromString(DeserializationContext ctxt, String value) throws IOException
    {
        if (_fromStringCreator != null) {
            try {
                return _fromStringCreator.call1(value);
            } catch (Exception e) {
                throw wrapException(e);
            } catch (ExceptionInInitializerError e) {
                throw wrapException(e);
            }
        }
        return _createFromStringFallbacks(ctxt, value);
    }
    
    @Override
    public Object createFromInt(DeserializationContext ctxt, int value) throws IOException
    {
        try {
            // First: "native" int methods work best:
            if (_fromIntCreator != null) {
                return _fromIntCreator.call1(Integer.valueOf(value));
            }
            // but if not, can do widening conversion
            if (_fromLongCreator != null) {
                return _fromLongCreator.call1(Long.valueOf(value));
            }
        } catch (Exception e) {
            throw wrapException(e);
        } catch (ExceptionInInitializerError e) {
            throw wrapException(e);
        }
        throw ctxt.mappingException("Can not instantiate value of type "+getValueTypeDesc()
                +" from Integral number ("+value+"); no single-int-arg constructor/factory method");
    }

    @Override
    public Object createFromLong(DeserializationContext ctxt, long value) throws IOException
    {
        try {
            if (_fromLongCreator != null) {
                return _fromLongCreator.call1(Long.valueOf(value));
            }
        } catch (Exception e) {
            throw wrapException(e);
        } catch (ExceptionInInitializerError e) {
            throw wrapException(e);
        }
        throw ctxt.mappingException("Can not instantiate value of type "+getValueTypeDesc()
                +" from Long integral number ("+value+"); no single-long-arg constructor/factory method");
    }

    @Override
    public Object createFromDouble(DeserializationContext ctxt, double value) throws IOException
    {
        try {
            if (_fromDoubleCreator != null) {
                return _fromDoubleCreator.call1(Double.valueOf(value));
            }
        } catch (Exception e) {
            throw wrapException(e);
        } catch (ExceptionInInitializerError e) {
            throw wrapException(e);
        }
        throw ctxt.mappingException("Can not instantiate value of type "+getValueTypeDesc()
                +" from Floating-point number ("+value+"); no one-double/Double-arg constructor/factory method");
    }

    @Override
    public Object createFromBoolean(DeserializationContext ctxt, boolean value) throws IOException
    {
        try {
            if (_fromBooleanCreator != null) {
                return _fromBooleanCreator.call1(Boolean.valueOf(value));
            }
        } catch (Exception e) {
            throw wrapException(e);
        } catch (ExceptionInInitializerError e) {
            throw wrapException(e);
        }
        throw ctxt.mappingException("Can not instantiate value of type "+getValueTypeDesc()
                +" from Boolean value ("+value+"); no single-boolean/Boolean-arg constructor/factory method");
    }
    
    /*
    /**********************************************************
    /* Extended API: configuration mutators, accessors
    /**********************************************************
     */

    @Override
    public AnnotatedWithParams getDelegateCreator() {
        return _delegateCreator;
    }

    @Override
    public AnnotatedWithParams getDefaultCreator() {
        return _defaultCreator;
    }

    @Override
    public AnnotatedWithParams getWithArgsCreator() {
        return _withArgsCreator;
    }

    @Override
    public AnnotatedParameter getIncompleteParameter() {
        int PROBE_START_LINE_379 = 379;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter f__incomplete_parameter_2464_line_379 = _incompleteParameter;
		int PROBE_END_LINE_379 = 379;
		return f__incomplete_parameter_2464_line_379;
    }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    protected JsonMappingException wrapException(Throwable t)
    {
        while (t.getCause() != null) {
            t = t.getCause();
        }
        if (t instanceof JsonMappingException) {
            return (JsonMappingException) t;
        }
        return new JsonMappingException("Instantiation of "+getValueTypeDesc()+" value failed: "+t.getMessage(), t);
    }
}


