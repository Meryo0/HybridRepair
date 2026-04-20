package org.jsoup.select;

import org.jsoup.nodes.Node;
import java.util.List;

/**
 * Breadth first node traversor.
 */
public class NodeTraversor {
    private NodeVisitor visitor;

    public NodeTraversor(NodeVisitor visitor) {
        int PROBE_START_LINE_12 = 12;
		org.jsoup.select.NodeVisitor p_visitor_483_line_12 = visitor;
		int PROBE_END_LINE_12 = 12;
		this.visitor = p_visitor_483_line_12;
    }

    public void traverse(Node root) {
        int PROBE_START_LINE_16 = 16;
		Node p_root_485_line_16 = root;
		int PROBE_END_LINE_16 = 16;
		Node node = p_root_485_line_16;
        int depth = 0;
        
        while (true) {
            int PROBE_START_LINE_19 = 19;
			org.jsoup.nodes.Node v_node_486_line_19 = node;
			boolean node_traversor_1_expr4_line_19 = v_node_486_line_19 != null;
			if (!(node_traversor_1_expr4_line_19)) {
				break;
			}
			int PROBE_END_LINE_19 = 19;
			int PROBE_START_LINE_20 = 20;
			org.jsoup.select.NodeVisitor f_visitor_484_line_20 = visitor;
			org.jsoup.nodes.Node v_node_486_line_20 = node;
			int v_depth_487_line_20 = depth;
			int PROBE_END_LINE_20 = 20;
			f_visitor_484_line_20.head(v_node_486_line_20, v_depth_487_line_20);
            int PROBE_START_LINE_21 = 34;
			org.jsoup.nodes.Node v_node_486_line_21 = node;
			List<org.jsoup.nodes.Node> node_traversor_1_expr8_line_21 = v_node_486_line_21.childNodes();
			int node_traversor_1_expr7_line_21 = node_traversor_1_expr8_line_21.size();
			boolean node_traversor_1_expr6_line_21 = node_traversor_1_expr7_line_21 > 0;
			int PROBE_END_LINE_21 = 34;
			if (node_traversor_1_expr6_line_21) {
                int PROBE_START_LINE_22 = 22;
				org.jsoup.nodes.Node v_node_486_line_22 = node;
				org.jsoup.nodes.Node node_traversor_1_expr10_line_22 = v_node_486_line_22.childNode(0);
				int PROBE_END_LINE_22 = 22;
				node = node_traversor_1_expr10_line_22;
                depth++;
            } else {
                while (true) {
                    int PROBE_START_LINE_25 = 25;
					org.jsoup.nodes.Node v_node_486_line_25 = node;
					org.jsoup.nodes.Node node_traversor_1_expr14_line_25 = v_node_486_line_25.nextSibling();
					boolean node_traversor_1_expr13_line_25 = node_traversor_1_expr14_line_25 == null;
					boolean node_traversor_1_expr15_line_25 = true;
					if (node_traversor_1_expr13_line_25) {
						int v_depth_487_line_25 = depth;
						node_traversor_1_expr15_line_25 = v_depth_487_line_25 > 0;
					}
					boolean node_traversor_1_expr12_line_25 = node_traversor_1_expr13_line_25
							&& node_traversor_1_expr15_line_25;
					if (!(node_traversor_1_expr12_line_25)) {
						break;
					}
					int PROBE_END_LINE_25 = 25;
					int PROBE_START_LINE_26 = 26;
					org.jsoup.select.NodeVisitor f_visitor_484_line_26 = visitor;
					org.jsoup.nodes.Node v_node_486_line_26 = node;
					int v_depth_487_line_26 = depth;
					int PROBE_END_LINE_26 = 26;
					f_visitor_484_line_26.tail(v_node_486_line_26, v_depth_487_line_26);
                    int PROBE_START_LINE_27 = 27;
					org.jsoup.nodes.Node v_node_486_line_27 = node;
					org.jsoup.nodes.Node node_traversor_1_expr18_line_27 = v_node_486_line_27.parent();
					int PROBE_END_LINE_27 = 27;
					node = node_traversor_1_expr18_line_27;
                    depth--;
                }
                int PROBE_START_LINE_30 = 30;
				org.jsoup.select.NodeVisitor f_visitor_484_line_30 = visitor;
				org.jsoup.nodes.Node v_node_486_line_30 = node;
				int v_depth_487_line_30 = depth;
				int PROBE_END_LINE_30 = 30;
				f_visitor_484_line_30.tail(v_node_486_line_30, v_depth_487_line_30);
                int PROBE_START_LINE_31 = 32;
				org.jsoup.nodes.Node v_node_486_line_31 = node;
				org.jsoup.nodes.Node p_root_485_line_31 = root;
				boolean node_traversor_1_expr21_line_31 = v_node_486_line_31 == p_root_485_line_31;
				int PROBE_END_LINE_31 = 32;
				if (node_traversor_1_expr21_line_31)
                    break;
                int PROBE_START_LINE_33 = 33;
				org.jsoup.nodes.Node v_node_486_line_33 = node;
				org.jsoup.nodes.Node node_traversor_1_expr23_line_33 = v_node_486_line_33.nextSibling();
				int PROBE_END_LINE_33 = 33;
				node = node_traversor_1_expr23_line_33;
            }
        }
    }
}
