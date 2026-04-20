package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;
import java.lang.reflect.Member;
import java.util.*;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.std.StdValueInstantiator;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.lang.reflect.AnnotatedElement;

/**
 * Container class for storing information on creators (based on annotations,
 * visibility), to be able to build actual instantiator later on.
 */
public class CreatorCollector
{
    // Since 2.5
    protected final static int C_DEFAULT = 0;
    protected final static int C_STRING = 1;
    protected final static int C_INT = 2;
    protected final static int C_LONG = 3;
    protected final static int C_DOUBLE = 4;
    protected final static int C_BOOLEAN = 5;
    protected final static int C_DELEGATE = 6;
    protected final static int C_PROPS = 7;

    protected final static String[] TYPE_DESCS = new String[] {
        "default",
        "String", "int", "long", "double", "boolean",
        "delegate", "property-based"
    };

    /// Type of bean being created
    final protected BeanDescription _beanDesc;

    final protected boolean _canFixAccess;

    /**
     * Set of creators we have collected so far
     * 
     * @since 2.5
     */
    protected final AnnotatedWithParams[] _creators = new AnnotatedWithParams[8];

    /**
     * Bitmask of creators that were explicitly marked as creators; false for auto-detected
     * (ones included base on naming and/or visibility, not annotation)
     * 
     * @since 2.5
     */
    protected int _explicitCreators = 0;
    
    protected boolean _hasNonDefaultCreator = false;
    
    // when there are injectable values along with delegate:
    protected CreatorProperty[] _delegateArgs;
    
    protected CreatorProperty[] _propertyBasedArgs;

    protected AnnotatedParameter _incompleteParameter;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */
    
    public CreatorCollector(BeanDescription beanDesc, boolean canFixAccess)
    {
        int PROBE_START_LINE_77 = 77;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2107_line_77 = beanDesc;
		int PROBE_END_LINE_77 = 77;
		_beanDesc = p_bean_desc_2107_line_77;
        int PROBE_START_LINE_78 = 78;
		boolean p_can_fix_access_2108_line_78 = canFixAccess;
		int PROBE_END_LINE_78 = 78;
		_canFixAccess = p_can_fix_access_2108_line_78;
    }

    public ValueInstantiator constructValueInstantiator(DeserializationConfig config)
    {
        JavaType delegateType;
        int PROBE_START_LINE_84 = 84;
		boolean f__has_non_default_creator_2106_line_84 = _hasNonDefaultCreator;
		boolean creator_collector_1_expr6_line_84 = !f__has_non_default_creator_2106_line_84;
		int PROBE_END_LINE_84 = 84;
		boolean maybeVanilla = creator_collector_1_expr6_line_84;

        int PROBE_START_LINE_86 = 101;
		boolean v_maybe_vanilla_2112_line_86 = maybeVanilla;
		boolean creator_collector_1_expr8_line_86 = false;
		if (!v_maybe_vanilla_2112_line_86) {
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_86 = _creators;
			int f_c_delegate_2113_line_86 = C_DELEGATE;
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr10_line_86 = f__creators_2104_line_86[f_c_delegate_2113_line_86];
			boolean creator_collector_1_expr9_line_86 = creator_collector_1_expr10_line_86 == null;
			creator_collector_1_expr8_line_86 = (creator_collector_1_expr9_line_86);
		}
		boolean creator_collector_1_expr7_line_86 = v_maybe_vanilla_2112_line_86 || creator_collector_1_expr8_line_86;
		int PROBE_END_LINE_86 = 101;
		if (creator_collector_1_expr7_line_86) {
            delegateType = null;
        } else {
            // need to find type...
            int ix = 0;
            if (_delegateArgs != null) {
                for (int i = 0, len = _delegateArgs.length; i < len; ++i) {
                    if (_delegateArgs[i] == null) { // marker for delegate itself
                        ix = i;
                        break;
                    }
                }
            }
            TypeBindings bindings = _beanDesc.bindingsForBeanType();
            delegateType = bindings.resolveType(_creators[C_DELEGATE].getGenericParameterType(ix));
        }

        int PROBE_START_LINE_103 = 103;
		com.fasterxml.jackson.databind.BeanDescription f__bean_desc_2109_line_103 = _beanDesc;
		JavaType creator_collector_1_expr12_line_103 = f__bean_desc_2109_line_103.getType();
		int PROBE_END_LINE_103 = 103;
		final JavaType type = creator_collector_1_expr12_line_103;

        int PROBE_START_LINE_107 = 107;
		boolean f__has_non_default_creator_2106_line_107 = _hasNonDefaultCreator;
		boolean creator_collector_1_expr14_line_107 = !f__has_non_default_creator_2106_line_107;
		int PROBE_END_LINE_107 = 107;
		// Any non-standard creator will prevent; with one exception: int-valued constructor
        // that standard containers have can be ignored
        maybeVanilla &= creator_collector_1_expr14_line_107;

        int PROBE_START_LINE_109 = 123;
		boolean v_maybe_vanilla_2112_line_109 = maybeVanilla;
		int PROBE_END_LINE_109 = 123;
		if (v_maybe_vanilla_2112_line_109) {
            /* 10-May-2014, tatu: If we have nothing special, and we are dealing with one
             *   of "well-known" types, can create a non-reflection-based instantiator.
             */
            final Class<?> rawType = type.getRawClass();
            if (rawType == Collection.class || rawType == List.class || rawType == ArrayList.class) {
                return new Vanilla(Vanilla.TYPE_COLLECTION);
            }
            if (rawType == Map.class || rawType == LinkedHashMap.class) {
                return new Vanilla(Vanilla.TYPE_MAP);
            }
            if (rawType == HashMap.class) {
                return new Vanilla(Vanilla.TYPE_HASH_MAP);
            }
        }
        
        int PROBE_START_LINE_125 = 125;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_2111_line_125 = config;
		com.fasterxml.jackson.databind.JavaType v_type_2115_line_125 = type;
		int PROBE_END_LINE_125 = 125;
		StdValueInstantiator inst = new StdValueInstantiator(p_config_2111_line_125, v_type_2115_line_125);
        int PROBE_START_LINE_126 = 128;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2116_line_126 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_126 = _creators;
		int f_c_default_2119_line_126 = C_DEFAULT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr17_line_126 = f__creators_2104_line_126[f_c_default_2119_line_126];
		int PROBE_END_LINE_126 = 128;
		v_inst_2116_line_126.configureFromObjectSettings(creator_collector_1_expr17_line_126,
                _creators[C_DELEGATE], delegateType, _delegateArgs,
                _creators[C_PROPS], _propertyBasedArgs);
        int PROBE_START_LINE_129 = 129;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2116_line_129 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_129 = _creators;
		int f_c_string_2120_line_129 = C_STRING;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr21_line_129 = f__creators_2104_line_129[f_c_string_2120_line_129];
		int PROBE_END_LINE_129 = 129;
		v_inst_2116_line_129.configureFromStringCreator(creator_collector_1_expr21_line_129);
        int PROBE_START_LINE_130 = 130;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2116_line_130 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_130 = _creators;
		int f_c_int_2121_line_130 = C_INT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr23_line_130 = f__creators_2104_line_130[f_c_int_2121_line_130];
		int PROBE_END_LINE_130 = 130;
		v_inst_2116_line_130.configureFromIntCreator(creator_collector_1_expr23_line_130);
        int PROBE_START_LINE_131 = 131;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2116_line_131 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_131 = _creators;
		int f_c_long_2122_line_131 = C_LONG;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr25_line_131 = f__creators_2104_line_131[f_c_long_2122_line_131];
		int PROBE_END_LINE_131 = 131;
		v_inst_2116_line_131.configureFromLongCreator(creator_collector_1_expr25_line_131);
        int PROBE_START_LINE_132 = 132;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2116_line_132 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_132 = _creators;
		int f_c_double_2123_line_132 = C_DOUBLE;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr27_line_132 = f__creators_2104_line_132[f_c_double_2123_line_132];
		int PROBE_END_LINE_132 = 132;
		v_inst_2116_line_132.configureFromDoubleCreator(creator_collector_1_expr27_line_132);
        int PROBE_START_LINE_133 = 133;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2116_line_133 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_133 = _creators;
		int f_c_boolean_2124_line_133 = C_BOOLEAN;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr29_line_133 = f__creators_2104_line_133[f_c_boolean_2124_line_133];
		int PROBE_END_LINE_133 = 133;
		v_inst_2116_line_133.configureFromBooleanCreator(creator_collector_1_expr29_line_133);
        int PROBE_START_LINE_134 = 134;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2116_line_134 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter f__incomplete_parameter_2125_line_134 = _incompleteParameter;
		int PROBE_END_LINE_134 = 134;
		v_inst_2116_line_134.configureIncompleteParameter(f__incomplete_parameter_2125_line_134);
        int PROBE_START_LINE_135 = 135;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2116_line_135 = inst;
		int PROBE_END_LINE_135 = 135;
		return v_inst_2116_line_135;
    }
    
    /*
    /**********************************************************
    /* Setters
    /**********************************************************
     */
    
    /**
     * Method called to indicate the default creator: no-arguments
     * constructor or factory method that is called to instantiate
     * a value before populating it with data. Default creator is
     * only used if no other creators are indicated.
     * 
     * @param creator Creator method; no-arguments constructor or static
     *   factory method.
     */
    public void setDefaultCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_154 = 154;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_154 = _creators;
		int f_c_default_2119_line_154 = C_DEFAULT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2126_line_154 = creator;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr33_line_154 = _fixAccess(
				p_creator_2126_line_154);
		int PROBE_END_LINE_154 = 154;
		f__creators_2104_line_154[f_c_default_2119_line_154] = creator_collector_1_expr33_line_154;
    }
    
    public void addStringCreator(AnnotatedWithParams creator, boolean explicit) {
        verifyNonDup(creator, C_STRING, explicit);
    }
    public void addIntCreator(AnnotatedWithParams creator, boolean explicit) {
        int PROBE_START_LINE_161 = 161;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2129_line_161 = creator;
		int f_c_int_2121_line_161 = C_INT;
		boolean p_explicit_2130_line_161 = explicit;
		int PROBE_END_LINE_161 = 161;
		verifyNonDup(p_creator_2129_line_161, f_c_int_2121_line_161, p_explicit_2130_line_161);
    }
    public void addLongCreator(AnnotatedWithParams creator, boolean explicit) {
        verifyNonDup(creator, C_LONG, explicit);
    }
    public void addDoubleCreator(AnnotatedWithParams creator, boolean explicit) {
        verifyNonDup(creator, C_DOUBLE, explicit);
    }
    public void addBooleanCreator(AnnotatedWithParams creator, boolean explicit) {
        verifyNonDup(creator, C_BOOLEAN, explicit);
    }

    public void addDelegatingCreator(AnnotatedWithParams creator, boolean explicit,
            CreatorProperty[] injectables)
    {
        verifyNonDup(creator, C_DELEGATE, explicit);
        _delegateArgs = injectables;
    }
    
    public void addPropertyCreator(AnnotatedWithParams creator, boolean explicit,
            CreatorProperty[] properties)
    {
        verifyNonDup(creator, C_PROPS, explicit);
        // [JACKSON-470] Better ensure we have no duplicate names either...
        if (properties.length > 1) {
            HashMap<String,Integer> names = new HashMap<String,Integer>();
            for (int i = 0, len = properties.length; i < len; ++i) {
                String name = properties[i].getName();
                /* [Issue-13]: Need to consider Injectables, which may not have
                 *   a name at all, and need to be skipped
                 */
                if (name.length() == 0 && properties[i].getInjectableValueId() != null) {
                    continue;
                }
                Integer old = names.put(name, Integer.valueOf(i));
                if (old != null) {
                    throw new IllegalArgumentException("Duplicate creator property \""+name+"\" (index "+old+" vs "+i+")");
                }
            }
        }
        _propertyBasedArgs = properties;
    }

    public void addIncompeteParameter(AnnotatedParameter parameter) {
        if (_incompleteParameter == null) {
            _incompleteParameter = parameter;
        }
    }

    // Bunch of methods deprecated in 2.5, to be removed from 2.6 or later
    
    @Deprecated // since 2.5
    public void addStringCreator(AnnotatedWithParams creator) {
        addStringCreator(creator, false);
    }
    @Deprecated // since 2.5
    public void addIntCreator(AnnotatedWithParams creator) {
        addBooleanCreator(creator, false);
    }
    @Deprecated // since 2.5
    public void addLongCreator(AnnotatedWithParams creator) {
        addBooleanCreator(creator, false);
    }
    @Deprecated // since 2.5
    public void addDoubleCreator(AnnotatedWithParams creator) {
        addBooleanCreator(creator, false);
    }
    @Deprecated // since 2.5
    public void addBooleanCreator(AnnotatedWithParams creator) {
        addBooleanCreator(creator, false);
    }

    @Deprecated // since 2.5
    public void addDelegatingCreator(AnnotatedWithParams creator, CreatorProperty[] injectables) {
        addDelegatingCreator(creator, false, injectables);
    }

    @Deprecated // since 2.5
    public void addPropertyCreator(AnnotatedWithParams creator, CreatorProperty[] properties) {
        addPropertyCreator(creator, false, properties);
    }

    @Deprecated // since 2.5, remove from 2.6
    protected AnnotatedWithParams verifyNonDup(AnnotatedWithParams newOne, int typeIndex) {
        verifyNonDup(newOne, typeIndex, false);
        return _creators[typeIndex];
    }
    
    /*
    /**********************************************************
    /* Accessors
    /**********************************************************
     */

    /**
     * @since 2.1
     */
    public boolean hasDefaultCreator() {
        int PROBE_START_LINE_259 = 259;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_259 = _creators;
		int f_c_default_2119_line_259 = C_DEFAULT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr36_line_259 = f__creators_2104_line_259[f_c_default_2119_line_259];
		boolean creator_collector_1_expr35_line_259 = creator_collector_1_expr36_line_259 != null;
		int PROBE_END_LINE_259 = 259;
		return creator_collector_1_expr35_line_259;
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    private <T extends AnnotatedMember> T _fixAccess(T member)
    {
        int PROBE_START_LINE_270 = 272;
		T p_member_2155_line_270 = member;
		boolean creator_collector_1_expr38_line_270 = p_member_2155_line_270 != null;
		boolean f__can_fix_access_2110_line_270 = true;
		if (creator_collector_1_expr38_line_270) {
			f__can_fix_access_2110_line_270 = _canFixAccess;
		}
		boolean creator_collector_1_expr37_line_270 = creator_collector_1_expr38_line_270
				&& f__can_fix_access_2110_line_270;
		int PROBE_END_LINE_270 = 272;
		if (creator_collector_1_expr37_line_270) {
            int PROBE_START_LINE_271 = 271;
			T p_member_2155_line_271 = member;
			java.lang.reflect.AnnotatedElement creator_collector_1_expr41_line_271 = p_member_2155_line_271
					.getAnnotated();
			int PROBE_END_LINE_271 = 271;
			ClassUtil.checkAndFixAccess((Member) creator_collector_1_expr41_line_271);
        }
        int PROBE_START_LINE_273 = 273;
		T p_member_2155_line_273 = member;
		int PROBE_END_LINE_273 = 273;
		return p_member_2155_line_273;
    }

    protected void verifyNonDup(AnnotatedWithParams newOne, int typeIndex, boolean explicit)
    {
        int PROBE_START_LINE_278 = 278;
		int p_type_index_2157_line_278 = typeIndex;
		int creator_collector_1_expr43_line_278 = 1 << p_type_index_2157_line_278;
		int creator_collector_1_expr42_line_278 = (creator_collector_1_expr43_line_278);
		int PROBE_END_LINE_278 = 278;
		final int mask = creator_collector_1_expr42_line_278;
        _hasNonDefaultCreator = true;
        int PROBE_START_LINE_280 = 280;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_280 = _creators;
		int p_type_index_2157_line_280 = typeIndex;
		AnnotatedWithParams creator_collector_1_expr45_line_280 = f__creators_2104_line_280[p_type_index_2157_line_280];
		int PROBE_END_LINE_280 = 280;
		AnnotatedWithParams oldOne = creator_collector_1_expr45_line_280;
        int PROBE_START_LINE_282 = 314;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams v_old_one_2160_line_282 = oldOne;
		boolean creator_collector_1_expr46_line_282 = v_old_one_2160_line_282 != null;
		int PROBE_END_LINE_282 = 314;
		// already had an explicitly marked one?
        if (creator_collector_1_expr46_line_282) {
            boolean verify;

            if ((_explicitCreators & mask) != 0) { // already had explicitly annotated, leave as-is
                // but skip, if new one not annotated
                if (!explicit) {
                    return;
                }
                // both explicit: verify
                verify = true;
            } else {
                // otherwise only verify if neither explicitly annotated.
                verify = !explicit;
            }

            // one more thing: ok to override in sub-class
            if (verify && (oldOne.getClass() == newOne.getClass())) {
                // [databind#667]: avoid one particular class of bogus problems
                Class<?> oldType = oldOne.getRawParameterType(0);
                Class<?> newType = newOne.getRawParameterType(0);

                if (oldType == newType) {
                    throw new IllegalArgumentException("Conflicting "+TYPE_DESCS[typeIndex]
                            +" creators: already had explicitly marked "+oldOne+", encountered "+newOne);
                }
                // otherwise, which one to choose?
                if (newType.isAssignableFrom(oldType)) {
                    // new type more generic, use old
                    return;
                }
                // new type more specific, use it
            }
        }
        int PROBE_START_LINE_315 = 317;
		boolean p_explicit_2158_line_315 = explicit;
		int PROBE_END_LINE_315 = 317;
		if (p_explicit_2158_line_315) {
            _explicitCreators |= mask;
        }
        int PROBE_START_LINE_318 = 318;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2104_line_318 = _creators;
		int p_type_index_2157_line_318 = typeIndex;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_new_one_2156_line_318 = newOne;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr49_line_318 = _fixAccess(
				p_new_one_2156_line_318);
		int PROBE_END_LINE_318 = 318;
		f__creators_2104_line_318[p_type_index_2157_line_318] = creator_collector_1_expr49_line_318;
    }

    /*
    /**********************************************************
    /* Helper class(es)
    /**********************************************************
     */

    protected final static class Vanilla
        extends ValueInstantiator
        implements java.io.Serializable
    {
        private static final long serialVersionUID = 1L;

        public final static int TYPE_COLLECTION = 1;
        public final static int TYPE_MAP = 2;
        public final static int TYPE_HASH_MAP = 3;

        private final int _type;
        
        public Vanilla(int t) {
            _type = t;
        }
        
        
        @Override
        public String getValueTypeDesc() {
            switch (_type) {
            case TYPE_COLLECTION: return ArrayList.class.getName();
            case TYPE_MAP: return LinkedHashMap.class.getName();
            case TYPE_HASH_MAP: return HashMap.class.getName();
            }
            return Object.class.getName();
        }

        @Override
        public boolean canInstantiate() { return true; }

        @Override
        public boolean canCreateUsingDefault() {  return true; }

        @Override
        public Object createUsingDefault(DeserializationContext ctxt) throws IOException {
            switch (_type) {
            case TYPE_COLLECTION: return new ArrayList<Object>();
            case TYPE_MAP: return new LinkedHashMap<String,Object>();
            case TYPE_HASH_MAP: return new HashMap<String,Object>();
            }
            throw new IllegalStateException("Unknown type "+_type);
        }
    }
}
