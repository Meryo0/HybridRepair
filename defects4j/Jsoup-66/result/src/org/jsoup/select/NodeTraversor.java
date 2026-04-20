package org.jsoup.select;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.NodeFilter.FilterResult;

/**
 * Depth-first node traversor. Use to iterate through all nodes under and including the specified root node.
 * <p>
 * This implementation does not use recursion, so a deep DOM does not risk blowing the stack.
 * </p>
 */
public class NodeTraversor {
    private NodeVisitor visitor;

    /**
     * Create a new traversor.
     * @param visitor a class implementing the {@link NodeVisitor} interface, to be called when visiting each node.
     * @deprecated Just use the static {@link NodeTraversor#filter(NodeFilter, Node)} method.
     */
    public NodeTraversor(NodeVisitor visitor) {
        this.visitor = visitor;
    }

    /**
     * Start a depth-first traverse of the root and all of its descendants.
     * @param root the root node point to traverse.
     * @deprecated Just use the static {@link NodeTraversor#filter(NodeFilter, Node)} method.
     */
    public void traverse(Node root) {
        traverse(visitor, root);
    }

    /**
     * Start a depth-first traverse of the root and all of its descendants.
     * @param visitor Node visitor.
     * @param root the root node point to traverse.
     */
    public static void traverse(NodeVisitor visitor, Node root) {
        int PROBE_START_LINE_41 = 41;
		Node p_root_1274_line_41 = root;
		int PROBE_END_LINE_41 = 41;
		Node node = p_root_1274_line_41;
        int depth = 0;
        
        while (true) {
            int PROBE_START_LINE_44 = 44;
			org.jsoup.nodes.Node v_node_1275_line_44 = node;
			boolean node_traversor_1_expr1_line_44 = v_node_1275_line_44 != null;
			if (!(node_traversor_1_expr1_line_44)) {
				break;
			}
			int PROBE_END_LINE_44 = 44;
			int PROBE_START_LINE_45 = 45;
			org.jsoup.select.NodeVisitor p_visitor_1273_line_45 = visitor;
			org.jsoup.nodes.Node v_node_1275_line_45 = node;
			int v_depth_1276_line_45 = depth;
			int PROBE_END_LINE_45 = 45;
			p_visitor_1273_line_45.head(v_node_1275_line_45, v_depth_1276_line_45);
            int PROBE_START_LINE_46 = 59;
			org.jsoup.nodes.Node v_node_1275_line_46 = node;
			int node_traversor_1_expr4_line_46 = v_node_1275_line_46.childNodeSize();
			boolean node_traversor_1_expr3_line_46 = node_traversor_1_expr4_line_46 > 0;
			int PROBE_END_LINE_46 = 59;
			if (node_traversor_1_expr3_line_46) {
                int PROBE_START_LINE_47 = 47;
				org.jsoup.nodes.Node v_node_1275_line_47 = node;
				org.jsoup.nodes.Node node_traversor_1_expr6_line_47 = v_node_1275_line_47.childNode(0);
				int PROBE_END_LINE_47 = 47;
				node = node_traversor_1_expr6_line_47;
                depth++;
            } else {
                while (true) {
                    int PROBE_START_LINE_50 = 50;
					org.jsoup.nodes.Node v_node_1275_line_50 = node;
					org.jsoup.nodes.Node node_traversor_1_expr10_line_50 = v_node_1275_line_50.nextSibling();
					boolean node_traversor_1_expr9_line_50 = node_traversor_1_expr10_line_50 == null;
					boolean node_traversor_1_expr11_line_50 = true;
					if (node_traversor_1_expr9_line_50) {
						int v_depth_1276_line_50 = depth;
						node_traversor_1_expr11_line_50 = v_depth_1276_line_50 > 0;
					}
					boolean node_traversor_1_expr8_line_50 = node_traversor_1_expr9_line_50
							&& node_traversor_1_expr11_line_50;
					if (!(node_traversor_1_expr8_line_50)) {
						break;
					}
					int PROBE_END_LINE_50 = 50;
					int PROBE_START_LINE_51 = 51;
					org.jsoup.select.NodeVisitor p_visitor_1273_line_51 = visitor;
					org.jsoup.nodes.Node v_node_1275_line_51 = node;
					int v_depth_1276_line_51 = depth;
					int PROBE_END_LINE_51 = 51;
					p_visitor_1273_line_51.tail(v_node_1275_line_51, v_depth_1276_line_51);
                    int PROBE_START_LINE_52 = 52;
					org.jsoup.nodes.Node v_node_1275_line_52 = node;
					org.jsoup.nodes.Node node_traversor_1_expr14_line_52 = v_node_1275_line_52.parentNode();
					int PROBE_END_LINE_52 = 52;
					node = node_traversor_1_expr14_line_52;
                    depth--;
                }
                int PROBE_START_LINE_55 = 55;
				org.jsoup.select.NodeVisitor p_visitor_1273_line_55 = visitor;
				org.jsoup.nodes.Node v_node_1275_line_55 = node;
				int v_depth_1276_line_55 = depth;
				int PROBE_END_LINE_55 = 55;
				p_visitor_1273_line_55.tail(v_node_1275_line_55, v_depth_1276_line_55);
                int PROBE_START_LINE_56 = 57;
				org.jsoup.nodes.Node v_node_1275_line_56 = node;
				org.jsoup.nodes.Node p_root_1274_line_56 = root;
				boolean node_traversor_1_expr17_line_56 = v_node_1275_line_56 == p_root_1274_line_56;
				int PROBE_END_LINE_56 = 57;
				if (node_traversor_1_expr17_line_56)
                    break;
                node = node.nextSibling();
            }
        }
    }

    /**
     * Start a depth-first traverse of all elements.
     * @param visitor Node visitor.
     * @param elements Elements to filter.
     */
    public static void traverse(NodeVisitor visitor, Elements elements) {
        Validate.notNull(visitor);
        Validate.notNull(elements);
        for (Element el : elements)
            traverse(visitor, el);
    }

    /**
     * Start a depth-first filtering of the root and all of its descendants.
     * @param filter Node visitor.
     * @param root the root node point to traverse.
     * @return The filter result of the root node, or {@link FilterResult#STOP}.
     */
    public static FilterResult filter(NodeFilter filter, Node root) {
        Node node = root;
        int depth = 0;

        while (node != null) {
            FilterResult result = filter.head(node, depth);
            if (result == FilterResult.STOP)
                return result;
            // Descend into child nodes:
            if (result == FilterResult.CONTINUE && node.childNodeSize() > 0) {
                node = node.childNode(0);
                ++depth;
                continue;
            }
            // No siblings, move upwards:
            while (node.nextSibling() == null && depth > 0) {
                // 'tail' current node:
                if (result == FilterResult.CONTINUE || result == FilterResult.SKIP_CHILDREN) {
                    result = filter.tail(node, depth);
                    if (result == FilterResult.STOP)
                        return result;
                }
                Node prev = node; // In case we need to remove it below.
                node = node.parentNode();
                depth--;
                if (result == FilterResult.REMOVE)
                    prev.remove(); // Remove AFTER finding parent.
                result = FilterResult.CONTINUE; // Parent was not pruned.
            }
            // 'tail' current node, then proceed with siblings:
            if (result == FilterResult.CONTINUE || result == FilterResult.SKIP_CHILDREN) {
                result = filter.tail(node, depth);
                if (result == FilterResult.STOP)
                    return result;
            }
            if (node == root)
                return result;
            Node prev = node; // In case we need to remove it below.
            node = node.nextSibling();
            if (result == FilterResult.REMOVE)
                prev.remove(); // Remove AFTER finding sibling.
        }
        // root == null?
        return FilterResult.CONTINUE;
    }

    /**
     * Start a depth-first filtering of all elements.
     * @param filter Node filter.
     * @param elements Elements to filter.
     */
    public static void filter(NodeFilter filter, Elements elements) {
        Validate.notNull(filter);
        Validate.notNull(elements);
        for (Element el : elements)
            if (filter(filter, el) == FilterResult.STOP)
                break;
    }
}
