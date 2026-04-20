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
 * ---------------
 * XYDataItem.java
 * ---------------
 * (C) Copyright 2003-2009, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 05-Aug-2003 : Renamed XYDataPair --> XYDataItem (DG);
 * 03-Feb-2004 : Fixed bug in equals() method (DG);
 * 21-Feb-2005 : Added setY(double) method (DG);
 * 21-Jun-2007 : Removed JCommon dependencies (DG);
 * 30-Nov-2007 : Implemented getXValue() and getYValue(), plus toString() for
 *               debugging use (DG);
 * 10-Jun-2009 : Reimplemented cloning (DG);
 * 29-Jun-2009 : Added 'selected' attribute (DG);
 *
 */

package org.jfree.data.xy;

import java.io.Serializable;

import org.jfree.chart.util.HashUtilities;
import org.jfree.chart.util.ObjectUtilities;

/**
 * Represents one (x, y) data item for an {@link XYSeries}.  Note that
 * subclasses are REQUIRED to support cloning.
 */
public class XYDataItem implements Cloneable, Comparable, Serializable {

    /** For serialization. */
    private static final long serialVersionUID = 2751513470325494890L;

    /** The x-value (<code>null</code> not permitted). */
    private Number x;

    /** The y-value. */
    private Number y;

    /**
     * A flag that indicates whether or not the item is "selected".
     *
     * @since 1.2.0
     */
    private boolean selected;

    /**
     * Constructs a new data item.
     *
     * @param x  the x-value (<code>null</code> NOT permitted).
     * @param y  the y-value (<code>null</code> permitted).
     */
    public XYDataItem(Number x, Number y) {
        int PROBE_START_LINE_84 = 86;
		Number p_x_3964_line_84 = x;
		boolean xydata_item_1_expr1_line_84 = p_x_3964_line_84 == null;
		int PROBE_END_LINE_84 = 86;
		if (xydata_item_1_expr1_line_84) {
            throw new IllegalArgumentException("Null 'x' argument.");
        }
        int PROBE_START_LINE_87 = 87;
		Number p_x_3964_line_87 = x;
		int PROBE_END_LINE_87 = 87;
		this.x = p_x_3964_line_87;
        int PROBE_START_LINE_88 = 88;
		Number p_y_3965_line_88 = y;
		int PROBE_END_LINE_88 = 88;
		this.y = p_y_3965_line_88;
        this.selected = false;
    }

    /**
     * Constructs a new data item.
     *
     * @param x  the x-value.
     * @param y  the y-value.
     */
    public XYDataItem(double x, double y) {
        this(new Double(x), new Double(y));
    }

    /**
     * Returns the x-value.
     *
     * @return The x-value (never <code>null</code>).
     */
    public Number getX() {
        int PROBE_START_LINE_108 = 108;
		Number f_x_3966_line_108 = this.x;
		int PROBE_END_LINE_108 = 108;
		return f_x_3966_line_108;
    }

    /**
     * Returns the x-value as a double primitive.
     *
     * @return The x-value.
     *
     * @see #getX()
     * @see #getYValue()
     *
     * @since 1.0.9
     */
    public double getXValue() {
        int PROBE_START_LINE_123 = 123;
		Number f_x_3966_line_123 = this.x;
		double xydata_item_1_expr13_line_123 = f_x_3966_line_123.doubleValue();
		int PROBE_END_LINE_123 = 123;
		// this.x is not allowed to be null...
        return xydata_item_1_expr13_line_123;
    }

    /**
     * Returns the y-value.
     *
     * @return The y-value (possibly <code>null</code>).
     */
    public Number getY() {
        int PROBE_START_LINE_132 = 132;
		Number f_y_3967_line_132 = this.y;
		int PROBE_END_LINE_132 = 132;
		return f_y_3967_line_132;
    }

    /**
     * Returns the y-value as a double primitive.
     *
     * @return The y-value.
     *
     * @see #getY()
     * @see #getXValue()
     *
     * @since 1.0.9
     */
    public double getYValue() {
        int PROBE_START_LINE_146 = 146;
		double q_na_n_90_line_146 = Double.NaN;
		int PROBE_END_LINE_146 = 146;
		double result = q_na_n_90_line_146;
        int PROBE_START_LINE_147 = 149;
		Number f_y_3967_line_147 = this.y;
		boolean xydata_item_1_expr18_line_147 = f_y_3967_line_147 != null;
		int PROBE_END_LINE_147 = 149;
		if (xydata_item_1_expr18_line_147) {
            int PROBE_START_LINE_148 = 148;
			Number f_y_3967_line_148 = this.y;
			double xydata_item_1_expr22_line_148 = f_y_3967_line_148.doubleValue();
			int PROBE_END_LINE_148 = 148;
			result = xydata_item_1_expr22_line_148;
        }
        int PROBE_START_LINE_150 = 150;
		double v_result_3971_line_150 = result;
		int PROBE_END_LINE_150 = 150;
		return v_result_3971_line_150;
    }

    /**
     * Sets the y-value for this data item.  Note that there is no
     * corresponding method to change the x-value.
     *
     * @param y  the new y-value.
     */
    public void setY(double y) {
        setY(new Double(y));
    }

    /**
     * Sets the y-value for this data item.  Note that there is no
     * corresponding method to change the x-value.
     *
     * @param y  the new y-value (<code>null</code> permitted).
     */
    public void setY(Number y) {
        this.y = y;
    }

    /**
     * Returns <code>true</code> if the data item is selected, and
     * <code>false</code> otherwise.
     *
     * @return A boolean.
     *
     * @see #setSelected(boolean)
     *
     * @since 1.2.0
     */
    public boolean isSelected() {
        return this.selected;
    }

    /**
     * Sets the selection state for this item.
     *
     * @param selected  the new selection state.
     *
     * @see #isSelected()
     *
     * @since 1.2.0
     */
    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    /**
     * Returns an integer indicating the order of this object relative to
     * another object.
     * <P>
     * For the order we consider only the x-value:
     * negative == "less-than", zero == "equal", positive == "greater-than".
     *
     * @param o1  the object being compared to.
     *
     * @return An integer indicating the order of this data pair object
     *      relative to another object.
     */
    public int compareTo(Object o1) {

        int result = 0;

        int PROBE_START_LINE_218 = 240;
		Object p_o_1_3975_line_218 = o1;
		boolean xydata_item_1_expr25_line_218 = p_o_1_3975_line_218 instanceof XYDataItem;
		int PROBE_END_LINE_218 = 240;
		// CASE 1 : Comparing to another TimeSeriesDataPair object
        // -------------------------------------------------------
        if (xydata_item_1_expr25_line_218) {
            int PROBE_START_LINE_219 = 219;
			Object p_o_1_3975_line_219 = o1;
			int PROBE_END_LINE_219 = 219;
			XYDataItem dataItem = (XYDataItem) p_o_1_3975_line_219;
            int PROBE_START_LINE_220 = 221;
			Number f_x_3966_line_220 = this.x;
			double xydata_item_1_expr28_line_220 = f_x_3966_line_220.doubleValue();
			double xydata_item_1_expr27_line_220 = xydata_item_1_expr28_line_220 - dataItem.getX().doubleValue();
			int PROBE_END_LINE_220 = 221;
			double compare = xydata_item_1_expr27_line_220;
            int PROBE_START_LINE_222 = 232;
			double v_compare_3977_line_222 = compare;
			boolean xydata_item_1_expr31_line_222 = v_compare_3977_line_222 > 0.0;
			int PROBE_END_LINE_222 = 232;
			if (xydata_item_1_expr31_line_222) {
                result = 1;
            }
            else {
                int PROBE_START_LINE_226 = 231;
				double v_compare_3977_line_226 = compare;
				boolean xydata_item_1_expr32_line_226 = v_compare_3977_line_226 < 0.0;
				int PROBE_END_LINE_226 = 231;
				if (xydata_item_1_expr32_line_226) {
                    int PROBE_START_LINE_227 = 227;
					int xydata_item_1_expr34_line_227 = -1;
					int PROBE_END_LINE_227 = 227;
					result = xydata_item_1_expr34_line_227;
                }
                else {
                    result = 0;
                }
            }
        }

        // CASE 2 : Comparing to a general object
        // ---------------------------------------------
        else {
            // consider time periods to be ordered after general objects
            result = 1;
        }

        int PROBE_START_LINE_242 = 242;
		int v_result_3978_line_242 = result;
		int PROBE_END_LINE_242 = 242;
		return v_result_3978_line_242;

    }

    /**
     * Returns a clone of this object.
     *
     * @return A clone.
     */
    public Object clone() {
        Object clone = null;
        try {
            int PROBE_START_LINE_254 = 254;
			Object xydata_item_1_expr36_line_254 = super.clone();
			int PROBE_END_LINE_254 = 254;
			clone = xydata_item_1_expr36_line_254;
        }
        catch (CloneNotSupportedException e) { // won't get here...
            e.printStackTrace();
        }
        int PROBE_START_LINE_259 = 259;
		Object v_clone_3979_line_259 = clone;
		int PROBE_END_LINE_259 = 259;
		return v_clone_3979_line_259;
    }

    /**
     * Tests if this object is equal to another.
     *
     * @param obj  the object to test against for equality (<code>null</code>
     *             permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof XYDataItem)) {
            return false;
        }
        XYDataItem that = (XYDataItem) obj;
        if (!this.x.equals(that.x)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.y, that.y)) {
            return false;
        }
        if (this.selected != that.selected) {
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
        result = this.x.hashCode();
        result = 29 * result + (this.y != null ? this.y.hashCode() : 0);
        result = HashUtilities.hashCode(result, this.selected);
        return result;
    }

    /**
     * Returns a string representing this instance, primarily for debugging
     * use.
     *
     * @return A string.
     */
    public String toString() {
        return "[" + getXValue() + ", " + getYValue() + "]";
    }

}
