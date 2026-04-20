package com.fasterxml.jackson.databind.ext;

import java.util.logging.Logger;
import java.util.logging.Level;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.ser.Serializers;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;

/**
 * Helper class used for isolating details of handling optional+external types
 * (javax.xml classes) from standard factories that offer them.
 *<p>
 * Note that 2.7 changed handling to slightly less dynamic, to avoid having to
 * traverse class hierarchy, which turned to be a performance issue in
 * certain cases. Since DOM classes are assumed to exist on all Java 1.6
 * environments (yes, even on Android/GAE), this part could be simplified by
 * slightly less dynamic lookups.
 *<p>
 * Also with 2.7 we are supporting JDK 1.7/Java 7 type(s).
 */
public class OptionalHandlerFactory implements java.io.Serializable
{
    private static final long serialVersionUID = 1;

    /* To make 2 main "optional" handler groups (javax.xml.stream)
     * more dynamic, we better only figure out handlers completely dynamically, if and
     * when they are needed. To do this we need to assume package prefixes.
     */
    private final static String PACKAGE_PREFIX_JAVAX_XML = "javax.xml.";

    private final static String SERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers";
    private final static String DESERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers";

    // Plus we also have a single serializer for DOM Node:
//    private final static String CLASS_NAME_DOM_NODE = "org.w3c.dom.Node";
//    private final static String CLASS_NAME_DOM_DOCUMENT = "org.w3c.dom.Document";
    private final static String SERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMSerializer";
    private final static String DESERIALIZER_FOR_DOM_DOCUMENT = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer";
    private final static String DESERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer";

    // // Since 2.7, we will assume DOM classes are always found, both due to JDK 1.6 minimum
    // // and because Android (and presumably GAE) have these classes

    private final static Class<?> CLASS_DOM_NODE;
    private final static Class<?> CLASS_DOM_DOCUMENT;

    static {
        Class<?> doc = null, node = null;
        try {
            node = org.w3c.dom.Node.class;
            doc = org.w3c.dom.Document.class;
        } catch (Exception e) {
            // not optimal but will do
            Logger.getLogger(OptionalHandlerFactory.class.getName())
                .log(Level.INFO, "Could not load DOM `Node` and/or `Document` classes: no DOM support");
        }
        int PROBE_START_LINE_59 = 59;
		Class<?> v_node_3365_line_59 = node;
		int PROBE_END_LINE_59 = 59;
		CLASS_DOM_NODE = v_node_3365_line_59;
        int PROBE_START_LINE_60 = 60;
		Class<?> v_doc_3364_line_60 = doc;
		int PROBE_END_LINE_60 = 60;
		CLASS_DOM_DOCUMENT = v_doc_3364_line_60;
    }

    // // But Java7 type(s) may or may not be; dynamic lookup should be fine, still
    // // (note: also assume it comes from JDK so that ClassLoader issues with OSGi
    // // can, I hope, be avoided?)

    private static final Java7Support _jdk7Helper;
    static {
        Java7Support x = null;
        try {
            int PROBE_START_LINE_71 = 71;
			com.fasterxml.jackson.databind.ext.Java7Support optional_handler_factory_1_expr8_line_71 = Java7Support
					.instance();
			int PROBE_END_LINE_71 = 71;
			x = optional_handler_factory_1_expr8_line_71;
        } catch (Throwable t) { }
        int PROBE_START_LINE_73 = 73;
		com.fasterxml.jackson.databind.ext.Java7Support v_x_3368_line_73 = x;
		int PROBE_END_LINE_73 = 73;
		_jdk7Helper = v_x_3368_line_73;
    }
    
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
        final Class<?> rawType = type.getRawClass();

        if (_jdk7Helper != null) {
            JsonSerializer<?> ser = _jdk7Helper.getSerializerForJavaNioFilePath(rawType);
            if (ser != null) {
                return ser;
            }
        }
        if ((CLASS_DOM_NODE != null) && CLASS_DOM_NODE.isAssignableFrom(rawType)) {
            return (JsonSerializer<?>) instantiate(SERIALIZER_FOR_DOM_NODE);
        }
        String className = rawType.getName();
        String factoryName;
        if (className.startsWith(PACKAGE_PREFIX_JAVAX_XML) || hasSuperClassStartingWith(rawType, PACKAGE_PREFIX_JAVAX_XML)) {
            factoryName = SERIALIZERS_FOR_JAVAX_XML;
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
        int PROBE_START_LINE_119 = 119;
		com.fasterxml.jackson.databind.JavaType p_type_3374_line_119 = type;
		Class<?> optional_handler_factory_1_expr11_line_119 = p_type_3374_line_119.getRawClass();
		int PROBE_END_LINE_119 = 119;
		final Class<?> rawType = optional_handler_factory_1_expr11_line_119;

        int PROBE_START_LINE_121 = 126;
		com.fasterxml.jackson.databind.ext.Java7Support f__jdk_7helper_3370_line_121 = _jdk7Helper;
		boolean optional_handler_factory_1_expr12_line_121 = f__jdk_7helper_3370_line_121 != null;
		int PROBE_END_LINE_121 = 126;
		if (optional_handler_factory_1_expr12_line_121) {
            int PROBE_START_LINE_122 = 122;
			com.fasterxml.jackson.databind.ext.Java7Support f__jdk_7helper_3370_line_122 = _jdk7Helper;
			Class<?> v_raw_type_3377_line_122 = rawType;
			JsonDeserializer<?> optional_handler_factory_1_expr13_line_122 = f__jdk_7helper_3370_line_122
					.getDeserializerForJavaNioFilePath(v_raw_type_3377_line_122);
			int PROBE_END_LINE_122 = 122;
			JsonDeserializer<?> deser = optional_handler_factory_1_expr13_line_122;
            int PROBE_START_LINE_123 = 125;
			JsonDeserializer<?> v_deser_3378_line_123 = deser;
			boolean optional_handler_factory_1_expr14_line_123 = v_deser_3378_line_123 != null;
			int PROBE_END_LINE_123 = 125;
			if (optional_handler_factory_1_expr14_line_123) {
                return deser;
            }
        }
        int PROBE_START_LINE_127 = 129;
		Class<?> f_class_dom_node_3366_line_127 = CLASS_DOM_NODE;
		boolean optional_handler_factory_1_expr17_line_127 = f_class_dom_node_3366_line_127 != null;
		boolean optional_handler_factory_1_expr16_line_127 = (optional_handler_factory_1_expr17_line_127);
		boolean optional_handler_factory_1_expr18_line_127 = true;
		if (optional_handler_factory_1_expr16_line_127) {
			Class<?> f_class_dom_node_3366_line_127_v1 = CLASS_DOM_NODE;
			Class<?> v_raw_type_3377_line_127 = rawType;
			optional_handler_factory_1_expr18_line_127 = f_class_dom_node_3366_line_127_v1
					.isAssignableFrom(v_raw_type_3377_line_127);
		}
		boolean optional_handler_factory_1_expr15_line_127 = optional_handler_factory_1_expr16_line_127
				&& optional_handler_factory_1_expr18_line_127;
		int PROBE_END_LINE_127 = 129;
		if (optional_handler_factory_1_expr15_line_127) {
            return (JsonDeserializer<?>) instantiate(DESERIALIZER_FOR_DOM_NODE);
        }
        int PROBE_START_LINE_130 = 132;
		Class<?> f_class_dom_document_3367_line_130 = CLASS_DOM_DOCUMENT;
		boolean optional_handler_factory_1_expr21_line_130 = f_class_dom_document_3367_line_130 != null;
		boolean optional_handler_factory_1_expr20_line_130 = (optional_handler_factory_1_expr21_line_130);
		boolean optional_handler_factory_1_expr22_line_130 = true;
		if (optional_handler_factory_1_expr20_line_130) {
			Class<?> f_class_dom_document_3367_line_130_v1 = CLASS_DOM_DOCUMENT;
			Class<?> v_raw_type_3377_line_130 = rawType;
			optional_handler_factory_1_expr22_line_130 = f_class_dom_document_3367_line_130_v1
					.isAssignableFrom(v_raw_type_3377_line_130);
		}
		boolean optional_handler_factory_1_expr19_line_130 = optional_handler_factory_1_expr20_line_130
				&& optional_handler_factory_1_expr22_line_130;
		int PROBE_END_LINE_130 = 132;
		if (optional_handler_factory_1_expr19_line_130) {
            return (JsonDeserializer<?>) instantiate(DESERIALIZER_FOR_DOM_DOCUMENT);
        }
        int PROBE_START_LINE_133 = 133;
		Class<?> v_raw_type_3377_line_133 = rawType;
		String optional_handler_factory_1_expr23_line_133 = v_raw_type_3377_line_133.getName();
		int PROBE_END_LINE_133 = 133;
		String className = optional_handler_factory_1_expr23_line_133;
        String factoryName;
        int PROBE_START_LINE_135 = 140;
		String v_class_name_3379_line_135 = className;
		String f_package_prefix_javax_xml_3380_line_135 = PACKAGE_PREFIX_JAVAX_XML;
		boolean optional_handler_factory_1_expr25_line_135 = v_class_name_3379_line_135
				.startsWith(f_package_prefix_javax_xml_3380_line_135);
		boolean optional_handler_factory_1_expr24_line_135 = optional_handler_factory_1_expr25_line_135
				|| hasSuperClassStartingWith(rawType, PACKAGE_PREFIX_JAVAX_XML);
		int PROBE_END_LINE_135 = 140;
		if (optional_handler_factory_1_expr24_line_135) {
            factoryName = DESERIALIZERS_FOR_JAVAX_XML;
        } else {
            return null;
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
            return ClassUtil.createInstance(Class.forName(className), false);
        } catch (LinkageError e) { }
        // too many different kinds to enumerate here:
        catch (Exception e) { }
        return null;
    }

    /**
     * Since 2.7 we only need to check for class extension, as all implemented
     * types are classes, not interfaces. This has performance implications for
     * some cases, as we do not need to go over interfaces implemented, just
     * superclasses
     * 
     * @since 2.7
     */
    private boolean hasSuperClassStartingWith(Class<?> rawType, String prefix)
    {
        int PROBE_START_LINE_173 = 173;
		boolean FOR_STMT_TOGGLE_LINE_174 = false;
		int PROBE_END_LINE_173 = 173;
		for (Class<?> supertype = null; true;) {
            int PROBE_START_LINE_175 = 177;
			if (!FOR_STMT_TOGGLE_LINE_174) {
				FOR_STMT_TOGGLE_LINE_174 = true;
				Class<?> p_raw_type_3382_line_174 = rawType;
				Class<?> optional_handler_factory_1_expr27_line_174 = p_raw_type_3382_line_174.getSuperclass();
				supertype = optional_handler_factory_1_expr27_line_174;
			} else {
				if (FOR_STMT_TOGGLE_LINE_174) {
					Class<?> v_supertype_3384_line_174_v1 = supertype;
					Class<?> optional_handler_factory_1_expr30_line_174 = v_supertype_3384_line_174_v1.getSuperclass();
					supertype = optional_handler_factory_1_expr30_line_174;
				} else {
					FOR_STMT_TOGGLE_LINE_174 = true;
				}
			}
			Class<?> v_supertype_3384_line_174 = supertype;
			boolean optional_handler_factory_1_expr28_line_174 = v_supertype_3384_line_174 != null;
			if (!(optional_handler_factory_1_expr28_line_174)) {
				break;
			}
			Class<?> v_supertype_3384_line_175 = supertype;
			boolean optional_handler_factory_1_expr31_line_175 = v_supertype_3384_line_175 == Object.class;
			int PROBE_END_LINE_175 = 177;
			if (optional_handler_factory_1_expr31_line_175) {
                return false;
            }
            if (supertype.getName().startsWith(prefix)) {
                return true;
            }
        }
        return false;
    }
}
