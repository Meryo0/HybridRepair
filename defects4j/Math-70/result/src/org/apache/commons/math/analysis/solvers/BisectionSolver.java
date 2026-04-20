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
package org.apache.commons.math.analysis.solvers;

import org.apache.commons.math.FunctionEvaluationException;
import org.apache.commons.math.MaxIterationsExceededException;
import org.apache.commons.math.analysis.UnivariateRealFunction;

/**
 * Implements the <a href="http://mathworld.wolfram.com/Bisection.html">
 * bisection algorithm</a> for finding zeros of univariate real functions.
 * <p>
 * The function should be continuous but not necessarily smooth.</p>
 *
 * @version $Revision$ $Date$
 */
public class BisectionSolver extends UnivariateRealSolverImpl {

    /**
     * Construct a solver for the given function.
     *
     * @param f function to solve.
     * @deprecated as of 2.0 the function to solve is passed as an argument
     * to the {@link #solve(UnivariateRealFunction, double, double)} or
     * {@link UnivariateRealSolverImpl#solve(UnivariateRealFunction, double, double, double)}
     * method.
     */
    @Deprecated
    public BisectionSolver(UnivariateRealFunction f) {
        super(f, 100, 1E-6);
    }

    /**
     * Construct a solver.
     *
     */
    public BisectionSolver() {
        super(100, 1E-6);
    }

    /** {@inheritDoc} */
    @Deprecated
    public double solve(double min, double max, double initial)
        throws MaxIterationsExceededException, FunctionEvaluationException {
        return solve(f, min, max);
    }

    /** {@inheritDoc} */
    @Deprecated
    public double solve(double min, double max)
        throws MaxIterationsExceededException, FunctionEvaluationException {
        int PROBE_START_LINE_66 = 66;
			org.apache.commons.math.analysis.UnivariateRealFunction f_f_21_line_66 = f;
			double p_min_19_line_66 = min;
			double p_max_20_line_66 = max;
			double bisection_solver_1_expr2_line_66 = solve(f_f_21_line_66, p_min_19_line_66, p_max_20_line_66);
			int PROBE_END_LINE_66 = 66;
		return bisection_solver_1_expr2_line_66;
    }

    /** {@inheritDoc} */
    public double solve(final UnivariateRealFunction f, double min, double max, double initial)
        throws MaxIterationsExceededException, FunctionEvaluationException {
        int PROBE_START_LINE_72 = 72;
			double p_min_23_line_72 = min;
			double p_max_24_line_72 = max;
			double bisection_solver_1_expr3_line_72 = solve(p_min_23_line_72, p_max_24_line_72);
			int PROBE_END_LINE_72 = 72;
		return bisection_solver_1_expr3_line_72;
    }

    /** {@inheritDoc} */
    public double solve(final UnivariateRealFunction f, double min, double max)
        throws MaxIterationsExceededException, FunctionEvaluationException {

        clearResult();
        int PROBE_START_LINE_80 = 80;
		double p_min_27_line_80 = min;
		double p_max_28_line_80 = max;
		int PROBE_END_LINE_80 = 80;
		verifyInterval(p_min_27_line_80,p_max_28_line_80);
        double m;
        double fm;
        double fmin;

        int i = 0;
        while (true) {
            int PROBE_START_LINE_86 = 86;
			int v_i_29_line_86 = i;
			int f_maximal_iteration_count_8_line_86 = maximalIterationCount;
			boolean bisection_solver_1_expr6_line_86 = v_i_29_line_86 < f_maximal_iteration_count_8_line_86;
			if (!(bisection_solver_1_expr6_line_86)) {
				break;
			}
			int PROBE_END_LINE_86 = 86;
			int PROBE_START_LINE_87 = 87;
			double p_min_27_line_87 = min;
			double p_max_28_line_87 = max;
			double bisection_solver_1_expr8_line_87 = UnivariateRealSolverUtils.midpoint(p_min_27_line_87,
					p_max_28_line_87);
			int PROBE_END_LINE_87 = 87;
			m = bisection_solver_1_expr8_line_87;
           int PROBE_START_LINE_88 = 88;
			org.apache.commons.math.analysis.UnivariateRealFunction p_f_26_line_88 = f;
			double p_min_27_line_88 = min;
			double bisection_solver_1_expr10_line_88 = p_f_26_line_88.value(p_min_27_line_88);
			int PROBE_END_LINE_88 = 88;
		fmin = bisection_solver_1_expr10_line_88;
           fm = f.value(m);

            if (fm * fmin > 0.0) {
                // max and m bracket the root.
                min = m;
            } else {
                // min and m bracket the root.
                max = m;
            }

            if (Math.abs(max - min) <= absoluteAccuracy) {
                m = UnivariateRealSolverUtils.midpoint(min, max);
                setResult(m, i);
                return m;
            }
            ++i;
        }

        throw new MaxIterationsExceededException(maximalIterationCount);
    }
}
