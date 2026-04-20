/* ===========================================================
 * JFreeChart : a free chart library for the Java(tm) platform
 * ===========================================================
 *
 * (C) Copyright 2000-2007, by Object Refinery Limited and Contributors.
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
 * ------------------
 * DataUtilities.java
 * ------------------
 * (C) Copyright 2003-2007, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 05-Mar-2003 : Version 1 (DG);
 * 03-Mar-2005 : Moved createNumberArray() and createNumberArray2D() methods
 *               from the DatasetUtilities class (DG);
 * 17-May-2005 : Added calculateColumnTotal() and calculateRowTotal() 
 *               methods (DG);
 * 
 */

package org.jfree.data;

import org.jfree.data.general.DatasetUtilities;

/**
 * Utility methods for use with some of the data classes (but not the datasets, 
 * see {@link DatasetUtilities}).
 */
public abstract class DataUtilities {

    /**
     * Returns the total of the values in one column of the supplied data
     * table.
     * 
     * @param data  the table of values (<code>null</code> not permitted).
     * @param column  the column index (zero-based).
     * 
     * @return The total of the values in the specified column.
     */
    public static double calculateColumnTotal(Values2D data, int column) {
        double total = 0.0;
        int rowCount = data.getRowCount();
        for (int r = 0; r < rowCount; r++) {
            Number n = data.getValue(r, column);
            if (n != null) {
                total += n.doubleValue();   
            }
        }
        return total;
    }
    
    /**
     * Returns the total of the values in one row of the supplied data
     * table.
     * 
     * @param data  the table of values (<code>null</code> not permitted).
     * @param row  the row index (zero-based).
     * 
     * @return The total of the values in the specified row.
     */
    public static double calculateRowTotal(Values2D data, int row) {
        double total = 0.0;
        int columnCount = data.getColumnCount();
        for (int c = 0; c < columnCount; c++) {
            Number n = data.getValue(row, c);
            if (n != null) {
                total += n.doubleValue();   
            }
        }
        return total;
    }
    
    /**
     * Constructs an array of <code>Number</code> objects from an array of 
     * <code>double</code> primitives.
     *
     * @param data  the data (<code>null</code> not permitted).
     *
     * @return An array of <code>Double</code>.
     */
    public static Number[] createNumberArray(double[] data) {
        if (data == null) {
            throw new IllegalArgumentException("Null 'data' argument.");   
        }
        Number[] result = new Number[data.length];
        for (int i = 0; i < data.length; i++) {
            result[i] = new Double(data[i]);
        }
        return result;
    }

    /**
     * Constructs an array of arrays of <code>Number</code> objects from a 
     * corresponding structure containing <code>double</code> primitives.
     *
     * @param data  the data (<code>null</code> not permitted).
     *
     * @return An array of <code>Double</code>.
     */
    public static Number[][] createNumberArray2D(double[][] data) {
        int PROBE_START_LINE_125 = 127;
		double[][] p_data_6_line_125 = data;
		boolean data_utilities_1_expr1_line_125 = p_data_6_line_125 == null;
		int PROBE_END_LINE_125 = 127;
		if (data_utilities_1_expr1_line_125) {
            throw new IllegalArgumentException("Null 'data' argument.");   
        }
        int PROBE_START_LINE_128 = 128;
		double[][] p_data_6_line_128 = data;
		int q_length_1_line_128 = p_data_6_line_128.length;
		int PROBE_END_LINE_128 = 128;
		int l1 = q_length_1_line_128;
        int PROBE_START_LINE_129 = 129;
		int v_l_1_7_line_129 = l1;
		int PROBE_END_LINE_129 = 129;
		Number[][] result = new Number[v_l_1_7_line_129][];
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_131 = 131;
			int v_i_9_line_130 = i;
			int v_l_1_7_line_130 = l1;
			boolean data_utilities_1_expr4_line_130 = v_i_9_line_130 < v_l_1_7_line_130;
			if (!(data_utilities_1_expr4_line_130)) {
				break;
			}
			int PROBE_END_LINE_131 = 131;
			result[i] = createNumberArray(data[i]);
        }
        int PROBE_START_LINE_133 = 133;
		Number[][] v_result_8_line_133 = result;
		int PROBE_END_LINE_133 = 133;
		return v_result_8_line_133;
    }

    /**
     * Returns a {@link KeyedValues} instance that contains the cumulative 
     * percentage values for the data in another {@link KeyedValues} instance.
     * <p>
     * The percentages are values between 0.0 and 1.0 (where 1.0 = 100%).
     *
     * @param data  the data (<code>null</code> not permitted).
     *
     * @return The cumulative percentages.
     */
    public static KeyedValues getCumulativePercentages(KeyedValues data) {
        if (data == null) {
            throw new IllegalArgumentException("Null 'data' argument.");   
        }
        DefaultKeyedValues result = new DefaultKeyedValues();
        double total = 0.0;
        for (int i = 0; i < data.getItemCount(); i++) {
            Number v = data.getValue(i);
            if (v != null) {
                total = total + v.doubleValue();
            }
        }
        double runningTotal = 0.0;
        for (int i = 0; i < data.getItemCount(); i++) {
            Number v = data.getValue(i);
            if (v != null) {
                runningTotal = runningTotal + v.doubleValue();
            }
            result.addValue(data.getKey(i), new Double(runningTotal / total));
        }
        return result;
    }

}
