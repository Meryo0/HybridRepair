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
 * -----------------
 * DateTickUnit.java
 * -----------------
 * (C) Copyright 2000-2009, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Chris Boek;
 *
 * Changes
 * -------
 * 08-Nov-2002 : Moved to new package com.jrefinery.chart.axis (DG);
 * 27-Nov-2002 : Added IllegalArgumentException to getMillisecondCount()
 *               method (DG);
 * 26-Mar-2003 : Implemented Serializable (DG);
 * 12-Nov-2003 : Added roll fields that can improve the labelling on segmented
 *               date axes (DG);
 * 03-Dec-2003 : DateFormat constructor argument is now filled with an default
 *               if null (TM);
 * 07-Dec-2003 : Fixed bug (null pointer exception) in constructor (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 21-Mar-2007 : Added toString() for debugging (DG);
 * 04-Apr-2007 : Added new methods addToDate(Date, TimeZone) and rollDate(Date,
 *               TimeZone) (CB);
 * 21-Jun-2007 : Removed JCommon dependencies (DG);
 * 09-Jun-2008 : Deprecated addToDate(Date) (DG);
 * 09-Jan-2009 : Replaced the unit and rollUnit fields with an enumerated
 *               type (DG);
 *
 */

package org.jfree.chart.axis;

import java.io.Serializable;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import org.jfree.chart.util.ObjectUtilities;

/**
 * A tick unit for use by subclasses of {@link DateAxis}.  Instances of this
 * class are immutable.
 */
public class DateTickUnit extends TickUnit implements Serializable {

    /** For serialization. */
    private static final long serialVersionUID = -7289292157229621901L;

    /**
     * The units.
     *
     * @since 1.0.13
     */
    private DateTickUnitType unitType;

    /** The unit count. */
    private int count;

    /**
     * The roll unit type.
     *
     * @since 1.0.13
     */
    private DateTickUnitType rollUnitType;

    /** The roll count. */
    private int rollCount;

    /** The date formatter. */
    private DateFormat formatter;

    /**
     * Creates a new date tick unit.
     *
     * @param unitType  the unit type (<code>null</code> not permitted).
     * @param multiple  the multiple (of the unit type, must be > 0).
     *
     * @since 1.0.13
     */
    public DateTickUnit(DateTickUnitType unitType, int multiple) {
        this(unitType, multiple, DateFormat.getDateInstance(DateFormat.SHORT));
    }

    /**
     * Creates a new date tick unit.
     *
     * @param unitType  the unit type (<code>null</code> not permitted).
     * @param multiple  the multiple (of the unit type, must be > 0).
     * @param formatter  the date formatter (<code>null</code> not permitted).
     *
     * @since 1.0.13
     */
    public DateTickUnit(DateTickUnitType unitType, int multiple,
            DateFormat formatter) {
        this(unitType, multiple, unitType, multiple, formatter);
    }

    /**
     * Creates a new unit.
     *
     * @param unitType  the unit.
     * @param multiple  the multiple.
     * @param rollUnitType  the roll unit.
     * @param rollMultiple  the roll multiple.
     * @param formatter  the date formatter (<code>null</code> not permitted).
     *
     * @since 1.0.13
     */
    public DateTickUnit(DateTickUnitType unitType, int multiple,
            DateTickUnitType rollUnitType, int rollMultiple,
            DateFormat formatter) {
        super(DateTickUnit.getMillisecondCount(unitType, multiple));
        int PROBE_START_LINE_140 = 142;
		java.text.DateFormat p_formatter_775_line_140 = formatter;
		boolean date_tick_unit_1_expr4_line_140 = p_formatter_775_line_140 == null;
		int PROBE_END_LINE_140 = 142;
		if (date_tick_unit_1_expr4_line_140) {
            throw new IllegalArgumentException("Null 'formatter' argument.");
        }
        int PROBE_START_LINE_143 = 145;
		int p_multiple_772_line_143 = multiple;
		boolean date_tick_unit_1_expr5_line_143 = p_multiple_772_line_143 <= 0;
		int PROBE_END_LINE_143 = 145;
		if (date_tick_unit_1_expr5_line_143) {
            throw new IllegalArgumentException("Requires 'multiple' > 0.");
        }
        int PROBE_START_LINE_146 = 148;
		int p_roll_multiple_774_line_146 = rollMultiple;
		boolean date_tick_unit_1_expr6_line_146 = p_roll_multiple_774_line_146 <= 0;
		int PROBE_END_LINE_146 = 148;
		if (date_tick_unit_1_expr6_line_146) {
            throw new IllegalArgumentException("Requires 'rollMultiple' > 0.");
        }
        int PROBE_START_LINE_149 = 149;
		org.jfree.chart.axis.DateTickUnitType p_unit_type_771_line_149 = unitType;
		int PROBE_END_LINE_149 = 149;
		this.unitType = p_unit_type_771_line_149;
        int PROBE_START_LINE_150 = 150;
		int p_multiple_772_line_150 = multiple;
		int PROBE_END_LINE_150 = 150;
		this.count = p_multiple_772_line_150;
        int PROBE_START_LINE_151 = 151;
		org.jfree.chart.axis.DateTickUnitType p_roll_unit_type_773_line_151 = rollUnitType;
		int PROBE_END_LINE_151 = 151;
		this.rollUnitType = p_roll_unit_type_773_line_151;
        int PROBE_START_LINE_152 = 152;
		int p_roll_multiple_774_line_152 = rollMultiple;
		int PROBE_END_LINE_152 = 152;
		this.rollCount = p_roll_multiple_774_line_152;
        int PROBE_START_LINE_153 = 153;
		java.text.DateFormat p_formatter_775_line_153 = formatter;
		int PROBE_END_LINE_153 = 153;
		this.formatter = p_formatter_775_line_153;
    }

    /**
     * Returns the unit type.
     *
     * @return The unit type (never <code>null</code>).
     *
     * @since 1.0.13
     */
    public DateTickUnitType getUnitType() {
        return this.unitType;
    }

    /**
     * Returns the unit multiple.
     *
     * @return The unit multiple (always > 0).
     */
    public int getMultiple() {
        return this.count;
    }

    /**
     * Returns the roll unit type.
     *
     * @return The roll unit type (never <code>null</code>).
     *
     * @since 1.0.13
     */
    public DateTickUnitType getRollUnitType() {
        return this.rollUnitType;
    }

    /**
     * Returns the roll unit multiple.
     *
     * @return The roll unit multiple.
     *
     * @since 1.0.13
     */
    public int getRollMultiple() {
        return this.rollCount;
    }

    /**
     * Formats a value.
     *
     * @param milliseconds  date in milliseconds since 01-01-1970.
     *
     * @return The formatted date.
     */
    public String valueToString(double milliseconds) {
        return this.formatter.format(new Date((long) milliseconds));
    }

    /**
     * Formats a date using the tick unit's formatter.
     *
     * @param date  the date.
     *
     * @return The formatted date.
     */
    public String dateToString(Date date) {
        return this.formatter.format(date);
    }

    /**
     * Calculates a new date by adding this unit to the base date.
     *
     * @param base  the base date.
     * @param zone  the time zone for the date calculation.
     *
     * @return A new date one unit after the base date.
     *
     * @since 1.0.6
     */
    public Date addToDate(Date base, TimeZone zone) {
        // as far as I know, the Locale for the calendar only affects week
        // number calculations, and since DateTickUnit doesn't do week
        // arithmetic, the default locale (whatever it is) should be fine
        // here...
        Calendar calendar = Calendar.getInstance(zone);
        calendar.setTime(base);
        calendar.add(this.unitType.getCalendarField(), this.count);
        return calendar.getTime();
    }

    /**
     * Rolls the date forward by the amount specified by the roll unit and
     * count.
     *
     * @param base  the base date.

     * @return The rolled date.
     *
     * @see #rollDate(Date, TimeZone)
     */
    public Date rollDate(Date base) {
        return rollDate(base, TimeZone.getDefault());
    }

    /**
     * Rolls the date forward by the amount specified by the roll unit and
     * count.
     *
     * @param base  the base date.
     * @param zone  the time zone.
     *
     * @return The rolled date.
     *
     * @since 1.0.6
     */
    public Date rollDate(Date base, TimeZone zone) {
        // as far as I know, the Locale for the calendar only affects week
        // number calculations, and since DateTickUnit doesn't do week
        // arithmetic, the default locale (whatever it is) should be fine
        // here...
        Calendar calendar = Calendar.getInstance(zone);
        calendar.setTime(base);
        calendar.add(this.rollUnitType.getCalendarField(), this.rollCount);
        return calendar.getTime();
    }

    /**
     * Returns a field code that can be used with the <code>Calendar</code>
     * class.
     *
     * @return The field code.
     */
    public int getCalendarField() {
        return this.unitType.getCalendarField();
    }

    /**
     * Returns the (approximate) number of milliseconds for the given unit and
     * unit count.
     * <P>
     * This value is an approximation some of the time (e.g. months are
     * assumed to have 31 days) but this shouldn't matter.
     *
     * @param unit  the unit.
     * @param count  the unit count.
     *
     * @return The number of milliseconds.
     *
     * @since 1.0.13
     */
    private static long getMillisecondCount(DateTickUnitType unit, int count) {

        int PROBE_START_LINE_303 = 327;
		org.jfree.chart.axis.DateTickUnitType p_unit_788_line_303 = unit;
		org.jfree.chart.axis.DateTickUnitType q_year_32_line_303 = DateTickUnitType.YEAR;
		boolean date_tick_unit_1_expr22_line_303 = p_unit_788_line_303.equals(q_year_32_line_303);
		int PROBE_END_LINE_303 = 327;
		if (date_tick_unit_1_expr22_line_303) {
            int PROBE_START_LINE_304 = 304;
			long date_tick_unit_1_expr25_line_304 = 365L * 24L * 60L * 60L * 1000L;
			long date_tick_unit_1_expr24_line_304 = (date_tick_unit_1_expr25_line_304);
			int p_count_789_line_304 = count;
			long date_tick_unit_1_expr23_line_304 = date_tick_unit_1_expr24_line_304 * p_count_789_line_304;
			int PROBE_END_LINE_304 = 304;
			return date_tick_unit_1_expr23_line_304;
        } else {
			int PROBE_START_LINE_306 = 327;
			org.jfree.chart.axis.DateTickUnitType p_unit_788_line_306 = unit;
			org.jfree.chart.axis.DateTickUnitType q_month_32_line_306 = DateTickUnitType.MONTH;
			boolean date_tick_unit_1_expr26_line_306 = p_unit_788_line_306.equals(q_month_32_line_306);
			int PROBE_END_LINE_306 = 327;
			if (date_tick_unit_1_expr26_line_306) {
				int PROBE_START_LINE_307 = 307;
				long date_tick_unit_1_expr29_line_307 = 31L * 24L * 60L * 60L * 1000L;
				long date_tick_unit_1_expr28_line_307 = (date_tick_unit_1_expr29_line_307);
				int p_count_789_line_307 = count;
				long date_tick_unit_1_expr27_line_307 = date_tick_unit_1_expr28_line_307 * p_count_789_line_307;
				int PROBE_END_LINE_307 = 307;
				return date_tick_unit_1_expr27_line_307;
			} else {
				int PROBE_START_LINE_309 = 327;
				org.jfree.chart.axis.DateTickUnitType p_unit_788_line_309 = unit;
				org.jfree.chart.axis.DateTickUnitType q_day_32_line_309 = DateTickUnitType.DAY;
				boolean date_tick_unit_1_expr30_line_309 = p_unit_788_line_309.equals(q_day_32_line_309);
				int PROBE_END_LINE_309 = 327;
				if (date_tick_unit_1_expr30_line_309) {
					int PROBE_START_LINE_310 = 310;
					long date_tick_unit_1_expr33_line_310 = 24L * 60L * 60L * 1000L;
					long date_tick_unit_1_expr32_line_310 = (date_tick_unit_1_expr33_line_310);
					int p_count_789_line_310 = count;
					long date_tick_unit_1_expr31_line_310 = date_tick_unit_1_expr32_line_310 * p_count_789_line_310;
					int PROBE_END_LINE_310 = 310;
					return date_tick_unit_1_expr31_line_310;
				} else {
					int PROBE_START_LINE_312 = 327;
					org.jfree.chart.axis.DateTickUnitType p_unit_788_line_312 = unit;
					org.jfree.chart.axis.DateTickUnitType q_hour_32_line_312 = DateTickUnitType.HOUR;
					boolean date_tick_unit_1_expr34_line_312 = p_unit_788_line_312.equals(q_hour_32_line_312);
					int PROBE_END_LINE_312 = 327;
					if (date_tick_unit_1_expr34_line_312) {
						int PROBE_START_LINE_313 = 313;
						long date_tick_unit_1_expr37_line_313 = 60L * 60L * 1000L;
						long date_tick_unit_1_expr36_line_313 = (date_tick_unit_1_expr37_line_313);
						int p_count_789_line_313 = count;
						long date_tick_unit_1_expr35_line_313 = date_tick_unit_1_expr36_line_313 * p_count_789_line_313;
						int PROBE_END_LINE_313 = 313;
						return date_tick_unit_1_expr35_line_313;
					} else {
						int PROBE_START_LINE_315 = 327;
						org.jfree.chart.axis.DateTickUnitType p_unit_788_line_315 = unit;
						org.jfree.chart.axis.DateTickUnitType q_minute_32_line_315 = DateTickUnitType.MINUTE;
						boolean date_tick_unit_1_expr38_line_315 = p_unit_788_line_315.equals(q_minute_32_line_315);
						int PROBE_END_LINE_315 = 327;
						if (date_tick_unit_1_expr38_line_315) {
							int PROBE_START_LINE_316 = 316;
							long date_tick_unit_1_expr41_line_316 = 60L * 1000L;
							long date_tick_unit_1_expr40_line_316 = (date_tick_unit_1_expr41_line_316);
							int p_count_789_line_316 = count;
							long date_tick_unit_1_expr39_line_316 = date_tick_unit_1_expr40_line_316
									* p_count_789_line_316;
							int PROBE_END_LINE_316 = 316;
							return date_tick_unit_1_expr39_line_316;
						} else {
							int PROBE_START_LINE_318 = 327;
							org.jfree.chart.axis.DateTickUnitType p_unit_788_line_318 = unit;
							org.jfree.chart.axis.DateTickUnitType q_second_32_line_318 = DateTickUnitType.SECOND;
							boolean date_tick_unit_1_expr42_line_318 = p_unit_788_line_318.equals(q_second_32_line_318);
							int PROBE_END_LINE_318 = 327;
							if (date_tick_unit_1_expr42_line_318) {
								int PROBE_START_LINE_319 = 319;
								int p_count_789_line_319 = count;
								long date_tick_unit_1_expr43_line_319 = 1000L * p_count_789_line_319;
								int PROBE_END_LINE_319 = 319;
								return date_tick_unit_1_expr43_line_319;
							} else {
								int PROBE_START_LINE_321 = 327;
								org.jfree.chart.axis.DateTickUnitType p_unit_788_line_321 = unit;
								org.jfree.chart.axis.DateTickUnitType q_millisecond_32_line_321 = DateTickUnitType.MILLISECOND;
								boolean date_tick_unit_1_expr44_line_321 = p_unit_788_line_321
										.equals(q_millisecond_32_line_321);
								int PROBE_END_LINE_321 = 327;
								if (date_tick_unit_1_expr44_line_321) {
									int PROBE_START_LINE_322 = 322;
									int p_count_789_line_322 = count;
									int PROBE_END_LINE_322 = 322;
									return p_count_789_line_322;
								} else {
									throw new IllegalArgumentException(
											"The 'unit' argument has a " + "value that is not recognised.");
								}
							}
						}
					}
				}
			}
		}

    }

    /**
     * A utility method to put a default in place if a null formatter is
     * supplied.
     *
     * @param formatter  the formatter (<code>null</code> permitted).
     *
     * @return The formatter if it is not null, otherwise a default.
     */
    private static DateFormat notNull(DateFormat formatter) {
        if (formatter == null) {
            return DateFormat.getDateInstance(DateFormat.SHORT);
        }
        else {
            return formatter;
        }
    }

    /**
     * Tests this unit for equality with another object.
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return <code>true</code> or <code>false</code>.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DateTickUnit)) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        DateTickUnit that = (DateTickUnit) obj;
        if (!(this.unitType.equals(that.unitType))) {
            return false;
        }
        if (this.count != that.count) {
            return false;
        }
        if (!ObjectUtilities.equal(this.formatter, that.formatter)) {
            return false;
        }
        return true;
    }

    /**
     * Returns a hash code for this object.
     *
     * @return A hash code.
     */
    public int hashCode() {
        int result = 19;
        result = 37 * result + this.unitType.hashCode();
        result = 37 * result + this.count;
        result = 37 * result + this.formatter.hashCode();
        return result;
    }

    /**
     * Returns a string representation of this instance, primarily used for
     * debugging purposes.
     *
     * @return A string representation of this instance.
     */
    public String toString() {
        return "DateTickUnit[" + this.unitType.toString() + ", "
                + this.count + "]";
    }

}
