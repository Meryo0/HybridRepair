package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.ser.Serializers;
import com.fasterxml.jackson.databind.JavaType;

/**
 * Helper class used for isolating details of handling optional+external types
 * (javax.xml classes) from standard factories that offer them.
 */
public class OptionalHandlerFactory implements java.io.Serializable
{
    private static final long serialVersionUID = 1;

    /* 1.6.1+ To make 2 main "optional" handler groups (javax.xml.stream)
     * more dynamic, we better only figure out handlers completely dynamically, if and
     * when they are needed. To do this we need to assume package prefixes.
     */
    private final static String PACKAGE_PREFIX_JAVAX_XML = "javax.xml.";

    private final static String SERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers";
    private final static String DESERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers";

    // Plus we also have a single serializer for DOM Node:
    private final static String CLASS_NAME_DOM_NODE = "org.w3c.dom.Node";
    private final static String CLASS_NAME_DOM_DOCUMENT = "org.w3c.dom.Node";
    private final static String SERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMSerializer";
    private final static String DESERIALIZER_FOR_DOM_DOCUMENT = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer";
    private final static String DESERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer";
    
    public final static OptionalHandlerFactory instance = new OptionalHandlerFactory();
    
    protected OptionalHandlerFactory() { }

    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */
    
    public JsonSerializer<?> findSerializer(SerializationConfig config, JavaType type,
            BeanDescription beanDesc)
    {
        Class<?> rawType = type.getRawClass();
        String className = rawType.getName();
        String factoryName;
        
        if (className.startsWith(PACKAGE_PREFIX_JAVAX_XML)
                || hasSupertypeStartingWith(rawType, PACKAGE_PREFIX_JAVAX_XML)) {
            factoryName = SERIALIZERS_FOR_JAVAX_XML;
        } else if (doesImplement(rawType, CLASS_NAME_DOM_NODE)) {
            return (JsonSerializer<?>) instantiate(SERIALIZER_FOR_DOM_NODE);
        } else {
            return null;
        }

        Object ob = instantiate(factoryName);
        if (ob == null) { // could warn, if we had logging system (j.u.l?)
            return null;
        }
        return ((Serializers) ob).findSerializer(config, type, beanDesc);
    }

    public JsonDeserializer<?> findDeserializer(JavaType type, DeserializationConfig config,
            BeanDescription beanDesc)
        throws JsonMappingException
    {
        int PROBE_START_LINE_68 = 68;
		com.fasterxml.jackson.databind.JavaType p_type_2486_line_68 = type;
		Class<?> optional_handler_factory_1_expr2_line_68 = p_type_2486_line_68.getRawClass();
		int PROBE_END_LINE_68 = 68;
		Class<?> rawType = optional_handler_factory_1_expr2_line_68;
        int PROBE_START_LINE_69 = 69;
		Class<?> v_raw_type_2489_line_69 = rawType;
		String optional_handler_factory_1_expr3_line_69 = v_raw_type_2489_line_69.getName();
		int PROBE_END_LINE_69 = 69;
		String className = optional_handler_factory_1_expr3_line_69;
        String factoryName;
        
        int PROBE_START_LINE_72 = 81;
		String v_class_name_2490_line_72 = className;
		String f_package_prefix_javax_xml_2491_line_72 = PACKAGE_PREFIX_JAVAX_XML;
		boolean optional_handler_factory_1_expr5_line_72 = v_class_name_2490_line_72
				.startsWith(f_package_prefix_javax_xml_2491_line_72);
		boolean optional_handler_factory_1_expr4_line_72 = optional_handler_factory_1_expr5_line_72
				|| hasSupertypeStartingWith(rawType, PACKAGE_PREFIX_JAVAX_XML);
		int PROBE_END_LINE_72 = 81;
		if (optional_handler_factory_1_expr4_line_72) {
            factoryName = DESERIALIZERS_FOR_JAVAX_XML;
        } else {
			int PROBE_START_LINE_75 = 81;
			Class<?> v_raw_type_2489_line_75 = rawType;
			String f_class_name_dom_document_2492_line_75 = CLASS_NAME_DOM_DOCUMENT;
			boolean optional_handler_factory_1_expr6_line_75 = doesImplement(v_raw_type_2489_line_75,
					f_class_name_dom_document_2492_line_75);
			int PROBE_END_LINE_75 = 81;
			if (optional_handler_factory_1_expr6_line_75) {
				return (JsonDeserializer<?>) instantiate(DESERIALIZER_FOR_DOM_DOCUMENT);
			} else {
				int PROBE_START_LINE_77 = 81;
				Class<?> v_raw_type_2489_line_77 = rawType;
				String f_class_name_dom_node_2493_line_77 = CLASS_NAME_DOM_NODE;
				boolean optional_handler_factory_1_expr7_line_77 = doesImplement(v_raw_type_2489_line_77,
						f_class_name_dom_node_2493_line_77);
				int PROBE_END_LINE_77 = 81;
				if (optional_handler_factory_1_expr7_line_77) {
					return (JsonDeserializer<?>) instantiate(DESERIALIZER_FOR_DOM_NODE);
				} else {
					return null;
				}
			}
		}
        Object ob = instantiate(factoryName);
        if (ob == null) { // could warn, if we had logging system (j.u.l?)
            return null;
        }
        return ((Deserializers) ob).findBeanDeserializer(type, config, beanDesc);
    }
    
    /*
    /**********************************************************
    /* Internal helper methods
    /**********************************************************
     */

    private Object instantiate(String className)
    {
        try {
            return Class.forName(className).newInstance();
        } catch (LinkageError e) { }
        // too many different kinds to enumerate here:
        catch (Exception e) { }
        return null;
    }
    
    private boolean doesImplement(Class<?> actualType, String classNameToImplement)
    {
        int PROBE_START_LINE_106 = 106;
		boolean FOR_STMT_TOGGLE_LINE_107 = false;
		int PROBE_END_LINE_106 = 106;
		for (Class<?> type = null; true;) {
            int PROBE_START_LINE_108 = 110;
			if (!FOR_STMT_TOGGLE_LINE_107) {
				FOR_STMT_TOGGLE_LINE_107 = true;
				Class<?> p_actual_type_2495_line_107 = actualType;
				type = p_actual_type_2495_line_107;
			} else {
				if (FOR_STMT_TOGGLE_LINE_107) {
					Class<?> v_type_2497_line_107_v1 = type;
					Class<?> optional_handler_factory_1_expr11_line_107 = v_type_2497_line_107_v1.getSuperclass();
					type = optional_handler_factory_1_expr11_line_107;
				} else {
					FOR_STMT_TOGGLE_LINE_107 = true;
				}
			}
			Class<?> v_type_2497_line_107 = type;
			boolean optional_handler_factory_1_expr9_line_107 = v_type_2497_line_107 != null;
			if (!(optional_handler_factory_1_expr9_line_107)) {
				break;
			}
			Class<?> v_type_2497_line_108 = type;
			String optional_handler_factory_1_expr13_line_108 = v_type_2497_line_108.getName();
			String p_class_name_to_implement_2496_line_108 = classNameToImplement;
			boolean optional_handler_factory_1_expr12_line_108 = optional_handler_factory_1_expr13_line_108
					.equals(p_class_name_to_implement_2496_line_108);
			int PROBE_END_LINE_108 = 110;
			if (optional_handler_factory_1_expr12_line_108) {
                return true;
            }
            int PROBE_START_LINE_112 = 114;
			Class<?> v_type_2497_line_112 = type;
			String p_class_name_to_implement_2496_line_112 = classNameToImplement;
			boolean optional_handler_factory_1_expr14_line_112 = hasInterface(v_type_2497_line_112,
					p_class_name_to_implement_2496_line_112);
			int PROBE_END_LINE_112 = 114;
			// or maybe one of super-interfaces
            if (optional_handler_factory_1_expr14_line_112) {
                return true;
            }
        }
        return false;
    }
        
    private boolean hasInterface(Class<?> type, String interfaceToImplement)
    {
        int PROBE_START_LINE_121 = 121;
		Class<?> p_type_2498_line_121 = type;
		Class<?>[] optional_handler_factory_1_expr15_line_121 = p_type_2498_line_121.getInterfaces();
		int PROBE_END_LINE_121 = 121;
		Class<?>[] interfaces = optional_handler_factory_1_expr15_line_121;
        int PROBE_START_LINE_122 = 126;
		Class<?>[] v_interfaces_2500_line_122 = interfaces;
		int PROBE_END_LINE_122 = 126;
		for (Class<?> iface : v_interfaces_2500_line_122) {
            if (iface.getName().equals(interfaceToImplement)) {
                return true;
            }
        }
        int PROBE_START_LINE_128 = 132;
		Class<?>[] v_interfaces_2500_line_128 = interfaces;
		int PROBE_END_LINE_128 = 132;
		// maybe super-interface?
        for (Class<?> iface : v_interfaces_2500_line_128) {
            if (hasInterface(iface, interfaceToImplement)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasSupertypeStartingWith(Class<?> rawType, String prefix)
    {
        int PROBE_START_LINE_138 = 138;
		boolean FOR_STMT_TOGGLE_LINE_139 = false;
		int PROBE_END_LINE_138 = 138;
		// first, superclasses
        for (Class<?> supertype = null; true;) {
            int PROBE_START_LINE_140 = 142;
			if (!FOR_STMT_TOGGLE_LINE_139) {
				FOR_STMT_TOGGLE_LINE_139 = true;
				Class<?> p_raw_type_2503_line_139 = rawType;
				Class<?> optional_handler_factory_1_expr17_line_139 = p_raw_type_2503_line_139.getSuperclass();
				supertype = optional_handler_factory_1_expr17_line_139;
			} else {
				if (FOR_STMT_TOGGLE_LINE_139) {
					Class<?> v_supertype_2505_line_139_v1 = supertype;
					Class<?> optional_handler_factory_1_expr20_line_139 = v_supertype_2505_line_139_v1.getSuperclass();
					supertype = optional_handler_factory_1_expr20_line_139;
				} else {
					FOR_STMT_TOGGLE_LINE_139 = true;
				}
			}
			Class<?> v_supertype_2505_line_139 = supertype;
			boolean optional_handler_factory_1_expr18_line_139 = v_supertype_2505_line_139 != null;
			if (!(optional_handler_factory_1_expr18_line_139)) {
				break;
			}
			Class<?> v_supertype_2505_line_140 = supertype;
			String optional_handler_factory_1_expr22_line_140 = v_supertype_2505_line_140.getName();
			String p_prefix_2504_line_140 = prefix;
			boolean optional_handler_factory_1_expr21_line_140 = optional_handler_factory_1_expr22_line_140
					.startsWith(p_prefix_2504_line_140);
			int PROBE_END_LINE_140 = 142;
			if (optional_handler_factory_1_expr21_line_140) {
                return true;
            }
        }
        int PROBE_START_LINE_144 = 144;
		boolean FOR_STMT_TOGGLE_LINE_145 = false;
		int PROBE_END_LINE_144 = 144;
		// then interfaces
        for (Class<?> cls = null; true;) {
            int PROBE_START_LINE_146 = 148;
			if (!FOR_STMT_TOGGLE_LINE_145) {
				FOR_STMT_TOGGLE_LINE_145 = true;
				Class<?> p_raw_type_2503_line_145 = rawType;
				cls = p_raw_type_2503_line_145;
			} else {
				if (FOR_STMT_TOGGLE_LINE_145) {
					Class<?> v_cls_2506_line_145_v1 = cls;
					Class<?> optional_handler_factory_1_expr26_line_145 = v_cls_2506_line_145_v1.getSuperclass();
					cls = optional_handler_factory_1_expr26_line_145;
				} else {
					FOR_STMT_TOGGLE_LINE_145 = true;
				}
			}
			Class<?> v_cls_2506_line_145 = cls;
			boolean optional_handler_factory_1_expr24_line_145 = v_cls_2506_line_145 != null;
			if (!(optional_handler_factory_1_expr24_line_145)) {
				break;
			}
			Class<?> v_cls_2506_line_146 = cls;
			String p_prefix_2504_line_146 = prefix;
			boolean optional_handler_factory_1_expr27_line_146 = hasInterfaceStartingWith(v_cls_2506_line_146,
					p_prefix_2504_line_146);
			int PROBE_END_LINE_146 = 148;
			if (optional_handler_factory_1_expr27_line_146) {
                return true;
            }
        }
        return false;
    }

    private boolean hasInterfaceStartingWith(Class<?> type, String prefix)
    {
        int PROBE_START_LINE_155 = 155;
		Class<?> p_type_2507_line_155 = type;
		Class<?>[] optional_handler_factory_1_expr28_line_155 = p_type_2507_line_155.getInterfaces();
		int PROBE_END_LINE_155 = 155;
		Class<?>[] interfaces = optional_handler_factory_1_expr28_line_155;
        int PROBE_START_LINE_156 = 160;
		Class<?>[] v_interfaces_2509_line_156 = interfaces;
		int PROBE_END_LINE_156 = 160;
		for (Class<?> iface : v_interfaces_2509_line_156) {
            if (iface.getName().startsWith(prefix)) {
                return true;
            }
        }
        int PROBE_START_LINE_162 = 166;
		Class<?>[] v_interfaces_2509_line_162 = interfaces;
		int PROBE_END_LINE_162 = 166;
		// maybe super-interface?
        for (Class<?> iface : v_interfaces_2509_line_162) {
            if (hasInterfaceStartingWith(iface, prefix)) {
                return true;
            }
        }
        return false;
    }
}
