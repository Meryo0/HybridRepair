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
 * -------------------------------
 * XYIntervalSeriesCollection.java
 * -------------------------------
 * (C) Copyright 2006-2008, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 20-Oct-2006 : Version 1 (DG);
 * 13-Feb-2007 : Provided a number of method overrides that enhance
 *               performance, and added a proper clone()
 *               implementation (DG);
 * 21-Jun-2007 : Removed JCommon dependencies (DG);
 * 18-Jan-2008 : Added removeSeries() and removeAllSeries() methods (DG);
 * 22-Apr-2008 : Implemented PublicCloneable (DG);
 *
 */

package org.jfree.data.xy;

import java.io.Serializable;
import java.util.List;

import org.jfree.chart.event.DatasetChangeInfo;
import org.jfree.chart.util.ObjectUtilities;
import org.jfree.chart.util.PublicCloneable;
import org.jfree.data.event.DatasetChangeEvent;

/**
 * A collection of {@link XYIntervalSeries} objects.
 *
 * @since 1.0.3
 *
 * @see XYIntervalSeries
 */
public class XYIntervalSeriesCollection extends AbstractIntervalXYDataset
        implements IntervalXYDataset, PublicCloneable, Serializable {

    /** Storage for the data series. */
    private List data;

    /**
     * Creates a new instance of <code>XIntervalSeriesCollection</code>.
     */
    public XYIntervalSeriesCollection() {
        this.data = new java.util.ArrayList();
    }

    /**
     * Adds a series to the collection and sends a {@link DatasetChangeEvent}
     * to all registered listeners.
     *
     * @param series  the series (<code>null</code> not permitted).
     */
    public void addSeries(XYIntervalSeries series) {
        int PROBE_START_LINE_84 = 86;
		org.jfree.data.xy.XYIntervalSeries p_series_268_line_84 = series;
		boolean xyinterval_series_collection_1_expr5_line_84 = p_series_268_line_84 == null;
		int PROBE_END_LINE_84 = 86;
		if (xyinterval_series_collection_1_expr5_line_84) {
            throw new IllegalArgumentException("Null 'series' argument.");
        }
        int PROBE_START_LINE_87 = 87;
		java.util.List f_data_267_line_87 = this.data;
		org.jfree.data.xy.XYIntervalSeries p_series_268_line_87 = series;
		int PROBE_END_LINE_87 = 87;
		f_data_267_line_87.add(p_series_268_line_87);
        int PROBE_START_LINE_88 = 88;
		org.jfree.data.xy.XYIntervalSeries p_series_268_line_88 = series;
		int PROBE_END_LINE_88 = 88;
		p_series_268_line_88.addChangeListener(this);
        fireDatasetChanged(new DatasetChangeInfo());
        //TODO: fill in real change info
    }

    /**
     * Returns the number of series in the collection.
     *
     * @return The series count.
     */
    public int getSeriesCount() {
        int PROBE_START_LINE_99 = 99;
		java.util.List f_data_267_line_99 = this.data;
		int xyinterval_series_collection_1_expr13_line_99 = f_data_267_line_99.size();
		int PROBE_END_LINE_99 = 99;
		return xyinterval_series_collection_1_expr13_line_99;
    }

    /**
     * Returns a series from the collection.
     *
     * @param series  the series index (zero-based).
     *
     * @return The series.
     *
     * @throws IllegalArgumentException if <code>series</code> is not in the
     *     range <code>0</code> to <code>getSeriesCount() - 1</code>.
     */
    public XYIntervalSeries getSeries(int series) {
        int PROBE_START_LINE_113 = 115;
		int p_series_269_line_113 = series;
		boolean xyinterval_series_collection_1_expr18_line_113 = p_series_269_line_113 < 0;
		boolean xyinterval_series_collection_1_expr17_line_113 = (xyinterval_series_collection_1_expr18_line_113);
		boolean xyinterval_series_collection_1_expr19_line_113 = false;
		if (!xyinterval_series_collection_1_expr17_line_113) {
			int p_series_269_line_113_v1 = series;
			int xyinterval_series_collection_1_expr21_line_113 = getSeriesCount();
			boolean xyinterval_series_collection_1_expr20_line_113 = p_series_269_line_113_v1 >= xyinterval_series_collection_1_expr21_line_113;
			xyinterval_series_collection_1_expr19_line_113 = (xyinterval_series_collection_1_expr20_line_113);
		}
		boolean xyinterval_series_collection_1_expr16_line_113 = xyinterval_series_collection_1_expr17_line_113
				|| xyinterval_series_collection_1_expr19_line_113;
		int PROBE_END_LINE_113 = 115;
		if (xyinterval_series_collection_1_expr16_line_113) {
            throw new IllegalArgumentException("Series index out of bounds");
        }
        int PROBE_START_LINE_116 = 116;
		java.util.List f_data_267_line_116 = this.data;
		int p_series_269_line_116 = series;
		Object xyinterval_series_collection_1_expr23_line_116 = f_data_267_line_116.get(p_series_269_line_116);
		int PROBE_END_LINE_116 = 116;
		return (XYIntervalSeries) xyinterval_series_collection_1_expr23_line_116;
    }

    /**
     * Returns the key for a series.
     *
     * @param series  the series index (in the range <code>0</code> to
     *     <code>getSeriesCount() - 1</code>).
     *
     * @return The key for a series.
     *
     * @throws IllegalArgumentException if <code>series</code> is not in the
     *     specified range.
     */
    public Comparable getSeriesKey(int series) {
        // defer argument checking
        return getSeries(series).getKey();
    }

    /**
     * Returns the number of items in the specified series.
     *
     * @param series  the series (zero-based index).
     *
     * @return The item count.
     *
     * @throws IllegalArgumentException if <code>series</code> is not in the
     *     range <code>0</code> to <code>getSeriesCount() - 1</code>.
     */
    public int getItemCount(int series) {
        int PROBE_START_LINE_147 = 147;
		int p_series_271_line_147 = series;
		org.jfree.data.xy.XYIntervalSeries xyinterval_series_collection_1_expr27_line_147 = getSeries(
				p_series_271_line_147);
		int xyinterval_series_collection_1_expr26_line_147 = xyinterval_series_collection_1_expr27_line_147
				.getItemCount();
		int PROBE_END_LINE_147 = 147;
		// defer argument checking
        return xyinterval_series_collection_1_expr26_line_147;
    }

    /**
     * Returns the x-value for an item within a series.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The x-value.
     */
    public Number getX(int series, int item) {
        XYIntervalSeries s = (XYIntervalSeries) this.data.get(series);
        return s.getX(item);
    }

    /**
     * Returns the start x-value (as a double primitive) for an item within a
     * series.
     *
     * @param series  the series index (zero-based).
     * @param item  the item index (zero-based).
     *
     * @return The value.
     */
    public double getStartXValue(int series, int item) {
        int PROBE_START_LINE_173 = 173;
		java.util.List f_data_267_line_173 = this.data;
		int p_series_274_line_173 = series;
		Object xyinterval_series_collection_1_expr29_line_173 = f_data_267_line_173.get(p_series_274_line_173);
		int PROBE_END_LINE_173 = 173;
		XYIntervalSeries s = (XYIntervalSeries) xyinterval_series_collection_1_expr29_line_173;
        int PROBE_START_LINE_174 = 174;
		org.jfree.data.xy.XYIntervalSeries v_s_276_line_174 = s;
		int p_item_275_line_174 = item;
		double xyinterval_series_collection_1_expr32_line_174 = v_s_276_line_174.getXLowValue(p_item_275_line_174);
		int PROBE_END_LINE_174 = 174;
		return xyinterval_series_collection_1_expr32_line_174;
    }

    /**
     * Returns the end x-value (as a double primitive) for an item within a
     * series.
     *
     * @param series  the series index (zero-based).
     * @param item  the item index (zero-based).
     *
     * @return The value.
     */
    public double getEndXValue(int series, int item) {
        int PROBE_START_LINE_187 = 187;
		java.util.List f_data_267_line_187 = this.data;
		int p_series_277_line_187 = series;
		Object xyinterval_series_collection_1_expr34_line_187 = f_data_267_line_187.get(p_series_277_line_187);
		int PROBE_END_LINE_187 = 187;
		XYIntervalSeries s = (XYIntervalSeries) xyinterval_series_collection_1_expr34_line_187;
        int PROBE_START_LINE_188 = 188;
		org.jfree.data.xy.XYIntervalSeries v_s_279_line_188 = s;
		int p_item_278_line_188 = item;
		double xyinterval_series_collection_1_expr37_line_188 = v_s_279_line_188.getXHighValue(p_item_278_line_188);
		int PROBE_END_LINE_188 = 188;
		return xyinterval_series_collection_1_expr37_line_188;
    }

    /**
     * Returns the y-value (as a double primitive) for an item within a
     * series.
     *
     * @param series  the series index (zero-based).
     * @param item  the item index (zero-based).
     *
     * @return The value.
     */
    public double getYValue(int series, int item) {
        XYIntervalSeries s = (XYIntervalSeries) this.data.get(series);
        return s.getYValue(item);
    }

    /**
     * Returns the start y-value (as a double primitive) for an item within a
     * series.
     *
     * @param series  the series index (zero-based).
     * @param item  the item index (zero-based).
     *
     * @return The value.
     */
    public double getStartYValue(int series, int item) {
        int PROBE_START_LINE_215 = 215;
		java.util.List f_data_267_line_215 = this.data;
		int p_series_282_line_215 = series;
		Object xyinterval_series_collection_1_expr39_line_215 = f_data_267_line_215.get(p_series_282_line_215);
		int PROBE_END_LINE_215 = 215;
		XYIntervalSeries s = (XYIntervalSeries) xyinterval_series_collection_1_expr39_line_215;
        int PROBE_START_LINE_216 = 216;
		org.jfree.data.xy.XYIntervalSeries v_s_284_line_216 = s;
		int p_item_283_line_216 = item;
		double xyinterval_series_collection_1_expr42_line_216 = v_s_284_line_216.getYLowValue(p_item_283_line_216);
		int PROBE_END_LINE_216 = 216;
		return xyinterval_series_collection_1_expr42_line_216;
    }

    /**
     * Returns the end y-value (as a double primitive) for an item within a
     * series.
     *
     * @param series  the series (zero-based index).
     * @param item  the item (zero-based index).
     *
     * @return The value.
     */
    public double getEndYValue(int series, int item) {
        int PROBE_START_LINE_229 = 229;
		java.util.List f_data_267_line_229 = this.data;
		int p_series_285_line_229 = series;
		Object xyinterval_series_collection_1_expr44_line_229 = f_data_267_line_229.get(p_series_285_line_229);
		int PROBE_END_LINE_229 = 229;
		XYIntervalSeries s = (XYIntervalSeries) xyinterval_series_collection_1_expr44_line_229;
        int PROBE_START_LINE_230 = 230;
		org.jfree.data.xy.XYIntervalSeries v_s_287_line_230 = s;
		int p_item_286_line_230 = item;
		double xyinterval_series_collection_1_expr47_line_230 = v_s_287_line_230.getYHighValue(p_item_286_line_230);
		int PROBE_END_LINE_230 = 230;
		return xyinterval_series_collection_1_expr47_line_230;
    }

    /**
     * Returns the y-value for an item within a series.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The y-value.
     */
    public Number getY(int series, int item) {
        return new Double(getYValue(series, item));
    }

    /**
     * Returns the start x-value for an item within a series.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The x-value.
     */
    public Number getStartX(int series, int item) {
        return new Double(getStartXValue(series, item));
    }

    /**
     * Returns the end x-value for an item within a series.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The x-value.
     */
    public Number getEndX(int series, int item) {
        return new Double(getEndXValue(series, item));
    }

    /**
     * Returns the start y-value for an item within a series.  This method
     * maps directly to {@link #getY(int, int)}.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The start y-value.
     */
    public Number getStartY(int series, int item) {
        return new Double(getStartYValue(series, item));
    }

    /**
     * Returns the end y-value for an item within a series.  This method
     * maps directly to {@link #getY(int, int)}.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The end y-value.
     */
    public Number getEndY(int series, int item) {
        return new Double(getEndYValue(series, item));
    }

    /**
     * Removes a series from the collection and sends a
     * {@link DatasetChangeEvent} to all registered listeners.
     *
     * @param series  the series index (zero-based).
     *
     * @since 1.0.10
     */
    public void removeSeries(int series) {
        if ((series < 0) || (series >= getSeriesCount())) {
            throw new IllegalArgumentException("Series index out of bounds.");
        }
        XYIntervalSeries ts = (XYIntervalSeries) this.data.get(series);
        ts.removeChangeListener(this);
        this.data.remove(series);
        fireDatasetChanged(new DatasetChangeInfo());
        //TODO: fill in real change info
    }

    /**
     * Removes a series from the collection and sends a
     * {@link DatasetChangeEvent} to all registered listeners.
     *
     * @param series  the series (<code>null</code> not permitted).
     *
     * @since 1.0.10
     */
    public void removeSeries(XYIntervalSeries series) {
        if (series == null) {
            throw new IllegalArgumentException("Null 'series' argument.");
        }
        if (this.data.contains(series)) {
            series.removeChangeListener(this);
            this.data.remove(series);
            fireDatasetChanged(new DatasetChangeInfo());
            //TODO: fill in real change info
        }
    }

    /**
     * Removes all the series from the collection and sends a
     * {@link DatasetChangeEvent} to all registered listeners.
     *
     * @since 1.0.10
     */
    public void removeAllSeries() {
        // Unregister the collection as a change listener to each series in
        // the collection.
        for (int i = 0; i < this.data.size(); i++) {
          XYIntervalSeries series = (XYIntervalSeries) this.data.get(i);
          series.removeChangeListener(this);
        }
        this.data.clear();
        fireDatasetChanged(new DatasetChangeInfo());
        //TODO: fill in real change info
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
        if (!(obj instanceof XYIntervalSeriesCollection)) {
            return false;
        }
        XYIntervalSeriesCollection that = (XYIntervalSeriesCollection) obj;
        return ObjectUtilities.equal(this.data, that.data);
    }

    /**
     * Returns a clone of this dataset.
     *
     * @return A clone of this dataset.
     *
     * @throws CloneNotSupportedException if there is a problem cloning.
     */
    public Object clone() throws CloneNotSupportedException {
        XYIntervalSeriesCollection clone
                = (XYIntervalSeriesCollection) super.clone();
        int seriesCount = getSeriesCount();
        clone.data = new java.util.ArrayList(seriesCount);
        for (int i = 0; i < this.data.size(); i++) {
            clone.data.set(i, getSeries(i).clone());
        }
        return clone;
    }

}
