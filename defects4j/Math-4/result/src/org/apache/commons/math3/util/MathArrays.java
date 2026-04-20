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

package org.apache.commons.math3.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/**
 * Arrays utilities.
 *
 * @since 3.0
 * @version $Id$
 */
public class MathArrays {
    /** Factor used for splitting double numbers: n = 2^27 + 1 (i.e. {@value}). */
    private static final int SPLIT_FACTOR = 0x8000001;

    /**
     * Private constructor.
     */
    private MathArrays() {}

    /**
     * Real-valued function that operate on an array or a part of it.
     * @since 3.1
     */
    public interface Function {
        /**
         * Operates on an entire array.
         *
         * @param array Array to operate on.
         * @return the result of the operation.
         */
        double evaluate(double[] array);
        /**
         * @param array Array to operate on.
         * @param startIndex Index of the first element to take into account.
         * @param numElements Number of elements to take into account.
         * @return the result of the operation.
         */
        double evaluate(double[] array,
                        int startIndex,
                        int numElements);
    }

    /**
     * Create a copy of an array scaled by a value.
     *
     * @param arr Array to scale.
     * @param val Scalar.
     * @return scaled copy of array with each entry multiplied by val.
     * @since 3.2
     */
    public static double[] scale(double val, final double[] arr) {
        double[] newArr = new double[arr.length];
        for (int i = 0; i < arr.length; i++) {
            newArr[i] = arr[i] * val;
        }
        return newArr;
    }

    /**
     * <p>Multiply each element of an array by a value.</p>
     *
     * <p>The array is modified in place (no copy is created).</p>
     *
     * @param arr Array to scale
     * @param val Scalar
     * @since 3.2
     */
    public static void scaleInPlace(double val, final double[] arr) {
        for (int i = 0; i < arr.length; i++) {
            arr[i] *= val;
        }
    }

    /**
     * Creates an array whose contents will be the element-by-element
     * addition of the arguments.
     *
     * @param a First term of the addition.
     * @param b Second term of the addition.
     * @return a new array {@code r} where {@code r[i] = a[i] + b[i]}.
     * @throws DimensionMismatchException if the array lengths differ.
     * @since 3.1
     */
    public static double[] ebeAdd(double[] a, double[] b)
        throws DimensionMismatchException {
        if (a.length != b.length) {
            throw new DimensionMismatchException(a.length, b.length);
        }

        final double[] result = a.clone();
        for (int i = 0; i < a.length; i++) {
            result[i] += b[i];
        }
        return result;
    }
    /**
     * Creates an array whose contents will be the element-by-element
     * subtraction of the second argument from the first.
     *
     * @param a First term.
     * @param b Element to be subtracted.
     * @return a new array {@code r} where {@code r[i] = a[i] - b[i]}.
     * @throws DimensionMismatchException if the array lengths differ.
     * @since 3.1
     */
    public static double[] ebeSubtract(double[] a, double[] b)
        throws DimensionMismatchException {
        if (a.length != b.length) {
            throw new DimensionMismatchException(a.length, b.length);
        }

        final double[] result = a.clone();
        for (int i = 0; i < a.length; i++) {
            result[i] -= b[i];
        }
        return result;
    }
    /**
     * Creates an array whose contents will be the element-by-element
     * multiplication of the arguments.
     *
     * @param a First factor of the multiplication.
     * @param b Second factor of the multiplication.
     * @return a new array {@code r} where {@code r[i] = a[i] * b[i]}.
     * @throws DimensionMismatchException if the array lengths differ.
     * @since 3.1
     */
    public static double[] ebeMultiply(double[] a, double[] b)
        throws DimensionMismatchException {
        if (a.length != b.length) {
            throw new DimensionMismatchException(a.length, b.length);
        }

        final double[] result = a.clone();
        for (int i = 0; i < a.length; i++) {
            result[i] *= b[i];
        }
        return result;
    }
    /**
     * Creates an array whose contents will be the element-by-element
     * division of the first argument by the second.
     *
     * @param a Numerator of the division.
     * @param b Denominator of the division.
     * @return a new array {@code r} where {@code r[i] = a[i] / b[i]}.
     * @throws DimensionMismatchException if the array lengths differ.
     * @since 3.1
     */
    public static double[] ebeDivide(double[] a, double[] b)
        throws DimensionMismatchException {
        if (a.length != b.length) {
            throw new DimensionMismatchException(a.length, b.length);
        }

        final double[] result = a.clone();
        for (int i = 0; i < a.length; i++) {
            result[i] /= b[i];
        }
        return result;
    }

    /**
     * Calculates the L<sub>1</sub> (sum of abs) distance between two points.
     *
     * @param p1 the first point
     * @param p2 the second point
     * @return the L<sub>1</sub> distance between the two points
     */
    public static double distance1(double[] p1, double[] p2) {
        double sum = 0;
        for (int i = 0; i < p1.length; i++) {
            sum += FastMath.abs(p1[i] - p2[i]);
        }
        return sum;
    }

    /**
     * Calculates the L<sub>1</sub> (sum of abs) distance between two points.
     *
     * @param p1 the first point
     * @param p2 the second point
     * @return the L<sub>1</sub> distance between the two points
     */
    public static int distance1(int[] p1, int[] p2) {
      int sum = 0;
      for (int i = 0; i < p1.length; i++) {
          sum += FastMath.abs(p1[i] - p2[i]);
      }
      return sum;
    }

    /**
     * Calculates the L<sub>2</sub> (Euclidean) distance between two points.
     *
     * @param p1 the first point
     * @param p2 the second point
     * @return the L<sub>2</sub> distance between the two points
     */
    public static double distance(double[] p1, double[] p2) {
        double sum = 0;
        for (int i = 0; i < p1.length; i++) {
            final double dp = p1[i] - p2[i];
            sum += dp * dp;
        }
        return FastMath.sqrt(sum);
    }

    /**
     * Calculates the L<sub>2</sub> (Euclidean) distance between two points.
     *
     * @param p1 the first point
     * @param p2 the second point
     * @return the L<sub>2</sub> distance between the two points
     */
    public static double distance(int[] p1, int[] p2) {
      double sum = 0;
      for (int i = 0; i < p1.length; i++) {
          final double dp = p1[i] - p2[i];
          sum += dp * dp;
      }
      return FastMath.sqrt(sum);
    }

    /**
     * Calculates the L<sub>&infin;</sub> (max of abs) distance between two points.
     *
     * @param p1 the first point
     * @param p2 the second point
     * @return the L<sub>&infin;</sub> distance between the two points
     */
    public static double distanceInf(double[] p1, double[] p2) {
        double max = 0;
        for (int i = 0; i < p1.length; i++) {
            max = FastMath.max(max, FastMath.abs(p1[i] - p2[i]));
        }
        return max;
    }

    /**
     * Calculates the L<sub>&infin;</sub> (max of abs) distance between two points.
     *
     * @param p1 the first point
     * @param p2 the second point
     * @return the L<sub>&infin;</sub> distance between the two points
     */
    public static int distanceInf(int[] p1, int[] p2) {
        int max = 0;
        for (int i = 0; i < p1.length; i++) {
            max = FastMath.max(max, FastMath.abs(p1[i] - p2[i]));
        }
        return max;
    }

    /**
     * Specification of ordering direction.
     */
    public static enum OrderDirection {
        /** Constant for increasing direction. */
        INCREASING,
        /** Constant for decreasing direction. */
        DECREASING
    }

    /**
     * Check that an array is monotonically increasing or decreasing.
     *
     * @param <T> the type of the elements in the specified array
     * @param val Values.
     * @param dir Ordering direction.
     * @param strict Whether the order should be strict.
     * @return {@code true} if sorted, {@code false} otherwise.
     */
    public static  <T extends Comparable<? super T>> boolean isMonotonic(T[] val,
                                      OrderDirection dir,
                                      boolean strict) {
        T previous = val[0];
        final int max = val.length;
        for (int i = 1; i < max; i++) {
            final int comp;
            switch (dir) {
            case INCREASING:
                comp = previous.compareTo(val[i]);
                if (strict) {
                    if (comp >= 0) {
                        return false;
                    }
                } else {
                    if (comp > 0) {
                        return false;
                    }
                }
                break;
            case DECREASING:
                comp = val[i].compareTo(previous);
                if (strict) {
                    if (comp >= 0) {
                        return false;
                    }
                } else {
                    if (comp > 0) {
                       return false;
                    }
                }
                break;
            default:
                // Should never happen.
                throw new MathInternalError();
            }

            previous = val[i];
        }
        return true;
    }

    /**
     * Check that an array is monotonically increasing or decreasing.
     *
     * @param val Values.
     * @param dir Ordering direction.
     * @param strict Whether the order should be strict.
     * @return {@code true} if sorted, {@code false} otherwise.
     */
    public static boolean isMonotonic(double[] val, OrderDirection dir, boolean strict) {
        return checkOrder(val, dir, strict, false);
    }

    /**
     * Check that the given array is sorted.
     *
     * @param val Values.
     * @param dir Ordering direction.
     * @param strict Whether the order should be strict.
     * @param abort Whether to throw an exception if the check fails.
     * @return {@code true} if the array is sorted.
     * @throws NonMonotonicSequenceException if the array is not sorted
     * and {@code abort} is {@code true}.
     */
    public static boolean checkOrder(double[] val, OrderDirection dir,
                                     boolean strict, boolean abort)
        throws NonMonotonicSequenceException {
        double previous = val[0];
        final int max = val.length;

        int index;
        ITEM:
        for (index = 1; index < max; index++) {
            switch (dir) {
            case INCREASING:
                if (strict) {
                    if (val[index] <= previous) {
                        break ITEM;
                    }
                } else {
                    if (val[index] < previous) {
                        break ITEM;
                    }
                }
                break;
            case DECREASING:
                if (strict) {
                    if (val[index] >= previous) {
                        break ITEM;
                    }
                } else {
                    if (val[index] > previous) {
                        break ITEM;
                    }
                }
                break;
            default:
                // Should never happen.
                throw new MathInternalError();
            }

            previous = val[index];
        }

        if (index == max) {
            // Loop completed.
            return true;
        }

        // Loop early exit means wrong ordering.
        if (abort) {
            throw new NonMonotonicSequenceException(val[index], previous, index, dir, strict);
        } else {
            return false;
        }
    }

    /**
     * Check that the given array is sorted.
     *
     * @param val Values.
     * @param dir Ordering direction.
     * @param strict Whether the order should be strict.
     * @throws NonMonotonicSequenceException if the array is not sorted.
     * @since 2.2
     */
    public static void checkOrder(double[] val, OrderDirection dir,
                                  boolean strict) throws NonMonotonicSequenceException {
        checkOrder(val, dir, strict, true);
    }

    /**
     * Check that the given array is sorted in strictly increasing order.
     *
     * @param val Values.
     * @throws NonMonotonicSequenceException if the array is not sorted.
     * @since 2.2
     */
    public static void checkOrder(double[] val) throws NonMonotonicSequenceException {
        checkOrder(val, OrderDirection.INCREASING, true);
    }

    /**
     * Throws DimensionMismatchException if the input array is not rectangular.
     *
     * @param in array to be tested
     * @throws NullArgumentException if input array is null
     * @throws DimensionMismatchException if input array is not rectangular
     * @since 3.1
     */
    public static void checkRectangular(final long[][] in)
        throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(in);
        for (int i = 1; i < in.length; i++) {
            if (in[i].length != in[0].length) {
                throw new DimensionMismatchException(
                        LocalizedFormats.DIFFERENT_ROWS_LENGTHS,
                        in[i].length, in[0].length);
            }
        }
    }

    /**
     * Check that all entries of the input array are strictly positive.
     *
     * @param in Array to be tested
     * @throws NotStrictlyPositiveException if any entries of the array are not
     * strictly positive.
     * @since 3.1
     */
    public static void checkPositive(final double[] in)
        throws NotStrictlyPositiveException {
        for (int i = 0; i < in.length; i++) {
            if (in[i] <= 0) {
                throw new NotStrictlyPositiveException(in[i]);
            }
        }
    }

    /**
     * Check that all entries of the input array are >= 0.
     *
     * @param in Array to be tested
     * @throws NotPositiveException if any array entries are less than 0.
     * @since 3.1
     */
    public static void checkNonNegative(final long[] in)
        throws NotPositiveException {
        for (int i = 0; i < in.length; i++) {
            if (in[i] < 0) {
                throw new NotPositiveException(in[i]);
            }
        }
    }

    /**
     * Check all entries of the input array are >= 0.
     *
     * @param in Array to be tested
     * @throws NotPositiveException if any array entries are less than 0.
     * @since 3.1
     */
    public static void checkNonNegative(final long[][] in)
        throws NotPositiveException {
        for (int i = 0; i < in.length; i ++) {
            for (int j = 0; j < in[i].length; j++) {
                if (in[i][j] < 0) {
                    throw new NotPositiveException(in[i][j]);
                }
            }
        }
    }

    /**
     * Returns the Cartesian norm (2-norm), handling both overflow and underflow.
     * Translation of the minpack enorm subroutine.
     *
     * The redistribution policy for MINPACK is available
     * <a href="http://www.netlib.org/minpack/disclaimer">here</a>, for
     * convenience, it is reproduced below.</p>
     *
     * <table border="0" width="80%" cellpadding="10" align="center" bgcolor="#E0E0E0">
     * <tr><td>
     *    Minpack Copyright Notice (1999) University of Chicago.
     *    All rights reserved
     * </td></tr>
     * <tr><td>
     * Redistribution and use in source and binary forms, with or without
     * modification, are permitted provided that the following conditions
     * are met:
     * <ol>
     *  <li>Redistributions of source code must retain the above copyright
     *      notice, this list of conditions and the following disclaimer.</li>
     * <li>Redistributions in binary form must reproduce the above
     *     copyright notice, this list of conditions and the following
     *     disclaimer in the documentation and/or other materials provided
     *     with the distribution.</li>
     * <li>The end-user documentation included with the redistribution, if any,
     *     must include the following acknowledgment:
     *     {@code This product includes software developed by the University of
     *           Chicago, as Operator of Argonne National Laboratory.}
     *     Alternately, this acknowledgment may appear in the software itself,
     *     if and wherever such third-party acknowledgments normally appear.</li>
     * <li><strong>WARRANTY DISCLAIMER. THE SOFTWARE IS SUPPLIED "AS IS"
     *     WITHOUT WARRANTY OF ANY KIND. THE COPYRIGHT HOLDER, THE
     *     UNITED STATES, THE UNITED STATES DEPARTMENT OF ENERGY, AND
     *     THEIR EMPLOYEES: (1) DISCLAIM ANY WARRANTIES, EXPRESS OR
     *     IMPLIED, INCLUDING BUT NOT LIMITED TO ANY IMPLIED WARRANTIES
     *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE
     *     OR NON-INFRINGEMENT, (2) DO NOT ASSUME ANY LEGAL LIABILITY
     *     OR RESPONSIBILITY FOR THE ACCURACY, COMPLETENESS, OR
     *     USEFULNESS OF THE SOFTWARE, (3) DO NOT REPRESENT THAT USE OF
     *     THE SOFTWARE WOULD NOT INFRINGE PRIVATELY OWNED RIGHTS, (4)
     *     DO NOT WARRANT THAT THE SOFTWARE WILL FUNCTION
     *     UNINTERRUPTED, THAT IT IS ERROR-FREE OR THAT ANY ERRORS WILL
     *     BE CORRECTED.</strong></li>
     * <li><strong>LIMITATION OF LIABILITY. IN NO EVENT WILL THE COPYRIGHT
     *     HOLDER, THE UNITED STATES, THE UNITED STATES DEPARTMENT OF
     *     ENERGY, OR THEIR EMPLOYEES: BE LIABLE FOR ANY INDIRECT,
     *     INCIDENTAL, CONSEQUENTIAL, SPECIAL OR PUNITIVE DAMAGES OF
     *     ANY KIND OR NATURE, INCLUDING BUT NOT LIMITED TO LOSS OF
     *     PROFITS OR LOSS OF DATA, FOR ANY REASON WHATSOEVER, WHETHER
     *     SUCH LIABILITY IS ASSERTED ON THE BASIS OF CONTRACT, TORT
     *     (INCLUDING NEGLIGENCE OR STRICT LIABILITY), OR OTHERWISE,
     *     EVEN IF ANY OF SAID PARTIES HAS BEEN WARNED OF THE
     *     POSSIBILITY OF SUCH LOSS OR DAMAGES.</strong></li>
     * <ol></td></tr>
     * </table>
     *
     * @param v Vector of doubles.
     * @return the 2-norm of the vector.
     * @since 2.2
     */
    public static double safeNorm(double[] v) {
        double rdwarf = 3.834e-20;
        double rgiant = 1.304e+19;
        double s1 = 0;
        double s2 = 0;
        double s3 = 0;
        double x1max = 0;
        double x3max = 0;
        double floatn = v.length;
        double agiant = rgiant / floatn;
        for (int i = 0; i < v.length; i++) {
            double xabs = Math.abs(v[i]);
            if (xabs < rdwarf || xabs > agiant) {
                if (xabs > rdwarf) {
                    if (xabs > x1max) {
                        double r = x1max / xabs;
                        s1= 1 + s1 * r * r;
                        x1max = xabs;
                    } else {
                        double r = xabs / x1max;
                        s1 += r * r;
                    }
                } else {
                    if (xabs > x3max) {
                        double r = x3max / xabs;
                        s3= 1 + s3 * r * r;
                        x3max = xabs;
                    } else {
                        if (xabs != 0) {
                            double r = xabs / x3max;
                            s3 += r * r;
                        }
                    }
                }
            } else {
                s2 += xabs * xabs;
            }
        }
        double norm;
        if (s1 != 0) {
            norm = x1max * Math.sqrt(s1 + (s2 / x1max) / x1max);
        } else {
            if (s2 == 0) {
                norm = x3max * Math.sqrt(s3);
            } else {
                if (s2 >= x3max) {
                    norm = Math.sqrt(s2 * (1 + (x3max / s2) * (x3max * s3)));
                } else {
                    norm = Math.sqrt(x3max * ((s2 / x3max) + (x3max * s3)));
                }
            }
        }
        return norm;
    }

    /**
     * Sort an array in ascending order in place and perform the same reordering
     * of entries on other arrays. For example, if
     * {@code x = [3, 1, 2], y = [1, 2, 3]} and {@code z = [0, 5, 7]}, then
     * {@code sortInPlace(x, y, z)} will update {@code x} to {@code [1, 2, 3]},
     * {@code y} to {@code [2, 3, 1]} and {@code z} to {@code [5, 7, 0]}.
     *
     * @param x Array to be sorted and used as a pattern for permutation
     * of the other arrays.
     * @param yList Set of arrays whose permutations of entries will follow
     * those performed on {@code x}.
     * @throws DimensionMismatchException if any {@code y} is not the same
     * size as {@code x}.
     * @throws NullArgumentException if {@code x} or any {@code y} is null.
     * @since 3.0
     */
    public static void sortInPlace(double[] x, double[] ... yList)
        throws DimensionMismatchException, NullArgumentException {
        sortInPlace(x, OrderDirection.INCREASING, yList);
    }

    /**
     * Sort an array in place and perform the same reordering of entries on
     * other arrays.  This method works the same as the other
     * {@link #sortInPlace(double[], double[][]) sortInPlace} method, but
     * allows the order of the sort to be provided in the {@code dir}
     * parameter.
     *
     * @param x Array to be sorted and used as a pattern for permutation
     * of the other arrays.
     * @param dir Order direction.
     * @param yList Set of arrays whose permutations of entries will follow
     * those performed on {@code x}.
     * @throws DimensionMismatchException if any {@code y} is not the same
     * size as {@code x}.
     * @throws NullArgumentException if {@code x} or any {@code y} is null
     * @since 3.0
     */
    public static void sortInPlace(double[] x,
                                   final OrderDirection dir,
                                   double[] ... yList)
        throws NullArgumentException, DimensionMismatchException {
        if (x == null) {
            throw new NullArgumentException();
        }

        final int len = x.length;
        final List<Pair<Double, double[]>> list
            = new ArrayList<Pair<Double, double[]>>(len);

        final int yListLen = yList.length;
        for (int i = 0; i < len; i++) {
            final double[] yValues = new double[yListLen];
            for (int j = 0; j < yListLen; j++) {
                double[] y = yList[j];
                if (y == null) {
                    throw new NullArgumentException();
                }
                if (y.length != len) {
                    throw new DimensionMismatchException(y.length, len);
                }
                yValues[j] = y[i];
            }
            list.add(new Pair<Double, double[]>(x[i], yValues));
        }

        final Comparator<Pair<Double, double[]>> comp
            = new Comparator<Pair<Double, double[]>>() {
            public int compare(Pair<Double, double[]> o1,
                               Pair<Double, double[]> o2) {
                int val;
                switch (dir) {
                case INCREASING:
                    val = o1.getKey().compareTo(o2.getKey());
                break;
                case DECREASING:
                    val = o2.getKey().compareTo(o1.getKey());
                break;
                default:
                    // Should never happen.
                    throw new MathInternalError();
                }
                return val;
            }
        };

        Collections.sort(list, comp);

        for (int i = 0; i < len; i++) {
            final Pair<Double, double[]> e = list.get(i);
            x[i] = e.getKey();
            final double[] yValues = e.getValue();
            for (int j = 0; j < yListLen; j++) {
                yList[j][i] = yValues[j];
            }
        }
    }

    /**
     * Creates a copy of the {@code source} array.
     *
     * @param source Array to be copied.
     * @return the copied array.
     */
     public static int[] copyOf(int[] source) {
         return copyOf(source, source.length);
     }

    /**
     * Creates a copy of the {@code source} array.
     *
     * @param source Array to be copied.
     * @return the copied array.
     */
     public static double[] copyOf(double[] source) {
         return copyOf(source, source.length);
     }

    /**
     * Creates a copy of the {@code source} array.
     *
     * @param source Array to be copied.
     * @param len Number of entries to copy. If smaller then the source
     * length, the copy will be truncated, if larger it will padded with
     * zeroes.
     * @return the copied array.
     */
    public static int[] copyOf(int[] source, int len) {
         final int[] output = new int[len];
         System.arraycopy(source, 0, output, 0, FastMath.min(len, source.length));
         return output;
     }

    /**
     * Creates a copy of the {@code source} array.
     *
     * @param source Array to be copied.
     * @param len Number of entries to copy. If smaller then the source
     * length, the copy will be truncated, if larger it will padded with
     * zeroes.
     * @return the copied array.
     */
    public static double[] copyOf(double[] source, int len) {
         final double[] output = new double[len];
         System.arraycopy(source, 0, output, 0, FastMath.min(len, source.length));
         return output;
     }

    /**
     * Compute a linear combination accurately.
     * This method computes the sum of the products
     * <code>a<sub>i</sub> b<sub>i</sub></code> to high accuracy.
     * It does so by using specific multiplication and addition algorithms to
     * preserve accuracy and reduce cancellation effects.
     * <br/>
     * It is based on the 2005 paper
     * <a href="http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.2.1547">
     * Accurate Sum and Dot Product</a> by Takeshi Ogita, Siegfried M. Rump,
     * and Shin'ichi Oishi published in SIAM J. Sci. Comput.
     *
     * @param a Factors.
     * @param b Factors.
     * @return <code>&Sigma;<sub>i</sub> a<sub>i</sub> b<sub>i</sub></code>.
     * @throws DimensionMismatchException if arrays dimensions don't match
     */
    public static double linearCombination(final double[] a, final double[] b)
        throws DimensionMismatchException {
        final int len = a.length;
        if (len != b.length) {
            throw new DimensionMismatchException(len, b.length);
        }

        final double[] prodHigh = new double[len];
        double prodLowSum = 0;

        for (int i = 0; i < len; i++) {
            final double ai = a[i];
            final double ca = SPLIT_FACTOR * ai;
            final double aHigh = ca - (ca - ai);
            final double aLow = ai - aHigh;

            final double bi = b[i];
            final double cb = SPLIT_FACTOR * bi;
            final double bHigh = cb - (cb - bi);
            final double bLow = bi - bHigh;
            prodHigh[i] = ai * bi;
            final double prodLow = aLow * bLow - (((prodHigh[i] -
                                                    aHigh * bHigh) -
                                                   aLow * bHigh) -
                                                  aHigh * bLow);
            prodLowSum += prodLow;
        }


        final double prodHighCur = prodHigh[0];
        double prodHighNext = prodHigh[1];
        double sHighPrev = prodHighCur + prodHighNext;
        double sPrime = sHighPrev - prodHighNext;
        double sLowSum = (prodHighNext - (sHighPrev - sPrime)) + (prodHighCur - sPrime);

        final int lenMinusOne = len - 1;
        for (int i = 1; i < lenMinusOne; i++) {
            prodHighNext = prodHigh[i + 1];
            final double sHighCur = sHighPrev + prodHighNext;
            sPrime = sHighCur - prodHighNext;
            sLowSum += (prodHighNext - (sHighCur - sPrime)) + (sHighPrev - sPrime);
            sHighPrev = sHighCur;
        }

        double result = sHighPrev + (prodLowSum + sLowSum);

        if (Double.isNaN(result)) {
            // either we have split infinite numbers or some coefficients were NaNs,
            // just rely on the naive implementation and let IEEE754 handle this
            result = 0;
            for (int i = 0; i < len; ++i) {
                result += a[i] * b[i];
            }
        }

        return result;
    }

    /**
     * Compute a linear combination accurately.
     * <p>
     * This method computes a<sub>1</sub>&times;b<sub>1</sub> +
     * a<sub>2</sub>&times;b<sub>2</sub> to high accuracy. It does
     * so by using specific multiplication and addition algorithms to
     * preserve accuracy and reduce cancellation effects. It is based
     * on the 2005 paper <a
     * href="http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.2.1547">
     * Accurate Sum and Dot Product</a> by Takeshi Ogita,
     * Siegfried M. Rump, and Shin'ichi Oishi published in SIAM J. Sci. Comput.
     * </p>
     * @param a1 first factor of the first term
     * @param b1 second factor of the first term
     * @param a2 first factor of the second term
     * @param b2 second factor of the second term
     * @return a<sub>1</sub>&times;b<sub>1</sub> +
     * a<sub>2</sub>&times;b<sub>2</sub>
     * @see #linearCombination(double, double, double, double, double, double)
     * @see #linearCombination(double, double, double, double, double, double, double, double)
     */
    public static double linearCombination(final double a1, final double b1,
                                           final double a2, final double b2) {

        // the code below is split in many additions/subtractions that may
        // appear redundant. However, they should NOT be simplified, as they
        // use IEEE754 floating point arithmetic rounding properties.
        // as an example, the expression "ca1 - (ca1 - a1)" is NOT the same as "a1"
        // The variable naming conventions are that xyzHigh contains the most significant
        // bits of xyz and xyzLow contains its least significant bits. So theoretically
        // xyz is the sum xyzHigh + xyzLow, but in many cases below, this sum cannot
        // be represented in only one double precision number so we preserve two numbers
        // to hold it as long as we can, combining the high and low order bits together
        // only at the end, after cancellation may have occurred on high order bits

        int PROBE_START_LINE_896 = 896;
											int f_split_factor_598_line_896 = SPLIT_FACTOR;
											double p_a_1_593_line_896 = a1;
											double math_arrays_1_expr1_line_896 = f_split_factor_598_line_896
													* p_a_1_593_line_896;
											int PROBE_END_LINE_896 = 896;
		// split a1 and b1 as two 26 bits numbers
        final double ca1        = math_arrays_1_expr1_line_896;
        int PROBE_START_LINE_897 = 897;
		double v_ca_1_597_line_897 = ca1;
		double v_ca_1_597_line_897_v1 = ca1;
		double p_a_1_593_line_897 = a1;
		double math_arrays_1_expr4_line_897 = v_ca_1_597_line_897_v1 - p_a_1_593_line_897;
		double math_arrays_1_expr3_line_897 = (math_arrays_1_expr4_line_897);
		double math_arrays_1_expr2_line_897 = v_ca_1_597_line_897 - math_arrays_1_expr3_line_897;
		int PROBE_END_LINE_897 = 897;
		final double a1High     = math_arrays_1_expr2_line_897;
        int PROBE_START_LINE_898 = 898;
		double p_a_1_593_line_898 = a1;
		double v_a_1high_599_line_898 = a1High;
		double math_arrays_1_expr5_line_898 = p_a_1_593_line_898 - v_a_1high_599_line_898;
		int PROBE_END_LINE_898 = 898;
		final double a1Low      = math_arrays_1_expr5_line_898;
        int PROBE_START_LINE_899 = 899;
		int f_split_factor_598_line_899 = SPLIT_FACTOR;
		double p_b_1_594_line_899 = b1;
		double math_arrays_1_expr6_line_899 = f_split_factor_598_line_899 * p_b_1_594_line_899;
		int PROBE_END_LINE_899 = 899;
		final double cb1        = math_arrays_1_expr6_line_899;
        int PROBE_START_LINE_900 = 900;
		double v_cb_1_601_line_900 = cb1;
		double v_cb_1_601_line_900_v1 = cb1;
		double p_b_1_594_line_900 = b1;
		double math_arrays_1_expr9_line_900 = v_cb_1_601_line_900_v1 - p_b_1_594_line_900;
		double math_arrays_1_expr8_line_900 = (math_arrays_1_expr9_line_900);
		double math_arrays_1_expr7_line_900 = v_cb_1_601_line_900 - math_arrays_1_expr8_line_900;
		int PROBE_END_LINE_900 = 900;
		final double b1High     = math_arrays_1_expr7_line_900;
        int PROBE_START_LINE_901 = 901;
		double p_b_1_594_line_901 = b1;
		double v_b_1high_602_line_901 = b1High;
		double math_arrays_1_expr10_line_901 = p_b_1_594_line_901 - v_b_1high_602_line_901;
		int PROBE_END_LINE_901 = 901;
		final double b1Low      = math_arrays_1_expr10_line_901;

        int PROBE_START_LINE_904 = 904;
		double p_a_1_593_line_904 = a1;
		double p_b_1_594_line_904 = b1;
		double math_arrays_1_expr11_line_904 = p_a_1_593_line_904 * p_b_1_594_line_904;
		int PROBE_END_LINE_904 = 904;
		// accurate multiplication a1 * b1
        final double prod1High  = math_arrays_1_expr11_line_904;
        int PROBE_START_LINE_905 = 905;
		double v_a_1low_600_line_905 = a1Low;
		double v_b_1low_603_line_905 = b1Low;
		double math_arrays_1_expr13_line_905 = v_a_1low_600_line_905 * v_b_1low_603_line_905;
		double v_prod_1high_604_line_905 = prod1High;
		double v_a_1high_599_line_905 = a1High;
		double v_b_1high_602_line_905 = b1High;
		double math_arrays_1_expr20_line_905 = v_a_1high_599_line_905 * v_b_1high_602_line_905;
		double math_arrays_1_expr19_line_905 = v_prod_1high_604_line_905 - math_arrays_1_expr20_line_905;
		double math_arrays_1_expr18_line_905 = (math_arrays_1_expr19_line_905);
		double v_a_1low_600_line_905_v1 = a1Low;
		double v_b_1high_602_line_905_v1 = b1High;
		double math_arrays_1_expr21_line_905 = v_a_1low_600_line_905_v1 * v_b_1high_602_line_905_v1;
		double math_arrays_1_expr17_line_905 = math_arrays_1_expr18_line_905 - math_arrays_1_expr21_line_905;
		double math_arrays_1_expr16_line_905 = (math_arrays_1_expr17_line_905);
		double v_a_1high_599_line_905_v1 = a1High;
		double v_b_1low_603_line_905_v1 = b1Low;
		double math_arrays_1_expr22_line_905 = v_a_1high_599_line_905_v1 * v_b_1low_603_line_905_v1;
		double math_arrays_1_expr15_line_905 = math_arrays_1_expr16_line_905 - math_arrays_1_expr22_line_905;
		double math_arrays_1_expr14_line_905 = (math_arrays_1_expr15_line_905);
		double math_arrays_1_expr12_line_905 = math_arrays_1_expr13_line_905 - math_arrays_1_expr14_line_905;
		int PROBE_END_LINE_905 = 905;
		final double prod1Low   = math_arrays_1_expr12_line_905;

        int PROBE_START_LINE_908 = 908;
		int f_split_factor_598_line_908 = SPLIT_FACTOR;
		double p_a_2_595_line_908 = a2;
		double math_arrays_1_expr23_line_908 = f_split_factor_598_line_908 * p_a_2_595_line_908;
		int PROBE_END_LINE_908 = 908;
		// split a2 and b2 as two 26 bits numbers
        final double ca2        = math_arrays_1_expr23_line_908;
        int PROBE_START_LINE_909 = 909;
		double v_ca_2_606_line_909 = ca2;
		double v_ca_2_606_line_909_v1 = ca2;
		double p_a_2_595_line_909 = a2;
		double math_arrays_1_expr26_line_909 = v_ca_2_606_line_909_v1 - p_a_2_595_line_909;
		double math_arrays_1_expr25_line_909 = (math_arrays_1_expr26_line_909);
		double math_arrays_1_expr24_line_909 = v_ca_2_606_line_909 - math_arrays_1_expr25_line_909;
		int PROBE_END_LINE_909 = 909;
		final double a2High     = math_arrays_1_expr24_line_909;
        int PROBE_START_LINE_910 = 910;
		double p_a_2_595_line_910 = a2;
		double v_a_2high_607_line_910 = a2High;
		double math_arrays_1_expr27_line_910 = p_a_2_595_line_910 - v_a_2high_607_line_910;
		int PROBE_END_LINE_910 = 910;
		final double a2Low      = math_arrays_1_expr27_line_910;
        int PROBE_START_LINE_911 = 911;
		int f_split_factor_598_line_911 = SPLIT_FACTOR;
		double p_b_2_596_line_911 = b2;
		double math_arrays_1_expr28_line_911 = f_split_factor_598_line_911 * p_b_2_596_line_911;
		int PROBE_END_LINE_911 = 911;
		final double cb2        = math_arrays_1_expr28_line_911;
        int PROBE_START_LINE_912 = 912;
		double v_cb_2_609_line_912 = cb2;
		double v_cb_2_609_line_912_v1 = cb2;
		double p_b_2_596_line_912 = b2;
		double math_arrays_1_expr31_line_912 = v_cb_2_609_line_912_v1 - p_b_2_596_line_912;
		double math_arrays_1_expr30_line_912 = (math_arrays_1_expr31_line_912);
		double math_arrays_1_expr29_line_912 = v_cb_2_609_line_912 - math_arrays_1_expr30_line_912;
		int PROBE_END_LINE_912 = 912;
		final double b2High     = math_arrays_1_expr29_line_912;
        int PROBE_START_LINE_913 = 913;
		double p_b_2_596_line_913 = b2;
		double v_b_2high_610_line_913 = b2High;
		double math_arrays_1_expr32_line_913 = p_b_2_596_line_913 - v_b_2high_610_line_913;
		int PROBE_END_LINE_913 = 913;
		final double b2Low      = math_arrays_1_expr32_line_913;

        int PROBE_START_LINE_916 = 916;
		double p_a_2_595_line_916 = a2;
		double p_b_2_596_line_916 = b2;
		double math_arrays_1_expr33_line_916 = p_a_2_595_line_916 * p_b_2_596_line_916;
		int PROBE_END_LINE_916 = 916;
		// accurate multiplication a2 * b2
        final double prod2High  = math_arrays_1_expr33_line_916;
        int PROBE_START_LINE_917 = 917;
		double v_a_2low_608_line_917 = a2Low;
		double v_b_2low_611_line_917 = b2Low;
		double math_arrays_1_expr35_line_917 = v_a_2low_608_line_917 * v_b_2low_611_line_917;
		double v_prod_2high_612_line_917 = prod2High;
		double v_a_2high_607_line_917 = a2High;
		double v_b_2high_610_line_917 = b2High;
		double math_arrays_1_expr42_line_917 = v_a_2high_607_line_917 * v_b_2high_610_line_917;
		double math_arrays_1_expr41_line_917 = v_prod_2high_612_line_917 - math_arrays_1_expr42_line_917;
		double math_arrays_1_expr40_line_917 = (math_arrays_1_expr41_line_917);
		double v_a_2low_608_line_917_v1 = a2Low;
		double v_b_2high_610_line_917_v1 = b2High;
		double math_arrays_1_expr43_line_917 = v_a_2low_608_line_917_v1 * v_b_2high_610_line_917_v1;
		double math_arrays_1_expr39_line_917 = math_arrays_1_expr40_line_917 - math_arrays_1_expr43_line_917;
		double math_arrays_1_expr38_line_917 = (math_arrays_1_expr39_line_917);
		double v_a_2high_607_line_917_v1 = a2High;
		double v_b_2low_611_line_917_v1 = b2Low;
		double math_arrays_1_expr44_line_917 = v_a_2high_607_line_917_v1 * v_b_2low_611_line_917_v1;
		double math_arrays_1_expr37_line_917 = math_arrays_1_expr38_line_917 - math_arrays_1_expr44_line_917;
		double math_arrays_1_expr36_line_917 = (math_arrays_1_expr37_line_917);
		double math_arrays_1_expr34_line_917 = math_arrays_1_expr35_line_917 - math_arrays_1_expr36_line_917;
		int PROBE_END_LINE_917 = 917;
		final double prod2Low   = math_arrays_1_expr34_line_917;

        int PROBE_START_LINE_920 = 920;
		double v_prod_1high_604_line_920 = prod1High;
		double v_prod_2high_612_line_920 = prod2High;
		double math_arrays_1_expr45_line_920 = v_prod_1high_604_line_920 + v_prod_2high_612_line_920;
		int PROBE_END_LINE_920 = 920;
		// accurate addition a1 * b1 + a2 * b2
        final double s12High    = math_arrays_1_expr45_line_920;
        int PROBE_START_LINE_921 = 921;
		double v_s_12high_614_line_921 = s12High;
		double v_prod_2high_612_line_921 = prod2High;
		double math_arrays_1_expr46_line_921 = v_s_12high_614_line_921 - v_prod_2high_612_line_921;
		int PROBE_END_LINE_921 = 921;
		final double s12Prime   = math_arrays_1_expr46_line_921;
        int PROBE_START_LINE_922 = 922;
		double v_prod_2high_612_line_922 = prod2High;
		double v_s_12high_614_line_922 = s12High;
		double v_s_12prime_615_line_922 = s12Prime;
		double math_arrays_1_expr51_line_922 = v_s_12high_614_line_922 - v_s_12prime_615_line_922;
		double math_arrays_1_expr50_line_922 = (math_arrays_1_expr51_line_922);
		double math_arrays_1_expr49_line_922 = v_prod_2high_612_line_922 - math_arrays_1_expr50_line_922;
		double math_arrays_1_expr48_line_922 = (math_arrays_1_expr49_line_922);
		double v_prod_1high_604_line_922 = prod1High;
		double v_s_12prime_615_line_922_v1 = s12Prime;
		double math_arrays_1_expr53_line_922 = v_prod_1high_604_line_922 - v_s_12prime_615_line_922_v1;
		double math_arrays_1_expr52_line_922 = (math_arrays_1_expr53_line_922);
		double math_arrays_1_expr47_line_922 = math_arrays_1_expr48_line_922 + math_arrays_1_expr52_line_922;
		int PROBE_END_LINE_922 = 922;
		final double s12Low     = math_arrays_1_expr47_line_922;

        int PROBE_START_LINE_926 = 926;
		double v_s_12high_614_line_926 = s12High;
		double v_prod_1low_605_line_926 = prod1Low;
		double v_prod_2low_613_line_926 = prod2Low;
		double v_s_12low_616_line_926 = s12Low;
		double math_arrays_1_expr56_line_926 = v_prod_1low_605_line_926 + v_prod_2low_613_line_926
				+ v_s_12low_616_line_926;
		double math_arrays_1_expr55_line_926 = (math_arrays_1_expr56_line_926);
		double math_arrays_1_expr54_line_926 = v_s_12high_614_line_926 + math_arrays_1_expr55_line_926;
		int PROBE_END_LINE_926 = 926;
		// final rounding, s12 may have suffered many cancellations, we try
        // to recover some bits from the extra words we have saved up to now
        double result = math_arrays_1_expr54_line_926;

        int PROBE_START_LINE_928 = 932;
		double v_result_617_line_928 = result;
		boolean math_arrays_1_expr57_line_928 = Double.isNaN(v_result_617_line_928);
		int PROBE_END_LINE_928 = 932;
		if (math_arrays_1_expr57_line_928) {
            // either we have split infinite numbers or some coefficients were NaNs,
            // just rely on the naive implementation and let IEEE754 handle this
            result = a1 * b1 + a2 * b2;
        }

        int PROBE_START_LINE_934 = 934;
		double v_result_617_line_934 = result;
		int PROBE_END_LINE_934 = 934;
		return v_result_617_line_934;
    }

    /**
     * Compute a linear combination accurately.
     * <p>
     * This method computes a<sub>1</sub>&times;b<sub>1</sub> +
     * a<sub>2</sub>&times;b<sub>2</sub> + a<sub>3</sub>&times;b<sub>3</sub>
     * to high accuracy. It does so by using specific multiplication and
     * addition algorithms to preserve accuracy and reduce cancellation effects.
     * It is based on the 2005 paper <a
     * href="http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.2.1547">
     * Accurate Sum and Dot Product</a> by Takeshi Ogita,
     * Siegfried M. Rump, and Shin'ichi Oishi published in SIAM J. Sci. Comput.
     * </p>
     * @param a1 first factor of the first term
     * @param b1 second factor of the first term
     * @param a2 first factor of the second term
     * @param b2 second factor of the second term
     * @param a3 first factor of the third term
     * @param b3 second factor of the third term
     * @return a<sub>1</sub>&times;b<sub>1</sub> +
     * a<sub>2</sub>&times;b<sub>2</sub> + a<sub>3</sub>&times;b<sub>3</sub>
     * @see #linearCombination(double, double, double, double)
     * @see #linearCombination(double, double, double, double, double, double, double, double)
     */
    public static double linearCombination(final double a1, final double b1,
                                           final double a2, final double b2,
                                           final double a3, final double b3) {

        // the code below is split in many additions/subtractions that may
        // appear redundant. However, they should NOT be simplified, as they
        // do use IEEE754 floating point arithmetic rounding properties.
        // as an example, the expression "ca1 - (ca1 - a1)" is NOT the same as "a1"
        // The variables naming conventions are that xyzHigh contains the most significant
        // bits of xyz and xyzLow contains its least significant bits. So theoretically
        // xyz is the sum xyzHigh + xyzLow, but in many cases below, this sum cannot
        // be represented in only one double precision number so we preserve two numbers
        // to hold it as long as we can, combining the high and low order bits together
        // only at the end, after cancellation may have occurred on high order bits

        int PROBE_START_LINE_976 = 976;
											int f_split_factor_598_line_976 = SPLIT_FACTOR;
											double p_a_1_618_line_976 = a1;
											double math_arrays_1_expr58_line_976 = f_split_factor_598_line_976
													* p_a_1_618_line_976;
											int PROBE_END_LINE_976 = 976;
		// split a1 and b1 as two 26 bits numbers
        final double ca1        = math_arrays_1_expr58_line_976;
        int PROBE_START_LINE_977 = 977;
		double v_ca_1_624_line_977 = ca1;
		double v_ca_1_624_line_977_v1 = ca1;
		double p_a_1_618_line_977 = a1;
		double math_arrays_1_expr61_line_977 = v_ca_1_624_line_977_v1 - p_a_1_618_line_977;
		double math_arrays_1_expr60_line_977 = (math_arrays_1_expr61_line_977);
		double math_arrays_1_expr59_line_977 = v_ca_1_624_line_977 - math_arrays_1_expr60_line_977;
		int PROBE_END_LINE_977 = 977;
		final double a1High     = math_arrays_1_expr59_line_977;
        int PROBE_START_LINE_978 = 978;
		double p_a_1_618_line_978 = a1;
		double v_a_1high_625_line_978 = a1High;
		double math_arrays_1_expr62_line_978 = p_a_1_618_line_978 - v_a_1high_625_line_978;
		int PROBE_END_LINE_978 = 978;
		final double a1Low      = math_arrays_1_expr62_line_978;
        int PROBE_START_LINE_979 = 979;
		int f_split_factor_598_line_979 = SPLIT_FACTOR;
		double p_b_1_619_line_979 = b1;
		double math_arrays_1_expr63_line_979 = f_split_factor_598_line_979 * p_b_1_619_line_979;
		int PROBE_END_LINE_979 = 979;
		final double cb1        = math_arrays_1_expr63_line_979;
        int PROBE_START_LINE_980 = 980;
		double v_cb_1_627_line_980 = cb1;
		double v_cb_1_627_line_980_v1 = cb1;
		double p_b_1_619_line_980 = b1;
		double math_arrays_1_expr66_line_980 = v_cb_1_627_line_980_v1 - p_b_1_619_line_980;
		double math_arrays_1_expr65_line_980 = (math_arrays_1_expr66_line_980);
		double math_arrays_1_expr64_line_980 = v_cb_1_627_line_980 - math_arrays_1_expr65_line_980;
		int PROBE_END_LINE_980 = 980;
		final double b1High     = math_arrays_1_expr64_line_980;
        int PROBE_START_LINE_981 = 981;
		double p_b_1_619_line_981 = b1;
		double v_b_1high_628_line_981 = b1High;
		double math_arrays_1_expr67_line_981 = p_b_1_619_line_981 - v_b_1high_628_line_981;
		int PROBE_END_LINE_981 = 981;
		final double b1Low      = math_arrays_1_expr67_line_981;

        int PROBE_START_LINE_984 = 984;
		double p_a_1_618_line_984 = a1;
		double p_b_1_619_line_984 = b1;
		double math_arrays_1_expr68_line_984 = p_a_1_618_line_984 * p_b_1_619_line_984;
		int PROBE_END_LINE_984 = 984;
		// accurate multiplication a1 * b1
        final double prod1High  = math_arrays_1_expr68_line_984;
        int PROBE_START_LINE_985 = 985;
		double v_a_1low_626_line_985 = a1Low;
		double v_b_1low_629_line_985 = b1Low;
		double math_arrays_1_expr70_line_985 = v_a_1low_626_line_985 * v_b_1low_629_line_985;
		double v_prod_1high_630_line_985 = prod1High;
		double v_a_1high_625_line_985 = a1High;
		double v_b_1high_628_line_985 = b1High;
		double math_arrays_1_expr77_line_985 = v_a_1high_625_line_985 * v_b_1high_628_line_985;
		double math_arrays_1_expr76_line_985 = v_prod_1high_630_line_985 - math_arrays_1_expr77_line_985;
		double math_arrays_1_expr75_line_985 = (math_arrays_1_expr76_line_985);
		double v_a_1low_626_line_985_v1 = a1Low;
		double v_b_1high_628_line_985_v1 = b1High;
		double math_arrays_1_expr78_line_985 = v_a_1low_626_line_985_v1 * v_b_1high_628_line_985_v1;
		double math_arrays_1_expr74_line_985 = math_arrays_1_expr75_line_985 - math_arrays_1_expr78_line_985;
		double math_arrays_1_expr73_line_985 = (math_arrays_1_expr74_line_985);
		double v_a_1high_625_line_985_v1 = a1High;
		double v_b_1low_629_line_985_v1 = b1Low;
		double math_arrays_1_expr79_line_985 = v_a_1high_625_line_985_v1 * v_b_1low_629_line_985_v1;
		double math_arrays_1_expr72_line_985 = math_arrays_1_expr73_line_985 - math_arrays_1_expr79_line_985;
		double math_arrays_1_expr71_line_985 = (math_arrays_1_expr72_line_985);
		double math_arrays_1_expr69_line_985 = math_arrays_1_expr70_line_985 - math_arrays_1_expr71_line_985;
		int PROBE_END_LINE_985 = 985;
		final double prod1Low   = math_arrays_1_expr69_line_985;

        int PROBE_START_LINE_988 = 988;
		int f_split_factor_598_line_988 = SPLIT_FACTOR;
		double p_a_2_620_line_988 = a2;
		double math_arrays_1_expr80_line_988 = f_split_factor_598_line_988 * p_a_2_620_line_988;
		int PROBE_END_LINE_988 = 988;
		// split a2 and b2 as two 26 bits numbers
        final double ca2        = math_arrays_1_expr80_line_988;
        int PROBE_START_LINE_989 = 989;
		double v_ca_2_632_line_989 = ca2;
		double v_ca_2_632_line_989_v1 = ca2;
		double p_a_2_620_line_989 = a2;
		double math_arrays_1_expr83_line_989 = v_ca_2_632_line_989_v1 - p_a_2_620_line_989;
		double math_arrays_1_expr82_line_989 = (math_arrays_1_expr83_line_989);
		double math_arrays_1_expr81_line_989 = v_ca_2_632_line_989 - math_arrays_1_expr82_line_989;
		int PROBE_END_LINE_989 = 989;
		final double a2High     = math_arrays_1_expr81_line_989;
        int PROBE_START_LINE_990 = 990;
		double p_a_2_620_line_990 = a2;
		double v_a_2high_633_line_990 = a2High;
		double math_arrays_1_expr84_line_990 = p_a_2_620_line_990 - v_a_2high_633_line_990;
		int PROBE_END_LINE_990 = 990;
		final double a2Low      = math_arrays_1_expr84_line_990;
        int PROBE_START_LINE_991 = 991;
		int f_split_factor_598_line_991 = SPLIT_FACTOR;
		double p_b_2_621_line_991 = b2;
		double math_arrays_1_expr85_line_991 = f_split_factor_598_line_991 * p_b_2_621_line_991;
		int PROBE_END_LINE_991 = 991;
		final double cb2        = math_arrays_1_expr85_line_991;
        int PROBE_START_LINE_992 = 992;
		double v_cb_2_635_line_992 = cb2;
		double v_cb_2_635_line_992_v1 = cb2;
		double p_b_2_621_line_992 = b2;
		double math_arrays_1_expr88_line_992 = v_cb_2_635_line_992_v1 - p_b_2_621_line_992;
		double math_arrays_1_expr87_line_992 = (math_arrays_1_expr88_line_992);
		double math_arrays_1_expr86_line_992 = v_cb_2_635_line_992 - math_arrays_1_expr87_line_992;
		int PROBE_END_LINE_992 = 992;
		final double b2High     = math_arrays_1_expr86_line_992;
        int PROBE_START_LINE_993 = 993;
		double p_b_2_621_line_993 = b2;
		double v_b_2high_636_line_993 = b2High;
		double math_arrays_1_expr89_line_993 = p_b_2_621_line_993 - v_b_2high_636_line_993;
		int PROBE_END_LINE_993 = 993;
		final double b2Low      = math_arrays_1_expr89_line_993;

        int PROBE_START_LINE_996 = 996;
		double p_a_2_620_line_996 = a2;
		double p_b_2_621_line_996 = b2;
		double math_arrays_1_expr90_line_996 = p_a_2_620_line_996 * p_b_2_621_line_996;
		int PROBE_END_LINE_996 = 996;
		// accurate multiplication a2 * b2
        final double prod2High  = math_arrays_1_expr90_line_996;
        int PROBE_START_LINE_997 = 997;
		double v_a_2low_634_line_997 = a2Low;
		double v_b_2low_637_line_997 = b2Low;
		double math_arrays_1_expr92_line_997 = v_a_2low_634_line_997 * v_b_2low_637_line_997;
		double v_prod_2high_638_line_997 = prod2High;
		double v_a_2high_633_line_997 = a2High;
		double v_b_2high_636_line_997 = b2High;
		double math_arrays_1_expr99_line_997 = v_a_2high_633_line_997 * v_b_2high_636_line_997;
		double math_arrays_1_expr98_line_997 = v_prod_2high_638_line_997 - math_arrays_1_expr99_line_997;
		double math_arrays_1_expr97_line_997 = (math_arrays_1_expr98_line_997);
		double v_a_2low_634_line_997_v1 = a2Low;
		double v_b_2high_636_line_997_v1 = b2High;
		double math_arrays_1_expr100_line_997 = v_a_2low_634_line_997_v1 * v_b_2high_636_line_997_v1;
		double math_arrays_1_expr96_line_997 = math_arrays_1_expr97_line_997 - math_arrays_1_expr100_line_997;
		double math_arrays_1_expr95_line_997 = (math_arrays_1_expr96_line_997);
		double v_a_2high_633_line_997_v1 = a2High;
		double v_b_2low_637_line_997_v1 = b2Low;
		double math_arrays_1_expr101_line_997 = v_a_2high_633_line_997_v1 * v_b_2low_637_line_997_v1;
		double math_arrays_1_expr94_line_997 = math_arrays_1_expr95_line_997 - math_arrays_1_expr101_line_997;
		double math_arrays_1_expr93_line_997 = (math_arrays_1_expr94_line_997);
		double math_arrays_1_expr91_line_997 = math_arrays_1_expr92_line_997 - math_arrays_1_expr93_line_997;
		int PROBE_END_LINE_997 = 997;
		final double prod2Low   = math_arrays_1_expr91_line_997;

        int PROBE_START_LINE_1000 = 1000;
		int f_split_factor_598_line_1000 = SPLIT_FACTOR;
		double p_a_3_622_line_1000 = a3;
		double math_arrays_1_expr102_line_1000 = f_split_factor_598_line_1000 * p_a_3_622_line_1000;
		int PROBE_END_LINE_1000 = 1000;
		// split a3 and b3 as two 26 bits numbers
        final double ca3        = math_arrays_1_expr102_line_1000;
        int PROBE_START_LINE_1001 = 1001;
		double v_ca_3_640_line_1001 = ca3;
		double v_ca_3_640_line_1001_v1 = ca3;
		double p_a_3_622_line_1001 = a3;
		double math_arrays_1_expr105_line_1001 = v_ca_3_640_line_1001_v1 - p_a_3_622_line_1001;
		double math_arrays_1_expr104_line_1001 = (math_arrays_1_expr105_line_1001);
		double math_arrays_1_expr103_line_1001 = v_ca_3_640_line_1001 - math_arrays_1_expr104_line_1001;
		int PROBE_END_LINE_1001 = 1001;
		final double a3High     = math_arrays_1_expr103_line_1001;
        int PROBE_START_LINE_1002 = 1002;
		double p_a_3_622_line_1002 = a3;
		double v_a_3high_641_line_1002 = a3High;
		double math_arrays_1_expr106_line_1002 = p_a_3_622_line_1002 - v_a_3high_641_line_1002;
		int PROBE_END_LINE_1002 = 1002;
		final double a3Low      = math_arrays_1_expr106_line_1002;
        int PROBE_START_LINE_1003 = 1003;
		int f_split_factor_598_line_1003 = SPLIT_FACTOR;
		double p_b_3_623_line_1003 = b3;
		double math_arrays_1_expr107_line_1003 = f_split_factor_598_line_1003 * p_b_3_623_line_1003;
		int PROBE_END_LINE_1003 = 1003;
		final double cb3        = math_arrays_1_expr107_line_1003;
        int PROBE_START_LINE_1004 = 1004;
		double v_cb_3_643_line_1004 = cb3;
		double v_cb_3_643_line_1004_v1 = cb3;
		double p_b_3_623_line_1004 = b3;
		double math_arrays_1_expr110_line_1004 = v_cb_3_643_line_1004_v1 - p_b_3_623_line_1004;
		double math_arrays_1_expr109_line_1004 = (math_arrays_1_expr110_line_1004);
		double math_arrays_1_expr108_line_1004 = v_cb_3_643_line_1004 - math_arrays_1_expr109_line_1004;
		int PROBE_END_LINE_1004 = 1004;
		final double b3High     = math_arrays_1_expr108_line_1004;
        int PROBE_START_LINE_1005 = 1005;
		double p_b_3_623_line_1005 = b3;
		double v_b_3high_644_line_1005 = b3High;
		double math_arrays_1_expr111_line_1005 = p_b_3_623_line_1005 - v_b_3high_644_line_1005;
		int PROBE_END_LINE_1005 = 1005;
		final double b3Low      = math_arrays_1_expr111_line_1005;

        int PROBE_START_LINE_1008 = 1008;
		double p_a_3_622_line_1008 = a3;
		double p_b_3_623_line_1008 = b3;
		double math_arrays_1_expr112_line_1008 = p_a_3_622_line_1008 * p_b_3_623_line_1008;
		int PROBE_END_LINE_1008 = 1008;
		// accurate multiplication a3 * b3
        final double prod3High  = math_arrays_1_expr112_line_1008;
        int PROBE_START_LINE_1009 = 1009;
		double v_a_3low_642_line_1009 = a3Low;
		double v_b_3low_645_line_1009 = b3Low;
		double math_arrays_1_expr114_line_1009 = v_a_3low_642_line_1009 * v_b_3low_645_line_1009;
		double v_prod_3high_646_line_1009 = prod3High;
		double v_a_3high_641_line_1009 = a3High;
		double v_b_3high_644_line_1009 = b3High;
		double math_arrays_1_expr121_line_1009 = v_a_3high_641_line_1009 * v_b_3high_644_line_1009;
		double math_arrays_1_expr120_line_1009 = v_prod_3high_646_line_1009 - math_arrays_1_expr121_line_1009;
		double math_arrays_1_expr119_line_1009 = (math_arrays_1_expr120_line_1009);
		double v_a_3low_642_line_1009_v1 = a3Low;
		double v_b_3high_644_line_1009_v1 = b3High;
		double math_arrays_1_expr122_line_1009 = v_a_3low_642_line_1009_v1 * v_b_3high_644_line_1009_v1;
		double math_arrays_1_expr118_line_1009 = math_arrays_1_expr119_line_1009 - math_arrays_1_expr122_line_1009;
		double math_arrays_1_expr117_line_1009 = (math_arrays_1_expr118_line_1009);
		double v_a_3high_641_line_1009_v1 = a3High;
		double v_b_3low_645_line_1009_v1 = b3Low;
		double math_arrays_1_expr123_line_1009 = v_a_3high_641_line_1009_v1 * v_b_3low_645_line_1009_v1;
		double math_arrays_1_expr116_line_1009 = math_arrays_1_expr117_line_1009 - math_arrays_1_expr123_line_1009;
		double math_arrays_1_expr115_line_1009 = (math_arrays_1_expr116_line_1009);
		double math_arrays_1_expr113_line_1009 = math_arrays_1_expr114_line_1009 - math_arrays_1_expr115_line_1009;
		int PROBE_END_LINE_1009 = 1009;
		final double prod3Low   = math_arrays_1_expr113_line_1009;

        int PROBE_START_LINE_1012 = 1012;
		double v_prod_1high_630_line_1012 = prod1High;
		double v_prod_2high_638_line_1012 = prod2High;
		double math_arrays_1_expr124_line_1012 = v_prod_1high_630_line_1012 + v_prod_2high_638_line_1012;
		int PROBE_END_LINE_1012 = 1012;
		// accurate addition a1 * b1 + a2 * b2
        final double s12High    = math_arrays_1_expr124_line_1012;
        int PROBE_START_LINE_1013 = 1013;
		double v_s_12high_648_line_1013 = s12High;
		double v_prod_2high_638_line_1013 = prod2High;
		double math_arrays_1_expr125_line_1013 = v_s_12high_648_line_1013 - v_prod_2high_638_line_1013;
		int PROBE_END_LINE_1013 = 1013;
		final double s12Prime   = math_arrays_1_expr125_line_1013;
        int PROBE_START_LINE_1014 = 1014;
		double v_prod_2high_638_line_1014 = prod2High;
		double v_s_12high_648_line_1014 = s12High;
		double v_s_12prime_649_line_1014 = s12Prime;
		double math_arrays_1_expr130_line_1014 = v_s_12high_648_line_1014 - v_s_12prime_649_line_1014;
		double math_arrays_1_expr129_line_1014 = (math_arrays_1_expr130_line_1014);
		double math_arrays_1_expr128_line_1014 = v_prod_2high_638_line_1014 - math_arrays_1_expr129_line_1014;
		double math_arrays_1_expr127_line_1014 = (math_arrays_1_expr128_line_1014);
		double v_prod_1high_630_line_1014 = prod1High;
		double v_s_12prime_649_line_1014_v1 = s12Prime;
		double math_arrays_1_expr132_line_1014 = v_prod_1high_630_line_1014 - v_s_12prime_649_line_1014_v1;
		double math_arrays_1_expr131_line_1014 = (math_arrays_1_expr132_line_1014);
		double math_arrays_1_expr126_line_1014 = math_arrays_1_expr127_line_1014 + math_arrays_1_expr131_line_1014;
		int PROBE_END_LINE_1014 = 1014;
		final double s12Low     = math_arrays_1_expr126_line_1014;

        int PROBE_START_LINE_1017 = 1017;
		double v_s_12high_648_line_1017 = s12High;
		double v_prod_3high_646_line_1017 = prod3High;
		double math_arrays_1_expr133_line_1017 = v_s_12high_648_line_1017 + v_prod_3high_646_line_1017;
		int PROBE_END_LINE_1017 = 1017;
		// accurate addition a1 * b1 + a2 * b2 + a3 * b3
        final double s123High   = math_arrays_1_expr133_line_1017;
        int PROBE_START_LINE_1018 = 1018;
		double v_s_123high_651_line_1018 = s123High;
		double v_prod_3high_646_line_1018 = prod3High;
		double math_arrays_1_expr134_line_1018 = v_s_123high_651_line_1018 - v_prod_3high_646_line_1018;
		int PROBE_END_LINE_1018 = 1018;
		final double s123Prime  = math_arrays_1_expr134_line_1018;
        int PROBE_START_LINE_1019 = 1019;
		double v_prod_3high_646_line_1019 = prod3High;
		double v_s_123high_651_line_1019 = s123High;
		double v_s_123prime_652_line_1019 = s123Prime;
		double math_arrays_1_expr139_line_1019 = v_s_123high_651_line_1019 - v_s_123prime_652_line_1019;
		double math_arrays_1_expr138_line_1019 = (math_arrays_1_expr139_line_1019);
		double math_arrays_1_expr137_line_1019 = v_prod_3high_646_line_1019 - math_arrays_1_expr138_line_1019;
		double math_arrays_1_expr136_line_1019 = (math_arrays_1_expr137_line_1019);
		double v_s_12high_648_line_1019 = s12High;
		double v_s_123prime_652_line_1019_v1 = s123Prime;
		double math_arrays_1_expr141_line_1019 = v_s_12high_648_line_1019 - v_s_123prime_652_line_1019_v1;
		double math_arrays_1_expr140_line_1019 = (math_arrays_1_expr141_line_1019);
		double math_arrays_1_expr135_line_1019 = math_arrays_1_expr136_line_1019 + math_arrays_1_expr140_line_1019;
		int PROBE_END_LINE_1019 = 1019;
		final double s123Low    = math_arrays_1_expr135_line_1019;

        int PROBE_START_LINE_1023 = 1023;
		double v_s_123high_651_line_1023 = s123High;
		double v_prod_1low_631_line_1023 = prod1Low;
		double v_prod_2low_639_line_1023 = prod2Low;
		double v_prod_3low_647_line_1023 = prod3Low;
		double v_s_12low_650_line_1023 = s12Low;
		double v_s_123low_653_line_1023 = s123Low;
		double math_arrays_1_expr144_line_1023 = v_prod_1low_631_line_1023 + v_prod_2low_639_line_1023
				+ v_prod_3low_647_line_1023 + v_s_12low_650_line_1023 + v_s_123low_653_line_1023;
		double math_arrays_1_expr143_line_1023 = (math_arrays_1_expr144_line_1023);
		double math_arrays_1_expr142_line_1023 = v_s_123high_651_line_1023 + math_arrays_1_expr143_line_1023;
		int PROBE_END_LINE_1023 = 1023;
		// final rounding, s123 may have suffered many cancellations, we try
        // to recover some bits from the extra words we have saved up to now
        double result = math_arrays_1_expr142_line_1023;

        int PROBE_START_LINE_1025 = 1029;
		double v_result_654_line_1025 = result;
		boolean math_arrays_1_expr145_line_1025 = Double.isNaN(v_result_654_line_1025);
		int PROBE_END_LINE_1025 = 1029;
		if (math_arrays_1_expr145_line_1025) {
            // either we have split infinite numbers or some coefficients were NaNs,
            // just rely on the naive implementation and let IEEE754 handle this
            result = a1 * b1 + a2 * b2 + a3 * b3;
        }

        int PROBE_START_LINE_1031 = 1031;
		double v_result_654_line_1031 = result;
		int PROBE_END_LINE_1031 = 1031;
		return v_result_654_line_1031;
    }

    /**
     * Compute a linear combination accurately.
     * <p>
     * This method computes a<sub>1</sub>&times;b<sub>1</sub> +
     * a<sub>2</sub>&times;b<sub>2</sub> + a<sub>3</sub>&times;b<sub>3</sub> +
     * a<sub>4</sub>&times;b<sub>4</sub>
     * to high accuracy. It does so by using specific multiplication and
     * addition algorithms to preserve accuracy and reduce cancellation effects.
     * It is based on the 2005 paper <a
     * href="http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.2.1547">
     * Accurate Sum and Dot Product</a> by Takeshi Ogita,
     * Siegfried M. Rump, and Shin'ichi Oishi published in SIAM J. Sci. Comput.
     * </p>
     * @param a1 first factor of the first term
     * @param b1 second factor of the first term
     * @param a2 first factor of the second term
     * @param b2 second factor of the second term
     * @param a3 first factor of the third term
     * @param b3 second factor of the third term
     * @param a4 first factor of the third term
     * @param b4 second factor of the third term
     * @return a<sub>1</sub>&times;b<sub>1</sub> +
     * a<sub>2</sub>&times;b<sub>2</sub> + a<sub>3</sub>&times;b<sub>3</sub> +
     * a<sub>4</sub>&times;b<sub>4</sub>
     * @see #linearCombination(double, double, double, double)
     * @see #linearCombination(double, double, double, double, double, double)
     */
    public static double linearCombination(final double a1, final double b1,
                                           final double a2, final double b2,
                                           final double a3, final double b3,
                                           final double a4, final double b4) {

        // the code below is split in many additions/subtractions that may
        // appear redundant. However, they should NOT be simplified, as they
        // do use IEEE754 floating point arithmetic rounding properties.
        // as an example, the expression "ca1 - (ca1 - a1)" is NOT the same as "a1"
        // The variables naming conventions are that xyzHigh contains the most significant
        // bits of xyz and xyzLow contains its least significant bits. So theoretically
        // xyz is the sum xyzHigh + xyzLow, but in many cases below, this sum cannot
        // be represented in only one double precision number so we preserve two numbers
        // to hold it as long as we can, combining the high and low order bits together
        // only at the end, after cancellation may have occurred on high order bits

        // split a1 and b1 as two 26 bits numbers
        final double ca1        = SPLIT_FACTOR * a1;
        final double a1High     = ca1 - (ca1 - a1);
        final double a1Low      = a1 - a1High;
        final double cb1        = SPLIT_FACTOR * b1;
        final double b1High     = cb1 - (cb1 - b1);
        final double b1Low      = b1 - b1High;

        // accurate multiplication a1 * b1
        final double prod1High  = a1 * b1;
        final double prod1Low   = a1Low * b1Low - (((prod1High - a1High * b1High) - a1Low * b1High) - a1High * b1Low);

        // split a2 and b2 as two 26 bits numbers
        final double ca2        = SPLIT_FACTOR * a2;
        final double a2High     = ca2 - (ca2 - a2);
        final double a2Low      = a2 - a2High;
        final double cb2        = SPLIT_FACTOR * b2;
        final double b2High     = cb2 - (cb2 - b2);
        final double b2Low      = b2 - b2High;

        // accurate multiplication a2 * b2
        final double prod2High  = a2 * b2;
        final double prod2Low   = a2Low * b2Low - (((prod2High - a2High * b2High) - a2Low * b2High) - a2High * b2Low);

        // split a3 and b3 as two 26 bits numbers
        final double ca3        = SPLIT_FACTOR * a3;
        final double a3High     = ca3 - (ca3 - a3);
        final double a3Low      = a3 - a3High;
        final double cb3        = SPLIT_FACTOR * b3;
        final double b3High     = cb3 - (cb3 - b3);
        final double b3Low      = b3 - b3High;

        // accurate multiplication a3 * b3
        final double prod3High  = a3 * b3;
        final double prod3Low   = a3Low * b3Low - (((prod3High - a3High * b3High) - a3Low * b3High) - a3High * b3Low);

        // split a4 and b4 as two 26 bits numbers
        final double ca4        = SPLIT_FACTOR * a4;
        final double a4High     = ca4 - (ca4 - a4);
        final double a4Low      = a4 - a4High;
        final double cb4        = SPLIT_FACTOR * b4;
        final double b4High     = cb4 - (cb4 - b4);
        final double b4Low      = b4 - b4High;

        // accurate multiplication a4 * b4
        final double prod4High  = a4 * b4;
        final double prod4Low   = a4Low * b4Low - (((prod4High - a4High * b4High) - a4Low * b4High) - a4High * b4Low);

        // accurate addition a1 * b1 + a2 * b2
        final double s12High    = prod1High + prod2High;
        final double s12Prime   = s12High - prod2High;
        final double s12Low     = (prod2High - (s12High - s12Prime)) + (prod1High - s12Prime);

        // accurate addition a1 * b1 + a2 * b2 + a3 * b3
        final double s123High   = s12High + prod3High;
        final double s123Prime  = s123High - prod3High;
        final double s123Low    = (prod3High - (s123High - s123Prime)) + (s12High - s123Prime);

        // accurate addition a1 * b1 + a2 * b2 + a3 * b3 + a4 * b4
        final double s1234High  = s123High + prod4High;
        final double s1234Prime = s1234High - prod4High;
        final double s1234Low   = (prod4High - (s1234High - s1234Prime)) + (s123High - s1234Prime);

        // final rounding, s1234 may have suffered many cancellations, we try
        // to recover some bits from the extra words we have saved up to now
        double result = s1234High + (prod1Low + prod2Low + prod3Low + prod4Low + s12Low + s123Low + s1234Low);

        if (Double.isNaN(result)) {
            // either we have split infinite numbers or some coefficients were NaNs,
            // just rely on the naive implementation and let IEEE754 handle this
            result = a1 * b1 + a2 * b2 + a3 * b3 + a4 * b4;
        }

        return result;
    }

    /**
     * Returns true iff both arguments are null or have same dimensions and all
     * their elements are equal as defined by
     * {@link Precision#equals(float,float)}.
     *
     * @param x first array
     * @param y second array
     * @return true if the values are both null or have same dimension
     * and equal elements.
     */
    public static boolean equals(float[] x, float[] y) {
        if ((x == null) || (y == null)) {
            return !((x == null) ^ (y == null));
        }
        if (x.length != y.length) {
            return false;
        }
        for (int i = 0; i < x.length; ++i) {
            if (!Precision.equals(x[i], y[i])) {
                return false;
            }
        }
        return true;
    }

    /**
     * Returns true iff both arguments are null or have same dimensions and all
     * their elements are equal as defined by
     * {@link Precision#equalsIncludingNaN(double,double) this method}.
     *
     * @param x first array
     * @param y second array
     * @return true if the values are both null or have same dimension and
     * equal elements
     * @since 2.2
     */
    public static boolean equalsIncludingNaN(float[] x, float[] y) {
        if ((x == null) || (y == null)) {
            return !((x == null) ^ (y == null));
        }
        if (x.length != y.length) {
            return false;
        }
        for (int i = 0; i < x.length; ++i) {
            if (!Precision.equalsIncludingNaN(x[i], y[i])) {
                return false;
            }
        }
        return true;
    }

    /**
     * Returns {@code true} iff both arguments are {@code null} or have same
     * dimensions and all their elements are equal as defined by
     * {@link Precision#equals(double,double)}.
     *
     * @param x First array.
     * @param y Second array.
     * @return {@code true} if the values are both {@code null} or have same
     * dimension and equal elements.
     */
    public static boolean equals(double[] x, double[] y) {
        if ((x == null) || (y == null)) {
            return !((x == null) ^ (y == null));
        }
        if (x.length != y.length) {
            return false;
        }
        for (int i = 0; i < x.length; ++i) {
            if (!Precision.equals(x[i], y[i])) {
                return false;
            }
        }
        return true;
    }

    /**
     * Returns {@code true} iff both arguments are {@code null} or have same
     * dimensions and all their elements are equal as defined by
     * {@link Precision#equalsIncludingNaN(double,double) this method}.
     *
     * @param x First array.
     * @param y Second array.
     * @return {@code true} if the values are both {@code null} or have same
     * dimension and equal elements.
     * @since 2.2
     */
    public static boolean equalsIncludingNaN(double[] x, double[] y) {
        if ((x == null) || (y == null)) {
            return !((x == null) ^ (y == null));
        }
        if (x.length != y.length) {
            return false;
        }
        for (int i = 0; i < x.length; ++i) {
            if (!Precision.equalsIncludingNaN(x[i], y[i])) {
                return false;
            }
        }
        return true;
    }

     /**
      * Normalizes an array to make it sum to a specified value.
      * Returns the result of the transformation <pre>
      *    x |-> x * normalizedSum / sum
      * </pre>
      * applied to each non-NaN element x of the input array, where sum is the
      * sum of the non-NaN entries in the input array.</p>
      *
      * <p>Throws IllegalArgumentException if {@code normalizedSum} is infinite
      * or NaN and ArithmeticException if the input array contains any infinite elements
      * or sums to 0.</p>
      *
      * <p>Ignores (i.e., copies unchanged to the output array) NaNs in the input array.</p>
      *
      * @param values Input array to be normalized
      * @param normalizedSum Target sum for the normalized array
      * @return the normalized array.
      * @throws MathArithmeticException if the input array contains infinite
      * elements or sums to zero.
      * @throws MathIllegalArgumentException if the target sum is infinite or {@code NaN}.
      * @since 2.1
      */
     public static double[] normalizeArray(double[] values, double normalizedSum)
         throws MathIllegalArgumentException, MathArithmeticException {
         if (Double.isInfinite(normalizedSum)) {
             throw new MathIllegalArgumentException(LocalizedFormats.NORMALIZE_INFINITE);
         }
         if (Double.isNaN(normalizedSum)) {
             throw new MathIllegalArgumentException(LocalizedFormats.NORMALIZE_NAN);
         }
         double sum = 0d;
         final int len = values.length;
         double[] out = new double[len];
         for (int i = 0; i < len; i++) {
             if (Double.isInfinite(values[i])) {
                 throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_ARRAY_ELEMENT, values[i], i);
             }
             if (!Double.isNaN(values[i])) {
                 sum += values[i];
             }
         }
         if (sum == 0) {
             throw new MathArithmeticException(LocalizedFormats.ARRAY_SUMS_TO_ZERO);
         }
         for (int i = 0; i < len; i++) {
             if (Double.isNaN(values[i])) {
                 out[i] = Double.NaN;
             } else {
                 out[i] = values[i] * normalizedSum / sum;
             }
         }
         return out;
     }

     /** Build an array of elements.
      * <p>
      * Arrays are filled with field.getZero()
      * </p>
      * @param <T> the type of the field elements
      * @param field field to which array elements belong
      * @param length of the array
      * @return a new array
      * @since 3.2
      */
     public static <T> T[] buildArray(final Field<T> field, final int length) {
         @SuppressWarnings("unchecked") // OK because field must be correct class
         T[] array = (T[]) Array.newInstance(field.getRuntimeClass(), length);
         Arrays.fill(array, field.getZero());
         return array;
     }

     /** Build a double dimension  array of elements.
      * <p>
      * Arrays are filled with field.getZero()
      * </p>
      * @param <T> the type of the field elements
      * @param field field to which array elements belong
      * @param rows number of rows in the array
      * @param columns number of columns (may be negative to build partial
      * arrays in the same way <code>new Field[rows][]</code> works)
      * @return a new array
      * @since 3.2
      */
     @SuppressWarnings("unchecked")
    public static <T> T[][] buildArray(final Field<T> field, final int rows, final int columns) {
         final T[][] array;
         if (columns < 0) {
             T[] dummyRow = buildArray(field, 0);
             array = (T[][]) Array.newInstance(dummyRow.getClass(), rows);
         } else {
             array = (T[][]) Array.newInstance(field.getRuntimeClass(),
                                               new int[] {
                                                   rows, columns
                                               });
             for (int i = 0; i < rows; ++i) {
                 Arrays.fill(array[i], field.getZero());
             }
         }
         return array;
     }

     /**
      * Calculates the convolution between two sequences.
      * <p>
      * The solution is obtained via straightforward computation of the convolution sum (and not via FFT; for longer sequences,
      * the performance of this method might be inferior to an FFT-based implementation).
      *
      * @param x the first sequence (double array of length {@code N}); the sequence is assumed to be zero elsewhere
      *   (i.e. {x[i]}=0 for i<0 and i>={@code N}). Typically, this sequence will represent an input signal to a system.
      * @param h the second sequence (double array of length {@code M}); the sequence is assumed to be zero elsewhere
      *   (i.e. {h[i]}=0 for i<0 and i>={@code M}). Typically, this sequence will represent the impulse response of the system.
      * @return the convolution of {@code x} and {@code h} (double array of length {@code N} + {@code M} -1)
      * @throws NullArgumentException if either {@code x} or {@code h} is null
      * @throws NoDataException if either {@code x} or {@code h} is empty
      *
      * @see <a href="http://en.wikipedia.org/wiki/Convolution">Convolution (Wikipedia)</a>
      * @since 4.0
      */
     public static double[] convolve(double[] x, double[] h) throws NullArgumentException, NoDataException {
         MathUtils.checkNotNull(x);
         MathUtils.checkNotNull(h);

         final int N = x.length;
         final int M = h.length;

         if (N == 0 || M == 0) {
             throw new NoDataException();
         }

         // initialize the output array
         final int totalLength = N + M - 1;
         final double[] y = new double[totalLength];

         // straightforward implementation of the convolution sum
         for (int n = 0; n < totalLength; n++) {
             double yn = 0;
             for (int k = 0; k < M; k++) {
                 final int j = n - k;
                 if ((j > -1) && (j < N) ) {
                     yn = yn + x[j] * h[k];
                 }
             }
             y[n] = yn;
         }

         return y;
     }

}
