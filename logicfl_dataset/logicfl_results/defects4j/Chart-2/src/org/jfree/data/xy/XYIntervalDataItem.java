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
 * -----------------------
 * XYIntervalDataItem.java
 * -----------------------
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

import org.jfree.data.ComparableObjectItem;

/**
 * An item representing data in the form (x, x-low, x-high, y, y-low, y-high).
 *
 * @since 1.0.3
 */
public class XYIntervalDataItem extends ComparableObjectItem {

    /**
     * Creates a new instance of <code>XYIntervalItem</code>.
     *
     * @param x  the x-value.
     * @param xLow  the lower bound of the x-interval.
     * @param xHigh  the upper bound of the x-interval.
     * @param y  the y-value.
     * @param yLow  the lower bound of the y-interval.
     * @param yHigh  the upper bound of the y-interval.
     */
    public XYIntervalDataItem(double x, double xLow, double xHigh, double y,
            double yLow, double yHigh) {
        super(new Double(x), new XYInterval(xLow, xHigh, y, yLow, yHigh));
    }

    /**
     * Returns the x-value.
     *
     * @return The x-value (never <code>null</code>).
     */
    public Double getX() {
        return (Double) getComparable();
    }

    /**
     * Returns the y-value.
     *
     * @return The y-value.
     */
    public double getYValue() {
        XYInterval interval = (XYInterval) getObject();
        if (interval != null) {
            return interval.getY();
        }
        else {
            return Double.NaN;
        }
    }

    /**
     * Returns the lower bound of the x-interval.
     *
     * @return The lower bound of the x-interval.
     */
    public double getXLowValue() {
        int PROBE_START_LINE_97 = 97;
		Object xyinterval_data_item_1_expr5_line_97 = getObject();
		int PROBE_END_LINE_97 = 97;
		XYInterval interval = (XYInterval) xyinterval_data_item_1_expr5_line_97;
        int PROBE_START_LINE_98 = 103;
		org.jfree.data.xy.XYInterval v_interval_242_line_98 = interval;
		boolean xyinterval_data_item_1_expr6_line_98 = v_interval_242_line_98 != null;
		int PROBE_END_LINE_98 = 103;
		if (xyinterval_data_item_1_expr6_line_98) {
            int PROBE_START_LINE_99 = 99;
			org.jfree.data.xy.XYInterval v_interval_242_line_99 = interval;
			double xyinterval_data_item_1_expr7_line_99 = v_interval_242_line_99.getXLow();
			int PROBE_END_LINE_99 = 99;
			return xyinterval_data_item_1_expr7_line_99;
        }
        else {
            return Double.NaN;
        }
    }

    /**
     * Returns the upper bound of the x-interval.
     *
     * @return The upper bound of the x-interval.
     */
    public double getXHighValue() {
        int PROBE_START_LINE_112 = 112;
		Object xyinterval_data_item_1_expr9_line_112 = getObject();
		int PROBE_END_LINE_112 = 112;
		XYInterval interval = (XYInterval) xyinterval_data_item_1_expr9_line_112;
        int PROBE_START_LINE_113 = 118;
		org.jfree.data.xy.XYInterval v_interval_243_line_113 = interval;
		boolean xyinterval_data_item_1_expr10_line_113 = v_interval_243_line_113 != null;
		int PROBE_END_LINE_113 = 118;
		if (xyinterval_data_item_1_expr10_line_113) {
            int PROBE_START_LINE_114 = 114;
			org.jfree.data.xy.XYInterval v_interval_243_line_114 = interval;
			double xyinterval_data_item_1_expr11_line_114 = v_interval_243_line_114.getXHigh();
			int PROBE_END_LINE_114 = 114;
			return xyinterval_data_item_1_expr11_line_114;
        }
        else {
            return Double.NaN;
        }
    }

    /**
     * Returns the lower bound of the y-interval.
     *
     * @return The lower bound of the y-interval.
     */
    public double getYLowValue() {
        int PROBE_START_LINE_127 = 127;
		Object xyinterval_data_item_1_expr13_line_127 = getObject();
		int PROBE_END_LINE_127 = 127;
		XYInterval interval = (XYInterval) xyinterval_data_item_1_expr13_line_127;
        int PROBE_START_LINE_128 = 133;
		org.jfree.data.xy.XYInterval v_interval_244_line_128 = interval;
		boolean xyinterval_data_item_1_expr14_line_128 = v_interval_244_line_128 != null;
		int PROBE_END_LINE_128 = 133;
		if (xyinterval_data_item_1_expr14_line_128) {
            int PROBE_START_LINE_129 = 129;
			org.jfree.data.xy.XYInterval v_interval_244_line_129 = interval;
			double xyinterval_data_item_1_expr15_line_129 = v_interval_244_line_129.getYLow();
			int PROBE_END_LINE_129 = 129;
			return xyinterval_data_item_1_expr15_line_129;
        }
        else {
            return Double.NaN;
        }
    }

    /**
     * Returns the upper bound of the y-interval.
     *
     * @return The upper bound of the y-interval.
     */
    public double getYHighValue() {
        int PROBE_START_LINE_142 = 142;
		Object xyinterval_data_item_1_expr17_line_142 = getObject();
		int PROBE_END_LINE_142 = 142;
		XYInterval interval = (XYInterval) xyinterval_data_item_1_expr17_line_142;
        int PROBE_START_LINE_143 = 148;
		org.jfree.data.xy.XYInterval v_interval_245_line_143 = interval;
		boolean xyinterval_data_item_1_expr18_line_143 = v_interval_245_line_143 != null;
		int PROBE_END_LINE_143 = 148;
		if (xyinterval_data_item_1_expr18_line_143) {
            int PROBE_START_LINE_144 = 144;
			org.jfree.data.xy.XYInterval v_interval_245_line_144 = interval;
			double xyinterval_data_item_1_expr19_line_144 = v_interval_245_line_144.getYHigh();
			int PROBE_END_LINE_144 = 144;
			return xyinterval_data_item_1_expr19_line_144;
        }
        else {
            return Double.NaN;
        }
    }

}
