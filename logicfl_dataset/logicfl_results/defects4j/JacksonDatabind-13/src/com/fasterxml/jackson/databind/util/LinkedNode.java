package com.fasterxml.jackson.databind.util;

/**
 * Node of a forward-only linked list.
 * 
 * @author tatu
 *
 * @param <T> Type of contained object
 */
public final class LinkedNode<T>
{
    private final T value;

    private LinkedNode<T> next;
    
    public LinkedNode(T value, LinkedNode<T> next)
    {
        int PROBE_START_LINE_18 = 18;
		T p_value_4262_line_18 = value;
		int PROBE_END_LINE_18 = 18;
		this.value = p_value_4262_line_18;
        int PROBE_START_LINE_19 = 19;
		LinkedNode<T> p_next_4263_line_19 = next;
		int PROBE_END_LINE_19 = 19;
		this.next = p_next_4263_line_19;
    }
    
    public void linkNext(LinkedNode<T> n)
    {
        if (next != null) { // sanity check
            throw new IllegalStateException();
        }
        next = n;
    }
    
    public LinkedNode<T> next() { int PROBE_START_LINE_30 = 30;
		LinkedNode<T> f_next_4265_line_30 = next;
		int PROBE_END_LINE_30 = 30;
	return f_next_4265_line_30; }
    
    public T value() { return value; }
    
    /**
     * Convenience method that can be used to check if a linked list
     * with given head node (which may be null to indicate empty list)
     * contains given value
     * 
     * @param <ST> Type argument that defines contents of the linked list parameter
     * @param node Head node of the linked list
     * @param value Value to look for
     * @return True if linked list contains the value, false otherwise
     */
    public static <ST> boolean contains(LinkedNode<ST> node, ST value)
    {
        while (node != null) {
            if (node.value() == value) {
                return true;
            }
            node = node.next();
        }
        return false;
    }
}
