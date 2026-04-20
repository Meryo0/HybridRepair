package com.fasterxml.jackson.databind.util;

/**
 * Node of a forward-only linked list.
 * 
 * @author tatu
 */
public final class LinkedNode<T>
{
    private final T value;

    private LinkedNode<T> next;
    
    public LinkedNode(T value, LinkedNode<T> next)
    {
        int PROBE_START_LINE_16 = 16;
		T p_value_4834_line_16 = value;
		int PROBE_END_LINE_16 = 16;
		this.value = p_value_4834_line_16;
        int PROBE_START_LINE_17 = 17;
		LinkedNode<T> p_next_4835_line_17 = next;
		int PROBE_END_LINE_17 = 17;
		this.next = p_next_4835_line_17;
    }
    
    public void linkNext(LinkedNode<T> n)
    {
        if (next != null) { // sanity check
            throw new IllegalStateException();
        }
        next = n;
    }
    
    public LinkedNode<T> next() { int PROBE_START_LINE_28 = 28;
		LinkedNode<T> f_next_4837_line_28 = next;
		int PROBE_END_LINE_28 = 28;
	return f_next_4837_line_28; }
    
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
