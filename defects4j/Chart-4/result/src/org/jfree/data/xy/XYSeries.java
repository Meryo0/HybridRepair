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
 * -------------
 * XYSeries.java
 * -------------
 * (C) Copyright 2001-2009, Object Refinery Limited and Contributors.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Aaron Metzger;
 *                   Jonathan Gabbai;
 *                   Richard Atkinson;
 *                   Michel Santos;
 *                   Ted Schwartz (fix for bug 1955483);
 *
 * Changes
 * -------
 * 15-Nov-2001 : Version 1 (DG);
 * 03-Apr-2002 : Added an add(double, double) method (DG);
 * 29-Apr-2002 : Added a clear() method (ARM);
 * 06-Jun-2002 : Updated Javadoc comments (DG);
 * 29-Aug-2002 : Modified to give user control over whether or not duplicate
 *               x-values are allowed (DG);
 * 07-Oct-2002 : Fixed errors reported by Checkstyle (DG);
 * 11-Nov-2002 : Added maximum item count, code contributed by Jonathan
 *               Gabbai (DG);
 * 26-Mar-2003 : Implemented Serializable (DG);
 * 04-Aug-2003 : Added getItems() method (DG);
 * 15-Aug-2003 : Changed 'data' from private to protected, added new add()
 *               methods with a 'notify' argument (DG);
 * 22-Sep-2003 : Added getAllowDuplicateXValues() method (RA);
 * 29-Jan-2004 : Added autoSort attribute, based on a contribution by
 *               Michel Santos - see patch 886740 (DG);
 * 03-Feb-2004 : Added indexOf() method (DG);
 * 16-Feb-2004 : Added remove() method (DG);
 * 18-Aug-2004 : Moved from org.jfree.data --> org.jfree.data.xy (DG);
 * 21-Feb-2005 : Added update(Number, Number) and addOrUpdate(Number, Number)
 *               methods (DG);
 * 03-May-2005 : Added a new constructor, fixed the setMaximumItemCount()
 *               method to remove items (and notify listeners) if necessary,
 *               fixed the add() and addOrUpdate() methods to handle unsorted
 *               series (DG);
 * ------------- JFreeChart 1.0.x ---------------------------------------------
 * 11-Jan-2005 : Renamed update(int, Number) --> updateByIndex() (DG);
 * 15-Jan-2007 : Added toArray() method (DG);
 * 20-Jun-2007 : Removed deprecated code and JCommon dependencies (DG);
 * 31-Oct-2007 : Implemented faster hashCode() (DG);
 * 22-Nov-2007 : Reimplemented clone() (DG);
 * 01-May-2008 : Fixed bug 1955483 in addOrUpdate() method, thanks to
 *               Ted Schwartz (DG);
 * 24-Nov-2008 : Further fix for 1955483 (DG);
 * 06-Mar-2009 : Added minX, maxX, minY and maxY fields (DG);
 * 10-Jun-2009 : Make clones to isolate XYDataItem instances used
 *               for data storage (DG);
 *
 */

package org.jfree.data.xy;

import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jfree.chart.util.ObjectUtilities;
import org.jfree.data.general.Series;
import org.jfree.data.general.SeriesChangeEvent;
import org.jfree.data.general.SeriesException;

/**
 * Represents a sequence of zero or more data items in the form (x, y).  By
 * default, items in the series will be sorted into ascending order by x-value,
 * and duplicate x-values are permitted.  Both the sorting and duplicate
 * defaults can be changed in the constructor.  Y-values can be
 * <code>null</code> to represent missing values.
 */
public class XYSeries extends Series implements Cloneable, Serializable {

    /** For serialization. */
    static final long serialVersionUID = -5908509288197150436L;

    // In version 0.9.12, in response to several developer requests, I changed
    // the 'data' attribute from 'private' to 'protected', so that others can
    // make subclasses that work directly with the underlying data structure.

    /** Storage for the data items in the series. */
    protected List data;

    int PROBE_START_LINE_111 = 112;

	private int q_max_value_90_line_112 = Integer.MAX_VALUE;

	int PROBE_END_LINE_111 = 112;

	/** The maximum number of items for the series. */
    private int maximumItemCount = q_max_value_90_line_112;

    /**
     * A flag that controls whether the items are automatically sorted
     * (by x-value ascending).
     */
    private boolean autoSort;

    /** A flag that controls whether or not duplicate x-values are allowed. */
    private boolean allowDuplicateXValues;

    /** The lowest x-value in the series, excluding Double.NaN values. */
    private double minX;

    /** The highest x-value in the series, excluding Double.NaN values. */
    private double maxX;

    /** The lowest y-value in the series, excluding Double.NaN values. */
    private double minY;

    /** The highest y-value in the series, excluding Double.NaN values. */
    private double maxY;

    /**
     * Creates a new empty series.  By default, items added to the series will
     * be sorted into ascending order by x-value, and duplicate x-values will
     * be allowed (these defaults can be modified with another constructor.
     *
     * @param key  the series key (<code>null</code> not permitted).
     */
    public XYSeries(Comparable key) {
        this(key, true, true);
    }

    /**
     * Constructs a new empty series, with the auto-sort flag set as requested,
     * and duplicate values allowed.
     *
     * @param key  the series key (<code>null</code> not permitted).
     * @param autoSort  a flag that controls whether or not the items in the
     *                  series are sorted.
     */
    public XYSeries(Comparable key, boolean autoSort) {
        this(key, autoSort, true);
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
    public XYSeries(Comparable key, boolean autoSort,
            boolean allowDuplicateXValues) {
        super(key);
        this.data = new java.util.ArrayList();
        int PROBE_START_LINE_172 = 172;
		boolean p_auto_sort_3986_line_172 = autoSort;
		int PROBE_END_LINE_172 = 172;
		this.autoSort = p_auto_sort_3986_line_172;
        int PROBE_START_LINE_173 = 173;
		boolean p_allow_duplicate_xvalues_3987_line_173 = allowDuplicateXValues;
		int PROBE_END_LINE_173 = 173;
		this.allowDuplicateXValues = p_allow_duplicate_xvalues_3987_line_173;
        int PROBE_START_LINE_174 = 174;
		double q_na_n_90_line_174 = Double.NaN;
		int PROBE_END_LINE_174 = 174;
		this.minX = q_na_n_90_line_174;
        int PROBE_START_LINE_175 = 175;
		double q_na_n_90_line_175 = Double.NaN;
		int PROBE_END_LINE_175 = 175;
		this.maxX = q_na_n_90_line_175;
        int PROBE_START_LINE_176 = 176;
		double q_na_n_90_line_176 = Double.NaN;
		int PROBE_END_LINE_176 = 176;
		this.minY = q_na_n_90_line_176;
        int PROBE_START_LINE_177 = 177;
		double q_na_n_90_line_177 = Double.NaN;
		int PROBE_END_LINE_177 = 177;
		this.maxY = q_na_n_90_line_177;
    }

    /**
     * Returns the smallest x-value in the series, ignoring any Double.NaN
     * values.  This method returns Double.NaN if there is no smallest x-value
     * (for example, when the series is empty).
     *
     * @return The smallest x-value.
     *
     * @see #getMaxX()
     *
     * @since 1.0.13
     */
    public double getMinX() {
        int PROBE_START_LINE_192 = 192;
		double f_min_x_3991_line_192 = this.minX;
		int PROBE_END_LINE_192 = 192;
		return f_min_x_3991_line_192;
    }

    /**
     * Returns the largest x-value in the series, ignoring any Double.NaN
     * values.  This method returns Double.NaN if there is no largest x-value
     * (for example, when the series is empty).
     *
     * @return The largest x-value.
     *
     * @see #getMinX()
     *
     * @since 1.0.13
     */
    public double getMaxX() {
        int PROBE_START_LINE_207 = 207;
		double f_max_x_3992_line_207 = this.maxX;
		int PROBE_END_LINE_207 = 207;
		return f_max_x_3992_line_207;
    }

    /**
     * Returns the smallest y-value in the series, ignoring any null and
     * Double.NaN values.  This method returns Double.NaN if there is no
     * smallest y-value (for example, when the series is empty).
     *
     * @return The smallest y-value.
     *
     * @see #getMaxY()
     *
     * @since 1.0.13
     */
    public double getMinY() {
        return this.minY;
    }

    /**
     * Returns the largest y-value in the series, ignoring any Double.NaN
     * values.  This method returns Double.NaN if there is no largest y-value
     * (for example, when the series is empty).
     *
     * @return The largest y-value.
     *
     * @see #getMinY()
     *
     * @since 1.0.13
     */
    public double getMaxY() {
        return this.maxY;
    }

    /**
     * Updates the cached values for the minimum and maximum data values.
     *
     * @param item  the item added (<code>null</code> not permitted).
     *
     * @since 1.0.13
     */
    private void updateBoundsForAddedItem(XYDataItem item) {
        int PROBE_START_LINE_248 = 248;
		org.jfree.data.xy.XYDataItem p_item_3995_line_248 = item;
		double xyseries_1_expr29_line_248 = p_item_3995_line_248.getXValue();
		int PROBE_END_LINE_248 = 248;
		double x = xyseries_1_expr29_line_248;
        int PROBE_START_LINE_249 = 249;
		double f_min_x_3991_line_249 = this.minX;
		double v_x_3996_line_249 = x;
		double xyseries_1_expr32_line_249 = minIgnoreNaN(f_min_x_3991_line_249, v_x_3996_line_249);
		int PROBE_END_LINE_249 = 249;
		this.minX = xyseries_1_expr32_line_249;
        int PROBE_START_LINE_250 = 250;
		double f_max_x_3992_line_250 = this.maxX;
		double v_x_3996_line_250 = x;
		double xyseries_1_expr38_line_250 = maxIgnoreNaN(f_max_x_3992_line_250, v_x_3996_line_250);
		int PROBE_END_LINE_250 = 250;
		this.maxX = xyseries_1_expr38_line_250;
        int PROBE_START_LINE_251 = 255;
		org.jfree.data.xy.XYDataItem p_item_3995_line_251 = item;
		Number xyseries_1_expr43_line_251 = p_item_3995_line_251.getY();
		boolean xyseries_1_expr42_line_251 = xyseries_1_expr43_line_251 != null;
		int PROBE_END_LINE_251 = 255;
		if (xyseries_1_expr42_line_251) {
            int PROBE_START_LINE_252 = 252;
			org.jfree.data.xy.XYDataItem p_item_3995_line_252 = item;
			double xyseries_1_expr44_line_252 = p_item_3995_line_252.getYValue();
			int PROBE_END_LINE_252 = 252;
			double y = xyseries_1_expr44_line_252;
            int PROBE_START_LINE_253 = 253;
			double f_min_y_3993_line_253 = this.minY;
			double v_y_3997_line_253 = y;
			double xyseries_1_expr47_line_253 = minIgnoreNaN(f_min_y_3993_line_253, v_y_3997_line_253);
			int PROBE_END_LINE_253 = 253;
			this.minY = xyseries_1_expr47_line_253;
            int PROBE_START_LINE_254 = 254;
			double f_max_y_3994_line_254 = this.maxY;
			double v_y_3997_line_254 = y;
			double xyseries_1_expr53_line_254 = maxIgnoreNaN(f_max_y_3994_line_254, v_y_3997_line_254);
			int PROBE_END_LINE_254 = 254;
			this.maxY = xyseries_1_expr53_line_254;
        }
    }

    /**
     * Updates the cached values for the minimum and maximum data values on
     * the basis that the specified item has just been removed.
     *
     * @param item  the item added (<code>null</code> not permitted).
     *
     * @since 1.0.13
     */
    private void updateBoundsForRemovedItem(XYDataItem item) {
        boolean itemContributesToXBounds = false;
        boolean itemContributesToYBounds = false;
        double x = item.getXValue();
        if (!Double.isNaN(x)) {
            if (x <= this.minX || x >= this.maxX) {
                itemContributesToXBounds = true;
            }
        }
        if (item.getY() != null) {
            double y = item.getYValue();
            if (!Double.isNaN(y)) {
                if (y <= this.minY || y >= this.maxY) {
                    itemContributesToYBounds = true;
                }
            }
        }
        if (itemContributesToYBounds) {
            findBoundsByIteration();
        }
        else if (itemContributesToXBounds) {
            if (getAutoSort()) {
                this.minX = getX(0).doubleValue();
                this.maxX = getX(getItemCount() - 1).doubleValue();
            }
            else {
                findBoundsByIteration();
            }
        }
    }

    /**
     * Finds the bounds of the x and y values for the series, by iterating
     * through all the data items.
     *
     * @since 1.0.13
     */
    private void findBoundsByIteration() {
        this.minX = Double.NaN;
        this.maxX = Double.NaN;
        this.minY = Double.NaN;
        this.maxY = Double.NaN;
        Iterator iterator = this.data.iterator();
        while (iterator.hasNext()) {
            XYDataItem item = (XYDataItem) iterator.next();
            updateBoundsForAddedItem(item);
        }
    }

    /**
     * Returns the flag that controls whether the items in the series are
     * automatically sorted.  There is no setter for this flag, it must be
     * defined in the series constructor.
     *
     * @return A boolean.
     */
    public boolean getAutoSort() {
        return this.autoSort;
    }

    /**
     * Returns a flag that controls whether duplicate x-values are allowed.
     * This flag can only be set in the constructor.
     *
     * @return A boolean.
     */
    public boolean getAllowDuplicateXValues() {
        return this.allowDuplicateXValues;
    }

    /**
     * Returns the number of items in the series.
     *
     * @return The item count.
     *
     * @see #getItems()
     */
    public int getItemCount() {
        int PROBE_START_LINE_344 = 344;
		java.util.List f_data_3988_line_344 = this.data;
		int xyseries_1_expr57_line_344 = f_data_3988_line_344.size();
		int PROBE_END_LINE_344 = 344;
		return xyseries_1_expr57_line_344;
    }

    /**
     * Returns the list of data items for the series (the list contains
     * {@link XYDataItem} objects and is unmodifiable).
     *
     * @return The list of data items.
     */
    public List getItems() {
        return Collections.unmodifiableList(this.data);
    }

    /**
     * Returns the maximum number of items that will be retained in the series.
     * The default value is <code>Integer.MAX_VALUE</code>.
     *
     * @return The maximum item count.
     *
     * @see #setMaximumItemCount(int)
     */
    public int getMaximumItemCount() {
        return this.maximumItemCount;
    }

    /**
     * Sets the maximum number of items that will be retained in the series.
     * If you add a new item to the series such that the number of items will
     * exceed the maximum item count, then the first element in the series is
     * automatically removed, ensuring that the maximum item count is not
     * exceeded.
     * <p>
     * Typically this value is set before the series is populated with data,
     * but if it is applied later, it may cause some items to be removed from
     * the series (in which case a {@link SeriesChangeEvent} will be sent to
     * all registered listeners).
     *
     * @param maximum  the maximum number of items for the series.
     */
    public void setMaximumItemCount(int maximum) {
        this.maximumItemCount = maximum;
        int remove = this.data.size() - maximum;
        if (remove > 0) {
            this.data.subList(0, remove).clear();
            findBoundsByIteration();
            fireSeriesChanged();
        }
    }

    /**
     * Adds a data item to the series and sends a {@link SeriesChangeEvent} to
     * all registered listeners.
     *
     * @param item  the (x, y) item (<code>null</code> not permitted).
     */
    public void add(XYDataItem item) {
        // argument checking delegated...
        add(item, true);
    }

    /**
     * Adds a data item to the series and sends a {@link SeriesChangeEvent} to
     * all registered listeners.
     *
     * @param x  the x value.
     * @param y  the y value.
     */
    public void add(double x, double y) {
        int PROBE_START_LINE_412 = 412;
		double p_x_4001_line_412 = x;
		double p_y_4002_line_412 = y;
		int PROBE_END_LINE_412 = 412;
		add(new Double(p_x_4001_line_412), new Double(p_y_4002_line_412), true);
    }

    /**
     * Adds a data item to the series and, if requested, sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param x  the x value.
     * @param y  the y value.
     * @param notify  a flag that controls whether or not a
     *                {@link SeriesChangeEvent} is sent to all registered
     *                listeners.
     */
    public void add(double x, double y, boolean notify) {
        add(new Double(x), new Double(y), notify);
    }

    /**
     * Adds a data item to the series and sends a {@link SeriesChangeEvent} to
     * all registered listeners.  The unusual pairing of parameter types is to
     * make it easier to add <code>null</code> y-values.
     *
     * @param x  the x value.
     * @param y  the y value (<code>null</code> permitted).
     */
    public void add(double x, Number y) {
        add(new Double(x), y);
    }

    /**
     * Adds a data item to the series and, if requested, sends a
     * {@link SeriesChangeEvent} to all registered listeners.  The unusual
     * pairing of parameter types is to make it easier to add null y-values.
     *
     * @param x  the x value.
     * @param y  the y value (<code>null</code> permitted).
     * @param notify  a flag that controls whether or not a
     *                {@link SeriesChangeEvent} is sent to all registered
     *                listeners.
     */
    public void add(double x, Number y, boolean notify) {
        add(new Double(x), y, notify);
    }

    /**
     * Adds a new data item to the series (in the correct position if the
     * <code>autoSort</code> flag is set for the series) and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     * <P>
     * Throws an exception if the x-value is a duplicate AND the
     * allowDuplicateXValues flag is false.
     *
     * @param x  the x-value (<code>null</code> not permitted).
     * @param y  the y-value (<code>null</code> permitted).
     *
     * @throws SeriesException if the x-value is a duplicate and the
     *     <code>allowDuplicateXValues</code> flag is not set for this series.
     */
    public void add(Number x, Number y) {
        // argument checking delegated...
        add(x, y, true);
    }

    /**
     * Adds new data to the series and, if requested, sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     * <P>
     * Throws an exception if the x-value is a duplicate AND the
     * allowDuplicateXValues flag is false.
     *
     * @param x  the x-value (<code>null</code> not permitted).
     * @param y  the y-value (<code>null</code> permitted).
     * @param notify  a flag the controls whether or not a
     *                {@link SeriesChangeEvent} is sent to all registered
     *                listeners.
     */
    public void add(Number x, Number y, boolean notify) {
        int PROBE_START_LINE_490 = 490;
		Number p_x_4013_line_490 = x;
		Number p_y_4014_line_490 = y;
		int PROBE_END_LINE_490 = 490;
		// delegate argument checking to XYDataItem...
        XYDataItem item = new XYDataItem(p_x_4013_line_490, p_y_4014_line_490);
        int PROBE_START_LINE_491 = 491;
		org.jfree.data.xy.XYDataItem v_item_4016_line_491 = item;
		boolean p_notify_4015_line_491 = notify;
		int PROBE_END_LINE_491 = 491;
		add(v_item_4016_line_491, p_notify_4015_line_491);
    }

    /**
     * Adds a data item to the series and, if requested, sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param item  the (x, y) item (<code>null</code> not permitted).
     * @param notify  a flag that controls whether or not a
     *                {@link SeriesChangeEvent} is sent to all registered
     *                listeners.
     */
    public void add(XYDataItem item, boolean notify) {
        int PROBE_START_LINE_504 = 506;
		org.jfree.data.xy.XYDataItem p_item_4017_line_504 = item;
		boolean xyseries_1_expr65_line_504 = p_item_4017_line_504 == null;
		int PROBE_END_LINE_504 = 506;
		if (xyseries_1_expr65_line_504) {
            throw new IllegalArgumentException("Null 'item' argument.");
        }
        int PROBE_START_LINE_507 = 507;
		org.jfree.data.xy.XYDataItem p_item_4017_line_507 = item;
		Object xyseries_1_expr68_line_507 = p_item_4017_line_507.clone();
		int PROBE_END_LINE_507 = 507;
		item = (XYDataItem) xyseries_1_expr68_line_507;
        int PROBE_START_LINE_508 = 543;
		boolean f_auto_sort_3989_line_508 = this.autoSort;
		int PROBE_END_LINE_508 = 543;
		if (f_auto_sort_3989_line_508) {
            int PROBE_START_LINE_509 = 509;
			java.util.List f_data_3988_line_509 = this.data;
			org.jfree.data.xy.XYDataItem p_item_4017_line_509 = item;
			int xyseries_1_expr71_line_509 = Collections.binarySearch(f_data_3988_line_509, p_item_4017_line_509);
			int PROBE_END_LINE_509 = 509;
			int index = xyseries_1_expr71_line_509;
            int PROBE_START_LINE_510 = 531;
			int v_index_4019_line_510 = index;
			boolean xyseries_1_expr74_line_510 = v_index_4019_line_510 < 0;
			int PROBE_END_LINE_510 = 531;
			if (xyseries_1_expr74_line_510) {
                int PROBE_START_LINE_511 = 511;
				java.util.List f_data_3988_line_511 = this.data;
				int v_index_4019_line_511 = index;
				int xyseries_1_expr79_line_511 = -v_index_4019_line_511;
				int xyseries_1_expr76_line_511 = xyseries_1_expr79_line_511 - 1;
				org.jfree.data.xy.XYDataItem p_item_4017_line_511 = item;
				int PROBE_END_LINE_511 = 511;
				f_data_3988_line_511.add(xyseries_1_expr76_line_511, p_item_4017_line_511);
            }
            else {
                if (this.allowDuplicateXValues) {
                    // need to make sure we are adding *after* any duplicates
                    int size = this.data.size();
                    while (index < size && item.compareTo(
                            this.data.get(index)) == 0) {
                        index++;
                    }
                    if (index < this.data.size()) {
                        this.data.add(index, item);
                    }
                    else {
                        this.data.add(item);
                    }
                }
                else {
                    throw new SeriesException("X-value already exists.");
                }
            }
        }
        else {
            if (!this.allowDuplicateXValues) {
                // can't allow duplicate values, so we need to check whether
                // there is an item with the given x-value already
                int index = indexOf(item.getX());
                if (index >= 0) {
                    throw new SeriesException("X-value already exists.");
                }
            }
            this.data.add(item);
        }
        int PROBE_START_LINE_544 = 544;
		org.jfree.data.xy.XYDataItem p_item_4017_line_544 = item;
		int PROBE_END_LINE_544 = 544;
		updateBoundsForAddedItem(p_item_4017_line_544);
        int PROBE_START_LINE_545 = 548;
		int xyseries_1_expr82_line_545 = getItemCount();
		int f_maximum_item_count_3981_line_545 = this.maximumItemCount;
		boolean xyseries_1_expr81_line_545 = xyseries_1_expr82_line_545 > f_maximum_item_count_3981_line_545;
		int PROBE_END_LINE_545 = 548;
		if (xyseries_1_expr81_line_545) {
            XYDataItem removed = (XYDataItem) this.data.remove(0);
            updateBoundsForRemovedItem(removed);
        }
        int PROBE_START_LINE_549 = 551;
		boolean p_notify_4018_line_549 = notify;
		int PROBE_END_LINE_549 = 551;
		if (p_notify_4018_line_549) {
            fireSeriesChanged();
        }
    }

    /**
     * Deletes a range of items from the series and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param start  the start index (zero-based).
     * @param end  the end index (zero-based).
     */
    public void delete(int start, int end) {
        this.data.subList(start, end + 1).clear();
        findBoundsByIteration();
        fireSeriesChanged();
    }

    /**
     * Removes the item at the specified index and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param index  the index.
     *
     * @return The item removed.
     */
    public XYDataItem remove(int index) {
        XYDataItem removed = (XYDataItem) this.data.remove(index);
        updateBoundsForRemovedItem(removed);
        fireSeriesChanged();
        return removed;
    }

    /**
     * Removes an item with the specified x-value and sends a
     * {@link SeriesChangeEvent} to all registered listeners.  Note that when
     * a series permits multiple items with the same x-value, this method
     * could remove any one of the items with that x-value.
     *
     * @param x  the x-value.

     * @return The item removed.
     */
    public XYDataItem remove(Number x) {
        return remove(indexOf(x));
    }

    /**
     * Removes all data items from the series and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     */
    public void clear() {
        if (this.data.size() > 0) {
            this.data.clear();
            this.minX = Double.NaN;
            this.maxX = Double.NaN;
            this.minY = Double.NaN;
            this.maxY = Double.NaN;
            fireSeriesChanged();
        }
    }

    /**
     * Return the data item with the specified index.
     *
     * @param index  the index.
     *
     * @return The data item with the specified index.
     */
    public XYDataItem getDataItem(int index) {
        XYDataItem item = (XYDataItem) this.data.get(index);
        return (XYDataItem) item.clone();
    }

    /**
     * Return the data item with the specified index.
     *
     * @param index  the index.
     *
     * @return The data item with the specified index.
     *
     * @since 1.0.14
     */
    XYDataItem getRawDataItem(int index) {
        return (XYDataItem) this.data.get(index);
    }

    /**
     * Returns the x-value at the specified index.
     *
     * @param index  the index (zero-based).
     *
     * @return The x-value (never <code>null</code>).
     */
    public Number getX(int index) {
        return getRawDataItem(index).getX();
    }

    /**
     * Returns the y-value at the specified index.
     *
     * @param index  the index (zero-based).
     *
     * @return The y-value (possibly <code>null</code>).
     */
    public Number getY(int index) {
        return getRawDataItem(index).getY();
    }

    /**
     * Updates the value of an item in the series and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param index  the item (zero based index).
     * @param y  the new value (<code>null</code> permitted).
     *
     * @since 1.0.1
     */
    public void updateByIndex(int index, Number y) {
        XYDataItem item = getRawDataItem(index);

        // figure out if we need to iterate through all the y-values
        boolean iterate = false;
        double oldY = item.getYValue();
        if (!Double.isNaN(oldY)) {
            iterate = oldY <= this.minY || oldY >= this.maxY;
        }
        item.setY(y);

        if (iterate) {
            findBoundsByIteration();
        }
        else if (y != null) {
            double yy = y.doubleValue();
            this.minY = minIgnoreNaN(this.minY, yy);
            this.maxY = maxIgnoreNaN(this.maxY, yy);
        }
        fireSeriesChanged();
    }

    /**
     * A function to find the minimum of two values, but ignoring any
     * Double.NaN values.
     *
     * @param a  the first value.
     * @param b  the second value.
     *
     * @return The minimum of the two values.
     */
    private double minIgnoreNaN(double a, double b) {
        int PROBE_START_LINE_699 = 709;
		double p_a_4030_line_699 = a;
		boolean xyseries_1_expr86_line_699 = Double.isNaN(p_a_4030_line_699);
		int PROBE_END_LINE_699 = 709;
		if (xyseries_1_expr86_line_699) {
            int PROBE_START_LINE_700 = 700;
			double p_b_4031_line_700 = b;
			int PROBE_END_LINE_700 = 700;
			return p_b_4031_line_700;
        }
        else {
            int PROBE_START_LINE_703 = 708;
			double p_b_4031_line_703 = b;
			boolean xyseries_1_expr87_line_703 = Double.isNaN(p_b_4031_line_703);
			int PROBE_END_LINE_703 = 708;
			if (xyseries_1_expr87_line_703) {
                return a;
            }
            else {
                int PROBE_START_LINE_707 = 707;
				double p_a_4030_line_707 = a;
				double p_b_4031_line_707 = b;
				double xyseries_1_expr88_line_707 = Math.min(p_a_4030_line_707, p_b_4031_line_707);
				int PROBE_END_LINE_707 = 707;
				return xyseries_1_expr88_line_707;
            }
        }
    }

    /**
     * A function to find the maximum of two values, but ignoring any
     * Double.NaN values.
     *
     * @param a  the first value.
     * @param b  the second value.
     *
     * @return The maximum of the two values.
     */
    private double maxIgnoreNaN(double a, double b) {
        int PROBE_START_LINE_722 = 732;
		double p_a_4032_line_722 = a;
		boolean xyseries_1_expr89_line_722 = Double.isNaN(p_a_4032_line_722);
		int PROBE_END_LINE_722 = 732;
		if (xyseries_1_expr89_line_722) {
            int PROBE_START_LINE_723 = 723;
			double p_b_4033_line_723 = b;
			int PROBE_END_LINE_723 = 723;
			return p_b_4033_line_723;
        }
        else {
            int PROBE_START_LINE_726 = 731;
			double p_b_4033_line_726 = b;
			boolean xyseries_1_expr90_line_726 = Double.isNaN(p_b_4033_line_726);
			int PROBE_END_LINE_726 = 731;
			if (xyseries_1_expr90_line_726) {
                return a;
            }
            else {
                int PROBE_START_LINE_730 = 730;
				double p_a_4032_line_730 = a;
				double p_b_4033_line_730 = b;
				double xyseries_1_expr91_line_730 = Math.max(p_a_4032_line_730, p_b_4033_line_730);
				int PROBE_END_LINE_730 = 730;
				return xyseries_1_expr91_line_730;
            }
        }
    }

    /**
     * Updates an item in the series.
     *
     * @param x  the x-value (<code>null</code> not permitted).
     * @param y  the y-value (<code>null</code> permitted).
     *
     * @throws SeriesException if there is no existing item with the specified
     *         x-value.
     */
    public void update(Number x, Number y) {
        int index = indexOf(x);
        if (index < 0) {
            throw new SeriesException("No observation for x = " + x);
        }
        else {
            updateByIndex(index, y);
        }
    }

    /**
     * Adds or updates an item in the series and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param x  the x-value.
     * @param y  the y-value.
     *
     * @return The item that was overwritten, if any.
     *
     * @since 1.0.10
     */
    public XYDataItem addOrUpdate(double x, double y) {
        return addOrUpdate(new Double(x), new Double(y));
    }

    /**
     * Adds or updates an item in the series and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param x  the x-value (<code>null</code> not permitted).
     * @param y  the y-value (<code>null</code> permitted).
     *
     * @return A copy of the overwritten data item, or <code>null</code> if no
     *         item was overwritten.
     */
    public XYDataItem addOrUpdate(Number x, Number y) {
        // defer argument checking
        return addOrUpdate(new XYDataItem(x, y));
    }

    /**
     * Adds or updates an item in the series and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param x  the x-value (<code>null</code> not permitted).
     * @param y  the y-value (<code>null</code> permitted).
     *
     * @return A copy of the overwritten data item, or <code>null</code> if no
     *         item was overwritten.
     *
     * @since 1.0.14
     */
    public XYDataItem addOrUpdate(XYDataItem item) {
        if (item == null) {
            throw new IllegalArgumentException("Null 'item' argument.");
        }
        if (this.allowDuplicateXValues) {
            add(item);
            return null;
        }

        // if we get to here, we know that duplicate X values are not permitted
        XYDataItem overwritten = null;
        int index = indexOf(item.getX());
        if (index >= 0) {
            XYDataItem existing = (XYDataItem) this.data.get(index);
            overwritten = (XYDataItem) existing.clone();
            // figure out if we need to iterate through all the y-values
            boolean iterate = false;
            double oldY = existing.getYValue();
            if (!Double.isNaN(oldY)) {
                iterate = oldY <= this.minY || oldY >= this.maxY;
            }
            existing.setY(item.getY());

            if (iterate) {
                findBoundsByIteration();
            }
            else if (item.getY() != null) {
                double yy = item.getY().doubleValue();
                this.minY = minIgnoreNaN(this.minY, yy);
                this.maxY = minIgnoreNaN(this.maxY, yy);
            }
        }
        else {
            // if the series is sorted, the negative index is a result from
            // Collections.binarySearch() and tells us where to insert the
            // new item...otherwise it will be just -1 and we should just
            // append the value to the list...
            item = (XYDataItem) item.clone();
            if (this.autoSort) {
                this.data.add(-index - 1, item);
            }
            else {
                this.data.add(item);
            }
            updateBoundsForAddedItem(item);

            // check if this addition will exceed the maximum item count...
            if (getItemCount() > this.maximumItemCount) {
                XYDataItem removed = (XYDataItem) this.data.remove(0);
                updateBoundsForRemovedItem(removed);
            }
        }
        fireSeriesChanged();
        return overwritten;
    }

    /**
     * Returns the index of the item with the specified x-value, or a negative
     * index if the series does not contain an item with that x-value.  Be
     * aware that for an unsorted series, the index is found by iterating
     * through all items in the series.
     *
     * @param x  the x-value (<code>null</code> not permitted).
     *
     * @return The index.
     */
    public int indexOf(Number x) {
        if (this.autoSort) {
            return Collections.binarySearch(this.data, new XYDataItem(x, null));
        }
        else {
            for (int i = 0; i < this.data.size(); i++) {
                XYDataItem item = (XYDataItem) this.data.get(i);
                if (item.getX().equals(x)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /**
     * Returns a new array containing the x and y values from this series.
     *
     * @return A new array containing the x and y values from this series.
     *
     * @since 1.0.4
     */
    public double[][] toArray() {
        int itemCount = getItemCount();
        double[][] result = new double[2][itemCount];
        for (int i = 0; i < itemCount; i++) {
            result[0][i] = this.getX(i).doubleValue();
            Number y = getY(i);
            if (y != null) {
                result[1][i] = y.doubleValue();
            }
            else {
                result[1][i] = Double.NaN;
            }
        }
        return result;
    }

    /**
     * Returns a clone of the series.
     *
     * @return A clone of the series.
     *
     * @throws CloneNotSupportedException if there is a cloning problem.
     */
    public Object clone() throws CloneNotSupportedException {
        XYSeries clone = (XYSeries) super.clone();
        clone.data = (List) ObjectUtilities.deepClone(this.data);
        return clone;
    }

    /**
     * Creates a new series by copying a subset of the data in this time series.
     *
     * @param start  the index of the first item to copy.
     * @param end  the index of the last item to copy.
     *
     * @return A series containing a copy of this series from start until end.
     *
     * @throws CloneNotSupportedException if there is a cloning problem.
     */
    public XYSeries createCopy(int start, int end)
            throws CloneNotSupportedException {

        XYSeries copy = (XYSeries) super.clone();
        copy.data = new java.util.ArrayList();
        if (this.data.size() > 0) {
            for (int index = start; index <= end; index++) {
                XYDataItem item = (XYDataItem) this.data.get(index);
                XYDataItem clone = (XYDataItem) item.clone();
                try {
                    copy.add(clone);
                }
                catch (SeriesException e) {
                    System.err.println("Unable to add cloned data item.");
                }
            }
        }
        return copy;

    }

    /**
     * Tests this series for equality with an arbitrary object.
     *
     * @param obj  the object to test against for equality
     *             (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof XYSeries)) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        XYSeries that = (XYSeries) obj;
        if (this.maximumItemCount != that.maximumItemCount) {
            return false;
        }
        if (this.autoSort != that.autoSort) {
            return false;
        }
        if (this.allowDuplicateXValues != that.allowDuplicateXValues) {
            return false;
        }
        if (!ObjectUtilities.equal(this.data, that.data)) {
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
        int result = super.hashCode();
        // it is too slow to look at every data item, so let's just look at
        // the first, middle and last items...
        int count = getItemCount();
        if (count > 0) {
            XYDataItem item = getRawDataItem(0);
            result = 29 * result + item.hashCode();
        }
        if (count > 1) {
            XYDataItem item = getRawDataItem(count - 1);
            result = 29 * result + item.hashCode();
        }
        if (count > 2) {
            XYDataItem item = getRawDataItem(count / 2);
            result = 29 * result + item.hashCode();
        }
        result = 29 * result + this.maximumItemCount;
        result = 29 * result + (this.autoSort ? 1 : 0);
        result = 29 * result + (this.allowDuplicateXValues ? 1 : 0);
        return result;
    }

}

