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
package org.apache.commons.collections4.collection;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.collections4.iterators.EmptyIterator;
import org.apache.commons.collections4.iterators.IteratorChain;
import org.apache.commons.collections4.list.UnmodifiableList;

/**
 * Decorates a collection of other collections to provide a single unified view.
 * <p>
 * Changes made to this collection will actually be made on the decorated collection.
 * Add and remove operations require the use of a pluggable strategy. If no
 * strategy is provided then add and remove are unsupported.
 *
 * @param <E> the type of the elements in the collection
 * @since 3.0
 */
public class CompositeCollection<E> implements Collection<E>, Serializable {

    /** Serialization version */
    private static final long serialVersionUID = 8417515734108306801L;

    /** CollectionMutator to handle changes to the collection */
    private CollectionMutator<E> mutator;

    /** Collections in the composite */
    private final List<Collection<E>> all = new ArrayList<>();

    /**
     * Create an empty CompositeCollection.
     */
    public CompositeCollection() {
        super();
    }

    /**
     * Create a Composite Collection with one collection.
     *
     * @param compositeCollection  the Collection to be appended to the composite
     */
    public CompositeCollection(final Collection<E> compositeCollection) {
        super();
        addComposited(compositeCollection);
    }

    /**
     * Create a Composite Collection with two collections.
     *
     * @param compositeCollection1  the Collection to be appended to the composite
     * @param compositeCollection2  the Collection to be appended to the composite
     */
    public CompositeCollection(final Collection<E> compositeCollection1,
                               final Collection<E> compositeCollection2) {
        super();
        addComposited(compositeCollection1, compositeCollection2);
    }

    /**
     * Create a Composite Collection with an array of collections.
     *
     * @param compositeCollections  the collections to composite
     */
    public CompositeCollection(final Collection<E>... compositeCollections) {
        super();
        addComposited(compositeCollections);
    }

    //-----------------------------------------------------------------------
    /**
     * Gets the size of this composite collection.
     * <p>
     * This implementation calls <code>size()</code> on each collection.
     *
     * @return total number of elements in all contained containers
     */
    @Override
    public int size() {
        int size = 0;
        int PROBE_START_LINE_102 = 104;
		List<Collection<E>> f_all_7_line_102 = all;
		int PROBE_END_LINE_102 = 104;
		for (final Collection<E> item : f_all_7_line_102) {
            int PROBE_START_LINE_103 = 103;
			Collection<E> v_item_8_line_103 = item;
			int composite_collection_1_expr4_line_103 = v_item_8_line_103.size();
			int PROBE_END_LINE_103 = 103;
			size += composite_collection_1_expr4_line_103;
        }
        return size;
    }

    /**
     * Checks whether this composite collection is empty.
     * <p>
     * This implementation calls <code>isEmpty()</code> on each collection.
     *
     * @return true if all of the contained collections are empty
     */
    @Override
    public boolean isEmpty() {
        for (final Collection<E> item : all) {
            if (item.isEmpty() == false) {
                return false;
            }
        }
        return true;
    }

    /**
     * Checks whether this composite collection contains the object.
     * <p>
     * This implementation calls <code>contains()</code> on each collection.
     *
     * @param obj  the object to search for
     * @return true if obj is contained in any of the contained collections
     */
    @Override
    public boolean contains(final Object obj) {
        int PROBE_START_LINE_135 = 139;
		List<Collection<E>> f_all_7_line_135 = all;
		int PROBE_END_LINE_135 = 139;
		for (final Collection<E> item : f_all_7_line_135) {
            int PROBE_START_LINE_136 = 138;
			Collection<E> v_item_10_line_136 = item;
			Object p_obj_9_line_136 = obj;
			boolean composite_collection_1_expr5_line_136 = v_item_10_line_136.contains(p_obj_9_line_136);
			int PROBE_END_LINE_136 = 138;
			if (composite_collection_1_expr5_line_136) {
                return true;
            }
        }
        return false;
    }

    /**
     * Gets an iterator over all the collections in this composite.
     * <p>
     * This implementation uses an <code>IteratorChain</code>.
     *
     * @return an <code>IteratorChain</code> instance which supports
     *  <code>remove()</code>. Iteration occurs over contained collections in
     *  the order they were added, but this behavior should not be relied upon.
     * @see IteratorChain
     */
    @Override
    public Iterator<E> iterator() {
        if (all.isEmpty()) {
            return EmptyIterator.<E>emptyIterator();
        }
        final IteratorChain<E> chain = new IteratorChain<>();
        for (final Collection<E> item : all) {
            chain.addIterator(item.iterator());
        }
        return chain;
    }

    /**
     * Returns an array containing all of the elements in this composite.
     *
     * @return an object array of all the elements in the collection
     */
    @Override
    public Object[] toArray() {
        final Object[] result = new Object[size()];
        int i = 0;
        for (final Iterator<E> it = iterator(); it.hasNext(); i++) {
            result[i] = it.next();
        }
        return result;
    }

    /**
     * Returns an object array, populating the supplied array if possible.
     * See <code>Collection</code> interface for full details.
     *
     * @param <T>  the type of the elements in the collection
     * @param array  the array to use, populating if possible
     * @return an array of all the elements in the collection
     */
    @Override
    @SuppressWarnings("unchecked")
    public <T> T[] toArray(final T[] array) {
        final int size = size();
        Object[] result = null;
        if (array.length >= size) {
            result = array;
        } else {
            result = (Object[]) Array.newInstance(array.getClass().getComponentType(), size);
        }

        int offset = 0;
        for (final Collection<E> item : all) {
            for (final E e : item) {
                result[offset++] = e;
            }
        }
        if (result.length > size) {
            result[size] = null;
        }
        return (T[]) result;
    }

    /**
     * Adds an object to the collection, throwing UnsupportedOperationException
     * unless a CollectionMutator strategy is specified.
     *
     * @param obj  the object to add
     * @return {@code true} if the collection was modified
     * @throws UnsupportedOperationException if CollectionMutator hasn't been set
     * @throws UnsupportedOperationException if add is unsupported
     * @throws ClassCastException if the object cannot be added due to its type
     * @throws NullPointerException if the object cannot be added because its null
     * @throws IllegalArgumentException if the object cannot be added
     */
    @Override
    public boolean add(final E obj) {
        if (mutator == null) {
           throw new UnsupportedOperationException(
               "add() is not supported on CompositeCollection without a CollectionMutator strategy");
        }
        return mutator.add(this, all, obj);
    }

    /**
     * Removes an object from the collection, throwing UnsupportedOperationException
     * unless a CollectionMutator strategy is specified.
     *
     * @param obj  the object being removed
     * @return true if the collection is changed
     * @throws UnsupportedOperationException if removed is unsupported
     * @throws ClassCastException if the object cannot be removed due to its type
     * @throws NullPointerException if the object cannot be removed because its null
     * @throws IllegalArgumentException if the object cannot be removed
     */
    @Override
    public boolean remove(final Object obj) {
        if (mutator == null) {
            throw new UnsupportedOperationException(
                "remove() is not supported on CompositeCollection without a CollectionMutator strategy");
        }
        return mutator.remove(this, all, obj);
    }

    /**
     * Checks whether this composite contains all the elements in the specified collection.
     * <p>
     * This implementation calls <code>contains()</code> for each element in the
     * specified collection.
     *
     * @param coll  the collection to check for
     * @return true if all elements contained
     */
    @Override
    public boolean containsAll(final Collection<?> coll) {
        int PROBE_START_LINE_263 = 267;
		Collection<?> p_coll_14_line_263 = coll;
		int PROBE_END_LINE_263 = 267;
		for (final Object item : p_coll_14_line_263) {
            int PROBE_START_LINE_264 = 266;
			Object v_item_15_line_264 = item;
			boolean composite_collection_1_expr7_line_264 = contains(v_item_15_line_264);
			boolean composite_collection_1_expr6_line_264 = composite_collection_1_expr7_line_264 == false;
			int PROBE_END_LINE_264 = 266;
			if (composite_collection_1_expr6_line_264) {
                return false;
            }
        }
        return true;
    }

    /**
     * Adds a collection of elements to this collection, throwing
     * UnsupportedOperationException unless a CollectionMutator strategy is specified.
     *
     * @param coll  the collection to add
     * @return true if the collection was modified
     * @throws UnsupportedOperationException if CollectionMutator hasn't been set
     * @throws UnsupportedOperationException if add is unsupported
     * @throws ClassCastException if the object cannot be added due to its type
     * @throws NullPointerException if the object cannot be added because its null
     * @throws IllegalArgumentException if the object cannot be added
     */
    @Override
    public boolean addAll(final Collection<? extends E> coll) {
        if (mutator == null) {
            throw new UnsupportedOperationException(
                "addAll() is not supported on CompositeCollection without a CollectionMutator strategy");
        }
        return mutator.addAll(this, all, coll);
    }

    /**
     * Removes the elements in the specified collection from this composite collection.
     * <p>
     * This implementation calls <code>removeAll</code> on each collection.
     *
     * @param coll  the collection to remove
     * @return true if the collection was modified
     * @throws UnsupportedOperationException if removeAll is unsupported
     */
    @Override
    public boolean removeAll(final Collection<?> coll) {
        int PROBE_START_LINE_303 = 305;
		Collection<?> p_coll_17_line_303 = coll;
		int composite_collection_1_expr9_line_303 = p_coll_17_line_303.size();
		boolean composite_collection_1_expr8_line_303 = composite_collection_1_expr9_line_303 == 0;
		int PROBE_END_LINE_303 = 305;
		if (composite_collection_1_expr8_line_303) {
            return false;
        }
        boolean changed = false;
        int PROBE_START_LINE_307 = 309;
		List<Collection<E>> f_all_7_line_307 = all;
		int PROBE_END_LINE_307 = 309;
		for (final Collection<E> item : f_all_7_line_307) {
            int PROBE_START_LINE_308 = 308;
			Collection<E> v_item_19_line_308 = item;
			Collection<?> p_coll_17_line_308 = coll;
			boolean composite_collection_1_expr11_line_308 = v_item_19_line_308.removeAll(p_coll_17_line_308);
			int PROBE_END_LINE_308 = 308;
			changed |= composite_collection_1_expr11_line_308;
        }
        int PROBE_START_LINE_310 = 310;
		boolean v_changed_18_line_310 = changed;
		int PROBE_END_LINE_310 = 310;
		return v_changed_18_line_310;
    }

    /**
     * Retains all the elements in the specified collection in this composite collection,
     * removing all others.
     * <p>
     * This implementation calls <code>retainAll()</code> on each collection.
     *
     * @param coll  the collection to remove
     * @return true if the collection was modified
     * @throws UnsupportedOperationException if retainAll is unsupported
     */
    @Override
    public boolean retainAll(final Collection<?> coll) {
        boolean changed = false;
        int PROBE_START_LINE_326 = 328;
		List<Collection<E>> f_all_7_line_326 = all;
		int PROBE_END_LINE_326 = 328;
		for (final Collection<E> item : f_all_7_line_326) {
            int PROBE_START_LINE_327 = 327;
			Collection<E> v_item_22_line_327 = item;
			Collection<?> p_coll_20_line_327 = coll;
			boolean composite_collection_1_expr13_line_327 = v_item_22_line_327.retainAll(p_coll_20_line_327);
			int PROBE_END_LINE_327 = 327;
			changed |= composite_collection_1_expr13_line_327;
        }
        int PROBE_START_LINE_329 = 329;
		boolean v_changed_21_line_329 = changed;
		int PROBE_END_LINE_329 = 329;
		return v_changed_21_line_329;
    }

    /**
     * Removes all of the elements from this collection .
     * <p>
     * This implementation calls <code>clear()</code> on each collection.
     *
     * @throws UnsupportedOperationException if clear is unsupported
     */
    @Override
    public void clear() {
        for (final Collection<E> coll : all) {
            coll.clear();
        }
    }

    //-----------------------------------------------------------------------
    /**
     * Specify a CollectionMutator strategy instance to handle changes.
     *
     * @param mutator  the mutator to use
     */
    public void setMutator(final CollectionMutator<E> mutator) {
        int PROBE_START_LINE_353 = 353;
		org.apache.commons.collections4.collection.CompositeCollection.CollectionMutator<E> p_mutator_23_line_353 = mutator;
		int PROBE_END_LINE_353 = 353;
		this.mutator = p_mutator_23_line_353;
    }

    /**
     * Add these Collections to the list of collections in this composite
     *
     * @param compositeCollection  the Collection to be appended to the composite
     */
    public void addComposited(final Collection<E> compositeCollection) {
        int PROBE_START_LINE_362 = 362;
		List<Collection<E>> f_all_7_line_362 = all;
		Collection<E> p_composite_collection_25_line_362 = compositeCollection;
		int PROBE_END_LINE_362 = 362;
		f_all_7_line_362.add(p_composite_collection_25_line_362);
    }

    /**
     * Add these Collections to the list of collections in this composite
     *
     * @param compositeCollection1  the Collection to be appended to the composite
     * @param compositeCollection2  the Collection to be appended to the composite
     */
    public void addComposited(final Collection<E> compositeCollection1,
                              final Collection<E> compositeCollection2) {
        int PROBE_START_LINE_373 = 373;
								List<Collection<E>> f_all_7_line_373 = all;
								Collection<E> p_composite_collection1_26_line_373 = compositeCollection1;
								int PROBE_END_LINE_373 = 373;
		f_all_7_line_373.add(p_composite_collection1_26_line_373);
        int PROBE_START_LINE_374 = 374;
		List<Collection<E>> f_all_7_line_374 = all;
		Collection<E> p_composite_collection2_27_line_374 = compositeCollection2;
		int PROBE_END_LINE_374 = 374;
		f_all_7_line_374.add(p_composite_collection2_27_line_374);
    }

    /**
     * Add these Collections to the list of collections in this composite
     *
     * @param compositeCollections  the Collections to be appended to the composite
     */
    public void addComposited(final Collection<E>... compositeCollections) {
        int PROBE_START_LINE_383 = 383;
		List<Collection<E>> f_all_7_line_383 = all;
		Collection<E>[] p_composite_collections_28_line_383 = compositeCollections;
		List<Collection<E>> composite_collection_1_expr21_line_383 = Arrays.asList(p_composite_collections_28_line_383);
		int PROBE_END_LINE_383 = 383;
		f_all_7_line_383.addAll(composite_collection_1_expr21_line_383);
    }

    /**
     * Removes a collection from the those being decorated in this composite.
     *
     * @param coll  collection to be removed
     */
    public void removeComposited(final Collection<E> coll) {
        all.remove(coll);
    }

    //-----------------------------------------------------------------------
    /**
     * Returns a new collection containing all of the elements
     *
     * @return A new ArrayList containing all of the elements in this composite.
     *         The new collection is <i>not</i> backed by this composite.
     */
    public Collection<E> toCollection() {
        return new ArrayList<>(this);
    }

    /**
     * Gets the collections being decorated.
     *
     * @return Unmodifiable list of all collections in this composite.
     */
    public List<Collection<E>> getCollections() {
        return UnmodifiableList.unmodifiableList(all);
    }

    /**
     * Get the collection mutator to be used for this CompositeCollection.
     * @return CollectionMutator&lt;E&gt;
     */
    protected CollectionMutator<E> getMutator() {
        return mutator;
    }

    //-----------------------------------------------------------------------
    /**
     * Pluggable strategy to handle changes to the composite.
     *
     * @param <E> the element being held in the collection
     */
    public interface CollectionMutator<E> extends Serializable {

        /**
         * Called when an object is to be added to the composite.
         *
         * @param composite  the CompositeCollection being changed
         * @param collections  all of the Collection instances in this CompositeCollection
         * @param obj  the object being added
         * @return true if the collection is changed
         * @throws UnsupportedOperationException if add is unsupported
         * @throws ClassCastException if the object cannot be added due to its type
         * @throws NullPointerException if the object cannot be added because its null
         * @throws IllegalArgumentException if the object cannot be added
         */
        boolean add(CompositeCollection<E> composite, List<Collection<E>> collections, E obj);

        /**
         * Called when a collection is to be added to the composite.
         *
         * @param composite  the CompositeCollection being changed
         * @param collections  all of the Collection instances in this CompositeCollection
         * @param coll  the collection being added
         * @return true if the collection is changed
         * @throws UnsupportedOperationException if add is unsupported
         * @throws ClassCastException if the object cannot be added due to its type
         * @throws NullPointerException if the object cannot be added because its null
         * @throws IllegalArgumentException if the object cannot be added
         */
        boolean addAll(CompositeCollection<E> composite,
                              List<Collection<E>> collections,
                              Collection<? extends E> coll);

        /**
         * Called when an object is to be removed to the composite.
         *
         * @param composite  the CompositeCollection being changed
         * @param collections  all of the Collection instances in this CompositeCollection
         * @param obj  the object being removed
         * @return true if the collection is changed
         * @throws UnsupportedOperationException if removed is unsupported
         * @throws ClassCastException if the object cannot be removed due to its type
         * @throws NullPointerException if the object cannot be removed because its null
         * @throws IllegalArgumentException if the object cannot be removed
         */
        boolean remove(CompositeCollection<E> composite,
                              List<Collection<E>> collections,
                              Object obj);

    }

}

