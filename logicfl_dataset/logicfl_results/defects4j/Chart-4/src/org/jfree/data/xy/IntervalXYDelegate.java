/* ===========================================================
 * JFreeChart : a free chart library for the Java(tm) platform
 * ===========================================================
 *
 * (C) Copyright 2000-2009, by Object Refinery Limited and Contributors.
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
 * IntervalXYDelegate.java
 * -----------------------
 * (C) Copyright 2004-2009, by Andreas Schroeder and Contributors.
 *
 * Original Author:  Andreas Schroeder;
 * Contributor(s):   David Gilbert (for Object Refinery Limited);
 *
 * Changes
 * -------
 * 31-Mar-2004 : Version 1 (AS);
 * 15-Jul-2004 : Switched getX() with getXValue() and getY() with
 *               getYValue() (DG);
 * 18-Aug-2004 : Moved from org.jfree.data --> org.jfree.data.xy (DG);
 * 04-Nov-2004 : Added argument check for setIntervalWidth() method (DG);
 * 17-Nov-2004 : New methods to reflect changes in DomainInfo (DG);
 * 11-Jan-2005 : Removed deprecated methods in preparation for the 1.0.0
 *               release (DG);
 * 21-Feb-2005 : Made public and added equals() method (DG);
 * 06-Oct-2005 : Implemented DatasetChangeListener to recalculate
 *               autoIntervalWidth (DG);
 * 02-Feb-2007 : Removed author tags all over JFreeChart sources (DG);
 * 21-Jun-2007 : Removed JCommon dependencies (DG);
 * 06-Mar-2009 : Implemented hashCode() (DG);
 *
 */

package org.jfree.data.xy;

import java.io.Serializable;

import org.jfree.chart.util.HashUtilities;
import org.jfree.chart.util.PublicCloneable;
import org.jfree.data.DomainInfo;
import org.jfree.data.Range;
import org.jfree.data.RangeInfo;
import org.jfree.data.general.DatasetChangeEvent;
import org.jfree.data.general.DatasetChangeListener;
import org.jfree.data.general.DatasetUtilities;

/**
 * A delegate that handles the specification or automatic calculation of the
 * interval surrounding the x-values in a dataset.  This is used to extend
 * a regular {@link XYDataset} to support the {@link IntervalXYDataset}
 * interface.
 * <p>
 * The decorator pattern was not used because of the several possibly
 * implemented interfaces of the decorated instance (e.g.
 * {@link TableXYDataset}, {@link RangeInfo}, {@link DomainInfo} etc.).
 * <p>
 * The width can be set manually or calculated automatically. The switch
 * autoWidth allows to determine which behavior is used. The auto width
 * calculation tries to find the smallest gap between two x-values in the
 * dataset.  If there is only one item in the series, the auto width
 * calculation fails and falls back on the manually set interval width (which
 * is itself defaulted to 1.0).
 */
public class IntervalXYDelegate implements DatasetChangeListener,
        DomainInfo, Serializable, Cloneable, PublicCloneable {

    /** For serialization. */
    private static final long serialVersionUID = -685166711639592857L;

    /**
     * The dataset to enhance.
     */
    private XYDataset dataset;

    /**
     * A flag to indicate whether the width should be calculated automatically.
     */
    private boolean autoWidth;

    /**
     * A value between 0.0 and 1.0 that indicates the position of the x-value
     * within the interval.
     */
    private double intervalPositionFactor;

    /**
     * The fixed interval width (defaults to 1.0).
     */
    private double fixedIntervalWidth;

    /**
     * The automatically calculated interval width.
     */
    private double autoIntervalWidth;

    /**
     * Creates a new delegate that.
     *
     * @param dataset  the underlying dataset (<code>null</code> not permitted).
     */
    public IntervalXYDelegate(XYDataset dataset) {
        this(dataset, true);
    }

    /**
     * Creates a new delegate for the specified dataset.
     *
     * @param dataset  the underlying dataset (<code>null</code> not permitted).
     * @param autoWidth  a flag that controls whether the interval width is
     *                   calculated automatically.
     */
    public IntervalXYDelegate(XYDataset dataset, boolean autoWidth) {
        int PROBE_START_LINE_133 = 135;
		org.jfree.data.xy.XYDataset p_dataset_3937_line_133 = dataset;
		boolean interval_xydelegate_1_expr1_line_133 = p_dataset_3937_line_133 == null;
		int PROBE_END_LINE_133 = 135;
		if (interval_xydelegate_1_expr1_line_133) {
            throw new IllegalArgumentException("Null 'dataset' argument.");
        }
        int PROBE_START_LINE_136 = 136;
		org.jfree.data.xy.XYDataset p_dataset_3937_line_136 = dataset;
		int PROBE_END_LINE_136 = 136;
		this.dataset = p_dataset_3937_line_136;
        int PROBE_START_LINE_137 = 137;
		boolean p_auto_width_3938_line_137 = autoWidth;
		int PROBE_END_LINE_137 = 137;
		this.autoWidth = p_auto_width_3938_line_137;
        this.intervalPositionFactor = 0.5;
        int PROBE_START_LINE_139 = 139;
		double q_positive_infinity_90_line_139 = Double.POSITIVE_INFINITY;
		int PROBE_END_LINE_139 = 139;
		this.autoIntervalWidth = q_positive_infinity_90_line_139;
        this.fixedIntervalWidth = 1.0;
    }

    /**
     * Returns <code>true</code> if the interval width is automatically
     * calculated, and <code>false</code> otherwise.
     *
     * @return A boolean.
     */
    public boolean isAutoWidth() {
        int PROBE_START_LINE_150 = 150;
		boolean f_auto_width_3940_line_150 = this.autoWidth;
		int PROBE_END_LINE_150 = 150;
		return f_auto_width_3940_line_150;
    }

    /**
     * Sets the flag that indicates whether the interval width is automatically
     * calculated.  If the flag is set to <code>true</code>, the interval is
     * recalculated.
     * <p>
     * Note: recalculating the interval amounts to changing the data values
     * represented by the dataset.  The calling dataset must fire an
     * appropriate {@link DatasetChangeEvent}.
     *
     * @param b  a boolean.
     */
    public void setAutoWidth(boolean b) {
        this.autoWidth = b;
        if (b) {
            this.autoIntervalWidth = recalculateInterval();
        }
    }

    /**
     * Returns the interval position factor.
     *
     * @return The interval position factor.
     */
    public double getIntervalPositionFactor() {
        int PROBE_START_LINE_177 = 177;
		double f_interval_position_factor_3941_line_177 = this.intervalPositionFactor;
		int PROBE_END_LINE_177 = 177;
		return f_interval_position_factor_3941_line_177;
    }

    /**
     * Sets the interval position factor.  This controls how the interval is
     * aligned to the x-value.  For a value of 0.5, the interval is aligned
     * with the x-value in the center.  For a value of 0.0, the interval is
     * aligned with the x-value at the lower end of the interval, and for a
     * value of 1.0, the interval is aligned with the x-value at the upper
     * end of the interval.
     * <br><br>
     * Note that changing the interval position factor amounts to changing the
     * data values represented by the dataset.  Therefore, the dataset that is
     * using this delegate is responsible for generating the
     * appropriate {@link DatasetChangeEvent}.
     *
     * @param d  the new interval position factor (in the range
     *           <code>0.0</code> to <code>1.0</code> inclusive).
     */
    public void setIntervalPositionFactor(double d) {
        if (d < 0.0 || 1.0 < d) {
            throw new IllegalArgumentException(
                    "Argument 'd' outside valid range.");
        }
        this.intervalPositionFactor = d;
    }

    /**
     * Returns the fixed interval width.
     *
     * @return The fixed interval width.
     */
    public double getFixedIntervalWidth() {
        return this.fixedIntervalWidth;
    }

    /**
     * Sets the fixed interval width and, as a side effect, sets the
     * <code>autoWidth</code> flag to <code>false</code>.
     *
     * Note that changing the interval width amounts to changing the data
     * values represented by the dataset.  Therefore, the dataset
     * that is using this delegate is responsible for generating the
     * appropriate {@link DatasetChangeEvent}.
     *
     * @param w  the width (negative values not permitted).
     */
    public void setFixedIntervalWidth(double w) {
        int PROBE_START_LINE_225 = 227;
		double p_w_3946_line_225 = w;
		boolean interval_xydelegate_1_expr21_line_225 = p_w_3946_line_225 < 0.0;
		int PROBE_END_LINE_225 = 227;
		if (interval_xydelegate_1_expr21_line_225) {
            throw new IllegalArgumentException("Negative 'w' argument.");
        }
        int PROBE_START_LINE_228 = 228;
		double p_w_3946_line_228 = w;
		int PROBE_END_LINE_228 = 228;
		this.fixedIntervalWidth = p_w_3946_line_228;
        this.autoWidth = false;
    }

    /**
     * Returns the interval width.  This method will return either the
     * auto calculated interval width or the manually specified interval
     * width, depending on the {@link #isAutoWidth()} result.
     *
     * @return The interval width to use.
     */
    public double getIntervalWidth() {
        int PROBE_START_LINE_240 = 248;
		boolean interval_xydelegate_1_expr29_line_240 = isAutoWidth();
		boolean interval_xydelegate_1_expr30_line_240 = true;
		if (interval_xydelegate_1_expr29_line_240) {
			double f_auto_interval_width_3942_line_240 = this.autoIntervalWidth;
			boolean interval_xydelegate_1_expr31_line_240 = Double.isInfinite(f_auto_interval_width_3942_line_240);
			interval_xydelegate_1_expr30_line_240 = !interval_xydelegate_1_expr31_line_240;
		}
		boolean interval_xydelegate_1_expr28_line_240 = interval_xydelegate_1_expr29_line_240
				&& interval_xydelegate_1_expr30_line_240;
		int PROBE_END_LINE_240 = 248;
		if (interval_xydelegate_1_expr28_line_240) {
            // everything is fine: autoWidth is on, and an autoIntervalWidth
            // was set.
            return this.autoIntervalWidth;
        }
        else {
            int PROBE_START_LINE_247 = 247;
			double f_fixed_interval_width_3943_line_247 = this.fixedIntervalWidth;
			int PROBE_END_LINE_247 = 247;
			// either autoWidth is off or autoIntervalWidth was not set.
            return f_fixed_interval_width_3943_line_247;
        }
    }

    /**
     * Returns the start value of the x-interval for an item within a series.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The start value of the x-interval (possibly <code>null</code>).
     *
     * @see #getStartXValue(int, int)
     */
    public Number getStartX(int series, int item) {
        Number startX = null;
        Number x = this.dataset.getX(series, item);
        if (x != null) {
            startX = new Double(x.doubleValue()
                     - (getIntervalPositionFactor() * getIntervalWidth()));
        }
        return startX;
    }

    /**
     * Returns the start value of the x-interval for an item within a series.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The start value of the x-interval.
     *
     * @see #getStartX(int, int)
     */
    public double getStartXValue(int series, int item) {
        return this.dataset.getXValue(series, item)
                - getIntervalPositionFactor() * getIntervalWidth();
    }

    /**
     * Returns the end value of the x-interval for an item within a series.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The end value of the x-interval (possibly <code>null</code>).
     *
     * @see #getEndXValue(int, int)
     */
    public Number getEndX(int series, int item) {
        Number endX = null;
        Number x = this.dataset.getX(series, item);
        if (x != null) {
            endX = new Double(x.doubleValue()
                + ((1.0 - getIntervalPositionFactor()) * getIntervalWidth()));
        }
        return endX;
    }

    /**
     * Returns the end value of the x-interval for an item within a series.
     *
     * @param series  the series index.
     * @param item  the item index.
     *
     * @return The end value of the x-interval.
     *
     * @see #getEndX(int, int)
     */
    public double getEndXValue(int series, int item) {
        return this.dataset.getXValue(series, item)
                + (1.0 - getIntervalPositionFactor()) * getIntervalWidth();
    }

    /**
     * Returns the minimum x-value in the dataset.
     *
     * @param includeInterval  a flag that determines whether or not the
     *                         x-interval is taken into account.
     *
     * @return The minimum value.
     */
    public double getDomainLowerBound(boolean includeInterval) {
        double result = Double.NaN;
        Range r = getDomainBounds(includeInterval);
        if (r != null) {
            result = r.getLowerBound();
        }
        return result;
    }

    /**
     * Returns the maximum x-value in the dataset.
     *
     * @param includeInterval  a flag that determines whether or not the
     *                         x-interval is taken into account.
     *
     * @return The maximum value.
     */
    public double getDomainUpperBound(boolean includeInterval) {
        double result = Double.NaN;
        Range r = getDomainBounds(includeInterval);
        if (r != null) {
            result = r.getUpperBound();
        }
        return result;
    }

    /**
     * Returns the range of the values in the dataset's domain, including
     * or excluding the interval around each x-value as specified.
     *
     * @param includeInterval  a flag that determines whether or not the
     *                         x-interval should be taken into account.
     *
     * @return The range.
     */
    public Range getDomainBounds(boolean includeInterval) {
        int PROBE_START_LINE_367 = 367;
		org.jfree.data.xy.XYDataset f_dataset_3939_line_367 = this.dataset;
		Range interval_xydelegate_1_expr36_line_367 = DatasetUtilities.findDomainBounds(f_dataset_3939_line_367, false);
		int PROBE_END_LINE_367 = 367;
		// first get the range without the interval, then expand it for the
        // interval width
        Range range = interval_xydelegate_1_expr36_line_367;
        int PROBE_START_LINE_368 = 373;
		boolean p_include_interval_3957_line_368 = includeInterval;
		boolean interval_xydelegate_1_expr40_line_368 = true;
		if (p_include_interval_3957_line_368) {
			org.jfree.data.Range v_range_3958_line_368 = range;
			interval_xydelegate_1_expr40_line_368 = v_range_3958_line_368 != null;
		}
		boolean interval_xydelegate_1_expr39_line_368 = p_include_interval_3957_line_368
				&& interval_xydelegate_1_expr40_line_368;
		int PROBE_END_LINE_368 = 373;
		if (interval_xydelegate_1_expr39_line_368) {
            int PROBE_START_LINE_369 = 369;
			double interval_xydelegate_1_expr42_line_369 = getIntervalWidth();
			double interval_xydelegate_1_expr43_line_369 = getIntervalPositionFactor();
			double interval_xydelegate_1_expr41_line_369 = interval_xydelegate_1_expr42_line_369
					* interval_xydelegate_1_expr43_line_369;
			int PROBE_END_LINE_369 = 369;
			double lowerAdj = interval_xydelegate_1_expr41_line_369;
            int PROBE_START_LINE_370 = 370;
			double interval_xydelegate_1_expr45_line_370 = getIntervalWidth();
			double v_lower_adj_3959_line_370 = lowerAdj;
			double interval_xydelegate_1_expr44_line_370 = interval_xydelegate_1_expr45_line_370
					- v_lower_adj_3959_line_370;
			int PROBE_END_LINE_370 = 370;
			double upperAdj = interval_xydelegate_1_expr44_line_370;
            int PROBE_START_LINE_371 = 372;
			org.jfree.data.Range v_range_3958_line_371 = range;
			double interval_xydelegate_1_expr50_line_371 = v_range_3958_line_371.getLowerBound();
			double v_lower_adj_3959_line_371 = lowerAdj;
			double interval_xydelegate_1_expr48_line_371 = interval_xydelegate_1_expr50_line_371
					- v_lower_adj_3959_line_371;
			int PROBE_END_LINE_371 = 372;
			range = new Range(interval_xydelegate_1_expr48_line_371,
                range.getUpperBound() + upperAdj);
        }
        int PROBE_START_LINE_374 = 374;
		org.jfree.data.Range v_range_3958_line_374 = range;
		int PROBE_END_LINE_374 = 374;
		return v_range_3958_line_374;
    }

    /**
     * Handles events from the dataset by recalculating the interval if
     * necessary.
     *
     * @param e  the event.
     */
    public void datasetChanged(DatasetChangeEvent e) {
        int PROBE_START_LINE_389 = 391;
		boolean f_auto_width_3940_line_389 = this.autoWidth;
		int PROBE_END_LINE_389 = 391;
		// TODO: by coding the event with some information about what changed
        // in the dataset, we could make the recalculation of the interval
        // more efficient in some cases (for instance, if the change is
        // just an update to a y-value, then the x-interval doesn't need
        // updating)...
        if (f_auto_width_3940_line_389) {
            this.autoIntervalWidth = recalculateInterval();
        }
    }

    /**
     * Recalculate the minimum width "from scratch".
     *
     * @return The minimum width.
     */
    private double recalculateInterval() {
        double result = Double.POSITIVE_INFINITY;
        int seriesCount = this.dataset.getSeriesCount();
        for (int series = 0; series < seriesCount; series++) {
            result = Math.min(result, calculateIntervalForSeries(series));
        }
        return result;
    }

    /**
     * Calculates the interval width for a given series.
     *
     * @param series  the series index.
     *
     * @return The interval width.
     */
    private double calculateIntervalForSeries(int series) {
        double result = Double.POSITIVE_INFINITY;
        int itemCount = this.dataset.getItemCount(series);
        if (itemCount > 1) {
            double prev = this.dataset.getXValue(series, 0);
            for (int item = 1; item < itemCount; item++) {
                double x = this.dataset.getXValue(series, item);
                result = Math.min(result, x - prev);
                prev = x;
            }
        }
        return result;
    }

    /**
     * Tests the delegate for equality with an arbitrary object.  The
     * equality test considers two delegates to be equal if they would
     * calculate the same intervals for any given dataset (for this reason, the
     * dataset itself is NOT included in the equality test, because it is just
     * a reference back to the current 'owner' of the delegate).
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IntervalXYDelegate)) {
            return false;
        }
        IntervalXYDelegate that = (IntervalXYDelegate) obj;
        if (this.autoWidth != that.autoWidth) {
            return false;
        }
        if (this.intervalPositionFactor != that.intervalPositionFactor) {
            return false;
        }
        if (this.fixedIntervalWidth != that.fixedIntervalWidth) {
            return false;
        }
        return true;
    }

    /**
     * @return A clone of this delegate.
     *
     * @throws CloneNotSupportedException if the object cannot be cloned.
     */
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    /**
     * Returns a hash code for this instance.
     *
     * @return A hash code.
     */
    public int hashCode() {
        int hash = 5;
        hash = HashUtilities.hashCode(hash, this.autoWidth);
        hash = HashUtilities.hashCode(hash, this.intervalPositionFactor);
        hash = HashUtilities.hashCode(hash, this.fixedIntervalWidth);
        return hash;
    }

}
