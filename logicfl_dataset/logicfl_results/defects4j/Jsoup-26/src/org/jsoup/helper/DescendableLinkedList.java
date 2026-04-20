package org.jsoup.helper;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;

/**
 * Provides a descending iterator and other 1.6 methods to allow support on the 1.5 JRE.
 */
public class DescendableLinkedList<E> extends LinkedList<E> {

    /**
     * Create a new DescendableLinkedList.
     */
    public DescendableLinkedList() {
        super();
    }

    /**
     * Add a new element to the start of the list.
     * @param e element to add
     */
    public void push(E e) {
        int PROBE_START_LINE_24 = 24;
		E p_e_39_line_24 = e;
		int PROBE_END_LINE_24 = 24;
		addFirst(p_e_39_line_24);
    }

    /**
     * Look at the last element, if there is one.
     * @return the last element, or null
     */
    public E peekLast() {
        int PROBE_START_LINE_32 = 32;
		int descendable_linked_list_1_expr6_line_32 = size();
		boolean descendable_linked_list_1_expr4_line_32 = descendable_linked_list_1_expr6_line_32 == 0;
		E descendable_linked_list_1_expr5_line_32 = null;
		if (!descendable_linked_list_1_expr4_line_32) {
			descendable_linked_list_1_expr5_line_32 = getLast();
		}
		E descendable_linked_list_1_expr3_line_32 = descendable_linked_list_1_expr4_line_32
				? null
				: descendable_linked_list_1_expr5_line_32;
		int PROBE_END_LINE_32 = 32;
		return descendable_linked_list_1_expr3_line_32;
    }

    /**
     * Remove and return the last element, if there is one
     * @return the last element, or null
     */
    public E pollLast() {
        int PROBE_START_LINE_40 = 40;
		int descendable_linked_list_1_expr10_line_40 = size();
		boolean descendable_linked_list_1_expr8_line_40 = descendable_linked_list_1_expr10_line_40 == 0;
		E descendable_linked_list_1_expr9_line_40 = null;
		if (!descendable_linked_list_1_expr8_line_40) {
			descendable_linked_list_1_expr9_line_40 = removeLast();
		}
		E descendable_linked_list_1_expr7_line_40 = descendable_linked_list_1_expr8_line_40
				? null
				: descendable_linked_list_1_expr9_line_40;
		int PROBE_END_LINE_40 = 40;
		return descendable_linked_list_1_expr7_line_40;
    }

    /**
     * Get an iterator that starts and the end of the list and works towards the start.
     * @return an iterator that starts and the end of the list and works towards the start.
     */
    public Iterator<E> descendingIterator() {
        int PROBE_START_LINE_48 = 48;
		int descendable_linked_list_1_expr12_line_48 = size();
		int PROBE_END_LINE_48 = 48;
		return new DescendingIterator<E>(descendable_linked_list_1_expr12_line_48);
    }

    private class DescendingIterator<E> implements Iterator<E> {
        private final ListIterator<E> iter;

        @SuppressWarnings("unchecked")
        private DescendingIterator(int index) {
            int PROBE_START_LINE_56 = 56;
			int p_index_40_line_56 = index;
			ListIterator<E> descendable_linked_list_1_expr15_line_56 = (ListIterator<E>) (listIterator(
					p_index_40_line_56));
			int PROBE_END_LINE_56 = 56;
			iter = (ListIterator<E>) descendable_linked_list_1_expr15_line_56;
        }

        /**
         * Check if there is another element on the list.
         * @return if another element
         */
        public boolean hasNext() {
            int PROBE_START_LINE_64 = 64;
			ListIterator<E> f_iter_41_line_64 = iter;
			boolean descendable_linked_list_1_expr16_line_64 = f_iter_41_line_64.hasPrevious();
			int PROBE_END_LINE_64 = 64;
			return descendable_linked_list_1_expr16_line_64;
        }

        /**
         * Get the next element.
         * @return the next element.
         */
        public E next() {
            int PROBE_START_LINE_72 = 72;
			ListIterator<E> f_iter_41_line_72 = iter;
			E descendable_linked_list_1_expr17_line_72 = f_iter_41_line_72.previous();
			int PROBE_END_LINE_72 = 72;
			return descendable_linked_list_1_expr17_line_72;
        }

        /**
         * Remove the current element.
         */
        public void remove() {
            int PROBE_START_LINE_79 = 79;
			ListIterator<E> f_iter_41_line_79 = iter;
			int PROBE_END_LINE_79 = 79;
			f_iter_41_line_79.remove();
        }
    }
}
