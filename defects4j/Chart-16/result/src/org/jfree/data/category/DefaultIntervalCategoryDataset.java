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
 * -----------------------------------
 * DefaultIntervalCategoryDataset.java
 * -----------------------------------
 * (C) Copyright 2002-2008, by Jeremy Bowman and Contributors.
 *
 * Original Author:  Jeremy Bowman;
 * Contributor(s):   David Gilbert (for Object Refinery Limited);
 *
 * Changes
 * -------
 * 29-Apr-2002 : Version 1, contributed by Jeremy Bowman (DG);
 * 24-Oct-2002 : Amendments for changes made to the dataset interface (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 08-Mar-2007 : Added equals() and clone() overrides (DG);
 * 20-Jun-2007 : Removed deprecated code (DG);
 * 25-Feb-2008 : Fix for the special case where the dataset is empty, see bug 
 *               1897580 (DG)
 *
 */

package org.jfree.data.category;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ResourceBundle;

import org.jfree.data.DataUtilities;
import org.jfree.data.UnknownKeyException;
import org.jfree.data.general.AbstractSeriesDataset;

/**
 * A convenience class that provides a default implementation of the
 * {@link IntervalCategoryDataset} interface.
 * <p>
 * The standard constructor accepts data in a two dimensional array where the
 * first dimension is the series, and the second dimension is the category.
 */
public class DefaultIntervalCategoryDataset extends AbstractSeriesDataset
        implements IntervalCategoryDataset {

    /** The series keys. */
    private Comparable[] seriesKeys;

    /** The category keys. */
    private Comparable[] categoryKeys;

    /** Storage for the start value data. */
    private Number[][] startData;

    /** Storage for the end value data. */
    private Number[][] endData;

    /**
     * Creates a new dataset using the specified data values and automatically
     * generated series and category keys.
     *
     * @param starts  the starting values for the intervals (<code>null</code>
     *                not permitted).
     * @param ends  the ending values for the intervals (<code>null</code> not
     *                permitted).
     */
    public DefaultIntervalCategoryDataset(double[][] starts, double[][] ends) {
        this(DataUtilities.createNumberArray2D(starts),
                DataUtilities.createNumberArray2D(ends));
    }

    /**
     * Constructs a dataset and populates it with data from the array.
     * <p>
     * The arrays are indexed as data[series][category].  Series and category
     * names are automatically generated - you can change them using the
     * {@link #setSeriesKeys(Comparable[])} and 
     * {@link #setCategoryKeys(Comparable[])} methods.
     *
     * @param starts  the start values data.
     * @param ends  the end values data.
     */
    public DefaultIntervalCategoryDataset(Number[][] starts, Number[][] ends) {
        this(null, null, starts, ends);
    }

    /**
     * Constructs a DefaultIntervalCategoryDataset, populates it with data
     * from the arrays, and uses the supplied names for the series.
     * <p>
     * Category names are generated automatically ("Category 1", "Category 2",
     * etc).
     *
     * @param seriesNames  the series names (if <code>null</code>, series names
     *         will be generated automatically).
     * @param starts  the start values data, indexed as data[series][category].
     * @param ends  the end values data, indexed as data[series][category].
     */
    public DefaultIntervalCategoryDataset(String[] seriesNames,
                                          Number[][] starts,
                                          Number[][] ends) {

        this(seriesNames, null, starts, ends);

    }

    /**
     * Constructs a DefaultIntervalCategoryDataset, populates it with data
     * from the arrays, and uses the supplied names for the series and the
     * supplied objects for the categories.
     *
     * @param seriesKeys  the series keys (if <code>null</code>, series keys
     *         will be generated automatically).
     * @param categoryKeys  the category keys (if <code>null</code>, category 
     *         keys will be generated automatically).
     * @param starts  the start values data, indexed as data[series][category].
     * @param ends  the end values data, indexed as data[series][category].
     */
    public DefaultIntervalCategoryDataset(Comparable[] seriesKeys,
                                          Comparable[] categoryKeys,
                                          Number[][] starts,
                                          Number[][] ends) {

        int PROBE_START_LINE_147 = 147;
											Number[][] p_starts_20_line_147 = starts;
											int PROBE_END_LINE_147 = 147;
		this.startData = p_starts_20_line_147;
        int PROBE_START_LINE_148 = 148;
		Number[][] p_ends_21_line_148 = ends;
		int PROBE_END_LINE_148 = 148;
		this.endData = p_ends_21_line_148;

        int PROBE_START_LINE_150 = 210;
		Number[][] p_starts_20_line_150 = starts;
		boolean default_interval_category_dataset_1_expr12_line_150 = p_starts_20_line_150 != null;
		boolean default_interval_category_dataset_1_expr13_line_150 = true;
		if (default_interval_category_dataset_1_expr12_line_150) {
			Number[][] p_ends_21_line_150 = ends;
			default_interval_category_dataset_1_expr13_line_150 = p_ends_21_line_150 != null;
		}
		boolean default_interval_category_dataset_1_expr11_line_150 = default_interval_category_dataset_1_expr12_line_150
				&& default_interval_category_dataset_1_expr13_line_150;
		int PROBE_END_LINE_150 = 210;
		if (default_interval_category_dataset_1_expr11_line_150) {

            String baseName = "org.jfree.data.resources.DataPackageResources";
            int PROBE_START_LINE_153 = 153;
			String v_base_name_24_line_153 = baseName;
			ResourceBundle default_interval_category_dataset_1_expr14_line_153 = ResourceBundle
					.getBundle(v_base_name_24_line_153);
			int PROBE_END_LINE_153 = 153;
			ResourceBundle resources = default_interval_category_dataset_1_expr14_line_153;

            int PROBE_START_LINE_155 = 155;
			Number[][] p_starts_20_line_155 = starts;
			int q_length_2_line_155 = p_starts_20_line_155.length;
			int PROBE_END_LINE_155 = 155;
			int seriesCount = q_length_2_line_155;
            int PROBE_START_LINE_156 = 162;
			int v_series_count_26_line_156 = seriesCount;
			Number[][] p_ends_21_line_156 = ends;
			int q_length_3_line_156 = p_ends_21_line_156.length;
			boolean default_interval_category_dataset_1_expr15_line_156 = v_series_count_26_line_156 != q_length_3_line_156;
			int PROBE_END_LINE_156 = 162;
			if (default_interval_category_dataset_1_expr15_line_156) {
                String errMsg = "DefaultIntervalCategoryDataset: the number "
                    + "of series in the start value dataset does "
                    + "not match the number of series in the end "
                    + "value dataset.";
                throw new IllegalArgumentException(errMsg);
            }
            int PROBE_START_LINE_163 = 209;
			int v_series_count_26_line_163 = seriesCount;
			boolean default_interval_category_dataset_1_expr16_line_163 = v_series_count_26_line_163 > 0;
			int PROBE_END_LINE_163 = 209;
			if (default_interval_category_dataset_1_expr16_line_163) {

                // set up the series names...
                if (seriesKeys != null) {

                    if (seriesKeys.length != seriesCount) {
                        throw new IllegalArgumentException(
                                "The number of series keys does not "
                                + "match the number of series in the data.");
                    }

                    this.seriesKeys = seriesKeys;
                }
                else {
                    String prefix = resources.getString(
                            "series.default-prefix") + " ";
                    this.seriesKeys = generateKeys(seriesCount, prefix);
                }

                // set up the category names...
                int categoryCount = starts[0].length;
                if (categoryCount != ends[0].length) {
                    String errMsg = "DefaultIntervalCategoryDataset: the "
                                + "number of categories in the start value "
                                + "dataset does not match the number of "
                                + "categories in the end value dataset.";
                    throw new IllegalArgumentException(errMsg);
                }
                if (categoryKeys != null) {
                    if (categoryKeys.length != categoryCount) {
                        throw new IllegalArgumentException(
                                "The number of category keys does not match "
                                + "the number of categories in the data.");
                    }
                    this.categoryKeys = categoryKeys;
                }
                else {
                    String prefix = resources.getString(
                            "categories.default-prefix") + " ";
                    this.categoryKeys = generateKeys(categoryCount, prefix);
                }

            }
            else {
                this.seriesKeys = null;
                this.categoryKeys = null;
            }
        }

    }

    /**
     * Returns the number of series in the dataset (possibly zero).
     *
     * @return The number of series in the dataset.
     * 
     * @see #getRowCount()
     * @see #getCategoryCount()
     */
    public int getSeriesCount() {
        int result = 0;
        if (this.startData != null) {
            result = this.startData.length;
        }
        return result;
    }

    /**
     * Returns a series index.
     *
     * @param seriesKey  the series key.
     *
     * @return The series index.
     * 
     * @see #getRowIndex(Comparable)
     * @see #getSeriesKey(int)
     */
    public int getSeriesIndex(Comparable seriesKey) {
        int PROBE_START_LINE_241 = 241;
		int default_interval_category_dataset_1_expr23_line_241 = -1;
		int PROBE_END_LINE_241 = 241;
		int result = default_interval_category_dataset_1_expr23_line_241;
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_243 = 246;
			int v_i_31_line_242 = i;
			Comparable[] f_series_keys_27_line_242 = this.seriesKeys;
			int default_interval_category_dataset_1_expr26_line_242 = f_series_keys_27_line_242.length;
			boolean default_interval_category_dataset_1_expr25_line_242 = v_i_31_line_242 < default_interval_category_dataset_1_expr26_line_242;
			if (!(default_interval_category_dataset_1_expr25_line_242)) {
				break;
			}
			int PROBE_END_LINE_243 = 246;
			if (seriesKey.equals(this.seriesKeys[i])) {
                result = i;
                break;
            }
        }
        return result;
    }

    /**
     * Returns the name of the specified series.
     *
     * @param series  the index of the required series (zero-based).
     *
     * @return The name of the specified series.
     * 
     * @see #getSeriesIndex(Comparable)
     */
    public Comparable getSeriesKey(int series) {
        if ((series >= getSeriesCount()) || (series < 0)) {
            throw new IllegalArgumentException("No such series : " + series);
        }
        return this.seriesKeys[series];
    }

    /**
     * Sets the names of the series in the dataset.
     *
     * @param seriesKeys  the new keys (<code>null</code> not permitted, the 
     *         length of the array must match the number of series in the 
     *         dataset).
     *         
     * @see #setCategoryKeys(Comparable[])
     */
    public void setSeriesKeys(Comparable[] seriesKeys) {
        if (seriesKeys == null) {
            throw new IllegalArgumentException("Null 'seriesKeys' argument.");
        }
        if (seriesKeys.length != getSeriesCount()) {
            throw new IllegalArgumentException(
                    "The number of series keys does not match the data.");
        }
        this.seriesKeys = seriesKeys;
        fireDatasetChanged();
    }

    /**
     * Returns the number of categories in the dataset.
     *
     * @return The number of categories in the dataset.
     * 
     * @see #getColumnCount()
     */
    public int getCategoryCount() {
        int result = 0;
        if (this.startData != null) {
            if (getSeriesCount() > 0) {
                result = this.startData[0].length;
            }
        }
        return result;
    }
    
    /**
     * Returns a list of the categories in the dataset.  This method supports 
     * the {@link CategoryDataset} interface.
     *
     * @return A list of the categories in the dataset.
     * 
     * @see #getRowKeys()
     */
    public List getColumnKeys() {
        // the CategoryDataset interface expects a list of categories, but
        // we've stored them in an array...
        if (this.categoryKeys == null) {
            return new ArrayList();
        }
        else {
            return Collections.unmodifiableList(Arrays.asList(
                    this.categoryKeys));
        }
    }

    /**
     * Sets the categories for the dataset.
     *
     * @param categoryKeys  an array of objects representing the categories in 
     *                      the dataset.
     *                      
     * @see #getRowKeys()
     * @see #setSeriesKeys(Comparable[])
     */
    public void setCategoryKeys(Comparable[] categoryKeys) {
        if (categoryKeys == null) {
            throw new IllegalArgumentException("Null 'categoryKeys' argument.");
        }
        if (categoryKeys.length != this.startData[0].length) {
            throw new IllegalArgumentException(
                    "The number of categories does not match the data.");
        }
        for (int i = 0; i < categoryKeys.length; i++) {
            if (categoryKeys[i] == null) {
                throw new IllegalArgumentException(
                    "DefaultIntervalCategoryDataset.setCategoryKeys(): "
                    + "null category not permitted.");
            }
        }
        this.categoryKeys = categoryKeys;
        fireDatasetChanged();
    }

    /**
     * Returns the data value for one category in a series.
     * <P>
     * This method is part of the CategoryDataset interface.  Not particularly
     * meaningful for this class...returns the end value.
     * 
     * @param series    The required series (zero based index).
     * @param category  The required category.
     * 
     * @return The data value for one category in a series (null possible).
     * 
     * @see #getEndValue(Comparable, Comparable)
     */
    public Number getValue(Comparable series, Comparable category) {
        int seriesIndex = getSeriesIndex(series);
        if (seriesIndex < 0) {
            throw new UnknownKeyException("Unknown 'series' key.");
        }
        int itemIndex = getColumnIndex(category);
        if (itemIndex < 0) {
            throw new UnknownKeyException("Unknown 'category' key.");
        }
        return getValue(seriesIndex, itemIndex);
    }

    /**
     * Returns the data value for one category in a series.
     * <P>
     * This method is part of the CategoryDataset interface.  Not particularly
     * meaningful for this class...returns the end value.
     *
     * @param series  the required series (zero based index).
     * @param category  the required category.
     *
     * @return The data value for one category in a series (null possible).
     * 
     * @see #getEndValue(int, int)
     */
    public Number getValue(int series, int category) {
        return getEndValue(series, category);
    }

    /**
     * Returns the start data value for one category in a series.
     *
     * @param series  the required series.
     * @param category  the required category.
     *
     * @return The start data value for one category in a series 
     *         (possibly <code>null</code>).
     *         
     * @see #getStartValue(int, int)
     */
    public Number getStartValue(Comparable series, Comparable category) {
        int seriesIndex = getSeriesIndex(series);
        if (seriesIndex < 0) {
            throw new UnknownKeyException("Unknown 'series' key.");
        }
        int itemIndex = getColumnIndex(category);
        if (itemIndex < 0) {
            throw new UnknownKeyException("Unknown 'category' key.");
        }
        return getStartValue(seriesIndex, itemIndex);
    }

    /**
     * Returns the start data value for one category in a series.
     *
     * @param series  the required series (zero based index).
     * @param category  the required category.
     *
     * @return The start data value for one category in a series 
     *         (possibly <code>null</code>).
     *         
     * @see #getStartValue(Comparable, Comparable)
     */
    public Number getStartValue(int series, int category) {

        // check arguments...
        if ((series < 0) || (series >= getSeriesCount())) {
            throw new IllegalArgumentException(
                "DefaultIntervalCategoryDataset.getValue(): "
                + "series index out of range.");
        }

        if ((category < 0) || (category >= getCategoryCount())) {
            throw new IllegalArgumentException(
                "DefaultIntervalCategoryDataset.getValue(): "
                + "category index out of range.");
        }

        // fetch the value...
        return this.startData[series][category];

    }

    /**
     * Returns the end data value for one category in a series.
     *
     * @param series  the required series.
     * @param category  the required category.
     *
     * @return The end data value for one category in a series (null possible).
     * 
     * @see #getEndValue(int, int)
     */
    public Number getEndValue(Comparable series, Comparable category) {
        int seriesIndex = getSeriesIndex(series);
        if (seriesIndex < 0) {
            throw new UnknownKeyException("Unknown 'series' key.");
        }
        int itemIndex = getColumnIndex(category);
        if (itemIndex < 0) {
            throw new UnknownKeyException("Unknown 'category' key.");
        }
        return getEndValue(seriesIndex, itemIndex);
    }

    /**
     * Returns the end data value for one category in a series.
     *
     * @param series  the required series (zero based index).
     * @param category  the required category.
     *
     * @return The end data value for one category in a series (null possible).
     * 
     * @see #getEndValue(Comparable, Comparable)
     */
    public Number getEndValue(int series, int category) {
        if ((series < 0) || (series >= getSeriesCount())) {
            throw new IllegalArgumentException(
                "DefaultIntervalCategoryDataset.getValue(): "
                + "series index out of range.");
        }

        if ((category < 0) || (category >= getCategoryCount())) {
            throw new IllegalArgumentException(
                "DefaultIntervalCategoryDataset.getValue(): "
                + "category index out of range.");
        }

        return this.endData[series][category];
    }

    /**
     * Sets the start data value for one category in a series.
     * 
     * @param series  the series (zero-based index).
     * @param category  the category.
     * 
     * @param value The value.
     * 
     * @see #setEndValue(int, Comparable, Number)
     */
    public void setStartValue(int series, Comparable category, Number value) {

        // does the series exist?
        if ((series < 0) || (series > getSeriesCount() - 1)) {
            throw new IllegalArgumentException(
                "DefaultIntervalCategoryDataset.setValue: "
                + "series outside valid range.");
        }

        // is the category valid?
        int categoryIndex = getCategoryIndex(category);
        if (categoryIndex < 0) {
            throw new IllegalArgumentException(
                "DefaultIntervalCategoryDataset.setValue: "
                + "unrecognised category.");
        }

        // update the data...
        this.startData[series][categoryIndex] = value;
        fireDatasetChanged();

    }

    /**
     * Sets the end data value for one category in a series.
     *
     * @param series  the series (zero-based index).
     * @param category  the category.
     *
     * @param value the value.
     * 
     * @see #setStartValue(int, Comparable, Number)
     */
    public void setEndValue(int series, Comparable category, Number value) {

        // does the series exist?
        if ((series < 0) || (series > getSeriesCount() - 1)) {
            throw new IllegalArgumentException(
                "DefaultIntervalCategoryDataset.setValue: "
                + "series outside valid range.");
        }

        // is the category valid?
        int categoryIndex = getCategoryIndex(category);
        if (categoryIndex < 0) {
            throw new IllegalArgumentException(
                "DefaultIntervalCategoryDataset.setValue: "
                + "unrecognised category.");
        }

        // update the data...
        this.endData[series][categoryIndex] = value;
        fireDatasetChanged();

    }

    /**
     * Returns the index for the given category.
     *
     * @param category  the category (<code>null</code> not permitted).
     *
     * @return The index.
     * 
     * @see #getColumnIndex(Comparable)
     */
    public int getCategoryIndex(Comparable category) {
        int PROBE_START_LINE_573 = 573;
		int default_interval_category_dataset_1_expr30_line_573 = -1;
		int PROBE_END_LINE_573 = 573;
		int result = default_interval_category_dataset_1_expr30_line_573;
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_575 = 578;
			int v_i_56_line_574 = i;
			Comparable[] f_category_keys_28_line_574 = this.categoryKeys;
			int default_interval_category_dataset_1_expr33_line_574 = f_category_keys_28_line_574.length;
			boolean default_interval_category_dataset_1_expr32_line_574 = v_i_56_line_574 < default_interval_category_dataset_1_expr33_line_574;
			if (!(default_interval_category_dataset_1_expr32_line_574)) {
				break;
			}
			int PROBE_END_LINE_575 = 578;
			if (category.equals(this.categoryKeys[i])) {
                result = i;
                break;
            }
        }
        return result;
    }

    /**
     * Generates an array of keys, by appending a space plus an integer
     * (starting with 1) to the supplied prefix string.
     *
     * @param count  the number of keys required.
     * @param prefix  the name prefix.
     *
     * @return An array of <i>prefixN</i> with N = { 1 .. count}.
     */
    private Comparable[] generateKeys(int count, String prefix) {
        Comparable[] result = new Comparable[count];
        String name;
        for (int i = 0; i < count; i++) {
            name = prefix + (i + 1);
            result[i] = name;
        }
        return result;
    }

    /**
     * Returns a column key.
     *
     * @param column  the column index.
     *
     * @return The column key.
     * 
     * @see #getRowKey(int)
     */
    public Comparable getColumnKey(int column) {
        return this.categoryKeys[column];
    }

    /**
     * Returns a column index.
     *
     * @param columnKey  the column key (<code>null</code> not permitted).
     *
     * @return The column index.
     * 
     * @see #getCategoryIndex(Comparable)
     */
    public int getColumnIndex(Comparable columnKey) {
        if (columnKey == null) {
            throw new IllegalArgumentException("Null 'columnKey' argument.");
        }
        int PROBE_START_LINE_628 = 628;
		Comparable p_column_key_60_line_628 = columnKey;
		int default_interval_category_dataset_1_expr37_line_628 = getCategoryIndex(p_column_key_60_line_628);
		int PROBE_END_LINE_628 = 628;
		return default_interval_category_dataset_1_expr37_line_628;
    }

    /**
     * Returns a row index.
     *
     * @param rowKey  the row key.
     *
     * @return The row index.
     * 
     * @see #getSeriesIndex(Comparable)
     */
    public int getRowIndex(Comparable rowKey) {
        int PROBE_START_LINE_641 = 641;
		Comparable p_row_key_61_line_641 = rowKey;
		int default_interval_category_dataset_1_expr38_line_641 = getSeriesIndex(p_row_key_61_line_641);
		int PROBE_END_LINE_641 = 641;
		return default_interval_category_dataset_1_expr38_line_641;
    }

    /**
     * Returns a list of the series in the dataset.  This method supports the 
     * {@link CategoryDataset} interface.
     *
     * @return A list of the series in the dataset.
     * 
     * @see #getColumnKeys()
     */
    public List getRowKeys() {
        // the CategoryDataset interface expects a list of series, but
        // we've stored them in an array...
        if (this.seriesKeys == null) {
            return new java.util.ArrayList();
        }
        else {
            return Collections.unmodifiableList(Arrays.asList(this.seriesKeys));
        }
    }

    /**
     * Returns the name of the specified series.
     *
     * @param row  the index of the required row/series (zero-based).
     *
     * @return The name of the specified series.
     * 
     * @see #getColumnKey(int)
     */
    public Comparable getRowKey(int row) {
        if ((row >= getRowCount()) || (row < 0)) {
            throw new IllegalArgumentException(
                    "The 'row' argument is out of bounds.");
        }
        return this.seriesKeys[row];
    }

    /**
     * Returns the number of categories in the dataset.  This method is part of 
     * the {@link CategoryDataset} interface.
     *
     * @return The number of categories in the dataset.
     * 
     * @see #getCategoryCount()
     * @see #getRowCount()
     */
    public int getColumnCount() {
        int PROBE_START_LINE_690 = 690;
		Comparable[] f_category_keys_28_line_690 = this.categoryKeys;
		int default_interval_category_dataset_1_expr39_line_690 = f_category_keys_28_line_690.length;
		int PROBE_END_LINE_690 = 690;
		return default_interval_category_dataset_1_expr39_line_690;
    }

    /**
     * Returns the number of series in the dataset (possibly zero).
     *
     * @return The number of series in the dataset.
     * 
     * @see #getSeriesCount()
     * @see #getColumnCount()
     */
    public int getRowCount() {
        return this.seriesKeys.length;
    }
    
    /**
     * Tests this dataset for equality with an arbitrary object.
     * 
     * @param obj  the object (<code>null</code> permitted).
     * 
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DefaultIntervalCategoryDataset)) {
            return false;
        }
        DefaultIntervalCategoryDataset that 
                = (DefaultIntervalCategoryDataset) obj;
        if (!Arrays.equals(this.seriesKeys, that.seriesKeys)) {
            return false;
        }
        if (!Arrays.equals(this.categoryKeys, that.categoryKeys)) {
            return false;
        }
        if (!equal(this.startData, that.startData)) {
            return false;
        }
        if (!equal(this.endData, that.endData)) {
            return false;
        }
        // seem to be the same...
        return true;
    }

    /**
     * Returns a clone of this dataset.
     * 
     * @return A clone.
     * 
     * @throws CloneNotSupportedException if there is a problem cloning the
     *         dataset.
     */
    public Object clone() throws CloneNotSupportedException {
        DefaultIntervalCategoryDataset clone 
                = (DefaultIntervalCategoryDataset) super.clone();
        int PROBE_START_LINE_748 = 748;
		Comparable[] f_category_keys_28_line_748 = this.categoryKeys;
		Comparable[] default_interval_category_dataset_1_expr45_line_748 = f_category_keys_28_line_748.clone();
		int PROBE_END_LINE_748 = 748;
		clone.categoryKeys = (Comparable[]) default_interval_category_dataset_1_expr45_line_748;
        clone.seriesKeys = (Comparable[]) this.seriesKeys.clone();
        clone.startData = clone(this.startData);
        clone.endData = clone(this.endData);
        return clone;
    }
    
    /**
     * Tests two double[][] arrays for equality.
     * 
     * @param array1  the first array (<code>null</code> permitted).
     * @param array2  the second arrray (<code>null</code> permitted).
     * 
     * @return A boolean.
     */
    private static boolean equal(Number[][] array1, Number[][] array2) {
        if (array1 == null) {
            return (array2 == null);
        }
        if (array2 == null) {
            return false;
        }
        if (array1.length != array2.length) {
            return false;
        }
        for (int i = 0; i < array1.length; i++) {
            if (!Arrays.equals(array1[i], array2[i])) {
                return false;
            }
        }
        return true;
    }
    
    /**
     * Clones a two dimensional array of <code>Number</code> objects.
     * 
     * @param array  the array (<code>null</code> not permitted).
     * 
     * @return A clone of the array.
     */
    private static Number[][] clone(Number[][] array) {
        if (array == null) {
            throw new IllegalArgumentException("Null 'array' argument.");
        }
        Number[][] result = new Number[array.length][];
        for (int i = 0; i < array.length; i++) {
            Number[] child = array[i];
            Number[] copychild = new Number[child.length];
            System.arraycopy(child, 0, copychild, 0, child.length);
            result[i] = copychild;
        }
        return result;
    }

}
