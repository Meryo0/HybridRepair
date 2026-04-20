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
 * ---------------------
 * XYIntervalSeries.java
 * ---------------------
 * (C) Copyright 2006-2008, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 20-Oct-2006 : Version 1 (DG);
 * 13-Feb-2007 : Added several new accessor methods (DG);
 *
 */

package org.jfree.data.xy;

import org.jfree.data.ComparableObjectItem;
import org.jfree.data.ComparableObjectSeries;

/**
 * A list of (x, x-low, x-high, y, y-low, y-high) data items.
 *
 * @since 1.0.3
 *
 * @see XYIntervalSeriesCollection
 */
public class XYIntervalSeries extends ComparableObjectSeries {

    /**
     * Creates a new empty series.  By default, items added to the series will
     * be sorted into ascending order by x-value, and duplicate x-values will
     * be allowed (these defaults can be modified with another constructor).
     *
     * @param key  the series key (<code>null</code> not permitted).
     */
    public XYIntervalSeries(Comparable key) {
        this(key, true, true);
    }

    /**
     * Constructs a new xy-series that contains no data.  You can specify
     * whether or not duplicate x-values are allowed for the series.
     *
     * @param key  the series key (<code>null</code> not permitted).
     * @param autoSort  a flag that controls whether or not the items in the
     *                  series are sorted.
     * @param allowDuplicateXValues  a flag that controls whether duplicate
     *                               x-values are allowed.
     */
    public XYIntervalSeries(Comparable key, boolean autoSort,
            boolean allowDuplicateXValues) {
        super(key, autoSort, allowDuplicateXValues);
    }

    /**
     * Adds a data item to the series.
     *
     * @param x  the x-value.
     * @param xLow  the lower bound of the x-interval.
     * @param xHigh  the upper bound of the x-interval.
     * @param y  the y-value.
     * @param yLow  the lower bound of the y-interval.
     * @param yHigh  the upper bound of the y-interval.
     */
    public void add(double x, double xLow, double xHigh, double y, double yLow,
            double yHigh) {
        int PROBE_START_LINE_94 = 94;
				double p_x_250_line_94 = x;
				double p_x_low_251_line_94 = xLow;
				double p_x_high_252_line_94 = xHigh;
				double p_y_253_line_94 = y;
				double p_y_low_254_line_94 = yLow;
				double p_y_high_255_line_94 = yHigh;
				int PROBE_END_LINE_94 = 94;
		super.add(new XYIntervalDataItem(p_x_250_line_94, p_x_low_251_line_94, p_x_high_252_line_94, p_y_253_line_94, p_y_low_254_line_94, p_y_high_255_line_94), true);
    }

    /**
     * Returns the x-value for the specified item.
     *
     * @param index  the item index.
     *
     * @return The x-value (never <code>null</code>).
     */
    public Number getX(int index) {
        XYIntervalDataItem item = (XYIntervalDataItem) getDataItem(index);
        return item.getX();
    }

    /**
     * Returns the lower bound of the x-interval for the specified item in the
     * series.
     *
     * @param index  the item index.
     *
     * @return The lower bound of the x-interval.
     *
     * @since 1.0.5
     */
    public double getXLowValue(int index) {
        int PROBE_START_LINE_120 = 120;
		int p_index_257_line_120 = index;
		org.jfree.data.ComparableObjectItem xyinterval_series_1_expr6_line_120 = getDataItem(p_index_257_line_120);
		int PROBE_END_LINE_120 = 120;
		XYIntervalDataItem item = (XYIntervalDataItem) xyinterval_series_1_expr6_line_120;
        int PROBE_START_LINE_121 = 121;
		org.jfree.data.xy.XYIntervalDataItem v_item_258_line_121 = item;
		double xyinterval_series_1_expr7_line_121 = v_item_258_line_121.getXLowValue();
		int PROBE_END_LINE_121 = 121;
		return xyinterval_series_1_expr7_line_121;
    }

    /**
     * Returns the upper bound of the x-interval for the specified item in the
     * series.
     *
     * @param index  the item index.
     *
     * @return The upper bound of the x-interval.
     *
     * @since 1.0.5
     */
    public double getXHighValue(int index) {
        int PROBE_START_LINE_135 = 135;
		int p_index_259_line_135 = index;
		org.jfree.data.ComparableObjectItem xyinterval_series_1_expr9_line_135 = getDataItem(p_index_259_line_135);
		int PROBE_END_LINE_135 = 135;
		XYIntervalDataItem item = (XYIntervalDataItem) xyinterval_series_1_expr9_line_135;
        int PROBE_START_LINE_136 = 136;
		org.jfree.data.xy.XYIntervalDataItem v_item_260_line_136 = item;
		double xyinterval_series_1_expr10_line_136 = v_item_260_line_136.getXHighValue();
		int PROBE_END_LINE_136 = 136;
		return xyinterval_series_1_expr10_line_136;
    }

    /**
     * Returns the y-value for the specified item.
     *
     * @param index  the item index.
     *
     * @return The y-value.
     */
    public double getYValue(int index) {
        XYIntervalDataItem item = (XYIntervalDataItem) getDataItem(index);
        return item.getYValue();
    }

    /**
     * Returns the lower bound of the Y-interval for the specified item in the
     * series.
     *
     * @param index  the item index.
     *
     * @return The lower bound of the Y-interval.
     *
     * @since 1.0.5
     */
    public double getYLowValue(int index) {
        int PROBE_START_LINE_162 = 162;
		int p_index_262_line_162 = index;
		org.jfree.data.ComparableObjectItem xyinterval_series_1_expr12_line_162 = getDataItem(p_index_262_line_162);
		int PROBE_END_LINE_162 = 162;
		XYIntervalDataItem item = (XYIntervalDataItem) xyinterval_series_1_expr12_line_162;
        int PROBE_START_LINE_163 = 163;
		org.jfree.data.xy.XYIntervalDataItem v_item_263_line_163 = item;
		double xyinterval_series_1_expr13_line_163 = v_item_263_line_163.getYLowValue();
		int PROBE_END_LINE_163 = 163;
		return xyinterval_series_1_expr13_line_163;
    }

    /**
     * Returns the upper bound of the y-interval for the specified item in the
     * series.
     *
     * @param index  the item index.
     *
     * @return The upper bound of the y-interval.
     *
     * @since 1.0.5
     */
    public double getYHighValue(int index) {
        int PROBE_START_LINE_177 = 177;
		int p_index_264_line_177 = index;
		org.jfree.data.ComparableObjectItem xyinterval_series_1_expr15_line_177 = getDataItem(p_index_264_line_177);
		int PROBE_END_LINE_177 = 177;
		XYIntervalDataItem item = (XYIntervalDataItem) xyinterval_series_1_expr15_line_177;
        int PROBE_START_LINE_178 = 178;
		org.jfree.data.xy.XYIntervalDataItem v_item_265_line_178 = item;
		double xyinterval_series_1_expr16_line_178 = v_item_265_line_178.getYHighValue();
		int PROBE_END_LINE_178 = 178;
		return xyinterval_series_1_expr16_line_178;
    }

    /**
     * Returns the data item at the specified index.
     *
     * @param index  the item index.
     *
     * @return The data item.
     */
    public ComparableObjectItem getDataItem(int index) {
        int PROBE_START_LINE_189 = 189;
		int p_index_266_line_189 = index;
		org.jfree.data.ComparableObjectItem xyinterval_series_1_expr17_line_189 = super.getDataItem(
				p_index_266_line_189);
		int PROBE_END_LINE_189 = 189;
		return xyinterval_series_1_expr17_line_189;
    }

}
