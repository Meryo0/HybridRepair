package com.fasterxml.jackson.databind.deser.impl;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.std.StdValueInstantiator;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;

/**
 * Container class for storing information on creators (based on annotations,
 * visibility), to be able to build actual instantiator later on.
 */
public class CreatorCollector {
    // Since 2.5
    protected final static int C_DEFAULT = 0;
    protected final static int C_STRING = 1;
    protected final static int C_INT = 2;
    protected final static int C_LONG = 3;
    protected final static int C_DOUBLE = 4;
    protected final static int C_BOOLEAN = 5;
    protected final static int C_DELEGATE = 6;
    protected final static int C_PROPS = 7;
    protected final static int C_ARRAY_DELEGATE = 8;

    protected final static String[] TYPE_DESCS = new String[] { "default",
            "from-String", "from-int", "from-long", "from-double",
            "from-boolean", "delegate", "property-based" };

    /// Type of bean being created
    final protected BeanDescription _beanDesc;

    final protected boolean _canFixAccess;

    /**
     * @since 2.7
     */
    final protected boolean _forceAccess;

    /**
     * Set of creators we have collected so far
     * 
     * @since 2.5
     */
    protected final AnnotatedWithParams[] _creators = new AnnotatedWithParams[9];

    /**
     * Bitmask of creators that were explicitly marked as creators; false for
     * auto-detected (ones included base on naming and/or visibility, not
     * annotation)
     * 
     * @since 2.5
     */
    protected int _explicitCreators = 0;

    protected boolean _hasNonDefaultCreator = false;

    // when there are injectable values along with delegate:
    protected SettableBeanProperty[] _delegateArgs;

    protected SettableBeanProperty[] _arrayDelegateArgs;

    protected SettableBeanProperty[] _propertyBasedArgs;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    public CreatorCollector(BeanDescription beanDesc, MapperConfig<?> config) {
        int PROBE_START_LINE_78 = 78;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2677_line_78 = beanDesc;
		int PROBE_END_LINE_78 = 78;
		_beanDesc = p_bean_desc_2677_line_78;
        int PROBE_START_LINE_79 = 79;
		MapperConfig<?> p_config_2678_line_79 = config;
		boolean creator_collector_1_expr6_line_79 = p_config_2678_line_79.canOverrideAccessModifiers();
		int PROBE_END_LINE_79 = 79;
		_canFixAccess = creator_collector_1_expr6_line_79;
        int PROBE_START_LINE_80 = 81;
		MapperConfig<?> p_config_2678_line_80 = config;
		boolean creator_collector_1_expr8_line_80 = p_config_2678_line_80
				.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
		int PROBE_END_LINE_80 = 81;
		_forceAccess = creator_collector_1_expr8_line_80;
    }

    public ValueInstantiator constructValueInstantiator(DeserializationContext ctxt)
        throws JsonMappingException
    {
        int PROBE_START_LINE_87 = 87;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2682_line_87 = ctxt;
		DeserializationConfig creator_collector_1_expr9_line_87 = p_ctxt_2682_line_87.getConfig();
		int PROBE_END_LINE_87 = 87;
		final DeserializationConfig config = creator_collector_1_expr9_line_87;
        int PROBE_START_LINE_88 = 89;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2682_line_88 = ctxt;
		JavaType creator_collector_1_expr10_line_88 = _computeDelegateType(p_ctxt_2682_line_88, _creators[C_DELEGATE],
				_delegateArgs);
		int PROBE_END_LINE_88 = 89;
		final JavaType delegateType = creator_collector_1_expr10_line_88;
        int PROBE_START_LINE_90 = 91;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2682_line_90 = ctxt;
		JavaType creator_collector_1_expr12_line_90 = _computeDelegateType(p_ctxt_2682_line_90,
				_creators[C_ARRAY_DELEGATE], _arrayDelegateArgs);
		int PROBE_END_LINE_90 = 91;
		final JavaType arrayDelegateType = creator_collector_1_expr12_line_90;
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.databind.BeanDescription f__bean_desc_2679_line_92 = _beanDesc;
		JavaType creator_collector_1_expr14_line_92 = f__bean_desc_2679_line_92.getType();
		int PROBE_END_LINE_92 = 92;
		final JavaType type = creator_collector_1_expr14_line_92;

        int PROBE_START_LINE_97 = 98;
		AnnotatedWithParams creator_collector_1_expr15_line_97 = StdTypeConstructor.tryToOptimize(_creators[C_DEFAULT]);
		int PROBE_END_LINE_97 = 98;
		// 11-Jul-2016, tatu: Earlier optimization by replacing the whole
        // instantiator did not
        // work well, so let's replace by lower-level check:
        AnnotatedWithParams defaultCtor = creator_collector_1_expr15_line_97;

        int PROBE_START_LINE_100 = 100;
		com.fasterxml.jackson.databind.DeserializationConfig v_config_2683_line_100 = config;
		com.fasterxml.jackson.databind.JavaType v_type_2688_line_100 = type;
		int PROBE_END_LINE_100 = 100;
		StdValueInstantiator inst = new StdValueInstantiator(v_config_2683_line_100, v_type_2688_line_100);
        int PROBE_START_LINE_101 = 103;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2690_line_101 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams v_default_ctor_2689_line_101 = defaultCtor;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_101 = _creators;
		int f_c_delegate_2692_line_101 = C_DELEGATE;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr19_line_101 = f__creators_2674_line_101[f_c_delegate_2692_line_101];
		int PROBE_END_LINE_101 = 103;
		v_inst_2690_line_101.configureFromObjectSettings(v_default_ctor_2689_line_101, creator_collector_1_expr19_line_101,
                delegateType, _delegateArgs, _creators[C_PROPS],
                _propertyBasedArgs);
        int PROBE_START_LINE_104 = 105;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2690_line_104 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_104 = _creators;
		int f_c_array_delegate_2693_line_104 = C_ARRAY_DELEGATE;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr22_line_104 = f__creators_2674_line_104[f_c_array_delegate_2693_line_104];
		int PROBE_END_LINE_104 = 105;
		v_inst_2690_line_104.configureFromArraySettings(creator_collector_1_expr22_line_104,
                arrayDelegateType, _arrayDelegateArgs);
        int PROBE_START_LINE_106 = 106;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2690_line_106 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_106 = _creators;
		int f_c_string_2694_line_106 = C_STRING;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr24_line_106 = f__creators_2674_line_106[f_c_string_2694_line_106];
		int PROBE_END_LINE_106 = 106;
		v_inst_2690_line_106.configureFromStringCreator(creator_collector_1_expr24_line_106);
        int PROBE_START_LINE_107 = 107;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2690_line_107 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_107 = _creators;
		int f_c_int_2695_line_107 = C_INT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr26_line_107 = f__creators_2674_line_107[f_c_int_2695_line_107];
		int PROBE_END_LINE_107 = 107;
		v_inst_2690_line_107.configureFromIntCreator(creator_collector_1_expr26_line_107);
        int PROBE_START_LINE_108 = 108;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2690_line_108 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_108 = _creators;
		int f_c_long_2696_line_108 = C_LONG;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr28_line_108 = f__creators_2674_line_108[f_c_long_2696_line_108];
		int PROBE_END_LINE_108 = 108;
		v_inst_2690_line_108.configureFromLongCreator(creator_collector_1_expr28_line_108);
        int PROBE_START_LINE_109 = 109;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2690_line_109 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_109 = _creators;
		int f_c_double_2697_line_109 = C_DOUBLE;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr30_line_109 = f__creators_2674_line_109[f_c_double_2697_line_109];
		int PROBE_END_LINE_109 = 109;
		v_inst_2690_line_109.configureFromDoubleCreator(creator_collector_1_expr30_line_109);
        int PROBE_START_LINE_110 = 110;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2690_line_110 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_110 = _creators;
		int f_c_boolean_2698_line_110 = C_BOOLEAN;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr32_line_110 = f__creators_2674_line_110[f_c_boolean_2698_line_110];
		int PROBE_END_LINE_110 = 110;
		v_inst_2690_line_110.configureFromBooleanCreator(creator_collector_1_expr32_line_110);
        int PROBE_START_LINE_111 = 111;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2690_line_111 = inst;
		int PROBE_END_LINE_111 = 111;
		return v_inst_2690_line_111;
    }

    /*
    /**********************************************************
    /* Setters
    /**********************************************************
     */

    /**
     * Method called to indicate the default creator: no-arguments constructor
     * or factory method that is called to instantiate a value before populating
     * it with data. Default creator is only used if no other creators are
     * indicated.
     * 
     * @param creator
     *            Creator method; no-arguments constructor or static factory
     *            method.
     */
    public void setDefaultCreator(AnnotatedWithParams creator) {
        int PROBE_START_LINE_131 = 131;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_131 = _creators;
		int f_c_default_2700_line_131 = C_DEFAULT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2699_line_131 = creator;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr35_line_131 = _fixAccess(
				p_creator_2699_line_131);
		int PROBE_END_LINE_131 = 131;
		f__creators_2674_line_131[f_c_default_2700_line_131] = creator_collector_1_expr35_line_131;
    }

    public void addStringCreator(AnnotatedWithParams creator, boolean explicit) {
        int PROBE_START_LINE_135 = 135;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2701_line_135 = creator;
		int f_c_string_2694_line_135 = C_STRING;
		boolean p_explicit_2702_line_135 = explicit;
		int PROBE_END_LINE_135 = 135;
		verifyNonDup(p_creator_2701_line_135, f_c_string_2694_line_135, p_explicit_2702_line_135);
    }

    public void addIntCreator(AnnotatedWithParams creator, boolean explicit) {
        int PROBE_START_LINE_139 = 139;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2703_line_139 = creator;
		int f_c_int_2695_line_139 = C_INT;
		boolean p_explicit_2704_line_139 = explicit;
		int PROBE_END_LINE_139 = 139;
		verifyNonDup(p_creator_2703_line_139, f_c_int_2695_line_139, p_explicit_2704_line_139);
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

    public void addDelegatingCreator(AnnotatedWithParams creator,
            boolean explicit, SettableBeanProperty[] injectables,
            int delegateeIndex)
    {
        if (creator.getParameterType(delegateeIndex).isCollectionLikeType()) {
            if (verifyNonDup(creator, C_ARRAY_DELEGATE, explicit)) {
                _arrayDelegateArgs = injectables;
            }
        } else {
            if (verifyNonDup(creator, C_DELEGATE, explicit)) {
                _delegateArgs = injectables;
            }
        }
    }

    public void addPropertyCreator(AnnotatedWithParams creator,
            boolean explicit, SettableBeanProperty[] properties)
    {
        if (verifyNonDup(creator, C_PROPS, explicit)) {
            // Better ensure we have no duplicate names either...
            if (properties.length > 1) {
                HashMap<String, Integer> names = new HashMap<String, Integer>();
                for (int i = 0, len = properties.length; i < len; ++i) {
                    String name = properties[i].getName();
                    // Need to consider Injectables, which may not have
                    // a name at all, and need to be skipped
                    if (name.isEmpty() && (properties[i].getInjectableValueId() != null)) {
                        continue;
                    }
                    Integer old = names.put(name, Integer.valueOf(i));
                    if (old != null) {
                        throw new IllegalArgumentException(String.format(
                                "Duplicate creator property \"%s\" (index %s vs %d) for type %s ",
                                name, old, i, ClassUtil.nameOf(_beanDesc.getBeanClass())));
                    }
                }
            }
            _propertyBasedArgs = properties;
        }
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
        int PROBE_START_LINE_205 = 205;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_205 = _creators;
		int f_c_default_2700_line_205 = C_DEFAULT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr39_line_205 = f__creators_2674_line_205[f_c_default_2700_line_205];
		boolean creator_collector_1_expr38_line_205 = creator_collector_1_expr39_line_205 != null;
		int PROBE_END_LINE_205 = 205;
		return creator_collector_1_expr38_line_205;
    }

    /**
     * @since 2.6
     */
    public boolean hasDelegatingCreator() {
        return _creators[C_DELEGATE] != null;
    }

    /**
     * @since 2.6
     */
    public boolean hasPropertyBasedCreator() {
        return _creators[C_PROPS] != null;
    }

    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    private JavaType _computeDelegateType(DeserializationContext ctxt,
            AnnotatedWithParams creator, SettableBeanProperty[] delegateArgs)
        throws JsonMappingException
    {
        int PROBE_START_LINE_232 = 234;
		boolean f__has_non_default_creator_2676_line_232 = _hasNonDefaultCreator;
		boolean creator_collector_1_expr41_line_232 = !f__has_non_default_creator_2676_line_232;
		boolean creator_collector_1_expr42_line_232 = false;
		if (!creator_collector_1_expr41_line_232) {
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2719_line_232 = creator;
			boolean creator_collector_1_expr43_line_232 = p_creator_2719_line_232 == null;
			creator_collector_1_expr42_line_232 = (creator_collector_1_expr43_line_232);
		}
		boolean creator_collector_1_expr40_line_232 = creator_collector_1_expr41_line_232
				|| creator_collector_1_expr42_line_232;
		int PROBE_END_LINE_232 = 234;
		if (creator_collector_1_expr40_line_232) {
            return null;
        }
        // need to find type...
        int ix = 0;
        if (delegateArgs != null) {
            for (int i = 0, len = delegateArgs.length; i < len; ++i) {
                if (delegateArgs[i] == null) { // marker for delegate itself
                    ix = i;
                    break;
                }
            }
        }
        final DeserializationConfig config = ctxt.getConfig();

        // 03-May-2018, tatu: need to check possible annotation-based
        //   custom deserializer [databind#2012],
        //   type refinement(s) [databind#2016]. 
        JavaType baseType = creator.getParameterType(ix);
        AnnotationIntrospector intr = config.getAnnotationIntrospector();
        if (intr != null) {
            AnnotatedParameter delegate = creator.getParameter(ix);
            
            // First: custom deserializer(s):
            Object deserDef = intr.findDeserializer(delegate);
            if (deserDef != null) {
                JsonDeserializer<Object> deser = ctxt.deserializerInstance(delegate, deserDef);
                baseType = baseType.withValueHandler(deser);
            } else {
                // Second: type refinement(s), if no explicit deserializer was located
                baseType = intr.refineDeserializationType(config,
                        delegate, baseType);
            }
        }
        return baseType;
    }

    private <T extends AnnotatedMember> T _fixAccess(T member) {
        int PROBE_START_LINE_270 = 273;
		T p_member_2721_line_270 = member;
		boolean creator_collector_1_expr45_line_270 = p_member_2721_line_270 != null;
		boolean f__can_fix_access_2680_line_270 = true;
		if (creator_collector_1_expr45_line_270) {
			f__can_fix_access_2680_line_270 = _canFixAccess;
		}
		boolean creator_collector_1_expr44_line_270 = creator_collector_1_expr45_line_270
				&& f__can_fix_access_2680_line_270;
		int PROBE_END_LINE_270 = 273;
		if (creator_collector_1_expr44_line_270) {
            int PROBE_START_LINE_271 = 272;
			T p_member_2721_line_271 = member;
			java.lang.reflect.AnnotatedElement creator_collector_1_expr48_line_271 = p_member_2721_line_271
					.getAnnotated();
			int PROBE_END_LINE_271 = 272;
			ClassUtil.checkAndFixAccess((Member) creator_collector_1_expr48_line_271,
                    _forceAccess);
        }
        int PROBE_START_LINE_274 = 274;
		T p_member_2721_line_274 = member;
		int PROBE_END_LINE_274 = 274;
		return p_member_2721_line_274;
    }

    /**
     * @return True if specified Creator is to be used
     */
    protected boolean verifyNonDup(AnnotatedWithParams newOne, int typeIndex, boolean explicit)
    {
        int PROBE_START_LINE_282 = 282;
		int p_type_index_2723_line_282 = typeIndex;
		int creator_collector_1_expr50_line_282 = 1 << p_type_index_2723_line_282;
		int creator_collector_1_expr49_line_282 = (creator_collector_1_expr50_line_282);
		int PROBE_END_LINE_282 = 282;
		final int mask = creator_collector_1_expr49_line_282;
        _hasNonDefaultCreator = true;
        int PROBE_START_LINE_284 = 284;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_284 = _creators;
		int p_type_index_2723_line_284 = typeIndex;
		AnnotatedWithParams creator_collector_1_expr52_line_284 = f__creators_2674_line_284[p_type_index_2723_line_284];
		int PROBE_END_LINE_284 = 284;
		AnnotatedWithParams oldOne = creator_collector_1_expr52_line_284;
        int PROBE_START_LINE_286 = 333;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams v_old_one_2726_line_286 = oldOne;
		boolean creator_collector_1_expr53_line_286 = v_old_one_2726_line_286 != null;
		int PROBE_END_LINE_286 = 333;
		// already had an explicitly marked one?
        if (creator_collector_1_expr53_line_286) {
            boolean verify;
            if ((_explicitCreators & mask) != 0) { // already had explicitly annotated, leave as-is
                // but skip, if new one not annotated
                if (!explicit) {
                    return false;
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
                    // 13-Jul-2016, tatu: One more thing to check; since Enum
                    // classes always have
                    // implicitly created `valueOf()`, let's resolve in favor of
                    // other implicit
                    // creator (`fromString()`)
                    if (_isEnumValueOf(newOne)) {
                        return false; // ignore
                    }
                    if (_isEnumValueOf(oldOne)) {
                        ;
                    } else {
                        throw new IllegalArgumentException(String.format(
                                "Conflicting %s creators: already had %s creator %s, encountered another: %s",
                                TYPE_DESCS[typeIndex],
                                explicit ? "explicitly marked"
                                        : "implicitly discovered",
                                oldOne, newOne));
                    }
                }
                // otherwise, which one to choose?
                else if (newType.isAssignableFrom(oldType)) {
                    // new type more generic, use old
                    return false;
                }
                // new type more specific, use it
            }
        }
        int PROBE_START_LINE_334 = 336;
		boolean p_explicit_2724_line_334 = explicit;
		int PROBE_END_LINE_334 = 336;
		if (p_explicit_2724_line_334) {
            _explicitCreators |= mask;
        }
        int PROBE_START_LINE_337 = 337;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2674_line_337 = _creators;
		int p_type_index_2723_line_337 = typeIndex;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_new_one_2722_line_337 = newOne;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr56_line_337 = _fixAccess(
				p_new_one_2722_line_337);
		int PROBE_END_LINE_337 = 337;
		f__creators_2674_line_337[p_type_index_2723_line_337] = creator_collector_1_expr56_line_337;
        return true;
    }

    /**
     * Helper method for recognizing `Enum.valueOf()` factory method
     *
     * @since 2.8.1
     */
    protected boolean _isEnumValueOf(AnnotatedWithParams creator) {
        return creator.getDeclaringClass().isEnum()
                && "valueOf".equals(creator.getName());
    }

    /*
    /**********************************************************
    /* Helper class(es)
    /**********************************************************
     */

    /**
     * Replacement for default constructor to use for a small set of
     * "well-known" types.
     * <p>
     * Note: replaces earlier <code>Vanilla</code>
     * <code>ValueInstantiator</code> implementation
     *
     * @since 2.8.1 (replacing earlier <code>Vanilla</code> instantiator
     */
    protected final static class StdTypeConstructor extends AnnotatedWithParams
            implements java.io.Serializable {
        private static final long serialVersionUID = 1L;

        public final static int TYPE_ARRAY_LIST = 1;
        public final static int TYPE_HASH_MAP = 2;
        public final static int TYPE_LINKED_HASH_MAP = 3;

        private final AnnotatedWithParams _base;

        private final int _type;

        public StdTypeConstructor(AnnotatedWithParams base, int t) {
            super(base, null);
            int PROBE_START_LINE_380 = 380;
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_base_2728_line_380 = base;
			int PROBE_END_LINE_380 = 380;
			_base = p_base_2728_line_380;
            int PROBE_START_LINE_381 = 381;
			int p_t_2729_line_381 = t;
			int PROBE_END_LINE_381 = 381;
			_type = p_t_2729_line_381;
        }

        public static AnnotatedWithParams tryToOptimize(
                AnnotatedWithParams src) {
            int PROBE_START_LINE_386 = 397;
					com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2732_line_386 = src;
					boolean creator_collector_1_expr60_line_386 = p_src_2732_line_386 != null;
					int PROBE_END_LINE_386 = 397;
			if (creator_collector_1_expr60_line_386) {
                int PROBE_START_LINE_387 = 387;
				com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2732_line_387 = src;
				Class<?> creator_collector_1_expr61_line_387 = p_src_2732_line_387.getDeclaringClass();
				int PROBE_END_LINE_387 = 387;
				final Class<?> rawType = creator_collector_1_expr61_line_387;
                int PROBE_START_LINE_388 = 390;
				Class<?> v_raw_type_2733_line_388 = rawType;
				boolean creator_collector_1_expr63_line_388 = v_raw_type_2733_line_388 == List.class;
				boolean creator_collector_1_expr65_line_388 = false;
				if (!creator_collector_1_expr63_line_388) {
					Class<?> v_raw_type_2733_line_388_v1 = rawType;
					creator_collector_1_expr65_line_388 = v_raw_type_2733_line_388_v1 == ArrayList.class;
				}
				boolean creator_collector_1_expr62_line_388 = creator_collector_1_expr63_line_388
						|| creator_collector_1_expr65_line_388;
				int PROBE_END_LINE_388 = 390;
				if (creator_collector_1_expr62_line_388) {
                    int PROBE_START_LINE_389 = 389;
					com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2732_line_389 = src;
					int f_type_array_list_2734_line_389 = TYPE_ARRAY_LIST;
					int PROBE_END_LINE_389 = 389;
					return new StdTypeConstructor(p_src_2732_line_389, f_type_array_list_2734_line_389);
                }
                int PROBE_START_LINE_391 = 393;
				Class<?> v_raw_type_2733_line_391 = rawType;
				boolean creator_collector_1_expr68_line_391 = v_raw_type_2733_line_391 == LinkedHashMap.class;
				int PROBE_END_LINE_391 = 393;
				if (creator_collector_1_expr68_line_391) {
                    int PROBE_START_LINE_392 = 392;
					com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2732_line_392 = src;
					int f_type_linked_hash_map_2735_line_392 = TYPE_LINKED_HASH_MAP;
					int PROBE_END_LINE_392 = 392;
					return new StdTypeConstructor(p_src_2732_line_392, f_type_linked_hash_map_2735_line_392);
                }
                int PROBE_START_LINE_394 = 396;
				Class<?> v_raw_type_2733_line_394 = rawType;
				boolean creator_collector_1_expr71_line_394 = v_raw_type_2733_line_394 == HashMap.class;
				int PROBE_END_LINE_394 = 396;
				if (creator_collector_1_expr71_line_394) {
                    return new StdTypeConstructor(src, TYPE_HASH_MAP);
                }
            }
            int PROBE_START_LINE_398 = 398;
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2732_line_398 = src;
			int PROBE_END_LINE_398 = 398;
			return p_src_2732_line_398;
        }

        protected final Object _construct() {
            int PROBE_START_LINE_402 = 409;
			int f__type_2731_line_402 = _type;
			int PROBE_END_LINE_402 = 409;
			switch (f__type_2731_line_402) {
            case TYPE_ARRAY_LIST:
                return new ArrayList<Object>();
            case TYPE_LINKED_HASH_MAP:
                return new LinkedHashMap<String, Object>();
            case TYPE_HASH_MAP:
                return new HashMap<String, Object>();
            }
            throw new IllegalStateException("Unknown type " + _type);
        }

        @Override
        public int getParameterCount() {
            return _base.getParameterCount();
        }

        @Override
        public Class<?> getRawParameterType(int index) {
            return _base.getRawParameterType(index);
        }

        @Override
        public JavaType getParameterType(int index) {
            return _base.getParameterType(index);
        }

        @Override
        @Deprecated
        public Type getGenericParameterType(int index) {
            return _base.getGenericParameterType(index);
        }

        @Override
        public Object call() throws Exception {
            int PROBE_START_LINE_436 = 436;
			Object creator_collector_1_expr74_line_436 = _construct();
			int PROBE_END_LINE_436 = 436;
			return creator_collector_1_expr74_line_436;
        }

        @Override
        public Object call(Object[] args) throws Exception {
            return _construct();
        }

        @Override
        public Object call1(Object arg) throws Exception {
            return _construct();
        }

        @Override
        public Class<?> getDeclaringClass() {
            return _base.getDeclaringClass();
        }

        @Override
        public Member getMember() {
            return _base.getMember();
        }

        @Override
        public void setValue(Object pojo, Object value)
                throws UnsupportedOperationException, IllegalArgumentException {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object getValue(Object pojo)
                throws UnsupportedOperationException, IllegalArgumentException {
            throw new UnsupportedOperationException();
        }

        @Override
        public Annotated withAnnotations(AnnotationMap fallback) {
            throw new UnsupportedOperationException();
        }

        @Override
        public AnnotatedElement getAnnotated() {
            return _base.getAnnotated();
        }

        @Override
        protected int getModifiers() {
            return _base.getMember().getModifiers();
        }

        @Override
        public String getName() {
            return _base.getName();
        }

        @Override
        public JavaType getType() {
            return _base.getType();
        }

        @Override
        public Class<?> getRawType() {
            return _base.getRawType();
        }

        @Override
        public boolean equals(Object o) {
            return (o == this);
        }

        @Override
        public int hashCode() {
            return _base.hashCode();
        }

        @Override
        public String toString() {
            return _base.toString();
        }
    }
}
