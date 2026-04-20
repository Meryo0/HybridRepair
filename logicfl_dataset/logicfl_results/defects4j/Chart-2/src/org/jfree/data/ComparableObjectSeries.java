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
 * ---------------------------
 * ComparableObjectSeries.java
 * ---------------------------
 * (C) Copyright 2006-2008, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 19-Oct-2006 : New class (DG);
 * 21-Jun-2007 : Removed JCommon dependencies (DG);
 * 31-Oct-2007 : Implemented faster hashCode() (DG);
 * 27-Nov-2007 : Changed clear() from protected to public (DG);
 *
 */

package org.jfree.data;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import org.jfree.chart.util.ObjectUtilities;
import org.jfree.data.general.Series;
import org.jfree.data.event.SeriesChangeEvent;
import org.jfree.data.general.SeriesException;

/**
 * A (possibly ordered) list of (Comparable, Object) data items.
 *
 * @since 1.0.3
 */
public class ComparableObjectSeries extends Series
        implements Cloneable, Serializable {

    /** Storage for the data items in the series. */
    protected List data;

    int PROBE_START_LINE_66 = 67;

	private int q_max_value_1_line_67 = Integer.MAX_VALUE;

	int PROBE_END_LINE_66 = 67;

	/** The maximum number of items for the series. */
    private int maximumItemCount = q_max_value_1_line_67;

    /** A flag that controls whether the items are automatically sorted. */
    private boolean autoSort;

    /** A flag that controls whether or not duplicate x-values are allowed. */
    private boolean allowDuplicateXValues;

    /**
     * Creates a new empty series.  By default, items added to the series will
     * be sorted into ascending order by x-value, and duplicate x-values will
     * be allowed (these defaults can be modified with another constructor.
     *
     * @param key  the series key (<code>null</code> not permitted).
     */
    public ComparableObjectSeries(Comparable key) {
        this(key, true, true);
    }

    /**
     * Constructs a new series that contains no data.  You can specify
     * whether or not duplicate x-values are allowed for the series.
     *
     * @param key  the series key (<code>null</code> not permitted).
     * @param autoSort  a flag that controls whether or not the items in the
     *                  series are sorted.
     * @param allowDuplicateXValues  a flag that controls whether duplicate
     *                               x-values are allowed.
     */
    public ComparableObjectSeries(Comparable key, boolean autoSort,
            boolean allowDuplicateXValues) {
        super(key);
        this.data = new java.util.ArrayList();
        int PROBE_START_LINE_100 = 100;
		boolean p_auto_sort_11_line_100 = autoSort;
		int PROBE_END_LINE_100 = 100;
		this.autoSort = p_auto_sort_11_line_100;
        int PROBE_START_LINE_101 = 101;
		boolean p_allow_duplicate_xvalues_12_line_101 = allowDuplicateXValues;
		int PROBE_END_LINE_101 = 101;
		this.allowDuplicateXValues = p_allow_duplicate_xvalues_12_line_101;
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
     */
    public int getItemCount() {
        int PROBE_START_LINE_131 = 131;
		java.util.List f_data_13_line_131 = this.data;
		int comparable_object_series_1_expr12_line_131 = f_data_13_line_131.size();
		int PROBE_END_LINE_131 = 131;
		return comparable_object_series_1_expr12_line_131;
    }

    /**
     * Returns the maximum number of items that will be retained in the series.
     * The default value is <code>Integer.MAX_VALUE</code>.
     *
     * @return The maximum item count.
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
     * all registered listeners.
     *
     * @param maximum  the maximum number of items for the series.
     */
    public void setMaximumItemCount(int maximum) {
        this.maximumItemCount = maximum;
        boolean dataRemoved = false;
        while (this.data.size() > maximum) {
            this.data.remove(0);
            dataRemoved = true;
        }
        if (dataRemoved) {
            fireSeriesChanged();
        }
    }

    /**
     * Adds new data to the series and sends a {@link SeriesChangeEvent} to
     * all registered listeners.
     * <P>
     * Throws an exception if the x-value is a duplicate AND the
     * allowDuplicateXValues flag is false.
     *
     * @param x  the x-value (<code>null</code> not permitted).
     * @param y  the y-value (<code>null</code> permitted).
     */
    protected void add(Comparable x, Object y) {
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
    protected void add(Comparable x, Object y, boolean notify) {
        // delegate argument checking to XYDataItem...
        ComparableObjectItem item = new ComparableObjectItem(x, y);
        add(item, notify);
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
    protected void add(ComparableObjectItem item, boolean notify) {

        int PROBE_START_LINE_216 = 218;
		org.jfree.data.ComparableObjectItem p_item_22_line_216 = item;
		boolean comparable_object_series_1_expr15_line_216 = p_item_22_line_216 == null;
		int PROBE_END_LINE_216 = 218;
		if (comparable_object_series_1_expr15_line_216) {
            throw new IllegalArgumentException("Null 'item' argument.");
        }

        int PROBE_START_LINE_220 = 255;
		boolean f_auto_sort_14_line_220 = this.autoSort;
		int PROBE_END_LINE_220 = 255;
		if (f_auto_sort_14_line_220) {
            int PROBE_START_LINE_221 = 221;
			java.util.List f_data_13_line_221 = this.data;
			org.jfree.data.ComparableObjectItem p_item_22_line_221 = item;
			int comparable_object_series_1_expr18_line_221 = Collections.binarySearch(f_data_13_line_221,
					p_item_22_line_221);
			int PROBE_END_LINE_221 = 221;
			int index = comparable_object_series_1_expr18_line_221;
            int PROBE_START_LINE_222 = 243;
			int v_index_24_line_222 = index;
			boolean comparable_object_series_1_expr21_line_222 = v_index_24_line_222 < 0;
			int PROBE_END_LINE_222 = 243;
			if (comparable_object_series_1_expr21_line_222) {
                int PROBE_START_LINE_223 = 223;
				java.util.List f_data_13_line_223 = this.data;
				int v_index_24_line_223 = index;
				int comparable_object_series_1_expr26_line_223 = -v_index_24_line_223;
				int comparable_object_series_1_expr23_line_223 = comparable_object_series_1_expr26_line_223 - 1;
				org.jfree.data.ComparableObjectItem p_item_22_line_223 = item;
				int PROBE_END_LINE_223 = 223;
				f_data_13_line_223.add(comparable_object_series_1_expr23_line_223, p_item_22_line_223);
            }
            else {
                if (this.allowDuplicateXValues) {
                    // need to make sure we are adding *after* any duplicates
                    int size = this.data.size();
                    while (index < size
                           && item.compareTo(this.data.get(index)) == 0) {
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
                int index = indexOf(item.getComparable());
                if (index >= 0) {
                    throw new SeriesException("X-value already exists.");
                }
            }
            this.data.add(item);
        }
        int PROBE_START_LINE_256 = 258;
		int comparable_object_series_1_expr28_line_256 = getItemCount();
		int f_maximum_item_count_8_line_256 = this.maximumItemCount;
		boolean comparable_object_series_1_expr27_line_256 = comparable_object_series_1_expr28_line_256 > f_maximum_item_count_8_line_256;
		int PROBE_END_LINE_256 = 258;
		if (comparable_object_series_1_expr27_line_256) {
            this.data.remove(0);
        }
        int PROBE_START_LINE_259 = 261;
		boolean p_notify_23_line_259 = notify;
		int PROBE_END_LINE_259 = 261;
		if (p_notify_23_line_259) {
            fireSeriesChanged();
        }
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
    public int indexOf(Comparable x) {
        if (this.autoSort) {
            return Collections.binarySearch(this.data, new ComparableObjectItem(
                    x, null));
        }
        else {
            for (int i = 0; i < this.data.size(); i++) {
                ComparableObjectItem item = (ComparableObjectItem)
                        this.data.get(i);
                if (item.getComparable().equals(x)) {
                    return i;
                }
            }
            return -1;
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
    protected void update(Comparable x, Object y) {
        int index = indexOf(x);
        if (index < 0) {
            throw new SeriesException("No observation for x = " + x);
        }
        else {
            ComparableObjectItem item = getDataItem(index);
            item.setObject(y);
            fireSeriesChanged();
        }
    }

    /**
     * Updates the value of an item in the series and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param index  the item (zero based index).
     * @param y  the new value (<code>null</code> permitted).
     */
    protected void updateByIndex(int index, Object y) {
        ComparableObjectItem item = getDataItem(index);
        item.setObject(y);
        fireSeriesChanged();
    }

    /**
     * Return the data item with the specified index.
     *
     * @param index  the index.
     *
     * @return The data item with the specified index.
     */
    protected ComparableObjectItem getDataItem(int index) {
        int PROBE_START_LINE_333 = 333;
		java.util.List f_data_13_line_333 = this.data;
		int p_index_30_line_333 = index;
		Object comparable_object_series_1_expr33_line_333 = f_data_13_line_333.get(p_index_30_line_333);
		int PROBE_END_LINE_333 = 333;
		return (ComparableObjectItem) comparable_object_series_1_expr33_line_333;
    }

    /**
     * Deletes a range of items from the series and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param start  the start index (zero-based).
     * @param end  the end index (zero-based).
     */
    protected void delete(int start, int end) {
        for (int i = start; i <= end; i++) {
            this.data.remove(start);
        }
        fireSeriesChanged();
    }

    /**
     * Removes all data items from the series and, unless the series is
     * already empty, sends a {@link SeriesChangeEvent} to all registered
     * listeners.
     */
    public void clear() {
        if (this.data.size() > 0) {
            this.data.clear();
            fireSeriesChanged();
        }
    }

    /**
     * Removes the item at the specified index and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param index  the index.
     *
     * @return The item removed.
     */
    protected ComparableObjectItem remove(int index) {
        ComparableObjectItem result = (ComparableObjectItem) this.data.remove(
                index);
        fireSeriesChanged();
        return result;
    }

    /**
     * Removes the item with the specified x-value and sends a
     * {@link SeriesChangeEvent} to all registered listeners.
     *
     * @param x  the x-value.

     * @return The item removed.
     */
    public ComparableObjectItem remove(Comparable x) {
        return remove(indexOf(x));
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
        if (!(obj instanceof ComparableObjectSeries)) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        ComparableObjectSeries that = (ComparableObjectSeries) obj;
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
            ComparableObjectItem item = getDataItem(0);
            result = 29 * result + item.hashCode();
        }
        if (count > 1) {
            ComparableObjectItem item = getDataItem(count - 1);
            result = 29 * result + item.hashCode();
        }
        if (count > 2) {
            ComparableObjectItem item = getDataItem(count / 2);
            result = 29 * result + item.hashCode();
        }
        result = 29 * result + this.maximumItemCount;
        result = 29 * result + (this.autoSort ? 1 : 0);
        result = 29 * result + (this.allowDuplicateXValues ? 1 : 0);
        return result;
    }

}
