package com.fasterxml.jackson.databind.type;

import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.databind.JavaType;
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

    int PROBE_START_LINE_20 = 20;

	private static final String[] f_no_strings_257_line_20 = NO_STRINGS;

	private static final com.fasterxml.jackson.databind.JavaType[] f_no_types_258_line_20 = NO_TYPES;

	int PROBE_END_LINE_20 = 20;

	private final static TypeBindings EMPTY = new TypeBindings(f_no_strings_257_line_20, f_no_types_258_line_20, null);

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
        int PROBE_START_LINE_53 = 53;
		String[] p_names_260_line_53 = names;
		boolean type_bindings_1_expr7_line_53 = p_names_260_line_53 == null;
		boolean type_bindings_1_expr6_line_53 = (type_bindings_1_expr7_line_53);
		String[] f_no_strings_257_line_53 = null;
		String[] p_names_260_line_53_v1 = null;
		if (type_bindings_1_expr6_line_53) {
			f_no_strings_257_line_53 = NO_STRINGS;
		} else {
			p_names_260_line_53_v1 = names;
		}
		String[] type_bindings_1_expr5_line_53 = type_bindings_1_expr6_line_53
				? f_no_strings_257_line_53
				: p_names_260_line_53_v1;
		int PROBE_END_LINE_53 = 53;
		_names = type_bindings_1_expr5_line_53;
        int PROBE_START_LINE_54 = 54;
		com.fasterxml.jackson.databind.JavaType[] p_types_261_line_54 = types;
		boolean type_bindings_1_expr11_line_54 = p_types_261_line_54 == null;
		boolean type_bindings_1_expr10_line_54 = (type_bindings_1_expr11_line_54);
		com.fasterxml.jackson.databind.JavaType[] f_no_types_258_line_54 = null;
		com.fasterxml.jackson.databind.JavaType[] p_types_261_line_54_v1 = null;
		if (type_bindings_1_expr10_line_54) {
			f_no_types_258_line_54 = NO_TYPES;
		} else {
			p_types_261_line_54_v1 = types;
		}
		com.fasterxml.jackson.databind.JavaType[] type_bindings_1_expr9_line_54 = type_bindings_1_expr10_line_54
				? f_no_types_258_line_54
				: p_types_261_line_54_v1;
		int PROBE_END_LINE_54 = 54;
		_types = type_bindings_1_expr9_line_54;
        int PROBE_START_LINE_55 = 57;
		String[] f__names_263_line_55 = _names;
		int q_length_7_line_55 = f__names_263_line_55.length;
		com.fasterxml.jackson.databind.JavaType[] f__types_264_line_55 = _types;
		int q_length_8_line_55 = f__types_264_line_55.length;
		boolean type_bindings_1_expr12_line_55 = q_length_7_line_55 != q_length_8_line_55;
		int PROBE_END_LINE_55 = 57;
		if (type_bindings_1_expr12_line_55) {
            throw new IllegalArgumentException("Mismatching names ("+_names.length+"), types ("+_types.length+")");
        }
        int h = 1;
        int PROBE_START_LINE_58 = 58;
		boolean FOR_STMT_TOGGLE_LINE_59 = false;
		int PROBE_END_LINE_58 = 58;
		for (int i = 0, len = 0; true;) {
            int PROBE_START_LINE_60 = 60;
			if (!FOR_STMT_TOGGLE_LINE_59) {
				FOR_STMT_TOGGLE_LINE_59 = true;
				i = 0;
				com.fasterxml.jackson.databind.JavaType[] f__types_264_line_59 = _types;
				int q_length_9_line_59 = f__types_264_line_59.length;
				len = q_length_9_line_59;
			} else {
				if (FOR_STMT_TOGGLE_LINE_59) {
					++i;
				} else {
					FOR_STMT_TOGGLE_LINE_59 = true;
				}
			}
			int v_i_266_line_59 = i;
			int v_len_267_line_59 = len;
			boolean type_bindings_1_expr14_line_59 = v_i_266_line_59 < v_len_267_line_59;
			if (!(type_bindings_1_expr14_line_59)) {
				break;
			}
			com.fasterxml.jackson.databind.JavaType[] f__types_264_line_60 = _types;
			int v_i_266_line_60 = i;
			com.fasterxml.jackson.databind.JavaType type_bindings_1_expr18_line_60 = f__types_264_line_60[v_i_266_line_60];
			int type_bindings_1_expr17_line_60 = type_bindings_1_expr18_line_60.hashCode();
			int PROBE_END_LINE_60 = 60;
			h += type_bindings_1_expr17_line_60;
        }
        int PROBE_START_LINE_62 = 62;
		String[] p_uvars_262_line_62 = uvars;
		int PROBE_END_LINE_62 = 62;
		_unboundVariables = p_uvars_262_line_62;
        int PROBE_START_LINE_63 = 63;
		int v_h_265_line_63 = h;
		int PROBE_END_LINE_63 = 63;
		_hashCode = v_h_265_line_63;
    }

    public static TypeBindings emptyBindings() {
        int PROBE_START_LINE_67 = 67;
		com.fasterxml.jackson.databind.type.TypeBindings f_empty_259_line_67 = EMPTY;
		int PROBE_END_LINE_67 = 67;
		return f_empty_259_line_67;
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
        int PROBE_START_LINE_84 = 85;
		List<com.fasterxml.jackson.databind.JavaType> p_type_list_271_line_84 = typeList;
		boolean type_bindings_1_expr25_line_84 = p_type_list_271_line_84 == null;
		boolean type_bindings_1_expr26_line_84 = false;
		if (!type_bindings_1_expr25_line_84) {
			List<com.fasterxml.jackson.databind.JavaType> p_type_list_271_line_84_v1 = typeList;
			type_bindings_1_expr26_line_84 = p_type_list_271_line_84_v1.isEmpty();
		}
		boolean type_bindings_1_expr24_line_84 = type_bindings_1_expr25_line_84 || type_bindings_1_expr26_line_84;
		boolean type_bindings_1_expr22_line_84 = (type_bindings_1_expr24_line_84);
		JavaType[] type_bindings_1_expr21_line_84 = type_bindings_1_expr22_line_84
				? NO_TYPES
				: typeList.toArray(new JavaType[typeList.size()]);
		int PROBE_END_LINE_84 = 85;
		JavaType[] types = type_bindings_1_expr21_line_84;
        int PROBE_START_LINE_86 = 86;
		Class<?> p_erased_type_270_line_86 = erasedType;
		com.fasterxml.jackson.databind.JavaType[] v_types_272_line_86 = types;
		com.fasterxml.jackson.databind.type.TypeBindings type_bindings_1_expr27_line_86 = create(
				p_erased_type_270_line_86, v_types_272_line_86);
		int PROBE_END_LINE_86 = 86;
		return type_bindings_1_expr27_line_86;
    }

    public static TypeBindings create(Class<?> erasedType, JavaType[] types)
    {
        int PROBE_START_LINE_91 = 98;
		com.fasterxml.jackson.databind.JavaType[] p_types_274_line_91 = types;
		boolean type_bindings_1_expr28_line_91 = p_types_274_line_91 == null;
		int PROBE_END_LINE_91 = 98;
		if (type_bindings_1_expr28_line_91) {
            types = NO_TYPES;
        } else {
			int PROBE_START_LINE_93 = 98;
			com.fasterxml.jackson.databind.JavaType[] p_types_274_line_93 = types;
			int q_length_9_line_93 = p_types_274_line_93.length;
			int PROBE_END_LINE_93 = 98;
			switch (q_length_9_line_93) {
				case 1 :
					int PROBE_START_LINE_95 = 95;
					Class<?> p_erased_type_273_line_95 = erasedType;
					com.fasterxml.jackson.databind.JavaType[] p_types_274_line_95 = types;
					com.fasterxml.jackson.databind.JavaType type_bindings_1_expr30_line_95 = p_types_274_line_95[0];
					com.fasterxml.jackson.databind.type.TypeBindings type_bindings_1_expr29_line_95 = create(
							p_erased_type_273_line_95, type_bindings_1_expr30_line_95);
					int PROBE_END_LINE_95 = 95;
					return type_bindings_1_expr29_line_95;
				case 2 :
					int PROBE_START_LINE_97 = 97;
					Class<?> p_erased_type_273_line_97 = erasedType;
					com.fasterxml.jackson.databind.JavaType[] p_types_274_line_97 = types;
					com.fasterxml.jackson.databind.JavaType type_bindings_1_expr32_line_97 = p_types_274_line_97[0];
					com.fasterxml.jackson.databind.JavaType[] p_types_274_line_97_v1 = types;
					com.fasterxml.jackson.databind.JavaType type_bindings_1_expr33_line_97 = p_types_274_line_97_v1[1];
					com.fasterxml.jackson.databind.type.TypeBindings type_bindings_1_expr31_line_97 = create(
							p_erased_type_273_line_97, type_bindings_1_expr32_line_97, type_bindings_1_expr33_line_97);
					int PROBE_END_LINE_97 = 97;
					return type_bindings_1_expr31_line_97;
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
            throw new IllegalArgumentException("Can not create TypeBindings for class "+erasedType.getName()
                   +" with "+types.length+" type parameter"
                   +((types.length == 1) ? "" : "s")+": class expects "+names.length);
        }
        return new TypeBindings(names, types, null);
    }

    public static TypeBindings create(Class<?> erasedType, JavaType typeArg1)
    {
        int PROBE_START_LINE_122 = 122;
		Class<?> p_erased_type_275_line_122 = erasedType;
		TypeVariable<?>[] type_bindings_1_expr34_line_122 = TypeParamStash.paramsFor1(p_erased_type_275_line_122);
		int PROBE_END_LINE_122 = 122;
		// 30-Oct-2015, tatu: Minor optimization for relatively common cases
        TypeVariable<?>[] vars = type_bindings_1_expr34_line_122;
        int PROBE_START_LINE_123 = 123;
		TypeVariable<?>[] v_vars_277_line_123 = vars;
		boolean type_bindings_1_expr37_line_123 = v_vars_277_line_123 == null;
		boolean type_bindings_1_expr36_line_123 = (type_bindings_1_expr37_line_123);
		int q_length_10_line_123 = 0;
		if (!type_bindings_1_expr36_line_123) {
			TypeVariable<?>[] v_vars_277_line_123_v1 = vars;
			q_length_10_line_123 = v_vars_277_line_123_v1.length;
		}
		int type_bindings_1_expr35_line_123 = type_bindings_1_expr36_line_123 ? 0 : q_length_10_line_123;
		int PROBE_END_LINE_123 = 123;
		int varLen = type_bindings_1_expr35_line_123;
        int PROBE_START_LINE_124 = 127;
		int v_var_len_278_line_124 = varLen;
		boolean type_bindings_1_expr38_line_124 = v_var_len_278_line_124 != 1;
		int PROBE_END_LINE_124 = 127;
		if (type_bindings_1_expr38_line_124) {
            throw new IllegalArgumentException("Can not create TypeBindings for class "+erasedType.getName()
                    +" with 1 type parameter: class expects "+varLen);
        }
        int PROBE_START_LINE_128 = 129;
		TypeVariable<?>[] v_vars_277_line_128 = vars;
		TypeVariable<?> type_bindings_1_expr44_line_128 = v_vars_277_line_128[0];
		String type_bindings_1_expr43_line_128 = type_bindings_1_expr44_line_128.getName();
		int PROBE_END_LINE_128 = 129;
		return new TypeBindings(new String[] { type_bindings_1_expr43_line_128 },
                new JavaType[] { typeArg1 }, null);
    }

    public static TypeBindings create(Class<?> erasedType, JavaType typeArg1, JavaType typeArg2)
    {
        int PROBE_START_LINE_135 = 135;
		Class<?> p_erased_type_279_line_135 = erasedType;
		TypeVariable<?>[] type_bindings_1_expr45_line_135 = TypeParamStash.paramsFor2(p_erased_type_279_line_135);
		int PROBE_END_LINE_135 = 135;
		// 30-Oct-2015, tatu: Minor optimization for relatively common cases
        TypeVariable<?>[] vars = type_bindings_1_expr45_line_135;
        int PROBE_START_LINE_136 = 136;
		TypeVariable<?>[] v_vars_282_line_136 = vars;
		boolean type_bindings_1_expr48_line_136 = v_vars_282_line_136 == null;
		boolean type_bindings_1_expr47_line_136 = (type_bindings_1_expr48_line_136);
		int q_length_11_line_136 = 0;
		if (!type_bindings_1_expr47_line_136) {
			TypeVariable<?>[] v_vars_282_line_136_v1 = vars;
			q_length_11_line_136 = v_vars_282_line_136_v1.length;
		}
		int type_bindings_1_expr46_line_136 = type_bindings_1_expr47_line_136 ? 0 : q_length_11_line_136;
		int PROBE_END_LINE_136 = 136;
		int varLen = type_bindings_1_expr46_line_136;
        int PROBE_START_LINE_137 = 140;
		int v_var_len_283_line_137 = varLen;
		boolean type_bindings_1_expr49_line_137 = v_var_len_283_line_137 != 2;
		int PROBE_END_LINE_137 = 140;
		if (type_bindings_1_expr49_line_137) {
            throw new IllegalArgumentException("Can not create TypeBindings for class "+erasedType.getName()
                    +" with 2 type parameters: class expects "+varLen);
        }
        int PROBE_START_LINE_141 = 142;
		TypeVariable<?>[] v_vars_282_line_141 = vars;
		TypeVariable<?> type_bindings_1_expr55_line_141 = v_vars_282_line_141[0];
		String type_bindings_1_expr54_line_141 = type_bindings_1_expr55_line_141.getName();
		TypeVariable<?>[] v_vars_282_line_141_v1 = vars;
		TypeVariable<?> type_bindings_1_expr57_line_141 = v_vars_282_line_141_v1[1];
		String type_bindings_1_expr56_line_141 = type_bindings_1_expr57_line_141.getName();
		int PROBE_END_LINE_141 = 142;
		return new TypeBindings(new String[] { type_bindings_1_expr54_line_141, type_bindings_1_expr56_line_141 },
                new JavaType[] { typeArg1, typeArg2 }, null);
    }
    
    /**
     * Alternate factory method that may be called if it is possible that type
     * does or does not require type parameters; this is mostly useful for
     * collection- and map-like types.
     */
    public static TypeBindings createIfNeeded(Class<?> erasedType, JavaType typeArg1)
    {
        TypeVariable<?>[] vars = erasedType.getTypeParameters();
        int varLen = (vars == null) ? 0 : vars.length;
        if (varLen == 0) {
            return EMPTY;
        }
        if (varLen != 1) {
            throw new IllegalArgumentException("Can not create TypeBindings for class "+erasedType.getName()
                    +" with 1 type parameter: class expects "+varLen);
        }
        return new TypeBindings(new String[] { vars[0].getName() },
                new JavaType[] { typeArg1 }, null);
    }
    
    /**
     * Alternate factory method that may be called if it is possible that type
     * does or does not require type parameters; this is mostly useful for
     * collection- and map-like types.
     */
    public static TypeBindings createIfNeeded(Class<?> erasedType, JavaType[] types)
    {
        TypeVariable<?>[] vars = erasedType.getTypeParameters();
        if (vars == null || vars.length == 0) {
            return EMPTY;
        }
        if (types == null) {
            types = NO_TYPES;
        }
        int len = vars.length;
        String[] names = new String[len];
        for (int i = 0; i < len; ++i) {
            names[i] = vars[i].getName();
        }
        // Check here to give better error message
        if (names.length != types.length) {
            throw new IllegalArgumentException("Can not create TypeBindings for class "+erasedType.getName()
                   +" with "+types.length+" type parameter"
                   +((types.length == 1) ? "" : "s")+": class expects "+names.length);
        }
        return new TypeBindings(names, types, null);
    }
    
    /**
     * Method for creating an instance that has same bindings as this object,
     * plus an indicator for additional type variable that may be unbound within
     * this context; this is needed to resolve recursive self-references.
     */
    public TypeBindings withUnboundVariable(String name)
    {
        int PROBE_START_LINE_200 = 200;
		String[] f__unbound_variables_268_line_200 = _unboundVariables;
		boolean type_bindings_1_expr60_line_200 = f__unbound_variables_268_line_200 == null;
		boolean type_bindings_1_expr59_line_200 = (type_bindings_1_expr60_line_200);
		int q_length_12_line_200 = 0;
		if (!type_bindings_1_expr59_line_200) {
			String[] f__unbound_variables_268_line_200_v1 = _unboundVariables;
			q_length_12_line_200 = f__unbound_variables_268_line_200_v1.length;
		}
		int type_bindings_1_expr58_line_200 = type_bindings_1_expr59_line_200 ? 0 : q_length_12_line_200;
		int PROBE_END_LINE_200 = 200;
		int len = type_bindings_1_expr58_line_200;
        int PROBE_START_LINE_201 = 202;
		int v_len_289_line_201 = len;
		boolean type_bindings_1_expr65_line_201 = v_len_289_line_201 == 0;
		boolean type_bindings_1_expr62_line_201 = (type_bindings_1_expr65_line_201);
		String[] type_bindings_1_expr61_line_201 = type_bindings_1_expr62_line_201
				? new String[1]
				: Arrays.copyOf(_unboundVariables, len + 1);
		int PROBE_END_LINE_201 = 202;
		String[] names =  type_bindings_1_expr61_line_201;
        int PROBE_START_LINE_203 = 203;
		String[] v_names_290_line_203 = names;
		int v_len_289_line_203 = len;
		String p_name_288_line_203 = name;
		int PROBE_END_LINE_203 = 203;
		v_names_290_line_203[v_len_289_line_203] = p_name_288_line_203;
        int PROBE_START_LINE_204 = 204;
		String[] f__names_263_line_204 = _names;
		com.fasterxml.jackson.databind.JavaType[] f__types_264_line_204 = _types;
		String[] v_names_290_line_204 = names;
		int PROBE_END_LINE_204 = 204;
		return new TypeBindings(f__names_263_line_204, f__types_264_line_204, v_names_290_line_204);
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
        int PROBE_START_LINE_217 = 217;
		boolean FOR_STMT_TOGGLE_LINE_218 = false;
		int PROBE_END_LINE_217 = 217;
		for (int i = 0, len = 0; true;) {
            int PROBE_START_LINE_219 = 239;
			if (!FOR_STMT_TOGGLE_LINE_218) {
				FOR_STMT_TOGGLE_LINE_218 = true;
				i = 0;
				String[] f__names_263_line_218 = _names;
				int q_length_13_line_218 = f__names_263_line_218.length;
				len = q_length_13_line_218;
			} else {
				if (FOR_STMT_TOGGLE_LINE_218) {
					++i;
				} else {
					FOR_STMT_TOGGLE_LINE_218 = true;
				}
			}
			int v_i_292_line_218 = i;
			int v_len_293_line_218 = len;
			boolean type_bindings_1_expr70_line_218 = v_i_292_line_218 < v_len_293_line_218;
			if (!(type_bindings_1_expr70_line_218)) {
				break;
			}
			String p_name_291_line_219 = name;
			String[] f__names_263_line_219 = _names;
			int v_i_292_line_219 = i;
			String type_bindings_1_expr73_line_219 = f__names_263_line_219[v_i_292_line_219];
			boolean type_bindings_1_expr72_line_219 = p_name_291_line_219.equals(type_bindings_1_expr73_line_219);
			int PROBE_END_LINE_219 = 239;
			if (type_bindings_1_expr72_line_219) {
                int PROBE_START_LINE_220 = 220;
				com.fasterxml.jackson.databind.JavaType[] f__types_264_line_220 = _types;
				int v_i_292_line_220 = i;
				JavaType type_bindings_1_expr74_line_220 = f__types_264_line_220[v_i_292_line_220];
				int PROBE_END_LINE_220 = 220;
				JavaType t = type_bindings_1_expr74_line_220;
                int PROBE_START_LINE_221 = 237;
				com.fasterxml.jackson.databind.JavaType v_t_294_line_221 = t;
				boolean type_bindings_1_expr75_line_221 = v_t_294_line_221 instanceof ResolvedRecursiveType;
				int PROBE_END_LINE_221 = 237;
				if (type_bindings_1_expr75_line_221) {
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
                int PROBE_START_LINE_238 = 238;
				com.fasterxml.jackson.databind.JavaType v_t_294_line_238 = t;
				int PROBE_END_LINE_238 = 238;
				return v_t_294_line_238;
            }
        }
        return null;
    }

    public boolean isEmpty() {
        int PROBE_START_LINE_245 = 245;
		com.fasterxml.jackson.databind.JavaType[] f__types_264_line_245 = _types;
		int q_length_13_line_245 = f__types_264_line_245.length;
		boolean type_bindings_1_expr77_line_245 = q_length_13_line_245 == 0;
		boolean type_bindings_1_expr76_line_245 = (type_bindings_1_expr77_line_245);
		int PROBE_END_LINE_245 = 245;
		return type_bindings_1_expr76_line_245;
    }
    
    /**
     * Returns number of bindings contained
     */
    public int size() { 
        int PROBE_START_LINE_252 = 252;
		com.fasterxml.jackson.databind.JavaType[] f__types_264_line_252 = _types;
		int q_length_13_line_252 = f__types_264_line_252.length;
		int PROBE_END_LINE_252 = 252;
		return q_length_13_line_252;
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
        int PROBE_START_LINE_276 = 278;
		com.fasterxml.jackson.databind.JavaType[] f__types_264_line_276 = _types;
		int q_length_13_line_276 = f__types_264_line_276.length;
		boolean type_bindings_1_expr78_line_276 = q_length_13_line_276 == 0;
		int PROBE_END_LINE_276 = 278;
		if (type_bindings_1_expr78_line_276) {
            return Collections.emptyList();
        }
        int PROBE_START_LINE_279 = 279;
		com.fasterxml.jackson.databind.JavaType[] f__types_264_line_279 = _types;
		List<com.fasterxml.jackson.databind.JavaType> type_bindings_1_expr79_line_279 = Arrays
				.asList(f__types_264_line_279);
		int PROBE_END_LINE_279 = 279;
		return type_bindings_1_expr79_line_279;
    }

    /**
     * @since 2.3
     */
    public boolean hasUnbound(String name) {
        int PROBE_START_LINE_286 = 292;
		String[] f__unbound_variables_268_line_286 = _unboundVariables;
		boolean type_bindings_1_expr80_line_286 = f__unbound_variables_268_line_286 != null;
		int PROBE_END_LINE_286 = 292;
		if (type_bindings_1_expr80_line_286) {
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
        int PROBE_START_LINE_305 = 305;
		Class<?> p_raw_base_298_line_305 = rawBase;
		com.fasterxml.jackson.databind.JavaType[] f__types_264_line_305 = _types;
		int f__hash_code_269_line_305 = _hashCode;
		int PROBE_END_LINE_305 = 305;
		// safe to pass _types array without copy since it is not exposed via
        // any access, nor modified by this class
        return new AsKey(p_raw_base_298_line_305, f__types_264_line_305, f__hash_code_269_line_305);
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
        if (o == this) return true;
        if (o == null || o.getClass() != getClass()) return false;
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
        int PROBE_START_LINE_381 = 381;

		private static final TypeVariable<Class<java.util.AbstractList>>[] type_bindings_1_expr82_line_381 = AbstractList.class
				.getTypeParameters();

		int PROBE_END_LINE_381 = 381;

		private final static TypeVariable<?>[] VARS_ABSTRACT_LIST = type_bindings_1_expr82_line_381;
        int PROBE_START_LINE_382 = 382;

		private static final TypeVariable<Class<java.util.Collection>>[] type_bindings_1_expr84_line_382 = Collection.class
				.getTypeParameters();

		int PROBE_END_LINE_382 = 382;

		private final static TypeVariable<?>[] VARS_COLLECTION = type_bindings_1_expr84_line_382;
        int PROBE_START_LINE_383 = 383;

		private static final TypeVariable<Class<Iterable>>[] type_bindings_1_expr86_line_383 = Iterable.class
				.getTypeParameters();

		int PROBE_END_LINE_383 = 383;

		private final static TypeVariable<?>[] VARS_ITERABLE = type_bindings_1_expr86_line_383;
        int PROBE_START_LINE_384 = 384;

		private static final TypeVariable<Class<java.util.List>>[] type_bindings_1_expr88_line_384 = List.class
				.getTypeParameters();

		int PROBE_END_LINE_384 = 384;

		private final static TypeVariable<?>[] VARS_LIST = type_bindings_1_expr88_line_384;
        int PROBE_START_LINE_385 = 385;

		private static final TypeVariable<Class<java.util.ArrayList>>[] type_bindings_1_expr90_line_385 = ArrayList.class
				.getTypeParameters();

		int PROBE_END_LINE_385 = 385;

		private final static TypeVariable<?>[] VARS_ARRAY_LIST = type_bindings_1_expr90_line_385;

        int PROBE_START_LINE_387 = 387;

		private static final TypeVariable<Class<java.util.Map>>[] type_bindings_1_expr92_line_387 = Map.class
				.getTypeParameters();

		int PROBE_END_LINE_387 = 387;

		private final static TypeVariable<?>[] VARS_MAP = type_bindings_1_expr92_line_387;
        int PROBE_START_LINE_388 = 388;

		private static final TypeVariable<Class<java.util.HashMap>>[] type_bindings_1_expr94_line_388 = HashMap.class
				.getTypeParameters();

		int PROBE_END_LINE_388 = 388;

		private final static TypeVariable<?>[] VARS_HASH_MAP = type_bindings_1_expr94_line_388;
        int PROBE_START_LINE_389 = 389;

		private static final TypeVariable<Class<java.util.LinkedHashMap>>[] type_bindings_1_expr96_line_389 = LinkedHashMap.class
				.getTypeParameters();

		int PROBE_END_LINE_389 = 389;

		private final static TypeVariable<?>[] VARS_LINKED_HASH_MAP = type_bindings_1_expr96_line_389;

        public static TypeVariable<?>[] paramsFor1(Class<?> erasedType)
        {
            int PROBE_START_LINE_393 = 395;
			Class<?> p_erased_type_308_line_393 = erasedType;
			boolean type_bindings_1_expr98_line_393 = p_erased_type_308_line_393 == Collection.class;
			int PROBE_END_LINE_393 = 395;
			if (type_bindings_1_expr98_line_393) {
                int PROBE_START_LINE_394 = 394;
				TypeVariable<?>[] f_vars_collection_301_line_394 = VARS_COLLECTION;
				int PROBE_END_LINE_394 = 394;
				return f_vars_collection_301_line_394;
            }
            int PROBE_START_LINE_396 = 398;
			Class<?> p_erased_type_308_line_396 = erasedType;
			boolean type_bindings_1_expr100_line_396 = p_erased_type_308_line_396 == List.class;
			int PROBE_END_LINE_396 = 398;
			if (type_bindings_1_expr100_line_396) {
                int PROBE_START_LINE_397 = 397;
				TypeVariable<?>[] f_vars_list_303_line_397 = VARS_LIST;
				int PROBE_END_LINE_397 = 397;
				return f_vars_list_303_line_397;
            }
            int PROBE_START_LINE_399 = 401;
			Class<?> p_erased_type_308_line_399 = erasedType;
			boolean type_bindings_1_expr102_line_399 = p_erased_type_308_line_399 == ArrayList.class;
			int PROBE_END_LINE_399 = 401;
			if (type_bindings_1_expr102_line_399) {
                int PROBE_START_LINE_400 = 400;
				TypeVariable<?>[] f_vars_array_list_304_line_400 = VARS_ARRAY_LIST;
				int PROBE_END_LINE_400 = 400;
				return f_vars_array_list_304_line_400;
            }
            int PROBE_START_LINE_402 = 404;
			Class<?> p_erased_type_308_line_402 = erasedType;
			boolean type_bindings_1_expr104_line_402 = p_erased_type_308_line_402 == AbstractList.class;
			int PROBE_END_LINE_402 = 404;
			if (type_bindings_1_expr104_line_402) {
                int PROBE_START_LINE_403 = 403;
				TypeVariable<?>[] f_vars_abstract_list_300_line_403 = VARS_ABSTRACT_LIST;
				int PROBE_END_LINE_403 = 403;
				return f_vars_abstract_list_300_line_403;
            }
            int PROBE_START_LINE_405 = 407;
			Class<?> p_erased_type_308_line_405 = erasedType;
			boolean type_bindings_1_expr106_line_405 = p_erased_type_308_line_405 == Iterable.class;
			int PROBE_END_LINE_405 = 407;
			if (type_bindings_1_expr106_line_405) {
                int PROBE_START_LINE_406 = 406;
				TypeVariable<?>[] f_vars_iterable_302_line_406 = VARS_ITERABLE;
				int PROBE_END_LINE_406 = 406;
				return f_vars_iterable_302_line_406;
            }
            int PROBE_START_LINE_408 = 408;
			Class<?> p_erased_type_308_line_408 = erasedType;
			TypeVariable<? extends Class<?>>[] type_bindings_1_expr108_line_408 = p_erased_type_308_line_408
					.getTypeParameters();
			int PROBE_END_LINE_408 = 408;
			return type_bindings_1_expr108_line_408;
        }    

        public static TypeVariable<?>[] paramsFor2(Class<?> erasedType)
        {
            int PROBE_START_LINE_413 = 415;
			Class<?> p_erased_type_309_line_413 = erasedType;
			boolean type_bindings_1_expr109_line_413 = p_erased_type_309_line_413 == Map.class;
			int PROBE_END_LINE_413 = 415;
			if (type_bindings_1_expr109_line_413) {
                int PROBE_START_LINE_414 = 414;
				TypeVariable<?>[] f_vars_map_305_line_414 = VARS_MAP;
				int PROBE_END_LINE_414 = 414;
				return f_vars_map_305_line_414;
            }
            int PROBE_START_LINE_416 = 418;
			Class<?> p_erased_type_309_line_416 = erasedType;
			boolean type_bindings_1_expr111_line_416 = p_erased_type_309_line_416 == HashMap.class;
			int PROBE_END_LINE_416 = 418;
			if (type_bindings_1_expr111_line_416) {
                return VARS_HASH_MAP;
            }
            int PROBE_START_LINE_419 = 421;
			Class<?> p_erased_type_309_line_419 = erasedType;
			boolean type_bindings_1_expr113_line_419 = p_erased_type_309_line_419 == LinkedHashMap.class;
			int PROBE_END_LINE_419 = 421;
			if (type_bindings_1_expr113_line_419) {
                return VARS_LINKED_HASH_MAP;
            }
            int PROBE_START_LINE_422 = 422;
			Class<?> p_erased_type_309_line_422 = erasedType;
			TypeVariable<? extends Class<?>>[] type_bindings_1_expr115_line_422 = p_erased_type_309_line_422
					.getTypeParameters();
			int PROBE_END_LINE_422 = 422;
			return type_bindings_1_expr115_line_422;
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
            int PROBE_START_LINE_437 = 437;
			Class<?> p_raw_310_line_437 = raw;
			int PROBE_END_LINE_437 = 437;
			_raw = p_raw_310_line_437 ;
            int PROBE_START_LINE_438 = 438;
			com.fasterxml.jackson.databind.JavaType[] p_params_311_line_438 = params;
			int PROBE_END_LINE_438 = 438;
			_params = p_params_311_line_438;
            int PROBE_START_LINE_439 = 439;
			int p_hash_312_line_439 = hash;
			int PROBE_END_LINE_439 = 439;
			_hash = p_hash_312_line_439;
        }

        @Override
        public int hashCode() { int PROBE_START_LINE_443 = 443;
			int f__hash_315_line_443 = _hash;
			int PROBE_END_LINE_443 = 443;
		return f__hash_315_line_443; }

        @Override
        public boolean equals(Object o) {
            int PROBE_START_LINE_447 = 447;
			Object p_o_316_line_447 = o;
			boolean type_bindings_1_expr119_line_447 = p_o_316_line_447 == this;
			int PROBE_END_LINE_447 = 447;
			if (type_bindings_1_expr119_line_447) return true;
            int PROBE_START_LINE_448 = 448;
			Object p_o_316_line_448 = o;
			boolean type_bindings_1_expr121_line_448 = p_o_316_line_448 == null;
			int PROBE_END_LINE_448 = 448;
			if (type_bindings_1_expr121_line_448) return false;
            int PROBE_START_LINE_449 = 449;
			Object p_o_316_line_449 = o;
			Class<? extends Object> type_bindings_1_expr123_line_449 = p_o_316_line_449.getClass();
			Class<? extends com.fasterxml.jackson.databind.type.TypeBindings.AsKey> type_bindings_1_expr124_line_449 = getClass();
			boolean type_bindings_1_expr122_line_449 = type_bindings_1_expr123_line_449 != type_bindings_1_expr124_line_449;
			int PROBE_END_LINE_449 = 449;
			if (type_bindings_1_expr122_line_449) return false;
            int PROBE_START_LINE_450 = 450;
			Object p_o_316_line_450 = o;
			int PROBE_END_LINE_450 = 450;
			AsKey other = (AsKey) p_o_316_line_450;

            int PROBE_START_LINE_452 = 464;
			int f__hash_315_line_452 = _hash;
			com.fasterxml.jackson.databind.type.TypeBindings.AsKey v_other_317_line_452 = other;
			int q__hash_13_line_452 = v_other_317_line_452._hash;
			boolean type_bindings_1_expr128_line_452 = f__hash_315_line_452 == q__hash_13_line_452;
			boolean type_bindings_1_expr127_line_452 = (type_bindings_1_expr128_line_452);
			boolean type_bindings_1_expr129_line_452 = true;
			if (type_bindings_1_expr127_line_452) {
				Class<?> f__raw_313_line_452 = _raw;
				com.fasterxml.jackson.databind.type.TypeBindings.AsKey v_other_317_line_452_v1 = other;
				Class<?> q__raw_14_line_452 = v_other_317_line_452_v1._raw;
				boolean type_bindings_1_expr130_line_452 = f__raw_313_line_452 == q__raw_14_line_452;
				type_bindings_1_expr129_line_452 = (type_bindings_1_expr130_line_452);
			}
			boolean type_bindings_1_expr126_line_452 = type_bindings_1_expr127_line_452
					&& type_bindings_1_expr129_line_452;
			int PROBE_END_LINE_452 = 464;
			if (type_bindings_1_expr126_line_452) {
                int PROBE_START_LINE_453 = 453;
				com.fasterxml.jackson.databind.type.TypeBindings.AsKey v_other_317_line_453 = other;
				JavaType[] q__params_15_line_453 = v_other_317_line_453._params;
				int PROBE_END_LINE_453 = 453;
				final JavaType[] otherParams = q__params_15_line_453;
                int PROBE_START_LINE_454 = 454;
				com.fasterxml.jackson.databind.JavaType[] f__params_314_line_454 = _params;
				int q_length_16_line_454 = f__params_314_line_454.length;
				int PROBE_END_LINE_454 = 454;
				final int len = q_length_16_line_454;

                int PROBE_START_LINE_456 = 463;
				int v_len_319_line_456 = len;
				com.fasterxml.jackson.databind.JavaType[] v_other_params_318_line_456 = otherParams;
				int q_length_17_line_456 = v_other_params_318_line_456.length;
				boolean type_bindings_1_expr131_line_456 = v_len_319_line_456 == q_length_17_line_456;
				int PROBE_END_LINE_456 = 463;
				if (type_bindings_1_expr131_line_456) {
                    for (int i = 0; true; ++i) {
                        int PROBE_START_LINE_458 = 460;
						int v_i_320_line_457 = i;
						int v_len_319_line_457 = len;
						boolean type_bindings_1_expr133_line_457 = v_i_320_line_457 < v_len_319_line_457;
						if (!(type_bindings_1_expr133_line_457)) {
							break;
						}
						com.fasterxml.jackson.databind.JavaType[] f__params_314_line_458 = _params;
						int v_i_320_line_458 = i;
						com.fasterxml.jackson.databind.JavaType type_bindings_1_expr138_line_458 = f__params_314_line_458[v_i_320_line_458];
						com.fasterxml.jackson.databind.JavaType[] v_other_params_318_line_458 = otherParams;
						int v_i_320_line_458_v1 = i;
						com.fasterxml.jackson.databind.JavaType type_bindings_1_expr137_line_458 = v_other_params_318_line_458[v_i_320_line_458_v1];
						boolean type_bindings_1_expr136_line_458 = type_bindings_1_expr138_line_458
								.equals(type_bindings_1_expr137_line_458);
						boolean type_bindings_1_expr135_line_458 = !type_bindings_1_expr136_line_458;
						int PROBE_END_LINE_458 = 460;
						if (type_bindings_1_expr135_line_458) {
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
