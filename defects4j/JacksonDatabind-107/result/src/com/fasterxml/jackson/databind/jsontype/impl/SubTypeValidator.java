package com.fasterxml.jackson.databind.jsontype.impl;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import com.fasterxml.jackson.databind.BeanDescription;
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
    protected final static String PREFIX_SPRING = "org.springframework.";

    protected final static String PREFIX_C3P0 = "com.mchange.v2.c3p0.";

    /**
     * Set of well-known "nasty classes", deserialization of which is considered dangerous
     * and should (and is) prevented by default.
     */
    protected final static Set<String> DEFAULT_NO_DESER_CLASS_NAMES;
    static {
        Set<String> s = new HashSet<String>();
        int PROBE_START_LINE_35 = 35;
		Set<String> v_s_4669_line_35 = s;
		int PROBE_END_LINE_35 = 35;
		// Courtesy of [https://github.com/kantega/notsoserial]:
        // (and wrt [databind#1599])
        v_s_4669_line_35.add("org.apache.commons.collections.functors.InvokerTransformer");
        int PROBE_START_LINE_36 = 36;
		Set<String> v_s_4669_line_36 = s;
		int PROBE_END_LINE_36 = 36;
		v_s_4669_line_36.add("org.apache.commons.collections.functors.InstantiateTransformer");
        int PROBE_START_LINE_37 = 37;
		Set<String> v_s_4669_line_37 = s;
		int PROBE_END_LINE_37 = 37;
		v_s_4669_line_37.add("org.apache.commons.collections4.functors.InvokerTransformer");
        int PROBE_START_LINE_38 = 38;
		Set<String> v_s_4669_line_38 = s;
		int PROBE_END_LINE_38 = 38;
		v_s_4669_line_38.add("org.apache.commons.collections4.functors.InstantiateTransformer");
        int PROBE_START_LINE_39 = 39;
		Set<String> v_s_4669_line_39 = s;
		int PROBE_END_LINE_39 = 39;
		v_s_4669_line_39.add("org.codehaus.groovy.runtime.ConvertedClosure");
        int PROBE_START_LINE_40 = 40;
		Set<String> v_s_4669_line_40 = s;
		int PROBE_END_LINE_40 = 40;
		v_s_4669_line_40.add("org.codehaus.groovy.runtime.MethodClosure");
        int PROBE_START_LINE_41 = 41;
		Set<String> v_s_4669_line_41 = s;
		int PROBE_END_LINE_41 = 41;
		v_s_4669_line_41.add("org.springframework.beans.factory.ObjectFactory");
        int PROBE_START_LINE_42 = 42;
		Set<String> v_s_4669_line_42 = s;
		int PROBE_END_LINE_42 = 42;
		v_s_4669_line_42.add("com.sun.org.apache.xalan.internal.xsltc.trax.TemplatesImpl");
        int PROBE_START_LINE_43 = 43;
		Set<String> v_s_4669_line_43 = s;
		int PROBE_END_LINE_43 = 43;
		v_s_4669_line_43.add("org.apache.xalan.xsltc.trax.TemplatesImpl");
        int PROBE_START_LINE_45 = 45;
		Set<String> v_s_4669_line_45 = s;
		int PROBE_END_LINE_45 = 45;
		// [databind#1680]: may or may not be problem, take no chance
        v_s_4669_line_45.add("com.sun.rowset.JdbcRowSetImpl");
        int PROBE_START_LINE_47 = 47;
		Set<String> v_s_4669_line_47 = s;
		int PROBE_END_LINE_47 = 47;
		// [databind#1737]; JDK provided
        v_s_4669_line_47.add("java.util.logging.FileHandler");
        int PROBE_START_LINE_48 = 48;
		Set<String> v_s_4669_line_48 = s;
		int PROBE_END_LINE_48 = 48;
		v_s_4669_line_48.add("java.rmi.server.UnicastRemoteObject");
        int PROBE_START_LINE_51 = 51;
		Set<String> v_s_4669_line_51 = s;
		int PROBE_END_LINE_51 = 51;
		// [databind#1737]; 3rd party
//s.add("org.springframework.aop.support.AbstractBeanFactoryPointcutAdvisor"); // deprecated by [databind#1855]
        v_s_4669_line_51.add("org.springframework.beans.factory.config.PropertyPathFactoryBean");

int PROBE_START_LINE_56 = 56;
		Set<String> v_s_4669_line_56 = s;
		int PROBE_END_LINE_56 = 56;
		// s.add("com.mchange.v2.c3p0.JndiRefForwardingDataSource"); // deprecated by [databind#1931]
// s.add("com.mchange.v2.c3p0.WrapperConnectionPoolDataSource"); // - "" -
        // [databind#1855]: more 3rd party
        v_s_4669_line_56.add("org.apache.tomcat.dbcp.dbcp2.BasicDataSource");
        int PROBE_START_LINE_57 = 57;
		Set<String> v_s_4669_line_57 = s;
		int PROBE_END_LINE_57 = 57;
		v_s_4669_line_57.add("com.sun.org.apache.bcel.internal.util.ClassLoader");
        int PROBE_START_LINE_59 = 59;
		Set<String> v_s_4669_line_59 = s;
		int PROBE_END_LINE_59 = 59;
		// [databind#1899]: more 3rd party
        v_s_4669_line_59.add("org.hibernate.jmx.StatisticsService");
        int PROBE_START_LINE_60 = 60;
		Set<String> v_s_4669_line_60 = s;
		int PROBE_END_LINE_60 = 60;
		v_s_4669_line_60.add("org.apache.ibatis.datasource.jndi.JndiDataSourceFactory");
        int PROBE_START_LINE_62 = 62;
		Set<String> v_s_4669_line_62 = s;
		int PROBE_END_LINE_62 = 62;
		// [databind#2032]: more 3rd party; data exfiltration via xml parsed ext entities
        v_s_4669_line_62.add("org.apache.ibatis.parsing.XPathParser");

        int PROBE_START_LINE_65 = 65;
		Set<String> v_s_4669_line_65 = s;
		int PROBE_END_LINE_65 = 65;
		// [databind#2052]: Jodd-db, with jndi/ldap lookup
        v_s_4669_line_65.add("jodd.db.connection.DataSourceConnectionProvider");

        int PROBE_START_LINE_68 = 68;
		Set<String> v_s_4669_line_68 = s;
		int PROBE_END_LINE_68 = 68;
		// [databind#2058]: Oracle JDBC driver, with jndi/ldap lookup
        v_s_4669_line_68.add("oracle.jdbc.connector.OracleManagedConnectionFactory");
        int PROBE_START_LINE_69 = 69;
		Set<String> v_s_4669_line_69 = s;
		int PROBE_END_LINE_69 = 69;
		v_s_4669_line_69.add("oracle.jdbc.rowset.OracleJDBCRowSet");

        int PROBE_START_LINE_72 = 72;
		Set<String> v_s_4669_line_72 = s;
		int PROBE_END_LINE_72 = 72;
		// [databind#2097]: some 3rd party, one JDK-bundled
        v_s_4669_line_72.add("org.slf4j.ext.EventData");
        int PROBE_START_LINE_73 = 73;
		Set<String> v_s_4669_line_73 = s;
		int PROBE_END_LINE_73 = 73;
		v_s_4669_line_73.add("flex.messaging.util.concurrent.AsynchBeansWorkManagerExecutor");
        int PROBE_START_LINE_74 = 74;
		Set<String> v_s_4669_line_74 = s;
		int PROBE_END_LINE_74 = 74;
		v_s_4669_line_74.add("com.sun.deploy.security.ruleset.DRSHelper");
        int PROBE_START_LINE_75 = 75;
		Set<String> v_s_4669_line_75 = s;
		int PROBE_END_LINE_75 = 75;
		v_s_4669_line_75.add("org.apache.axis2.jaxws.spi.handler.HandlerResolverImpl");

        int PROBE_START_LINE_78 = 78;
		Set<String> v_s_4669_line_78 = s;
		int PROBE_END_LINE_78 = 78;
		// [databind#2186]: yet more 3rd party gadgets
        v_s_4669_line_78.add("org.jboss.util.propertyeditor.DocumentEditor");
        int PROBE_START_LINE_79 = 79;
		Set<String> v_s_4669_line_79 = s;
		int PROBE_END_LINE_79 = 79;
		v_s_4669_line_79.add("org.apache.openjpa.ee.RegistryManagedRuntime");
        int PROBE_START_LINE_80 = 80;
		Set<String> v_s_4669_line_80 = s;
		int PROBE_END_LINE_80 = 80;
		v_s_4669_line_80.add("org.apache.openjpa.ee.JNDIManagedRuntime");
        int PROBE_START_LINE_81 = 81;
		Set<String> v_s_4669_line_81 = s;
		int PROBE_END_LINE_81 = 81;
		v_s_4669_line_81.add("org.apache.axis2.transport.jms.JMSOutTransportInfo");

        int PROBE_START_LINE_83 = 83;
		Set<String> v_s_4669_line_83 = s;
		Set<String> sub_type_validator_1_expr32_line_83 = Collections.unmodifiableSet(v_s_4669_line_83);
		int PROBE_END_LINE_83 = 83;
		DEFAULT_NO_DESER_CLASS_NAMES = sub_type_validator_1_expr32_line_83;
    }

    int PROBE_START_LINE_86 = 89;

	protected Set<String> f_default_no_deser_class_names_4670_line_89 = DEFAULT_NO_DESER_CLASS_NAMES;

	int PROBE_END_LINE_86 = 89;

	/**
     * Set of class names of types that are never to be deserialized.
     */
    protected Set<String> _cfgIllegalClassNames = f_default_no_deser_class_names_4670_line_89;

    private final static SubTypeValidator instance = new SubTypeValidator();

    protected SubTypeValidator() { }

    public static SubTypeValidator instance() { int PROBE_START_LINE_95 = 95;
		com.fasterxml.jackson.databind.jsontype.impl.SubTypeValidator f_instance_4672_line_95 = instance;
		int PROBE_END_LINE_95 = 95;
	return f_instance_4672_line_95; }

    public void validateSubType(DeserializationContext ctxt, JavaType type,
            BeanDescription beanDesc) throws JsonMappingException
    {
        int PROBE_START_LINE_102 = 102;
		com.fasterxml.jackson.databind.JavaType p_type_4674_line_102 = type;
		Class<?> sub_type_validator_1_expr34_line_102 = p_type_4674_line_102.getRawClass();
		int PROBE_END_LINE_102 = 102;
		// There are certain nasty classes that could cause problems, mostly
        // via default typing -- catch them here.
        final Class<?> raw = sub_type_validator_1_expr34_line_102;
        int PROBE_START_LINE_103 = 103;
		Class<?> v_raw_4676_line_103 = raw;
		String sub_type_validator_1_expr35_line_103 = v_raw_4676_line_103.getName();
		int PROBE_END_LINE_103 = 103;
		String full = sub_type_validator_1_expr35_line_103;

        main_check:
        do {
            int PROBE_START_LINE_107 = 109;
			Set<String> f__cfg_illegal_class_names_4671_line_107 = _cfgIllegalClassNames;
			String v_full_4677_line_107 = full;
			boolean sub_type_validator_1_expr36_line_107 = f__cfg_illegal_class_names_4671_line_107
					.contains(v_full_4677_line_107);
			int PROBE_END_LINE_107 = 109;
			if (sub_type_validator_1_expr36_line_107) {
                break;
            }

            int PROBE_START_LINE_114 = 136;
			Class<?> v_raw_4676_line_114 = raw;
			boolean sub_type_validator_1_expr37_line_114 = v_raw_4676_line_114.isInterface();
			int PROBE_END_LINE_114 = 136;
			// 18-Dec-2017, tatu: As per [databind#1855], need bit more sophisticated handling
            //    for some Spring framework types
            // 05-Jan-2017, tatu: ... also, only applies to classes, not interfaces
            if (sub_type_validator_1_expr37_line_114) {
                ;
            } else {
				int PROBE_START_LINE_116 = 136;
				String v_full_4677_line_116 = full;
				String f_prefix_spring_4678_line_116 = PREFIX_SPRING;
				boolean sub_type_validator_1_expr38_line_116 = v_full_4677_line_116
						.startsWith(f_prefix_spring_4678_line_116);
				int PROBE_END_LINE_116 = 136;
				if (sub_type_validator_1_expr38_line_116) {
					for (Class<?> cls = raw; (cls != null) && (cls != Object.class); cls = cls.getSuperclass()) {
						String name = cls.getSimpleName();
						if ("AbstractPointcutAdvisor".equals(name) || "AbstractApplicationContext".equals(name)) {
							break main_check;
						}
					}
				} else {
					int PROBE_START_LINE_126 = 136;
					String v_full_4677_line_126 = full;
					String f_prefix_c3p0_4679_line_126 = PREFIX_C3P0;
					boolean sub_type_validator_1_expr39_line_126 = v_full_4677_line_126
							.startsWith(f_prefix_c3p0_4679_line_126);
					int PROBE_END_LINE_126 = 136;
					if (sub_type_validator_1_expr39_line_126) {
						if (full.endsWith("DataSource")) {
							break main_check;
						}
					}
				}
			}
            return;
        } while (false);

        ctxt.reportBadTypeDefinition(beanDesc,
                "Illegal type (%s) to deserialize: prevented for security reasons", full);
    }
}
