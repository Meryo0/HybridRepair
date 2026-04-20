package org.jsoup.select;


import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;
import org.jsoup.parser.TokenQueue;

import java.util.Collection;
import java.util.LinkedHashSet;

/**
 CSS-like element selector, that finds elements matching a query.

 <h2>Selector syntax</h2>
 A selector is a chain of simple selectors, seperated by combinators. Selectors are case insensitive (including against
 elements, attributes, and attribute values).
 <p/>
 The universal selector (*) is implicit when no element selector is supplied (i.e. {@code *.header} and {@code .header}
 is equivalent).

 <table>
  <tr><th>Pattern</th><th>Matches</th><th>Example</th></tr>
  <tr><td><code>*</code></td><td>any element</td><td><code>*</code></td></tr>
  <tr><td><code>tag</code></td><td>elements with the given tag name</td><td><code>div</code></td></tr>
  <tr><td><code>ns|E</code></td><td>elements of type E in the namespace <i>ns</i></td><td><code>fb|name</code> finds <code>&lt;fb:name></code> elements</td></tr>
  <tr><td><code>#id</code></td><td>elements with attribute ID of "id"</td><td><code>div#wrap</code>, <code>#logo</code></td></tr>
  <tr><td><code>.class</code></td><td>elements with a class name of "class"</td><td><code>div.left</code>, <code>.result</code></td></tr>
  <tr><td><code>[attr]</code></td><td>elements with an attribute named "attr" (with any value)</td><td><code>a[href]</code>, <code>[title]</code></td></tr>
  <tr><td><code>[^attrPrefix]</code></td><td>elements with an attribute name starting with "attrPrefix". Use to find elements with HTML5 datasets</td><td><code>[^data-]</code>, <code>div[^data-]</code></td></tr>
  <tr><td><code>[attr=val]</code></td><td>elements with an attribute named "attr", and value equal to "val"</td><td><code>img[width=500]</code>, <code>a[rel=nofollow]</code></td></tr>
  <tr><td><code>[attr^=valPrefix]</code></td><td>elements with an attribute named "attr", and value starting with "valPrefix"</td><td><code>a[href^=http:]</code></code></td></tr>
  <tr><td><code>[attr$=valSuffix]</code></td><td>elements with an attribute named "attr", and value ending with "valSuffix"</td><td><code>img[src$=.png]</code></td></tr>
  <tr><td><code>[attr*=valContaining]</code></td><td>elements with an attribute named "attr", and value containing "valContaining"</td><td><code>a[href*=/search/]</code></td></tr>
  <tr><td><code>[attr~=<em>regex</em>]</code></td><td>elements with an attribute named "attr", and value matching the regular expression</td><td><code>img[src~=(?i)\\.(png|jpe?g)]</code></td></tr>
  <tr><td></td><td>The above may be combined in any order</td><td><code>div.header[title]</code></td></tr>
  <tr><td><td colspan="3"><h3>Combinators</h3></td></tr>
  <tr><td><code>E F</code></td><td>an F element descended from an E element</td><td><code>div a</code>, <code>.logo h1</code></td></tr>
  <tr><td><code>E > F</code></td><td>an F direct child of E</td><td><code>ol > li</code></td></tr>
  <tr><td><code>E + F</code></td><td>an F element immediately preceded by sibling E</td><td><code>li + li</code>, <code>div.head + div</code></td></tr>
  <tr><td><code>E ~ F</code></td><td>an F element preceded by sibling E</td><td><code>h1 ~ p</code></td></tr>
  <tr><td><code>E, F, G</code></td><td>all matching elements E, F, or G</td><td><code>a[href], div, h3</code></td></tr>
  <tr><td><td colspan="3"><h3>Pseudo selectors</h3></td></tr>
  <tr><td><code>:lt(<em>n</em>)</code></td><td>elements whose sibling index is less than <em>n</em></td><td><code>td:lt(3)</code> finds the first 2 cells of each row</td></tr>
  <tr><td><code>:gt(<em>n</em>)</code></td><td>elements whose sibling index is greater than <em>n</em></td><td><code>td:gt(1)</code> finds cells after skipping the first two</td></tr>
  <tr><td><code>:eq(<em>n</em>)</code></td><td>elements whose sibling index is equal to <em>n</em></td><td><code>td:eq(0)</code> finds the first cell of each row</td></tr>
  <tr><td><code>:has(<em>selector</em>)</code></td><td>elements that contains at least one element matching the <em>selector</em></td><td><code>div:has(p)</code> finds divs that contain p elements </td></tr>
  <tr><td><code>:contains(<em>text</em>)</code></td><td>elements that contains the specified text. The search is case insensitive. The text may appear in the found element, or any of its descendants.</td><td><code>p:contains(jsoup)</code> finds p elements containing the text "jsoup".</td></tr>
  <tr><td><code>:matches(<em>regex</em>)</code></td><td>elements whose text matches the specified regular expression. The text may appear in the found element, or any of its descendants.</td><td><code>td:matches(\\d+)</code> finds table cells containing digits. <code>div:matches((?i)login)</code> finds divs containing the text, case insensitively.</td></tr>
  <tr><td><code>:containsOwn(<em>text</em>)</code></td><td>elements that directly contains the specified text. The search is case insensitive. The text must appear in the found element, not any of its descendants.</td><td><code>p:containsOwn(jsoup)</code> finds p elements with own text "jsoup".</td></tr>
  <tr><td><code>:matchesOwn(<em>regex</em>)</code></td><td>elements whose own text matches the specified regular expression. The text must appear in the found element, not any of its descendants.</td><td><code>td:matchesOwn(\\d+)</code> finds table cells directly containing digits. <code>div:matchesOwn((?i)login)</code> finds divs containing the text, case insensitively.</td></tr>
  <tr><td></td><td>The above may be combined in any order and with other selectors</td><td><code>.light:contains(name):eq(0)</code></td></tr>
  </table>

 @see Element#select(String)
 @author Jonathan Hedley, jonathan@hedley.net */
public class Selector {
    private final static String[] combinators = {",", ">", "+", "~", " "};
    private final Element root;
    private final LinkedHashSet<Element> elements; // LHS for unique and ordered elements
    private final String query;
    private final TokenQueue tq;

    private Selector(String query, Element root) {
        int PROBE_START_LINE_65 = 65;
		String p_query_489_line_65 = query;
		int PROBE_END_LINE_65 = 65;
		Validate.notNull(p_query_489_line_65);
        int PROBE_START_LINE_66 = 66;
		String p_query_489_line_66 = query;
		String selector_1_expr4_line_66 = p_query_489_line_66.trim();
		int PROBE_END_LINE_66 = 66;
		query = selector_1_expr4_line_66;
        int PROBE_START_LINE_67 = 67;
		String p_query_489_line_67 = query;
		int PROBE_END_LINE_67 = 67;
		Validate.notEmpty(p_query_489_line_67);
        int PROBE_START_LINE_68 = 68;
		org.jsoup.nodes.Element p_root_490_line_68 = root;
		int PROBE_END_LINE_68 = 68;
		Validate.notNull(p_root_490_line_68);

        this.elements = new LinkedHashSet<Element>();
        int PROBE_START_LINE_71 = 71;
		String p_query_489_line_71 = query;
		int PROBE_END_LINE_71 = 71;
		this.query = p_query_489_line_71;
        int PROBE_START_LINE_72 = 72;
		org.jsoup.nodes.Element p_root_490_line_72 = root;
		int PROBE_END_LINE_72 = 72;
		this.root = p_root_490_line_72;
        int PROBE_START_LINE_73 = 73;
		String p_query_489_line_73 = query;
		int PROBE_END_LINE_73 = 73;
		this.tq = new TokenQueue(p_query_489_line_73);
    }

    /**
     Find elements matching selector.
     @param query CSS selector
     @param root root element to descend into
     @return matching elements, empty if not
     */
    public static Elements select(String query, Element root) {
        int PROBE_START_LINE_83 = 83;
		String p_query_495_line_83 = query;
		org.jsoup.nodes.Element p_root_496_line_83 = root;
		org.jsoup.select.Elements selector_1_expr21_line_83 = new Selector(p_query_495_line_83, p_root_496_line_83)
				.select();
		int PROBE_END_LINE_83 = 83;
		return selector_1_expr21_line_83;
    }

    /**
     Find elements matching selector.
     @param query CSS selector
     @param roots root elements to descend into
     @return matching elements, empty if not
     */
    public static Elements select(String query, Iterable<Element> roots) {
        Validate.notEmpty(query);
        Validate.notNull(roots);
        LinkedHashSet<Element> elements = new LinkedHashSet<Element>();

        for (Element root : roots) {
            elements.addAll(select(query, root));
        }
        return new Elements(elements);
    }

    private Elements select() {
        int PROBE_START_LINE_104 = 104;
		org.jsoup.parser.TokenQueue f_tq_494_line_104 = tq;
		int PROBE_END_LINE_104 = 104;
		f_tq_494_line_104.consumeWhitespace();
        
        int PROBE_START_LINE_106 = 111;
		org.jsoup.parser.TokenQueue f_tq_494_line_106 = tq;
		String[] f_combinators_488_line_106 = combinators;
		boolean selector_1_expr24_line_106 = f_tq_494_line_106.matchesAny(f_combinators_488_line_106);
		int PROBE_END_LINE_106 = 111;
		if (selector_1_expr24_line_106) { // if starts with a combinator, use root as elements
            elements.add(root);
            combinator(tq.consume().toString());
        } else {
            int PROBE_START_LINE_110 = 110;
			org.jsoup.select.Elements selector_1_expr26_line_110 = findElements();
			int PROBE_END_LINE_110 = 110;
			addElements(selector_1_expr26_line_110); // chomp first element matcher off queue 
        }            
               
        while (true) {
            int PROBE_START_LINE_113 = 113;
			org.jsoup.parser.TokenQueue f_tq_494_line_113 = tq;
			boolean selector_1_expr28_line_113 = f_tq_494_line_113.isEmpty();
			boolean selector_1_expr27_line_113 = !selector_1_expr28_line_113;
			if (!(selector_1_expr27_line_113)) {
				break;
			}
			int PROBE_END_LINE_113 = 113;
			// hierarchy and extras
            boolean seenWhite = tq.consumeWhitespace();
            
            if (tq.matchChomp(",")) { // group or
                while (!tq.isEmpty()) {
                    String subQuery = tq.chompTo(",");
                    elements.addAll(select(subQuery, root));
                }
            } else if (tq.matchesAny(combinators)) {
                combinator(tq.consume().toString());
            } else if (seenWhite) {
                combinator(" ");
            } else { // E.class, E#id, E[attr] etc. AND
                Elements candidates = findElements(); // take next el, #. etc off queue
                intersectElements(filterForSelf(elements, candidates));
            }
        }
        int PROBE_START_LINE_131 = 131;
		LinkedHashSet<org.jsoup.nodes.Element> f_elements_491_line_131 = elements;
		int PROBE_END_LINE_131 = 131;
		return new Elements(f_elements_491_line_131);
    }
    
    private void combinator(String combinator) {
        tq.consumeWhitespace();
        String subQuery = tq.consumeToAny(combinators); // support multi > childs
        
        Elements output;
        if (combinator.equals(">"))
            output = filterForChildren(elements, select(subQuery, elements));
        else if (combinator.equals(" "))
            output = filterForDescendants(elements, select(subQuery, elements));
        else if (combinator.equals("+"))
            output = filterForAdjacentSiblings(elements, select(subQuery, root));
        else if (combinator.equals("~"))
            output = filterForGeneralSiblings(elements, select(subQuery, root));
        else
            throw new IllegalStateException("Unknown combinator: " + combinator);
        
        elements.clear(); elements.addAll(output);
    }
    
    private Elements findElements() {
        int PROBE_START_LINE_154 = 182;
		org.jsoup.parser.TokenQueue f_tq_494_line_154 = tq;
		boolean selector_1_expr30_line_154 = f_tq_494_line_154.matchChomp("#");
		int PROBE_END_LINE_154 = 182;
		if (selector_1_expr30_line_154) {
            return byId();
        } else {
			int PROBE_START_LINE_156 = 182;
			org.jsoup.parser.TokenQueue f_tq_494_line_156 = tq;
			boolean selector_1_expr31_line_156 = f_tq_494_line_156.matchChomp(".");
			int PROBE_END_LINE_156 = 182;
			if (selector_1_expr31_line_156) {
				return byClass();
			} else {
				int PROBE_START_LINE_158 = 182;
				org.jsoup.parser.TokenQueue f_tq_494_line_158 = tq;
				boolean selector_1_expr32_line_158 = f_tq_494_line_158.matchesWord();
				int PROBE_END_LINE_158 = 182;
				if (selector_1_expr32_line_158) {
					int PROBE_START_LINE_159 = 159;
					org.jsoup.select.Elements selector_1_expr33_line_159 = byTag();
					int PROBE_END_LINE_159 = 159;
					return selector_1_expr33_line_159;
				} else if (tq.matches("[")) {
					return byAttribute();
				} else if (tq.matchChomp("*")) {
					return allElements();
				} else if (tq.matchChomp(":lt(")) {
					return indexLessThan();
				} else if (tq.matchChomp(":gt(")) {
					return indexGreaterThan();
				} else if (tq.matchChomp(":eq(")) {
					return indexEquals();
				} else if (tq.matches(":has(")) {
					return has();
				} else if (tq.matches(":contains(")) {
					return contains(false);
				} else if (tq.matches(":containsOwn(")) {
					return contains(true);
				} else if (tq.matches(":matches(")) {
					return matches(false);
				} else if (tq.matches(":matchesOwn(")) {
					return matches(true);
				} else {
					throw new SelectorParseException("Could not parse query '%s': unexpected token at '%s'", query,
							tq.remainder());
				}
			}
		}
    }
    
    private void addElements(Collection<Element> add) {
        int PROBE_START_LINE_186 = 186;
		LinkedHashSet<org.jsoup.nodes.Element> f_elements_491_line_186 = elements;
		Collection<org.jsoup.nodes.Element> p_add_500_line_186 = add;
		int PROBE_END_LINE_186 = 186;
		f_elements_491_line_186.addAll(p_add_500_line_186);
    }
    
    private void intersectElements(Collection<Element> intersect) {
        elements.retainAll(intersect);
    }

    private Elements byId() {
        String id = tq.consumeCssIdentifier();
        Validate.notEmpty(id);

        Element found = root.getElementById(id);
        Elements byId = new Elements();
        if(found != null)
            byId.add(found);
        return byId;
    }

    private Elements byClass() {
        String className = tq.consumeCssIdentifier();
        Validate.notEmpty(className);

        return root.getElementsByClass(className);
    }

    private Elements byTag() {
        int PROBE_START_LINE_212 = 212;
		org.jsoup.parser.TokenQueue f_tq_494_line_212 = tq;
		String selector_1_expr35_line_212 = f_tq_494_line_212.consumeElementSelector();
		int PROBE_END_LINE_212 = 212;
		String tagName = selector_1_expr35_line_212;
        int PROBE_START_LINE_213 = 213;
		String v_tag_name_502_line_213 = tagName;
		int PROBE_END_LINE_213 = 213;
		Validate.notEmpty(v_tag_name_502_line_213);
        
        int PROBE_START_LINE_216 = 217;
		String v_tag_name_502_line_216 = tagName;
		boolean selector_1_expr37_line_216 = v_tag_name_502_line_216.contains("|");
		int PROBE_END_LINE_216 = 217;
		// namespaces: if element name is "abc:def", selector must be "abc|def", so flip:
        if (selector_1_expr37_line_216)
            tagName = tagName.replace("|", ":");
        int PROBE_START_LINE_218 = 218;
		org.jsoup.nodes.Element f_root_493_line_218 = root;
		String v_tag_name_502_line_218 = tagName;
		org.jsoup.select.Elements selector_1_expr38_line_218 = f_root_493_line_218
				.getElementsByTag(v_tag_name_502_line_218);
		int PROBE_END_LINE_218 = 218;
		return selector_1_expr38_line_218;
    }

    private Elements byAttribute() {
        TokenQueue cq = new TokenQueue(tq.chompBalanced('[', ']')); // content queue
        String key = cq.consumeToAny("=", "!=", "^=", "$=", "*=", "~="); // eq, not, start, end, contain, match, (no val)
        Validate.notEmpty(key);
        cq.consumeWhitespace();

        if (cq.isEmpty()) {
            return key.startsWith("^") ? root.getElementsByAttributeStarting(key.substring(1)) : root.getElementsByAttribute(key);
        } else {
            if (cq.matchChomp("="))
                return root.getElementsByAttributeValue(key, cq.remainder());

            else if (cq.matchChomp("!="))
                return root.getElementsByAttributeValueNot(key, cq.remainder());

            else if (cq.matchChomp("^="))
                return root.getElementsByAttributeValueStarting(key, cq.remainder());

            else if (cq.matchChomp("$="))
                return root.getElementsByAttributeValueEnding(key, cq.remainder());

            else if (cq.matchChomp("*="))
                return root.getElementsByAttributeValueContaining(key, cq.remainder());
            
            else if (cq.matchChomp("~="))
                return root.getElementsByAttributeValueMatching(key, cq.remainder());
            
            else
                throw new SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", query, cq.remainder());
        }
    }

    private Elements allElements() {
        return root.getAllElements();
    }
    
    // pseudo selectors :lt, :gt, :eq
    private Elements indexLessThan() {
        return root.getElementsByIndexLessThan(consumeIndex());
    }
    
    private Elements indexGreaterThan() {
        return root.getElementsByIndexGreaterThan(consumeIndex());
    }
    
    private Elements indexEquals() {
        return root.getElementsByIndexEquals(consumeIndex());
    }

    private int consumeIndex() {
        String indexS = tq.chompTo(")").trim();
        Validate.isTrue(StringUtil.isNumeric(indexS), "Index must be numeric");
        return Integer.parseInt(indexS);
    }

    // pseudo selector :has(el)
    private Elements has() {
        tq.consume(":has");
        String subQuery = tq.chompBalanced('(',')');
        Validate.notEmpty(subQuery, ":has(el) subselect must not be empty");

        return filterForParentsOfDescendants(elements, select(subQuery, elements));
    }
    
    // pseudo selector :contains(text), containsOwn(text)
    private Elements contains(boolean own) {
        tq.consume(own ? ":containsOwn" : ":contains");
        String searchText = TokenQueue.unescape(tq.chompBalanced('(',')'));
        Validate.notEmpty(searchText, ":contains(text) query must not be empty");
        
        return own ? root.getElementsContainingOwnText(searchText) : root.getElementsContainingText(searchText);
    }
    
    // :matches(regex), matchesOwn(regex)
    private Elements matches(boolean own) {
        tq.consume(own? ":matchesOwn" : ":matches");
        String regex = tq.chompBalanced('(', ')'); // don't unescape, as regex bits will be escaped
        Validate.notEmpty(regex, ":matches(regex) query must not be empty");
        
        return own ? root.getElementsMatchingOwnText(regex) : root.getElementsMatchingText(regex);
    }

    // direct child descendants
    private static Elements filterForChildren(Collection<Element> parents, Collection<Element> candidates) {
        Elements children = new Elements();
        CHILD: for (Element c : candidates) {
            for (Element p : parents) {
                if (c.parent() != null && c.parent().equals(p)) {
                    children.add(c);
                    continue CHILD;
                }
            }
        }
        return children;
    }
    
    // children or lower descendants. input candidates stemmed from found elements, so are either a descendant 
    // or the original element; so check that parent is not child
    private static Elements filterForDescendants(Collection<Element> parents, Collection<Element> candidates) {
        Elements children = new Elements();
        CHILD: for (Element c : candidates) {
            for (Element p : parents) {
                if (c.equals(p)) {
                    continue CHILD;
                }
            }
            children.add(c);
        }
        return children;
    }

    // implements :has(el). Finds elements that contain the matched elements
    private static Elements filterForParentsOfDescendants(Collection<Element> parents, Collection<Element> children) {
        Elements filteredParents = new Elements();
        for (Element p : parents) {
            for (Element c : children) {
                if (c.parents().contains(p)) {
                    filteredParents.add(p);
                }
            }
        }
        return filteredParents;
    }
    
    // adjacent siblings
    private static Elements filterForAdjacentSiblings(Collection<Element> elements, Collection<Element> candidates) {
        Elements siblings = new Elements();
        SIBLING: for (Element c: candidates) {
            for (Element e: elements) {
                if (!e.parent().equals(c.parent()))
                    continue;
                Element previousSib = c.previousElementSibling();
                if (previousSib != null && previousSib.equals(e)) {
                    siblings.add(c);
                    continue SIBLING;
                }
            }
        }
        return siblings;
    }
    
    // preceeding siblings
    private static Elements filterForGeneralSiblings(Collection<Element> elements, Collection<Element> candidates) {
        Elements output = new Elements();
        SIBLING: for (Element c: candidates) {
            for (Element e: elements) {
                if (!e.parent().equals(c.parent()))
                    continue;
                int ePos = e.elementSiblingIndex();
                int cPos = c.elementSiblingIndex();
                if (cPos > ePos) {
                    output.add(c);
                    continue SIBLING;
                }
            }
        }
        return output;
    }
    
    // union of both sets, for e.class type selectors
    private static Elements filterForSelf(Collection<Element> parents, Collection<Element> candidates) {
        Elements children = new Elements();
        CHILD: for (Element c : candidates) {
            for (Element p : parents) {
                if (c.equals(p)) {
                    children.add(c);
                    continue CHILD;
                }
            }   
        }
        return children;
    }

    public static class SelectorParseException extends IllegalStateException {
        public SelectorParseException(String msg, Object... params) {
            super(String.format(msg, params));
        }
    }
}
