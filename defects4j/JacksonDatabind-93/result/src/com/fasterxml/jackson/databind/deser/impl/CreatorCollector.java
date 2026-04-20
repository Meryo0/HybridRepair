package com.fasterxml.jackson.databind.deser.impl;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.*;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.std.StdValueInstantiator;
import com.fasterxml.jackson.databind.introspect.*;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
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

    protected AnnotatedParameter _incompleteParameter;

    /*
     * /********************************************************** /* Life-cycle
     * /**********************************************************
     */

    public CreatorCollector(BeanDescription beanDesc, MapperConfig<?> config) {
        int PROBE_START_LINE_80 = 80;
		com.fasterxml.jackson.databind.BeanDescription p_bean_desc_2293_line_80 = beanDesc;
		int PROBE_END_LINE_80 = 80;
		_beanDesc = p_bean_desc_2293_line_80;
        int PROBE_START_LINE_81 = 81;
		MapperConfig<?> p_config_2294_line_81 = config;
		boolean creator_collector_1_expr6_line_81 = p_config_2294_line_81.canOverrideAccessModifiers();
		int PROBE_END_LINE_81 = 81;
		_canFixAccess = creator_collector_1_expr6_line_81;
        int PROBE_START_LINE_82 = 83;
		MapperConfig<?> p_config_2294_line_82 = config;
		boolean creator_collector_1_expr8_line_82 = p_config_2294_line_82
				.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
		int PROBE_END_LINE_82 = 83;
		_forceAccess = creator_collector_1_expr8_line_82;
    }

    public ValueInstantiator constructValueInstantiator(
            DeserializationConfig config) {
        int PROBE_START_LINE_88 = 89;
				JavaType creator_collector_1_expr9_line_88 = _computeDelegateType(_creators[C_DELEGATE], _delegateArgs);
				int PROBE_END_LINE_88 = 89;
		final JavaType delegateType = creator_collector_1_expr9_line_88;
        int PROBE_START_LINE_90 = 91;
		JavaType creator_collector_1_expr11_line_90 = _computeDelegateType(_creators[C_ARRAY_DELEGATE],
				_arrayDelegateArgs);
		int PROBE_END_LINE_90 = 91;
		final JavaType arrayDelegateType = creator_collector_1_expr11_line_90;
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.databind.BeanDescription f__bean_desc_2295_line_92 = _beanDesc;
		JavaType creator_collector_1_expr13_line_92 = f__bean_desc_2295_line_92.getType();
		int PROBE_END_LINE_92 = 92;
		final JavaType type = creator_collector_1_expr13_line_92;

        int PROBE_START_LINE_97 = 98;
		AnnotatedWithParams creator_collector_1_expr14_line_97 = StdTypeConstructor.tryToOptimize(_creators[C_DEFAULT]);
		int PROBE_END_LINE_97 = 98;
		// 11-Jul-2016, tatu: Earlier optimization by replacing the whole
        // instantiator did not
        // work well, so let's replace by lower-level check:
        AnnotatedWithParams defaultCtor = creator_collector_1_expr14_line_97;

        int PROBE_START_LINE_100 = 100;
		com.fasterxml.jackson.databind.DeserializationConfig p_config_2298_line_100 = config;
		com.fasterxml.jackson.databind.JavaType v_type_2303_line_100 = type;
		int PROBE_END_LINE_100 = 100;
		StdValueInstantiator inst = new StdValueInstantiator(p_config_2298_line_100, v_type_2303_line_100);
        int PROBE_START_LINE_101 = 103;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_101 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams v_default_ctor_2304_line_101 = defaultCtor;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_101 = _creators;
		int f_c_delegate_2307_line_101 = C_DELEGATE;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr18_line_101 = f__creators_2290_line_101[f_c_delegate_2307_line_101];
		int PROBE_END_LINE_101 = 103;
		v_inst_2305_line_101.configureFromObjectSettings(v_default_ctor_2304_line_101, creator_collector_1_expr18_line_101,
                delegateType, _delegateArgs, _creators[C_PROPS],
                _propertyBasedArgs);
        int PROBE_START_LINE_104 = 105;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_104 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_104 = _creators;
		int f_c_array_delegate_2308_line_104 = C_ARRAY_DELEGATE;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr21_line_104 = f__creators_2290_line_104[f_c_array_delegate_2308_line_104];
		int PROBE_END_LINE_104 = 105;
		v_inst_2305_line_104.configureFromArraySettings(creator_collector_1_expr21_line_104,
                arrayDelegateType, _arrayDelegateArgs);
        int PROBE_START_LINE_106 = 106;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_106 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_106 = _creators;
		int f_c_string_2309_line_106 = C_STRING;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr23_line_106 = f__creators_2290_line_106[f_c_string_2309_line_106];
		int PROBE_END_LINE_106 = 106;
		v_inst_2305_line_106.configureFromStringCreator(creator_collector_1_expr23_line_106);
        int PROBE_START_LINE_107 = 107;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_107 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_107 = _creators;
		int f_c_int_2310_line_107 = C_INT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr25_line_107 = f__creators_2290_line_107[f_c_int_2310_line_107];
		int PROBE_END_LINE_107 = 107;
		v_inst_2305_line_107.configureFromIntCreator(creator_collector_1_expr25_line_107);
        int PROBE_START_LINE_108 = 108;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_108 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_108 = _creators;
		int f_c_long_2311_line_108 = C_LONG;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr27_line_108 = f__creators_2290_line_108[f_c_long_2311_line_108];
		int PROBE_END_LINE_108 = 108;
		v_inst_2305_line_108.configureFromLongCreator(creator_collector_1_expr27_line_108);
        int PROBE_START_LINE_109 = 109;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_109 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_109 = _creators;
		int f_c_double_2312_line_109 = C_DOUBLE;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr29_line_109 = f__creators_2290_line_109[f_c_double_2312_line_109];
		int PROBE_END_LINE_109 = 109;
		v_inst_2305_line_109.configureFromDoubleCreator(creator_collector_1_expr29_line_109);
        int PROBE_START_LINE_110 = 110;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_110 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_110 = _creators;
		int f_c_boolean_2313_line_110 = C_BOOLEAN;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr31_line_110 = f__creators_2290_line_110[f_c_boolean_2313_line_110];
		int PROBE_END_LINE_110 = 110;
		v_inst_2305_line_110.configureFromBooleanCreator(creator_collector_1_expr31_line_110);
        int PROBE_START_LINE_111 = 111;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_111 = inst;
		com.fasterxml.jackson.databind.introspect.AnnotatedParameter f__incomplete_parameter_2314_line_111 = _incompleteParameter;
		int PROBE_END_LINE_111 = 111;
		v_inst_2305_line_111.configureIncompleteParameter(f__incomplete_parameter_2314_line_111);
        int PROBE_START_LINE_112 = 112;
		com.fasterxml.jackson.databind.deser.std.StdValueInstantiator v_inst_2305_line_112 = inst;
		int PROBE_END_LINE_112 = 112;
		return v_inst_2305_line_112;
    }

    /*
     * /********************************************************** /* Setters
     * /**********************************************************
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
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_131 = _creators;
		int f_c_default_2316_line_131 = C_DEFAULT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2315_line_131 = creator;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr35_line_131 = _fixAccess(
				p_creator_2315_line_131);
		int PROBE_END_LINE_131 = 131;
		f__creators_2290_line_131[f_c_default_2316_line_131] = creator_collector_1_expr35_line_131;
    }

    public void addStringCreator(AnnotatedWithParams creator,
            boolean explicit) {
        verifyNonDup(creator, C_STRING, explicit);
    }

    public void addIntCreator(AnnotatedWithParams creator, boolean explicit) {
        int PROBE_START_LINE_140 = 140;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2319_line_140 = creator;
		int f_c_int_2310_line_140 = C_INT;
		boolean p_explicit_2320_line_140 = explicit;
		int PROBE_END_LINE_140 = 140;
		verifyNonDup(p_creator_2319_line_140, f_c_int_2310_line_140, p_explicit_2320_line_140);
    }

    public void addLongCreator(AnnotatedWithParams creator, boolean explicit) {
        verifyNonDup(creator, C_LONG, explicit);
    }

    public void addDoubleCreator(AnnotatedWithParams creator,
            boolean explicit) {
        verifyNonDup(creator, C_DOUBLE, explicit);
    }

    public void addBooleanCreator(AnnotatedWithParams creator,
            boolean explicit) {
        verifyNonDup(creator, C_BOOLEAN, explicit);
    }

    public void addDelegatingCreator(AnnotatedWithParams creator,
            boolean explicit, SettableBeanProperty[] injectables) {
        if (creator.getParameterType(0).isCollectionLikeType()) {
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
            boolean explicit, SettableBeanProperty[] properties) {
        if (verifyNonDup(creator, C_PROPS, explicit)) {
            // Better ensure we have no duplicate names either...
            if (properties.length > 1) {
                HashMap<String, Integer> names = new HashMap<String, Integer>();
                for (int i = 0, len = properties.length; i < len; ++i) {
                    String name = properties[i].getName();
                    // Need to consider Injectables, which may not have
                    // a name at all, and need to be skipped
                    if (name.length() == 0
                            && properties[i].getInjectableValueId() != null) {
                        continue;
                    }
                    Integer old = names.put(name, Integer.valueOf(i));
                    if (old != null) {
                        throw new IllegalArgumentException(String.format(
                                "Duplicate creator property \"%s\" (index %s vs %d)",
                                name, old, i));
                    }
                }
            }
            _propertyBasedArgs = properties;
        }
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
    public void addDelegatingCreator(AnnotatedWithParams creator,
            CreatorProperty[] injectables) {
        addDelegatingCreator(creator, false, injectables);
    }

    @Deprecated // since 2.5
    public void addPropertyCreator(AnnotatedWithParams creator,
            CreatorProperty[] properties) {
        addPropertyCreator(creator, false, properties);
    }

    /*
     * /********************************************************** /* Accessors
     * /**********************************************************
     */

    /**
     * @since 2.1
     */
    public boolean hasDefaultCreator() {
        int PROBE_START_LINE_250 = 250;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_250 = _creators;
		int f_c_default_2316_line_250 = C_DEFAULT;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr38_line_250 = f__creators_2290_line_250[f_c_default_2316_line_250];
		boolean creator_collector_1_expr37_line_250 = creator_collector_1_expr38_line_250 != null;
		int PROBE_END_LINE_250 = 250;
		return creator_collector_1_expr37_line_250;
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
     * /********************************************************** /* Helper
     * methods /**********************************************************
     */

    private JavaType _computeDelegateType(AnnotatedWithParams creator,
            SettableBeanProperty[] delegateArgs) {
        int PROBE_START_LINE_274 = 276;
				boolean f__has_non_default_creator_2292_line_274 = _hasNonDefaultCreator;
				boolean creator_collector_1_expr40_line_274 = !f__has_non_default_creator_2292_line_274;
				boolean creator_collector_1_expr41_line_274 = false;
				if (!creator_collector_1_expr40_line_274) {
					com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_creator_2343_line_274 = creator;
					boolean creator_collector_1_expr42_line_274 = p_creator_2343_line_274 == null;
					creator_collector_1_expr41_line_274 = (creator_collector_1_expr42_line_274);
				}
				boolean creator_collector_1_expr39_line_274 = creator_collector_1_expr40_line_274
						|| creator_collector_1_expr41_line_274;
				int PROBE_END_LINE_274 = 276;
		if (creator_collector_1_expr39_line_274) {
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
        return creator.getParameterType(ix);
    }

    private <T extends AnnotatedMember> T _fixAccess(T member) {
        int PROBE_START_LINE_291 = 294;
		T p_member_2345_line_291 = member;
		boolean creator_collector_1_expr44_line_291 = p_member_2345_line_291 != null;
		boolean f__can_fix_access_2296_line_291 = true;
		if (creator_collector_1_expr44_line_291) {
			f__can_fix_access_2296_line_291 = _canFixAccess;
		}
		boolean creator_collector_1_expr43_line_291 = creator_collector_1_expr44_line_291
				&& f__can_fix_access_2296_line_291;
		int PROBE_END_LINE_291 = 294;
		if (creator_collector_1_expr43_line_291) {
            int PROBE_START_LINE_292 = 293;
			T p_member_2345_line_292 = member;
			java.lang.reflect.AnnotatedElement creator_collector_1_expr47_line_292 = p_member_2345_line_292
					.getAnnotated();
			int PROBE_END_LINE_292 = 293;
			ClassUtil.checkAndFixAccess((Member) creator_collector_1_expr47_line_292,
                    _forceAccess);
        }
        int PROBE_START_LINE_295 = 295;
		T p_member_2345_line_295 = member;
		int PROBE_END_LINE_295 = 295;
		return p_member_2345_line_295;
    }

    /**
     * @return True if specified Creator is to be used
     */
    protected boolean verifyNonDup(AnnotatedWithParams newOne, int typeIndex, boolean explicit)
    {
        int PROBE_START_LINE_303 = 303;
		int p_type_index_2347_line_303 = typeIndex;
		int creator_collector_1_expr49_line_303 = 1 << p_type_index_2347_line_303;
		int creator_collector_1_expr48_line_303 = (creator_collector_1_expr49_line_303);
		int PROBE_END_LINE_303 = 303;
		final int mask = creator_collector_1_expr48_line_303;
        _hasNonDefaultCreator = true;
        int PROBE_START_LINE_305 = 305;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_305 = _creators;
		int p_type_index_2347_line_305 = typeIndex;
		AnnotatedWithParams creator_collector_1_expr51_line_305 = f__creators_2290_line_305[p_type_index_2347_line_305];
		int PROBE_END_LINE_305 = 305;
		AnnotatedWithParams oldOne = creator_collector_1_expr51_line_305;
        int PROBE_START_LINE_307 = 354;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams v_old_one_2350_line_307 = oldOne;
		boolean creator_collector_1_expr52_line_307 = v_old_one_2350_line_307 != null;
		int PROBE_END_LINE_307 = 354;
		// already had an explicitly marked one?
        if (creator_collector_1_expr52_line_307) {
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
        int PROBE_START_LINE_355 = 357;
		boolean p_explicit_2348_line_355 = explicit;
		int PROBE_END_LINE_355 = 357;
		if (p_explicit_2348_line_355) {
            _explicitCreators |= mask;
        }
        int PROBE_START_LINE_358 = 358;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams[] f__creators_2290_line_358 = _creators;
		int p_type_index_2347_line_358 = typeIndex;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_new_one_2346_line_358 = newOne;
		com.fasterxml.jackson.databind.introspect.AnnotatedWithParams creator_collector_1_expr55_line_358 = _fixAccess(
				p_new_one_2346_line_358);
		int PROBE_END_LINE_358 = 358;
		f__creators_2290_line_358[p_type_index_2347_line_358] = creator_collector_1_expr55_line_358;
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
            int PROBE_START_LINE_401 = 401;
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_base_2352_line_401 = base;
			int PROBE_END_LINE_401 = 401;
			_base = p_base_2352_line_401;
            int PROBE_START_LINE_402 = 402;
			int p_t_2353_line_402 = t;
			int PROBE_END_LINE_402 = 402;
			_type = p_t_2353_line_402;
        }

        public static AnnotatedWithParams tryToOptimize(
                AnnotatedWithParams src) {
            int PROBE_START_LINE_407 = 418;
					com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2356_line_407 = src;
					boolean creator_collector_1_expr59_line_407 = p_src_2356_line_407 != null;
					int PROBE_END_LINE_407 = 418;
			if (creator_collector_1_expr59_line_407) {
                int PROBE_START_LINE_408 = 408;
				com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2356_line_408 = src;
				Class<?> creator_collector_1_expr60_line_408 = p_src_2356_line_408.getDeclaringClass();
				int PROBE_END_LINE_408 = 408;
				final Class<?> rawType = creator_collector_1_expr60_line_408;
                int PROBE_START_LINE_409 = 411;
				Class<?> v_raw_type_2357_line_409 = rawType;
				boolean creator_collector_1_expr62_line_409 = v_raw_type_2357_line_409 == List.class;
				boolean creator_collector_1_expr64_line_409 = false;
				if (!creator_collector_1_expr62_line_409) {
					Class<?> v_raw_type_2357_line_409_v1 = rawType;
					creator_collector_1_expr64_line_409 = v_raw_type_2357_line_409_v1 == ArrayList.class;
				}
				boolean creator_collector_1_expr61_line_409 = creator_collector_1_expr62_line_409
						|| creator_collector_1_expr64_line_409;
				int PROBE_END_LINE_409 = 411;
				if (creator_collector_1_expr61_line_409) {
                    int PROBE_START_LINE_410 = 410;
					com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2356_line_410 = src;
					int f_type_array_list_2358_line_410 = TYPE_ARRAY_LIST;
					int PROBE_END_LINE_410 = 410;
					return new StdTypeConstructor(p_src_2356_line_410, f_type_array_list_2358_line_410);
                }
                int PROBE_START_LINE_412 = 414;
				Class<?> v_raw_type_2357_line_412 = rawType;
				boolean creator_collector_1_expr67_line_412 = v_raw_type_2357_line_412 == LinkedHashMap.class;
				int PROBE_END_LINE_412 = 414;
				if (creator_collector_1_expr67_line_412) {
                    return new StdTypeConstructor(src, TYPE_LINKED_HASH_MAP);
                }
                int PROBE_START_LINE_415 = 417;
				Class<?> v_raw_type_2357_line_415 = rawType;
				boolean creator_collector_1_expr69_line_415 = v_raw_type_2357_line_415 == HashMap.class;
				int PROBE_END_LINE_415 = 417;
				if (creator_collector_1_expr69_line_415) {
                    return new StdTypeConstructor(src, TYPE_HASH_MAP);
                }
            }
            int PROBE_START_LINE_419 = 419;
			com.fasterxml.jackson.databind.introspect.AnnotatedWithParams p_src_2356_line_419 = src;
			int PROBE_END_LINE_419 = 419;
			return p_src_2356_line_419;
        }

        protected final Object _construct() {
            switch (_type) {
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
            return _construct();
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
