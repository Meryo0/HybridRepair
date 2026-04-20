/*
 * Copyright 2010 The Closure Compiler Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.javascript.jscomp;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.javascript.jscomp.graph.LatticeElement;

import java.util.List;

/**
 * Defines a way join a list of LatticeElements.
 */
interface JoinOp<L extends LatticeElement> extends Function<List<L>, L> {

  /**
   * An implementation of {@code JoinOp} that makes it easy to join to
   * lattice elements at a time.
   */
  abstract static class BinaryJoinOp<L extends LatticeElement>
      implements JoinOp<L> {
    @Override
    public final L apply(List<L> values) {
      int PROBE_START_LINE_38 = 38;
		List<L> p_values_1968_line_38 = values;
		boolean join_op_1_expr3_line_38 = p_values_1968_line_38.isEmpty();
		boolean join_op_1_expr2_line_38 = !join_op_1_expr3_line_38;
		int PROBE_END_LINE_38 = 38;
	Preconditions.checkArgument(join_op_1_expr2_line_38);
      int PROBE_START_LINE_39 = 39;
	List<L> p_values_1968_line_39 = values;
	int join_op_1_expr4_line_39 = p_values_1968_line_39.size();
	int PROBE_END_LINE_39 = 39;
	int size = join_op_1_expr4_line_39;
      int PROBE_START_LINE_40 = 49;
	int v_size_1969_line_40 = size;
	boolean join_op_1_expr5_line_40 = v_size_1969_line_40 == 1;
	int PROBE_END_LINE_40 = 49;
	if (join_op_1_expr5_line_40) {
        int PROBE_START_LINE_41 = 41;
		List<L> p_values_1968_line_41 = values;
		L join_op_1_expr6_line_41 = p_values_1968_line_41.get(0);
		int PROBE_END_LINE_41 = 41;
		return join_op_1_expr6_line_41;
      } else {
		int PROBE_START_LINE_42 = 49;
		int v_size_1969_line_42 = size;
		boolean join_op_1_expr7_line_42 = v_size_1969_line_42 == 2;
		int PROBE_END_LINE_42 = 49;
		if (join_op_1_expr7_line_42) {
			int PROBE_START_LINE_43 = 43;
			List<L> p_values_1968_line_43 = values;
			L join_op_1_expr9_line_43 = p_values_1968_line_43.get(0);
			List<L> p_values_1968_line_43_v1 = values;
			L join_op_1_expr10_line_43 = p_values_1968_line_43_v1.get(1);
			L join_op_1_expr8_line_43 = apply(join_op_1_expr9_line_43, join_op_1_expr10_line_43);
			int PROBE_END_LINE_43 = 43;
			return join_op_1_expr8_line_43;
		} else {
			int mid = computeMidPoint(size);
			return apply(apply(values.subList(0, mid)), apply(values.subList(mid, size)));
		}
	}
    }

    /**
     * Creates a new lattice that will be the join of two input lattices.
     *
     * @return The join of {@code latticeA} and {@code latticeB}.
     */
    abstract L apply(L latticeA, L latticeB);

    /**
     * Finds the midpoint of a list. The function will favor two lists of
     * even length instead of two lists of the same odd length. The list
     * must be at least length two.
     *
     * @param size Size of the list.
     */
    static int computeMidPoint(int size) {
      int midpoint = size >>> 1;
      if (size > 4) {
        /* Any list longer than 4 should prefer an even split point
         * over the true midpoint, so that [0,6] splits at 2, not 3. */
        midpoint &= -2; // (0xfffffffe) clears low bit so midpoint is even
      }
      return midpoint;
    }
  }
}
