package com.fasterxml.jackson.databind.util;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;

/**
 * Helper class that contains functionality needed by both serialization
 * and deserialization side.
 */
public class BeanUtil
{
    /*
    /**********************************************************
    /* Handling property names
    /**********************************************************
     */

    /**
     * @since 2.5
     */
    public static String okNameForGetter(AnnotatedMethod am, boolean stdNaming) {
        String name = am.getName();
        String str = okNameForIsGetter(am, name, stdNaming);
        if (str == null) {
            str = okNameForRegularGetter(am, name, stdNaming);
        }
        return str;
    }
    
    /**
     * @since 2.5
     */
    public static String okNameForRegularGetter(AnnotatedMethod am, String name,
            boolean stdNaming)
    {
        int PROBE_START_LINE_41 = 62;
		String p_name_5851_line_41 = name;
		boolean bean_util_1_expr1_line_41 = p_name_5851_line_41.startsWith("get");
		int PROBE_END_LINE_41 = 62;
		if (bean_util_1_expr1_line_41) {
            int PROBE_START_LINE_49 = 58;
			String p_name_5851_line_49 = name;
			boolean bean_util_1_expr2_line_49 = "getCallbacks".equals(p_name_5851_line_49);
			int PROBE_END_LINE_49 = 58;
			/* 16-Feb-2009, tatu: To handle [JACKSON-53], need to block
             *   CGLib-provided method "getCallbacks". Not sure of exact
             *   safe criteria to get decent coverage without false matches;
             *   but for now let's assume there's no reason to use any 
             *   such getter from CGLib.
             *   But let's try this approach...
             */
            if (bean_util_1_expr2_line_49) {
                if (isCglibGetCallbacks(am)) {
                    return null;
                }
            } else {
				int PROBE_START_LINE_53 = 58;
				String p_name_5851_line_53 = name;
				boolean bean_util_1_expr3_line_53 = "getMetaClass".equals(p_name_5851_line_53);
				int PROBE_END_LINE_53 = 58;
				if (bean_util_1_expr3_line_53) {
					if (isGroovyMetaClassGetter(am)) {
						return null;
					}
				}
			}
            int PROBE_START_LINE_59 = 61;
			boolean p_std_naming_5852_line_59 = stdNaming;
			String bean_util_1_expr4_line_59 = p_std_naming_5852_line_59
					? stdManglePropertyName(name, 3)
					: legacyManglePropertyName(name, 3);
			int PROBE_END_LINE_59 = 61;
			return bean_util_1_expr4_line_59;
        }
        return null;
    }

    /**
     * @since 2.5
     */
    public static String okNameForIsGetter(AnnotatedMethod am, String name,
            boolean stdNaming)
    {
        int PROBE_START_LINE_72 = 79;
		String p_name_5854_line_72 = name;
		boolean bean_util_1_expr7_line_72 = p_name_5854_line_72.startsWith("is");
		int PROBE_END_LINE_72 = 79;
		if (bean_util_1_expr7_line_72) { // plus, must return a boolean
            Class<?> rt = am.getRawType();
            if (rt == Boolean.class || rt == Boolean.TYPE) {
                return stdNaming
                        ? stdManglePropertyName(name, 2)
                        : legacyManglePropertyName(name, 2);
            }
        }
        return null;
    }

    /**
     * @since 2.5
     */
    @Deprecated // since 2.9, not used any more
    public static String okNameForSetter(AnnotatedMethod am, boolean stdNaming) {
        String name = okNameForMutator(am, "set", stdNaming);
        if ((name != null) 
            // 26-Nov-2009, tatu: need to suppress this internal groovy method
                && (!"metaClass".equals(name) || !isGroovyMetaClassSetter(am))) {
            return name;
        }
        return null;
    }

    /**
     * @since 2.5
     */
    public static String okNameForMutator(AnnotatedMethod am, String prefix,
            boolean stdNaming) {
        int PROBE_START_LINE_102 = 102;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_5858_line_102 = am;
				String bean_util_1_expr8_line_102 = p_am_5858_line_102.getName();
				int PROBE_END_LINE_102 = 102;
		String name = bean_util_1_expr8_line_102;
        int PROBE_START_LINE_103 = 107;
		String v_name_5861_line_103 = name;
		String p_prefix_5859_line_103 = prefix;
		boolean bean_util_1_expr9_line_103 = v_name_5861_line_103.startsWith(p_prefix_5859_line_103);
		int PROBE_END_LINE_103 = 107;
		if (bean_util_1_expr9_line_103) {
            int PROBE_START_LINE_104 = 106;
			boolean p_std_naming_5860_line_104 = stdNaming;
			String bean_util_1_expr10_line_104 = p_std_naming_5860_line_104
					? stdManglePropertyName(name, prefix.length())
					: legacyManglePropertyName(name, prefix.length());
			int PROBE_END_LINE_104 = 106;
			return bean_util_1_expr10_line_104;
        }
        return null;
    }

    /*
    /**********************************************************
    /* Value defaulting helpers
    /**********************************************************
     */
    
    /**
     * Accessor used to find out "default value" to use for comparing values to
     * serialize, to determine whether to exclude value from serialization with
     * inclusion type of {@link com.fasterxml.jackson.annotation.JsonInclude.Include#NON_DEFAULT}.
     *<p>
     * Default logic is such that for primitives and wrapper types for primitives, expected
     * defaults (0 for `int` and `java.lang.Integer`) are returned; for Strings, empty String,
     * and for structured (Maps, Collections, arrays) and reference types, criteria
     * {@link com.fasterxml.jackson.annotation.JsonInclude.Include#NON_DEFAULT}
     * is used.
     *
     * @since 2.7
     */
    public static Object getDefaultValue(JavaType type)
    {
        // 06-Nov-2015, tatu: Returning null is fine for Object types; but need special
        //   handling for primitives since they are never passed as nulls.
        Class<?> cls = type.getRawClass();

        // 30-Sep-2016, tatu: Also works for Wrappers, so both `Integer.TYPE` and `Integer.class`
        //    would return `Integer.TYPE`
        Class<?> prim = ClassUtil.primitiveType(cls);
        if (prim != null) {
            return ClassUtil.defaultValue(prim);
        }
        if (type.isContainerType() || type.isReferenceType()) {
            return JsonInclude.Include.NON_EMPTY;
        }
        if (cls == String.class) {
            return "";
        }
        // 09-Mar-2016, tatu: Not sure how far this path we want to go but for now
        //   let's add `java.util.Date` and `java.util.Calendar`, as per [databind#1550]
        if (type.isTypeOrSubTypeOf(Date.class)) {
            return new Date(0L);
        }
        if (type.isTypeOrSubTypeOf(Calendar.class)) {
            Calendar c = new GregorianCalendar();
            c.setTimeInMillis(0L);
            return c;
        }
        return null;
    }

    /*
    /**********************************************************
    /* Special case handling
    /**********************************************************
     */

    /**
     * This method was added to address the need to weed out
     * CGLib-injected "getCallbacks" method. 
     * At this point caller has detected a potential getter method
     * with name "getCallbacks" and we need to determine if it is
     * indeed injectect by Cglib. We do this by verifying that the
     * result type is "net.sf.cglib.proxy.Callback[]"
     */
    protected static boolean isCglibGetCallbacks(AnnotatedMethod am)
    {
        Class<?> rt = am.getRawType();
        // Ok, first: must return an array type
        if (rt.isArray()) {
            /* And that type needs to be "net.sf.cglib.proxy.Callback".
             * Theoretically could just be a type that implements it, but
             * for now let's keep things simple, fix if need be.
             */
            Class<?> compType = rt.getComponentType();
            // Actually, let's just verify it's a "net.sf.cglib.*" class/interface
            String pkgName = ClassUtil.getPackageName(compType);
            if (pkgName != null) {
                if (pkgName.contains(".cglib")) {
                    return pkgName.startsWith("net.sf.cglib")
                        // also, as per [JACKSON-177]
                        || pkgName.startsWith("org.hibernate.repackage.cglib")
                        // and [core#674]
                        || pkgName.startsWith("org.springframework.cglib");
                }
            }
        }
        return false;
    }

    /**
     * Similar to {@link #isCglibGetCallbacks}, need to suppress
     * a cyclic reference.
     */
    protected static boolean isGroovyMetaClassSetter(AnnotatedMethod am)
    {
        Class<?> argType = am.getRawParameterType(0);
        String pkgName = ClassUtil.getPackageName(argType);
        return (pkgName != null) && pkgName.startsWith("groovy.lang");
    }

    /**
     * Another helper method to deal with Groovy's problematic metadata accessors
     */
    protected static boolean isGroovyMetaClassGetter(AnnotatedMethod am)
    {
        String pkgName = ClassUtil.getPackageName(am.getRawType());
        return (pkgName != null) && pkgName.startsWith("groovy.lang");
    }

    /*
    /**********************************************************
    /* Actual name mangling methods
    /**********************************************************
     */

    /**
     * Method called to figure out name of the property, given 
     * corresponding suggested name based on a method or field name.
     *
     * @param basename Name of accessor/mutator method, not including prefix
     *  ("get"/"is"/"set")
     */
    protected static String legacyManglePropertyName(final String basename, final int offset)
    {
        int PROBE_START_LINE_235 = 235;
		String p_basename_5866_line_235 = basename;
		int bean_util_1_expr13_line_235 = p_basename_5866_line_235.length();
		int PROBE_END_LINE_235 = 235;
		final int end = bean_util_1_expr13_line_235;
        int PROBE_START_LINE_236 = 238;
		int v_end_5868_line_236 = end;
		int p_offset_5867_line_236 = offset;
		boolean bean_util_1_expr14_line_236 = v_end_5868_line_236 == p_offset_5867_line_236;
		int PROBE_END_LINE_236 = 238;
		if (bean_util_1_expr14_line_236) { // empty name, nope
            return null;
        }
        int PROBE_START_LINE_240 = 240;
		String p_basename_5866_line_240 = basename;
		int p_offset_5867_line_240 = offset;
		char bean_util_1_expr15_line_240 = p_basename_5866_line_240.charAt(p_offset_5867_line_240);
		int PROBE_END_LINE_240 = 240;
		// next check: is the first character upper case? If not, return as is
        char c = bean_util_1_expr15_line_240;
        int PROBE_START_LINE_241 = 241;
		char v_c_5869_line_241 = c;
		char bean_util_1_expr16_line_241 = Character.toLowerCase(v_c_5869_line_241);
		int PROBE_END_LINE_241 = 241;
		char d = bean_util_1_expr16_line_241;
        
        int PROBE_START_LINE_243 = 245;
		char v_c_5869_line_243 = c;
		char v_d_5870_line_243 = d;
		boolean bean_util_1_expr17_line_243 = v_c_5869_line_243 == v_d_5870_line_243;
		int PROBE_END_LINE_243 = 245;
		if (bean_util_1_expr17_line_243) {
            int PROBE_START_LINE_244 = 244;
			String p_basename_5866_line_244 = basename;
			int p_offset_5867_line_244 = offset;
			String bean_util_1_expr18_line_244 = p_basename_5866_line_244.substring(p_offset_5867_line_244);
			int PROBE_END_LINE_244 = 244;
			return bean_util_1_expr18_line_244;
        }
        int PROBE_START_LINE_247 = 247;
		int v_end_5868_line_247 = end;
		int p_offset_5867_line_247 = offset;
		int bean_util_1_expr20_line_247 = v_end_5868_line_247 - p_offset_5867_line_247;
		int PROBE_END_LINE_247 = 247;
		// otherwise, lower case initial chars. Common case first, just one char
        StringBuilder sb = new StringBuilder(bean_util_1_expr20_line_247);
        int PROBE_START_LINE_248 = 248;
		StringBuilder v_sb_5871_line_248 = sb;
		char v_d_5870_line_248 = d;
		int PROBE_END_LINE_248 = 248;
		v_sb_5871_line_248.append(v_d_5870_line_248);
        int PROBE_START_LINE_249 = 249;
		int p_offset_5867_line_249 = offset;
		int bean_util_1_expr22_line_249 = p_offset_5867_line_249 + 1;
		int PROBE_END_LINE_249 = 249;
		int i = bean_util_1_expr22_line_249;
        for (; true; ++i) {
            int PROBE_START_LINE_251 = 251;
			int v_i_5872_line_250 = i;
			int v_end_5868_line_250 = end;
			boolean bean_util_1_expr23_line_250 = v_i_5872_line_250 < v_end_5868_line_250;
			if (!(bean_util_1_expr23_line_250)) {
				break;
			}
			String p_basename_5866_line_251 = basename;
			int v_i_5872_line_251 = i;
			char bean_util_1_expr26_line_251 = p_basename_5866_line_251.charAt(v_i_5872_line_251);
			int PROBE_END_LINE_251 = 251;
			c = bean_util_1_expr26_line_251;
            int PROBE_START_LINE_252 = 252;
			char v_c_5869_line_252 = c;
			char bean_util_1_expr28_line_252 = Character.toLowerCase(v_c_5869_line_252);
			int PROBE_END_LINE_252 = 252;
			d = bean_util_1_expr28_line_252;
            int PROBE_START_LINE_253 = 256;
			char v_c_5869_line_253 = c;
			char v_d_5870_line_253 = d;
			boolean bean_util_1_expr29_line_253 = v_c_5869_line_253 == v_d_5870_line_253;
			int PROBE_END_LINE_253 = 256;
			if (bean_util_1_expr29_line_253) {
                int PROBE_START_LINE_254 = 254;
				StringBuilder v_sb_5871_line_254 = sb;
				String p_basename_5866_line_254 = basename;
				int v_i_5872_line_254 = i;
				int v_end_5868_line_254 = end;
				int PROBE_END_LINE_254 = 254;
				v_sb_5871_line_254.append(p_basename_5866_line_254, v_i_5872_line_254, v_end_5868_line_254);
                break;
            }
            sb.append(d);
        }
        int PROBE_START_LINE_259 = 259;
		StringBuilder v_sb_5871_line_259 = sb;
		String bean_util_1_expr31_line_259 = v_sb_5871_line_259.toString();
		int PROBE_END_LINE_259 = 259;
		return bean_util_1_expr31_line_259;
    }

    /**
     * @since 2.5
     */
    protected static String stdManglePropertyName(final String basename, final int offset)
    {
        final int end = basename.length();
        if (end == offset) { // empty name, nope
            return null;
        }
        // first: if it doesn't start with capital, return as-is
        char c0 = basename.charAt(offset);
        char c1 = Character.toLowerCase(c0);
        if (c0 == c1) {
            return basename.substring(offset);
        }
        // 17-Dec-2014, tatu: As per [databind#653], need to follow more
        //   closely Java Beans spec; specifically, if two first are upper-case,
        //   then no lower-casing should be done.
        if ((offset + 1) < end) {
            if (Character.isUpperCase(basename.charAt(offset+1))) {
                return basename.substring(offset);
            }
        }
        StringBuilder sb = new StringBuilder(end - offset);
        sb.append(c1);
        sb.append(basename, offset+1, end);
        return sb.toString();
    }
}
