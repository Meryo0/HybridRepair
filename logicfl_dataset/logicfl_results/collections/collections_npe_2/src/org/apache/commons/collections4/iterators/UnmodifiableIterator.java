/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.collections4.iterators;

import java.util.Iterator;

import org.apache.commons.collections4.Unmodifiable;

/**
 * Decorates an iterator such that it cannot be modified.
 * <p>
 * Attempts to modify it will result in an UnsupportedOperationException.
 *
 * @since 3.0
 */
public final class UnmodifiableIterator<E> implements Iterator<E>, Unmodifiable {

    /** The iterator being decorated */
    private final Iterator<? extends E> iterator;

    //-----------------------------------------------------------------------
    /**
     * Decorates the specified iterator such that it cannot be modified.
     * <p>
     * If the iterator is already unmodifiable it is returned directly.
     *
     * @param <E>  the element type
     * @param iterator  the iterator to decorate
     * @return a new unmodifiable iterator
     * @throws NullPointerException if the iterator is null
     */
    public static <E> Iterator<E> unmodifiableIterator(final Iterator<? extends E> iterator) {
        int PROBE_START_LINE_47 = 49;
		Iterator<? extends E> p_iterator_174_line_47 = iterator;
		boolean unmodifiable_iterator_1_expr1_line_47 = p_iterator_174_line_47 == null;
		int PROBE_END_LINE_47 = 49;
		if (unmodifiable_iterator_1_expr1_line_47) {
            throw new NullPointerException("Iterator must not be null");
        }
        int PROBE_START_LINE_50 = 54;
		Iterator<? extends E> p_iterator_174_line_50 = iterator;
		boolean unmodifiable_iterator_1_expr2_line_50 = p_iterator_174_line_50 instanceof Unmodifiable;
		int PROBE_END_LINE_50 = 54;
		if (unmodifiable_iterator_1_expr2_line_50) {
            @SuppressWarnings("unchecked") // safe to upcast
            final Iterator<E> tmpIterator = (Iterator<E>) iterator;
            return tmpIterator;
        }
        int PROBE_START_LINE_55 = 55;
		Iterator<? extends E> p_iterator_174_line_55 = iterator;
		int PROBE_END_LINE_55 = 55;
		return new UnmodifiableIterator<>(p_iterator_174_line_55);
    }

    //-----------------------------------------------------------------------
    /**
     * Constructor.
     *
     * @param iterator  the iterator to decorate
     */
    private UnmodifiableIterator(final Iterator<? extends E> iterator) {
        super();
        int PROBE_START_LINE_66 = 66;
		Iterator<? extends E> p_iterator_175_line_66 = iterator;
		int PROBE_END_LINE_66 = 66;
		this.iterator = p_iterator_175_line_66;
    }

    //-----------------------------------------------------------------------
    @Override
    public boolean hasNext() {
        int PROBE_START_LINE_72 = 72;
		Iterator<? extends E> f_iterator_176_line_72 = iterator;
		boolean unmodifiable_iterator_1_expr8_line_72 = f_iterator_176_line_72.hasNext();
		int PROBE_END_LINE_72 = 72;
		return unmodifiable_iterator_1_expr8_line_72;
    }

    @Override
    public E next() {
        int PROBE_START_LINE_77 = 77;
		Iterator<? extends E> f_iterator_176_line_77 = iterator;
		E unmodifiable_iterator_1_expr9_line_77 = f_iterator_176_line_77.next();
		int PROBE_END_LINE_77 = 77;
		return unmodifiable_iterator_1_expr9_line_77;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("remove() is not supported");
    }

}
