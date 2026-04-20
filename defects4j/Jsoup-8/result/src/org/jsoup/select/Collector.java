package org.jsoup.select;

import org.jsoup.nodes.Element;
import org.jsoup.nodes.Evaluator;
import org.jsoup.nodes.Node;

/**
 * Collects a list of elements that match the supplied criteria.
 *
 * @author Jonathan Hedley
 */
public class Collector {

    private Collector() {
    }

    /**
     Build a list of elements, by visiting root and every descendant of root, and testing it against the evaluator.
     @param eval Evaluator to test elements against
     @param root root of tree to descend
     @return list of matches; empty if none
     */
    public static Elements collect (Evaluator eval, Element root) {
        Elements elements = new Elements();
        int PROBE_START_LINE_25 = 25;
		org.jsoup.select.Elements v_elements_428_line_25 = elements;
		org.jsoup.nodes.Evaluator p_eval_426_line_25 = eval;
		org.jsoup.nodes.Element p_root_427_line_25 = root;
		int PROBE_END_LINE_25 = 25;
		new NodeTraversor(new Accumulator(v_elements_428_line_25, p_eval_426_line_25)).traverse(p_root_427_line_25);
        int PROBE_START_LINE_26 = 26;
		org.jsoup.select.Elements v_elements_428_line_26 = elements;
		int PROBE_END_LINE_26 = 26;
		return v_elements_428_line_26;
    }

    private static class Accumulator implements NodeVisitor {
        private final Elements elements;
        private final Evaluator eval;

        Accumulator(Elements elements, Evaluator eval) {
            int PROBE_START_LINE_34 = 34;
			org.jsoup.select.Elements p_elements_429_line_34 = elements;
			int PROBE_END_LINE_34 = 34;
			this.elements = p_elements_429_line_34;
            int PROBE_START_LINE_35 = 35;
			org.jsoup.nodes.Evaluator p_eval_430_line_35 = eval;
			int PROBE_END_LINE_35 = 35;
			this.eval = p_eval_430_line_35;
        }

        public void head(Node node, int depth) {
            int PROBE_START_LINE_39 = 43;
			org.jsoup.nodes.Node p_node_433_line_39 = node;
			boolean collector_1_expr11_line_39 = p_node_433_line_39 instanceof Element;
			int PROBE_END_LINE_39 = 43;
			if (collector_1_expr11_line_39) {
                int PROBE_START_LINE_40 = 40;
				org.jsoup.nodes.Node p_node_433_line_40 = node;
				int PROBE_END_LINE_40 = 40;
				Element el = (Element) p_node_433_line_40;
                int PROBE_START_LINE_41 = 42;
				org.jsoup.nodes.Evaluator f_eval_432_line_41 = eval;
				org.jsoup.nodes.Element v_el_435_line_41 = el;
				boolean collector_1_expr13_line_41 = f_eval_432_line_41.matches(v_el_435_line_41);
				int PROBE_END_LINE_41 = 42;
				if (collector_1_expr13_line_41) {
					int PROBE_START_LINE_42 = 42;
					org.jsoup.select.Elements f_elements_431_line_42 = elements;
					org.jsoup.nodes.Element v_el_435_line_42 = el;
					int PROBE_END_LINE_42 = 42;
					f_elements_431_line_42.add(v_el_435_line_42);
				}
            }
        }

        public void tail(Node node, int depth) {
            // void
        }
    }
}
