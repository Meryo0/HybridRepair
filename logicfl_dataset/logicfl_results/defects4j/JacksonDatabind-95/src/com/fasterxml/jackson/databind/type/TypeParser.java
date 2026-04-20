package com.fasterxml.jackson.databind.type;

import java.util.*;

import com.fasterxml.jackson.databind.JavaType;
import java.util.List;
import java.util.ArrayList;

/**
 * Simple recursive-descent parser for parsing canonical {@link JavaType}
 * representations and constructing type instances.
 */
public class TypeParser
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    protected final TypeFactory _factory;
        
    public TypeParser(TypeFactory f) {
        int PROBE_START_LINE_19 = 19;
		com.fasterxml.jackson.databind.type.TypeFactory p_f_520_line_19 = f;
		int PROBE_END_LINE_19 = 19;
		_factory = p_f_520_line_19;
    }

    /**
     * @since 2.6.2
     */
    public TypeParser withFactory(TypeFactory f) {
        return (f == _factory) ? this : new TypeParser(f);
    }

    public JavaType parse(String canonical) throws IllegalArgumentException
    {
        int PROBE_START_LINE_31 = 31;
		String p_canonical_523_line_31 = canonical;
		String type_parser_1_expr3_line_31 = p_canonical_523_line_31.trim();
		int PROBE_END_LINE_31 = 31;
		MyTokenizer tokens = new MyTokenizer(type_parser_1_expr3_line_31);
        int PROBE_START_LINE_32 = 32;
		com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer v_tokens_524_line_32 = tokens;
		JavaType type_parser_1_expr4_line_32 = parseType(v_tokens_524_line_32);
		int PROBE_END_LINE_32 = 32;
		JavaType type = type_parser_1_expr4_line_32;
        int PROBE_START_LINE_34 = 36;
		com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer v_tokens_524_line_34 = tokens;
		boolean type_parser_1_expr5_line_34 = v_tokens_524_line_34.hasMoreTokens();
		int PROBE_END_LINE_34 = 36;
		// must be end, now
        if (type_parser_1_expr5_line_34) {
            throw _problem(tokens, "Unexpected tokens after complete type");
        }
        int PROBE_START_LINE_37 = 37;
		com.fasterxml.jackson.databind.JavaType v_type_525_line_37 = type;
		int PROBE_END_LINE_37 = 37;
		return v_type_525_line_37;
    }

    protected JavaType parseType(MyTokenizer tokens)
        throws IllegalArgumentException
    {
        int PROBE_START_LINE_43 = 45;
		com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_526_line_43 = tokens;
		boolean type_parser_1_expr7_line_43 = p_tokens_526_line_43.hasMoreTokens();
		boolean type_parser_1_expr6_line_43 = !type_parser_1_expr7_line_43;
		int PROBE_END_LINE_43 = 45;
		if (type_parser_1_expr6_line_43) {
            throw _problem(tokens, "Unexpected end-of-string");
        }
        int PROBE_START_LINE_46 = 46;
		com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_526_line_46 = tokens;
		String type_parser_1_expr9_line_46 = p_tokens_526_line_46.nextToken();
		com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_526_line_46_v1 = tokens;
		Class<?> type_parser_1_expr8_line_46 = findClass(type_parser_1_expr9_line_46, p_tokens_526_line_46_v1);
		int PROBE_END_LINE_46 = 46;
		Class<?> base = type_parser_1_expr8_line_46;

        int PROBE_START_LINE_49 = 58;
		com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_526_line_49 = tokens;
		boolean type_parser_1_expr10_line_49 = p_tokens_526_line_49.hasMoreTokens();
		int PROBE_END_LINE_49 = 58;
		// either end (ok, non generic type), or generics
        if (type_parser_1_expr10_line_49) {
            int PROBE_START_LINE_50 = 50;
			com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_526_line_50 = tokens;
			String type_parser_1_expr11_line_50 = p_tokens_526_line_50.nextToken();
			int PROBE_END_LINE_50 = 50;
			String token = type_parser_1_expr11_line_50;
            int PROBE_START_LINE_51 = 55;
			String v_token_528_line_51 = token;
			boolean type_parser_1_expr12_line_51 = "<".equals(v_token_528_line_51);
			int PROBE_END_LINE_51 = 55;
			if (type_parser_1_expr12_line_51) {
                int PROBE_START_LINE_52 = 52;
				com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_526_line_52 = tokens;
				List<JavaType> type_parser_1_expr13_line_52 = parseTypes(p_tokens_526_line_52);
				int PROBE_END_LINE_52 = 52;
				List<JavaType> parameterTypes = type_parser_1_expr13_line_52;
                int PROBE_START_LINE_53 = 53;
				Class<?> v_base_527_line_53 = base;
				List<com.fasterxml.jackson.databind.JavaType> v_parameter_types_529_line_53 = parameterTypes;
				TypeBindings type_parser_1_expr14_line_53 = TypeBindings.create(v_base_527_line_53,
						v_parameter_types_529_line_53);
				int PROBE_END_LINE_53 = 53;
				TypeBindings b = type_parser_1_expr14_line_53;
                int PROBE_START_LINE_54 = 54;
				com.fasterxml.jackson.databind.type.TypeFactory f__factory_521_line_54 = _factory;
				Class<?> v_base_527_line_54 = base;
				com.fasterxml.jackson.databind.type.TypeBindings v_b_530_line_54 = b;
				com.fasterxml.jackson.databind.JavaType type_parser_1_expr15_line_54 = f__factory_521_line_54
						._fromClass(null, v_base_527_line_54, v_b_530_line_54);
				int PROBE_END_LINE_54 = 54;
				return type_parser_1_expr15_line_54;
            }
            int PROBE_START_LINE_57 = 57;
			com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_526_line_57 = tokens;
			String v_token_528_line_57 = token;
			int PROBE_END_LINE_57 = 57;
			// can be comma that separates types, or closing '>'
            p_tokens_526_line_57.pushBack(v_token_528_line_57);
        }
        int PROBE_START_LINE_59 = 59;
		com.fasterxml.jackson.databind.type.TypeFactory f__factory_521_line_59 = _factory;
		Class<?> v_base_527_line_59 = base;
		com.fasterxml.jackson.databind.JavaType type_parser_1_expr17_line_59 = f__factory_521_line_59._fromClass(null,
				v_base_527_line_59, null);
		int PROBE_END_LINE_59 = 59;
		return type_parser_1_expr17_line_59;
    }

    protected List<JavaType> parseTypes(MyTokenizer tokens)
        throws IllegalArgumentException
    {
        ArrayList<JavaType> types = new ArrayList<JavaType>();
        while (true) {
            int PROBE_START_LINE_66 = 66;
			com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_531_line_66 = tokens;
			boolean type_parser_1_expr19_line_66 = p_tokens_531_line_66.hasMoreTokens();
			if (!(type_parser_1_expr19_line_66)) {
				break;
			}
			int PROBE_END_LINE_66 = 66;
			int PROBE_START_LINE_67 = 67;
			ArrayList<com.fasterxml.jackson.databind.JavaType> v_types_532_line_67 = types;
			com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_531_line_67 = tokens;
			com.fasterxml.jackson.databind.JavaType type_parser_1_expr21_line_67 = parseType(p_tokens_531_line_67);
			int PROBE_END_LINE_67 = 67;
			v_types_532_line_67.add(type_parser_1_expr21_line_67);
            int PROBE_START_LINE_68 = 68;
			com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_531_line_68 = tokens;
			boolean type_parser_1_expr23_line_68 = p_tokens_531_line_68.hasMoreTokens();
			boolean type_parser_1_expr22_line_68 = !type_parser_1_expr23_line_68;
			int PROBE_END_LINE_68 = 68;
			if (type_parser_1_expr22_line_68) break;
            int PROBE_START_LINE_69 = 69;
			com.fasterxml.jackson.databind.type.TypeParser.MyTokenizer p_tokens_531_line_69 = tokens;
			String type_parser_1_expr24_line_69 = p_tokens_531_line_69.nextToken();
			int PROBE_END_LINE_69 = 69;
			String token = type_parser_1_expr24_line_69;
            int PROBE_START_LINE_70 = 70;
			String v_token_533_line_70 = token;
			boolean type_parser_1_expr25_line_70 = ">".equals(v_token_533_line_70);
			if (type_parser_1_expr25_line_70) {
				ArrayList<com.fasterxml.jackson.databind.JavaType> v_types_532_line_70 = types;
				int PROBE_END_LINE_70 = 70;
				return v_types_532_line_70;
			}
            int PROBE_START_LINE_71 = 73;
			String v_token_533_line_71 = token;
			boolean type_parser_1_expr27_line_71 = ",".equals(v_token_533_line_71);
			boolean type_parser_1_expr26_line_71 = !type_parser_1_expr27_line_71;
			int PROBE_END_LINE_71 = 73;
			if (type_parser_1_expr26_line_71) {
                throw _problem(tokens, "Unexpected token '"+token+"', expected ',' or '>')");
            }
        }
        throw _problem(tokens, "Unexpected end-of-string");
    }

    protected Class<?> findClass(String className, MyTokenizer tokens)
    {
        try {
            int PROBE_START_LINE_81 = 81;
			com.fasterxml.jackson.databind.type.TypeFactory f__factory_521_line_81 = _factory;
			String p_class_name_534_line_81 = className;
			Class<?> type_parser_1_expr28_line_81 = f__factory_521_line_81.findClass(p_class_name_534_line_81);
			int PROBE_END_LINE_81 = 81;
			return type_parser_1_expr28_line_81;
        } catch (Exception e) {
            if (e instanceof RuntimeException) {
                throw (RuntimeException) e;
            }
            throw _problem(tokens, "Can not locate class '"+className+"', problem: "+e.getMessage());
        }
    }

    protected IllegalArgumentException _problem(MyTokenizer tokens, String msg)
    {
        return new IllegalArgumentException(String.format("Failed to parse type '%s' (remaining: '%s'): %s",
                tokens.getAllInput(), tokens.getRemainingInput(), msg));
    }

    final static class MyTokenizer extends StringTokenizer
    {
        protected final String _input;

        protected int _index;

        protected String _pushbackToken;

        public MyTokenizer(String str) {            
            super(str, "<,>", true);
            int PROBE_START_LINE_106 = 106;
			String p_str_538_line_106 = str;
			int PROBE_END_LINE_106 = 106;
			_input = p_str_538_line_106;
        }

        @Override
        public boolean hasMoreTokens() {
            int PROBE_START_LINE_111 = 111;
			String f__pushback_token_540_line_111 = _pushbackToken;
			boolean type_parser_1_expr33_line_111 = f__pushback_token_540_line_111 != null;
			boolean type_parser_1_expr32_line_111 = (type_parser_1_expr33_line_111);
			boolean type_parser_1_expr34_line_111 = false;
			if (!type_parser_1_expr32_line_111) {
				type_parser_1_expr34_line_111 = super.hasMoreTokens();
			}
			boolean type_parser_1_expr31_line_111 = type_parser_1_expr32_line_111 || type_parser_1_expr34_line_111;
			int PROBE_END_LINE_111 = 111;
			return type_parser_1_expr31_line_111;
        }
        
        @Override
        public String nextToken() {
            String token = null;
            int PROBE_START_LINE_117 = 124;
			String f__pushback_token_540_line_117 = _pushbackToken;
			boolean type_parser_1_expr35_line_117 = f__pushback_token_540_line_117 != null;
			int PROBE_END_LINE_117 = 124;
			if (type_parser_1_expr35_line_117) {
                int PROBE_START_LINE_118 = 118;
				String f__pushback_token_540_line_118 = _pushbackToken;
				int PROBE_END_LINE_118 = 118;
				token = f__pushback_token_540_line_118;
                _pushbackToken = null;
            } else {
                int PROBE_START_LINE_121 = 121;
				String type_parser_1_expr39_line_121 = super.nextToken();
				int PROBE_END_LINE_121 = 121;
				token = type_parser_1_expr39_line_121;
                int PROBE_START_LINE_122 = 122;
				String v_token_541_line_122 = token;
				int type_parser_1_expr41_line_122 = v_token_541_line_122.length();
				int PROBE_END_LINE_122 = 122;
				_index += type_parser_1_expr41_line_122;
                int PROBE_START_LINE_123 = 123;
				String v_token_541_line_123 = token;
				String type_parser_1_expr43_line_123 = v_token_541_line_123.trim();
				int PROBE_END_LINE_123 = 123;
				token = type_parser_1_expr43_line_123;
            }
            int PROBE_START_LINE_125 = 125;
			String v_token_541_line_125 = token;
			int PROBE_END_LINE_125 = 125;
			return v_token_541_line_125;
        }

        public void pushBack(String token) {
            int PROBE_START_LINE_129 = 129;
			String p_token_543_line_129 = token;
			int PROBE_END_LINE_129 = 129;
			_pushbackToken = p_token_543_line_129;
            // let's NOT change index for now, since token may have been trim()ed
        }

        public String getAllInput() { return _input; }
//        public String getUsedInput() { return _input.substring(0, _index); }
        public String getRemainingInput() { return _input.substring(_index); }
    }
}
