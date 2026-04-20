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

package org.apache.commons.math;


/**
 * Provide a default implementation for several functions useful to generic
 * converging algorithms.
 *
 * @version $Revision$ $Date$
 * @since 2.0
 */
public abstract class ConvergingAlgorithmImpl implements ConvergingAlgorithm{

    /** Maximum absolute error. */
    protected double absoluteAccuracy;

    /** Maximum relative error. */
    protected double relativeAccuracy;

    /** Maximum number of iterations. */
    protected int maximalIterationCount;

    /** Default maximum absolute error. */
    protected double defaultAbsoluteAccuracy;

    /** Default maximum relative error. */
    protected double defaultRelativeAccuracy;

    /** Default maximum number of iterations. */
    protected int defaultMaximalIterationCount;

    // Mainly for test framework.
    /** The last iteration count. */
    protected int iterationCount;

    /**
     * Construct an algorithm with given iteration count and accuracy.
     *
     * @param defaultAbsoluteAccuracy maximum absolute error
     * @param defaultMaximalIterationCount maximum number of iterations
     * @throws IllegalArgumentException if f is null or the
     * defaultAbsoluteAccuracy is not valid
     */
    protected ConvergingAlgorithmImpl(final int defaultMaximalIterationCount,
                                      final double defaultAbsoluteAccuracy) {
        int PROBE_START_LINE_62 = 62;
										double p_default_absolute_accuracy_2_line_62 = defaultAbsoluteAccuracy;
										int PROBE_END_LINE_62 = 62;
		this.defaultAbsoluteAccuracy = p_default_absolute_accuracy_2_line_62;
        this.defaultRelativeAccuracy = 1.0e-14;
        int PROBE_START_LINE_64 = 64;
		double p_default_absolute_accuracy_2_line_64 = defaultAbsoluteAccuracy;
		int PROBE_END_LINE_64 = 64;
		this.absoluteAccuracy = p_default_absolute_accuracy_2_line_64;
        int PROBE_START_LINE_65 = 65;
		double f_default_relative_accuracy_4_line_65 = defaultRelativeAccuracy;
		int PROBE_END_LINE_65 = 65;
		this.relativeAccuracy = f_default_relative_accuracy_4_line_65;
        int PROBE_START_LINE_66 = 66;
		int p_default_maximal_iteration_count_1_line_66 = defaultMaximalIterationCount;
		int PROBE_END_LINE_66 = 66;
		this.defaultMaximalIterationCount = p_default_maximal_iteration_count_1_line_66;
        int PROBE_START_LINE_67 = 67;
		int p_default_maximal_iteration_count_1_line_67 = defaultMaximalIterationCount;
		int PROBE_END_LINE_67 = 67;
		this.maximalIterationCount = p_default_maximal_iteration_count_1_line_67;
        this.iterationCount = 0;
    }

    /** {@inheritDoc} */
    public int getIterationCount() {
        return iterationCount;
    }

    /** {@inheritDoc} */
    public void setAbsoluteAccuracy(double accuracy) {
        absoluteAccuracy = accuracy;
    }

    /** {@inheritDoc} */
    public double getAbsoluteAccuracy() {
        return absoluteAccuracy;
    }

    /** {@inheritDoc} */
    public void resetAbsoluteAccuracy() {
        absoluteAccuracy = defaultAbsoluteAccuracy;
    }

    /** {@inheritDoc} */
    public void setMaximalIterationCount(int count) {
        maximalIterationCount = count;
    }

    /** {@inheritDoc} */
    public int getMaximalIterationCount() {
        return maximalIterationCount;
    }

    /** {@inheritDoc} */
    public void resetMaximalIterationCount() {
        maximalIterationCount = defaultMaximalIterationCount;
    }

    /** {@inheritDoc} */
    public void setRelativeAccuracy(double accuracy) {
        relativeAccuracy = accuracy;
    }

    /** {@inheritDoc} */
    public double getRelativeAccuracy() {
        return relativeAccuracy;
    }

    /** {@inheritDoc} */
    public void resetRelativeAccuracy() {
        relativeAccuracy = defaultRelativeAccuracy;
    }

}
