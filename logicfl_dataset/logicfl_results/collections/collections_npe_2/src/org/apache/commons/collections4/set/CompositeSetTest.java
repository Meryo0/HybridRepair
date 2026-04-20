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
package org.apache.commons.collections4.set;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections4.set.CompositeSet.SetMutator;

/**
 * Extension of {@link AbstractSetTest} for exercising the
 * {@link CompositeSet} implementation.
 *
 * @since 3.0
 */
public class CompositeSetTest<E> extends AbstractSetTest<E> {
    public CompositeSetTest(final String name) {
        super(name);
    }

    @Override
    public CompositeSet<E> makeObject() {
        final HashSet<E> contained = new HashSet<>();
        final CompositeSet<E> set = new CompositeSet<>(contained);
        set.setMutator( new EmptySetMutator<>(contained) );
        return set;
    }

    @SuppressWarnings("unchecked")
    public Set<E> buildOne() {
        final HashSet<E> set = new HashSet<>();
        int PROBE_START_LINE_48 = 48;
		HashSet<E> v_set_246_line_48 = set;
		int PROBE_END_LINE_48 = 48;
		v_set_246_line_48.add((E) "1");
        int PROBE_START_LINE_49 = 49;
		HashSet<E> v_set_246_line_49 = set;
		int PROBE_END_LINE_49 = 49;
		v_set_246_line_49.add((E) "2");
        int PROBE_START_LINE_50 = 50;
		HashSet<E> v_set_246_line_50 = set;
		int PROBE_END_LINE_50 = 50;
		return v_set_246_line_50;
    }

    @SuppressWarnings("unchecked")
    public Set<E> buildTwo() {
        final HashSet<E> set = new HashSet<>();
        int PROBE_START_LINE_56 = 56;
		HashSet<E> v_set_247_line_56 = set;
		int PROBE_END_LINE_56 = 56;
		v_set_247_line_56.add((E) "3");
        int PROBE_START_LINE_57 = 57;
		HashSet<E> v_set_247_line_57 = set;
		int PROBE_END_LINE_57 = 57;
		v_set_247_line_57.add((E) "4");
        int PROBE_START_LINE_58 = 58;
		HashSet<E> v_set_247_line_58 = set;
		int PROBE_END_LINE_58 = 58;
		return v_set_247_line_58;
    }

    @SuppressWarnings("unchecked")
    public void testContains() {
        final CompositeSet<E> set = new CompositeSet<>(new Set[]{ buildOne(), buildTwo() });
        assertTrue(set.contains("1"));
    }

    @SuppressWarnings("unchecked")
    public void testContainsAll() {
        int PROBE_START_LINE_69 = 69;
		Set<E> composite_set_test_1_expr15_line_69 = buildOne();
		Set<E> composite_set_test_1_expr16_line_69 = buildTwo();
		int PROBE_END_LINE_69 = 69;
		final CompositeSet<E> set = new CompositeSet<>(new Set[]{ composite_set_test_1_expr15_line_69, composite_set_test_1_expr16_line_69 });
        int PROBE_START_LINE_70 = 70;
		CompositeSet<E> v_set_248_line_70 = set;
		boolean composite_set_test_1_expr18_line_70 = v_set_248_line_70.containsAll(null);
		int PROBE_END_LINE_70 = 70;
		assertFalse(composite_set_test_1_expr18_line_70);
    }

    @SuppressWarnings("unchecked")
    public void testRemoveAll() {
        int PROBE_START_LINE_75 = 75;
		Set<E> composite_set_test_1_expr22_line_75 = buildOne();
		Set<E> composite_set_test_1_expr23_line_75 = buildTwo();
		int PROBE_END_LINE_75 = 75;
		final CompositeSet<E> set = new CompositeSet<>(new Set[]{ composite_set_test_1_expr22_line_75, composite_set_test_1_expr23_line_75 });
        int PROBE_START_LINE_76 = 76;
		CompositeSet<E> v_set_249_line_76 = set;
		boolean composite_set_test_1_expr25_line_76 = v_set_249_line_76.removeAll(null);
		int PROBE_END_LINE_76 = 76;
		assertFalse(composite_set_test_1_expr25_line_76);
    }

    @SuppressWarnings("unchecked")
    public void testRemoveUnderlying() {
        final Set<E> one = buildOne();
        final Set<E> two = buildTwo();
        final CompositeSet<E> set = new CompositeSet<>(new Set[] { one, two });
        one.remove("1");
        assertFalse(set.contains("1"));

        two.remove("3");
        assertFalse(set.contains("3"));
    }

    @SuppressWarnings("unchecked")
    public void testRemoveComposited() {
        final Set<E> one = buildOne();
        final Set<E> two = buildTwo();
        final CompositeSet<E> set = new CompositeSet<>(new Set[] { one, two });
        set.remove("1");
        assertFalse(one.contains("1"));

        set.remove("3");
        assertFalse(one.contains("3"));
    }

    @SuppressWarnings("unchecked")
    public void testFailedCollisionResolution() {
        final Set<E> one = buildOne();
        final Set<E> two = buildTwo();
        final CompositeSet<E> set = new CompositeSet<>(new Set[] { one, two });
        set.setMutator(new SetMutator<E>() {
            private static final long serialVersionUID = 1L;

            @Override
            public void resolveCollision(final CompositeSet<E> comp, final Set<E> existing,
                final Set<E> added, final Collection<E> intersects) {
                //noop
            }

            @Override
            public boolean add(final CompositeSet<E> composite,
                    final List<Set<E>> collections, final E obj) {
                throw new UnsupportedOperationException();
            }

            @Override
            public boolean addAll(final CompositeSet<E> composite,
                    final List<Set<E>> collections, final Collection<? extends E> coll) {
                throw new UnsupportedOperationException();
            }
        });

        final HashSet<E> three = new HashSet<>();
        three.add((E) "1");
        try {
            set.addComposited(three);
            fail("IllegalArgumentException should have been thrown");
        }
        catch (final IllegalArgumentException e) {
            // expected
        }
    }

    @SuppressWarnings("unchecked")
    public void testAddComposited() {
        int PROBE_START_LINE_143 = 143;
		Set<E> composite_set_test_1_expr26_line_143 = buildOne();
		int PROBE_END_LINE_143 = 143;
		final Set<E> one = composite_set_test_1_expr26_line_143;
        int PROBE_START_LINE_144 = 144;
		Set<E> composite_set_test_1_expr27_line_144 = buildTwo();
		int PROBE_END_LINE_144 = 144;
		final Set<E> two = composite_set_test_1_expr27_line_144;
        final CompositeSet<E> set = new CompositeSet<>();
        int PROBE_START_LINE_146 = 146;
		CompositeSet<E> v_set_262_line_146 = set;
		Set<E> v_one_260_line_146 = one;
		Set<E> v_two_261_line_146 = two;
		int PROBE_END_LINE_146 = 146;
		v_set_262_line_146.addComposited(v_one_260_line_146, v_two_261_line_146);
        int PROBE_START_LINE_147 = 147;
		CompositeSet<E> v_set_262_line_147 = set;
		int PROBE_END_LINE_147 = 147;
		v_set_262_line_147.addComposited((Set<E>) null);
        set.addComposited((Set<E>[]) null);
        set.addComposited(null, null);
        set.addComposited(null, null, null);
        final CompositeSet<E> set2 = new CompositeSet<>(buildOne());
        set2.addComposited(buildTwo());
        assertTrue(set.equals(set2));
        final HashSet<E> set3 = new HashSet<>();
        set3.add((E) "1");
        set3.add((E) "2");
        set3.add((E) "3");
        final HashSet<E> set4 = new HashSet<>();
        set4.add((E) "4");
        final CompositeSet<E> set5 = new CompositeSet<>(set3);
        set5.addComposited(set4);
        assertTrue(set.equals(set5));
        try {
            set.addComposited(set3);
            fail("Expecting UnsupportedOperationException.");
        } catch (final UnsupportedOperationException ex) {
            // expected
        }
    }

    @SuppressWarnings("unchecked")
    public void testAddCompositedCollision() {
        final HashSet<E> set1 = new HashSet<>();
        set1.add((E) "1");
        set1.add((E) "2");
        set1.add((E) "3");
        final HashSet<E> set2 = new HashSet<>();
        set2.add((E) "4");
        final CompositeSet<E> set3 = new CompositeSet<>(set1);
        try {
            set3.addComposited(set1, buildOne());
            fail("Expecting UnsupportedOperationException.");
        } catch (final UnsupportedOperationException ex) {
            // expected
        }
        try {
            set3.addComposited(set1, buildOne(), buildTwo());
            fail("Expecting UnsupportedOperationException.");
        } catch (final UnsupportedOperationException ex) {
            // expected
        }
    }

    @Override
    public String getCompatibilityVersion() {
        return "4";
    }

//    public void testCreate() throws Exception {
//        resetEmpty();
//        writeExternalFormToDisk((java.io.Serializable) getCollection(), "src/test/resources/data/test/CompositeSet.emptyCollection.version4.obj");
//        resetFull();
//        writeExternalFormToDisk((java.io.Serializable) getCollection(), "src/test/resources/data/test/CompositeSet.fullCollection.version4.obj");
//    }

}
