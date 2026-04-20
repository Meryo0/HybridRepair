package org.jsoup.nodes;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document.OutputSettings.Syntax;

import java.io.IOException;

/**
 * A {@code <!DOCTYPE>} node.
 */
public class DocumentType extends LeafNode {
    // todo needs a bit of a chunky cleanup. this level of detail isn't needed
    public static final String PUBLIC_KEY = "PUBLIC";
    public static final String SYSTEM_KEY = "SYSTEM";
    private static final String NAME = "name";
    private static final String PUB_SYS_KEY = "pubSysKey"; // PUBLIC or SYSTEM
    private static final String PUBLIC_ID = "publicId";
    private static final String SYSTEM_ID = "systemId";
    // todo: quirk mode from publicId and systemId

    /**
     * Create a new doctype element.
     * @param name the doctype's name
     * @param publicId the doctype's public ID
     * @param systemId the doctype's system ID
     */
    public DocumentType(String name, String publicId, String systemId) {
        int PROBE_START_LINE_29 = 29;
		String p_name_189_line_29 = name;
		int PROBE_END_LINE_29 = 29;
		Validate.notNull(p_name_189_line_29);
        int PROBE_START_LINE_30 = 30;
		String p_public_id_190_line_30 = publicId;
		int PROBE_END_LINE_30 = 30;
		Validate.notNull(p_public_id_190_line_30);
        int PROBE_START_LINE_31 = 31;
		String p_system_id_191_line_31 = systemId;
		int PROBE_END_LINE_31 = 31;
		Validate.notNull(p_system_id_191_line_31);
        int PROBE_START_LINE_32 = 32;
		String f_name_192_line_32 = NAME;
		String p_name_189_line_32 = name;
		int PROBE_END_LINE_32 = 32;
		attr(f_name_192_line_32, p_name_189_line_32);
        int PROBE_START_LINE_33 = 33;
		String f_public_id_193_line_33 = PUBLIC_ID;
		String p_public_id_190_line_33 = publicId;
		int PROBE_END_LINE_33 = 33;
		attr(f_public_id_193_line_33, p_public_id_190_line_33);
        int PROBE_START_LINE_34 = 36;
		String f_public_id_193_line_34 = PUBLIC_ID;
		boolean document_type_1_expr6_line_34 = has(f_public_id_193_line_34);
		int PROBE_END_LINE_34 = 36;
		if (document_type_1_expr6_line_34) {
            attr(PUB_SYS_KEY, PUBLIC_KEY);
        }
        int PROBE_START_LINE_37 = 37;
		String f_system_id_194_line_37 = SYSTEM_ID;
		String p_system_id_191_line_37 = systemId;
		int PROBE_END_LINE_37 = 37;
		attr(f_system_id_194_line_37, p_system_id_191_line_37);
    }

    /**
     * Create a new doctype element.
     * @param name the doctype's name
     * @param publicId the doctype's public ID
     * @param systemId the doctype's system ID
     * @param baseUri unused
     * @deprecated
     */
    public DocumentType(String name, String publicId, String systemId, String baseUri) {
        attr(NAME, name);
        attr(PUBLIC_ID, publicId);
        if (has(PUBLIC_ID)) {
            attr(PUB_SYS_KEY, PUBLIC_KEY);
        }
        attr(SYSTEM_ID, systemId);
    }

    /**
     * Create a new doctype element.
     * @param name the doctype's name
     * @param publicId the doctype's public ID
     * @param systemId the doctype's system ID
     * @param baseUri unused
     * @deprecated
     */
    public DocumentType(String name, String pubSysKey, String publicId, String systemId, String baseUri) {
        attr(NAME, name);
        if (pubSysKey != null) {
            attr(PUB_SYS_KEY, pubSysKey);
        }
        attr(PUBLIC_ID, publicId);
        attr(SYSTEM_ID, systemId);
    }
    public void setPubSysKey(String value) {
        int PROBE_START_LINE_74 = 75;
		String p_value_204_line_74 = value;
		boolean document_type_1_expr8_line_74 = p_value_204_line_74 != null;
		int PROBE_END_LINE_74 = 75;
		if (document_type_1_expr8_line_74)
            attr(PUB_SYS_KEY, value);
    }

    @Override
    public String nodeName() {
        return "#doctype";
    }

    @Override
    void outerHtmlHead(Appendable accum, int depth, Document.OutputSettings out) throws IOException {
        if (out.syntax() == Syntax.html && !has(PUBLIC_ID) && !has(SYSTEM_ID)) {
            // looks like a html5 doctype, go lowercase for aesthetics
            accum.append("<!doctype");
        } else {
            accum.append("<!DOCTYPE");
        }
        if (has(NAME))
            accum.append(" ").append(attr(NAME));
        if (has(PUB_SYS_KEY))
            accum.append(" ").append(attr(PUB_SYS_KEY));
        if (has(PUBLIC_ID))
            accum.append(" \"").append(attr(PUBLIC_ID)).append('"');
        if (has(SYSTEM_ID))
            accum.append(" \"").append(attr(SYSTEM_ID)).append('"');
        accum.append('>');
    }

    @Override
    void outerHtmlTail(Appendable accum, int depth, Document.OutputSettings out) {
    }

    private boolean has(final String attribute) {
        int PROBE_START_LINE_107 = 107;
		String p_attribute_211_line_107 = attribute;
		String document_type_1_expr11_line_107 = attr(p_attribute_211_line_107);
		boolean document_type_1_expr10_line_107 = StringUtil.isBlank(document_type_1_expr11_line_107);
		boolean document_type_1_expr9_line_107 = !document_type_1_expr10_line_107;
		int PROBE_END_LINE_107 = 107;
		return document_type_1_expr9_line_107;
    }
}
