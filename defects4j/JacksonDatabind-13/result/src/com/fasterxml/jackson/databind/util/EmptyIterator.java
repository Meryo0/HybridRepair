package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

/**
 * Implementation of {@link Iterator} for Empty collections.
 * While JDK has an implementation starting with 1.7, we need this
 * class until then.
 * 
 * @since 2.2 (before, we had embedded instances)
 */
public class EmptyIterator<T> implements Iterator<T> {
    private final static EmptyIterator<?> instance = new EmptyIterator<Object>();

    @SuppressWarnings("unchecked")
    public static <T> Iterator<T> instance() { int PROBE_START_LINE_17 = 17;
		EmptyIterator<?> f_instance_4250_line_17 = instance;
		int PROBE_END_LINE_17 = 17;
	return (Iterator<T>) f_instance_4250_line_17; }
    
    @Override public boolean hasNext() { return false; }
    @Override public T next() { throw new NoSuchElementException(); }
    @Override public void remove() { throw new UnsupportedOperationException(); }
}
