package org.jsoup.safety;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.*;
import org.jsoup.parser.Tag;

import java.util.List;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/**
 The whitelist based HTML cleaner. Use to ensure that end-user provided HTML contains only the elements and attributes
 that you are expecting; no junk, and no cross-site scripting attacks!
 <p/>
 The HTML cleaner parses the input as HTML and then runs it through a white-list, so the output HTML can only contain
 HTML that is allowed by the whitelist.
 <p/>
 It is assumed that the input HTML is a body fragment; the clean methods only pull from the source's body, and the
 canned white-lists only allow body contained tags.
 <p/>
 Rather than interacting directly with a Cleaner object, generally see the {@code clean} methods in {@link org.jsoup.Jsoup}.
 */
public class Cleaner {
    private Whitelist whitelist;

    /**
     Create a new cleaner, that sanitizes documents using the supplied whitelist.
     @param whitelist white-list to clean with
     */
    public Cleaner(Whitelist whitelist) {
        int PROBE_START_LINE_29 = 29;
		org.jsoup.safety.Whitelist p_whitelist_893_line_29 = whitelist;
		int PROBE_END_LINE_29 = 29;
		Validate.notNull(p_whitelist_893_line_29);
        int PROBE_START_LINE_30 = 30;
		org.jsoup.safety.Whitelist p_whitelist_893_line_30 = whitelist;
		int PROBE_END_LINE_30 = 30;
		this.whitelist = p_whitelist_893_line_30;
    }

    /**
     Creates a new, clean document, from the original dirty document, containing only elements allowed by the whitelist.
     The original document is not modified. Only elements from the dirt document's <code>body</code> are used.
     @param dirtyDocument Untrusted base document to clean.
     @return cleaned document.
     */
    public Document clean(Document dirtyDocument) {
        int PROBE_START_LINE_40 = 40;
		org.jsoup.nodes.Document p_dirty_document_895_line_40 = dirtyDocument;
		int PROBE_END_LINE_40 = 40;
		Validate.notNull(p_dirty_document_895_line_40);

        int PROBE_START_LINE_42 = 42;
		org.jsoup.nodes.Document p_dirty_document_895_line_42 = dirtyDocument;
		String cleaner_1_expr7_line_42 = p_dirty_document_895_line_42.baseUri();
		Document cleaner_1_expr6_line_42 = Document.createShell(cleaner_1_expr7_line_42);
		int PROBE_END_LINE_42 = 42;
		Document clean = cleaner_1_expr6_line_42;
            int PROBE_START_LINE_43 = 43;
		org.jsoup.nodes.Document p_dirty_document_895_line_43 = dirtyDocument;
		org.jsoup.nodes.Element cleaner_1_expr9_line_43 = p_dirty_document_895_line_43.body();
		org.jsoup.nodes.Document v_clean_896_line_43 = clean;
		org.jsoup.nodes.Element cleaner_1_expr10_line_43 = v_clean_896_line_43.body();
		int PROBE_END_LINE_43 = 43;
			copySafeNodes(cleaner_1_expr9_line_43, cleaner_1_expr10_line_43);

        int PROBE_START_LINE_45 = 45;
			org.jsoup.nodes.Document v_clean_896_line_45 = clean;
			int PROBE_END_LINE_45 = 45;
		return v_clean_896_line_45;
    }

    /**
     Determines if the input document is valid, against the whitelist. It is considered valid if all the tags and attributes
     in the input HTML are allowed by the whitelist.
     <p/>
     This method can be used as a validator for user input forms. An invalid document will still be cleaned successfully
     using the {@link #clean(Document)} document. If using as a validator, it is recommended to still clean the document
     to ensure enforced attributes are set correctly, and that the output is tidied.
     @param dirtyDocument document to test
     @return true if no tags or attributes need to be removed; false if they do
     */
    public boolean isValid(Document dirtyDocument) {
        Validate.notNull(dirtyDocument);

        Document clean = Document.createShell(dirtyDocument.baseUri());
        int numDiscarded = copySafeNodes(dirtyDocument.body(), clean.body());
        return numDiscarded == 0;
    }

    /**
     Iterates the input and copies trusted nodes (tags, attributes, text) into the destination.
     @param source source of HTML
     @param dest destination element to copy into
     @return number of discarded elements (that were considered unsafe)
     */
    private int copySafeNodes(Element source, Element dest) {
        int PROBE_START_LINE_73 = 73;
		org.jsoup.nodes.Element p_source_898_line_73 = source;
		List<Node> cleaner_1_expr11_line_73 = p_source_898_line_73.childNodes();
		int PROBE_END_LINE_73 = 73;
		List<Node> sourceChildren = cleaner_1_expr11_line_73;
        int numDiscarded = 0;

        int PROBE_START_LINE_76 = 96;
		List<org.jsoup.nodes.Node> v_source_children_900_line_76 = sourceChildren;
		int PROBE_END_LINE_76 = 96;
		for (Node sourceChild : v_source_children_900_line_76) {
            int PROBE_START_LINE_77 = 95;
			org.jsoup.nodes.Node v_source_child_902_line_77 = sourceChild;
			boolean cleaner_1_expr12_line_77 = v_source_child_902_line_77 instanceof Element;
			int PROBE_END_LINE_77 = 95;
			if (cleaner_1_expr12_line_77) {
                int PROBE_START_LINE_78 = 78;
				org.jsoup.nodes.Node v_source_child_902_line_78 = sourceChild;
				int PROBE_END_LINE_78 = 78;
				Element sourceEl = (Element) v_source_child_902_line_78;

                int PROBE_START_LINE_80 = 90;
				org.jsoup.safety.Whitelist f_whitelist_894_line_80 = whitelist;
				org.jsoup.nodes.Element v_source_el_903_line_80 = sourceEl;
				String cleaner_1_expr15_line_80 = v_source_el_903_line_80.tagName();
				boolean cleaner_1_expr14_line_80 = f_whitelist_894_line_80.isSafeTag(cleaner_1_expr15_line_80);
				int PROBE_END_LINE_80 = 90;
				if (cleaner_1_expr14_line_80) { // safe, clone and copy safe attrs
                    ElementMeta meta = createSafeElement(sourceEl);
                    Element destChild = meta.el;
                    dest.appendChild(destChild);

                    numDiscarded += meta.numAttribsDiscarded;
                    numDiscarded += copySafeNodes(sourceEl, destChild); // recurs
                } else { // not a safe tag, but it may have children (els or text) that are, so recurse
                    numDiscarded++;
                    int PROBE_START_LINE_89 = 89;
					org.jsoup.nodes.Element v_source_el_903_line_89 = sourceEl;
					org.jsoup.nodes.Element p_dest_899_line_89 = dest;
					int cleaner_1_expr18_line_89 = copySafeNodes(v_source_el_903_line_89, p_dest_899_line_89);
					int PROBE_END_LINE_89 = 89;
					numDiscarded += cleaner_1_expr18_line_89;
                }
            }
			else {
				int PROBE_START_LINE_91 = 95;
				org.jsoup.nodes.Node v_source_child_902_line_91 = sourceChild;
				boolean cleaner_1_expr19_line_91 = v_source_child_902_line_91 instanceof TextNode;
				int PROBE_END_LINE_91 = 95;
				if (cleaner_1_expr19_line_91) {
					TextNode sourceText = (TextNode) sourceChild;
					TextNode destText = new TextNode(sourceText.getWholeText(), sourceChild.baseUri());
					dest.appendChild(destText);
				}
			}
        }
        int PROBE_START_LINE_97 = 97;
		int v_num_discarded_901_line_97 = numDiscarded;
		int PROBE_END_LINE_97 = 97;
		return v_num_discarded_901_line_97;
    }

    private ElementMeta createSafeElement(Element sourceEl) {
        String sourceTag = sourceEl.tagName();
        Attributes destAttrs = new Attributes();
        Element dest = new Element(Tag.valueOf(sourceTag), sourceEl.baseUri(), destAttrs);
        int numDiscarded = 0;

        Attributes sourceAttrs = sourceEl.attributes();
        for (Attribute sourceAttr : sourceAttrs) {
            if (whitelist.isSafeAttribute(sourceTag, sourceEl, sourceAttr))
                destAttrs.put(sourceAttr);
            else
                numDiscarded++;
        }
        Attributes enforcedAttrs = whitelist.getEnforcedAttributes(sourceTag);
        destAttrs.addAll(enforcedAttrs);

        return new ElementMeta(dest, numDiscarded);
    }

    private static class ElementMeta {
        Element el;
        int numAttribsDiscarded;

        ElementMeta(Element el, int numAttribsDiscarded) {
            this.el = el;
            this.numAttribsDiscarded = numAttribsDiscarded;
        }
    }

}
