package com.fasterxml.jackson.databind.util;

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
        int PROBE_START_LINE_35 = 56;
		String p_name_4167_line_35 = name;
		boolean bean_util_1_expr1_line_35 = p_name_4167_line_35.startsWith("get");
		int PROBE_END_LINE_35 = 56;
		if (bean_util_1_expr1_line_35) {
            /* 16-Feb-2009, tatu: To handle [JACKSON-53], need to block
             *   CGLib-provided method "getCallbacks". Not sure of exact
             *   safe criteria to get decent coverage without false matches;
             *   but for now let's assume there's no reason to use any 
             *   such getter from CGLib.
             *   But let's try this approach...
             */
            if ("getCallbacks".equals(name)) {
                if (isCglibGetCallbacks(am)) {
                    return null;
                }
            } else if ("getMetaClass".equals(name)) {
                // 30-Apr-2009, tatu: Need to suppress serialization of a cyclic reference
                if (isGroovyMetaClassGetter(am)) {
                    return null;
                }
            }
            return stdNaming
                    ? stdManglePropertyName(name, 3)
                    : legacyManglePropertyName(name, 3);
        }
        return null;
    }

    /**
     * @since 2.5
     */
    public static String okNameForIsGetter(AnnotatedMethod am, String name,
            boolean stdNaming)
    {
        int PROBE_START_LINE_66 = 73;
		String p_name_4170_line_66 = name;
		boolean bean_util_1_expr2_line_66 = p_name_4170_line_66.startsWith("is");
		int PROBE_END_LINE_66 = 73;
		if (bean_util_1_expr2_line_66) { // plus, must return a boolean
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
        int PROBE_START_LINE_95 = 95;
				com.fasterxml.jackson.databind.introspect.AnnotatedMethod p_am_4174_line_95 = am;
				String bean_util_1_expr3_line_95 = p_am_4174_line_95.getName();
				int PROBE_END_LINE_95 = 95;
		String name = bean_util_1_expr3_line_95;
        int PROBE_START_LINE_96 = 100;
		String v_name_4177_line_96 = name;
		String p_prefix_4175_line_96 = prefix;
		boolean bean_util_1_expr4_line_96 = v_name_4177_line_96.startsWith(p_prefix_4175_line_96);
		int PROBE_END_LINE_96 = 100;
		if (bean_util_1_expr4_line_96) {
            return stdNaming
                    ? stdManglePropertyName(name, prefix.length())
                    : legacyManglePropertyName(name, prefix.length());
        }
        return null;
    }

    /*
    /**********************************************************
    /* Handling property names, deprecated methods
    /**********************************************************
     */

    @Deprecated // since 2.5
    public static String okNameForGetter(AnnotatedMethod am) {
        return okNameForGetter(am, false);
    }

    @Deprecated // since 2.5
    public static String okNameForRegularGetter(AnnotatedMethod am, String name) {
        return okNameForRegularGetter(am, name, false);
    }

    @Deprecated // since 2.5
    public static String okNameForIsGetter(AnnotatedMethod am, String name) {
        return okNameForIsGetter(am, name, false);
    }

    @Deprecated // since 2.5
    public static String okNameForSetter(AnnotatedMethod am) {
        return okNameForSetter(am, false);
    }

    @Deprecated // since 2.5
    public static String okNameForMutator(AnnotatedMethod am, String prefix) {
        return okNameForMutator(am, prefix, false);
    }

    /*
    /**********************************************************
    /* Special case handling
    /**********************************************************
     */

    /**
     * This method was added to address [JACKSON-53]: need to weed out
     * CGLib-injected "getCallbacks". 
     * At this point caller has detected a potential getter method
     * with name "getCallbacks" and we need to determine if it is
     * indeed injectect by Cglib. We do this by verifying that the
     * result type is "net.sf.cglib.proxy.Callback[]"
     */
    protected static boolean isCglibGetCallbacks(AnnotatedMethod am)
    {
        Class<?> rt = am.getRawType();
        // Ok, first: must return an array type
        if (rt == null || !rt.isArray()) {
            return false;
        }
        /* And that type needs to be "net.sf.cglib.proxy.Callback".
         * Theoretically could just be a type that implements it, but
         * for now let's keep things simple, fix if need be.
         */
        Class<?> compType = rt.getComponentType();
        // Actually, let's just verify it's a "net.sf.cglib.*" class/interface
        Package pkg = compType.getPackage();
        if (pkg != null) {
            String pname = pkg.getName();
            if (pname.contains(".cglib")) {
                if (pname.startsWith("net.sf.cglib")
                    // also, as per [JACKSON-177]
                    || pname.startsWith("org.hibernate.repackage.cglib")
                    // and [core#674]
                    || pname.startsWith("org.springframework.cglib")
                        ) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * Similar to {@link #isCglibGetCallbacks}, need to suppress
     * a cyclic reference to resolve [JACKSON-103]
     */
    protected static boolean isGroovyMetaClassSetter(AnnotatedMethod am)
    {
        Class<?> argType = am.getRawParameterType(0);
        Package pkg = argType.getPackage();
        if (pkg != null && pkg.getName().startsWith("groovy.lang")) {
            return true;
        }
        return false;
    }

    /**
     * Another helper method to deal with rest of [JACKSON-103]
     */
    protected static boolean isGroovyMetaClassGetter(AnnotatedMethod am)
    {
        Class<?> rt = am.getRawType();
        if (rt == null || rt.isArray()) {
            return false;
        }
        Package pkg = rt.getPackage();
        if (pkg != null && pkg.getName().startsWith("groovy.lang")) {
            return true;
        }
        return false;
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
        final int end = basename.length();
        if (end == offset) { // empty name, nope
            return null;
        }
        // otherwise, lower case initial chars
        StringBuilder sb = null;
        for (int i = offset; i < end; ++i) {
            char upper = basename.charAt(i);
            char lower = Character.toLowerCase(upper);
            if (upper == lower) {
                break;
            }
            if (sb == null) {
                int l = end-offset;
                sb = new StringBuilder(l);
                sb.append(basename, offset, end);
            }
            sb.setCharAt(i-offset, lower);
        }
        return (sb == null) ? basename.substring(offset) : sb.toString();
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
