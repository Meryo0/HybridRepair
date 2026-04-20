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

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import org.junit.Assert;

/**
 * Extension of {@link AbstractCollectionTest} for exercising the
 * {@link CompositeCollection} implementation.
 *
 * @since 3.0
 */
public class CompositeCollectionTest<E> extends AbstractCollectionTest<E> {

    protected CompositeCollection<E> c;

 protected Collection<E> one;

    protected Collection<E> two;

    public CompositeCollectionTest(final String name) {
        super(name);
    }

    @Override
    public String getCompatibilityVersion() {
        return "4";
    }

    @Override
    @SuppressWarnings("unchecked")
    public E[] getFullElements() {
        return (E[]) new Object[] { "1", "2", "3", "4" };
    }

    //-----------------------------------------------------------------------------
    /**
     * Run stock collection tests without Mutator, so turn off add, remove
     */
    @Override
    public boolean isAddSupported() {
        return false;
    }

    @Override
    public boolean isRemoveSupported() {
        return false;
    }

    @Override
    public Collection<E> makeConfirmedCollection() {
        return new HashSet<>();
    }

    //--------------------------------------------------------------------------

    /**
     * Full collection should look like a collection with 4 elements
     */
    @Override
    public Collection<E> makeConfirmedFullCollection() {
        final Collection<E> collection = new HashSet<>();
        collection.addAll(Arrays.asList(getFullElements()));
        return collection;
    }
    /**
     * Full collection consists of 4 collections, each with one element
     */
    @Override
    public Collection<E> makeFullCollection() {
        final CompositeCollection<E> compositeCollection = new CompositeCollection<>();
        final E[] elements = getFullElements();
        for (final E element : elements) {
            final Collection<E> summand = new HashSet<>();
            summand.add(element);
            compositeCollection.addComposited(summand);
        }
        return compositeCollection;
    }
    /**
     * Empty collection is empty composite
     */
    @Override
    public Collection<E> makeObject() {
        return new CompositeCollection<>();
    }

    @SuppressWarnings("serial")
    protected void setUpMutatorTest() {
        setUpTest();
        int PROBE_START_LINE_112 = 139;
		CompositeCollection<E> f_c_40_line_112 = c;
		int PROBE_END_LINE_112 = 139;
		f_c_40_line_112.setMutator(new CompositeCollection.CollectionMutator<E>() {

            @Override
            public boolean add(final CompositeCollection<E> composite, final List<Collection<E>> collections, final E obj) {
                for (final Collection<E> coll : collections) {
                    coll.add(obj);
                }
                return true;
            }

            @Override
            public boolean addAll(final CompositeCollection<E> composite,
                    final List<Collection<E>> collections, final Collection<? extends E> coll) {
                for (final Collection<E> collection : collections) {
                    collection.addAll(coll);
                }
                return true;
            }

            @Override
            public boolean remove(final CompositeCollection<E> composite,
                    final List<Collection<E>> collections, final Object obj) {
                for (final Collection<E> collection : collections) {
                    collection.remove(obj);
                }
                return true;
            }
        });
    }

    protected void setUpTest() {
        c = new CompositeCollection<>();
        one = new HashSet<>();
        two = new HashSet<>();
    }

    @SuppressWarnings({ "unchecked", "serial" })
    public void testAddAllMutator() {
        setUpTest();
        c.setMutator(new CompositeCollection.CollectionMutator<E>() {
            @Override
            public boolean add(final CompositeCollection<E> composite,
                    final List<Collection<E>> collections, final E obj) {
                for (final Collection<E> collection : collections) {
                    collection.add(obj);
                }
                return true;
            }

            @Override
            public boolean addAll(final CompositeCollection<E> composite,
                    final List<Collection<E>> collections, final Collection<? extends E> coll) {
                for (final Collection<E> collection : collections) {
                    collection.addAll(coll);
                }
                return true;
            }

            @Override
            public boolean remove(final CompositeCollection<E> composite,
                    final List<Collection<E>> collections, final Object obj) {
                return false;
            }
        });

        c.addComposited(one);
        two.add((E) "foo");
        c.addAll(two);
        assertTrue(c.contains("foo"));
        assertTrue(one.contains("foo"));
    }

    @SuppressWarnings("unchecked")
    public void testAddAllToCollection() {
        setUpTest();
        one.add((E) "1");
        two.add((E) "2");
        c.addComposited(one, two);
        final Collection<E> toCollection = new HashSet<>();
        toCollection.addAll(c);
        assertTrue(toCollection.containsAll(c));
        assertEquals(c.size(), toCollection.size());
    }

    @SuppressWarnings({ "unchecked", "serial" })
    public void testAddMutator() {
        setUpTest();
        c.setMutator(new CompositeCollection.CollectionMutator<E>() {
            @Override
            public boolean add(final CompositeCollection<E> composite,
                    final List<Collection<E>> collections, final E obj) {
                for (final Collection<E> collection : collections) {
                    collection.add(obj);
                }
                return true;
            }

            @Override
            public boolean addAll(final CompositeCollection<E> composite,
                    final List<Collection<E>> collections, final Collection<? extends E> coll) {
                for (final Collection<E> collection : collections) {
                    collection.addAll(coll);
                }
                return true;
            }

            @Override
            public boolean remove(final CompositeCollection<E> composite,
                    final List<Collection<E>> collections, final Object obj) {
                return false;
            }
        });

        c.addComposited(one);
        c.add((E) "foo");
        assertTrue(c.contains("foo"));
        assertTrue(one.contains("foo"));
    }


    @SuppressWarnings("unchecked")
    public void testClear() {
        setUpTest();
        one.add((E) "1");
        two.add((E) "2");
        c.addComposited(one, two);
        c.clear();
        assertTrue(one.isEmpty());
        assertTrue(two.isEmpty());
        assertTrue(c.isEmpty());
    }

    @SuppressWarnings("unchecked")
    public void testContainsAll() {
        setUpTest();
        int PROBE_START_LINE_247 = 247;
		Collection<E> f_one_50_line_247 = one;
		int PROBE_END_LINE_247 = 247;
		f_one_50_line_247.add((E) "1");
        int PROBE_START_LINE_248 = 248;
		Collection<E> f_two_51_line_248 = two;
		int PROBE_END_LINE_248 = 248;
		f_two_51_line_248.add((E) "1");
        int PROBE_START_LINE_249 = 249;
		CompositeCollection<E> f_c_40_line_249 = c;
		Collection<E> f_one_50_line_249 = one;
		int PROBE_END_LINE_249 = 249;
		f_c_40_line_249.addComposited(f_one_50_line_249);
        int PROBE_START_LINE_250 = 250;
		CompositeCollection<E> f_c_40_line_250 = c;
		Collection<E> f_two_51_line_250 = two;
		boolean composite_collection_test_1_expr18_line_250 = f_c_40_line_250.containsAll(f_two_51_line_250);
		int PROBE_END_LINE_250 = 250;
		assertTrue(composite_collection_test_1_expr18_line_250);
        int PROBE_START_LINE_251 = 251;
		CompositeCollection<E> f_c_40_line_251 = c;
		boolean composite_collection_test_1_expr20_line_251 = f_c_40_line_251.containsAll(null);
		int PROBE_END_LINE_251 = 251;
		assertFalse(composite_collection_test_1_expr20_line_251);
    }

    public void testAddNullList() {
        ArrayList<String> nullList = null;
        CompositeCollection<String> cc = new CompositeCollection<>();
        int PROBE_START_LINE_257 = 257;
		CompositeCollection<String> v_cc_71_line_257 = cc;
		ArrayList<String> v_null_list_70_line_257 = nullList;
		int PROBE_END_LINE_257 = 257;
		v_cc_71_line_257.addComposited(v_null_list_70_line_257);
        int PROBE_START_LINE_258 = 258;
		CompositeCollection<String> v_cc_71_line_258 = cc;
		int composite_collection_test_1_expr24_line_258 = v_cc_71_line_258.size();
		int PROBE_END_LINE_258 = 258;
		Assert.assertEquals(0, composite_collection_test_1_expr24_line_258);
    }
    
    public void testAddNullLists2Args() {
        ArrayList<String> nullList = null;
        CompositeCollection<String> cc = new CompositeCollection<>();
        int PROBE_START_LINE_264 = 264;
		CompositeCollection<String> v_cc_73_line_264 = cc;
		ArrayList<String> v_null_list_72_line_264 = nullList;
		ArrayList<String> v_null_list_72_line_264_v1 = nullList;
		int PROBE_END_LINE_264 = 264;
		v_cc_73_line_264.addComposited(v_null_list_72_line_264, v_null_list_72_line_264_v1);
        int PROBE_START_LINE_265 = 265;
		CompositeCollection<String> v_cc_73_line_265 = cc;
		int composite_collection_test_1_expr28_line_265 = v_cc_73_line_265.size();
		int PROBE_END_LINE_265 = 265;
		Assert.assertEquals(0, composite_collection_test_1_expr28_line_265);
    }
    
    public void testAddNullListsVarArgs() {
        ArrayList<String> nullList = null;
        CompositeCollection<String> cc = new CompositeCollection<>();
        int PROBE_START_LINE_271 = 271;
		CompositeCollection<String> v_cc_75_line_271 = cc;
		ArrayList<String> v_null_list_74_line_271 = nullList;
		ArrayList<String> v_null_list_74_line_271_v1 = nullList;
		ArrayList<String> v_null_list_74_line_271_v2 = nullList;
		int PROBE_END_LINE_271 = 271;
		v_cc_75_line_271.addComposited(v_null_list_74_line_271, v_null_list_74_line_271_v1, v_null_list_74_line_271_v2);
        int PROBE_START_LINE_272 = 272;
		CompositeCollection<String> v_cc_75_line_272 = cc;
		int composite_collection_test_1_expr32_line_272 = v_cc_75_line_272.size();
		int PROBE_END_LINE_272 = 272;
		Assert.assertEquals(0, composite_collection_test_1_expr32_line_272);
    }
    
    @SuppressWarnings("unchecked")
    public void testIsEmpty() {
        setUpTest();
        assertTrue(c.isEmpty());
        final HashSet<E> empty = new HashSet<>();
        c.addComposited(empty);
        assertTrue(c.isEmpty());
        empty.add((E) "a");
        assertTrue(!c.isEmpty());
    }

    @SuppressWarnings("unchecked")
    public void testIterator() {
        setUpTest();
        one.add((E) "1");
        two.add((E) "2");
        c.addComposited(one);
        c.addComposited(two);
        final Iterator<E> i = c.iterator();
        E next = i.next();
        assertTrue(c.contains(next));
        assertTrue(one.contains(next));
        next = i.next();
        i.remove();
        assertTrue(!c.contains(next));
        assertTrue(!two.contains(next));
    }

    @SuppressWarnings("unchecked")
    public void testMultipleCollectionsSize() {
        setUpTest();
        final HashSet<E> set = new HashSet<>();
        set.add((E) "a");
        set.add((E) "b");
        c.addComposited(set);
        final HashSet<E> other = new HashSet<>();
        other.add((E) "c");
        c.addComposited(other);
        assertEquals(set.size() + other.size(), c.size());
    }

    @SuppressWarnings("unchecked")
    public void testRemove() {
        setUpMutatorTest();
        one.add((E) "1");
        two.add((E) "2");
        two.add((E) "1");
        c.addComposited(one, two);
        c.remove("1");
        assertTrue(!c.contains("1"));
        assertTrue(!one.contains("1"));
        assertTrue(!two.contains("1"));
    }

    @SuppressWarnings("unchecked")
    public void testRemoveAll() {
        setUpMutatorTest();
        int PROBE_START_LINE_332 = 332;
		Collection<E> f_one_50_line_332 = one;
		int PROBE_END_LINE_332 = 332;
		f_one_50_line_332.add((E) "1");
        int PROBE_START_LINE_333 = 333;
		Collection<E> f_two_51_line_333 = two;
		int PROBE_END_LINE_333 = 333;
		f_two_51_line_333.add((E) "2");
        int PROBE_START_LINE_334 = 334;
		Collection<E> f_two_51_line_334 = two;
		int PROBE_END_LINE_334 = 334;
		f_two_51_line_334.add((E) "1");
        int PROBE_START_LINE_336 = 336;
		Collection<E> f_one_50_line_336 = one;
		int PROBE_END_LINE_336 = 336;
		// need separate list to remove, as otherwise one clears itself
        final Collection<E> removing = new ArrayList<>(f_one_50_line_336);
        int PROBE_START_LINE_337 = 337;
		CompositeCollection<E> f_c_40_line_337 = c;
		Collection<E> f_one_50_line_337 = one;
		Collection<E> f_two_51_line_337 = two;
		int PROBE_END_LINE_337 = 337;
		f_c_40_line_337.addComposited(f_one_50_line_337, f_two_51_line_337);
        int PROBE_START_LINE_338 = 338;
		CompositeCollection<E> f_c_40_line_338 = c;
		Collection<E> v_removing_76_line_338 = removing;
		int PROBE_END_LINE_338 = 338;
		f_c_40_line_338.removeAll(v_removing_76_line_338);
        int PROBE_START_LINE_339 = 339;
		CompositeCollection<E> f_c_40_line_339 = c;
		boolean composite_collection_test_1_expr45_line_339 = f_c_40_line_339.contains("1");
		boolean composite_collection_test_1_expr44_line_339 = !composite_collection_test_1_expr45_line_339;
		int PROBE_END_LINE_339 = 339;
		assertTrue(composite_collection_test_1_expr44_line_339);
        int PROBE_START_LINE_340 = 340;
		Collection<E> f_one_50_line_340 = one;
		boolean composite_collection_test_1_expr48_line_340 = f_one_50_line_340.contains("1");
		boolean composite_collection_test_1_expr47_line_340 = !composite_collection_test_1_expr48_line_340;
		int PROBE_END_LINE_340 = 340;
		assertTrue(composite_collection_test_1_expr47_line_340);
        int PROBE_START_LINE_341 = 341;
		Collection<E> f_two_51_line_341 = two;
		boolean composite_collection_test_1_expr51_line_341 = f_two_51_line_341.contains("1");
		boolean composite_collection_test_1_expr50_line_341 = !composite_collection_test_1_expr51_line_341;
		int PROBE_END_LINE_341 = 341;
		assertTrue(composite_collection_test_1_expr50_line_341);
        int PROBE_START_LINE_342 = 342;
		CompositeCollection<E> f_c_40_line_342 = c;
		int PROBE_END_LINE_342 = 342;
		f_c_40_line_342.removeAll(null);
        assertTrue(!c.contains("1"));
        assertTrue(!one.contains("1"));
        assertTrue(!two.contains("1"));
    }

    @SuppressWarnings("unchecked")
    public void testRemoveComposited() {
        setUpMutatorTest();
        one.add((E) "1");
        two.add((E) "2");
        two.add((E) "1");
        c.addComposited(one, two);
        c.removeComposited(one);
        assertTrue(c.contains("1"));
        assertEquals(2, c.size());
    }

    @SuppressWarnings("unchecked")
    public void testRetainAll() {
        setUpTest();
        int PROBE_START_LINE_363 = 363;
		Collection<E> f_one_50_line_363 = one;
		int PROBE_END_LINE_363 = 363;
		f_one_50_line_363.add((E) "1");
        int PROBE_START_LINE_364 = 364;
		Collection<E> f_one_50_line_364 = one;
		int PROBE_END_LINE_364 = 364;
		f_one_50_line_364.add((E) "2");
        int PROBE_START_LINE_365 = 365;
		Collection<E> f_two_51_line_365 = two;
		int PROBE_END_LINE_365 = 365;
		f_two_51_line_365.add((E) "1");
        int PROBE_START_LINE_366 = 366;
		CompositeCollection<E> f_c_40_line_366 = c;
		Collection<E> f_one_50_line_366 = one;
		int PROBE_END_LINE_366 = 366;
		f_c_40_line_366.addComposited(f_one_50_line_366);
        int PROBE_START_LINE_367 = 367;
		CompositeCollection<E> f_c_40_line_367 = c;
		Collection<E> f_two_51_line_367 = two;
		int PROBE_END_LINE_367 = 367;
		f_c_40_line_367.retainAll(f_two_51_line_367);
        int PROBE_START_LINE_368 = 368;
		CompositeCollection<E> f_c_40_line_368 = c;
		boolean composite_collection_test_1_expr64_line_368 = f_c_40_line_368.contains("2");
		boolean composite_collection_test_1_expr63_line_368 = !composite_collection_test_1_expr64_line_368;
		int PROBE_END_LINE_368 = 368;
		assertTrue(composite_collection_test_1_expr63_line_368);
        int PROBE_START_LINE_369 = 369;
		Collection<E> f_one_50_line_369 = one;
		boolean composite_collection_test_1_expr67_line_369 = f_one_50_line_369.contains("2");
		boolean composite_collection_test_1_expr66_line_369 = !composite_collection_test_1_expr67_line_369;
		int PROBE_END_LINE_369 = 369;
		assertTrue(composite_collection_test_1_expr66_line_369);
        int PROBE_START_LINE_370 = 370;
		CompositeCollection<E> f_c_40_line_370 = c;
		boolean composite_collection_test_1_expr69_line_370 = f_c_40_line_370.contains("1");
		int PROBE_END_LINE_370 = 370;
		assertTrue(composite_collection_test_1_expr69_line_370);
        int PROBE_START_LINE_371 = 371;
		Collection<E> f_one_50_line_371 = one;
		boolean composite_collection_test_1_expr71_line_371 = f_one_50_line_371.contains("1");
		int PROBE_END_LINE_371 = 371;
		assertTrue(composite_collection_test_1_expr71_line_371);
        int PROBE_START_LINE_372 = 372;
		CompositeCollection<E> f_c_40_line_372 = c;
		int PROBE_END_LINE_372 = 372;
		f_c_40_line_372.retainAll(null);
        assertTrue(!c.contains("2"));
        assertTrue(!one.contains("2"));
        assertTrue(c.contains("1"));
        assertTrue(one.contains("1"));
    }

    @SuppressWarnings("unchecked")
    public void testSize() {
        setUpTest();
        final HashSet<E> set = new HashSet<>();
        set.add((E) "a");
        set.add((E) "b");
        c.addComposited(set);
        assertEquals(set.size(), c.size());
    }

    @SuppressWarnings("unchecked")
    public void testToCollection() {
        setUpTest();
        one.add((E) "1");
        two.add((E) "2");
        c.addComposited(one, two);
        final Collection<E> foo = c.toCollection();
        assertTrue(foo.containsAll(c));
        assertEquals(c.size(), foo.size());
        one.add((E) "3");
        assertTrue(!foo.containsAll(c));
    }

    /**
     * Override testUnsupportedRemove, since the default impl expects removeAll,
     * retainAll and iterator().remove to throw
     */
    @Override
    public void testUnsupportedRemove() {
        resetFull();
        try {
            getCollection().remove(null);
            fail("remove should raise UnsupportedOperationException");
        } catch (final UnsupportedOperationException e) {
            // expected
        }
        verify();
    }

//    public void testCreate() throws Exception {
//        resetEmpty();
//        writeExternalFormToDisk((java.io.Serializable) getCollection(), "src/test/resources/data/test/CompositeCollection.emptyCollection.version4.obj");
//        resetFull();
//        writeExternalFormToDisk((java.io.Serializable) getCollection(), "src/test/resources/data/test/CompositeCollection.fullCollection.version4.obj");
//    }

}
