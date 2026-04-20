package com.fasterxml.jackson.databind.ext;

import java.util.logging.Logger;
import java.util.logging.Level;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.ser.Serializers;
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
        int PROBE_START_LINE_58 = 58;
		Class<?> v_node_2663_line_58 = node;
		int PROBE_END_LINE_58 = 58;
		CLASS_DOM_NODE = v_node_2663_line_58;
        int PROBE_START_LINE_59 = 59;
		Class<?> v_doc_2662_line_59 = doc;
		int PROBE_END_LINE_59 = 59;
		CLASS_DOM_DOCUMENT = v_doc_2662_line_59;
    }

    // // But Java7 type(s) may or may not be; dynamic lookup should be fine, still
    // // (note: also assume it comes from JDK so that ClassLoader issues with OSGi
    // // can, I hope, be avoided?)

    private static final Java7Support _jdk7Helper;
    static {
        Java7Support x = null;
        try {
            int PROBE_START_LINE_70 = 70;
			com.fasterxml.jackson.databind.ext.Java7Support optional_handler_factory_1_expr8_line_70 = Java7Support
					.instance();
			int PROBE_END_LINE_70 = 70;
			x = optional_handler_factory_1_expr8_line_70;
        } catch (Throwable t) { }
        int PROBE_START_LINE_72 = 72;
		com.fasterxml.jackson.databind.ext.Java7Support v_x_2666_line_72 = x;
		int PROBE_END_LINE_72 = 72;
		_jdk7Helper = v_x_2666_line_72;
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
        int PROBE_START_LINE_118 = 118;
		com.fasterxml.jackson.databind.JavaType p_type_2672_line_118 = type;
		Class<?> optional_handler_factory_1_expr11_line_118 = p_type_2672_line_118.getRawClass();
		int PROBE_END_LINE_118 = 118;
		final Class<?> rawType = optional_handler_factory_1_expr11_line_118;

        int PROBE_START_LINE_120 = 125;
		com.fasterxml.jackson.databind.ext.Java7Support f__jdk_7helper_2668_line_120 = _jdk7Helper;
		boolean optional_handler_factory_1_expr12_line_120 = f__jdk_7helper_2668_line_120 != null;
		int PROBE_END_LINE_120 = 125;
		if (optional_handler_factory_1_expr12_line_120) {
            int PROBE_START_LINE_121 = 121;
			com.fasterxml.jackson.databind.ext.Java7Support f__jdk_7helper_2668_line_121 = _jdk7Helper;
			Class<?> v_raw_type_2675_line_121 = rawType;
			JsonDeserializer<?> optional_handler_factory_1_expr13_line_121 = f__jdk_7helper_2668_line_121
					.getDeserializerForJavaNioFilePath(v_raw_type_2675_line_121);
			int PROBE_END_LINE_121 = 121;
			JsonDeserializer<?> deser = optional_handler_factory_1_expr13_line_121;
            int PROBE_START_LINE_122 = 124;
			JsonDeserializer<?> v_deser_2676_line_122 = deser;
			boolean optional_handler_factory_1_expr14_line_122 = v_deser_2676_line_122 != null;
			int PROBE_END_LINE_122 = 124;
			if (optional_handler_factory_1_expr14_line_122) {
                return deser;
            }
        }
        int PROBE_START_LINE_126 = 128;
		Class<?> f_class_dom_node_2664_line_126 = CLASS_DOM_NODE;
		boolean optional_handler_factory_1_expr17_line_126 = f_class_dom_node_2664_line_126 != null;
		boolean optional_handler_factory_1_expr16_line_126 = (optional_handler_factory_1_expr17_line_126);
		boolean optional_handler_factory_1_expr18_line_126 = true;
		if (optional_handler_factory_1_expr16_line_126) {
			Class<?> f_class_dom_node_2664_line_126_v1 = CLASS_DOM_NODE;
			Class<?> v_raw_type_2675_line_126 = rawType;
			optional_handler_factory_1_expr18_line_126 = f_class_dom_node_2664_line_126_v1
					.isAssignableFrom(v_raw_type_2675_line_126);
		}
		boolean optional_handler_factory_1_expr15_line_126 = optional_handler_factory_1_expr16_line_126
				&& optional_handler_factory_1_expr18_line_126;
		int PROBE_END_LINE_126 = 128;
		if (optional_handler_factory_1_expr15_line_126) {
            return (JsonDeserializer<?>) instantiate(DESERIALIZER_FOR_DOM_NODE);
        }
        int PROBE_START_LINE_129 = 131;
		Class<?> f_class_dom_document_2665_line_129 = CLASS_DOM_DOCUMENT;
		boolean optional_handler_factory_1_expr21_line_129 = f_class_dom_document_2665_line_129 != null;
		boolean optional_handler_factory_1_expr20_line_129 = (optional_handler_factory_1_expr21_line_129);
		boolean optional_handler_factory_1_expr22_line_129 = true;
		if (optional_handler_factory_1_expr20_line_129) {
			Class<?> f_class_dom_document_2665_line_129_v1 = CLASS_DOM_DOCUMENT;
			Class<?> v_raw_type_2675_line_129 = rawType;
			optional_handler_factory_1_expr22_line_129 = f_class_dom_document_2665_line_129_v1
					.isAssignableFrom(v_raw_type_2675_line_129);
		}
		boolean optional_handler_factory_1_expr19_line_129 = optional_handler_factory_1_expr20_line_129
				&& optional_handler_factory_1_expr22_line_129;
		int PROBE_END_LINE_129 = 131;
		if (optional_handler_factory_1_expr19_line_129) {
            return (JsonDeserializer<?>) instantiate(DESERIALIZER_FOR_DOM_DOCUMENT);
        }
        int PROBE_START_LINE_132 = 132;
		Class<?> v_raw_type_2675_line_132 = rawType;
		String optional_handler_factory_1_expr23_line_132 = v_raw_type_2675_line_132.getName();
		int PROBE_END_LINE_132 = 132;
		String className = optional_handler_factory_1_expr23_line_132;
        String factoryName;
        int PROBE_START_LINE_134 = 139;
		String v_class_name_2677_line_134 = className;
		String f_package_prefix_javax_xml_2678_line_134 = PACKAGE_PREFIX_JAVAX_XML;
		boolean optional_handler_factory_1_expr25_line_134 = v_class_name_2677_line_134
				.startsWith(f_package_prefix_javax_xml_2678_line_134);
		boolean optional_handler_factory_1_expr24_line_134 = optional_handler_factory_1_expr25_line_134
				|| hasSuperClassStartingWith(rawType, PACKAGE_PREFIX_JAVAX_XML);
		int PROBE_END_LINE_134 = 139;
		if (optional_handler_factory_1_expr24_line_134) {
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
            return Class.forName(className).newInstance();
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
        int PROBE_START_LINE_172 = 172;
		boolean FOR_STMT_TOGGLE_LINE_173 = false;
		int PROBE_END_LINE_172 = 172;
		for (Class<?> supertype = null; true;) {
            int PROBE_START_LINE_174 = 176;
			if (!FOR_STMT_TOGGLE_LINE_173) {
				FOR_STMT_TOGGLE_LINE_173 = true;
				Class<?> p_raw_type_2680_line_173 = rawType;
				Class<?> optional_handler_factory_1_expr27_line_173 = p_raw_type_2680_line_173.getSuperclass();
				supertype = optional_handler_factory_1_expr27_line_173;
			} else {
				if (FOR_STMT_TOGGLE_LINE_173) {
					Class<?> v_supertype_2682_line_173_v1 = supertype;
					Class<?> optional_handler_factory_1_expr30_line_173 = v_supertype_2682_line_173_v1.getSuperclass();
					supertype = optional_handler_factory_1_expr30_line_173;
				} else {
					FOR_STMT_TOGGLE_LINE_173 = true;
				}
			}
			Class<?> v_supertype_2682_line_173 = supertype;
			boolean optional_handler_factory_1_expr28_line_173 = v_supertype_2682_line_173 != null;
			if (!(optional_handler_factory_1_expr28_line_173)) {
				break;
			}
			Class<?> v_supertype_2682_line_174 = supertype;
			boolean optional_handler_factory_1_expr31_line_174 = v_supertype_2682_line_174 == Object.class;
			int PROBE_END_LINE_174 = 176;
			if (optional_handler_factory_1_expr31_line_174) {
                return false;
            }
            if (supertype.getName().startsWith(prefix)) {
                return true;
            }
        }
        return false;
    }
}
