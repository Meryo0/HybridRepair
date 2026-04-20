package com.fasterxml.jackson.databind.deser.std;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.*;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;

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

    /**
     * @since 2.8
     */
    protected final Class<?> _valueClass;

    // // // Default (no-args) construction

    /**
     * Default (no-argument) constructor to use for instantiation
     * (with {@link #createUsingDefault})
     */
    protected AnnotatedWithParams _defaultCreator;

    // // // With-args (property-based) construction

    protected AnnotatedWithParams _withArgsCreator;
    protected SettableBeanProperty[] _constructorArguments;

    // // // Delegate construction
    
    protected JavaType _delegateType;
    protected AnnotatedWithParams _delegateCreator;
    protected SettableBeanProperty[] _delegateArguments;

    // // // Array delegate construction

    protected JavaType _arrayDelegateType;
    protected AnnotatedWithParams _arrayDelegateCreator;
    protected SettableBeanProperty[] _arrayDelegateArguments;
    
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

    /**
     * @deprecated Since 2.7 use constructor that takes {@link JavaType} instead
     */
    @Deprecated
    public StdValueInstantiator(DeserializationConfig config, Class<?> valueType) {
        _valueTypeDesc = ClassUtil.nameOf(valueType);
        _valueClass = (valueType == null) ? Object.class : valueType;
    }

    public StdValueInstantiator(DeserializationConfig config, JavaType valueType) {
        int PROBE_START_LINE_88 = 88;
		com.fasterxml.jackson.databind.JavaType p_value_type_3205_line_88 = valueType;
		boolean std_value_instantiator_1_expr5_line_88 = p_value_type_3205_line_88 == null;
		boolean std_value_instantiator_1_expr3_line_88 = (std_value_instantiator_1_expr5_line_88);
		String std_value_instantiator_1_expr4_line_88 = null;
		if (!std_value_instantiator_1_expr3_line_88) {
			com.fasterxml.jackson.databind.JavaType p_value_type_3205_line_88_v1 = valueType;
			std_value_instantiator_1_expr4_line_88 = p_value_type_3205_line_88_v1.toString();
		}
		String std_value_instantiator_1_expr2_line_88 = std_value_instantiator_1_expr3_line_88
				? "UNKNOWN TYPE"
				: std_value_instantiator_1_expr4_line_88;
		int PROBE_END_LINE_88 = 88;
		_valueTypeDesc = std_value_instantiator_1_expr2_line_88;
        int PROBE_START_LINE_89 = 89;
		com.fasterxml.jackson.databind.JavaType p_value_type_3205_line_89 = valueType;
		boolean std_value_instantiator_1_expr11_line_89 = p_value_type_3205_line_89 == null;
		boolean std_value_instantiator_1_expr8_line_89 = (std_value_instantiator_1_expr11_line_89);
		Class<?> std_value_instantiator_1_expr10_line_89 = null;
		if (!std_value_instantiator_1_expr8_line_89) {
			com.fasterxml.jackson.databind.JavaType p_value_type_3205_line_89_v1 = valueType;
			std_value_instantiator_1_expr10_line_89 = p_value_type_3205_line_89_v1.getRawClass();
		}
		Class<?> std_value_instantiator_1_expr7_line_89 = std_value_instantiator_1_expr8_line_89
				? Object.class
				: std_value_instantiator_1_expr10_line_89;
		int PROBE_END_LINE_89 = 89;
		_valueClass = std_value_instantiator_1_expr7_line_89;
    }

    /**
     * Copy-constructor that sub-classes can use when creating new instances
     * by fluent-style construction
     */
    protected StdValueInstantiator(StdValueInstantiator src)
    {
        _valueTypeDesc = src._valueTypeDesc;
        _valueClass = src._valueClass;

        _defaultCreator = src._defaultCreator;

        _constructorArguments = src._constructorArguments;
        _withArgsCreator = src._withArgsCreator;

        _delegateType = src._delegateType;
        _delegateCreator = src._delegateCreator;
        _delegateArguments = src._delegateArguments;

        _arrayDelegateType = src._arrayDelegateType;
        _arrayDelegateCreator = src._arrayDelegateCreator;
        _arrayDelegateArguments = src._arrayDelegateArguments;
        
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
            AnnotatedWithParams delegateCreator, JavaType delegateType, SettableBeanProperty[] delegateArgs,
            AnnotatedWithParams withArgsCreator, SettableBeanProperty[] constructorArgs)
    {
        int PROBE_START_LINE_130 = 130;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_default_creator_3209_line_130 = defaultCreator;
		int PROBE_END_LINE_130 = 130;
		_defaultCreator = p_default_creator_3209_line_130;
        int PROBE_START_LINE_131 = 131;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_delegate_creator_3210_line_131 = delegateCreator;
		int PROBE_END_LINE_131 = 131;
		_delegateCreator = p_delegate_creator_3210_line_131;
        int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.JavaType p_delegate_type_3211_line_132 = delegateType;
		int PROBE_END_LINE_132 = 132;
		_delegateType = p_delegate_type_3211_line_132;
        int PROBE_START_LINE_133 = 133;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] p_delegate_args_3212_line_133 = delegateArgs;
		int PROBE_END_LINE_133 = 133;
		_delegateArguments = p_delegate_args_3212_line_133;
        int PROBE_START_LINE_134 = 134;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_with_args_creator_3213_line_134 = withArgsCreator;
		int PROBE_END_LINE_134 = 134;
		_withArgsCreator = p_with_args_creator_3213_line_134;
        int PROBE_START_LINE_135 = 135;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] p_constructor_args_3214_line_135 = constructorArgs;
		int PROBE_END_LINE_135 = 135;
		_constructorArguments = p_constructor_args_3214_line_135;
    }

    public void configureFromArraySettings(
            AnnotatedWithParams arrayDelegateCreator,
            JavaType arrayDelegateType,
            SettableBeanProperty[] arrayDelegateArgs)
    {
        int PROBE_START_LINE_143 = 143;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_array_delegate_creator_3221_line_143 = arrayDelegateCreator;
		int PROBE_END_LINE_143 = 143;
		_arrayDelegateCreator = p_array_delegate_creator_3221_line_143;
        int PROBE_START_LINE_144 = 144;
		com.fasterxml.jackson.databind.JavaType p_array_delegate_type_3222_line_144 = arrayDelegateType;
		int PROBE_END_LINE_144 = 144;
		_arrayDelegateType = p_array_delegate_type_3222_line_144;
        int PROBE_START_LINE_145 = 145;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] p_array_delegate_args_3223_line_145 = arrayDelegateArgs;
		int PROBE_END_LINE_145 = 145;
		_arrayDelegateArguments = p_array_delegate_args_3223_line_145;
    }

    public void configureFromStringCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_149 = 149;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_3227_line_149 = creator;
		int PROBE_END_LINE_149 = 149;
		_fromStringCreator = p_creator_3227_line_149;
    }

    public void configureFromIntCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_153 = 153;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_3229_line_153 = creator;
		int PROBE_END_LINE_153 = 153;
		_fromIntCreator = p_creator_3229_line_153;
    }

    public void configureFromLongCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_157 = 157;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_3231_line_157 = creator;
		int PROBE_END_LINE_157 = 157;
		_fromLongCreator = p_creator_3231_line_157;
    }

    public void configureFromDoubleCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_161 = 161;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_3233_line_161 = creator;
		int PROBE_END_LINE_161 = 161;
		_fromDoubleCreator = p_creator_3233_line_161;
    }

    public void configureFromBooleanCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_165 = 165;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_3235_line_165 = creator;
		int PROBE_END_LINE_165 = 165;
		_fromBooleanCreator = p_creator_3235_line_165;
    }

    public void configureIncompleteParameter(AnnotatedParameter parameter) {
        _incompleteParameter = parameter;
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
    public Class<?> getValueClass() {
        return _valueClass;
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
        int PROBE_START_LINE_215 = 215;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__default_creator_3215_line_215 = _defaultCreator;
		boolean std_value_instantiator_1_expr27_line_215 = f__default_creator_3215_line_215 != null;
		boolean std_value_instantiator_1_expr26_line_215 = (std_value_instantiator_1_expr27_line_215);
		int PROBE_END_LINE_215 = 215;
		return std_value_instantiator_1_expr26_line_215;
    }

    @Override
    public boolean canCreateUsingDelegate() {
        int PROBE_START_LINE_220 = 220;
		com.fasterxml.jackson.databind.JavaType f__delegate_type_3217_line_220 = _delegateType;
		boolean std_value_instantiator_1_expr29_line_220 = f__delegate_type_3217_line_220 != null;
		boolean std_value_instantiator_1_expr28_line_220 = (std_value_instantiator_1_expr29_line_220);
		int PROBE_END_LINE_220 = 220;
		return std_value_instantiator_1_expr28_line_220;
    }

    @Override
    public boolean canCreateUsingArrayDelegate() {
        int PROBE_START_LINE_225 = 225;
		com.fasterxml.jackson.databind.JavaType f__array_delegate_type_3225_line_225 = _arrayDelegateType;
		boolean std_value_instantiator_1_expr31_line_225 = f__array_delegate_type_3225_line_225 != null;
		boolean std_value_instantiator_1_expr30_line_225 = (std_value_instantiator_1_expr31_line_225);
		int PROBE_END_LINE_225 = 225;
		return std_value_instantiator_1_expr30_line_225;
    }

    @Override
    public boolean canCreateFromObjectWith() {
        int PROBE_START_LINE_230 = 230;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__with_args_creator_3219_line_230 = _withArgsCreator;
		boolean std_value_instantiator_1_expr33_line_230 = f__with_args_creator_3219_line_230 != null;
		boolean std_value_instantiator_1_expr32_line_230 = (std_value_instantiator_1_expr33_line_230);
		int PROBE_END_LINE_230 = 230;
		return std_value_instantiator_1_expr32_line_230;
    }

    @Override
    public boolean canInstantiate() {
        return canCreateUsingDefault()
                || canCreateUsingDelegate() || canCreateUsingArrayDelegate()
                || canCreateFromObjectWith() || canCreateFromString()
                || canCreateFromInt() || canCreateFromLong()
                || canCreateFromDouble() || canCreateFromBoolean();
    }

    @Override
    public JavaType getDelegateType(DeserializationConfig config) {
        return _delegateType;
    }

    @Override
    public JavaType getArrayDelegateType(DeserializationConfig config) {
        return _arrayDelegateType;
    }

    @Override
    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig config) {
        int PROBE_START_LINE_254 = 254;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] f__constructor_arguments_3220_line_254 = _constructorArguments;
		int PROBE_END_LINE_254 = 254;
		return f__constructor_arguments_3220_line_254;
    }
    
    /*
    /**********************************************************
    /* Public API implementation; instantiation from JSON Object
    /**********************************************************
     */
    
    @Override
    public Object createUsingDefault(DeserializationContext ctxt) throws IOException
    {
        int PROBE_START_LINE_266 = 268;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__default_creator_3215_line_266 = _defaultCreator;
		boolean std_value_instantiator_1_expr34_line_266 = f__default_creator_3215_line_266 == null;
		int PROBE_END_LINE_266 = 268;
		if (std_value_instantiator_1_expr34_line_266) { // sanity-check; caller should check
            return super.createUsingDefault(ctxt);
        }
        try {
            int PROBE_START_LINE_270 = 270;
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams f__default_creator_3215_line_270 = _defaultCreator;
			Object std_value_instantiator_1_expr35_line_270 = f__default_creator_3215_line_270.call();
			int PROBE_END_LINE_270 = 270;
			return std_value_instantiator_1_expr35_line_270;
        } catch (Exception e) { // 19-Apr-2017, tatu: Let's not catch Errors, just Exceptions
            return ctxt.handleInstantiationProblem(_valueClass, null, rewrapCtorProblem(ctxt, e));
        }
    }

    @Override
    public Object createFromObjectWith(DeserializationContext ctxt, Object[] args) throws IOException
    {
        if (_withArgsCreator == null) { // sanity-check; caller should check
            return super.createFromObjectWith(ctxt, args);
        }
        try {
            return _withArgsCreator.call(args);
        } catch (Exception e) { // 19-Apr-2017, tatu: Let's not catch Errors, just Exceptions
            return ctxt.handleInstantiationProblem(_valueClass, args, rewrapCtorProblem(ctxt, e));
        }
    }

    @Override
    public Object createUsingDelegate(DeserializationContext ctxt, Object delegate) throws IOException
    {
        // 04-Oct-2016, tatu: Need delegation to work around [databind#1392]...
        if (_delegateCreator == null) {
            if (_arrayDelegateCreator != null) {
                return _createUsingDelegate(_arrayDelegateCreator, _arrayDelegateArguments, ctxt, delegate);
            }
        }
        return _createUsingDelegate(_delegateCreator, _delegateArguments, ctxt, delegate);
    }

    @Override
    public Object createUsingArrayDelegate(DeserializationContext ctxt, Object delegate) throws IOException
    {
        if (_arrayDelegateCreator == null) {
            if (_delegateCreator != null) { // sanity-check; caller should check
                // fallback to the classic delegate creator
                return createUsingDelegate(ctxt, delegate);
            }
        }
        return _createUsingDelegate(_arrayDelegateCreator, _arrayDelegateArguments, ctxt, delegate);
    }

    /*
    /**********************************************************
    /* Public API implementation; instantiation from JSON scalars
    /**********************************************************
     */

    @Override
    public Object createFromString(DeserializationContext ctxt, String value) throws IOException
    {
        if (_fromStringCreator == null) {
            return _createFromStringFallbacks(ctxt, value);
        }
        try {
            return _fromStringCreator.call1(value);
        } catch (Throwable t) {
            return ctxt.handleInstantiationProblem(_fromStringCreator.getDeclaringClass(),
                    value, rewrapCtorProblem(ctxt, t));
        }
    }
    
    @Override
    public Object createFromInt(DeserializationContext ctxt, int value) throws IOException
    {
        // First: "native" int methods work best:
        if (_fromIntCreator != null) {
            Object arg = Integer.valueOf(value);
            try {
                return _fromIntCreator.call1(arg);
            } catch (Throwable t0) {
                return ctxt.handleInstantiationProblem(_fromIntCreator.getDeclaringClass(),
                        arg, rewrapCtorProblem(ctxt, t0));
            }
        }
        // but if not, can do widening conversion
        if (_fromLongCreator != null) {
            Object arg = Long.valueOf(value);
            try {
                return _fromLongCreator.call1(arg);
            } catch (Throwable t0) {
                return ctxt.handleInstantiationProblem(_fromLongCreator.getDeclaringClass(),
                        arg, rewrapCtorProblem(ctxt, t0));
            }
        }
        return super.createFromInt(ctxt, value);
    }

    @Override
    public Object createFromLong(DeserializationContext ctxt, long value) throws IOException
    {
        if (_fromLongCreator == null) {
            return super.createFromLong(ctxt, value);
        }
        Object arg = Long.valueOf(value);
        try {
            return _fromLongCreator.call1(arg);
        } catch (Throwable t0) {
            return ctxt.handleInstantiationProblem(_fromLongCreator.getDeclaringClass(),
                    arg, rewrapCtorProblem(ctxt, t0));
        }
    }

    @Override
    public Object createFromDouble(DeserializationContext ctxt, double value) throws IOException
    {
        if (_fromDoubleCreator == null) {
            return super.createFromDouble(ctxt, value);
        }
        Object arg = Double.valueOf(value);
        try {
            return _fromDoubleCreator.call1(arg);
        } catch (Throwable t0) {
            return ctxt.handleInstantiationProblem(_fromDoubleCreator.getDeclaringClass(),
                    arg, rewrapCtorProblem(ctxt, t0));
        }
    }

    @Override
    public Object createFromBoolean(DeserializationContext ctxt, boolean value) throws IOException
    {
        if (_fromBooleanCreator == null) {
            return super.createFromBoolean(ctxt, value);
        }
        final Boolean arg = Boolean.valueOf(value);
        try {
            return _fromBooleanCreator.call1(arg);
        } catch (Throwable t0) {
            return ctxt.handleInstantiationProblem(_fromBooleanCreator.getDeclaringClass(),
                    arg, rewrapCtorProblem(ctxt, t0));
        }
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
    public AnnotatedWithParams getArrayDelegateCreator() {
        return _arrayDelegateCreator;
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
        int PROBE_START_LINE_432 = 432;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter f__incomplete_parameter_3258_line_432 = _incompleteParameter;
		int PROBE_END_LINE_432 = 432;
		return f__incomplete_parameter_3258_line_432;
    }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    /**
     * @deprecated Since 2.7 call either {@link #unwrapAndWrapException} or
     *  {@link #wrapAsJsonMappingException}
     */
    @Deprecated // since 2.7
    protected JsonMappingException wrapException(Throwable t)
    {
        // 05-Nov-2015, tatu: This used to always unwrap the whole exception, but now only
        //   does so if and until `JsonMappingException` is found.
        for (Throwable curr = t; curr != null; curr = curr.getCause()) {
            if (curr instanceof JsonMappingException) {
                return (JsonMappingException) curr;
            }
        }
        return new JsonMappingException(null,
                "Instantiation of "+getValueTypeDesc()+" value failed: "+ClassUtil.exceptionMessage(t), t);
    }

    /**
     * @since 2.7
     */
    protected JsonMappingException unwrapAndWrapException(DeserializationContext ctxt, Throwable t)
    {
        // 05-Nov-2015, tatu: This used to always unwrap the whole exception, but now only
        //   does so if and until `JsonMappingException` is found.
        for (Throwable curr = t; curr != null; curr = curr.getCause()) {
            if (curr instanceof JsonMappingException) {
                return (JsonMappingException) curr;
            }
        }
        return ctxt.instantiationException(getValueClass(), t);
    }

    /**
     * @since 2.7
     */
    protected JsonMappingException wrapAsJsonMappingException(DeserializationContext ctxt,
            Throwable t)
    {
        // 05-Nov-2015, tatu: Only avoid wrapping if already a JsonMappingException
        if (t instanceof JsonMappingException) {
            return (JsonMappingException) t;
        }
        return ctxt.instantiationException(getValueClass(), t);
    }

    /**
     * @since 2.7
     */
    protected JsonMappingException rewrapCtorProblem(DeserializationContext ctxt,
            Throwable t)
    {
        // 05-Nov-2015, tatu: Seems like there are really only 2 useless wrapper errors/exceptions,
        //    so just peel those, and nothing else
        if ((t instanceof ExceptionInInitializerError) // from static initialization block
                || (t instanceof InvocationTargetException) // from constructor/method
                ) {
            Throwable cause = t.getCause();
            if (cause != null) {
                t = cause;
            }
        }
        return wrapAsJsonMappingException(ctxt, t);
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    private Object _createUsingDelegate(AnnotatedWithParams delegateCreator,
            SettableBeanProperty[] delegateArguments,
            DeserializationContext ctxt,
            Object delegate)
            throws IOException
    {
        if (delegateCreator == null) { // sanity-check; caller should check
            throw new IllegalStateException("No delegate constructor for "+getValueTypeDesc());
        }
        try {
            // First simple case: just delegate, no injectables
            if (delegateArguments == null) {
                return delegateCreator.call1(delegate);
            }
            // And then the case with at least one injectable...
            final int len = delegateArguments.length;
            Object[] args = new Object[len];
            for (int i = 0; i < len; ++i) {
                SettableBeanProperty prop = delegateArguments[i];
                if (prop == null) { // delegate
                    args[i] = delegate;
                } else { // nope, injectable:
                    args[i] = ctxt.findInjectableValue(prop.getInjectableValueId(), prop, null);
                }
            }
            // and then try calling with full set of arguments
            return delegateCreator.call(args);
        } catch (Throwable t) {
            throw rewrapCtorProblem(ctxt, t);
        }
    }
}
