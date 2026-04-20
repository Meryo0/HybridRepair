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
 * ---------------
 * XYInterval.java
 * ---------------
 * (C) Copyright 2006-2008, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 20-Oct-2006 : Version 1 (DG);
 *
 */

package org.jfree.data.xy;

import java.io.Serializable;

/**
 * An  xy-interval.  This class is used internally by the
 * {@link XYIntervalDataItem} class.
 *
 * @since 1.0.3
 */
public class XYInterval implements Serializable {

    /** The lower bound of the x-interval. */
    private double xLow;

    /** The upper bound of the y-interval. */
    private double xHigh;

    /** The y-value. */
    private double y;

    /** The lower bound of the y-interval. */
    private double yLow;

    /** The upper bound of the y-interval. */
    private double yHigh;

    /**
     * Creates a new instance of <code>XYInterval</code>.
     *
     * @param xLow  the lower bound of the x-interval.
     * @param xHigh  the upper bound of the y-interval.
     * @param y  the y-value.
     * @param yLow  the lower bound of the y-interval.
     * @param yHigh  the upper bound of the y-interval.
     */
    public XYInterval(double xLow, double xHigh, double y, double yLow,
            double yHigh) {
        int PROBE_START_LINE_79 = 79;
				double p_x_low_225_line_79 = xLow;
				int PROBE_END_LINE_79 = 79;
		this.xLow = p_x_low_225_line_79;
        int PROBE_START_LINE_80 = 80;
		double p_x_high_226_line_80 = xHigh;
		int PROBE_END_LINE_80 = 80;
		this.xHigh = p_x_high_226_line_80;
        int PROBE_START_LINE_81 = 81;
		double p_y_227_line_81 = y;
		int PROBE_END_LINE_81 = 81;
		this.y = p_y_227_line_81;
        int PROBE_START_LINE_82 = 82;
		double p_y_low_228_line_82 = yLow;
		int PROBE_END_LINE_82 = 82;
		this.yLow = p_y_low_228_line_82;
        int PROBE_START_LINE_83 = 83;
		double p_y_high_229_line_83 = yHigh;
		int PROBE_END_LINE_83 = 83;
		this.yHigh = p_y_high_229_line_83;
    }

    /**
     * Returns the lower bound of the x-interval.
     *
     * @return The lower bound of the x-interval.
     */
    public double getXLow() {
        int PROBE_START_LINE_92 = 92;
		double f_x_low_230_line_92 = this.xLow;
		int PROBE_END_LINE_92 = 92;
		return f_x_low_230_line_92;
    }

    /**
     * Returns the upper bound of the x-interval.
     *
     * @return The upper bound of the x-interval.
     */
    public double getXHigh() {
        int PROBE_START_LINE_101 = 101;
		double f_x_high_231_line_101 = this.xHigh;
		int PROBE_END_LINE_101 = 101;
		return f_x_high_231_line_101;
    }

    /**
     * Returns the y-value.
     *
     * @return The y-value.
     */
    public double getY() {
        return this.y;
    }

    /**
     * Returns the lower bound of the y-interval.
     *
     * @return The lower bound of the y-interval.
     */
    public double getYLow() {
        int PROBE_START_LINE_119 = 119;
		double f_y_low_233_line_119 = this.yLow;
		int PROBE_END_LINE_119 = 119;
		return f_y_low_233_line_119;
    }

    /**
     * Returns the upper bound of the y-interval.
     *
     * @return The upper bound of the y-interval.
     */
    public double getYHigh() {
        int PROBE_START_LINE_128 = 128;
		double f_y_high_234_line_128 = this.yHigh;
		int PROBE_END_LINE_128 = 128;
		return f_y_high_234_line_128;
    }

    /**
     * Tests this instance for equality with an arbitrary object.
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof XYInterval)) {
            return false;
        }
        XYInterval that = (XYInterval) obj;
        if (this.xLow != that.xLow) {
            return false;
        }
        if (this.xHigh != that.xHigh) {
            return false;
        }
        if (this.y != that.y) {
            return false;
        }
        if (this.yLow != that.yLow) {
            return false;
        }
        if (this.yHigh != that.yHigh) {
            return false;
        }
        return true;
    }

}
