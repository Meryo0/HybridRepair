package com.fasterxml.jackson.databind.jsontype.impl;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;

/**
 * Helper class used to encapsulate rules that determine subtypes that
 * are invalid to use, even with default typing, mostly due to security
 * concerns.
 * Used by <code>BeanDeserializerFacotry</code>
 *
 * @since 2.8.11
 */
public class SubTypeValidator
{
    protected final static String PREFIX_STRING = "org.springframework.";
    /**
     * Set of well-known "nasty classes", deserialization of which is considered dangerous
     * and should (and is) prevented by default.
     */
    protected final static Set<String> DEFAULT_NO_DESER_CLASS_NAMES;
    static {
        Set<String> s = new HashSet<String>();
        int PROBE_START_LINE_31 = 31;
		Set<String> v_s_3675_line_31 = s;
		int PROBE_END_LINE_31 = 31;
		// Courtesy of [https://github.com/kantega/notsoserial]:
        // (and wrt [databind#1599])
        v_s_3675_line_31.add("org.apache.commons.collections.functors.InvokerTransformer");
        int PROBE_START_LINE_32 = 32;
		Set<String> v_s_3675_line_32 = s;
		int PROBE_END_LINE_32 = 32;
		v_s_3675_line_32.add("org.apache.commons.collections.functors.InstantiateTransformer");
        int PROBE_START_LINE_33 = 33;
		Set<String> v_s_3675_line_33 = s;
		int PROBE_END_LINE_33 = 33;
		v_s_3675_line_33.add("org.apache.commons.collections4.functors.InvokerTransformer");
        int PROBE_START_LINE_34 = 34;
		Set<String> v_s_3675_line_34 = s;
		int PROBE_END_LINE_34 = 34;
		v_s_3675_line_34.add("org.apache.commons.collections4.functors.InstantiateTransformer");
        int PROBE_START_LINE_35 = 35;
		Set<String> v_s_3675_line_35 = s;
		int PROBE_END_LINE_35 = 35;
		v_s_3675_line_35.add("org.codehaus.groovy.runtime.ConvertedClosure");
        int PROBE_START_LINE_36 = 36;
		Set<String> v_s_3675_line_36 = s;
		int PROBE_END_LINE_36 = 36;
		v_s_3675_line_36.add("org.codehaus.groovy.runtime.MethodClosure");
        int PROBE_START_LINE_37 = 37;
		Set<String> v_s_3675_line_37 = s;
		int PROBE_END_LINE_37 = 37;
		v_s_3675_line_37.add("org.springframework.beans.factory.ObjectFactory");
        int PROBE_START_LINE_38 = 38;
		Set<String> v_s_3675_line_38 = s;
		int PROBE_END_LINE_38 = 38;
		v_s_3675_line_38.add("com.sun.org.apache.xalan.internal.xsltc.trax.TemplatesImpl");
        int PROBE_START_LINE_39 = 39;
		Set<String> v_s_3675_line_39 = s;
		int PROBE_END_LINE_39 = 39;
		v_s_3675_line_39.add("org.apache.xalan.xsltc.trax.TemplatesImpl");
        int PROBE_START_LINE_41 = 41;
		Set<String> v_s_3675_line_41 = s;
		int PROBE_END_LINE_41 = 41;
		// [databind#1680]: may or may not be problem, take no chance
        v_s_3675_line_41.add("com.sun.rowset.JdbcRowSetImpl");
        int PROBE_START_LINE_43 = 43;
		Set<String> v_s_3675_line_43 = s;
		int PROBE_END_LINE_43 = 43;
		// [databind#1737]; JDK provided
        v_s_3675_line_43.add("java.util.logging.FileHandler");
        int PROBE_START_LINE_44 = 44;
		Set<String> v_s_3675_line_44 = s;
		int PROBE_END_LINE_44 = 44;
		v_s_3675_line_44.add("java.rmi.server.UnicastRemoteObject");
        int PROBE_START_LINE_47 = 47;
		Set<String> v_s_3675_line_47 = s;
		int PROBE_END_LINE_47 = 47;
		// [databind#1737]; 3rd party
//s.add("org.springframework.aop.support.AbstractBeanFactoryPointcutAdvisor"); // deprecated by [databind#1855]
        v_s_3675_line_47.add("org.springframework.beans.factory.config.PropertyPathFactoryBean");
        int PROBE_START_LINE_48 = 48;
		Set<String> v_s_3675_line_48 = s;
		int PROBE_END_LINE_48 = 48;
		v_s_3675_line_48.add("com.mchange.v2.c3p0.JndiRefForwardingDataSource");
        int PROBE_START_LINE_49 = 49;
		Set<String> v_s_3675_line_49 = s;
		int PROBE_END_LINE_49 = 49;
		v_s_3675_line_49.add("com.mchange.v2.c3p0.WrapperConnectionPoolDataSource");
        int PROBE_START_LINE_51 = 51;
		Set<String> v_s_3675_line_51 = s;
		int PROBE_END_LINE_51 = 51;
		// [databind#1855]: more 3rd party
        v_s_3675_line_51.add("org.apache.tomcat.dbcp.dbcp2.BasicDataSource");
        int PROBE_START_LINE_52 = 52;
		Set<String> v_s_3675_line_52 = s;
		int PROBE_END_LINE_52 = 52;
		v_s_3675_line_52.add("com.sun.org.apache.bcel.internal.util.ClassLoader");
        int PROBE_START_LINE_53 = 53;
		Set<String> v_s_3675_line_53 = s;
		Set<String> sub_type_validator_1_expr20_line_53 = Collections.unmodifiableSet(v_s_3675_line_53);
		int PROBE_END_LINE_53 = 53;
		DEFAULT_NO_DESER_CLASS_NAMES = sub_type_validator_1_expr20_line_53;
    }

    int PROBE_START_LINE_56 = 59;

	protected Set<String> f_default_no_deser_class_names_3676_line_59 = DEFAULT_NO_DESER_CLASS_NAMES;

	int PROBE_END_LINE_56 = 59;

	/**
     * Set of class names of types that are never to be deserialized.
     */
    protected Set<String> _cfgIllegalClassNames = f_default_no_deser_class_names_3676_line_59;

    private final static SubTypeValidator instance = new SubTypeValidator();

    protected SubTypeValidator() { }

    public static SubTypeValidator instance() { int PROBE_START_LINE_65 = 65;
		com.fasterxml.jackson.databind.jsontype.impl.SubTypeValidator f_instance_3678_line_65 = instance;
		int PROBE_END_LINE_65 = 65;
	return f_instance_3678_line_65; }

    public void validateSubType(DeserializationContext ctxt, JavaType type) throws JsonMappingException
    {
        int PROBE_START_LINE_71 = 71;
		com.fasterxml.jackson.databind.JavaType p_type_3680_line_71 = type;
		Class<?> sub_type_validator_1_expr22_line_71 = p_type_3680_line_71.getRawClass();
		int PROBE_END_LINE_71 = 71;
		// There are certain nasty classes that could cause problems, mostly
        // via default typing -- catch them here.
        final Class<?> raw = sub_type_validator_1_expr22_line_71;
        int PROBE_START_LINE_72 = 72;
		Class<?> v_raw_3681_line_72 = raw;
		String sub_type_validator_1_expr23_line_72 = v_raw_3681_line_72.getName();
		int PROBE_END_LINE_72 = 72;
		String full = sub_type_validator_1_expr23_line_72;

        main_check:
        do {
            int PROBE_START_LINE_76 = 78;
			Set<String> f__cfg_illegal_class_names_3677_line_76 = _cfgIllegalClassNames;
			String v_full_3682_line_76 = full;
			boolean sub_type_validator_1_expr24_line_76 = f__cfg_illegal_class_names_3677_line_76
					.contains(v_full_3682_line_76);
			int PROBE_END_LINE_76 = 78;
			if (sub_type_validator_1_expr24_line_76) {
                break;
            }

            int PROBE_START_LINE_83 = 93;
			String v_full_3682_line_83 = full;
			String f_prefix_string_3683_line_83 = PREFIX_STRING;
			boolean sub_type_validator_1_expr25_line_83 = v_full_3682_line_83.startsWith(f_prefix_string_3683_line_83);
			// 18-Dec-2017, tatu: As per [databind#1855], need bit more sophisticated handling
            //    for some Spring framework types
            // 05-Jan-2017, tatu: ... also, only applies to classes, not interfaces
            if (sub_type_validator_1_expr25_line_83) {
                boolean FOR_STMT_TOGGLE_LINE_84 = false;
				int PROBE_END_LINE_83 = 83;
				for (Class<?> cls = null; true;) {
                    int PROBE_START_LINE_85 = 85;
					if (!FOR_STMT_TOGGLE_LINE_84) {
						FOR_STMT_TOGGLE_LINE_84 = true;
						Class<?> v_raw_3681_line_84 = raw;
						cls = v_raw_3681_line_84;
					} else {
						if (FOR_STMT_TOGGLE_LINE_84) {
							Class<?> v_cls_3684_line_84_v1 = cls;
							Class<?> sub_type_validator_1_expr30_line_84 = v_cls_3684_line_84_v1.getSuperclass();
							cls = sub_type_validator_1_expr30_line_84;
						} else {
							FOR_STMT_TOGGLE_LINE_84 = true;
						}
					}
					Class<?> v_cls_3684_line_84 = cls;
					boolean sub_type_validator_1_expr27_line_84 = v_cls_3684_line_84 != Object.class;
					if (!(sub_type_validator_1_expr27_line_84)) {
						break;
					}
					Class<?> v_cls_3684_line_85 = cls;
					String sub_type_validator_1_expr31_line_85 = v_cls_3684_line_85.getSimpleName();
					int PROBE_END_LINE_85 = 85;
					String name = sub_type_validator_1_expr31_line_85;
                    int PROBE_START_LINE_87 = 91;
					String v_name_3685_line_87 = name;
					boolean sub_type_validator_1_expr33_line_87 = "AbstractPointcutAdvisor".equals(v_name_3685_line_87);
					boolean sub_type_validator_1_expr32_line_87 = sub_type_validator_1_expr33_line_87
							|| "AbstractApplicationContext".equals(name);
					int PROBE_END_LINE_87 = 91;
					// looking for "AbstractBeanFactoryPointcutAdvisor" but no point to allow any is there?
                    if (sub_type_validator_1_expr32_line_87) {
                        break main_check;
                    }
                }
            }
            return;
        } while (false);

        throw JsonMappingException.from(ctxt,
                String.format("Illegal type (%s) to deserialize: prevented for security reasons", full));
    }
}
