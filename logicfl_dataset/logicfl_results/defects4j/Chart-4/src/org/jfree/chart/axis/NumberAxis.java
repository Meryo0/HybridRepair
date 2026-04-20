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
 * NumberAxis.java
 * ---------------
 * (C) Copyright 2000-2009, by Object Refinery Limited and Contributors.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Laurence Vanhelsuwe;
 *                   Peter Kolb (patches 1934255 and 2603321);
 *
 * Changes
 * -------
 * 18-Sep-2001 : Added standard header and fixed DOS encoding problem (DG);
 * 22-Sep-2001 : Changed setMinimumAxisValue() and setMaximumAxisValue() so
 *               that they clear the autoRange flag (DG);
 * 27-Nov-2001 : Removed old, redundant code (DG);
 * 30-Nov-2001 : Added accessor methods for the standard tick units (DG);
 * 08-Jan-2002 : Added setAxisRange() method (since renamed setRange()) (DG);
 * 16-Jan-2002 : Added setTickUnit() method.  Extended ValueAxis to support an
 *               optional cross-hair (DG);
 * 08-Feb-2002 : Fixes bug to ensure the autorange is recalculated if the
 *               setAutoRangeIncludesZero flag is changed (DG);
 * 25-Feb-2002 : Added a new flag autoRangeStickyZero to provide further
 *               control over margins in the auto-range mechanism.  Updated
 *               constructors.  Updated import statements.  Moved the
 *               createStandardTickUnits() method to the TickUnits class (DG);
 * 19-Apr-2002 : Updated Javadoc comments (DG);
 * 01-May-2002 : Updated for changes to TickUnit class, removed valueToString()
 *               method (DG);
 * 25-Jul-2002 : Moved the lower and upper margin attributes, and the
 *               auto-range minimum size, up one level to the ValueAxis
 *               class (DG);
 * 05-Sep-2002 : Updated constructor to match changes in Axis class (DG);
 * 01-Oct-2002 : Fixed errors reported by Checkstyle (DG);
 * 04-Oct-2002 : Moved standardTickUnits from NumberAxis --> ValueAxis (DG);
 * 24-Oct-2002 : Added a number format override (DG);
 * 08-Nov-2002 : Moved to new package com.jrefinery.chart.axis (DG);
 * 19-Nov-2002 : Removed grid settings (now controlled by the plot) (DG);
 * 14-Jan-2003 : Changed autoRangeMinimumSize from Number --> double, and moved
 *               crosshair settings to the plot classes (DG);
 * 20-Jan-2003 : Removed the monolithic constructor (DG);
 * 26-Mar-2003 : Implemented Serializable (DG);
 * 16-Jul-2003 : Reworked to allow for multiple secondary axes (DG);
 * 13-Aug-2003 : Implemented Cloneable (DG);
 * 07-Oct-2003 : Fixed bug (815028) in the auto range calculation (DG);
 * 29-Oct-2003 : Added workaround for font alignment in PDF output (DG);
 * 07-Nov-2003 : Modified to use NumberTick class (DG);
 * 21-Jan-2004 : Renamed translateJava2DToValue --> java2DToValue, and
 *               translateValueToJava2D --> valueToJava2D (DG);
 * 03-Mar-2004 : Added plotState to draw() method (DG);
 * 07-Apr-2004 : Changed string width calculation (DG);
 * 11-Jan-2005 : Removed deprecated methods in preparation for 1.0.0
 *               release (DG);
 * 28-Mar-2005 : Renamed autoRangeIncludesZero() --> getAutoRangeIncludesZero()
 *               and autoRangeStickyZero() --> getAutoRangeStickyZero() (DG);
 * 21-Apr-2005 : Removed redundant argument from selectAutoTickUnit() (DG);
 * 22-Apr-2005 : Renamed refreshHorizontalTicks --> refreshTicksHorizontal
 *               (and likewise the vertical version) for consistency with
 *               other axis classes (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 10-Feb-2006 : Added some API doc comments in respect of bug 821046 (DG);
 * 20-Feb-2006 : Modified equals() method to check rangeType field (fixes bug
 *               1435461) (DG);
 * 04-Sep-2006 : Fix auto range calculation for the case where all data values
 *               are constant and large (see bug report 1549218) (DG);
 * 11-Dec-2006 : Fix bug in auto-tick unit selection with tick format override,
 *               see bug 1608371 (DG);
 * 22-Mar-2007 : Use new defaultAutoRange attribute (DG);
 * 20-Jun-2007 : Removed JCommon dependencies (DG);
 * 02-Jul-2007 : Added entity support for axis labels (DG);
 * 12-Jul-2007 : Updated for API changes in super class (DG);
 * 25-Sep-2008 : Added minor tick support, see patch 1934255 by Peter Kolb (DG);
 * 21-Jan-2009 : Default minor tick counts will now come from the tick unit
 *               collection (DG);
 * 19-Mar-2009 : Added entity support - see patch 2603321 by Peter Kolb (DG);
 *
 */

package org.jfree.chart.axis;

import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.font.LineMetrics;
import java.awt.geom.Rectangle2D;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

import org.jfree.chart.event.AxisChangeEvent;
import org.jfree.chart.plot.Plot;
import org.jfree.chart.plot.PlotRenderingInfo;
import org.jfree.chart.plot.ValueAxisPlot;
import org.jfree.chart.text.TextAnchor;
import org.jfree.chart.util.ObjectUtilities;
import org.jfree.chart.util.RectangleEdge;
import org.jfree.chart.util.RectangleInsets;
import org.jfree.data.Range;
import org.jfree.data.RangeType;

/**
 * An axis for displaying numerical data.
 * <P>
 * If the axis is set up to automatically determine its range to fit the data,
 * you can ensure that the range includes zero (statisticians usually prefer
 * this) by setting the <code>autoRangeIncludesZero</code> flag to
 * <code>true</code>.
 * <P>
 * The <code>NumberAxis</code> class has a mechanism for automatically
 * selecting a tick unit that is appropriate for the current axis range.  This
 * mechanism is an adaptation of code suggested by Laurence Vanhelsuwe.
 */
public class NumberAxis extends ValueAxis implements Cloneable, Serializable {

    /** For serialization. */
    private static final long serialVersionUID = 2805933088476185789L;

    /** The default value for the autoRangeIncludesZero flag. */
    public static final boolean DEFAULT_AUTO_RANGE_INCLUDES_ZERO = true;

    /** The default value for the autoRangeStickyZero flag. */
    public static final boolean DEFAULT_AUTO_RANGE_STICKY_ZERO = true;

    /** The default tick unit. */
    public static final NumberTickUnit DEFAULT_TICK_UNIT = new NumberTickUnit(
            1.0, new DecimalFormat("0"));

    /** The default setting for the vertical tick labels flag. */
    public static final boolean DEFAULT_VERTICAL_TICK_LABELS = false;

    /**
     * The range type (can be used to force the axis to display only positive
     * values or only negative values).
     */
    private RangeType rangeType;

    /**
     * A flag that affects the axis range when the range is determined
     * automatically.  If the auto range does NOT include zero and this flag
     * is TRUE, then the range is changed to include zero.
     */
    private boolean autoRangeIncludesZero;

    /**
     * A flag that affects the size of the margins added to the axis range when
     * the range is determined automatically.  If the value 0 falls within the
     * margin and this flag is TRUE, then the margin is truncated at zero.
     */
    private boolean autoRangeStickyZero;

    /** The tick unit for the axis. */
    private NumberTickUnit tickUnit;

    /** The override number format. */
    private NumberFormat numberFormatOverride;

    /** An optional band for marking regions on the axis. */
    private MarkerAxisBand markerBand;

    /**
     * Default constructor.
     */
    public NumberAxis() {
        this(null);
    }

    /**
     * Constructs a number axis, using default values where necessary.
     *
     * @param label  the axis label (<code>null</code> permitted).
     */
    public NumberAxis(String label) {
        super(label, NumberAxis.createStandardTickUnits());
        int PROBE_START_LINE_202 = 202;
		org.jfree.data.RangeType q_full_32_line_202 = RangeType.FULL;
		int PROBE_END_LINE_202 = 202;
		this.rangeType = q_full_32_line_202;
        int PROBE_START_LINE_203 = 203;
		boolean f_default_auto_range_includes_zero_809_line_203 = DEFAULT_AUTO_RANGE_INCLUDES_ZERO;
		int PROBE_END_LINE_203 = 203;
		this.autoRangeIncludesZero = f_default_auto_range_includes_zero_809_line_203;
        int PROBE_START_LINE_204 = 204;
		boolean f_default_auto_range_sticky_zero_811_line_204 = DEFAULT_AUTO_RANGE_STICKY_ZERO;
		int PROBE_END_LINE_204 = 204;
		this.autoRangeStickyZero = f_default_auto_range_sticky_zero_811_line_204;
        int PROBE_START_LINE_205 = 205;
		org.jfree.chart.axis.NumberTickUnit f_default_tick_unit_805_line_205 = DEFAULT_TICK_UNIT;
		int PROBE_END_LINE_205 = 205;
		this.tickUnit = f_default_tick_unit_805_line_205;
        this.numberFormatOverride = null;
        this.markerBand = null;
    }

    /**
     * Returns the axis range type.
     *
     * @return The axis range type (never <code>null</code>).
     *
     * @see #setRangeType(RangeType)
     */
    public RangeType getRangeType() {
        return this.rangeType;
    }

    /**
     * Sets the axis range type.
     *
     * @param rangeType  the range type (<code>null</code> not permitted).
     *
     * @see #getRangeType()
     */
    public void setRangeType(RangeType rangeType) {
        if (rangeType == null) {
            throw new IllegalArgumentException("Null 'rangeType' argument.");
        }
        this.rangeType = rangeType;
        notifyListeners(new AxisChangeEvent(this));
    }

    /**
     * Returns the flag that indicates whether or not the automatic axis range
     * (if indeed it is determined automatically) is forced to include zero.
     *
     * @return The flag.
     */
    public boolean getAutoRangeIncludesZero() {
        int PROBE_START_LINE_243 = 243;
		boolean f_auto_range_includes_zero_808_line_243 = this.autoRangeIncludesZero;
		int PROBE_END_LINE_243 = 243;
		return f_auto_range_includes_zero_808_line_243;
    }

    /**
     * Sets the flag that indicates whether or not the axis range, if
     * automatically calculated, is forced to include zero.
     * <p>
     * If the flag is changed to <code>true</code>, the axis range is
     * recalculated.
     * <p>
     * Any change to the flag will trigger an {@link AxisChangeEvent}.
     *
     * @param flag  the new value of the flag.
     *
     * @see #getAutoRangeIncludesZero()
     */
    public void setAutoRangeIncludesZero(boolean flag) {
        int PROBE_START_LINE_260 = 266;
		boolean f_auto_range_includes_zero_808_line_260 = this.autoRangeIncludesZero;
		boolean p_flag_816_line_260 = flag;
		boolean number_axis_1_expr25_line_260 = f_auto_range_includes_zero_808_line_260 != p_flag_816_line_260;
		int PROBE_END_LINE_260 = 266;
		if (number_axis_1_expr25_line_260) {
            int PROBE_START_LINE_261 = 261;
			boolean p_flag_816_line_261 = flag;
			int PROBE_END_LINE_261 = 261;
			this.autoRangeIncludesZero = p_flag_816_line_261;
            int PROBE_START_LINE_262 = 264;
			boolean number_axis_1_expr31_line_262 = isAutoRange();
			int PROBE_END_LINE_262 = 264;
			if (number_axis_1_expr31_line_262) {
                autoAdjustRange();
            }
            notifyListeners(new AxisChangeEvent(this));
        }
    }

    /**
     * Returns a flag that affects the auto-range when zero falls outside the
     * data range but inside the margins defined for the axis.
     *
     * @return The flag.
     *
     * @see #setAutoRangeStickyZero(boolean)
     */
    public boolean getAutoRangeStickyZero() {
        int PROBE_START_LINE_278 = 278;
		boolean f_auto_range_sticky_zero_810_line_278 = this.autoRangeStickyZero;
		int PROBE_END_LINE_278 = 278;
		return f_auto_range_sticky_zero_810_line_278;
    }

    /**
     * Sets a flag that affects the auto-range when zero falls outside the data
     * range but inside the margins defined for the axis.
     *
     * @param flag  the new flag.
     *
     * @see #getAutoRangeStickyZero()
     */
    public void setAutoRangeStickyZero(boolean flag) {
        if (this.autoRangeStickyZero != flag) {
            this.autoRangeStickyZero = flag;
            if (isAutoRange()) {
                autoAdjustRange();
            }
            notifyListeners(new AxisChangeEvent(this));
        }
    }

    /**
     * Returns the tick unit for the axis.
     * <p>
     * Note: if the <code>autoTickUnitSelection</code> flag is
     * <code>true</code> the tick unit may be changed while the axis is being
     * drawn, so in that case the return value from this method may be
     * irrelevant if the method is called before the axis has been drawn.
     *
     * @return The tick unit for the axis.
     *
     * @see #setTickUnit(NumberTickUnit)
     * @see ValueAxis#isAutoTickUnitSelection()
     */
    public NumberTickUnit getTickUnit() {
        return this.tickUnit;
    }

    /**
     * Sets the tick unit for the axis and sends an {@link AxisChangeEvent} to
     * all registered listeners.  A side effect of calling this method is that
     * the "auto-select" feature for tick units is switched off (you can
     * restore it using the {@link ValueAxis#setAutoTickUnitSelection(boolean)}
     * method).
     *
     * @param unit  the new tick unit (<code>null</code> not permitted).
     *
     * @see #getTickUnit()
     * @see #setTickUnit(NumberTickUnit, boolean, boolean)
     */
    public void setTickUnit(NumberTickUnit unit) {
        // defer argument checking...
        setTickUnit(unit, true, true);
    }

    /**
     * Sets the tick unit for the axis and, if requested, sends an
     * {@link AxisChangeEvent} to all registered listeners.  In addition, an
     * option is provided to turn off the "auto-select" feature for tick units
     * (you can restore it using the
     * {@link ValueAxis#setAutoTickUnitSelection(boolean)} method).
     *
     * @param unit  the new tick unit (<code>null</code> not permitted).
     * @param notify  notify listeners?
     * @param turnOffAutoSelect  turn off the auto-tick selection?
     */
    public void setTickUnit(NumberTickUnit unit, boolean notify,
                            boolean turnOffAutoSelect) {

        if (unit == null) {
            throw new IllegalArgumentException("Null 'unit' argument.");
        }
        this.tickUnit = unit;
        if (turnOffAutoSelect) {
            setAutoTickUnitSelection(false, false);
        }
        if (notify) {
            notifyListeners(new AxisChangeEvent(this));
        }

    }

    /**
     * Returns the number format override.  If this is non-null, then it will
     * be used to format the numbers on the axis.
     *
     * @return The number formatter (possibly <code>null</code>).
     *
     * @see #setNumberFormatOverride(NumberFormat)
     */
    public NumberFormat getNumberFormatOverride() {
        return this.numberFormatOverride;
    }

    /**
     * Sets the number format override.  If this is non-null, then it will be
     * used to format the numbers on the axis.
     *
     * @param formatter  the number formatter (<code>null</code> permitted).
     *
     * @see #getNumberFormatOverride()
     */
    public void setNumberFormatOverride(NumberFormat formatter) {
        this.numberFormatOverride = formatter;
        notifyListeners(new AxisChangeEvent(this));
    }

    /**
     * Returns the (optional) marker band for the axis.
     *
     * @return The marker band (possibly <code>null</code>).
     *
     * @see #setMarkerBand(MarkerAxisBand)
     */
    public MarkerAxisBand getMarkerBand() {
        return this.markerBand;
    }

    /**
     * Sets the marker band for the axis.
     * <P>
     * The marker band is optional, leave it set to <code>null</code> if you
     * don't require it.
     *
     * @param band the new band (<code>null<code> permitted).
     *
     * @see #getMarkerBand()
     */
    public void setMarkerBand(MarkerAxisBand band) {
        this.markerBand = band;
        notifyListeners(new AxisChangeEvent(this));
    }

    /**
     * Configures the axis to work with the specified plot.  If the axis has
     * auto-scaling, then sets the maximum and minimum values.
     */
    public void configure() {
        int PROBE_START_LINE_416 = 418;
		boolean number_axis_1_expr38_line_416 = isAutoRange();
		int PROBE_END_LINE_416 = 418;
		if (number_axis_1_expr38_line_416) {
            autoAdjustRange();
        }
    }

    /**
     * Rescales the axis to ensure that all data is visible.
     */
    protected void autoAdjustRange() {

        int PROBE_START_LINE_426 = 426;
		Plot number_axis_1_expr40_line_426 = getPlot();
		int PROBE_END_LINE_426 = 426;
		Plot plot = number_axis_1_expr40_line_426;
        int PROBE_START_LINE_427 = 429;
		org.jfree.chart.plot.Plot v_plot_824_line_427 = plot;
		boolean number_axis_1_expr41_line_427 = v_plot_824_line_427 == null;
		int PROBE_END_LINE_427 = 429;
		if (number_axis_1_expr41_line_427) {
            return;  // no plot, no data
        }

        int PROBE_START_LINE_431 = 508;
		org.jfree.chart.plot.Plot v_plot_824_line_431 = plot;
		boolean number_axis_1_expr42_line_431 = v_plot_824_line_431 instanceof ValueAxisPlot;
		int PROBE_END_LINE_431 = 508;
		if (number_axis_1_expr42_line_431) {
            int PROBE_START_LINE_432 = 432;
			org.jfree.chart.plot.Plot v_plot_824_line_432 = plot;
			int PROBE_END_LINE_432 = 432;
			ValueAxisPlot vap = (ValueAxisPlot) v_plot_824_line_432;

            int PROBE_START_LINE_434 = 434;
			org.jfree.chart.plot.ValueAxisPlot v_vap_825_line_434 = vap;
			Range number_axis_1_expr44_line_434 = v_vap_825_line_434.getDataRange(this);
			int PROBE_END_LINE_434 = 434;
			Range r = number_axis_1_expr44_line_434;
            int PROBE_START_LINE_435 = 437;
			org.jfree.data.Range v_r_826_line_435 = r;
			boolean number_axis_1_expr46_line_435 = v_r_826_line_435 == null;
			int PROBE_END_LINE_435 = 437;
			if (number_axis_1_expr46_line_435) {
                int PROBE_START_LINE_436 = 436;
				org.jfree.data.Range number_axis_1_expr48_line_436 = getDefaultAutoRange();
				int PROBE_END_LINE_436 = 436;
				r = number_axis_1_expr48_line_436;
            }

            int PROBE_START_LINE_439 = 439;
			org.jfree.data.Range v_r_826_line_439 = r;
			double number_axis_1_expr49_line_439 = v_r_826_line_439.getUpperBound();
			int PROBE_END_LINE_439 = 439;
			double upper = number_axis_1_expr49_line_439;
            int PROBE_START_LINE_440 = 440;
			org.jfree.data.Range v_r_826_line_440 = r;
			double number_axis_1_expr50_line_440 = v_r_826_line_440.getLowerBound();
			int PROBE_END_LINE_440 = 440;
			double lower = number_axis_1_expr50_line_440;
            int PROBE_START_LINE_441 = 448;
			org.jfree.data.RangeType f_range_type_807_line_441 = this.rangeType;
			org.jfree.data.RangeType q_positive_33_line_441 = RangeType.POSITIVE;
			boolean number_axis_1_expr51_line_441 = f_range_type_807_line_441 == q_positive_33_line_441;
			int PROBE_END_LINE_441 = 448;
			if (number_axis_1_expr51_line_441) {
                lower = Math.max(0.0, lower);
                upper = Math.max(0.0, upper);
            } else {
				int PROBE_START_LINE_445 = 448;
				org.jfree.data.RangeType f_range_type_807_line_445 = this.rangeType;
				org.jfree.data.RangeType q_negative_34_line_445 = RangeType.NEGATIVE;
				boolean number_axis_1_expr54_line_445 = f_range_type_807_line_445 == q_negative_34_line_445;
				int PROBE_END_LINE_445 = 448;
				if (number_axis_1_expr54_line_445) {
					lower = Math.min(0.0, lower);
					upper = Math.min(0.0, upper);
				}
			}

            int PROBE_START_LINE_450 = 453;
			boolean number_axis_1_expr57_line_450 = getAutoRangeIncludesZero();
			int PROBE_END_LINE_450 = 453;
			if (number_axis_1_expr57_line_450) {
                int PROBE_START_LINE_451 = 451;
				double v_lower_828_line_451 = lower;
				double number_axis_1_expr59_line_451 = Math.min(v_lower_828_line_451, 0.0);
				int PROBE_END_LINE_451 = 451;
				lower = number_axis_1_expr59_line_451;
                int PROBE_START_LINE_452 = 452;
				double v_upper_827_line_452 = upper;
				double number_axis_1_expr61_line_452 = Math.max(v_upper_827_line_452, 0.0);
				int PROBE_END_LINE_452 = 452;
				upper = number_axis_1_expr61_line_452;
            }
            int PROBE_START_LINE_454 = 454;
			double v_upper_827_line_454 = upper;
			double v_lower_828_line_454 = lower;
			double number_axis_1_expr62_line_454 = v_upper_827_line_454 - v_lower_828_line_454;
			int PROBE_END_LINE_454 = 454;
			double range = number_axis_1_expr62_line_454;

            int PROBE_START_LINE_457 = 457;
			double number_axis_1_expr63_line_457 = getFixedAutoRange();
			int PROBE_END_LINE_457 = 457;
			// if fixed auto range, then derive lower bound...
            double fixedAutoRange = number_axis_1_expr63_line_457;
            int PROBE_START_LINE_458 = 505;
			double v_fixed_auto_range_830_line_458 = fixedAutoRange;
			boolean number_axis_1_expr64_line_458 = v_fixed_auto_range_830_line_458 > 0.0;
			int PROBE_END_LINE_458 = 505;
			if (number_axis_1_expr64_line_458) {
                lower = upper - fixedAutoRange;
            }
            else {
                int PROBE_START_LINE_463 = 463;
				double number_axis_1_expr65_line_463 = getAutoRangeMinimumSize();
				int PROBE_END_LINE_463 = 463;
				// ensure the autorange is at least <minRange> in size...
                double minRange = number_axis_1_expr65_line_463;
                int PROBE_START_LINE_464 = 485;
				double v_range_829_line_464 = range;
				double v_min_range_831_line_464 = minRange;
				boolean number_axis_1_expr66_line_464 = v_range_829_line_464 < v_min_range_831_line_464;
				int PROBE_END_LINE_464 = 485;
				if (number_axis_1_expr66_line_464) {
                    double expand = (minRange - range) / 2;
                    upper = upper + expand;
                    lower = lower - expand;
                    if (lower == upper) { // see bug report 1549218
                        double adjust = Math.abs(lower) / 10.0;
                        lower = lower - adjust;
                        upper = upper + adjust;
                    }
                    if (this.rangeType == RangeType.POSITIVE) {
                        if (lower < 0.0) {
                            upper = upper - lower;
                            lower = 0.0;
                        }
                    }
                    else if (this.rangeType == RangeType.NEGATIVE) {
                        if (upper > 0.0) {
                            lower = lower - upper;
                            upper = 0.0;
                        }
                    }
                }

                int PROBE_START_LINE_487 = 504;
				boolean number_axis_1_expr67_line_487 = getAutoRangeStickyZero();
				int PROBE_END_LINE_487 = 504;
				if (number_axis_1_expr67_line_487) {
                    int PROBE_START_LINE_488 = 493;
					double v_upper_827_line_488 = upper;
					boolean number_axis_1_expr68_line_488 = v_upper_827_line_488 <= 0.0;
					int PROBE_END_LINE_488 = 493;
					if (number_axis_1_expr68_line_488) {
                        upper = Math.min(0.0, upper + getUpperMargin() * range);
                    }
                    else {
                        int PROBE_START_LINE_492 = 492;
						double v_upper_827_line_492 = upper;
						double number_axis_1_expr72_line_492 = getUpperMargin();
						double v_range_829_line_492 = range;
						double number_axis_1_expr71_line_492 = number_axis_1_expr72_line_492 * v_range_829_line_492;
						double number_axis_1_expr70_line_492 = v_upper_827_line_492 + number_axis_1_expr71_line_492;
						int PROBE_END_LINE_492 = 492;
						upper = number_axis_1_expr70_line_492;
                    }
                    int PROBE_START_LINE_494 = 499;
					double v_lower_828_line_494 = lower;
					boolean number_axis_1_expr73_line_494 = v_lower_828_line_494 >= 0.0;
					int PROBE_END_LINE_494 = 499;
					if (number_axis_1_expr73_line_494) {
                        int PROBE_START_LINE_495 = 495;
						double v_lower_828_line_495 = lower;
						double number_axis_1_expr78_line_495 = getLowerMargin();
						double v_range_829_line_495 = range;
						double number_axis_1_expr77_line_495 = number_axis_1_expr78_line_495 * v_range_829_line_495;
						double number_axis_1_expr76_line_495 = v_lower_828_line_495 - number_axis_1_expr77_line_495;
						double number_axis_1_expr75_line_495 = Math.max(0.0, number_axis_1_expr76_line_495);
						int PROBE_END_LINE_495 = 495;
						lower = number_axis_1_expr75_line_495;
                    }
                    else {
                        lower = lower - getLowerMargin() * range;
                    }
                }
                else {
                    upper = upper + getUpperMargin() * range;
                    lower = lower - getLowerMargin() * range;
                }
            }

            int PROBE_START_LINE_507 = 507;
			double v_lower_828_line_507 = lower;
			double v_upper_827_line_507 = upper;
			int PROBE_END_LINE_507 = 507;
			setRange(new Range(v_lower_828_line_507, v_upper_827_line_507), false, false);
        }

    }

    /**
     * Converts a data value to a coordinate in Java2D space, assuming that the
     * axis runs along one edge of the specified dataArea.
     * <p>
     * Note that it is possible for the coordinate to fall outside the plotArea.
     *
     * @param value  the data value.
     * @param area  the area for plotting the data.
     * @param edge  the axis location.
     *
     * @return The Java2D coordinate.
     *
     * @see #java2DToValue(double, Rectangle2D, RectangleEdge)
     */
    public double valueToJava2D(double value, Rectangle2D area,
                                RectangleEdge edge) {

        Range range = getRange();
        double axisMin = range.getLowerBound();
        double axisMax = range.getUpperBound();

        double min = 0.0;
        double max = 0.0;
        if (RectangleEdge.isTopOrBottom(edge)) {
            min = area.getX();
            max = area.getMaxX();
        }
        else if (RectangleEdge.isLeftOrRight(edge)) {
            max = area.getMinY();
            min = area.getMaxY();
        }
        if (isInverted()) {
            return max
                   - ((value - axisMin) / (axisMax - axisMin)) * (max - min);
        }
        else {
            return min
                   + ((value - axisMin) / (axisMax - axisMin)) * (max - min);
        }

    }

    /**
     * Converts a coordinate in Java2D space to the corresponding data value,
     * assuming that the axis runs along one edge of the specified dataArea.
     *
     * @param java2DValue  the coordinate in Java2D space.
     * @param area  the area in which the data is plotted.
     * @param edge  the location.
     *
     * @return The data value.
     *
     * @see #valueToJava2D(double, Rectangle2D, RectangleEdge)
     */
    public double java2DToValue(double java2DValue, Rectangle2D area,
                                RectangleEdge edge) {

        Range range = getRange();
        double axisMin = range.getLowerBound();
        double axisMax = range.getUpperBound();

        double min = 0.0;
        double max = 0.0;
        if (RectangleEdge.isTopOrBottom(edge)) {
            min = area.getX();
            max = area.getMaxX();
        }
        else if (RectangleEdge.isLeftOrRight(edge)) {
            min = area.getMaxY();
            max = area.getY();
        }
        if (isInverted()) {
            return axisMax
                   - (java2DValue - min) / (max - min) * (axisMax - axisMin);
        }
        else {
            return axisMin
                   + (java2DValue - min) / (max - min) * (axisMax - axisMin);
        }

    }

    /**
     * Calculates the value of the lowest visible tick on the axis.
     *
     * @return The value of the lowest visible tick on the axis.
     *
     * @see #calculateHighestVisibleTickValue()
     */
    protected double calculateLowestVisibleTickValue() {

        double unit = getTickUnit().getSize();
        double index = Math.ceil(getRange().getLowerBound() / unit);
        return index * unit;

    }

    /**
     * Calculates the value of the highest visible tick on the axis.
     *
     * @return The value of the highest visible tick on the axis.
     *
     * @see #calculateLowestVisibleTickValue()
     */
    protected double calculateHighestVisibleTickValue() {

        double unit = getTickUnit().getSize();
        double index = Math.floor(getRange().getUpperBound() / unit);
        return index * unit;

    }

    /**
     * Calculates the number of visible ticks.
     *
     * @return The number of visible ticks on the axis.
     */
    protected int calculateVisibleTickCount() {

        double unit = getTickUnit().getSize();
        Range range = getRange();
        return (int) (Math.floor(range.getUpperBound() / unit)
                      - Math.ceil(range.getLowerBound() / unit) + 1);

    }

    /**
     * Draws the axis on a Java 2D graphics device (such as the screen or a
     * printer).
     *
     * @param g2  the graphics device (<code>null</code> not permitted).
     * @param cursor  the cursor location.
     * @param plotArea  the area within which the axes and data should be drawn
     *                  (<code>null</code> not permitted).
     * @param dataArea  the area within which the data should be drawn
     *                  (<code>null</code> not permitted).
     * @param edge  the location of the axis (<code>null</code> not permitted).
     * @param plotState  collects information about the plot
     *                   (<code>null</code> permitted).
     *
     * @return The axis state (never <code>null</code>).
     */
    public AxisState draw(Graphics2D g2, double cursor, Rectangle2D plotArea,
            Rectangle2D dataArea, RectangleEdge edge,
            PlotRenderingInfo plotState) {

        AxisState state = null;
        // if the axis is not visible, don't draw it...
        if (!isVisible()) {
            state = new AxisState(cursor);
            // even though the axis is not visible, we need ticks for the
            // gridlines...
            List ticks = refreshTicks(g2, state, dataArea, edge);
            state.setTicks(ticks);
            return state;
        }

        // draw the tick marks and labels...
        state = drawTickMarksAndLabels(g2, cursor, plotArea, dataArea, edge,
                plotState);

//        // draw the marker band (if there is one)...
//        if (getMarkerBand() != null) {
//            if (edge == RectangleEdge.BOTTOM) {
//                cursor = cursor - getMarkerBand().getHeight(g2);
//            }
//            getMarkerBand().draw(g2, plotArea, dataArea, 0, cursor);
//        }

        // draw the axis label...
        state = drawLabel(getLabel(), g2, plotArea, dataArea, edge, state,
                plotState);
        createAndAddEntity(cursor, state, dataArea, edge, plotState);
        return state;

    }

    /**
     * Creates the standard tick units.
     * <P>
     * If you don't like these defaults, create your own instance of TickUnits
     * and then pass it to the setStandardTickUnits() method in the
     * NumberAxis class.
     *
     * @return The standard tick units.
     *
     * @see #setStandardTickUnits(TickUnitSource)
     * @see #createIntegerTickUnits()
     */
    public static TickUnitSource createStandardTickUnits() {

        TickUnits units = new TickUnits();
        DecimalFormat df0 = new DecimalFormat("0.00000000");
        DecimalFormat df1 = new DecimalFormat("0.0000000");
        DecimalFormat df2 = new DecimalFormat("0.000000");
        DecimalFormat df3 = new DecimalFormat("0.00000");
        DecimalFormat df4 = new DecimalFormat("0.0000");
        DecimalFormat df5 = new DecimalFormat("0.000");
        DecimalFormat df6 = new DecimalFormat("0.00");
        DecimalFormat df7 = new DecimalFormat("0.0");
        DecimalFormat df8 = new DecimalFormat("#,##0");
        DecimalFormat df9 = new DecimalFormat("#,###,##0");
        DecimalFormat df10 = new DecimalFormat("#,###,###,##0");

        int PROBE_START_LINE_718 = 718;
		org.jfree.chart.axis.TickUnits v_units_844_line_718 = units;
		java.text.DecimalFormat v_df_1_846_line_718 = df1;
		int PROBE_END_LINE_718 = 718;
		// we can add the units in any order, the TickUnits collection will
        // sort them...
        v_units_844_line_718.add(new NumberTickUnit(0.0000001, v_df_1_846_line_718, 2));
        int PROBE_START_LINE_719 = 719;
		org.jfree.chart.axis.TickUnits v_units_844_line_719 = units;
		java.text.DecimalFormat v_df_2_847_line_719 = df2;
		int PROBE_END_LINE_719 = 719;
		v_units_844_line_719.add(new NumberTickUnit(0.000001, v_df_2_847_line_719, 2));
        int PROBE_START_LINE_720 = 720;
		org.jfree.chart.axis.TickUnits v_units_844_line_720 = units;
		java.text.DecimalFormat v_df_3_848_line_720 = df3;
		int PROBE_END_LINE_720 = 720;
		v_units_844_line_720.add(new NumberTickUnit(0.00001, v_df_3_848_line_720, 2));
        int PROBE_START_LINE_721 = 721;
		org.jfree.chart.axis.TickUnits v_units_844_line_721 = units;
		java.text.DecimalFormat v_df_4_849_line_721 = df4;
		int PROBE_END_LINE_721 = 721;
		v_units_844_line_721.add(new NumberTickUnit(0.0001, v_df_4_849_line_721, 2));
        int PROBE_START_LINE_722 = 722;
		org.jfree.chart.axis.TickUnits v_units_844_line_722 = units;
		java.text.DecimalFormat v_df_5_850_line_722 = df5;
		int PROBE_END_LINE_722 = 722;
		v_units_844_line_722.add(new NumberTickUnit(0.001, v_df_5_850_line_722, 2));
        int PROBE_START_LINE_723 = 723;
		org.jfree.chart.axis.TickUnits v_units_844_line_723 = units;
		java.text.DecimalFormat v_df_6_851_line_723 = df6;
		int PROBE_END_LINE_723 = 723;
		v_units_844_line_723.add(new NumberTickUnit(0.01, v_df_6_851_line_723, 2));
        int PROBE_START_LINE_724 = 724;
		org.jfree.chart.axis.TickUnits v_units_844_line_724 = units;
		java.text.DecimalFormat v_df_7_852_line_724 = df7;
		int PROBE_END_LINE_724 = 724;
		v_units_844_line_724.add(new NumberTickUnit(0.1, v_df_7_852_line_724, 2));
        int PROBE_START_LINE_725 = 725;
		org.jfree.chart.axis.TickUnits v_units_844_line_725 = units;
		java.text.DecimalFormat v_df_8_853_line_725 = df8;
		int PROBE_END_LINE_725 = 725;
		v_units_844_line_725.add(new NumberTickUnit(1, v_df_8_853_line_725, 2));
        int PROBE_START_LINE_726 = 726;
		org.jfree.chart.axis.TickUnits v_units_844_line_726 = units;
		java.text.DecimalFormat v_df_8_853_line_726 = df8;
		int PROBE_END_LINE_726 = 726;
		v_units_844_line_726.add(new NumberTickUnit(10, v_df_8_853_line_726, 2));
        int PROBE_START_LINE_727 = 727;
		org.jfree.chart.axis.TickUnits v_units_844_line_727 = units;
		java.text.DecimalFormat v_df_8_853_line_727 = df8;
		int PROBE_END_LINE_727 = 727;
		v_units_844_line_727.add(new NumberTickUnit(100, v_df_8_853_line_727, 2));
        int PROBE_START_LINE_728 = 728;
		org.jfree.chart.axis.TickUnits v_units_844_line_728 = units;
		java.text.DecimalFormat v_df_8_853_line_728 = df8;
		int PROBE_END_LINE_728 = 728;
		v_units_844_line_728.add(new NumberTickUnit(1000, v_df_8_853_line_728, 2));
        int PROBE_START_LINE_729 = 729;
		org.jfree.chart.axis.TickUnits v_units_844_line_729 = units;
		java.text.DecimalFormat v_df_8_853_line_729 = df8;
		int PROBE_END_LINE_729 = 729;
		v_units_844_line_729.add(new NumberTickUnit(10000, v_df_8_853_line_729, 2));
        int PROBE_START_LINE_730 = 730;
		org.jfree.chart.axis.TickUnits v_units_844_line_730 = units;
		java.text.DecimalFormat v_df_8_853_line_730 = df8;
		int PROBE_END_LINE_730 = 730;
		v_units_844_line_730.add(new NumberTickUnit(100000, v_df_8_853_line_730, 2));
        int PROBE_START_LINE_731 = 731;
		org.jfree.chart.axis.TickUnits v_units_844_line_731 = units;
		java.text.DecimalFormat v_df_9_854_line_731 = df9;
		int PROBE_END_LINE_731 = 731;
		v_units_844_line_731.add(new NumberTickUnit(1000000, v_df_9_854_line_731, 2));
        int PROBE_START_LINE_732 = 732;
		org.jfree.chart.axis.TickUnits v_units_844_line_732 = units;
		java.text.DecimalFormat v_df_9_854_line_732 = df9;
		int PROBE_END_LINE_732 = 732;
		v_units_844_line_732.add(new NumberTickUnit(10000000, v_df_9_854_line_732, 2));
        int PROBE_START_LINE_733 = 733;
		org.jfree.chart.axis.TickUnits v_units_844_line_733 = units;
		java.text.DecimalFormat v_df_9_854_line_733 = df9;
		int PROBE_END_LINE_733 = 733;
		v_units_844_line_733.add(new NumberTickUnit(100000000, v_df_9_854_line_733, 2));
        int PROBE_START_LINE_734 = 734;
		org.jfree.chart.axis.TickUnits v_units_844_line_734 = units;
		java.text.DecimalFormat v_df_10_855_line_734 = df10;
		int PROBE_END_LINE_734 = 734;
		v_units_844_line_734.add(new NumberTickUnit(1000000000, v_df_10_855_line_734, 2));
        int PROBE_START_LINE_735 = 735;
		org.jfree.chart.axis.TickUnits v_units_844_line_735 = units;
		java.text.DecimalFormat v_df_10_855_line_735 = df10;
		int PROBE_END_LINE_735 = 735;
		v_units_844_line_735.add(new NumberTickUnit(10000000000.0, v_df_10_855_line_735, 2));
        int PROBE_START_LINE_736 = 736;
		org.jfree.chart.axis.TickUnits v_units_844_line_736 = units;
		java.text.DecimalFormat v_df_10_855_line_736 = df10;
		int PROBE_END_LINE_736 = 736;
		v_units_844_line_736.add(new NumberTickUnit(100000000000.0, v_df_10_855_line_736, 2));

        int PROBE_START_LINE_738 = 738;
		org.jfree.chart.axis.TickUnits v_units_844_line_738 = units;
		java.text.DecimalFormat v_df_0_845_line_738 = df0;
		int PROBE_END_LINE_738 = 738;
		v_units_844_line_738.add(new NumberTickUnit(0.00000025, v_df_0_845_line_738, 5));
        int PROBE_START_LINE_739 = 739;
		org.jfree.chart.axis.TickUnits v_units_844_line_739 = units;
		java.text.DecimalFormat v_df_1_846_line_739 = df1;
		int PROBE_END_LINE_739 = 739;
		v_units_844_line_739.add(new NumberTickUnit(0.0000025, v_df_1_846_line_739, 5));
        int PROBE_START_LINE_740 = 740;
		org.jfree.chart.axis.TickUnits v_units_844_line_740 = units;
		java.text.DecimalFormat v_df_2_847_line_740 = df2;
		int PROBE_END_LINE_740 = 740;
		v_units_844_line_740.add(new NumberTickUnit(0.000025, v_df_2_847_line_740, 5));
        int PROBE_START_LINE_741 = 741;
		org.jfree.chart.axis.TickUnits v_units_844_line_741 = units;
		java.text.DecimalFormat v_df_3_848_line_741 = df3;
		int PROBE_END_LINE_741 = 741;
		v_units_844_line_741.add(new NumberTickUnit(0.00025, v_df_3_848_line_741, 5));
        int PROBE_START_LINE_742 = 742;
		org.jfree.chart.axis.TickUnits v_units_844_line_742 = units;
		java.text.DecimalFormat v_df_4_849_line_742 = df4;
		int PROBE_END_LINE_742 = 742;
		v_units_844_line_742.add(new NumberTickUnit(0.0025, v_df_4_849_line_742, 5));
        int PROBE_START_LINE_743 = 743;
		org.jfree.chart.axis.TickUnits v_units_844_line_743 = units;
		java.text.DecimalFormat v_df_5_850_line_743 = df5;
		int PROBE_END_LINE_743 = 743;
		v_units_844_line_743.add(new NumberTickUnit(0.025, v_df_5_850_line_743, 5));
        int PROBE_START_LINE_744 = 744;
		org.jfree.chart.axis.TickUnits v_units_844_line_744 = units;
		java.text.DecimalFormat v_df_6_851_line_744 = df6;
		int PROBE_END_LINE_744 = 744;
		v_units_844_line_744.add(new NumberTickUnit(0.25, v_df_6_851_line_744, 5));
        int PROBE_START_LINE_745 = 745;
		org.jfree.chart.axis.TickUnits v_units_844_line_745 = units;
		java.text.DecimalFormat v_df_7_852_line_745 = df7;
		int PROBE_END_LINE_745 = 745;
		v_units_844_line_745.add(new NumberTickUnit(2.5, v_df_7_852_line_745, 5));
        int PROBE_START_LINE_746 = 746;
		org.jfree.chart.axis.TickUnits v_units_844_line_746 = units;
		java.text.DecimalFormat v_df_8_853_line_746 = df8;
		int PROBE_END_LINE_746 = 746;
		v_units_844_line_746.add(new NumberTickUnit(25, v_df_8_853_line_746, 5));
        int PROBE_START_LINE_747 = 747;
		org.jfree.chart.axis.TickUnits v_units_844_line_747 = units;
		java.text.DecimalFormat v_df_8_853_line_747 = df8;
		int PROBE_END_LINE_747 = 747;
		v_units_844_line_747.add(new NumberTickUnit(250, v_df_8_853_line_747, 5));
        int PROBE_START_LINE_748 = 748;
		org.jfree.chart.axis.TickUnits v_units_844_line_748 = units;
		java.text.DecimalFormat v_df_8_853_line_748 = df8;
		int PROBE_END_LINE_748 = 748;
		v_units_844_line_748.add(new NumberTickUnit(2500, v_df_8_853_line_748, 5));
        int PROBE_START_LINE_749 = 749;
		org.jfree.chart.axis.TickUnits v_units_844_line_749 = units;
		java.text.DecimalFormat v_df_8_853_line_749 = df8;
		int PROBE_END_LINE_749 = 749;
		v_units_844_line_749.add(new NumberTickUnit(25000, v_df_8_853_line_749, 5));
        int PROBE_START_LINE_750 = 750;
		org.jfree.chart.axis.TickUnits v_units_844_line_750 = units;
		java.text.DecimalFormat v_df_8_853_line_750 = df8;
		int PROBE_END_LINE_750 = 750;
		v_units_844_line_750.add(new NumberTickUnit(250000, v_df_8_853_line_750, 5));
        int PROBE_START_LINE_751 = 751;
		org.jfree.chart.axis.TickUnits v_units_844_line_751 = units;
		java.text.DecimalFormat v_df_9_854_line_751 = df9;
		int PROBE_END_LINE_751 = 751;
		v_units_844_line_751.add(new NumberTickUnit(2500000, v_df_9_854_line_751, 5));
        int PROBE_START_LINE_752 = 752;
		org.jfree.chart.axis.TickUnits v_units_844_line_752 = units;
		java.text.DecimalFormat v_df_9_854_line_752 = df9;
		int PROBE_END_LINE_752 = 752;
		v_units_844_line_752.add(new NumberTickUnit(25000000, v_df_9_854_line_752, 5));
        int PROBE_START_LINE_753 = 753;
		org.jfree.chart.axis.TickUnits v_units_844_line_753 = units;
		java.text.DecimalFormat v_df_9_854_line_753 = df9;
		int PROBE_END_LINE_753 = 753;
		v_units_844_line_753.add(new NumberTickUnit(250000000, v_df_9_854_line_753, 5));
        int PROBE_START_LINE_754 = 754;
		org.jfree.chart.axis.TickUnits v_units_844_line_754 = units;
		java.text.DecimalFormat v_df_10_855_line_754 = df10;
		int PROBE_END_LINE_754 = 754;
		v_units_844_line_754.add(new NumberTickUnit(2500000000.0, v_df_10_855_line_754, 5));
        int PROBE_START_LINE_755 = 755;
		org.jfree.chart.axis.TickUnits v_units_844_line_755 = units;
		java.text.DecimalFormat v_df_10_855_line_755 = df10;
		int PROBE_END_LINE_755 = 755;
		v_units_844_line_755.add(new NumberTickUnit(25000000000.0, v_df_10_855_line_755, 5));
        int PROBE_START_LINE_756 = 756;
		org.jfree.chart.axis.TickUnits v_units_844_line_756 = units;
		java.text.DecimalFormat v_df_10_855_line_756 = df10;
		int PROBE_END_LINE_756 = 756;
		v_units_844_line_756.add(new NumberTickUnit(250000000000.0, v_df_10_855_line_756, 5));

        int PROBE_START_LINE_758 = 758;
		org.jfree.chart.axis.TickUnits v_units_844_line_758 = units;
		java.text.DecimalFormat v_df_1_846_line_758 = df1;
		int PROBE_END_LINE_758 = 758;
		v_units_844_line_758.add(new NumberTickUnit(0.0000005, v_df_1_846_line_758, 5));
        int PROBE_START_LINE_759 = 759;
		org.jfree.chart.axis.TickUnits v_units_844_line_759 = units;
		java.text.DecimalFormat v_df_2_847_line_759 = df2;
		int PROBE_END_LINE_759 = 759;
		v_units_844_line_759.add(new NumberTickUnit(0.000005, v_df_2_847_line_759, 5));
        int PROBE_START_LINE_760 = 760;
		org.jfree.chart.axis.TickUnits v_units_844_line_760 = units;
		java.text.DecimalFormat v_df_3_848_line_760 = df3;
		int PROBE_END_LINE_760 = 760;
		v_units_844_line_760.add(new NumberTickUnit(0.00005, v_df_3_848_line_760, 5));
        int PROBE_START_LINE_761 = 761;
		org.jfree.chart.axis.TickUnits v_units_844_line_761 = units;
		java.text.DecimalFormat v_df_4_849_line_761 = df4;
		int PROBE_END_LINE_761 = 761;
		v_units_844_line_761.add(new NumberTickUnit(0.0005, v_df_4_849_line_761, 5));
        int PROBE_START_LINE_762 = 762;
		org.jfree.chart.axis.TickUnits v_units_844_line_762 = units;
		java.text.DecimalFormat v_df_5_850_line_762 = df5;
		int PROBE_END_LINE_762 = 762;
		v_units_844_line_762.add(new NumberTickUnit(0.005, v_df_5_850_line_762, 5));
        int PROBE_START_LINE_763 = 763;
		org.jfree.chart.axis.TickUnits v_units_844_line_763 = units;
		java.text.DecimalFormat v_df_6_851_line_763 = df6;
		int PROBE_END_LINE_763 = 763;
		v_units_844_line_763.add(new NumberTickUnit(0.05, v_df_6_851_line_763, 5));
        int PROBE_START_LINE_764 = 764;
		org.jfree.chart.axis.TickUnits v_units_844_line_764 = units;
		java.text.DecimalFormat v_df_7_852_line_764 = df7;
		int PROBE_END_LINE_764 = 764;
		v_units_844_line_764.add(new NumberTickUnit(0.5, v_df_7_852_line_764, 5));
        int PROBE_START_LINE_765 = 765;
		org.jfree.chart.axis.TickUnits v_units_844_line_765 = units;
		java.text.DecimalFormat v_df_8_853_line_765 = df8;
		int PROBE_END_LINE_765 = 765;
		v_units_844_line_765.add(new NumberTickUnit(5L, v_df_8_853_line_765, 5));
        int PROBE_START_LINE_766 = 766;
		org.jfree.chart.axis.TickUnits v_units_844_line_766 = units;
		java.text.DecimalFormat v_df_8_853_line_766 = df8;
		int PROBE_END_LINE_766 = 766;
		v_units_844_line_766.add(new NumberTickUnit(50L, v_df_8_853_line_766, 5));
        int PROBE_START_LINE_767 = 767;
		org.jfree.chart.axis.TickUnits v_units_844_line_767 = units;
		java.text.DecimalFormat v_df_8_853_line_767 = df8;
		int PROBE_END_LINE_767 = 767;
		v_units_844_line_767.add(new NumberTickUnit(500L, v_df_8_853_line_767, 5));
        int PROBE_START_LINE_768 = 768;
		org.jfree.chart.axis.TickUnits v_units_844_line_768 = units;
		java.text.DecimalFormat v_df_8_853_line_768 = df8;
		int PROBE_END_LINE_768 = 768;
		v_units_844_line_768.add(new NumberTickUnit(5000L, v_df_8_853_line_768, 5));
        int PROBE_START_LINE_769 = 769;
		org.jfree.chart.axis.TickUnits v_units_844_line_769 = units;
		java.text.DecimalFormat v_df_8_853_line_769 = df8;
		int PROBE_END_LINE_769 = 769;
		v_units_844_line_769.add(new NumberTickUnit(50000L, v_df_8_853_line_769, 5));
        int PROBE_START_LINE_770 = 770;
		org.jfree.chart.axis.TickUnits v_units_844_line_770 = units;
		java.text.DecimalFormat v_df_8_853_line_770 = df8;
		int PROBE_END_LINE_770 = 770;
		v_units_844_line_770.add(new NumberTickUnit(500000L, v_df_8_853_line_770, 5));
        int PROBE_START_LINE_771 = 771;
		org.jfree.chart.axis.TickUnits v_units_844_line_771 = units;
		java.text.DecimalFormat v_df_9_854_line_771 = df9;
		int PROBE_END_LINE_771 = 771;
		v_units_844_line_771.add(new NumberTickUnit(5000000L, v_df_9_854_line_771, 5));
        int PROBE_START_LINE_772 = 772;
		org.jfree.chart.axis.TickUnits v_units_844_line_772 = units;
		java.text.DecimalFormat v_df_9_854_line_772 = df9;
		int PROBE_END_LINE_772 = 772;
		v_units_844_line_772.add(new NumberTickUnit(50000000L, v_df_9_854_line_772, 5));
        int PROBE_START_LINE_773 = 773;
		org.jfree.chart.axis.TickUnits v_units_844_line_773 = units;
		java.text.DecimalFormat v_df_9_854_line_773 = df9;
		int PROBE_END_LINE_773 = 773;
		v_units_844_line_773.add(new NumberTickUnit(500000000L, v_df_9_854_line_773, 5));
        int PROBE_START_LINE_774 = 774;
		org.jfree.chart.axis.TickUnits v_units_844_line_774 = units;
		java.text.DecimalFormat v_df_10_855_line_774 = df10;
		int PROBE_END_LINE_774 = 774;
		v_units_844_line_774.add(new NumberTickUnit(5000000000L, v_df_10_855_line_774, 5));
        int PROBE_START_LINE_775 = 775;
		org.jfree.chart.axis.TickUnits v_units_844_line_775 = units;
		java.text.DecimalFormat v_df_10_855_line_775 = df10;
		int PROBE_END_LINE_775 = 775;
		v_units_844_line_775.add(new NumberTickUnit(50000000000L, v_df_10_855_line_775, 5));
        int PROBE_START_LINE_776 = 776;
		org.jfree.chart.axis.TickUnits v_units_844_line_776 = units;
		java.text.DecimalFormat v_df_10_855_line_776 = df10;
		int PROBE_END_LINE_776 = 776;
		v_units_844_line_776.add(new NumberTickUnit(500000000000L, v_df_10_855_line_776, 5));

        int PROBE_START_LINE_778 = 778;
		org.jfree.chart.axis.TickUnits v_units_844_line_778 = units;
		int PROBE_END_LINE_778 = 778;
		return v_units_844_line_778;

    }

    /**
     * Returns a collection of tick units for integer values.
     *
     * @return A collection of tick units for integer values.
     *
     * @see #setStandardTickUnits(TickUnitSource)
     * @see #createStandardTickUnits()
     */
    public static TickUnitSource createIntegerTickUnits() {
        TickUnits units = new TickUnits();
        DecimalFormat df0 = new DecimalFormat("0");
        DecimalFormat df1 = new DecimalFormat("#,##0");
        int PROBE_START_LINE_794 = 794;
		org.jfree.chart.axis.TickUnits v_units_856_line_794 = units;
		java.text.DecimalFormat v_df_0_857_line_794 = df0;
		int PROBE_END_LINE_794 = 794;
		v_units_856_line_794.add(new NumberTickUnit(1, v_df_0_857_line_794, 2));
        int PROBE_START_LINE_795 = 795;
		org.jfree.chart.axis.TickUnits v_units_856_line_795 = units;
		java.text.DecimalFormat v_df_0_857_line_795 = df0;
		int PROBE_END_LINE_795 = 795;
		v_units_856_line_795.add(new NumberTickUnit(2, v_df_0_857_line_795, 2));
        int PROBE_START_LINE_796 = 796;
		org.jfree.chart.axis.TickUnits v_units_856_line_796 = units;
		java.text.DecimalFormat v_df_0_857_line_796 = df0;
		int PROBE_END_LINE_796 = 796;
		v_units_856_line_796.add(new NumberTickUnit(5, v_df_0_857_line_796, 5));
        int PROBE_START_LINE_797 = 797;
		org.jfree.chart.axis.TickUnits v_units_856_line_797 = units;
		java.text.DecimalFormat v_df_0_857_line_797 = df0;
		int PROBE_END_LINE_797 = 797;
		v_units_856_line_797.add(new NumberTickUnit(10, v_df_0_857_line_797, 2));
        int PROBE_START_LINE_798 = 798;
		org.jfree.chart.axis.TickUnits v_units_856_line_798 = units;
		java.text.DecimalFormat v_df_0_857_line_798 = df0;
		int PROBE_END_LINE_798 = 798;
		v_units_856_line_798.add(new NumberTickUnit(20, v_df_0_857_line_798, 2));
        int PROBE_START_LINE_799 = 799;
		org.jfree.chart.axis.TickUnits v_units_856_line_799 = units;
		java.text.DecimalFormat v_df_0_857_line_799 = df0;
		int PROBE_END_LINE_799 = 799;
		v_units_856_line_799.add(new NumberTickUnit(50, v_df_0_857_line_799, 5));
        int PROBE_START_LINE_800 = 800;
		org.jfree.chart.axis.TickUnits v_units_856_line_800 = units;
		java.text.DecimalFormat v_df_0_857_line_800 = df0;
		int PROBE_END_LINE_800 = 800;
		v_units_856_line_800.add(new NumberTickUnit(100, v_df_0_857_line_800, 2));
        int PROBE_START_LINE_801 = 801;
		org.jfree.chart.axis.TickUnits v_units_856_line_801 = units;
		java.text.DecimalFormat v_df_0_857_line_801 = df0;
		int PROBE_END_LINE_801 = 801;
		v_units_856_line_801.add(new NumberTickUnit(200, v_df_0_857_line_801, 2));
        int PROBE_START_LINE_802 = 802;
		org.jfree.chart.axis.TickUnits v_units_856_line_802 = units;
		java.text.DecimalFormat v_df_0_857_line_802 = df0;
		int PROBE_END_LINE_802 = 802;
		v_units_856_line_802.add(new NumberTickUnit(500, v_df_0_857_line_802, 5));
        int PROBE_START_LINE_803 = 803;
		org.jfree.chart.axis.TickUnits v_units_856_line_803 = units;
		java.text.DecimalFormat v_df_1_858_line_803 = df1;
		int PROBE_END_LINE_803 = 803;
		v_units_856_line_803.add(new NumberTickUnit(1000, v_df_1_858_line_803, 2));
        int PROBE_START_LINE_804 = 804;
		org.jfree.chart.axis.TickUnits v_units_856_line_804 = units;
		java.text.DecimalFormat v_df_1_858_line_804 = df1;
		int PROBE_END_LINE_804 = 804;
		v_units_856_line_804.add(new NumberTickUnit(2000, v_df_1_858_line_804, 2));
        int PROBE_START_LINE_805 = 805;
		org.jfree.chart.axis.TickUnits v_units_856_line_805 = units;
		java.text.DecimalFormat v_df_1_858_line_805 = df1;
		int PROBE_END_LINE_805 = 805;
		v_units_856_line_805.add(new NumberTickUnit(5000, v_df_1_858_line_805, 5));
        int PROBE_START_LINE_806 = 806;
		org.jfree.chart.axis.TickUnits v_units_856_line_806 = units;
		java.text.DecimalFormat v_df_1_858_line_806 = df1;
		int PROBE_END_LINE_806 = 806;
		v_units_856_line_806.add(new NumberTickUnit(10000, v_df_1_858_line_806, 2));
        int PROBE_START_LINE_807 = 807;
		org.jfree.chart.axis.TickUnits v_units_856_line_807 = units;
		java.text.DecimalFormat v_df_1_858_line_807 = df1;
		int PROBE_END_LINE_807 = 807;
		v_units_856_line_807.add(new NumberTickUnit(20000, v_df_1_858_line_807, 2));
        int PROBE_START_LINE_808 = 808;
		org.jfree.chart.axis.TickUnits v_units_856_line_808 = units;
		java.text.DecimalFormat v_df_1_858_line_808 = df1;
		int PROBE_END_LINE_808 = 808;
		v_units_856_line_808.add(new NumberTickUnit(50000, v_df_1_858_line_808, 5));
        int PROBE_START_LINE_809 = 809;
		org.jfree.chart.axis.TickUnits v_units_856_line_809 = units;
		java.text.DecimalFormat v_df_1_858_line_809 = df1;
		int PROBE_END_LINE_809 = 809;
		v_units_856_line_809.add(new NumberTickUnit(100000, v_df_1_858_line_809, 2));
        int PROBE_START_LINE_810 = 810;
		org.jfree.chart.axis.TickUnits v_units_856_line_810 = units;
		java.text.DecimalFormat v_df_1_858_line_810 = df1;
		int PROBE_END_LINE_810 = 810;
		v_units_856_line_810.add(new NumberTickUnit(200000, v_df_1_858_line_810, 2));
        int PROBE_START_LINE_811 = 811;
		org.jfree.chart.axis.TickUnits v_units_856_line_811 = units;
		java.text.DecimalFormat v_df_1_858_line_811 = df1;
		int PROBE_END_LINE_811 = 811;
		v_units_856_line_811.add(new NumberTickUnit(500000, v_df_1_858_line_811, 5));
        int PROBE_START_LINE_812 = 812;
		org.jfree.chart.axis.TickUnits v_units_856_line_812 = units;
		java.text.DecimalFormat v_df_1_858_line_812 = df1;
		int PROBE_END_LINE_812 = 812;
		v_units_856_line_812.add(new NumberTickUnit(1000000, v_df_1_858_line_812, 2));
        int PROBE_START_LINE_813 = 813;
		org.jfree.chart.axis.TickUnits v_units_856_line_813 = units;
		java.text.DecimalFormat v_df_1_858_line_813 = df1;
		int PROBE_END_LINE_813 = 813;
		v_units_856_line_813.add(new NumberTickUnit(2000000, v_df_1_858_line_813, 2));
        int PROBE_START_LINE_814 = 814;
		org.jfree.chart.axis.TickUnits v_units_856_line_814 = units;
		java.text.DecimalFormat v_df_1_858_line_814 = df1;
		int PROBE_END_LINE_814 = 814;
		v_units_856_line_814.add(new NumberTickUnit(5000000, v_df_1_858_line_814, 5));
        int PROBE_START_LINE_815 = 815;
		org.jfree.chart.axis.TickUnits v_units_856_line_815 = units;
		java.text.DecimalFormat v_df_1_858_line_815 = df1;
		int PROBE_END_LINE_815 = 815;
		v_units_856_line_815.add(new NumberTickUnit(10000000, v_df_1_858_line_815, 2));
        int PROBE_START_LINE_816 = 816;
		org.jfree.chart.axis.TickUnits v_units_856_line_816 = units;
		java.text.DecimalFormat v_df_1_858_line_816 = df1;
		int PROBE_END_LINE_816 = 816;
		v_units_856_line_816.add(new NumberTickUnit(20000000, v_df_1_858_line_816, 2));
        int PROBE_START_LINE_817 = 817;
		org.jfree.chart.axis.TickUnits v_units_856_line_817 = units;
		java.text.DecimalFormat v_df_1_858_line_817 = df1;
		int PROBE_END_LINE_817 = 817;
		v_units_856_line_817.add(new NumberTickUnit(50000000, v_df_1_858_line_817, 5));
        int PROBE_START_LINE_818 = 818;
		org.jfree.chart.axis.TickUnits v_units_856_line_818 = units;
		java.text.DecimalFormat v_df_1_858_line_818 = df1;
		int PROBE_END_LINE_818 = 818;
		v_units_856_line_818.add(new NumberTickUnit(100000000, v_df_1_858_line_818, 2));
        int PROBE_START_LINE_819 = 819;
		org.jfree.chart.axis.TickUnits v_units_856_line_819 = units;
		java.text.DecimalFormat v_df_1_858_line_819 = df1;
		int PROBE_END_LINE_819 = 819;
		v_units_856_line_819.add(new NumberTickUnit(200000000, v_df_1_858_line_819, 2));
        int PROBE_START_LINE_820 = 820;
		org.jfree.chart.axis.TickUnits v_units_856_line_820 = units;
		java.text.DecimalFormat v_df_1_858_line_820 = df1;
		int PROBE_END_LINE_820 = 820;
		v_units_856_line_820.add(new NumberTickUnit(500000000, v_df_1_858_line_820, 5));
        int PROBE_START_LINE_821 = 821;
		org.jfree.chart.axis.TickUnits v_units_856_line_821 = units;
		java.text.DecimalFormat v_df_1_858_line_821 = df1;
		int PROBE_END_LINE_821 = 821;
		v_units_856_line_821.add(new NumberTickUnit(1000000000, v_df_1_858_line_821, 2));
        int PROBE_START_LINE_822 = 822;
		org.jfree.chart.axis.TickUnits v_units_856_line_822 = units;
		java.text.DecimalFormat v_df_1_858_line_822 = df1;
		int PROBE_END_LINE_822 = 822;
		v_units_856_line_822.add(new NumberTickUnit(2000000000, v_df_1_858_line_822, 2));
        int PROBE_START_LINE_823 = 823;
		org.jfree.chart.axis.TickUnits v_units_856_line_823 = units;
		java.text.DecimalFormat v_df_1_858_line_823 = df1;
		int PROBE_END_LINE_823 = 823;
		v_units_856_line_823.add(new NumberTickUnit(5000000000.0, v_df_1_858_line_823, 5));
        int PROBE_START_LINE_824 = 824;
		org.jfree.chart.axis.TickUnits v_units_856_line_824 = units;
		java.text.DecimalFormat v_df_1_858_line_824 = df1;
		int PROBE_END_LINE_824 = 824;
		v_units_856_line_824.add(new NumberTickUnit(10000000000.0, v_df_1_858_line_824, 2));
        int PROBE_START_LINE_825 = 825;
		org.jfree.chart.axis.TickUnits v_units_856_line_825 = units;
		int PROBE_END_LINE_825 = 825;
		return v_units_856_line_825;
    }

    /**
     * Creates a collection of standard tick units.  The supplied locale is
     * used to create the number formatter (a localised instance of
     * <code>NumberFormat</code>).
     * <P>
     * If you don't like these defaults, create your own instance of
     * {@link TickUnits} and then pass it to the
     * <code>setStandardTickUnits()</code> method.
     *
     * @param locale  the locale.
     *
     * @return A tick unit collection.
     *
     * @see #setStandardTickUnits(TickUnitSource)
     */
    public static TickUnitSource createStandardTickUnits(Locale locale) {

        TickUnits units = new TickUnits();
        NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
        // we can add the units in any order, the TickUnits collection will
        // sort them...
        units.add(new NumberTickUnit(0.0000001, numberFormat, 2));
        units.add(new NumberTickUnit(0.000001, numberFormat, 2));
        units.add(new NumberTickUnit(0.00001, numberFormat, 2));
        units.add(new NumberTickUnit(0.0001, numberFormat, 2));
        units.add(new NumberTickUnit(0.001, numberFormat, 2));
        units.add(new NumberTickUnit(0.01, numberFormat, 2));
        units.add(new NumberTickUnit(0.1, numberFormat, 2));
        units.add(new NumberTickUnit(1, numberFormat, 2));
        units.add(new NumberTickUnit(10, numberFormat, 2));
        units.add(new NumberTickUnit(100, numberFormat, 2));
        units.add(new NumberTickUnit(1000, numberFormat, 2));
        units.add(new NumberTickUnit(10000, numberFormat, 2));
        units.add(new NumberTickUnit(100000, numberFormat, 2));
        units.add(new NumberTickUnit(1000000, numberFormat, 2));
        units.add(new NumberTickUnit(10000000, numberFormat, 2));
        units.add(new NumberTickUnit(100000000, numberFormat, 2));
        units.add(new NumberTickUnit(1000000000, numberFormat, 2));
        units.add(new NumberTickUnit(10000000000.0, numberFormat, 2));

        units.add(new NumberTickUnit(0.00000025, numberFormat, 5));
        units.add(new NumberTickUnit(0.0000025, numberFormat, 5));
        units.add(new NumberTickUnit(0.000025, numberFormat, 5));
        units.add(new NumberTickUnit(0.00025, numberFormat, 5));
        units.add(new NumberTickUnit(0.0025, numberFormat, 5));
        units.add(new NumberTickUnit(0.025, numberFormat, 5));
        units.add(new NumberTickUnit(0.25, numberFormat, 5));
        units.add(new NumberTickUnit(2.5, numberFormat, 5));
        units.add(new NumberTickUnit(25, numberFormat, 5));
        units.add(new NumberTickUnit(250, numberFormat, 5));
        units.add(new NumberTickUnit(2500, numberFormat, 5));
        units.add(new NumberTickUnit(25000, numberFormat, 5));
        units.add(new NumberTickUnit(250000, numberFormat, 5));
        units.add(new NumberTickUnit(2500000, numberFormat, 5));
        units.add(new NumberTickUnit(25000000, numberFormat, 5));
        units.add(new NumberTickUnit(250000000, numberFormat, 5));
        units.add(new NumberTickUnit(2500000000.0, numberFormat, 5));
        units.add(new NumberTickUnit(25000000000.0, numberFormat, 5));

        units.add(new NumberTickUnit(0.0000005, numberFormat, 5));
        units.add(new NumberTickUnit(0.000005, numberFormat, 5));
        units.add(new NumberTickUnit(0.00005, numberFormat, 5));
        units.add(new NumberTickUnit(0.0005, numberFormat, 5));
        units.add(new NumberTickUnit(0.005, numberFormat, 5));
        units.add(new NumberTickUnit(0.05, numberFormat, 5));
        units.add(new NumberTickUnit(0.5, numberFormat, 5));
        units.add(new NumberTickUnit(5L, numberFormat, 5));
        units.add(new NumberTickUnit(50L, numberFormat, 5));
        units.add(new NumberTickUnit(500L, numberFormat, 5));
        units.add(new NumberTickUnit(5000L, numberFormat, 5));
        units.add(new NumberTickUnit(50000L, numberFormat, 5));
        units.add(new NumberTickUnit(500000L, numberFormat, 5));
        units.add(new NumberTickUnit(5000000L, numberFormat, 5));
        units.add(new NumberTickUnit(50000000L, numberFormat, 5));
        units.add(new NumberTickUnit(500000000L, numberFormat, 5));
        units.add(new NumberTickUnit(5000000000L, numberFormat, 5));
        units.add(new NumberTickUnit(50000000000L, numberFormat, 5));

        return units;

    }

    /**
     * Returns a collection of tick units for integer values.
     * Uses a given Locale to create the DecimalFormats.
     *
     * @param locale the locale to use to represent Numbers.
     *
     * @return A collection of tick units for integer values.
     *
     * @see #setStandardTickUnits(TickUnitSource)
     */
    public static TickUnitSource createIntegerTickUnits(Locale locale) {
        TickUnits units = new TickUnits();
        NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
        units.add(new NumberTickUnit(1, numberFormat, 2));
        units.add(new NumberTickUnit(2, numberFormat, 2));
        units.add(new NumberTickUnit(5, numberFormat, 5));
        units.add(new NumberTickUnit(10, numberFormat, 2));
        units.add(new NumberTickUnit(20, numberFormat, 2));
        units.add(new NumberTickUnit(50, numberFormat, 5));
        units.add(new NumberTickUnit(100, numberFormat, 2));
        units.add(new NumberTickUnit(200, numberFormat, 2));
        units.add(new NumberTickUnit(500, numberFormat, 5));
        units.add(new NumberTickUnit(1000, numberFormat, 2));
        units.add(new NumberTickUnit(2000, numberFormat, 2));
        units.add(new NumberTickUnit(5000, numberFormat, 5));
        units.add(new NumberTickUnit(10000, numberFormat, 2));
        units.add(new NumberTickUnit(20000, numberFormat, 2));
        units.add(new NumberTickUnit(50000, numberFormat, 5));
        units.add(new NumberTickUnit(100000, numberFormat, 2));
        units.add(new NumberTickUnit(200000, numberFormat, 2));
        units.add(new NumberTickUnit(500000, numberFormat, 5));
        units.add(new NumberTickUnit(1000000, numberFormat, 2));
        units.add(new NumberTickUnit(2000000, numberFormat, 2));
        units.add(new NumberTickUnit(5000000, numberFormat, 5));
        units.add(new NumberTickUnit(10000000, numberFormat, 2));
        units.add(new NumberTickUnit(20000000, numberFormat, 2));
        units.add(new NumberTickUnit(50000000, numberFormat, 5));
        units.add(new NumberTickUnit(100000000, numberFormat, 2));
        units.add(new NumberTickUnit(200000000, numberFormat, 2));
        units.add(new NumberTickUnit(500000000, numberFormat, 5));
        units.add(new NumberTickUnit(1000000000, numberFormat, 2));
        units.add(new NumberTickUnit(2000000000, numberFormat, 2));
        units.add(new NumberTickUnit(5000000000.0, numberFormat, 5));
        units.add(new NumberTickUnit(10000000000.0, numberFormat, 2));
        return units;
    }

    /**
     * Estimates the maximum tick label height.
     *
     * @param g2  the graphics device.
     *
     * @return The maximum height.
     */
    protected double estimateMaximumTickLabelHeight(Graphics2D g2) {

        RectangleInsets tickLabelInsets = getTickLabelInsets();
        double result = tickLabelInsets.getTop() + tickLabelInsets.getBottom();

        Font tickLabelFont = getTickLabelFont();
        FontRenderContext frc = g2.getFontRenderContext();
        result += tickLabelFont.getLineMetrics("123", frc).getHeight();
        return result;

    }

    /**
     * Estimates the maximum width of the tick labels, assuming the specified
     * tick unit is used.
     * <P>
     * Rather than computing the string bounds of every tick on the axis, we
     * just look at two values: the lower bound and the upper bound for the
     * axis.  These two values will usually be representative.
     *
     * @param g2  the graphics device.
     * @param unit  the tick unit to use for calculation.
     *
     * @return The estimated maximum width of the tick labels.
     */
    protected double estimateMaximumTickLabelWidth(Graphics2D g2,
                                                   TickUnit unit) {

        RectangleInsets tickLabelInsets = getTickLabelInsets();
        double result = tickLabelInsets.getLeft() + tickLabelInsets.getRight();

        if (isVerticalTickLabels()) {
            // all tick labels have the same width (equal to the height of the
            // font)...
            FontRenderContext frc = g2.getFontRenderContext();
            LineMetrics lm = getTickLabelFont().getLineMetrics("0", frc);
            result += lm.getHeight();
        }
        else {
            // look at lower and upper bounds...
            FontMetrics fm = g2.getFontMetrics(getTickLabelFont());
            Range range = getRange();
            double lower = range.getLowerBound();
            double upper = range.getUpperBound();
            String lowerStr = "";
            String upperStr = "";
            NumberFormat formatter = getNumberFormatOverride();
            if (formatter != null) {
                lowerStr = formatter.format(lower);
                upperStr = formatter.format(upper);
            }
            else {
                lowerStr = unit.valueToString(lower);
                upperStr = unit.valueToString(upper);
            }
            double w1 = fm.stringWidth(lowerStr);
            double w2 = fm.stringWidth(upperStr);
            result += Math.max(w1, w2);
        }

        return result;

    }

    /**
     * Selects an appropriate tick value for the axis.  The strategy is to
     * display as many ticks as possible (selected from an array of 'standard'
     * tick units) without the labels overlapping.
     *
     * @param g2  the graphics device.
     * @param dataArea  the area defined by the axes.
     * @param edge  the axis location.
     */
    protected void selectAutoTickUnit(Graphics2D g2,
                                      Rectangle2D dataArea,
                                      RectangleEdge edge) {

        if (RectangleEdge.isTopOrBottom(edge)) {
            selectHorizontalAutoTickUnit(g2, dataArea, edge);
        }
        else if (RectangleEdge.isLeftOrRight(edge)) {
            selectVerticalAutoTickUnit(g2, dataArea, edge);
        }

    }

    /**
     * Selects an appropriate tick value for the axis.  The strategy is to
     * display as many ticks as possible (selected from an array of 'standard'
     * tick units) without the labels overlapping.
     *
     * @param g2  the graphics device.
     * @param dataArea  the area defined by the axes.
     * @param edge  the axis location.
     */
   protected void selectHorizontalAutoTickUnit(Graphics2D g2,
                                               Rectangle2D dataArea,
                                               RectangleEdge edge) {

        double tickLabelWidth = estimateMaximumTickLabelWidth(g2,
                getTickUnit());

        // start with the current tick unit...
        TickUnitSource tickUnits = getStandardTickUnits();
        TickUnit unit1 = tickUnits.getCeilingTickUnit(getTickUnit());
        double unit1Width = lengthToJava2D(unit1.getSize(), dataArea, edge);

        // then extrapolate...
        double guess = (tickLabelWidth / unit1Width) * unit1.getSize();

        NumberTickUnit unit2 = (NumberTickUnit) tickUnits.getCeilingTickUnit(
                guess);
        double unit2Width = lengthToJava2D(unit2.getSize(), dataArea, edge);

        tickLabelWidth = estimateMaximumTickLabelWidth(g2, unit2);
        if (tickLabelWidth > unit2Width) {
            unit2 = (NumberTickUnit) tickUnits.getLargerTickUnit(unit2);
        }

        setTickUnit(unit2, false, false);

    }

    /**
     * Selects an appropriate tick value for the axis.  The strategy is to
     * display as many ticks as possible (selected from an array of 'standard'
     * tick units) without the labels overlapping.
     *
     * @param g2  the graphics device.
     * @param dataArea  the area in which the plot should be drawn.
     * @param edge  the axis location.
     */
    protected void selectVerticalAutoTickUnit(Graphics2D g2,
                                              Rectangle2D dataArea,
                                              RectangleEdge edge) {

        double tickLabelHeight = estimateMaximumTickLabelHeight(g2);

        // start with the current tick unit...
        TickUnitSource tickUnits = getStandardTickUnits();
        TickUnit unit1 = tickUnits.getCeilingTickUnit(getTickUnit());
        double unitHeight = lengthToJava2D(unit1.getSize(), dataArea, edge);

        // then extrapolate...
        double guess = (tickLabelHeight / unitHeight) * unit1.getSize();

        NumberTickUnit unit2
            = (NumberTickUnit) tickUnits.getCeilingTickUnit(guess);
        double unit2Height = lengthToJava2D(unit2.getSize(), dataArea, edge);

        tickLabelHeight = estimateMaximumTickLabelHeight(g2);
        if (tickLabelHeight > unit2Height) {
            unit2 = (NumberTickUnit) tickUnits.getLargerTickUnit(unit2);
        }

        setTickUnit(unit2, false, false);

    }

    /**
     * Calculates the positions of the tick labels for the axis, storing the
     * results in the tick label list (ready for drawing).
     *
     * @param g2  the graphics device.
     * @param state  the axis state.
     * @param dataArea  the area in which the plot should be drawn.
     * @param edge  the location of the axis.
     *
     * @return A list of ticks.
     *
     */
    public List refreshTicks(Graphics2D g2,
                             AxisState state,
                             Rectangle2D dataArea,
                             RectangleEdge edge) {

        List result = new java.util.ArrayList();
        if (RectangleEdge.isTopOrBottom(edge)) {
            result = refreshTicksHorizontal(g2, dataArea, edge);
        }
        else if (RectangleEdge.isLeftOrRight(edge)) {
            result = refreshTicksVertical(g2, dataArea, edge);
        }
        return result;

    }

    /**
     * Calculates the positions of the tick labels for the axis, storing the
     * results in the tick label list (ready for drawing).
     *
     * @param g2  the graphics device.
     * @param dataArea  the area in which the data should be drawn.
     * @param edge  the location of the axis.
     *
     * @return A list of ticks.
     */
    protected List refreshTicksHorizontal(Graphics2D g2,
            Rectangle2D dataArea, RectangleEdge edge) {

        List result = new java.util.ArrayList();

        Font tickLabelFont = getTickLabelFont();
        g2.setFont(tickLabelFont);

        if (isAutoTickUnitSelection()) {
            selectAutoTickUnit(g2, dataArea, edge);
        }

        TickUnit tu = getTickUnit();
        double size = tu.getSize();
        int count = calculateVisibleTickCount();
        double lowestTickValue = calculateLowestVisibleTickValue();

        if (count <= ValueAxis.MAXIMUM_TICK_COUNT) {
            int minorTickSpaces = getMinorTickCount();
            if (minorTickSpaces <= 0) {
                minorTickSpaces = tu.getMinorTickCount();
            }
            for (int minorTick = 1; minorTick < minorTickSpaces; minorTick++) {
                double minorTickValue = lowestTickValue
                        - size * minorTick / minorTickSpaces;
                if (getRange().contains(minorTickValue)){
                    result.add(new NumberTick(TickType.MINOR, minorTickValue,
                            "", TextAnchor.TOP_CENTER, TextAnchor.CENTER,
                            0.0));
                }
            }
            for (int i = 0; i < count; i++) {
                double currentTickValue = lowestTickValue + (i * size);
                String tickLabel;
                NumberFormat formatter = getNumberFormatOverride();
                if (formatter != null) {
                    tickLabel = formatter.format(currentTickValue);
                }
                else {
                    tickLabel = getTickUnit().valueToString(currentTickValue);
                }
                TextAnchor anchor = null;
                TextAnchor rotationAnchor = null;
                double angle = 0.0;
                if (isVerticalTickLabels()) {
                    anchor = TextAnchor.CENTER_RIGHT;
                    rotationAnchor = TextAnchor.CENTER_RIGHT;
                    if (edge == RectangleEdge.TOP) {
                        angle = Math.PI / 2.0;
                    }
                    else {
                        angle = -Math.PI / 2.0;
                    }
                }
                else {
                    if (edge == RectangleEdge.TOP) {
                        anchor = TextAnchor.BOTTOM_CENTER;
                        rotationAnchor = TextAnchor.BOTTOM_CENTER;
                    }
                    else {
                        anchor = TextAnchor.TOP_CENTER;
                        rotationAnchor = TextAnchor.TOP_CENTER;
                    }
                }

                Tick tick = new NumberTick(new Double(currentTickValue),
                        tickLabel, anchor, rotationAnchor, angle);
                result.add(tick);
                double nextTickValue = lowestTickValue + ((i + 1)* size);
                for (int minorTick = 1; minorTick < minorTickSpaces;
                        minorTick++) {
                    double minorTickValue = currentTickValue
                            + (nextTickValue - currentTickValue)
                            * minorTick / minorTickSpaces;
                    if (getRange().contains(minorTickValue)){
                        result.add(new NumberTick(TickType.MINOR,
                                minorTickValue, "", TextAnchor.TOP_CENTER,
                                TextAnchor.CENTER, 0.0));
                    }
                }
            }
        }
        return result;

    }

    /**
     * Calculates the positions of the tick labels for the axis, storing the
     * results in the tick label list (ready for drawing).
     *
     * @param g2  the graphics device.
     * @param dataArea  the area in which the plot should be drawn.
     * @param edge  the location of the axis.
     *
     * @return A list of ticks.
     */
    protected List refreshTicksVertical(Graphics2D g2,
            Rectangle2D dataArea, RectangleEdge edge) {

        List result = new java.util.ArrayList();
        result.clear();

        Font tickLabelFont = getTickLabelFont();
        g2.setFont(tickLabelFont);
        if (isAutoTickUnitSelection()) {
            selectAutoTickUnit(g2, dataArea, edge);
        }

        TickUnit tu = getTickUnit();
        double size = tu.getSize();
        int count = calculateVisibleTickCount();
        double lowestTickValue = calculateLowestVisibleTickValue();

        if (count <= ValueAxis.MAXIMUM_TICK_COUNT) {
            int minorTickSpaces = getMinorTickCount();
            if (minorTickSpaces <= 0) {
                minorTickSpaces = tu.getMinorTickCount();
            }
            for (int minorTick = 1; minorTick < minorTickSpaces; minorTick++){
                double minorTickValue = lowestTickValue
                        - size * minorTick / minorTickSpaces;
                if (getRange().contains(minorTickValue)){
                    result.add(new NumberTick(TickType.MINOR, minorTickValue,
                            "", TextAnchor.TOP_CENTER, TextAnchor.CENTER,
                            0.0));
                }
            }

            for (int i = 0; i < count; i++) {
                double currentTickValue = lowestTickValue + (i * size);
                String tickLabel;
                NumberFormat formatter = getNumberFormatOverride();
                if (formatter != null) {
                    tickLabel = formatter.format(currentTickValue);
                }
                else {
                    tickLabel = getTickUnit().valueToString(currentTickValue);
                }

                TextAnchor anchor = null;
                TextAnchor rotationAnchor = null;
                double angle = 0.0;
                if (isVerticalTickLabels()) {
                    if (edge == RectangleEdge.LEFT) {
                        anchor = TextAnchor.BOTTOM_CENTER;
                        rotationAnchor = TextAnchor.BOTTOM_CENTER;
                        angle = -Math.PI / 2.0;
                    }
                    else {
                        anchor = TextAnchor.BOTTOM_CENTER;
                        rotationAnchor = TextAnchor.BOTTOM_CENTER;
                        angle = Math.PI / 2.0;
                    }
                }
                else {
                    if (edge == RectangleEdge.LEFT) {
                        anchor = TextAnchor.CENTER_RIGHT;
                        rotationAnchor = TextAnchor.CENTER_RIGHT;
                    }
                    else {
                        anchor = TextAnchor.CENTER_LEFT;
                        rotationAnchor = TextAnchor.CENTER_LEFT;
                    }
                }

                Tick tick = new NumberTick(new Double(currentTickValue),
                        tickLabel, anchor, rotationAnchor, angle);
                result.add(tick);

                double nextTickValue = lowestTickValue + ((i + 1)* size);
                for (int minorTick = 1; minorTick < minorTickSpaces;
                        minorTick++){
                    double minorTickValue = currentTickValue
                            + (nextTickValue - currentTickValue)
                            * minorTick / minorTickSpaces;
                    if (getRange().contains(minorTickValue)){
                        result.add(new NumberTick(TickType.MINOR,
                                minorTickValue, "", TextAnchor.TOP_CENTER,
                                TextAnchor.CENTER, 0.0));
                    }
                }
            }
        }
        return result;

    }

    /**
     * Returns a clone of the axis.
     *
     * @return A clone
     *
     * @throws CloneNotSupportedException if some component of the axis does
     *         not support cloning.
     */
    public Object clone() throws CloneNotSupportedException {
        NumberAxis clone = (NumberAxis) super.clone();
        if (this.numberFormatOverride != null) {
            clone.numberFormatOverride
                = (NumberFormat) this.numberFormatOverride.clone();
        }
        return clone;
    }

    /**
     * Tests the axis for equality with an arbitrary object.
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NumberAxis)) {
            return false;
        }
        NumberAxis that = (NumberAxis) obj;
        if (this.autoRangeIncludesZero != that.autoRangeIncludesZero) {
            return false;
        }
        if (this.autoRangeStickyZero != that.autoRangeStickyZero) {
            return false;
        }
        if (!ObjectUtilities.equal(this.tickUnit, that.tickUnit)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.numberFormatOverride,
                that.numberFormatOverride)) {
            return false;
        }
        if (!this.rangeType.equals(that.rangeType)) {
            return false;
        }
        return super.equals(obj);
    }

    /**
     * Returns a hash code for this object.
     *
     * @return A hash code.
     */
    public int hashCode() {
        if (getLabel() != null) {
            return getLabel().hashCode();
        }
        else {
            return 0;
        }
    }

}
