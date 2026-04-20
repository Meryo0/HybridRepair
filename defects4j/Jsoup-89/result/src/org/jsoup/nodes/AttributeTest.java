package org.jsoup.nodes;

import org.jsoup.Jsoup;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class AttributeTest {
    @Test public void html() {
        Attribute attr = new Attribute("key", "value &");
        assertEquals("key=\"value &amp;\"", attr.html());
        assertEquals(attr.html(), attr.toString());
    }

    @Test public void testWithSupplementaryCharacterInAttributeKeyAndValue() {
        String s = new String(Character.toChars(135361));
        Attribute attr = new Attribute(s, "A" + s + "B");
        assertEquals(s + "=\"A" + s + "B\"", attr.html());
        assertEquals(attr.html(), attr.toString());
    }

    @Test(expected = IllegalArgumentException.class) public void validatesKeysNotEmpty() {
        Attribute attr = new Attribute(" ", "Check");
    }

    @Test(expected = IllegalArgumentException.class) public void validatesKeysNotEmptyViaSet() {
        Attribute attr = new Attribute("One", "Check");
        attr.setKey(" ");
    }

    @Test public void booleanAttributesAreEmptyStringValues() {
        Document doc = Jsoup.parse("<div hidden>");
        Attributes attributes = doc.body().child(0).attributes();
        assertEquals("", attributes.get("hidden"));

        Attribute first = attributes.iterator().next();
        assertEquals("hidden", first.getKey());
        assertEquals("", first.getValue());
    }

    @Test public void settersOnOrphanAttribute() {
        Attribute attr = new Attribute("one", "two");
        int PROBE_START_LINE_43 = 43;
		org.jsoup.nodes.Attribute v_attr_44_line_43 = attr;
		int PROBE_END_LINE_43 = 43;
		v_attr_44_line_43.setKey("three");
        int PROBE_START_LINE_44 = 44;
		org.jsoup.nodes.Attribute v_attr_44_line_44 = attr;
		String attribute_test_1_expr3_line_44 = v_attr_44_line_44.setValue("four");
		int PROBE_END_LINE_44 = 44;
		String oldVal = attribute_test_1_expr3_line_44;
        assertEquals("two", oldVal);
        assertEquals("three", attr.getKey());
        assertEquals("four", attr.getValue());
        assertEquals(null, attr.parent);
    }
}
