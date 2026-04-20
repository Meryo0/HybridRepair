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
 * --------
 * Day.java
 * --------
 * (C) Copyright 2001-2008, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 11-Oct-2001 : Version 1 (DG);
 * 15-Nov-2001 : Updated Javadoc comments (DG);
 * 04-Dec-2001 : Added static method to parse a string into a Day object (DG);
 * 19-Dec-2001 : Added new constructor as suggested by Paul English (DG);
 * 29-Jan-2002 : Changed getDay() method to getSerialDate() (DG);
 * 26-Feb-2002 : Changed getStart(), getMiddle() and getEnd() methods to
 *               evaluate with reference to a particular time zone (DG);
 * 19-Mar-2002 : Changed the API for the TimePeriod classes (DG);
 * 29-May-2002 : Fixed bug in equals method (DG);
 * 24-Jun-2002 : Removed unnecessary imports (DG);
 * 10-Sep-2002 : Added getSerialIndex() method (DG);
 * 07-Oct-2002 : Fixed errors reported by Checkstyle (DG);
 * 10-Jan-2003 : Changed base class and method names (DG);
 * 13-Mar-2003 : Moved to com.jrefinery.data.time package, and implemented
 *               Serializable (DG);
 * 21-Oct-2003 : Added hashCode() method (DG);
 * 30-Sep-2004 : Replaced getTime().getTime() with getTimeInMillis() (DG);
 * 04-Nov-2004 : Reverted change of 30-Sep-2004, because it won't work for
 *               JDK 1.3 (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 05-Oct-2006 : Updated API docs (DG);
 * 06-Oct-2006 : Refactored to cache first and last millisecond values (DG);
 * 16-Sep-2008 : Deprecated DEFAULT_TIME_ZONE (DG);
 *
 */

package org.jfree.data.time;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/**
 * Represents a single day in the range 1-Jan-1900 to 31-Dec-9999.  This class
 * is immutable, which is a requirement for all {@link RegularTimePeriod}
 * subclasses.
 */
public class Day extends RegularTimePeriod implements Serializable {

    /** For serialization. */
    private static final long serialVersionUID = -7082667380758962755L;

    /** A standard date formatter. */
    protected static final DateFormat DATE_FORMAT
        = new SimpleDateFormat("yyyy-MM-dd");

    int PROBE_START_LINE_87 = 89;

	protected static final int q_short_76_line_89 = DateFormat.SHORT;

	protected static final java.text.DateFormat day_1_expr2_line_89 = DateFormat.getDateInstance(q_short_76_line_89);

	int PROBE_END_LINE_87 = 89;

	/** A date formatter for the default locale. */
    protected static final DateFormat
        DATE_FORMAT_SHORT = day_1_expr2_line_89;

    int PROBE_START_LINE_91 = 93;

	protected static final int q_medium_77_line_93 = DateFormat.MEDIUM;

	protected static final java.text.DateFormat day_1_expr3_line_93 = DateFormat.getDateInstance(q_medium_77_line_93);

	int PROBE_END_LINE_91 = 93;

	/** A date formatter for the default locale. */
    protected static final DateFormat
        DATE_FORMAT_MEDIUM = day_1_expr3_line_93;

    int PROBE_START_LINE_95 = 97;

	protected static final int q_long_78_line_97 = DateFormat.LONG;

	protected static final java.text.DateFormat day_1_expr4_line_97 = DateFormat.getDateInstance(q_long_78_line_97);

	int PROBE_END_LINE_95 = 97;

	/** A date formatter for the default locale. */
    protected static final DateFormat
        DATE_FORMAT_LONG = day_1_expr4_line_97;

    /** The day (uses SerialDate for convenience). */
    private SerialDate serialDate;

    /** The first millisecond. */
    private long firstMillisecond;

    /** The last millisecond. */
    private long lastMillisecond;

    /**
     * Creates a new instance, derived from the system date/time (and assuming
     * the default timezone).
     */
    public Day() {
        this(new Date());
    }

    /**
     * Constructs a new one day time period.
     *
     * @param day  the day-of-the-month.
     * @param month  the month (1 to 12).
     * @param year  the year (1900 <= year <= 9999).
     */
    public Day(int day, int month, int year) {
        this.serialDate = SerialDate.createInstance(day, month, year);
        peg(Calendar.getInstance());
    }

    /**
     * Constructs a new one day time period.
     *
     * @param serialDate  the day (<code>null</code> not permitted).
     */
    public Day(SerialDate serialDate) {
        int PROBE_START_LINE_134 = 136;
		org.jfree.data.time.SerialDate p_serial_date_3616_line_134 = serialDate;
		boolean day_1_expr7_line_134 = p_serial_date_3616_line_134 == null;
		int PROBE_END_LINE_134 = 136;
		if (day_1_expr7_line_134) {
            throw new IllegalArgumentException("Null 'serialDate' argument.");
        }
        int PROBE_START_LINE_137 = 137;
		org.jfree.data.time.SerialDate p_serial_date_3616_line_137 = serialDate;
		int PROBE_END_LINE_137 = 137;
		this.serialDate = p_serial_date_3616_line_137;
        int PROBE_START_LINE_138 = 138;
		java.util.Calendar day_1_expr12_line_138 = Calendar.getInstance();
		int PROBE_END_LINE_138 = 138;
		peg(day_1_expr12_line_138);
    }

    /**
     * Constructs a new instance, based on a particular date/time and the
     * default time zone.
     *
     * @param time  the time (<code>null</code> not permitted).
     *
     * @see #Day(Date, TimeZone)
     */
    public Day(Date time) {
        // defer argument checking...
        this(time, TimeZone.getDefault());
    }

    /**
     * Constructs a new instance, based on a particular date/time and time zone.
     *
     * @param time  the date/time.
     * @param zone  the time zone.
     */
    public Day(Date time, TimeZone zone) {
        int PROBE_START_LINE_162 = 164;
		java.util.Date p_time_3619_line_162 = time;
		boolean day_1_expr15_line_162 = p_time_3619_line_162 == null;
		int PROBE_END_LINE_162 = 164;
		// FIXME: need a Locale as well as a TimeZone
        if (day_1_expr15_line_162) {
            throw new IllegalArgumentException("Null 'time' argument.");
        }
        int PROBE_START_LINE_165 = 167;
		java.util.TimeZone p_zone_3620_line_165 = zone;
		boolean day_1_expr16_line_165 = p_zone_3620_line_165 == null;
		int PROBE_END_LINE_165 = 167;
		if (day_1_expr16_line_165) {
            throw new IllegalArgumentException("Null 'zone' argument.");
        }
        int PROBE_START_LINE_168 = 168;
		java.util.TimeZone p_zone_3620_line_168 = zone;
		Calendar day_1_expr17_line_168 = Calendar.getInstance(p_zone_3620_line_168);
		int PROBE_END_LINE_168 = 168;
		Calendar calendar = day_1_expr17_line_168;
        int PROBE_START_LINE_169 = 169;
		java.util.Calendar v_calendar_3621_line_169 = calendar;
		java.util.Date p_time_3619_line_169 = time;
		int PROBE_END_LINE_169 = 169;
		v_calendar_3621_line_169.setTime(p_time_3619_line_169);
        int PROBE_START_LINE_170 = 170;
		java.util.Calendar v_calendar_3621_line_170 = calendar;
		int q_day_of_month_79_line_170 = Calendar.DAY_OF_MONTH;
		int day_1_expr19_line_170 = v_calendar_3621_line_170.get(q_day_of_month_79_line_170);
		int PROBE_END_LINE_170 = 170;
		int d = day_1_expr19_line_170;
        int PROBE_START_LINE_171 = 171;
		java.util.Calendar v_calendar_3621_line_171 = calendar;
		int q_month_80_line_171 = Calendar.MONTH;
		int day_1_expr21_line_171 = v_calendar_3621_line_171.get(q_month_80_line_171);
		int day_1_expr20_line_171 = day_1_expr21_line_171 + 1;
		int PROBE_END_LINE_171 = 171;
		int m = day_1_expr20_line_171;
        int PROBE_START_LINE_172 = 172;
		java.util.Calendar v_calendar_3621_line_172 = calendar;
		int q_year_81_line_172 = Calendar.YEAR;
		int day_1_expr22_line_172 = v_calendar_3621_line_172.get(q_year_81_line_172);
		int PROBE_END_LINE_172 = 172;
		int y = day_1_expr22_line_172;
        int PROBE_START_LINE_173 = 173;
		int v_d_3622_line_173 = d;
		int v_m_3623_line_173 = m;
		int v_y_3624_line_173 = y;
		org.jfree.data.time.SerialDate day_1_expr25_line_173 = SerialDate.createInstance(v_d_3622_line_173,
				v_m_3623_line_173, v_y_3624_line_173);
		int PROBE_END_LINE_173 = 173;
		this.serialDate = day_1_expr25_line_173;
        int PROBE_START_LINE_174 = 174;
		java.util.Calendar v_calendar_3621_line_174 = calendar;
		int PROBE_END_LINE_174 = 174;
		peg(v_calendar_3621_line_174);
    }

    /**
     * Returns the day as a {@link SerialDate}.  Note: the reference that is
     * returned should be an instance of an immutable {@link SerialDate}
     * (otherwise the caller could use the reference to alter the state of
     * this <code>Day</code> instance, and <code>Day</code> is supposed
     * to be immutable).
     *
     * @return The day as a {@link SerialDate}.
     */
    public SerialDate getSerialDate() {
        int PROBE_START_LINE_187 = 187;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_187 = this.serialDate;
		int PROBE_END_LINE_187 = 187;
		return f_serial_date_3617_line_187;
    }

    /**
     * Returns the year.
     *
     * @return The year.
     */
    public int getYear() {
        return this.serialDate.getYYYY();
    }

    /**
     * Returns the month.
     *
     * @return The month.
     */
    public int getMonth() {
        return this.serialDate.getMonth();
    }

    /**
     * Returns the day of the month.
     *
     * @return The day of the month.
     */
    public int getDayOfMonth() {
        return this.serialDate.getDayOfMonth();
    }

    /**
     * Returns the first millisecond of the day.  This will be determined
     * relative to the time zone specified in the constructor, or in the
     * calendar instance passed in the most recent call to the
     * {@link #peg(Calendar)} method.
     *
     * @return The first millisecond of the day.
     *
     * @see #getLastMillisecond()
     */
    public long getFirstMillisecond() {
        return this.firstMillisecond;
    }

    /**
     * Returns the last millisecond of the day.  This will be
     * determined relative to the time zone specified in the constructor, or
     * in the calendar instance passed in the most recent call to the
     * {@link #peg(Calendar)} method.
     *
     * @return The last millisecond of the day.
     *
     * @see #getFirstMillisecond()
     */
    public long getLastMillisecond() {
        return this.lastMillisecond;
    }

    /**
     * Recalculates the start date/time and end date/time for this time period
     * relative to the supplied calendar (which incorporates a time zone).
     *
     * @param calendar  the calendar (<code>null</code> not permitted).
     *
     * @since 1.0.3
     */
    public void peg(Calendar calendar) {
        int PROBE_START_LINE_254 = 254;
		java.util.Calendar p_calendar_3625_line_254 = calendar;
		long day_1_expr32_line_254 = getFirstMillisecond(p_calendar_3625_line_254);
		int PROBE_END_LINE_254 = 254;
		this.firstMillisecond = day_1_expr32_line_254;
        int PROBE_START_LINE_255 = 255;
		java.util.Calendar p_calendar_3625_line_255 = calendar;
		long day_1_expr36_line_255 = getLastMillisecond(p_calendar_3625_line_255);
		int PROBE_END_LINE_255 = 255;
		this.lastMillisecond = day_1_expr36_line_255;
    }

    /**
     * Returns the day preceding this one.
     *
     * @return The day preceding this one.
     */
    public RegularTimePeriod previous() {

        Day result;
        int serial = this.serialDate.toSerial();
        if (serial > SerialDate.SERIAL_LOWER_BOUND) {
            SerialDate yesterday = SerialDate.createInstance(serial - 1);
            return new Day(yesterday);
        }
        else {
            result = null;
        }
        return result;

    }

    /**
     * Returns the day following this one, or <code>null</code> if some limit
     * has been reached.
     *
     * @return The day following this one, or <code>null</code> if some limit
     *         has been reached.
     */
    public RegularTimePeriod next() {

        Day result;
        int PROBE_START_LINE_288 = 288;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_288 = this.serialDate;
		int day_1_expr38_line_288 = f_serial_date_3617_line_288.toSerial();
		int PROBE_END_LINE_288 = 288;
		int serial = day_1_expr38_line_288;
        int PROBE_START_LINE_289 = 295;
		int v_serial_3628_line_289 = serial;
		int q_serial_upper_bound_82_line_289 = SerialDate.SERIAL_UPPER_BOUND;
		boolean day_1_expr41_line_289 = v_serial_3628_line_289 < q_serial_upper_bound_82_line_289;
		int PROBE_END_LINE_289 = 295;
		if (day_1_expr41_line_289) {
            int PROBE_START_LINE_290 = 290;
			int v_serial_3628_line_290 = serial;
			int day_1_expr43_line_290 = v_serial_3628_line_290 + 1;
			SerialDate day_1_expr42_line_290 = SerialDate.createInstance(day_1_expr43_line_290);
			int PROBE_END_LINE_290 = 290;
			SerialDate tomorrow = day_1_expr42_line_290;
            int PROBE_START_LINE_291 = 291;
			org.jfree.data.time.SerialDate v_tomorrow_3629_line_291 = tomorrow;
			int PROBE_END_LINE_291 = 291;
			return new Day(v_tomorrow_3629_line_291);
        }
        else {
            result = null;
        }
        return result;

    }

    /**
     * Returns a serial index number for the day.
     *
     * @return The serial index number.
     */
    public long getSerialIndex() {
        int PROBE_START_LINE_306 = 306;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_306 = this.serialDate;
		int day_1_expr45_line_306 = f_serial_date_3617_line_306.toSerial();
		int PROBE_END_LINE_306 = 306;
		return day_1_expr45_line_306;
    }

    /**
     * Returns the first millisecond of the day, evaluated using the supplied
     * calendar (which determines the time zone).
     *
     * @param calendar  calendar to use (<code>null</code> not permitted).
     *
     * @return The start of the day as milliseconds since 01-01-1970.
     *
     * @throws NullPointerException if <code>calendar</code> is
     *     <code>null</code>.
     */
    public long getFirstMillisecond(Calendar calendar) {
        int PROBE_START_LINE_321 = 321;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_321 = this.serialDate;
		int day_1_expr48_line_321 = f_serial_date_3617_line_321.getYYYY();
		int PROBE_END_LINE_321 = 321;
		int year = day_1_expr48_line_321;
        int PROBE_START_LINE_322 = 322;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_322 = this.serialDate;
		int day_1_expr51_line_322 = f_serial_date_3617_line_322.getMonth();
		int PROBE_END_LINE_322 = 322;
		int month = day_1_expr51_line_322;
        int PROBE_START_LINE_323 = 323;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_323 = this.serialDate;
		int day_1_expr54_line_323 = f_serial_date_3617_line_323.getDayOfMonth();
		int PROBE_END_LINE_323 = 323;
		int day = day_1_expr54_line_323;
        int PROBE_START_LINE_324 = 324;
		java.util.Calendar p_calendar_3630_line_324 = calendar;
		int PROBE_END_LINE_324 = 324;
		p_calendar_3630_line_324.clear();
        int PROBE_START_LINE_325 = 325;
		java.util.Calendar p_calendar_3630_line_325 = calendar;
		int v_year_3631_line_325 = year;
		int v_month_3632_line_325 = month;
		int day_1_expr59_line_325 = v_month_3632_line_325 - 1;
		int v_day_3633_line_325 = day;
		int PROBE_END_LINE_325 = 325;
		p_calendar_3630_line_325.set(v_year_3631_line_325, day_1_expr59_line_325, v_day_3633_line_325, 0, 0, 0);
        int PROBE_START_LINE_326 = 326;
		java.util.Calendar p_calendar_3630_line_326 = calendar;
		int q_millisecond_83_line_326 = Calendar.MILLISECOND;
		int PROBE_END_LINE_326 = 326;
		p_calendar_3630_line_326.set(q_millisecond_83_line_326, 0);
        int PROBE_START_LINE_328 = 328;
		java.util.Calendar p_calendar_3630_line_328 = calendar;
		java.util.Date day_1_expr62_line_328 = p_calendar_3630_line_328.getTime();
		long day_1_expr61_line_328 = day_1_expr62_line_328.getTime();
		int PROBE_END_LINE_328 = 328;
		//return calendar.getTimeInMillis();  // this won't work for JDK 1.3
        return day_1_expr61_line_328;
    }

    /**
     * Returns the last millisecond of the day, evaluated using the supplied
     * calendar (which determines the time zone).
     *
     * @param calendar  calendar to use (<code>null</code> not permitted).
     *
     * @return The end of the day as milliseconds since 01-01-1970.
     *
     * @throws NullPointerException if <code>calendar</code> is
     *     <code>null</code>.
     */
    public long getLastMillisecond(Calendar calendar) {
        int PROBE_START_LINE_343 = 343;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_343 = this.serialDate;
		int day_1_expr63_line_343 = f_serial_date_3617_line_343.getYYYY();
		int PROBE_END_LINE_343 = 343;
		int year = day_1_expr63_line_343;
        int PROBE_START_LINE_344 = 344;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_344 = this.serialDate;
		int day_1_expr66_line_344 = f_serial_date_3617_line_344.getMonth();
		int PROBE_END_LINE_344 = 344;
		int month = day_1_expr66_line_344;
        int PROBE_START_LINE_345 = 345;
		org.jfree.data.time.SerialDate f_serial_date_3617_line_345 = this.serialDate;
		int day_1_expr69_line_345 = f_serial_date_3617_line_345.getDayOfMonth();
		int PROBE_END_LINE_345 = 345;
		int day = day_1_expr69_line_345;
        int PROBE_START_LINE_346 = 346;
		java.util.Calendar p_calendar_3634_line_346 = calendar;
		int PROBE_END_LINE_346 = 346;
		p_calendar_3634_line_346.clear();
        int PROBE_START_LINE_347 = 347;
		java.util.Calendar p_calendar_3634_line_347 = calendar;
		int v_year_3635_line_347 = year;
		int v_month_3636_line_347 = month;
		int day_1_expr74_line_347 = v_month_3636_line_347 - 1;
		int v_day_3637_line_347 = day;
		int PROBE_END_LINE_347 = 347;
		p_calendar_3634_line_347.set(v_year_3635_line_347, day_1_expr74_line_347, v_day_3637_line_347, 23, 59, 59);
        int PROBE_START_LINE_348 = 348;
		java.util.Calendar p_calendar_3634_line_348 = calendar;
		int q_millisecond_84_line_348 = Calendar.MILLISECOND;
		int PROBE_END_LINE_348 = 348;
		p_calendar_3634_line_348.set(q_millisecond_84_line_348, 999);
        int PROBE_START_LINE_350 = 350;
		java.util.Calendar p_calendar_3634_line_350 = calendar;
		java.util.Date day_1_expr77_line_350 = p_calendar_3634_line_350.getTime();
		long day_1_expr76_line_350 = day_1_expr77_line_350.getTime();
		int PROBE_END_LINE_350 = 350;
		//return calendar.getTimeInMillis();  // this won't work for JDK 1.3
        return day_1_expr76_line_350;
    }

    /**
     * Tests the equality of this Day object to an arbitrary object.  Returns
     * true if the target is a Day instance or a SerialDate instance
     * representing the same day as this object. In all other cases,
     * returns false.
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return A flag indicating whether or not an object is equal to this day.
     */
    public boolean equals(Object obj) {

        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Day)) {
            return false;
        }
        Day that = (Day) obj;
        if (!this.serialDate.equals(that.getSerialDate())) {
            return false;
        }
        return true;

    }

    /**
     * Returns a hash code for this object instance.  The approach described by
     * Joshua Bloch in "Effective Java" has been used here:
     * <p>
     * <code>http://developer.java.sun.com/developer/Books/effectivejava
     * /Chapter3.pdf</code>
     *
     * @return A hash code.
     */
    public int hashCode() {
        return this.serialDate.hashCode();
    }

    /**
     * Returns an integer indicating the order of this Day object relative to
     * the specified object:
     *
     * negative == before, zero == same, positive == after.
     *
     * @param o1  the object to compare.
     *
     * @return negative == before, zero == same, positive == after.
     */
    public int compareTo(Object o1) {

        int result = 0;

        int PROBE_START_LINE_408 = 425;
		Object p_o_1_3639_line_408 = o1;
		boolean day_1_expr78_line_408 = p_o_1_3639_line_408 instanceof Day;
		int PROBE_END_LINE_408 = 425;
		// CASE 1 : Comparing to another Day object
        // ----------------------------------------
        if (day_1_expr78_line_408) {
            int PROBE_START_LINE_409 = 409;
			Object p_o_1_3639_line_409 = o1;
			int PROBE_END_LINE_409 = 409;
			Day d = (Day) p_o_1_3639_line_409;
            int PROBE_START_LINE_410 = 410;
			org.jfree.data.time.Day v_d_3640_line_410 = d;
			org.jfree.data.time.SerialDate day_1_expr84_line_410 = v_d_3640_line_410.getSerialDate();
			org.jfree.data.time.SerialDate f_serial_date_3617_line_410 = this.serialDate;
			int day_1_expr82_line_410 = day_1_expr84_line_410.compare(f_serial_date_3617_line_410);
			int day_1_expr81_line_410 = -day_1_expr82_line_410;
			int PROBE_END_LINE_410 = 410;
			result = day_1_expr81_line_410;
        }

        // CASE 2 : Comparing to another TimePeriod object
        // -----------------------------------------------
        else if (o1 instanceof RegularTimePeriod) {
            // more difficult case - evaluate later...
            result = 0;
        }

        // CASE 3 : Comparing to a non-TimePeriod object
        // ---------------------------------------------
        else {
            // consider time periods to be ordered after general objects
            result = 1;
        }

        int PROBE_START_LINE_427 = 427;
		int v_result_3641_line_427 = result;
		int PROBE_END_LINE_427 = 427;
		return v_result_3641_line_427;

    }

    /**
     * Returns a string representing the day.
     *
     * @return A string representing the day.
     */
    public String toString() {
        return this.serialDate.toString();
    }

    /**
     * Parses the string argument as a day.
     * <P>
     * This method is required to recognise YYYY-MM-DD as a valid format.
     * Anything else, for now, is a bonus.
     *
     * @param s  the date string to parse.
     *
     * @return <code>null</code> if the string does not contain any parseable
     *      string, the day otherwise.
     */
    public static Day parseDay(String s) {

        try {
            return new Day (Day.DATE_FORMAT.parse(s));
        }
        catch (ParseException e1) {
            try {
                return new Day (Day.DATE_FORMAT_SHORT.parse(s));
            }
            catch (ParseException e2) {
              // ignore
            }
        }
        return null;

    }

}
