package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

/**
 * Iterator implementation used to efficiently expose contents of an
 * Array as read-only iterator.
 */
public class ArrayIterator<T> implements Iterator<T>, Iterable<T>
{
    private final T[] _a;
    
    private int _index;

    public ArrayIterator(T[] a) {
        int PROBE_START_LINE_17 = 17;
		T[] p_a_4161_line_17 = a;
		int PROBE_END_LINE_17 = 17;
		_a = p_a_4161_line_17;
        _index = 0;
    }
    
    @Override
    public boolean hasNext() { int PROBE_START_LINE_22 = 22;
		int f__index_4163_line_22 = _index;
		T[] f__a_4162_line_22 = _a;
		int q_length_144_line_22 = f__a_4162_line_22.length;
		boolean array_iterator_1_expr3_line_22 = f__index_4163_line_22 < q_length_144_line_22;
		int PROBE_END_LINE_22 = 22;
	return array_iterator_1_expr3_line_22; }

    @Override
    public T next() {
        if (_index >= _a.length) {
            throw new NoSuchElementException();
        }
        return _a[_index++];
    }

    @Override public void remove() { throw new UnsupportedOperationException(); }
    @Override public Iterator<T> iterator() { return this; }
}