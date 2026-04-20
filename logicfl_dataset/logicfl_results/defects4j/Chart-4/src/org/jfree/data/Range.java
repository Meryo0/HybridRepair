/* ===========================================================
 * JFreeChart : a free chart library for the Java(tm) platform
 * ===========================================================
 *
 * (C) Copyright 2000-2008, by Object Refinery Limited and Contributors.
 *
 * Project Info:  http://www.jfree.org/jfreechart/index.html
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 *
 * [Java is a trademark or registered trademark of Sun Microsystems, Inc.
 * in the United States and other countries.]
 *
 * ----------
 * Range.java
 * ----------
 * (C) Copyright 2002-2008, by Object Refinery Limited and Contributors.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Chuanhao Chiu;
 *                   Bill Kelemen;
 *                   Nicolas Brodu;
 *                   Sergei Ivanov;
 *
 * Changes (from 23-Jun-2001)
 * --------------------------
 * 22-Apr-2002 : Version 1, loosely based by code by Bill Kelemen (DG);
 * 30-Apr-2002 : Added getLength() and getCentralValue() methods.  Changed
 *               argument check in constructor (DG);
 * 13-Jun-2002 : Added contains(double) method (DG);
 * 22-Aug-2002 : Added fix to combine method where both ranges are null, thanks
 *               to Chuanhao Chiu for reporting and fixing this (DG);
 * 07-Oct-2002 : Fixed errors reported by Checkstyle (DG);
 * 26-Mar-2003 : Implemented Serializable (DG);
 * 14-Aug-2003 : Added equals() method (DG);
 * 27-Aug-2003 : Added toString() method (BK);
 * 11-Sep-2003 : Added Clone Support (NB);
 * 23-Sep-2003 : Fixed Checkstyle issues (DG);
 * 25-Sep-2003 : Oops, Range immutable, clone not necessary (NB);
 * 05-May-2004 : Added constrain() and intersects() methods (DG);
 * 18-May-2004 : Added expand() method (DG);
 * ------------- JFreeChart 1.0.x ---------------------------------------------
 * 11-Jan-2006 : Added new method expandToInclude(Range, double) (DG);
 * 18-Dec-2007 : New methods intersects(Range) and scale(...) thanks to Sergei
 *               Ivanov (DG);
 *
 */

package org.jfree.data;

import java.io.Serializable;

/**
 * Represents an immutable range of values.
 */
public strictfp class Range implements Serializable {

    /** For serialization. */
    private static final long serialVersionUID = -906333695431863380L;

    /** The lower bound of the range. */
    private double lower;

    /** The upper bound of the range. */
    private double upper;

    /**
     * Creates a new range.
     *
     * @param lower  the lower bound (must be <= upper bound).
     * @param upper  the upper bound (must be >= lower bound).
     */
    public Range(double lower, double upper) {
        int PROBE_START_LINE_87 = 91;
		double p_lower_3389_line_87 = lower;
		double p_upper_3390_line_87 = upper;
		boolean range_1_expr1_line_87 = p_lower_3389_line_87 > p_upper_3390_line_87;
		int PROBE_END_LINE_87 = 91;
		if (range_1_expr1_line_87) {
            String msg = "Range(double, double): require lower (" + lower
                + ") <= upper (" + upper + ").";
            throw new IllegalArgumentException(msg);
        }
        int PROBE_START_LINE_92 = 92;
		double p_lower_3389_line_92 = lower;
		int PROBE_END_LINE_92 = 92;
		this.lower = p_lower_3389_line_92;
        int PROBE_START_LINE_93 = 93;
		double p_upper_3390_line_93 = upper;
		int PROBE_END_LINE_93 = 93;
		this.upper = p_upper_3390_line_93;
    }

    /**
     * Returns the lower bound for the range.
     *
     * @return The lower bound.
     */
    public double getLowerBound() {
        int PROBE_START_LINE_102 = 102;
		double f_lower_3391_line_102 = this.lower;
		int PROBE_END_LINE_102 = 102;
		return f_lower_3391_line_102;
    }

    /**
     * Returns the upper bound for the range.
     *
     * @return The upper bound.
     */
    public double getUpperBound() {
        int PROBE_START_LINE_111 = 111;
		double f_upper_3392_line_111 = this.upper;
		int PROBE_END_LINE_111 = 111;
		return f_upper_3392_line_111;
    }

    /**
     * Returns the length of the range.
     *
     * @return The length.
     */
    public double getLength() {
        return this.upper - this.lower;
    }

    /**
     * Returns the central value for the range.
     *
     * @return The central value.
     */
    public double getCentralValue() {
        return this.lower / 2.0 + this.upper / 2.0;
    }

    /**
     * Returns <code>true</code> if the range contains the specified value and
     * <code>false</code> otherwise.
     *
     * @param value  the value to lookup.
     *
     * @return <code>true</code> if the range contains the specified value.
     */
    public boolean contains(double value) {
        return (value >= this.lower && value <= this.upper);
    }

    /**
     * Returns <code>true</code> if the range intersects with the specified
     * range, and <code>false</code> otherwise.
     *
     * @param b0  the lower bound (should be <= b1).
     * @param b1  the upper bound (should be >= b0).
     *
     * @return A boolean.
     */
    public boolean intersects(double b0, double b1) {
        if (b0 <= this.lower) {
            return (b1 > this.lower);
        }
        else {
            return (b0 < this.upper && b1 >= b0);
        }
    }

    /**
     * Returns <code>true</code> if the range intersects with the specified
     * range, and <code>false</code> otherwise.
     *
     * @param range  another range (<code>null</code> not permitted).
     *
     * @return A boolean.
     *
     * @since 1.0.9
     */
    public boolean intersects(Range range) {
        return intersects(range.getLowerBound(), range.getUpperBound());
    }

    /**
     * Returns the value within the range that is closest to the specified
     * value.
     *
     * @param value  the value.
     *
     * @return The constrained value.
     */
    public double constrain(double value) {
        double result = value;
        if (!contains(value)) {
            if (value > this.upper) {
                result = this.upper;
            }
            else if (value < this.lower) {
                result = this.lower;
            }
        }
        return result;
    }

    /**
     * Creates a new range by combining two existing ranges.
     * <P>
     * Note that:
     * <ul>
     *   <li>either range can be <code>null</code>, in which case the other
     *       range is returned;</li>
     *   <li>if both ranges are <code>null</code> the return value is
     *       <code>null</code>.</li>
     * </ul>
     *
     * @param range1  the first range (<code>null</code> permitted).
     * @param range2  the second range (<code>null</code> permitted).
     *
     * @return A new range (possibly <code>null</code>).
     */
    public static Range combine(Range range1, Range range2) {
        int PROBE_START_LINE_214 = 228;
		org.jfree.data.Range p_range_1_3398_line_214 = range1;
		boolean range_1_expr12_line_214 = p_range_1_3398_line_214 == null;
		int PROBE_END_LINE_214 = 228;
		if (range_1_expr12_line_214) {
            int PROBE_START_LINE_215 = 215;
			org.jfree.data.Range p_range_2_3399_line_215 = range2;
			int PROBE_END_LINE_215 = 215;
			return p_range_2_3399_line_215;
        }
        else {
            if (range2 == null) {
                return range1;
            }
            else {
                double l = Math.min(range1.getLowerBound(),
                        range2.getLowerBound());
                double u = Math.max(range1.getUpperBound(),
                        range2.getUpperBound());
                return new Range(l, u);
            }
        }
    }

    /**
     * Returns a range that includes all the values in the specified
     * <code>range</code> AND the specified <code>value</code>.
     *
     * @param range  the range (<code>null</code> permitted).
     * @param value  the value that must be included.
     *
     * @return A range.
     *
     * @since 1.0.1
     */
    public static Range expandToInclude(Range range, double value) {
        if (range == null) {
            return new Range(value, value);
        }
        if (value < range.getLowerBound()) {
            return new Range(value, range.getUpperBound());
        }
        else if (value > range.getUpperBound()) {
            return new Range(range.getLowerBound(), value);
        }
        else {
            return range;
        }
    }

    /**
     * Creates a new range by adding margins to an existing range.
     *
     * @param range  the range (<code>null</code> not permitted).
     * @param lowerMargin  the lower margin (expressed as a percentage of the
     *                     range length).
     * @param upperMargin  the upper margin (expressed as a percentage of the
     *                     range length).
     *
     * @return The expanded range.
     */
    public static Range expand(Range range,
                               double lowerMargin, double upperMargin) {
        if (range == null) {
            throw new IllegalArgumentException("Null 'range' argument.");
        }
        double length = range.getLength();
        double lower = range.getLowerBound() - length * lowerMargin;
        double upper = range.getUpperBound() + length * upperMargin;
        if (lower > upper) {
            lower = lower / 2.0 + upper / 2.0;
            upper = lower;
        }
        return new Range(lower, upper);
    }

    /**
     * Shifts the range by the specified amount.
     *
     * @param base  the base range (<code>null</code> not permitted).
     * @param delta  the shift amount.
     *
     * @return A new range.
     */
    public static Range shift(Range base, double delta) {
        return shift(base, delta, false);
    }

    /**
     * Shifts the range by the specified amount.
     *
     * @param base  the base range (<code>null</code> not permitted).
     * @param delta  the shift amount.
     * @param allowZeroCrossing  a flag that determines whether or not the
     *                           bounds of the range are allowed to cross
     *                           zero after adjustment.
     *
     * @return A new range.
     */
    public static Range shift(Range base, double delta,
                              boolean allowZeroCrossing) {
        if (base == null) {
            throw new IllegalArgumentException("Null 'base' argument.");
        }
        if (allowZeroCrossing) {
            return new Range(base.getLowerBound() + delta,
                    base.getUpperBound() + delta);
        }
        else {
            return new Range(shiftWithNoZeroCrossing(base.getLowerBound(),
                    delta), shiftWithNoZeroCrossing(base.getUpperBound(),
                    delta));
        }
    }

    /**
     * Returns the given <code>value</code> adjusted by <code>delta</code> but
     * with a check to prevent the result from crossing <code>0.0</code>.
     *
     * @param value  the value.
     * @param delta  the adjustment.
     *
     * @return The adjusted value.
     */
    private static double shiftWithNoZeroCrossing(double value, double delta) {
        if (value > 0.0) {
            return Math.max(value + delta, 0.0);
        }
        else if (value < 0.0) {
            return Math.min(value + delta, 0.0);
        }
        else {
            return value + delta;
        }
    }

    /**
     * Scales the range by the specified factor.
     *
     * @param base the base range (<code>null</code> not permitted).
     * @param factor the scaling factor (must be non-negative).
     *
     * @return A new range.
     *
     * @since 1.0.9
     */
    public static Range scale(Range base, double factor) {
        if (base == null) {
            throw new IllegalArgumentException("Null 'base' argument.");
        }
        if (factor < 0) {
            throw new IllegalArgumentException("Negative 'factor' argument.");
        }
        return new Range(base.getLowerBound() * factor,
                base.getUpperBound() * factor);
    }

    /**
     * Tests this object for equality with an arbitrary object.
     *
     * @param obj  the object to test against (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        if (!(this.lower == range.lower)) {
            return false;
        }
        if (!(this.upper == range.upper)) {
            return false;
        }
        return true;
    }

    /**
     * Returns a hash code.
     *
     * @return A hash code.
     */
    public int hashCode() {
        int result;
        long temp;
        temp = Double.doubleToLongBits(this.lower);
        result = (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(this.upper);
        result = 29 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }

    /**
     * Returns a string representation of this Range.
     *
     * @return A String "Range[lower,upper]" where lower=lower range and
     *         upper=upper range.
     */
    public String toString() {
        return ("Range[" + this.lower + "," + this.upper + "]");
    }

}
