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

package org.apache.commons.math.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

import org.apache.commons.math.MathRuntimeException;
import org.apache.commons.math.exception.util.LocalizedFormats;

/**
 * Open addressed map from int to double.
 * <p>This class provides a dedicated map from integers to doubles with a
 * much smaller memory overhead than standard <code>java.util.Map</code>.</p>
 * <p>This class is not synchronized. The specialized iterators returned by
 * {@link #iterator()} are fail-fast: they throw a
 * <code>ConcurrentModificationException</code> when they detect the map has been
 * modified during iteration.</p>
 * @version $Id$
 * @since 2.0
 */
public class OpenIntToDoubleHashMap implements Serializable {

    /** Status indicator for free table entries. */
    protected static final byte FREE    = 0;

    /** Status indicator for full table entries. */
    protected static final byte FULL    = 1;

    /** Status indicator for removed table entries. */
    protected static final byte REMOVED = 2;

    /** Serializable version identifier */
    private static final long serialVersionUID = -3646337053166149105L;

    /** Load factor for the map. */
    private static final float LOAD_FACTOR = 0.5f;

    /** Default starting size.
     * <p>This must be a power of two for bit mask to work properly. </p>
     */
    private static final int DEFAULT_EXPECTED_SIZE = 16;

    /** Multiplier for size growth when map fills up.
     * <p>This must be a power of two for bit mask to work properly. </p>
     */
    private static final int RESIZE_MULTIPLIER = 2;

    /** Number of bits to perturb the index when probing for collision resolution. */
    private static final int PERTURB_SHIFT = 5;

    /** Keys table. */
    private int[] keys;

    /** Values table. */
    private double[] values;

    /** States table. */
    private byte[] states;

    /** Return value for missing entries. */
    private final double missingEntries;

    /** Current size of the map. */
    private int size;

    /** Bit mask for hash values. */
    private int mask;

    /** Modifications count. */
    private transient int count;

    /**
     * Build an empty map with default size and using NaN for missing entries.
     */
    public OpenIntToDoubleHashMap() {
        this(DEFAULT_EXPECTED_SIZE, Double.NaN);
    }

    /**
     * Build an empty map with default size
     * @param missingEntries value to return when a missing entry is fetched
     */
    public OpenIntToDoubleHashMap(final double missingEntries) {
        this(DEFAULT_EXPECTED_SIZE, missingEntries);
    }

    /**
     * Build an empty map with specified size and using NaN for missing entries.
     * @param expectedSize expected number of elements in the map
     */
    public OpenIntToDoubleHashMap(final int expectedSize) {
        this(expectedSize, Double.NaN);
    }

    /**
     * Build an empty map with specified size.
     * @param expectedSize expected number of elements in the map
     * @param missingEntries value to return when a missing entry is fetched
     */
    public OpenIntToDoubleHashMap(final int expectedSize,
                                  final double missingEntries) {
        int PROBE_START_LINE_121 = 121;
									int p_expected_size_1792_line_121 = expectedSize;
									int open_int_to_double_hash_map_1_expr2_line_121 = computeCapacity(
											p_expected_size_1792_line_121);
									int PROBE_END_LINE_121 = 121;
		final int capacity = open_int_to_double_hash_map_1_expr2_line_121;
        int PROBE_START_LINE_122 = 122;
		int v_capacity_1794_line_122 = capacity;
		int PROBE_END_LINE_122 = 122;
		keys   = new int[v_capacity_1794_line_122];
        int PROBE_START_LINE_123 = 123;
		int v_capacity_1794_line_123 = capacity;
		int PROBE_END_LINE_123 = 123;
		values = new double[v_capacity_1794_line_123];
        int PROBE_START_LINE_124 = 124;
		int v_capacity_1794_line_124 = capacity;
		int PROBE_END_LINE_124 = 124;
		states = new byte[v_capacity_1794_line_124];
        int PROBE_START_LINE_125 = 125;
		double p_missing_entries_1793_line_125 = missingEntries;
		int PROBE_END_LINE_125 = 125;
		this.missingEntries = p_missing_entries_1793_line_125;
        int PROBE_START_LINE_126 = 126;
		int v_capacity_1794_line_126 = capacity;
		int open_int_to_double_hash_map_1_expr13_line_126 = v_capacity_1794_line_126 - 1;
		int PROBE_END_LINE_126 = 126;
		mask   = open_int_to_double_hash_map_1_expr13_line_126;
    }

    /**
     * Copy constructor.
     * @param source map to copy
     */
    public OpenIntToDoubleHashMap(final OpenIntToDoubleHashMap source) {
        final int length = source.keys.length;
        keys = new int[length];
        System.arraycopy(source.keys, 0, keys, 0, length);
        values = new double[length];
        System.arraycopy(source.values, 0, values, 0, length);
        states = new byte[length];
        System.arraycopy(source.states, 0, states, 0, length);
        missingEntries = source.missingEntries;
        size  = source.size;
        mask  = source.mask;
        count = source.count;
    }

    /**
     * Compute the capacity needed for a given size.
     * @param expectedSize expected size of the map
     * @return capacity to use for the specified size
     */
    private static int computeCapacity(final int expectedSize) {
        int PROBE_START_LINE_153 = 155;
		int p_expected_size_1801_line_153 = expectedSize;
		boolean open_int_to_double_hash_map_1_expr14_line_153 = p_expected_size_1801_line_153 == 0;
		int PROBE_END_LINE_153 = 155;
		if (open_int_to_double_hash_map_1_expr14_line_153) {
            return 1;
        }
        int PROBE_START_LINE_156 = 156;
		int p_expected_size_1801_line_156 = expectedSize;
		float f_load_factor_1803_line_156 = LOAD_FACTOR;
		float open_int_to_double_hash_map_1_expr17_line_156 = p_expected_size_1801_line_156
				/ f_load_factor_1803_line_156;
		double open_int_to_double_hash_map_1_expr16_line_156 = FastMath
				.ceil(open_int_to_double_hash_map_1_expr17_line_156);
		int PROBE_END_LINE_156 = 156;
		final int capacity   = (int) open_int_to_double_hash_map_1_expr16_line_156;
        int PROBE_START_LINE_157 = 157;
		int v_capacity_1802_line_157 = capacity;
		int open_int_to_double_hash_map_1_expr18_line_157 = Integer.highestOneBit(v_capacity_1802_line_157);
		int PROBE_END_LINE_157 = 157;
		final int powerOfTwo = open_int_to_double_hash_map_1_expr18_line_157;
        int PROBE_START_LINE_158 = 160;
		int v_power_of_two_1804_line_158 = powerOfTwo;
		int v_capacity_1802_line_158 = capacity;
		boolean open_int_to_double_hash_map_1_expr19_line_158 = v_power_of_two_1804_line_158 == v_capacity_1802_line_158;
		int PROBE_END_LINE_158 = 160;
		if (open_int_to_double_hash_map_1_expr19_line_158) {
            int PROBE_START_LINE_159 = 159;
			int v_capacity_1802_line_159 = capacity;
			int PROBE_END_LINE_159 = 159;
			return v_capacity_1802_line_159;
        }
        return nextPowerOfTwo(capacity);
    }

    /**
     * Find the smallest power of two greater than the input value
     * @param i input value
     * @return smallest power of two greater than the input value
     */
    private static int nextPowerOfTwo(final int i) {
        return Integer.highestOneBit(i) << 1;
    }

    /**
     * Get the stored value associated with the given key
     * @param key key associated with the data
     * @return data associated with the key
     */
    public double get(final int key) {

        int PROBE_START_LINE_180 = 180;
		int p_key_1806_line_180 = key;
		int open_int_to_double_hash_map_1_expr20_line_180 = hashOf(p_key_1806_line_180);
		int PROBE_END_LINE_180 = 180;
		final int hash  = open_int_to_double_hash_map_1_expr20_line_180;
        int PROBE_START_LINE_181 = 181;
		int v_hash_1807_line_181 = hash;
		int f_mask_1799_line_181 = mask;
		int open_int_to_double_hash_map_1_expr21_line_181 = v_hash_1807_line_181 & f_mask_1799_line_181;
		int PROBE_END_LINE_181 = 181;
		int index = open_int_to_double_hash_map_1_expr21_line_181;
        int PROBE_START_LINE_182 = 184;
		int p_key_1806_line_182 = key;
		int v_index_1808_line_182 = index;
		boolean open_int_to_double_hash_map_1_expr22_line_182 = containsKey(p_key_1806_line_182, v_index_1808_line_182);
		int PROBE_END_LINE_182 = 184;
		if (open_int_to_double_hash_map_1_expr22_line_182) {
            int PROBE_START_LINE_183 = 183;
			double[] f_values_1796_line_183 = values;
			int v_index_1808_line_183 = index;
			double open_int_to_double_hash_map_1_expr23_line_183 = f_values_1796_line_183[v_index_1808_line_183];
			int PROBE_END_LINE_183 = 183;
			return open_int_to_double_hash_map_1_expr23_line_183;
        }

        if (states[index] == FREE) {
            return missingEntries;
        }

        int j = index;
        for (int perturb = perturb(hash); states[index] != FREE; perturb >>= PERTURB_SHIFT) {
            j = probe(perturb, j);
            index = j & mask;
            if (containsKey(key, index)) {
                return values[index];
            }
        }

        return missingEntries;

    }

    /**
     * Check if a value is associated with a key.
     * @param key key to check
     * @return true if a value is associated with key
     */
    public boolean containsKey(final int key) {

        final int hash  = hashOf(key);
        int index = hash & mask;
        if (containsKey(key, index)) {
            return true;
        }

        if (states[index] == FREE) {
            return false;
        }

        int j = index;
        for (int perturb = perturb(hash); states[index] != FREE; perturb >>= PERTURB_SHIFT) {
            j = probe(perturb, j);
            index = j & mask;
            if (containsKey(key, index)) {
                return true;
            }
        }

        return false;

    }

    /**
     * Get an iterator over map elements.
     * <p>The specialized iterators returned are fail-fast: they throw a
     * <code>ConcurrentModificationException</code> when they detect the map
     * has been modified during iteration.</p>
     * @return iterator over the map elements
     */
    public Iterator iterator() {
        return new Iterator();
    }

    /**
     * Perturb the hash for starting probing.
     * @param hash initial hash
     * @return perturbed hash
     */
    private static int perturb(final int hash) {
        return hash & 0x7fffffff;
    }

    /**
     * Find the index at which a key should be inserted
     * @param key key to lookup
     * @return index at which key should be inserted
     */
    private int findInsertionIndex(final int key) {
        int PROBE_START_LINE_259 = 259;
		int[] f_keys_1795_line_259 = keys;
		byte[] f_states_1797_line_259 = states;
		int p_key_1811_line_259 = key;
		int f_mask_1799_line_259 = mask;
		int open_int_to_double_hash_map_1_expr24_line_259 = findInsertionIndex(f_keys_1795_line_259,
				f_states_1797_line_259, p_key_1811_line_259, f_mask_1799_line_259);
		int PROBE_END_LINE_259 = 259;
		return open_int_to_double_hash_map_1_expr24_line_259;
    }

    /**
     * Find the index at which a key should be inserted
     * @param keys keys table
     * @param states states table
     * @param key key to lookup
     * @param mask bit mask for hash values
     * @return index at which key should be inserted
     */
    private static int findInsertionIndex(final int[] keys, final byte[] states,
                                          final int key, final int mask) {
        int PROBE_START_LINE_272 = 272;
											int p_key_1814_line_272 = key;
											int open_int_to_double_hash_map_1_expr25_line_272 = hashOf(
													p_key_1814_line_272);
											int PROBE_END_LINE_272 = 272;
		final int hash = open_int_to_double_hash_map_1_expr25_line_272;
        int PROBE_START_LINE_273 = 273;
		int v_hash_1816_line_273 = hash;
		int p_mask_1815_line_273 = mask;
		int open_int_to_double_hash_map_1_expr26_line_273 = v_hash_1816_line_273 & p_mask_1815_line_273;
		int PROBE_END_LINE_273 = 273;
		int index = open_int_to_double_hash_map_1_expr26_line_273;
        int PROBE_START_LINE_274 = 278;
		byte[] p_states_1813_line_274 = states;
		int v_index_1817_line_274 = index;
		byte open_int_to_double_hash_map_1_expr28_line_274 = p_states_1813_line_274[v_index_1817_line_274];
		byte f_free_1818_line_274 = FREE;
		boolean open_int_to_double_hash_map_1_expr27_line_274 = open_int_to_double_hash_map_1_expr28_line_274 == f_free_1818_line_274;
		int PROBE_END_LINE_274 = 278;
		if (open_int_to_double_hash_map_1_expr27_line_274) {
            int PROBE_START_LINE_275 = 275;
			int v_index_1817_line_275 = index;
			int PROBE_END_LINE_275 = 275;
			return v_index_1817_line_275;
        } else {
			int PROBE_START_LINE_276 = 278;
			byte[] p_states_1813_line_276 = states;
			int v_index_1817_line_276 = index;
			byte open_int_to_double_hash_map_1_expr31_line_276 = p_states_1813_line_276[v_index_1817_line_276];
			byte f_full_1819_line_276 = FULL;
			boolean open_int_to_double_hash_map_1_expr30_line_276 = open_int_to_double_hash_map_1_expr31_line_276 == f_full_1819_line_276;
			boolean open_int_to_double_hash_map_1_expr32_line_276 = true;
			if (open_int_to_double_hash_map_1_expr30_line_276) {
				int[] p_keys_1812_line_276 = keys;
				int v_index_1817_line_276_v1 = index;
				int open_int_to_double_hash_map_1_expr33_line_276 = p_keys_1812_line_276[v_index_1817_line_276_v1];
				int p_key_1814_line_276 = key;
				open_int_to_double_hash_map_1_expr32_line_276 = open_int_to_double_hash_map_1_expr33_line_276 == p_key_1814_line_276;
			}
			boolean open_int_to_double_hash_map_1_expr29_line_276 = open_int_to_double_hash_map_1_expr30_line_276
					&& open_int_to_double_hash_map_1_expr32_line_276;
			int PROBE_END_LINE_276 = 278;
			if (open_int_to_double_hash_map_1_expr29_line_276) {
				int PROBE_START_LINE_277 = 277;
				int v_index_1817_line_277 = index;
				int open_int_to_double_hash_map_1_expr34_line_277 = changeIndexSign(v_index_1817_line_277);
				int PROBE_END_LINE_277 = 277;
				return open_int_to_double_hash_map_1_expr34_line_277;
			}
		}

        int perturb = perturb(hash);
        int j = index;
        if (states[index] == FULL) {
            while (true) {
                j = probe(perturb, j);
                index = j & mask;
                perturb >>= PERTURB_SHIFT;

                if (states[index] != FULL || keys[index] == key) {
                    break;
                }
            }
        }

        if (states[index] == FREE) {
            return index;
        } else if (states[index] == FULL) {
            // due to the loop exit condition,
            // if (states[index] == FULL) then keys[index] == key
            return changeIndexSign(index);
        }

        final int firstRemoved = index;
        while (true) {
            j = probe(perturb, j);
            index = j & mask;

            if (states[index] == FREE) {
                return firstRemoved;
            } else if (states[index] == FULL && keys[index] == key) {
                return changeIndexSign(index);
            }

            perturb >>= PERTURB_SHIFT;

        }

    }

    /**
     * Compute next probe for collision resolution
     * @param perturb perturbed hash
     * @param j previous probe
     * @return next probe
     */
    private static int probe(final int perturb, final int j) {
        return (j << 2) + j + perturb + 1;
    }

    /**
     * Change the index sign
     * @param index initial index
     * @return changed index
     */
    private static int changeIndexSign(final int index) {
        int PROBE_START_LINE_335 = 335;
		int p_index_1822_line_335 = index;
		int open_int_to_double_hash_map_1_expr36_line_335 = -p_index_1822_line_335;
		int open_int_to_double_hash_map_1_expr35_line_335 = open_int_to_double_hash_map_1_expr36_line_335 - 1;
		int PROBE_END_LINE_335 = 335;
		return open_int_to_double_hash_map_1_expr35_line_335;
    }

    /**
     * Get the number of elements stored in the map.
     * @return number of elements stored in the map
     */
    public int size() {
        return size;
    }


    /**
     * Remove the value associated with a key.
     * @param key key to which the value is associated
     * @return removed value
     */
    public double remove(final int key) {

        int PROBE_START_LINE_354 = 354;
		int p_key_1823_line_354 = key;
		int open_int_to_double_hash_map_1_expr37_line_354 = hashOf(p_key_1823_line_354);
		int PROBE_END_LINE_354 = 354;
		final int hash  = open_int_to_double_hash_map_1_expr37_line_354;
        int PROBE_START_LINE_355 = 355;
		int v_hash_1824_line_355 = hash;
		int f_mask_1799_line_355 = mask;
		int open_int_to_double_hash_map_1_expr38_line_355 = v_hash_1824_line_355 & f_mask_1799_line_355;
		int PROBE_END_LINE_355 = 355;
		int index = open_int_to_double_hash_map_1_expr38_line_355;
        int PROBE_START_LINE_356 = 358;
		int p_key_1823_line_356 = key;
		int v_index_1825_line_356 = index;
		boolean open_int_to_double_hash_map_1_expr39_line_356 = containsKey(p_key_1823_line_356, v_index_1825_line_356);
		int PROBE_END_LINE_356 = 358;
		if (open_int_to_double_hash_map_1_expr39_line_356) {
            return doRemove(index);
        }

        int PROBE_START_LINE_360 = 362;
		byte[] f_states_1797_line_360 = states;
		int v_index_1825_line_360 = index;
		byte open_int_to_double_hash_map_1_expr41_line_360 = f_states_1797_line_360[v_index_1825_line_360];
		byte f_free_1818_line_360 = FREE;
		boolean open_int_to_double_hash_map_1_expr40_line_360 = open_int_to_double_hash_map_1_expr41_line_360 == f_free_1818_line_360;
		int PROBE_END_LINE_360 = 362;
		if (open_int_to_double_hash_map_1_expr40_line_360) {
            int PROBE_START_LINE_361 = 361;
			double f_missing_entries_1798_line_361 = missingEntries;
			int PROBE_END_LINE_361 = 361;
			return f_missing_entries_1798_line_361;
        }

        int j = index;
        for (int perturb = perturb(hash); states[index] != FREE; perturb >>= PERTURB_SHIFT) {
            j = probe(perturb, j);
            index = j & mask;
            if (containsKey(key, index)) {
                return doRemove(index);
            }
        }

        return missingEntries;

    }

    /**
     * Check if the tables contain an element associated with specified key
     * at specified index.
     * @param key key to check
     * @param index index to check
     * @return true if an element is associated with key at index
     */
    private boolean containsKey(final int key, final int index) {
        int PROBE_START_LINE_385 = 385;
		int p_key_1826_line_385 = key;
		boolean open_int_to_double_hash_map_1_expr45_line_385 = p_key_1826_line_385 != 0;
		boolean open_int_to_double_hash_map_1_expr46_line_385 = false;
		if (!open_int_to_double_hash_map_1_expr45_line_385) {
			byte[] f_states_1797_line_385 = states;
			int p_index_1827_line_385 = index;
			byte open_int_to_double_hash_map_1_expr47_line_385 = f_states_1797_line_385[p_index_1827_line_385];
			byte f_full_1819_line_385 = FULL;
			open_int_to_double_hash_map_1_expr46_line_385 = open_int_to_double_hash_map_1_expr47_line_385 == f_full_1819_line_385;
		}
		boolean open_int_to_double_hash_map_1_expr44_line_385 = open_int_to_double_hash_map_1_expr45_line_385
				|| open_int_to_double_hash_map_1_expr46_line_385;
		boolean open_int_to_double_hash_map_1_expr43_line_385 = (open_int_to_double_hash_map_1_expr44_line_385);
		boolean open_int_to_double_hash_map_1_expr48_line_385 = true;
		if (open_int_to_double_hash_map_1_expr43_line_385) {
			int[] f_keys_1795_line_385 = keys;
			int p_index_1827_line_385_v1 = index;
			int open_int_to_double_hash_map_1_expr49_line_385 = f_keys_1795_line_385[p_index_1827_line_385_v1];
			int p_key_1826_line_385_v1 = key;
			open_int_to_double_hash_map_1_expr48_line_385 = open_int_to_double_hash_map_1_expr49_line_385 == p_key_1826_line_385_v1;
		}
		boolean open_int_to_double_hash_map_1_expr42_line_385 = open_int_to_double_hash_map_1_expr43_line_385
				&& open_int_to_double_hash_map_1_expr48_line_385;
		int PROBE_END_LINE_385 = 385;
		return open_int_to_double_hash_map_1_expr42_line_385;
    }

    /**
     * Remove an element at specified index.
     * @param index index of the element to remove
     * @return removed value
     */
    private double doRemove(int index) {
        keys[index]   = 0;
        states[index] = REMOVED;
        final double previous = values[index];
        values[index] = missingEntries;
        --size;
        ++count;
        return previous;
    }

    /**
     * Put a value associated with a key in the map.
     * @param key key to which value is associated
     * @param value value to put in the map
     * @return previous value associated with the key
     */
    public double put(final int key, final double value) {
        int PROBE_START_LINE_410 = 410;
		int p_key_1829_line_410 = key;
		int open_int_to_double_hash_map_1_expr50_line_410 = findInsertionIndex(p_key_1829_line_410);
		int PROBE_END_LINE_410 = 410;
		int index = open_int_to_double_hash_map_1_expr50_line_410;
        int PROBE_START_LINE_411 = 411;
		double f_missing_entries_1798_line_411 = missingEntries;
		int PROBE_END_LINE_411 = 411;
		double previous = f_missing_entries_1798_line_411;
        boolean newMapping = true;
        int PROBE_START_LINE_413 = 417;
		int v_index_1831_line_413 = index;
		boolean open_int_to_double_hash_map_1_expr51_line_413 = v_index_1831_line_413 < 0;
		int PROBE_END_LINE_413 = 417;
		if (open_int_to_double_hash_map_1_expr51_line_413) {
            int PROBE_START_LINE_414 = 414;
			int v_index_1831_line_414 = index;
			int open_int_to_double_hash_map_1_expr53_line_414 = changeIndexSign(v_index_1831_line_414);
			int PROBE_END_LINE_414 = 414;
			index = open_int_to_double_hash_map_1_expr53_line_414;
            int PROBE_START_LINE_415 = 415;
			double[] f_values_1796_line_415 = values;
			int v_index_1831_line_415 = index;
			double open_int_to_double_hash_map_1_expr55_line_415 = f_values_1796_line_415[v_index_1831_line_415];
			int PROBE_END_LINE_415 = 415;
			previous = open_int_to_double_hash_map_1_expr55_line_415;
            newMapping = false;
        }
        int PROBE_START_LINE_418 = 418;
		int[] f_keys_1795_line_418 = keys;
		int v_index_1831_line_418 = index;
		int p_key_1829_line_418 = key;
		int PROBE_END_LINE_418 = 418;
		f_keys_1795_line_418[v_index_1831_line_418]   = p_key_1829_line_418;
        int PROBE_START_LINE_419 = 419;
		byte[] f_states_1797_line_419 = states;
		int v_index_1831_line_419 = index;
		byte f_full_1819_line_419 = FULL;
		int PROBE_END_LINE_419 = 419;
		f_states_1797_line_419[v_index_1831_line_419] = f_full_1819_line_419;
        int PROBE_START_LINE_420 = 420;
		double[] f_values_1796_line_420 = values;
		int v_index_1831_line_420 = index;
		double p_value_1830_line_420 = value;
		int PROBE_END_LINE_420 = 420;
		f_values_1796_line_420[v_index_1831_line_420] = p_value_1830_line_420;
        int PROBE_START_LINE_421 = 427;
		boolean v_new_mapping_1833_line_421 = newMapping;
		int PROBE_END_LINE_421 = 427;
		if (v_new_mapping_1833_line_421) {
            ++size;
            int PROBE_START_LINE_423 = 425;
			boolean open_int_to_double_hash_map_1_expr64_line_423 = shouldGrowTable();
			int PROBE_END_LINE_423 = 425;
			if (open_int_to_double_hash_map_1_expr64_line_423) {
                growTable();
            }
            ++count;
        }
        int PROBE_START_LINE_428 = 428;
		double v_previous_1832_line_428 = previous;
		int PROBE_END_LINE_428 = 428;
		return v_previous_1832_line_428;

    }

    /**
     * Grow the tables.
     */
    private void growTable() {

        final int oldLength      = states.length;
        final int[] oldKeys      = keys;
        final double[] oldValues = values;
        final byte[] oldStates   = states;

        final int newLength = RESIZE_MULTIPLIER * oldLength;
        final int[] newKeys = new int[newLength];
        final double[] newValues = new double[newLength];
        final byte[] newStates = new byte[newLength];
        final int newMask = newLength - 1;
        for (int i = 0; i < oldLength; ++i) {
            if (oldStates[i] == FULL) {
                final int key = oldKeys[i];
                final int index = findInsertionIndex(newKeys, newStates, key, newMask);
                newKeys[index]   = key;
                newValues[index] = oldValues[i];
                newStates[index] = FULL;
            }
        }

        mask   = newMask;
        keys   = newKeys;
        values = newValues;
        states = newStates;

    }

    /**
     * Check if tables should grow due to increased size.
     * @return true if  tables should grow
     */
    private boolean shouldGrowTable() {
        int PROBE_START_LINE_469 = 469;
		int f_size_1834_line_469 = size;
		int f_mask_1799_line_469 = mask;
		int open_int_to_double_hash_map_1_expr69_line_469 = f_mask_1799_line_469 + 1;
		int open_int_to_double_hash_map_1_expr68_line_469 = (open_int_to_double_hash_map_1_expr69_line_469);
		float f_load_factor_1803_line_469 = LOAD_FACTOR;
		float open_int_to_double_hash_map_1_expr67_line_469 = open_int_to_double_hash_map_1_expr68_line_469
				* f_load_factor_1803_line_469;
		boolean open_int_to_double_hash_map_1_expr66_line_469 = f_size_1834_line_469 > open_int_to_double_hash_map_1_expr67_line_469;
		int PROBE_END_LINE_469 = 469;
		return open_int_to_double_hash_map_1_expr66_line_469;
    }

    /**
     * Compute the hash value of a key
     * @param key key to hash
     * @return hash value of the key
     */
    private static int hashOf(final int key) {
        int PROBE_START_LINE_478 = 478;
		int p_key_1836_line_478 = key;
		int p_key_1836_line_478_v1 = key;
		int open_int_to_double_hash_map_1_expr74_line_478 = p_key_1836_line_478_v1 >>> 20;
		int open_int_to_double_hash_map_1_expr73_line_478 = (open_int_to_double_hash_map_1_expr74_line_478);
		int p_key_1836_line_478_v2 = key;
		int open_int_to_double_hash_map_1_expr76_line_478 = p_key_1836_line_478_v2 >>> 12;
		int open_int_to_double_hash_map_1_expr75_line_478 = (open_int_to_double_hash_map_1_expr76_line_478);
		int open_int_to_double_hash_map_1_expr72_line_478 = open_int_to_double_hash_map_1_expr73_line_478
				^ open_int_to_double_hash_map_1_expr75_line_478;
		int open_int_to_double_hash_map_1_expr71_line_478 = (open_int_to_double_hash_map_1_expr72_line_478);
		int open_int_to_double_hash_map_1_expr70_line_478 = p_key_1836_line_478
				^ open_int_to_double_hash_map_1_expr71_line_478;
		int PROBE_END_LINE_478 = 478;
		final int h = open_int_to_double_hash_map_1_expr70_line_478;
        int PROBE_START_LINE_479 = 479;
		int v_h_1837_line_479 = h;
		int v_h_1837_line_479_v1 = h;
		int open_int_to_double_hash_map_1_expr79_line_479 = v_h_1837_line_479_v1 >>> 7;
		int open_int_to_double_hash_map_1_expr78_line_479 = (open_int_to_double_hash_map_1_expr79_line_479);
		int v_h_1837_line_479_v2 = h;
		int open_int_to_double_hash_map_1_expr81_line_479 = v_h_1837_line_479_v2 >>> 4;
		int open_int_to_double_hash_map_1_expr80_line_479 = (open_int_to_double_hash_map_1_expr81_line_479);
		int open_int_to_double_hash_map_1_expr77_line_479 = v_h_1837_line_479
				^ open_int_to_double_hash_map_1_expr78_line_479 ^ open_int_to_double_hash_map_1_expr80_line_479;
		int PROBE_END_LINE_479 = 479;
		return open_int_to_double_hash_map_1_expr77_line_479;
    }


    /** Iterator class for the map. */
    public class Iterator {

        /** Reference modification count. */
        private final int referenceCount;

        /** Index of current element. */
        private int current;

        /** Index of next element. */
        private int next;

        /**
         * Simple constructor.
         */
        private Iterator() {

            // preserve the modification count of the map to detect concurrent modifications later
            referenceCount = count;

            // initialize current index
            next = -1;
            try {
                advance();
            } catch (NoSuchElementException nsee) {
                // ignored
            }

        }

        /**
         * Check if there is a next element in the map.
         * @return true if there is a next element
         */
        public boolean hasNext() {
            return next >= 0;
        }

        /**
         * Get the key of current entry.
         * @return key of current entry
         * @exception ConcurrentModificationException if the map is modified during iteration
         * @exception NoSuchElementException if there is no element left in the map
         */
        public int key()
            throws ConcurrentModificationException, NoSuchElementException {
            if (referenceCount != count) {
                throw MathRuntimeException.createConcurrentModificationException(LocalizedFormats.MAP_MODIFIED_WHILE_ITERATING);
            }
            if (current < 0) {
                throw MathRuntimeException.createNoSuchElementException(LocalizedFormats.ITERATOR_EXHAUSTED);
            }
            return keys[current];
        }

        /**
         * Get the value of current entry.
         * @return value of current entry
         * @exception ConcurrentModificationException if the map is modified during iteration
         * @exception NoSuchElementException if there is no element left in the map
         */
        public double value()
            throws ConcurrentModificationException, NoSuchElementException {
            if (referenceCount != count) {
                throw MathRuntimeException.createConcurrentModificationException(LocalizedFormats.MAP_MODIFIED_WHILE_ITERATING);
            }
            if (current < 0) {
                throw MathRuntimeException.createNoSuchElementException(LocalizedFormats.ITERATOR_EXHAUSTED);
            }
            return values[current];
        }

        /**
         * Advance iterator one step further.
         * @exception ConcurrentModificationException if the map is modified during iteration
         * @exception NoSuchElementException if there is no element left in the map
         */
        public void advance()
            throws ConcurrentModificationException, NoSuchElementException {

            if (referenceCount != count) {
                throw MathRuntimeException.createConcurrentModificationException(LocalizedFormats.MAP_MODIFIED_WHILE_ITERATING);
            }

            // advance on step
            current = next;

            // prepare next step
            try {
                while (states[++next] != FULL) {
                    // nothing to do
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                next = -2;
                if (current < 0) {
                    throw MathRuntimeException.createNoSuchElementException(LocalizedFormats.ITERATOR_EXHAUSTED);
                }
            }

        }

    }

    /**
     * Read a serialized object.
     * @param stream input stream
     * @throws IOException if object cannot be read
     * @throws ClassNotFoundException if the class corresponding
     * to the serialized object cannot be found
     */
    private void readObject(final ObjectInputStream stream)
        throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        count = 0;
    }


}
