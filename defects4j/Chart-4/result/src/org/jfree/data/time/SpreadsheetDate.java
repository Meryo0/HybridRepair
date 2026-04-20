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
 * --------------------
 * SpreadsheetDate.java
 * --------------------
 * (C) Copyright 2000-2008, by Object Refinery Limited and Contributors.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 11-Oct-2001 : Version 1 (DG);
 * 05-Nov-2001 : Added getDescription() and setDescription() methods (DG);
 * 12-Nov-2001 : Changed name from ExcelDate.java to SpreadsheetDate.java (DG);
 *               Fixed a bug in calculating day, month and year from serial
 *               number (DG);
 * 24-Jan-2002 : Fixed a bug in calculating the serial number from the day,
 *               month and year.  Thanks to Trevor Hills for the report (DG);
 * 29-May-2002 : Added equals(Object) method (SourceForge ID 558850) (DG);
 * 03-Oct-2002 : Fixed errors reported by Checkstyle (DG);
 * 13-Mar-2003 : Implemented Serializable (DG);
 * 04-Sep-2003 : Completed isInRange() methods (DG);
 * 05-Sep-2003 : Implemented Comparable (DG);
 * 21-Oct-2003 : Added hashCode() method (DG);
 * 29-Aug-2006 : Removed redundant description attribute (DG);
 * 21-Jun-2007 : Copied from JCommon (DG);
 *
 */

package org.jfree.data.time;

import java.util.Calendar;
import java.util.Date;

/**
 * Represents a date using an integer, in a similar fashion to the
 * implementation in Microsoft Excel.  The range of dates supported is
 * 1-Jan-1900 to 31-Dec-9999.
 * <P>
 * Be aware that there is a deliberate bug in Excel that recognises the year
 * 1900 as a leap year when in fact it is not a leap year. You can find more
 * information on the Microsoft website in article Q181370:
 * <P>
 * http://support.microsoft.com/support/kb/articles/Q181/3/70.asp
 * <P>
 * Excel uses the convention that 1-Jan-1900 = 1.  This class uses the
 * convention 1-Jan-1900 = 2.
 * The result is that the day number in this class will be different to the
 * Excel figure for January and February 1900...but then Excel adds in an extra
 * day (29-Feb-1900 which does not actually exist!) and from that point forward
 * the day numbers will match.
 *
 * @author David Gilbert
 */
public class SpreadsheetDate extends SerialDate {

    /** For serialization. */
    private static final long serialVersionUID = -2039586705374454461L;

    /**
     * The day number (1-Jan-1900 = 2, 2-Jan-1900 = 3, ..., 31-Dec-9999 =
     * 2958465).
     */
    private final int serial;

    /** The day of the month (1 to 28, 29, 30 or 31 depending on the month). */
    private final int day;

    /** The month of the year (1 to 12). */
    private final int month;

    /** The year (1900 to 9999). */
    private final int year;

    /**
     * Creates a new date instance.
     *
     * @param day  the day (in the range 1 to 28/29/30/31).
     * @param month  the month (in the range 1 to 12).
     * @param year  the year (in the range 1900 to 9999).
     */
    public SpreadsheetDate(final int day, final int month, final int year) {

        int PROBE_START_LINE_109 = 116;
		int p_year_3714_line_109 = year;
		boolean spreadsheet_date_1_expr3_line_109 = p_year_3714_line_109 >= 1900;
		boolean spreadsheet_date_1_expr2_line_109 = (spreadsheet_date_1_expr3_line_109);
		boolean spreadsheet_date_1_expr4_line_109 = true;
		if (spreadsheet_date_1_expr2_line_109) {
			int p_year_3714_line_109_v1 = year;
			boolean spreadsheet_date_1_expr5_line_109 = p_year_3714_line_109_v1 <= 9999;
			spreadsheet_date_1_expr4_line_109 = (spreadsheet_date_1_expr5_line_109);
		}
		boolean spreadsheet_date_1_expr1_line_109 = spreadsheet_date_1_expr2_line_109
				&& spreadsheet_date_1_expr4_line_109;
		int PROBE_END_LINE_109 = 116;
		if (spreadsheet_date_1_expr1_line_109) {
            int PROBE_START_LINE_110 = 110;
			int p_year_3714_line_110 = year;
			int PROBE_END_LINE_110 = 110;
			this.year = p_year_3714_line_110;
        }
        else {
            throw new IllegalArgumentException(
                "The 'year' argument must be in range 1900 to 9999."
            );
        }

        int PROBE_START_LINE_118 = 126;
		int p_month_3713_line_118 = month;
		int q_january_84_line_118 = MonthConstants.JANUARY;
		boolean spreadsheet_date_1_expr11_line_118 = p_month_3713_line_118 >= q_january_84_line_118;
		boolean spreadsheet_date_1_expr10_line_118 = (spreadsheet_date_1_expr11_line_118);
		boolean spreadsheet_date_1_expr9_line_118 = spreadsheet_date_1_expr10_line_118
				&& (month <= MonthConstants.DECEMBER);
		int PROBE_END_LINE_118 = 126;
		if (spreadsheet_date_1_expr9_line_118) {
            int PROBE_START_LINE_120 = 120;
					int p_month_3713_line_120 = month;
					int PROBE_END_LINE_120 = 120;
			this.month = p_month_3713_line_120;
        }
        else {
            throw new IllegalArgumentException(
                "The 'month' argument must be in the range 1 to 12."
            );
        }

        int PROBE_START_LINE_128 = 133;
		int p_day_3712_line_128 = day;
		boolean spreadsheet_date_1_expr17_line_128 = p_day_3712_line_128 >= 1;
		boolean spreadsheet_date_1_expr16_line_128 = (spreadsheet_date_1_expr17_line_128);
		boolean spreadsheet_date_1_expr18_line_128 = true;
		if (spreadsheet_date_1_expr16_line_128) {
			int p_day_3712_line_128_v1 = day;
			int p_month_3713_line_128 = month;
			int p_year_3714_line_128 = year;
			int spreadsheet_date_1_expr20_line_128 = SerialDate.lastDayOfMonth(p_month_3713_line_128,
					p_year_3714_line_128);
			boolean spreadsheet_date_1_expr19_line_128 = p_day_3712_line_128_v1 <= spreadsheet_date_1_expr20_line_128;
			spreadsheet_date_1_expr18_line_128 = (spreadsheet_date_1_expr19_line_128);
		}
		boolean spreadsheet_date_1_expr15_line_128 = spreadsheet_date_1_expr16_line_128
				&& spreadsheet_date_1_expr18_line_128;
		int PROBE_END_LINE_128 = 133;
		if (spreadsheet_date_1_expr15_line_128) {
            int PROBE_START_LINE_129 = 129;
			int p_day_3712_line_129 = day;
			int PROBE_END_LINE_129 = 129;
			this.day = p_day_3712_line_129;
        }
        else {
            throw new IllegalArgumentException("Invalid 'day' argument.");
        }

        int PROBE_START_LINE_136 = 136;
		int p_day_3712_line_136 = day;
		int p_month_3713_line_136 = month;
		int p_year_3714_line_136 = year;
		int spreadsheet_date_1_expr26_line_136 = calcSerial(p_day_3712_line_136, p_month_3713_line_136,
				p_year_3714_line_136);
		int PROBE_END_LINE_136 = 136;
		// the serial number needs to be synchronised with the day-month-year...
        this.serial = spreadsheet_date_1_expr26_line_136;

    }

    /**
     * Standard constructor - creates a new date object representing the
     * specified day number (which should be in the range 2 to 2958465.
     *
     * @param serial  the serial number for the day (range: 2 to 2958465).
     */
    public SpreadsheetDate(final int serial) {

        int PROBE_START_LINE_148 = 154;
		int p_serial_3719_line_148 = serial;
		int f_serial_lower_bound_3720_line_148 = SERIAL_LOWER_BOUND;
		boolean spreadsheet_date_1_expr30_line_148 = p_serial_3719_line_148 >= f_serial_lower_bound_3720_line_148;
		boolean spreadsheet_date_1_expr29_line_148 = (spreadsheet_date_1_expr30_line_148);
		boolean spreadsheet_date_1_expr31_line_148 = true;
		if (spreadsheet_date_1_expr29_line_148) {
			int p_serial_3719_line_148_v1 = serial;
			int f_serial_upper_bound_3721_line_148 = SERIAL_UPPER_BOUND;
			boolean spreadsheet_date_1_expr32_line_148 = p_serial_3719_line_148_v1 <= f_serial_upper_bound_3721_line_148;
			spreadsheet_date_1_expr31_line_148 = (spreadsheet_date_1_expr32_line_148);
		}
		boolean spreadsheet_date_1_expr28_line_148 = spreadsheet_date_1_expr29_line_148
				&& spreadsheet_date_1_expr31_line_148;
		int PROBE_END_LINE_148 = 154;
		if (spreadsheet_date_1_expr28_line_148) {
            int PROBE_START_LINE_149 = 149;
			int p_serial_3719_line_149 = serial;
			int PROBE_END_LINE_149 = 149;
			this.serial = p_serial_3719_line_149;
        }
        else {
            throw new IllegalArgumentException(
                "SpreadsheetDate: Serial must be in range 2 to 2958465.");
        }

        int PROBE_START_LINE_158 = 158;
		int f_serial_3718_line_158 = this.serial;
		int f_serial_lower_bound_3720_line_158 = SERIAL_LOWER_BOUND;
		int spreadsheet_date_1_expr36_line_158 = f_serial_3718_line_158 - f_serial_lower_bound_3720_line_158;
		int PROBE_END_LINE_158 = 158;
	// the day-month-year needs to be synchronised with the serial number...
      // get the year from the serial date
      final int days = spreadsheet_date_1_expr36_line_158;
      int PROBE_START_LINE_160 = 160;
	int v_days_3722_line_160 = days;
	int spreadsheet_date_1_expr41_line_160 = v_days_3722_line_160 / 365;
	int spreadsheet_date_1_expr40_line_160 = (spreadsheet_date_1_expr41_line_160);
	int spreadsheet_date_1_expr39_line_160 = 1900 + spreadsheet_date_1_expr40_line_160;
	int PROBE_END_LINE_160 = 160;
	// overestimated because we ignored leap days
      final int overestimatedYYYY = spreadsheet_date_1_expr39_line_160;
      int PROBE_START_LINE_161 = 161;
	int v_overestimated_yyyy_3723_line_161 = overestimatedYYYY;
	int spreadsheet_date_1_expr42_line_161 = SerialDate.leapYearCount(v_overestimated_yyyy_3723_line_161);
	int PROBE_END_LINE_161 = 161;
	final int leaps = spreadsheet_date_1_expr42_line_161;
      int PROBE_START_LINE_162 = 162;
	int v_days_3722_line_162 = days;
	int v_leaps_3724_line_162 = leaps;
	int spreadsheet_date_1_expr43_line_162 = v_days_3722_line_162 - v_leaps_3724_line_162;
	int PROBE_END_LINE_162 = 162;
	final int nonleapdays = spreadsheet_date_1_expr43_line_162;
      int PROBE_START_LINE_164 = 164;
	int v_nonleapdays_3725_line_164 = nonleapdays;
	int spreadsheet_date_1_expr46_line_164 = v_nonleapdays_3725_line_164 / 365;
	int spreadsheet_date_1_expr45_line_164 = (spreadsheet_date_1_expr46_line_164);
	int spreadsheet_date_1_expr44_line_164 = 1900 + spreadsheet_date_1_expr45_line_164;
	int PROBE_END_LINE_164 = 164;
	// underestimated because we overestimated years
      int underestimatedYYYY = spreadsheet_date_1_expr44_line_164;

      int PROBE_START_LINE_166 = 176;
	int v_underestimated_yyyy_3726_line_166 = underestimatedYYYY;
	int v_overestimated_yyyy_3723_line_166 = overestimatedYYYY;
	boolean spreadsheet_date_1_expr47_line_166 = v_underestimated_yyyy_3726_line_166 == v_overestimated_yyyy_3723_line_166;
	int PROBE_END_LINE_166 = 176;
	if (spreadsheet_date_1_expr47_line_166) {
          int PROBE_START_LINE_167 = 167;
		int v_underestimated_yyyy_3726_line_167 = underestimatedYYYY;
		int PROBE_END_LINE_167 = 167;
		this.year = v_underestimated_yyyy_3726_line_167;
      }
      else {
          int ss1 = calcSerial(1, 1, underestimatedYYYY);
          while (ss1 <= this.serial) {
              underestimatedYYYY = underestimatedYYYY + 1;
              ss1 = calcSerial(1, 1, underestimatedYYYY);
          }
          this.year = underestimatedYYYY - 1;
      }

      int PROBE_START_LINE_178 = 178;
	int f_year_3715_line_178 = this.year;
	int spreadsheet_date_1_expr51_line_178 = calcSerial(1, 1, f_year_3715_line_178);
	int PROBE_END_LINE_178 = 178;
	final int ss2 = spreadsheet_date_1_expr51_line_178;

      int[] daysToEndOfPrecedingMonth
          = AGGREGATE_DAYS_TO_END_OF_PRECEDING_MONTH;

      int PROBE_START_LINE_183 = 186;
	int f_year_3715_line_183 = this.year;
	boolean spreadsheet_date_1_expr54_line_183 = isLeapYear(f_year_3715_line_183);
	int PROBE_END_LINE_183 = 186;
	if (spreadsheet_date_1_expr54_line_183) {
          daysToEndOfPrecedingMonth
              = LEAP_YEAR_AGGREGATE_DAYS_TO_END_OF_PRECEDING_MONTH;
      }

      // get the month from the serial date
      int mm = 1;
      int PROBE_START_LINE_190 = 190;
	int v_ss_2_3727_line_190 = ss2;
	int[] v_days_to_end_of_preceding_month_3728_line_190 = daysToEndOfPrecedingMonth;
	int v_mm_3729_line_190 = mm;
	int spreadsheet_date_1_expr59_line_190 = v_days_to_end_of_preceding_month_3728_line_190[v_mm_3729_line_190];
	int spreadsheet_date_1_expr58_line_190 = v_ss_2_3727_line_190 + spreadsheet_date_1_expr59_line_190;
	int spreadsheet_date_1_expr57_line_190 = spreadsheet_date_1_expr58_line_190 - 1;
	int PROBE_END_LINE_190 = 190;
	int sss = spreadsheet_date_1_expr57_line_190;
      while (true) {
          int PROBE_START_LINE_191 = 191;
		int v_sss_3730_line_191 = sss;
		int f_serial_3718_line_191 = this.serial;
		boolean spreadsheet_date_1_expr60_line_191 = v_sss_3730_line_191 < f_serial_3718_line_191;
		if (!(spreadsheet_date_1_expr60_line_191)) {
			break;
		}
		int PROBE_END_LINE_191 = 191;
		int PROBE_START_LINE_192 = 192;
		int v_mm_3729_line_192 = mm;
		int spreadsheet_date_1_expr64_line_192 = v_mm_3729_line_192 + 1;
		int PROBE_END_LINE_192 = 192;
		mm = spreadsheet_date_1_expr64_line_192;
          int PROBE_START_LINE_193 = 193;
		int v_ss_2_3727_line_193 = ss2;
		int[] v_days_to_end_of_preceding_month_3728_line_193 = daysToEndOfPrecedingMonth;
		int v_mm_3729_line_193 = mm;
		int spreadsheet_date_1_expr68_line_193 = v_days_to_end_of_preceding_month_3728_line_193[v_mm_3729_line_193];
		int spreadsheet_date_1_expr67_line_193 = v_ss_2_3727_line_193 + spreadsheet_date_1_expr68_line_193;
		int spreadsheet_date_1_expr66_line_193 = spreadsheet_date_1_expr67_line_193 - 1;
		int PROBE_END_LINE_193 = 193;
		sss = spreadsheet_date_1_expr66_line_193;
      }
      int PROBE_START_LINE_195 = 195;
	int v_mm_3729_line_195 = mm;
	int spreadsheet_date_1_expr71_line_195 = v_mm_3729_line_195 - 1;
	int PROBE_END_LINE_195 = 195;
	this.month = spreadsheet_date_1_expr71_line_195;

      int PROBE_START_LINE_198 = 199;
	int f_serial_3718_line_198 = this.serial;
	int v_ss_2_3727_line_198 = ss2;
	int spreadsheet_date_1_expr77_line_198 = f_serial_3718_line_198 - v_ss_2_3727_line_198
			- daysToEndOfPrecedingMonth[this.month];
	int spreadsheet_date_1_expr75_line_198 = spreadsheet_date_1_expr77_line_198 + 1;
	int PROBE_END_LINE_198 = 199;
	// what's left is d(+1);
      this.day = spreadsheet_date_1_expr75_line_198;

    }

    /**
     * Returns the serial number for the date, where 1 January 1900 = 2
     * (this corresponds, almost, to the numbering system used in Microsoft
     * Excel for Windows and Lotus 1-2-3).
     *
     * @return The serial number of this date.
     */
    public int toSerial() {
        int PROBE_START_LINE_211 = 211;
		int f_serial_3718_line_211 = this.serial;
		int PROBE_END_LINE_211 = 211;
		return f_serial_3718_line_211;
    }

    /**
     * Returns a <code>java.util.Date</code> equivalent to this date.
     *
     * @return The date.
     */
    public Date toDate() {
        final Calendar calendar = Calendar.getInstance();
        calendar.set(getYYYY(), getMonth() - 1, getDayOfMonth(), 0, 0, 0);
        return calendar.getTime();
    }

    /**
     * Returns the year (assume a valid range of 1900 to 9999).
     *
     * @return The year.
     */
    public int getYYYY() {
        int PROBE_START_LINE_231 = 231;
		int f_year_3715_line_231 = this.year;
		int PROBE_END_LINE_231 = 231;
		return f_year_3715_line_231;
    }

    /**
     * Returns the month (January = 1, February = 2, March = 3).
     *
     * @return The month of the year.
     */
    public int getMonth() {
        int PROBE_START_LINE_240 = 240;
		int f_month_3716_line_240 = this.month;
		int PROBE_END_LINE_240 = 240;
		return f_month_3716_line_240;
    }

    /**
     * Returns the day of the month.
     *
     * @return The day of the month.
     */
    public int getDayOfMonth() {
        int PROBE_START_LINE_249 = 249;
		int f_day_3717_line_249 = this.day;
		int PROBE_END_LINE_249 = 249;
		return f_day_3717_line_249;
    }

    /**
     * Returns a code representing the day of the week.
     * <P>
     * The codes are defined in the {@link SerialDate} class as:
     * <code>SUNDAY</code>, <code>MONDAY</code>, <code>TUESDAY</code>,
     * <code>WEDNESDAY</code>, <code>THURSDAY</code>, <code>FRIDAY</code>, and
     * <code>SATURDAY</code>.
     *
     * @return A code representing the day of the week.
     */
    public int getDayOfWeek() {
        return (this.serial + 6) % 7 + 1;
    }

    /**
     * Tests the equality of this date with an arbitrary object.
     * <P>
     * This method will return true ONLY if the object is an instance of the
     * {@link SerialDate} base class, and it represents the same day as this
     * {@link SpreadsheetDate}.
     *
     * @param object  the object to compare (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(final Object object) {

        if (object instanceof SerialDate) {
            final SerialDate s = (SerialDate) object;
            return (s.toSerial() == this.toSerial());
        }
        else {
            return false;
        }

    }

    /**
     * Returns a hash code for this object instance.
     *
     * @return A hash code.
     */
    public int hashCode() {
        return toSerial();
    }

    /**
     * Returns the difference (in days) between this date and the specified
     * 'other' date.
     *
     * @param other  the date being compared to.
     *
     * @return The difference (in days) between this date and the specified
     *         'other' date.
     */
    public int compare(final SerialDate other) {
        int PROBE_START_LINE_308 = 308;
		int f_serial_3718_line_308 = this.serial;
		org.jfree.data.time.SerialDate p_other_3732_line_308 = other;
		int spreadsheet_date_1_expr91_line_308 = p_other_3732_line_308.toSerial();
		int spreadsheet_date_1_expr88_line_308 = f_serial_3718_line_308 - spreadsheet_date_1_expr91_line_308;
		int PROBE_END_LINE_308 = 308;
		return spreadsheet_date_1_expr88_line_308;
    }

    /**
     * Implements the method required by the Comparable interface.
     *
     * @param other  the other object (usually another SerialDate).
     *
     * @return A negative integer, zero, or a positive integer as this object
     *         is less than, equal to, or greater than the specified object.
     */
    public int compareTo(final Object other) {
        return compare((SerialDate) other);
    }

    /**
     * Returns true if this SerialDate represents the same date as the
     * specified SerialDate.
     *
     * @param other  the date being compared to.
     *
     * @return <code>true</code> if this SerialDate represents the same date as
     *         the specified SerialDate.
     */
    public boolean isOn(final SerialDate other) {
        return (this.serial == other.toSerial());
    }

    /**
     * Returns true if this SerialDate represents an earlier date compared to
     * the specified SerialDate.
     *
     * @param other  the date being compared to.
     *
     * @return <code>true</code> if this SerialDate represents an earlier date
     *         compared to the specified SerialDate.
     */
    public boolean isBefore(final SerialDate other) {
        return (this.serial < other.toSerial());
    }

    /**
     * Returns true if this SerialDate represents the same date as the
     * specified SerialDate.
     *
     * @param other  the date being compared to.
     *
     * @return <code>true</code> if this SerialDate represents the same date
     *         as the specified SerialDate.
     */
    public boolean isOnOrBefore(final SerialDate other) {
        return (this.serial <= other.toSerial());
    }

    /**
     * Returns true if this SerialDate represents the same date as the
     * specified SerialDate.
     *
     * @param other  the date being compared to.
     *
     * @return <code>true</code> if this SerialDate represents the same date
     *         as the specified SerialDate.
     */
    public boolean isAfter(final SerialDate other) {
        return (this.serial > other.toSerial());
    }

    /**
     * Returns true if this SerialDate represents the same date as the
     * specified SerialDate.
     *
     * @param other  the date being compared to.
     *
     * @return <code>true</code> if this SerialDate represents the same date as
     *         the specified SerialDate.
     */
    public boolean isOnOrAfter(final SerialDate other) {
        return (this.serial >= other.toSerial());
    }

    /**
     * Returns <code>true</code> if this {@link SerialDate} is within the
     * specified range (INCLUSIVE).  The date order of d1 and d2 is not
     * important.
     *
     * @param d1  a boundary date for the range.
     * @param d2  the other boundary date for the range.
     *
     * @return A boolean.
     */
    public boolean isInRange(final SerialDate d1, final SerialDate d2) {
        return isInRange(d1, d2, SerialDate.INCLUDE_BOTH);
    }

    /**
     * Returns true if this SerialDate is within the specified range (caller
     * specifies whether or not the end-points are included).  The order of d1
     * and d2 is not important.
     *
     * @param d1  one boundary date for the range.
     * @param d2  a second boundary date for the range.
     * @param include  a code that controls whether or not the start and end
     *                 dates are included in the range.
     *
     * @return <code>true</code> if this SerialDate is within the specified
     *         range.
     */
    public boolean isInRange(final SerialDate d1, final SerialDate d2,
                             final int include) {
        final int s1 = d1.toSerial();
        final int s2 = d2.toSerial();
        final int start = Math.min(s1, s2);
        final int end = Math.max(s1, s2);

        final int s = toSerial();
        if (include == SerialDate.INCLUDE_BOTH) {
            return (s >= start && s <= end);
        }
        else if (include == SerialDate.INCLUDE_FIRST) {
            return (s >= start && s < end);
        }
        else if (include == SerialDate.INCLUDE_SECOND) {
            return (s > start && s <= end);
        }
        else {
            return (s > start && s < end);
        }
    }

    /**
     * Calculate the serial number from the day, month and year.
     * <P>
     * 1-Jan-1900 = 2.
     *
     * @param d  the day.
     * @param m  the month.
     * @param y  the year.
     *
     * @return the serial number from the day, month and year.
     */
    private int calcSerial(final int d, final int m, final int y) {
        int PROBE_START_LINE_449 = 449;
		int p_y_3746_line_449 = y;
		int spreadsheet_date_1_expr96_line_449 = p_y_3746_line_449 - 1900;
		int spreadsheet_date_1_expr95_line_449 = (spreadsheet_date_1_expr96_line_449);
		int spreadsheet_date_1_expr94_line_449 = spreadsheet_date_1_expr95_line_449 * 365;
		int spreadsheet_date_1_expr93_line_449 = (spreadsheet_date_1_expr94_line_449);
		int p_y_3746_line_449_v1 = y;
		int spreadsheet_date_1_expr98_line_449 = p_y_3746_line_449_v1 - 1;
		int spreadsheet_date_1_expr97_line_449 = SerialDate.leapYearCount(spreadsheet_date_1_expr98_line_449);
		int spreadsheet_date_1_expr92_line_449 = spreadsheet_date_1_expr93_line_449
				+ spreadsheet_date_1_expr97_line_449;
		int PROBE_END_LINE_449 = 449;
		final int yy = spreadsheet_date_1_expr92_line_449;
        int PROBE_START_LINE_450 = 450;
		int[] q_aggregate_days_to_end_of_preceding_month_85_line_450 = SerialDate.AGGREGATE_DAYS_TO_END_OF_PRECEDING_MONTH;
		int p_m_3745_line_450 = m;
		int spreadsheet_date_1_expr99_line_450 = q_aggregate_days_to_end_of_preceding_month_85_line_450[p_m_3745_line_450];
		int PROBE_END_LINE_450 = 450;
		int mm = spreadsheet_date_1_expr99_line_450;
        int PROBE_START_LINE_451 = 455;
		int p_m_3745_line_451 = m;
		int q_february_86_line_451 = MonthConstants.FEBRUARY;
		boolean spreadsheet_date_1_expr100_line_451 = p_m_3745_line_451 > q_february_86_line_451;
		int PROBE_END_LINE_451 = 455;
		if (spreadsheet_date_1_expr100_line_451) {
            int PROBE_START_LINE_452 = 454;
			int p_y_3746_line_452 = y;
			boolean spreadsheet_date_1_expr101_line_452 = SerialDate.isLeapYear(p_y_3746_line_452);
			int PROBE_END_LINE_452 = 454;
			if (spreadsheet_date_1_expr101_line_452) {
                mm = mm + 1;
            }
        }
        int PROBE_START_LINE_456 = 456;
		int p_d_3744_line_456 = d;
		int PROBE_END_LINE_456 = 456;
		final int dd = p_d_3744_line_456;
        int PROBE_START_LINE_457 = 457;
		int v_yy_3747_line_457 = yy;
		int v_mm_3748_line_457 = mm;
		int v_dd_3749_line_457 = dd;
		int spreadsheet_date_1_expr102_line_457 = v_yy_3747_line_457 + v_mm_3748_line_457 + v_dd_3749_line_457 + 1;
		int PROBE_END_LINE_457 = 457;
		return spreadsheet_date_1_expr102_line_457;
    }

}