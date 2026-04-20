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
 * -------------
 * TickUnit.java
 * -------------
 * (C) Copyright 2001-2008, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes (from 19-Dec-2001)
 * --------------------------
 * 19-Dec-2001 : Added standard header (DG);
 * 01-May-2002 : Changed the unit size from Number to double (DG);
 * 26-Sep-2002 : Fixed errors reported by Checkstyle (DG);
 * 08-Nov-2002 : Moved to new package com.jrefinery.chart.axis (DG);
 * 26-Mar-2003 : Implemented Serializable (DG);
 * 05-Sep-2005 : Implemented hashCode(), thanks to Thomas Morgner (DG);
 * 02-Aug-2007 : Added minorTickCount attribute (DG);
 *
 */

package org.jfree.chart.axis;

import java.io.Serializable;

/**
 * Base class representing a tick unit.  This determines the spacing of the
 * tick marks on an axis.
 * <P>
 * This class (and any subclasses) should be immutable, the reason being that
 * ORDERED collections of tick units are maintained and if one instance can be
 * changed, it may destroy the order of the collection that it belongs to.
 * In addition, if the implementations are immutable, they can belong to
 * multiple collections.
 *
 * @see ValueAxis
 */
public abstract class TickUnit implements Comparable, Serializable {

    /** For serialization. */
    private static final long serialVersionUID = 510179855057013974L;

    /** The size of the tick unit. */
    private double size;

    /**
     * The number of minor ticks.
     *
     * @since 1.0.7
     */
    private int minorTickCount;

    /**
     * Constructs a new tick unit.
     *
     * @param size  the tick unit size.
     */
    public TickUnit(double size) {
        int PROBE_START_LINE_84 = 84;
		double p_size_938_line_84 = size;
		int PROBE_END_LINE_84 = 84;
		this.size = p_size_938_line_84;
    }

    /**
     * Constructs a new tick unit.
     *
     * @param size  the tick unit size.
     * @param minorTickCount  the minor tick count.
     *
     * @since 1.0.7
     */
    public TickUnit(double size, int minorTickCount) {
        int PROBE_START_LINE_96 = 96;
		double p_size_940_line_96 = size;
		int PROBE_END_LINE_96 = 96;
		this.size = p_size_940_line_96;
        int PROBE_START_LINE_97 = 97;
		int p_minor_tick_count_941_line_97 = minorTickCount;
		int PROBE_END_LINE_97 = 97;
		this.minorTickCount = p_minor_tick_count_941_line_97;
    }

    /**
     * Returns the size of the tick unit.
     *
     * @return The size of the tick unit.
     */
    public double getSize() {
        int PROBE_START_LINE_106 = 106;
		double f_size_939_line_106 = this.size;
		int PROBE_END_LINE_106 = 106;
		return f_size_939_line_106;
    }

    /**
     * Returns the minor tick count.
     *
     * @return The minor tick count.
     *
     * @since 1.0.7
     */
    public int getMinorTickCount() {
        return this.minorTickCount;
    }

    /**
     * Converts the supplied value to a string.
     * <P>
     * Subclasses may implement special formatting by overriding this method.
     *
     * @param value  the data value.
     *
     * @return Value as string.
     */
    public String valueToString(double value) {
        return String.valueOf(value);
    }

    /**
     * Compares this tick unit to an arbitrary object.
     *
     * @param object  the object to compare against.
     *
     * @return <code>1</code> if the size of the other object is less than this,
     *      <code>0</code> if both have the same size and <code>-1</code> this
     *      size is less than the others.
     */
    public int compareTo(Object object) {

        int PROBE_START_LINE_144 = 158;
		Object p_object_944_line_144 = object;
		boolean tick_unit_1_expr12_line_144 = p_object_944_line_144 instanceof TickUnit;
		int PROBE_END_LINE_144 = 158;
		if (tick_unit_1_expr12_line_144) {
            int PROBE_START_LINE_145 = 145;
			Object p_object_944_line_145 = object;
			int PROBE_END_LINE_145 = 145;
			TickUnit other = (TickUnit) p_object_944_line_145;
            int PROBE_START_LINE_146 = 154;
			double f_size_939_line_146 = this.size;
			org.jfree.chart.axis.TickUnit v_other_945_line_146 = other;
			double tick_unit_1_expr17_line_146 = v_other_945_line_146.getSize();
			boolean tick_unit_1_expr14_line_146 = f_size_939_line_146 > tick_unit_1_expr17_line_146;
			int PROBE_END_LINE_146 = 154;
			if (tick_unit_1_expr14_line_146) {
                return 1;
            } else {
				int PROBE_START_LINE_149 = 154;
				double f_size_939_line_149 = this.size;
				org.jfree.chart.axis.TickUnit v_other_945_line_149 = other;
				double tick_unit_1_expr21_line_149 = v_other_945_line_149.getSize();
				boolean tick_unit_1_expr18_line_149 = f_size_939_line_149 < tick_unit_1_expr21_line_149;
				int PROBE_END_LINE_149 = 154;
				if (tick_unit_1_expr18_line_149) {
					int PROBE_START_LINE_150 = 150;
					int tick_unit_1_expr22_line_150 = -1;
					int PROBE_END_LINE_150 = 150;
					return tick_unit_1_expr22_line_150;
				} else {
					return 0;
				}
			}
        }
        else {
            return -1;
        }

    }

    /**
     * Tests this unit for equality with another object.
     *
     * @param obj  the object.
     *
     * @return <code>true</code> or <code>false</code>.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TickUnit)) {
            return false;
        }
        TickUnit that = (TickUnit) obj;
        if (this.size != that.size) {
            return false;
        }
        if (this.minorTickCount != that.minorTickCount) {
            return false;
        }
        return true;
    }

    /**
     * Returns a hash code for this instance.
     *
     * @return A hash code.
     */
    public int hashCode() {
        long temp = this.size != +0.0d ? Double.doubleToLongBits(this.size)
                : 0L;
        return (int) (temp ^ (temp >>> 32));
    }

}
