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
package org.apache.commons.collections4.map;

import java.util.Map;
import java.util.HashMap;
import java.util.Collection;

/**
 * Extension of {@link AbstractMapTest} for exercising the
 * {@link CompositeMap} implementation.
 *
 * @since 3.0
 */
public class CompositeMapTest<K, V> extends AbstractIterableMapTest<K, V> {
    /** used as a flag in MapMutator tests */
    private boolean pass = false;

    public CompositeMapTest(final String testName) {
        super(testName);
    }

    @Override
    public void setUp() throws Exception {
        super.setUp();
        this.pass = false;
    }

    @Override
    public CompositeMap<K, V> makeObject() {
        final CompositeMap<K, V> map = new CompositeMap<>();
        map.addComposited(new HashMap<K, V>());
        map.setMutator( new EmptyMapMutator<K, V>() );
        return map;
    }

    @SuppressWarnings("unchecked")
    private Map<K, V> buildOne() {
        final HashMap<K, V> map = new HashMap<>();
        int PROBE_START_LINE_54 = 54;
		HashMap<K, V> v_map_203_line_54 = map;
		int PROBE_END_LINE_54 = 54;
		v_map_203_line_54.put((K) "1", (V) "one");
        int PROBE_START_LINE_55 = 55;
		HashMap<K, V> v_map_203_line_55 = map;
		int PROBE_END_LINE_55 = 55;
		v_map_203_line_55.put((K) "2", (V) "two");
        int PROBE_START_LINE_56 = 56;
		HashMap<K, V> v_map_203_line_56 = map;
		int PROBE_END_LINE_56 = 56;
		return v_map_203_line_56;
    }

    @SuppressWarnings("unchecked")
    public Map<K, V> buildTwo() {
        final HashMap<K, V> map = new HashMap<>();
        int PROBE_START_LINE_62 = 62;
		HashMap<K, V> v_map_204_line_62 = map;
		int PROBE_END_LINE_62 = 62;
		v_map_204_line_62.put((K) "3", (V) "three");
        int PROBE_START_LINE_63 = 63;
		HashMap<K, V> v_map_204_line_63 = map;
		int PROBE_END_LINE_63 = 63;
		v_map_204_line_63.put((K) "4", (V) "four");
        int PROBE_START_LINE_64 = 64;
		HashMap<K, V> v_map_204_line_64 = map;
		int PROBE_END_LINE_64 = 64;
		return v_map_204_line_64;
    }

    public void testGet() {
        final CompositeMap<K, V> map = new CompositeMap<>(buildOne(), buildTwo());
        assertEquals("one", map.get("1"));
        assertEquals("four", map.get("4"));
    }

    @SuppressWarnings("unchecked")
    public void testAddComposited() {
        int PROBE_START_LINE_75 = 75;
		Map<K, V> composite_map_test_1_expr21_line_75 = buildOne();
		Map<K, V> composite_map_test_1_expr22_line_75 = buildTwo();
		int PROBE_END_LINE_75 = 75;
		final CompositeMap<K, V> map = new CompositeMap<>(composite_map_test_1_expr21_line_75, composite_map_test_1_expr22_line_75);
        final HashMap<K, V> three = new HashMap<>();
        int PROBE_START_LINE_77 = 77;
		HashMap<K, V> v_three_206_line_77 = three;
		int PROBE_END_LINE_77 = 77;
		v_three_206_line_77.put((K) "5", (V) "five");
        int PROBE_START_LINE_78 = 78;
		CompositeMap<K, V> v_map_205_line_78 = map;
		int PROBE_END_LINE_78 = 78;
		v_map_205_line_78.addComposited(null);
        map.addComposited(three);
        assertTrue(map.containsKey("5"));
        try {
            map.addComposited(three);
            fail("Expecting IllegalArgumentException.");
        } catch (final IllegalArgumentException ex) {
            // expected
        }
    }

    @SuppressWarnings("unchecked")
    public void testRemoveComposited() {
        int PROBE_START_LINE_91 = 91;
		Map<K, V> composite_map_test_1_expr29_line_91 = buildOne();
		Map<K, V> composite_map_test_1_expr30_line_91 = buildTwo();
		int PROBE_END_LINE_91 = 91;
		final CompositeMap<K, V> map = new CompositeMap<>(composite_map_test_1_expr29_line_91, composite_map_test_1_expr30_line_91);
        final HashMap<K, V> three = new HashMap<>();
        int PROBE_START_LINE_93 = 93;
		HashMap<K, V> v_three_208_line_93 = three;
		int PROBE_END_LINE_93 = 93;
		v_three_208_line_93.put((K) "5", (V) "five");
        int PROBE_START_LINE_94 = 94;
		CompositeMap<K, V> v_map_207_line_94 = map;
		int PROBE_END_LINE_94 = 94;
		v_map_207_line_94.addComposited(null);
        map.addComposited(three);
        assertTrue(map.containsKey("5"));

        map.removeComposited(three);
        assertFalse(map.containsKey("5"));

        map.removeComposited(buildOne());
        assertFalse(map.containsKey("2"));

    }

    @SuppressWarnings("unchecked")
    public void testRemoveFromUnderlying() {
        int PROBE_START_LINE_108 = 108;
		Map<K, V> composite_map_test_1_expr37_line_108 = buildOne();
		Map<K, V> composite_map_test_1_expr38_line_108 = buildTwo();
		int PROBE_END_LINE_108 = 108;
		final CompositeMap<K, V> map = new CompositeMap<>(composite_map_test_1_expr37_line_108, composite_map_test_1_expr38_line_108);
        final HashMap<K, V> three = new HashMap<>();
        int PROBE_START_LINE_110 = 110;
		HashMap<K, V> v_three_210_line_110 = three;
		int PROBE_END_LINE_110 = 110;
		v_three_210_line_110.put((K) "5", (V) "five");
        int PROBE_START_LINE_111 = 111;
		CompositeMap<K, V> v_map_209_line_111 = map;
		int PROBE_END_LINE_111 = 111;
		v_map_209_line_111.addComposited(null);
        map.addComposited(three);
        assertTrue(map.containsKey("5"));

        //Now remove "5"
        three.remove("5");
        assertFalse(map.containsKey("5"));
    }

    @SuppressWarnings("unchecked")
    public void testRemoveFromComposited() {
        int PROBE_START_LINE_122 = 122;
		Map<K, V> composite_map_test_1_expr45_line_122 = buildOne();
		Map<K, V> composite_map_test_1_expr46_line_122 = buildTwo();
		int PROBE_END_LINE_122 = 122;
		final CompositeMap<K, V> map = new CompositeMap<>(composite_map_test_1_expr45_line_122, composite_map_test_1_expr46_line_122);
        final HashMap<K, V> three = new HashMap<>();
        int PROBE_START_LINE_124 = 124;
		HashMap<K, V> v_three_212_line_124 = three;
		int PROBE_END_LINE_124 = 124;
		v_three_212_line_124.put((K) "5", (V) "five");
        int PROBE_START_LINE_125 = 125;
		CompositeMap<K, V> v_map_211_line_125 = map;
		int PROBE_END_LINE_125 = 125;
		v_map_211_line_125.addComposited(null);
        map.addComposited(three);
        assertTrue(map.containsKey("5"));

        //Now remove "5"
        map.remove("5");
        assertFalse(three.containsKey("5"));
    }

    public void testResolveCollision() {
        final CompositeMap<K, V> map = new CompositeMap<>(buildOne(), buildTwo(),
            new CompositeMap.MapMutator<K, V>() {
            private static final long serialVersionUID = 1L;

            @Override
            public void resolveCollision(final CompositeMap<K, V> composite,
            final Map<K, V> existing,
            final Map<K, V> added,
            final Collection<K> intersect) {
                pass = true;
            }

            @Override
            public V put(final CompositeMap<K, V> map, final Map<K, V>[] composited, final K key,
                final V value) {
                throw new UnsupportedOperationException();
            }

            @Override
            public void putAll(final CompositeMap<K, V> map, final Map<K, V>[] composited, final Map<? extends K, ? extends V> t) {
                throw new UnsupportedOperationException();
            }
        });

        map.addComposited(buildOne());
        assertTrue(pass);
    }

    @SuppressWarnings("unchecked")
    public void testPut() {
        final CompositeMap<K, V> map = new CompositeMap<>(buildOne(), buildTwo(),
            new CompositeMap.MapMutator<K, V>() {
            private static final long serialVersionUID = 1L;
            @Override
            public void resolveCollision(final CompositeMap<K, V> composite,
            final Map<K, V> existing,
            final Map<K, V> added,
            final Collection<K> intersect) {
                throw new UnsupportedOperationException();
            }

            @Override
            public V put(final CompositeMap<K, V> map, final Map<K, V>[] composited, final K key,
                final V value) {
                pass = true;
                return (V) "foo";
            }

            @Override
            public void putAll(final CompositeMap<K, V> map, final Map<K, V>[] composited, final Map<? extends K, ? extends V> t) {
                throw new UnsupportedOperationException();
            }
        });

        map.put((K) "willy", (V) "wonka");
        assertTrue(pass);
    }

    public void testPutAll() {
        final CompositeMap<K, V> map = new CompositeMap<>(buildOne(), buildTwo(),
            new CompositeMap.MapMutator<K, V>() {
            private static final long serialVersionUID = 1L;
            @Override
            public void resolveCollision(final CompositeMap<K, V> composite,
            final Map<K, V> existing,
            final Map<K, V> added,
            final Collection<K> intersect) {
                throw new UnsupportedOperationException();
            }

            @Override
            public V put(final CompositeMap<K, V> map, final Map<K, V>[] composited, final K key,
                final V value) {
                throw new UnsupportedOperationException();
            }

            @Override
            public void putAll(final CompositeMap<K, V> map, final Map<K, V>[] composited, final Map<? extends K, ? extends V> t) {
                pass = true;
            }
        });

        map.putAll(null);
        assertTrue(pass);
    }

    @Override
    public String getCompatibilityVersion() {
        return "4";
    }

//    public void testCreate() throws Exception {
//        resetEmpty();
//        writeExternalFormToDisk((java.io.Serializable) map, "src/test/resources/data/test/CompositeMap.emptyCollection.version4.obj");
//        resetFull();
//        writeExternalFormToDisk((java.io.Serializable) map, "src/test/resources/data/test/CompositeMap.fullCollection.version4.obj");
//    }

}
