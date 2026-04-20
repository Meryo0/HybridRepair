package com.fasterxml.jackson.databind.type;

import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.LinkedHashMap;
import java.util.List;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
import java.util.Map;
import java.util.AbstractList;
import java.util.HashMap;
import java.util.ArrayList;

/**
 * Helper class used for resolving type parameters for given class
 */
public class TypeBindings
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    private final static String[] NO_STRINGS = new String[0];

    private final static JavaType[] NO_TYPES = new JavaType[0];

    int PROBE_START_LINE_21 = 21;

	private static final String[] f_no_strings_5556_line_21 = NO_STRINGS;

	private static final com.fasterxml.jackson.databind.JavaType[] f_no_types_5557_line_21 = NO_TYPES;

	int PROBE_END_LINE_21 = 21;

	private final static TypeBindings EMPTY = new TypeBindings(f_no_strings_5556_line_21, f_no_types_5557_line_21, null);

    // // // Pre-resolved instances for minor optimizations

    // // // Actual member information
    
    /**
     * Array of type (type variable) names.
     */
    private final String[] _names;

    /**
     * Types matching names
     */
    private final JavaType[] _types;

    /**
     * Names of potentially unresolved type variables.
     *
     * @since 2.3
     */
    private final String[] _unboundVariables;
    
    private final int _hashCode;
    
    /*
    /**********************************************************************
    /* Construction
    /**********************************************************************
     */
    
    private TypeBindings(String[] names, JavaType[] types, String[] uvars)
    {
        int PROBE_START_LINE_54 = 54;
		String[] p_names_5559_line_54 = names;
		boolean type_bindings_1_expr7_line_54 = p_names_5559_line_54 == null;
		boolean type_bindings_1_expr6_line_54 = (type_bindings_1_expr7_line_54);
		String[] f_no_strings_5556_line_54 = null;
		String[] p_names_5559_line_54_v1 = null;
		if (type_bindings_1_expr6_line_54) {
			f_no_strings_5556_line_54 = NO_STRINGS;
		} else {
			p_names_5559_line_54_v1 = names;
		}
		String[] type_bindings_1_expr5_line_54 = type_bindings_1_expr6_line_54
				? f_no_strings_5556_line_54
				: p_names_5559_line_54_v1;
		int PROBE_END_LINE_54 = 54;
		_names = type_bindings_1_expr5_line_54;
        int PROBE_START_LINE_55 = 55;
		com.fasterxml.jackson.databind.JavaType[] p_types_5560_line_55 = types;
		boolean type_bindings_1_expr11_line_55 = p_types_5560_line_55 == null;
		boolean type_bindings_1_expr10_line_55 = (type_bindings_1_expr11_line_55);
		com.fasterxml.jackson.databind.JavaType[] f_no_types_5557_line_55 = null;
		com.fasterxml.jackson.databind.JavaType[] p_types_5560_line_55_v1 = null;
		if (type_bindings_1_expr10_line_55) {
			f_no_types_5557_line_55 = NO_TYPES;
		} else {
			p_types_5560_line_55_v1 = types;
		}
		com.fasterxml.jackson.databind.JavaType[] type_bindings_1_expr9_line_55 = type_bindings_1_expr10_line_55
				? f_no_types_5557_line_55
				: p_types_5560_line_55_v1;
		int PROBE_END_LINE_55 = 55;
		_types = type_bindings_1_expr9_line_55;
        int PROBE_START_LINE_56 = 58;
		String[] f__names_5562_line_56 = _names;
		int q_length_185_line_56 = f__names_5562_line_56.length;
		com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_56 = _types;
		int q_length_186_line_56 = f__types_5563_line_56.length;
		boolean type_bindings_1_expr12_line_56 = q_length_185_line_56 != q_length_186_line_56;
		int PROBE_END_LINE_56 = 58;
		if (type_bindings_1_expr12_line_56) {
            throw new IllegalArgumentException("Mismatching names ("+_names.length+"), types ("+_types.length+")");
        }
        int h = 1;
        int PROBE_START_LINE_59 = 59;
		boolean FOR_STMT_TOGGLE_LINE_60 = false;
		int PROBE_END_LINE_59 = 59;
		for (int i = 0, len = 0; true;) {
            int PROBE_START_LINE_61 = 61;
			if (!FOR_STMT_TOGGLE_LINE_60) {
				FOR_STMT_TOGGLE_LINE_60 = true;
				i = 0;
				com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_60 = _types;
				int q_length_187_line_60 = f__types_5563_line_60.length;
				len = q_length_187_line_60;
			} else {
				if (FOR_STMT_TOGGLE_LINE_60) {
					++i;
				} else {
					FOR_STMT_TOGGLE_LINE_60 = true;
				}
			}
			int v_i_5565_line_60 = i;
			int v_len_5566_line_60 = len;
			boolean type_bindings_1_expr14_line_60 = v_i_5565_line_60 < v_len_5566_line_60;
			if (!(type_bindings_1_expr14_line_60)) {
				break;
			}
			com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_61 = _types;
			int v_i_5565_line_61 = i;
			com.fasterxml.jackson.databind.JavaType type_bindings_1_expr18_line_61 = f__types_5563_line_61[v_i_5565_line_61];
			int type_bindings_1_expr17_line_61 = type_bindings_1_expr18_line_61.hashCode();
			int PROBE_END_LINE_61 = 61;
			h += type_bindings_1_expr17_line_61;
        }
        int PROBE_START_LINE_63 = 63;
		String[] p_uvars_5561_line_63 = uvars;
		int PROBE_END_LINE_63 = 63;
		_unboundVariables = p_uvars_5561_line_63;
        int PROBE_START_LINE_64 = 64;
		int v_h_5564_line_64 = h;
		int PROBE_END_LINE_64 = 64;
		_hashCode = v_h_5564_line_64;
    }

    public static TypeBindings emptyBindings() {
        int PROBE_START_LINE_68 = 68;
		com.fasterxml.jackson.databind.type.TypeBindings f_empty_5558_line_68 = EMPTY;
		int PROBE_END_LINE_68 = 68;
		return f_empty_5558_line_68;
    }

    // Let's just canonicalize serialized EMPTY back to static instance, if need be
    protected Object readResolve() {
        if ((_names == null) || (_names.length == 0)) {
            return EMPTY;
        }
        return this;
    }

    /**
     * Factory method for constructing bindings for given class using specified type
     * parameters.
     */
    public static TypeBindings create(Class<?> erasedType, List<JavaType> typeList)
    {
        JavaType[] types = (typeList == null || typeList.isEmpty()) ?
                NO_TYPES : typeList.toArray(new JavaType[typeList.size()]);
        return create(erasedType, types);
    }

    public static TypeBindings create(Class<?> erasedType, JavaType[] types)
    {
        int PROBE_START_LINE_92 = 99;
		com.fasterxml.jackson.databind.JavaType[] p_types_5572_line_92 = types;
		boolean type_bindings_1_expr21_line_92 = p_types_5572_line_92 == null;
		int PROBE_END_LINE_92 = 99;
		if (type_bindings_1_expr21_line_92) {
            types = NO_TYPES;
        } else {
			int PROBE_START_LINE_94 = 99;
			com.fasterxml.jackson.databind.JavaType[] p_types_5572_line_94 = types;
			int q_length_187_line_94 = p_types_5572_line_94.length;
			int PROBE_END_LINE_94 = 99;
			switch (q_length_187_line_94) {
				case 1 :
					int PROBE_START_LINE_96 = 96;
					Class<?> p_erased_type_5571_line_96 = erasedType;
					com.fasterxml.jackson.databind.JavaType[] p_types_5572_line_96 = types;
					com.fasterxml.jackson.databind.JavaType type_bindings_1_expr23_line_96 = p_types_5572_line_96[0];
					com.fasterxml.jackson.databind.type.TypeBindings type_bindings_1_expr22_line_96 = create(
							p_erased_type_5571_line_96, type_bindings_1_expr23_line_96);
					int PROBE_END_LINE_96 = 96;
					return type_bindings_1_expr22_line_96;
				case 2 :
					int PROBE_START_LINE_98 = 98;
					Class<?> p_erased_type_5571_line_98 = erasedType;
					com.fasterxml.jackson.databind.JavaType[] p_types_5572_line_98 = types;
					com.fasterxml.jackson.databind.JavaType type_bindings_1_expr25_line_98 = p_types_5572_line_98[0];
					com.fasterxml.jackson.databind.JavaType[] p_types_5572_line_98_v1 = types;
					com.fasterxml.jackson.databind.JavaType type_bindings_1_expr26_line_98 = p_types_5572_line_98_v1[1];
					com.fasterxml.jackson.databind.type.TypeBindings type_bindings_1_expr24_line_98 = create(
							p_erased_type_5571_line_98, type_bindings_1_expr25_line_98, type_bindings_1_expr26_line_98);
					int PROBE_END_LINE_98 = 98;
					return type_bindings_1_expr24_line_98;
			}
		}
        TypeVariable<?>[] vars = erasedType.getTypeParameters();
        String[] names;
        if (vars == null || vars.length == 0) {
            names = NO_STRINGS;
        } else {
            int len = vars.length;
            names = new String[len];
            for (int i = 0; i < len; ++i) {
                names[i] = vars[i].getName();
            }
        }
        // Check here to give better error message
        if (names.length != types.length) {
            throw new IllegalArgumentException("Cannot create TypeBindings for class "+erasedType.getName()
                   +" with "+types.length+" type parameter"
                   +((types.length == 1) ? "" : "s")+": class expects "+names.length);
        }
        return new TypeBindings(names, types, null);
    }

    public static TypeBindings create(Class<?> erasedType, JavaType typeArg1)
    {
        int PROBE_START_LINE_123 = 123;
		Class<?> p_erased_type_5573_line_123 = erasedType;
		TypeVariable<?>[] type_bindings_1_expr27_line_123 = TypeParamStash.paramsFor1(p_erased_type_5573_line_123);
		int PROBE_END_LINE_123 = 123;
		// 30-Oct-2015, tatu: Minor optimization for relatively common cases
        TypeVariable<?>[] vars = type_bindings_1_expr27_line_123;
        int PROBE_START_LINE_124 = 124;
		TypeVariable<?>[] v_vars_5575_line_124 = vars;
		boolean type_bindings_1_expr30_line_124 = v_vars_5575_line_124 == null;
		boolean type_bindings_1_expr29_line_124 = (type_bindings_1_expr30_line_124);
		int q_length_188_line_124 = 0;
		if (!type_bindings_1_expr29_line_124) {
			TypeVariable<?>[] v_vars_5575_line_124_v1 = vars;
			q_length_188_line_124 = v_vars_5575_line_124_v1.length;
		}
		int type_bindings_1_expr28_line_124 = type_bindings_1_expr29_line_124 ? 0 : q_length_188_line_124;
		int PROBE_END_LINE_124 = 124;
		int varLen = type_bindings_1_expr28_line_124;
        int PROBE_START_LINE_125 = 128;
		int v_var_len_5576_line_125 = varLen;
		boolean type_bindings_1_expr31_line_125 = v_var_len_5576_line_125 != 1;
		int PROBE_END_LINE_125 = 128;
		if (type_bindings_1_expr31_line_125) {
            throw new IllegalArgumentException("Cannot create TypeBindings for class "+erasedType.getName()
                    +" with 1 type parameter: class expects "+varLen);
        }
        int PROBE_START_LINE_129 = 130;
		TypeVariable<?>[] v_vars_5575_line_129 = vars;
		TypeVariable<?> type_bindings_1_expr37_line_129 = v_vars_5575_line_129[0];
		String type_bindings_1_expr36_line_129 = type_bindings_1_expr37_line_129.getName();
		int PROBE_END_LINE_129 = 130;
		return new TypeBindings(new String[] { type_bindings_1_expr36_line_129 },
                new JavaType[] { typeArg1 }, null);
    }

    public static TypeBindings create(Class<?> erasedType, JavaType typeArg1, JavaType typeArg2)
    {
        int PROBE_START_LINE_136 = 136;
		Class<?> p_erased_type_5577_line_136 = erasedType;
		TypeVariable<?>[] type_bindings_1_expr38_line_136 = TypeParamStash.paramsFor2(p_erased_type_5577_line_136);
		int PROBE_END_LINE_136 = 136;
		// 30-Oct-2015, tatu: Minor optimization for relatively common cases
        TypeVariable<?>[] vars = type_bindings_1_expr38_line_136;
        int PROBE_START_LINE_137 = 137;
		TypeVariable<?>[] v_vars_5580_line_137 = vars;
		boolean type_bindings_1_expr41_line_137 = v_vars_5580_line_137 == null;
		boolean type_bindings_1_expr40_line_137 = (type_bindings_1_expr41_line_137);
		int q_length_189_line_137 = 0;
		if (!type_bindings_1_expr40_line_137) {
			TypeVariable<?>[] v_vars_5580_line_137_v1 = vars;
			q_length_189_line_137 = v_vars_5580_line_137_v1.length;
		}
		int type_bindings_1_expr39_line_137 = type_bindings_1_expr40_line_137 ? 0 : q_length_189_line_137;
		int PROBE_END_LINE_137 = 137;
		int varLen = type_bindings_1_expr39_line_137;
        int PROBE_START_LINE_138 = 141;
		int v_var_len_5581_line_138 = varLen;
		boolean type_bindings_1_expr42_line_138 = v_var_len_5581_line_138 != 2;
		int PROBE_END_LINE_138 = 141;
		if (type_bindings_1_expr42_line_138) {
            throw new IllegalArgumentException("Cannot create TypeBindings for class "+erasedType.getName()
                    +" with 2 type parameters: class expects "+varLen);
        }
        int PROBE_START_LINE_142 = 143;
		TypeVariable<?>[] v_vars_5580_line_142 = vars;
		TypeVariable<?> type_bindings_1_expr48_line_142 = v_vars_5580_line_142[0];
		String type_bindings_1_expr47_line_142 = type_bindings_1_expr48_line_142.getName();
		TypeVariable<?>[] v_vars_5580_line_142_v1 = vars;
		TypeVariable<?> type_bindings_1_expr50_line_142 = v_vars_5580_line_142_v1[1];
		String type_bindings_1_expr49_line_142 = type_bindings_1_expr50_line_142.getName();
		int PROBE_END_LINE_142 = 143;
		return new TypeBindings(new String[] { type_bindings_1_expr47_line_142, type_bindings_1_expr49_line_142 },
                new JavaType[] { typeArg1, typeArg2 }, null);
    }
    
    /**
     * Alternate factory method that may be called if it is possible that type
     * does or does not require type parameters; this is mostly useful for
     * collection- and map-like types.
     */
    public static TypeBindings createIfNeeded(Class<?> erasedType, JavaType typeArg1)
    {
        int PROBE_START_LINE_153 = 153;
		Class<?> p_erased_type_5582_line_153 = erasedType;
		TypeVariable<?>[] type_bindings_1_expr51_line_153 = p_erased_type_5582_line_153.getTypeParameters();
		int PROBE_END_LINE_153 = 153;
		TypeVariable<?>[] vars = type_bindings_1_expr51_line_153;
        int PROBE_START_LINE_154 = 154;
		TypeVariable<?>[] v_vars_5584_line_154 = vars;
		boolean type_bindings_1_expr54_line_154 = v_vars_5584_line_154 == null;
		boolean type_bindings_1_expr53_line_154 = (type_bindings_1_expr54_line_154);
		int q_length_190_line_154 = 0;
		if (!type_bindings_1_expr53_line_154) {
			TypeVariable<?>[] v_vars_5584_line_154_v1 = vars;
			q_length_190_line_154 = v_vars_5584_line_154_v1.length;
		}
		int type_bindings_1_expr52_line_154 = type_bindings_1_expr53_line_154 ? 0 : q_length_190_line_154;
		int PROBE_END_LINE_154 = 154;
		int varLen = type_bindings_1_expr52_line_154;
        int PROBE_START_LINE_155 = 157;
		int v_var_len_5585_line_155 = varLen;
		boolean type_bindings_1_expr55_line_155 = v_var_len_5585_line_155 == 0;
		int PROBE_END_LINE_155 = 157;
		if (type_bindings_1_expr55_line_155) {
            return EMPTY;
        }
        int PROBE_START_LINE_158 = 161;
		int v_var_len_5585_line_158 = varLen;
		boolean type_bindings_1_expr56_line_158 = v_var_len_5585_line_158 != 1;
		int PROBE_END_LINE_158 = 161;
		if (type_bindings_1_expr56_line_158) {
            throw new IllegalArgumentException("Cannot create TypeBindings for class "+erasedType.getName()
                    +" with 1 type parameter: class expects "+varLen);
        }
        int PROBE_START_LINE_162 = 163;
		TypeVariable<?>[] v_vars_5584_line_162 = vars;
		TypeVariable<?> type_bindings_1_expr62_line_162 = v_vars_5584_line_162[0];
		String type_bindings_1_expr61_line_162 = type_bindings_1_expr62_line_162.getName();
		int PROBE_END_LINE_162 = 163;
		return new TypeBindings(new String[] { type_bindings_1_expr61_line_162 },
                new JavaType[] { typeArg1 }, null);
    }
    
    /**
     * Alternate factory method that may be called if it is possible that type
     * does or does not require type parameters; this is mostly useful for
     * collection- and map-like types.
     */
    public static TypeBindings createIfNeeded(Class<?> erasedType, JavaType[] types)
    {
        int PROBE_START_LINE_173 = 173;
		Class<?> p_erased_type_5586_line_173 = erasedType;
		TypeVariable<?>[] type_bindings_1_expr63_line_173 = p_erased_type_5586_line_173.getTypeParameters();
		int PROBE_END_LINE_173 = 173;
		TypeVariable<?>[] vars = type_bindings_1_expr63_line_173;
        int PROBE_START_LINE_174 = 176;
		TypeVariable<?>[] v_vars_5588_line_174 = vars;
		boolean type_bindings_1_expr65_line_174 = v_vars_5588_line_174 == null;
		boolean type_bindings_1_expr66_line_174 = false;
		if (!type_bindings_1_expr65_line_174) {
			TypeVariable<?>[] v_vars_5588_line_174_v1 = vars;
			int q_length_191_line_174 = v_vars_5588_line_174_v1.length;
			type_bindings_1_expr66_line_174 = q_length_191_line_174 == 0;
		}
		boolean type_bindings_1_expr64_line_174 = type_bindings_1_expr65_line_174 || type_bindings_1_expr66_line_174;
		int PROBE_END_LINE_174 = 176;
		if (type_bindings_1_expr64_line_174) {
            return EMPTY;
        }
        int PROBE_START_LINE_177 = 179;
		com.fasterxml.jackson.databind.JavaType[] p_types_5587_line_177 = types;
		boolean type_bindings_1_expr67_line_177 = p_types_5587_line_177 == null;
		int PROBE_END_LINE_177 = 179;
		if (type_bindings_1_expr67_line_177) {
            types = NO_TYPES;
        }
        int PROBE_START_LINE_180 = 180;
		TypeVariable<?>[] v_vars_5588_line_180 = vars;
		int q_length_192_line_180 = v_vars_5588_line_180.length;
		int PROBE_END_LINE_180 = 180;
		int len = q_length_192_line_180;
        int PROBE_START_LINE_181 = 181;
		int v_len_5589_line_181 = len;
		int PROBE_END_LINE_181 = 181;
		String[] names = new String[v_len_5589_line_181];
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_183 = 183;
			int v_i_5591_line_182 = i;
			int v_len_5589_line_182 = len;
			boolean type_bindings_1_expr70_line_182 = v_i_5591_line_182 < v_len_5589_line_182;
			if (!(type_bindings_1_expr70_line_182)) {
				break;
			}
			String[] v_names_5590_line_183 = names;
			int v_i_5591_line_183 = i;
			TypeVariable<?>[] v_vars_5588_line_183 = vars;
			int v_i_5591_line_183_v1 = i;
			TypeVariable<?> type_bindings_1_expr75_line_183 = v_vars_5588_line_183[v_i_5591_line_183_v1];
			String type_bindings_1_expr74_line_183 = type_bindings_1_expr75_line_183.getName();
			int PROBE_END_LINE_183 = 183;
			v_names_5590_line_183[v_i_5591_line_183] = type_bindings_1_expr74_line_183;
        }
        int PROBE_START_LINE_186 = 190;
		String[] v_names_5590_line_186 = names;
		int q_length_192_line_186 = v_names_5590_line_186.length;
		com.fasterxml.jackson.databind.JavaType[] p_types_5587_line_186 = types;
		int q_length_193_line_186 = p_types_5587_line_186.length;
		boolean type_bindings_1_expr76_line_186 = q_length_192_line_186 != q_length_193_line_186;
		int PROBE_END_LINE_186 = 190;
		// Check here to give better error message
        if (type_bindings_1_expr76_line_186) {
            throw new IllegalArgumentException("Cannot create TypeBindings for class "+erasedType.getName()
                   +" with "+types.length+" type parameter"
                   +((types.length == 1) ? "" : "s")+": class expects "+names.length);
        }
        int PROBE_START_LINE_191 = 191;
		String[] v_names_5590_line_191 = names;
		com.fasterxml.jackson.databind.JavaType[] p_types_5587_line_191 = types;
		int PROBE_END_LINE_191 = 191;
		return new TypeBindings(v_names_5590_line_191, p_types_5587_line_191, null);
    }
    
    /**
     * Method for creating an instance that has same bindings as this object,
     * plus an indicator for additional type variable that may be unbound within
     * this context; this is needed to resolve recursive self-references.
     */
    public TypeBindings withUnboundVariable(String name)
    {
        int PROBE_START_LINE_201 = 201;
		String[] f__unbound_variables_5567_line_201 = _unboundVariables;
		boolean type_bindings_1_expr80_line_201 = f__unbound_variables_5567_line_201 == null;
		boolean type_bindings_1_expr79_line_201 = (type_bindings_1_expr80_line_201);
		int q_length_194_line_201 = 0;
		if (!type_bindings_1_expr79_line_201) {
			String[] f__unbound_variables_5567_line_201_v1 = _unboundVariables;
			q_length_194_line_201 = f__unbound_variables_5567_line_201_v1.length;
		}
		int type_bindings_1_expr78_line_201 = type_bindings_1_expr79_line_201 ? 0 : q_length_194_line_201;
		int PROBE_END_LINE_201 = 201;
		int len = type_bindings_1_expr78_line_201;
        int PROBE_START_LINE_202 = 203;
		int v_len_5593_line_202 = len;
		boolean type_bindings_1_expr85_line_202 = v_len_5593_line_202 == 0;
		boolean type_bindings_1_expr82_line_202 = (type_bindings_1_expr85_line_202);
		String[] type_bindings_1_expr81_line_202 = type_bindings_1_expr82_line_202
				? new String[1]
				: Arrays.copyOf(_unboundVariables, len + 1);
		int PROBE_END_LINE_202 = 203;
		String[] names =  type_bindings_1_expr81_line_202;
        int PROBE_START_LINE_204 = 204;
		String[] v_names_5594_line_204 = names;
		int v_len_5593_line_204 = len;
		String p_name_5592_line_204 = name;
		int PROBE_END_LINE_204 = 204;
		v_names_5594_line_204[v_len_5593_line_204] = p_name_5592_line_204;
        int PROBE_START_LINE_205 = 205;
		String[] f__names_5562_line_205 = _names;
		com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_205 = _types;
		String[] v_names_5594_line_205 = names;
		int PROBE_END_LINE_205 = 205;
		return new TypeBindings(f__names_5562_line_205, f__types_5563_line_205, v_names_5594_line_205);
    }

    /*
    /**********************************************************************
    /* Accessors
    /**********************************************************************
     */

    /**
     * Find type bound to specified name, if there is one; returns bound type if so, null if not.
     */
    public JavaType findBoundType(String name)
    {
        int PROBE_START_LINE_218 = 218;
		boolean FOR_STMT_TOGGLE_LINE_219 = false;
		int PROBE_END_LINE_218 = 218;
		for (int i = 0, len = 0; true;) {
            int PROBE_START_LINE_220 = 240;
			if (!FOR_STMT_TOGGLE_LINE_219) {
				FOR_STMT_TOGGLE_LINE_219 = true;
				i = 0;
				String[] f__names_5562_line_219 = _names;
				int q_length_195_line_219 = f__names_5562_line_219.length;
				len = q_length_195_line_219;
			} else {
				if (FOR_STMT_TOGGLE_LINE_219) {
					++i;
				} else {
					FOR_STMT_TOGGLE_LINE_219 = true;
				}
			}
			int v_i_5596_line_219 = i;
			int v_len_5597_line_219 = len;
			boolean type_bindings_1_expr90_line_219 = v_i_5596_line_219 < v_len_5597_line_219;
			if (!(type_bindings_1_expr90_line_219)) {
				break;
			}
			String p_name_5595_line_220 = name;
			String[] f__names_5562_line_220 = _names;
			int v_i_5596_line_220 = i;
			String type_bindings_1_expr93_line_220 = f__names_5562_line_220[v_i_5596_line_220];
			boolean type_bindings_1_expr92_line_220 = p_name_5595_line_220.equals(type_bindings_1_expr93_line_220);
			int PROBE_END_LINE_220 = 240;
			if (type_bindings_1_expr92_line_220) {
                int PROBE_START_LINE_221 = 221;
				com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_221 = _types;
				int v_i_5596_line_221 = i;
				JavaType type_bindings_1_expr94_line_221 = f__types_5563_line_221[v_i_5596_line_221];
				int PROBE_END_LINE_221 = 221;
				JavaType t = type_bindings_1_expr94_line_221;
                int PROBE_START_LINE_222 = 238;
				com.fasterxml.jackson.databind.JavaType v_t_5598_line_222 = t;
				boolean type_bindings_1_expr95_line_222 = v_t_5598_line_222 instanceof ResolvedRecursiveType;
				int PROBE_END_LINE_222 = 238;
				if (type_bindings_1_expr95_line_222) {
                    ResolvedRecursiveType rrt = (ResolvedRecursiveType) t;
                    JavaType t2 = rrt.getSelfReferencedType();
                    if (t2 != null) {
                        t = t2;
                    } else {
                        /* 25-Feb-2016, tatu: Looks like a potential problem, but alas
                         *   we have a test where this should NOT fail and things... seem
                         *   to work. So be it.
                         */
/*
                        throw new IllegalStateException(String.format
("Unresolved ResolvedRecursiveType for parameter '%s' (index #%d; erased type %s)",
name, i, t.getRawClass()));
*/
                    }
                }
                int PROBE_START_LINE_239 = 239;
				com.fasterxml.jackson.databind.JavaType v_t_5598_line_239 = t;
				int PROBE_END_LINE_239 = 239;
				return v_t_5598_line_239;
            }
        }
        return null;
    }

    public boolean isEmpty() {
        int PROBE_START_LINE_246 = 246;
		com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_246 = _types;
		int q_length_195_line_246 = f__types_5563_line_246.length;
		boolean type_bindings_1_expr97_line_246 = q_length_195_line_246 == 0;
		boolean type_bindings_1_expr96_line_246 = (type_bindings_1_expr97_line_246);
		int PROBE_END_LINE_246 = 246;
		return type_bindings_1_expr96_line_246;
    }
    
    /**
     * Returns number of bindings contained
     */
    public int size() { 
        int PROBE_START_LINE_253 = 253;
		com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_253 = _types;
		int q_length_195_line_253 = f__types_5563_line_253.length;
		int PROBE_END_LINE_253 = 253;
		return q_length_195_line_253;
    }

    public String getBoundName(int index)
    {
        if (index < 0 || index >= _names.length) {
            return null;
        }
        return _names[index];
    }

    public JavaType getBoundType(int index)
    {
        if (index < 0 || index >= _types.length) {
            return null;
        }
        return _types[index];
    }

    /**
     * Accessor for getting bound types in declaration order
     */
    public List<JavaType> getTypeParameters()
    {
        int PROBE_START_LINE_277 = 279;
		com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_277 = _types;
		int q_length_195_line_277 = f__types_5563_line_277.length;
		boolean type_bindings_1_expr98_line_277 = q_length_195_line_277 == 0;
		int PROBE_END_LINE_277 = 279;
		if (type_bindings_1_expr98_line_277) {
            int PROBE_START_LINE_278 = 278;
			List<com.fasterxml.jackson.databind.JavaType> type_bindings_1_expr99_line_278 = Collections.emptyList();
			int PROBE_END_LINE_278 = 278;
			return type_bindings_1_expr99_line_278;
        }
        int PROBE_START_LINE_280 = 280;
		com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_280 = _types;
		List<com.fasterxml.jackson.databind.JavaType> type_bindings_1_expr100_line_280 = Arrays
				.asList(f__types_5563_line_280);
		int PROBE_END_LINE_280 = 280;
		return type_bindings_1_expr100_line_280;
    }

    /**
     * @since 2.3
     */
    public boolean hasUnbound(String name) {
        int PROBE_START_LINE_287 = 293;
		String[] f__unbound_variables_5567_line_287 = _unboundVariables;
		boolean type_bindings_1_expr101_line_287 = f__unbound_variables_5567_line_287 != null;
		int PROBE_END_LINE_287 = 293;
		if (type_bindings_1_expr101_line_287) {
            for (int i = _unboundVariables.length; --i >= 0; ) {
                if (name.equals(_unboundVariables[i])) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * Factory method that will create an object that can be used as a key for
     * caching purposes by {@link TypeFactory}
     *
     * @since 2.8
     */
    public Object asKey(Class<?> rawBase) {
        int PROBE_START_LINE_306 = 306;
		Class<?> p_raw_base_5602_line_306 = rawBase;
		com.fasterxml.jackson.databind.JavaType[] f__types_5563_line_306 = _types;
		int f__hash_code_5568_line_306 = _hashCode;
		int PROBE_END_LINE_306 = 306;
		// safe to pass _types array without copy since it is not exposed via
        // any access, nor modified by this class
        return new AsKey(p_raw_base_5602_line_306, f__types_5563_line_306, f__hash_code_5568_line_306);
    }

    /*
    /**********************************************************************
    /* Standard methods
    /**********************************************************************
     */
    
    @Override public String toString()
    {
        if (_types.length == 0) {
            return "<>";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('<');
        for (int i = 0, len = _types.length; i < len; ++i) {
            if (i > 0) {
                sb.append(',');
            }
//            sb = _types[i].appendBriefDescription(sb);
            String sig = _types[i].getGenericSignature();
            sb.append(sig);
        }
        sb.append('>');
        return sb.toString();
    }

    @Override public int hashCode() { return _hashCode; }

    @Override public boolean equals(Object o)
    {
        int PROBE_START_LINE_338 = 338;
		Object p_o_5603_line_338 = o;
		boolean type_bindings_1_expr103_line_338 = p_o_5603_line_338 == this;
		int PROBE_END_LINE_338 = 338;
		if (type_bindings_1_expr103_line_338) return true;
        if (!ClassUtil.hasClass(o, getClass())) {
            return false;
        }
        TypeBindings other = (TypeBindings) o;
        int len = _types.length;
        if (len != other.size()) {
            return false;
        }
        JavaType[] otherTypes = other._types;
        for (int i = 0; i < len; ++i) {
            if (!otherTypes[i].equals(_types[i])) {
                return false;
            }
        }
        return true;
    }

    /*
    /**********************************************************************
    /* Package accessible methods
    /**********************************************************************
     */

    protected JavaType[] typeParameterArray() {
        return _types;
    }

    /*
    /**********************************************************************
    /* Helper classes
    /**********************************************************************
     */

    // 30-Oct-2015, tatu: Surprising, but looks like type parameters access can be bit of
    //    a hot spot. So avoid for a small number of common generic types. Note that we do
    //    need both common abstract types and concrete ones; latter for specialization

    /**
     * Helper class that contains simple logic for avoiding repeated lookups via
     * {@link Class#getTypeParameters()} as that can be a performance issue for
     * some use cases (wasteful, usually one-off or not reusing mapper).
     * Partly isolated to avoid initialization for cases where no generic types are
     * used.
     */
    static class TypeParamStash {
        int PROBE_START_LINE_384 = 384;

		private static final TypeVariable<Class<java.util.AbstractList>>[] type_bindings_1_expr105_line_384 = AbstractList.class
				.getTypeParameters();

		int PROBE_END_LINE_384 = 384;

		private final static TypeVariable<?>[] VARS_ABSTRACT_LIST = type_bindings_1_expr105_line_384;
        int PROBE_START_LINE_385 = 385;

		private static final TypeVariable<Class<java.util.Collection>>[] type_bindings_1_expr107_line_385 = Collection.class
				.getTypeParameters();

		int PROBE_END_LINE_385 = 385;

		private final static TypeVariable<?>[] VARS_COLLECTION = type_bindings_1_expr107_line_385;
        int PROBE_START_LINE_386 = 386;

		private static final TypeVariable<Class<Iterable>>[] type_bindings_1_expr109_line_386 = Iterable.class
				.getTypeParameters();

		int PROBE_END_LINE_386 = 386;

		private final static TypeVariable<?>[] VARS_ITERABLE = type_bindings_1_expr109_line_386;
        int PROBE_START_LINE_387 = 387;

		private static final TypeVariable<Class<java.util.List>>[] type_bindings_1_expr111_line_387 = List.class
				.getTypeParameters();

		int PROBE_END_LINE_387 = 387;

		private final static TypeVariable<?>[] VARS_LIST = type_bindings_1_expr111_line_387;
        int PROBE_START_LINE_388 = 388;

		private static final TypeVariable<Class<java.util.ArrayList>>[] type_bindings_1_expr113_line_388 = ArrayList.class
				.getTypeParameters();

		int PROBE_END_LINE_388 = 388;

		private final static TypeVariable<?>[] VARS_ARRAY_LIST = type_bindings_1_expr113_line_388;

        int PROBE_START_LINE_390 = 390;

		private static final TypeVariable<Class<java.util.Map>>[] type_bindings_1_expr115_line_390 = Map.class
				.getTypeParameters();

		int PROBE_END_LINE_390 = 390;

		private final static TypeVariable<?>[] VARS_MAP = type_bindings_1_expr115_line_390;
        int PROBE_START_LINE_391 = 391;

		private static final TypeVariable<Class<java.util.HashMap>>[] type_bindings_1_expr117_line_391 = HashMap.class
				.getTypeParameters();

		int PROBE_END_LINE_391 = 391;

		private final static TypeVariable<?>[] VARS_HASH_MAP = type_bindings_1_expr117_line_391;
        int PROBE_START_LINE_392 = 392;

		private static final TypeVariable<Class<java.util.LinkedHashMap>>[] type_bindings_1_expr119_line_392 = LinkedHashMap.class
				.getTypeParameters();

		int PROBE_END_LINE_392 = 392;

		private final static TypeVariable<?>[] VARS_LINKED_HASH_MAP = type_bindings_1_expr119_line_392;

        public static TypeVariable<?>[] paramsFor1(Class<?> erasedType)
        {
            int PROBE_START_LINE_396 = 398;
			Class<?> p_erased_type_5612_line_396 = erasedType;
			boolean type_bindings_1_expr121_line_396 = p_erased_type_5612_line_396 == Collection.class;
			int PROBE_END_LINE_396 = 398;
			if (type_bindings_1_expr121_line_396) {
                int PROBE_START_LINE_397 = 397;
				TypeVariable<?>[] f_vars_collection_5605_line_397 = VARS_COLLECTION;
				int PROBE_END_LINE_397 = 397;
				return f_vars_collection_5605_line_397;
            }
            int PROBE_START_LINE_399 = 401;
			Class<?> p_erased_type_5612_line_399 = erasedType;
			boolean type_bindings_1_expr123_line_399 = p_erased_type_5612_line_399 == List.class;
			int PROBE_END_LINE_399 = 401;
			if (type_bindings_1_expr123_line_399) {
                int PROBE_START_LINE_400 = 400;
				TypeVariable<?>[] f_vars_list_5607_line_400 = VARS_LIST;
				int PROBE_END_LINE_400 = 400;
				return f_vars_list_5607_line_400;
            }
            int PROBE_START_LINE_402 = 404;
			Class<?> p_erased_type_5612_line_402 = erasedType;
			boolean type_bindings_1_expr125_line_402 = p_erased_type_5612_line_402 == ArrayList.class;
			int PROBE_END_LINE_402 = 404;
			if (type_bindings_1_expr125_line_402) {
                int PROBE_START_LINE_403 = 403;
				TypeVariable<?>[] f_vars_array_list_5608_line_403 = VARS_ARRAY_LIST;
				int PROBE_END_LINE_403 = 403;
				return f_vars_array_list_5608_line_403;
            }
            int PROBE_START_LINE_405 = 407;
			Class<?> p_erased_type_5612_line_405 = erasedType;
			boolean type_bindings_1_expr127_line_405 = p_erased_type_5612_line_405 == AbstractList.class;
			int PROBE_END_LINE_405 = 407;
			if (type_bindings_1_expr127_line_405) {
                int PROBE_START_LINE_406 = 406;
				TypeVariable<?>[] f_vars_abstract_list_5604_line_406 = VARS_ABSTRACT_LIST;
				int PROBE_END_LINE_406 = 406;
				return f_vars_abstract_list_5604_line_406;
            }
            int PROBE_START_LINE_408 = 410;
			Class<?> p_erased_type_5612_line_408 = erasedType;
			boolean type_bindings_1_expr129_line_408 = p_erased_type_5612_line_408 == Iterable.class;
			int PROBE_END_LINE_408 = 410;
			if (type_bindings_1_expr129_line_408) {
                int PROBE_START_LINE_409 = 409;
				TypeVariable<?>[] f_vars_iterable_5606_line_409 = VARS_ITERABLE;
				int PROBE_END_LINE_409 = 409;
				return f_vars_iterable_5606_line_409;
            }
            int PROBE_START_LINE_411 = 411;
			Class<?> p_erased_type_5612_line_411 = erasedType;
			TypeVariable<? extends Class<?>>[] type_bindings_1_expr131_line_411 = p_erased_type_5612_line_411
					.getTypeParameters();
			int PROBE_END_LINE_411 = 411;
			return type_bindings_1_expr131_line_411;
        }    

        public static TypeVariable<?>[] paramsFor2(Class<?> erasedType)
        {
            int PROBE_START_LINE_416 = 418;
			Class<?> p_erased_type_5613_line_416 = erasedType;
			boolean type_bindings_1_expr132_line_416 = p_erased_type_5613_line_416 == Map.class;
			int PROBE_END_LINE_416 = 418;
			if (type_bindings_1_expr132_line_416) {
                int PROBE_START_LINE_417 = 417;
				TypeVariable<?>[] f_vars_map_5609_line_417 = VARS_MAP;
				int PROBE_END_LINE_417 = 417;
				return f_vars_map_5609_line_417;
            }
            int PROBE_START_LINE_419 = 421;
			Class<?> p_erased_type_5613_line_419 = erasedType;
			boolean type_bindings_1_expr134_line_419 = p_erased_type_5613_line_419 == HashMap.class;
			int PROBE_END_LINE_419 = 421;
			if (type_bindings_1_expr134_line_419) {
                int PROBE_START_LINE_420 = 420;
				TypeVariable<?>[] f_vars_hash_map_5610_line_420 = VARS_HASH_MAP;
				int PROBE_END_LINE_420 = 420;
				return f_vars_hash_map_5610_line_420;
            }
            int PROBE_START_LINE_422 = 424;
			Class<?> p_erased_type_5613_line_422 = erasedType;
			boolean type_bindings_1_expr136_line_422 = p_erased_type_5613_line_422 == LinkedHashMap.class;
			int PROBE_END_LINE_422 = 424;
			if (type_bindings_1_expr136_line_422) {
                int PROBE_START_LINE_423 = 423;
				TypeVariable<?>[] f_vars_linked_hash_map_5611_line_423 = VARS_LINKED_HASH_MAP;
				int PROBE_END_LINE_423 = 423;
				return f_vars_linked_hash_map_5611_line_423;
            }
            int PROBE_START_LINE_425 = 425;
			Class<?> p_erased_type_5613_line_425 = erasedType;
			TypeVariable<? extends Class<?>>[] type_bindings_1_expr138_line_425 = p_erased_type_5613_line_425
					.getTypeParameters();
			int PROBE_END_LINE_425 = 425;
			return type_bindings_1_expr138_line_425;
        }    
    }

    /**
     * Helper type used to allow caching of generic types
     *
     * @since 2.8
     */
    final static class AsKey {
        private final Class<?> _raw;
        private final JavaType[] _params;
        private final int _hash;

        public AsKey(Class<?> raw, JavaType[] params, int hash) {
            int PROBE_START_LINE_440 = 440;
			Class<?> p_raw_5614_line_440 = raw;
			int PROBE_END_LINE_440 = 440;
			_raw = p_raw_5614_line_440 ;
            int PROBE_START_LINE_441 = 441;
			com.fasterxml.jackson.databind.JavaType[] p_params_5615_line_441 = params;
			int PROBE_END_LINE_441 = 441;
			_params = p_params_5615_line_441;
            int PROBE_START_LINE_442 = 442;
			int p_hash_5616_line_442 = hash;
			int PROBE_END_LINE_442 = 442;
			_hash = p_hash_5616_line_442;
        }

        @Override
        public int hashCode() { int PROBE_START_LINE_446 = 446;
			int f__hash_5619_line_446 = _hash;
			int PROBE_END_LINE_446 = 446;
		return f__hash_5619_line_446; }

        @Override
        public boolean equals(Object o) {
            int PROBE_START_LINE_450 = 450;
			Object p_o_5620_line_450 = o;
			boolean type_bindings_1_expr142_line_450 = p_o_5620_line_450 == this;
			int PROBE_END_LINE_450 = 450;
			if (type_bindings_1_expr142_line_450) return true;
            int PROBE_START_LINE_451 = 451;
			Object p_o_5620_line_451 = o;
			boolean type_bindings_1_expr144_line_451 = p_o_5620_line_451 == null;
			int PROBE_END_LINE_451 = 451;
			if (type_bindings_1_expr144_line_451) return false;
            int PROBE_START_LINE_452 = 452;
			Object p_o_5620_line_452 = o;
			Class<? extends Object> type_bindings_1_expr146_line_452 = p_o_5620_line_452.getClass();
			Class<? extends com.fasterxml.jackson.databind.type.TypeBindings.AsKey> type_bindings_1_expr147_line_452 = getClass();
			boolean type_bindings_1_expr145_line_452 = type_bindings_1_expr146_line_452 != type_bindings_1_expr147_line_452;
			int PROBE_END_LINE_452 = 452;
			if (type_bindings_1_expr145_line_452) return false;
            int PROBE_START_LINE_453 = 453;
			Object p_o_5620_line_453 = o;
			int PROBE_END_LINE_453 = 453;
			AsKey other = (AsKey) p_o_5620_line_453;

            int PROBE_START_LINE_455 = 467;
			int f__hash_5619_line_455 = _hash;
			com.fasterxml.jackson.databind.type.TypeBindings.AsKey v_other_5621_line_455 = other;
			int q__hash_195_line_455 = v_other_5621_line_455._hash;
			boolean type_bindings_1_expr151_line_455 = f__hash_5619_line_455 == q__hash_195_line_455;
			boolean type_bindings_1_expr150_line_455 = (type_bindings_1_expr151_line_455);
			boolean type_bindings_1_expr152_line_455 = true;
			if (type_bindings_1_expr150_line_455) {
				Class<?> f__raw_5617_line_455 = _raw;
				com.fasterxml.jackson.databind.type.TypeBindings.AsKey v_other_5621_line_455_v1 = other;
				Class<?> q__raw_196_line_455 = v_other_5621_line_455_v1._raw;
				boolean type_bindings_1_expr153_line_455 = f__raw_5617_line_455 == q__raw_196_line_455;
				type_bindings_1_expr152_line_455 = (type_bindings_1_expr153_line_455);
			}
			boolean type_bindings_1_expr149_line_455 = type_bindings_1_expr150_line_455
					&& type_bindings_1_expr152_line_455;
			int PROBE_END_LINE_455 = 467;
			if (type_bindings_1_expr149_line_455) {
                int PROBE_START_LINE_456 = 456;
				com.fasterxml.jackson.databind.type.TypeBindings.AsKey v_other_5621_line_456 = other;
				JavaType[] q__params_197_line_456 = v_other_5621_line_456._params;
				int PROBE_END_LINE_456 = 456;
				final JavaType[] otherParams = q__params_197_line_456;
                int PROBE_START_LINE_457 = 457;
				com.fasterxml.jackson.databind.JavaType[] f__params_5618_line_457 = _params;
				int q_length_198_line_457 = f__params_5618_line_457.length;
				int PROBE_END_LINE_457 = 457;
				final int len = q_length_198_line_457;

                int PROBE_START_LINE_459 = 466;
				int v_len_5623_line_459 = len;
				com.fasterxml.jackson.databind.JavaType[] v_other_params_5622_line_459 = otherParams;
				int q_length_199_line_459 = v_other_params_5622_line_459.length;
				boolean type_bindings_1_expr154_line_459 = v_len_5623_line_459 == q_length_199_line_459;
				int PROBE_END_LINE_459 = 466;
				if (type_bindings_1_expr154_line_459) {
                    for (int i = 0; true; ++i) {
                        int PROBE_START_LINE_461 = 463;
						int v_i_5624_line_460 = i;
						int v_len_5623_line_460 = len;
						boolean type_bindings_1_expr156_line_460 = v_i_5624_line_460 < v_len_5623_line_460;
						if (!(type_bindings_1_expr156_line_460)) {
							break;
						}
						com.fasterxml.jackson.databind.JavaType[] f__params_5618_line_461 = _params;
						int v_i_5624_line_461 = i;
						com.fasterxml.jackson.databind.JavaType type_bindings_1_expr161_line_461 = f__params_5618_line_461[v_i_5624_line_461];
						com.fasterxml.jackson.databind.JavaType[] v_other_params_5622_line_461 = otherParams;
						int v_i_5624_line_461_v1 = i;
						com.fasterxml.jackson.databind.JavaType type_bindings_1_expr160_line_461 = v_other_params_5622_line_461[v_i_5624_line_461_v1];
						boolean type_bindings_1_expr159_line_461 = type_bindings_1_expr161_line_461
								.equals(type_bindings_1_expr160_line_461);
						boolean type_bindings_1_expr158_line_461 = !type_bindings_1_expr159_line_461;
						int PROBE_END_LINE_461 = 463;
						if (type_bindings_1_expr158_line_461) {
                            return false;
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        @Override
        public String toString() {
            return _raw.getName()+"<>";
        }
    }
}
