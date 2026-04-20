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
 * ---------
 * Axis.java
 * ---------
 * (C) Copyright 2000-2009, by Object Refinery Limited and Contributors.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Bill Kelemen;
 *                   Nicolas Brodu;
 *                   Peter Kolb (patches 1934255 and 2603321);
 *                   Andrew Mickish (patch 1870189);
 *
 * Changes
 * -------
 * 21-Aug-2001 : Added standard header, fixed DOS encoding problem (DG);
 * 18-Sep-2001 : Updated header (DG);
 * 07-Nov-2001 : Allow null axis labels (DG);
 *             : Added default font values (DG);
 * 13-Nov-2001 : Modified the setPlot() method to check compatibility between
 *               the axis and the plot (DG);
 * 30-Nov-2001 : Changed default font from "Arial" --> "SansSerif" (DG);
 * 06-Dec-2001 : Allow null in setPlot() method (BK);
 * 06-Mar-2002 : Added AxisConstants interface (DG);
 * 23-Apr-2002 : Added a visible property.  Moved drawVerticalString to
 *               RefineryUtilities.  Added fixedDimension property for use in
 *               combined plots (DG);
 * 25-Jun-2002 : Removed unnecessary imports (DG);
 * 05-Sep-2002 : Added attribute for tick mark paint (DG);
 * 18-Sep-2002 : Fixed errors reported by Checkstyle (DG);
 * 07-Nov-2002 : Added attributes to control the inside and outside length of
 *               the tick marks (DG);
 * 08-Nov-2002 : Moved to new package com.jrefinery.chart.axis (DG);
 * 18-Nov-2002 : Added axis location to refreshTicks() parameters (DG);
 * 15-Jan-2003 : Removed monolithic constructor (DG);
 * 17-Jan-2003 : Moved plot classes to separate package (DG);
 * 26-Mar-2003 : Implemented Serializable (DG);
 * 03-Jul-2003 : Modified reserveSpace method (DG);
 * 13-Aug-2003 : Implemented Cloneable (DG);
 * 11-Sep-2003 : Took care of listeners while cloning (NB);
 * 29-Oct-2003 : Added workaround for font alignment in PDF output (DG);
 * 06-Nov-2003 : Modified refreshTicks() signature (DG);
 * 06-Jan-2004 : Added axis line attributes (DG);
 * 16-Mar-2004 : Added plot state to draw() method (DG);
 * 07-Apr-2004 : Modified text bounds calculation (DG);
 * 18-May-2004 : Eliminated AxisConstants.java (DG);
 * 30-Sep-2004 : Moved drawRotatedString() from RefineryUtilities -->
 *               TextUtilities (DG);
 * 04-Oct-2004 : Modified getLabelEnclosure() method to treat an empty String
 *               the same way as a null string - see bug 1026521 (DG);
 * 21-Apr-2005 : Replaced Insets with RectangleInsets (DG);
 * 26-Apr-2005 : Removed LOGGER (DG);
 * 01-Jun-2005 : Added hasListener() method for unit testing (DG);
 * 08-Jun-2005 : Fixed equals() method to handle GradientPaint (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 22-Aug-2006 : API doc updates (DG);
 * 20-Jun-2007 : Removed JCommon dependencies (DG);
 * 02-Jul-2007 : Modifications to support entities for axis labels (DG);
 * 06-Jun-2008 : Added setTickLabelInsets(RectangleInsets, boolean) (DG);
 * 25-Sep-2008 : Added minor tick support, see patch 1934255 by Peter Kolb (DG);
 * 26-Sep-2008 : Added fireChangeEvent() method (DG);
 * 19-Mar-2009 : Added entity support - see patch 2603321 by Peter Kolb (DG);
 *
 */

package org.jfree.chart.axis;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.geom.AffineTransform;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.EventListener;
import java.util.List;

import javax.swing.event.EventListenerList;

import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.entity.AxisEntity;
import org.jfree.chart.entity.AxisLabelEntity;
import org.jfree.chart.entity.EntityCollection;
import org.jfree.chart.event.AxisChangeEvent;
import org.jfree.chart.event.AxisChangeListener;
import org.jfree.chart.plot.Plot;
import org.jfree.chart.plot.PlotRenderingInfo;
import org.jfree.chart.text.TextAnchor;
import org.jfree.chart.text.TextUtilities;
import org.jfree.chart.util.ObjectUtilities;
import org.jfree.chart.util.PaintUtilities;
import org.jfree.chart.util.RectangleEdge;
import org.jfree.chart.util.RectangleInsets;
import org.jfree.chart.util.SerialUtilities;

/**
 * The base class for all axes in JFreeChart.  Subclasses are divided into
 * those that display values ({@link ValueAxis}) and those that display
 * categories ({@link CategoryAxis}).
 */
public abstract class Axis implements Cloneable, Serializable {

    /** For serialization. */
    private static final long serialVersionUID = 7719289504573298271L;

    /** The default axis visibility. */
    public static final boolean DEFAULT_AXIS_VISIBLE = true;

    /** The default axis label font. */
    public static final Font DEFAULT_AXIS_LABEL_FONT = new Font("Tahoma",
            Font.PLAIN, 12);

    int PROBE_START_LINE_146 = 147;

	public static final java.awt.Color q_black_22_line_147 = Color.black;

	int PROBE_END_LINE_146 = 147;

	/** The default axis label paint. */
    public static final Paint DEFAULT_AXIS_LABEL_PAINT = q_black_22_line_147;

    /** The default axis label insets. */
    public static final RectangleInsets DEFAULT_AXIS_LABEL_INSETS
            = new RectangleInsets(3.0, 3.0, 3.0, 3.0);

    int PROBE_START_LINE_153 = 154;

	public static final java.awt.Color q_gray_22_line_154 = Color.gray;

	int PROBE_END_LINE_153 = 154;

	/** The default axis line paint. */
    public static final Paint DEFAULT_AXIS_LINE_PAINT = q_gray_22_line_154;

    /** The default axis line stroke. */
    public static final Stroke DEFAULT_AXIS_LINE_STROKE = new BasicStroke(1.0f);

    /** The default tick labels visibility. */
    public static final boolean DEFAULT_TICK_LABELS_VISIBLE = true;

    /** The default tick label font. */
    public static final Font DEFAULT_TICK_LABEL_FONT = new Font("Tahoma",
            Font.PLAIN, 12);

    int PROBE_START_LINE_166 = 167;

	public static final java.awt.Color q_black_22_line_167 = Color.black;

	int PROBE_END_LINE_166 = 167;

	/** The default tick label paint. */
    public static final Paint DEFAULT_TICK_LABEL_PAINT = q_black_22_line_167;

    /** The default tick label insets. */
    public static final RectangleInsets DEFAULT_TICK_LABEL_INSETS
            = new RectangleInsets(2.0, 4.0, 2.0, 4.0);

    /** The default tick marks visible. */
    public static final boolean DEFAULT_TICK_MARKS_VISIBLE = true;

    /** The default tick stroke. */
    public static final Stroke DEFAULT_TICK_MARK_STROKE = new BasicStroke(1);

    int PROBE_START_LINE_179 = 180;

	public static final java.awt.Color q_gray_22_line_180 = Color.gray;

	int PROBE_END_LINE_179 = 180;

	/** The default tick paint. */
    public static final Paint DEFAULT_TICK_MARK_PAINT = q_gray_22_line_180;

    /** The default tick mark inside length. */
    public static final float DEFAULT_TICK_MARK_INSIDE_LENGTH = 0.0f;

    /** The default tick mark outside length. */
    public static final float DEFAULT_TICK_MARK_OUTSIDE_LENGTH = 2.0f;

    /** A flag indicating whether or not the axis is visible. */
    private boolean visible;

    /** The label for the axis. */
    private String label;

    /** The font for displaying the axis label. */
    private Font labelFont;

    /** The paint for drawing the axis label. */
    private transient Paint labelPaint;

    /** The insets for the axis label. */
    private RectangleInsets labelInsets;

    /** The label angle. */
    private double labelAngle;

    /**
     * The tool tip text for the label (<code>null</code> is permitted).
     *
     * @since 1.2.0
     */
    private String labelToolTip;

    /**
     * The URL for the label (<code>null</code> is permitted).
     *
     * @since 1.2.0.
     */
    private String labelURL;

    /** A flag that controls whether or not the axis line is visible. */
    private boolean axisLineVisible;

    /** The stroke used for the axis line. */
    private transient Stroke axisLineStroke;

    /** The paint used for the axis line. */
    private transient Paint axisLinePaint;

    /**
     * A flag that indicates whether or not tick labels are visible for the
     * axis.
     */
    private boolean tickLabelsVisible;

    /** The font used to display the tick labels. */
    private Font tickLabelFont;

    /** The color used to display the tick labels. */
    private transient Paint tickLabelPaint;

    /** The blank space around each tick label. */
    private RectangleInsets tickLabelInsets;

    /**
     * A flag that indicates whether or not major tick marks are visible for
     * the axis.
     */
    private boolean tickMarksVisible;

    /**
     * The length of the major tick mark inside the data area (zero
     * permitted).
     */
    private float tickMarkInsideLength;

    /**
     * The length of the major tick mark outside the data area (zero
     * permitted).
     */
    private float tickMarkOutsideLength;

    /**
     * A flag that indicates whether or not minor tick marks are visible for the
     * axis.
     *
     * @since 1.0.12
     */
    private boolean minorTickMarksVisible;

    /**
     * The length of the minor tick mark inside the data area (zero permitted).
     *
     * @since 1.0.12
     */
    private float minorTickMarkInsideLength;

    /**
     * The length of the minor tick mark outside the data area (zero permitted).
     *
     * @since 1.0.12
     */
    private float minorTickMarkOutsideLength;

    /** The stroke used to draw tick marks. */
    private transient Stroke tickMarkStroke;

    /** The paint used to draw tick marks. */
    private transient Paint tickMarkPaint;

    /** The fixed (horizontal or vertical) dimension for the axis. */
    private double fixedDimension;

    /**
     * A reference back to the plot that the axis is assigned to (can be
     * <code>null</code>).
     */
    private transient Plot plot;

    /** Storage for registered listeners. */
    private transient EventListenerList listenerList;

    /**
     * Constructs an axis, using default values where necessary.
     *
     * @param label  the axis label (<code>null</code> permitted).
     */
    protected Axis(String label) {

        int PROBE_START_LINE_309 = 309;
		String p_label_540_line_309 = label;
		int PROBE_END_LINE_309 = 309;
		this.label = p_label_540_line_309;
        int PROBE_START_LINE_310 = 310;
		boolean f_default_axis_visible_543_line_310 = DEFAULT_AXIS_VISIBLE;
		int PROBE_END_LINE_310 = 310;
		this.visible = f_default_axis_visible_543_line_310;
        int PROBE_START_LINE_311 = 311;
		java.awt.Font f_default_axis_label_font_530_line_311 = DEFAULT_AXIS_LABEL_FONT;
		int PROBE_END_LINE_311 = 311;
		this.labelFont = f_default_axis_label_font_530_line_311;
        int PROBE_START_LINE_312 = 312;
		java.awt.Paint f_default_axis_label_paint_531_line_312 = DEFAULT_AXIS_LABEL_PAINT;
		int PROBE_END_LINE_312 = 312;
		this.labelPaint = f_default_axis_label_paint_531_line_312;
        int PROBE_START_LINE_313 = 313;
		org.jfree.chart.util.RectangleInsets f_default_axis_label_insets_532_line_313 = DEFAULT_AXIS_LABEL_INSETS;
		int PROBE_END_LINE_313 = 313;
		this.labelInsets = f_default_axis_label_insets_532_line_313;
        this.labelAngle = 0.0;
        this.labelToolTip = null;
        this.labelURL = null;

        this.axisLineVisible = true;
        int PROBE_START_LINE_319 = 319;
		java.awt.Paint f_default_axis_line_paint_533_line_319 = DEFAULT_AXIS_LINE_PAINT;
		int PROBE_END_LINE_319 = 319;
		this.axisLinePaint = f_default_axis_line_paint_533_line_319;
        int PROBE_START_LINE_320 = 320;
		java.awt.Stroke f_default_axis_line_stroke_534_line_320 = DEFAULT_AXIS_LINE_STROKE;
		int PROBE_END_LINE_320 = 320;
		this.axisLineStroke = f_default_axis_line_stroke_534_line_320;

        int PROBE_START_LINE_322 = 322;
		boolean f_default_tick_labels_visible_554_line_322 = DEFAULT_TICK_LABELS_VISIBLE;
		int PROBE_END_LINE_322 = 322;
		this.tickLabelsVisible = f_default_tick_labels_visible_554_line_322;
        int PROBE_START_LINE_323 = 323;
		java.awt.Font f_default_tick_label_font_535_line_323 = DEFAULT_TICK_LABEL_FONT;
		int PROBE_END_LINE_323 = 323;
		this.tickLabelFont = f_default_tick_label_font_535_line_323;
        int PROBE_START_LINE_324 = 324;
		java.awt.Paint f_default_tick_label_paint_536_line_324 = DEFAULT_TICK_LABEL_PAINT;
		int PROBE_END_LINE_324 = 324;
		this.tickLabelPaint = f_default_tick_label_paint_536_line_324;
        int PROBE_START_LINE_325 = 325;
		org.jfree.chart.util.RectangleInsets f_default_tick_label_insets_537_line_325 = DEFAULT_TICK_LABEL_INSETS;
		int PROBE_END_LINE_325 = 325;
		this.tickLabelInsets = f_default_tick_label_insets_537_line_325;

        int PROBE_START_LINE_327 = 327;
		boolean f_default_tick_marks_visible_559_line_327 = DEFAULT_TICK_MARKS_VISIBLE;
		int PROBE_END_LINE_327 = 327;
		this.tickMarksVisible = f_default_tick_marks_visible_559_line_327;
        int PROBE_START_LINE_328 = 328;
		java.awt.Stroke f_default_tick_mark_stroke_538_line_328 = DEFAULT_TICK_MARK_STROKE;
		int PROBE_END_LINE_328 = 328;
		this.tickMarkStroke = f_default_tick_mark_stroke_538_line_328;
        int PROBE_START_LINE_329 = 329;
		java.awt.Paint f_default_tick_mark_paint_539_line_329 = DEFAULT_TICK_MARK_PAINT;
		int PROBE_END_LINE_329 = 329;
		this.tickMarkPaint = f_default_tick_mark_paint_539_line_329;
        int PROBE_START_LINE_330 = 330;
		float f_default_tick_mark_inside_length_563_line_330 = DEFAULT_TICK_MARK_INSIDE_LENGTH;
		int PROBE_END_LINE_330 = 330;
		this.tickMarkInsideLength = f_default_tick_mark_inside_length_563_line_330;
        int PROBE_START_LINE_331 = 331;
		float f_default_tick_mark_outside_length_565_line_331 = DEFAULT_TICK_MARK_OUTSIDE_LENGTH;
		int PROBE_END_LINE_331 = 331;
		this.tickMarkOutsideLength = f_default_tick_mark_outside_length_565_line_331;

        this.minorTickMarksVisible = false;
        this.minorTickMarkInsideLength = 0.0f;
        this.minorTickMarkOutsideLength = 2.0f;

        this.plot = null;

        this.listenerList = new EventListenerList();

    }

    /**
     * Returns <code>true</code> if the axis is visible, and
     * <code>false</code> otherwise.
     *
     * @return A boolean.
     *
     * @see #setVisible(boolean)
     */
    public boolean isVisible() {
        return this.visible;
    }

    /**
     * Sets a flag that controls whether or not the axis is visible and sends
     * an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param flag  the flag.
     *
     * @see #isVisible()
     */
    public void setVisible(boolean flag) {
        if (flag != this.visible) {
            this.visible = flag;
            fireChangeEvent();
        }
    }

    /**
     * Returns the label for the axis.
     *
     * @return The label for the axis (<code>null</code> possible).
     *
     * @see #getLabelFont()
     * @see #getLabelPaint()
     * @see #setLabel(String)
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * Sets the label for the axis and sends an {@link AxisChangeEvent} to all
     * registered listeners.
     *
     * @param label  the new label (<code>null</code> permitted).
     *
     * @see #getLabel()
     * @see #setLabelFont(Font)
     * @see #setLabelPaint(Paint)
     */
    public void setLabel(String label) {

        String existing = this.label;
        if (existing != null) {
            if (!existing.equals(label)) {
                this.label = label;
                fireChangeEvent();
            }
        }
        else {
            if (label != null) {
                this.label = label;
                fireChangeEvent();
            }
        }

    }

    /**
     * Returns the font for the axis label.
     *
     * @return The font (never <code>null</code>).
     *
     * @see #setLabelFont(Font)
     */
    public Font getLabelFont() {
        return this.labelFont;
    }

    /**
     * Sets the font for the axis label and sends an {@link AxisChangeEvent}
     * to all registered listeners.
     *
     * @param font  the font (<code>null</code> not permitted).
     *
     * @see #getLabelFont()
     */
    public void setLabelFont(Font font) {
        int PROBE_START_LINE_431 = 433;
		java.awt.Font p_font_573_line_431 = font;
		boolean axis_1_expr83_line_431 = p_font_573_line_431 == null;
		int PROBE_END_LINE_431 = 433;
		if (axis_1_expr83_line_431) {
            throw new IllegalArgumentException("Null 'font' argument.");
        }
        int PROBE_START_LINE_434 = 437;
		java.awt.Font f_label_font_544_line_434 = this.labelFont;
		java.awt.Font p_font_573_line_434 = font;
		boolean axis_1_expr85_line_434 = f_label_font_544_line_434.equals(p_font_573_line_434);
		boolean axis_1_expr84_line_434 = !axis_1_expr85_line_434;
		int PROBE_END_LINE_434 = 437;
		if (axis_1_expr84_line_434) {
            int PROBE_START_LINE_435 = 435;
			java.awt.Font p_font_573_line_435 = font;
			int PROBE_END_LINE_435 = 435;
			this.labelFont = p_font_573_line_435;
            fireChangeEvent();
        }
    }

    /**
     * Returns the color/shade used to draw the axis label.
     *
     * @return The paint (never <code>null</code>).
     *
     * @see #setLabelPaint(Paint)
     */
    public Paint getLabelPaint() {
        return this.labelPaint;
    }

    /**
     * Sets the paint used to draw the axis label and sends an
     * {@link AxisChangeEvent} to all registered listeners.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getLabelPaint()
     */
    public void setLabelPaint(Paint paint) {
        int PROBE_START_LINE_460 = 462;
		java.awt.Paint p_paint_574_line_460 = paint;
		boolean axis_1_expr92_line_460 = p_paint_574_line_460 == null;
		int PROBE_END_LINE_460 = 462;
		if (axis_1_expr92_line_460) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        int PROBE_START_LINE_463 = 463;
		java.awt.Paint p_paint_574_line_463 = paint;
		int PROBE_END_LINE_463 = 463;
		this.labelPaint = p_paint_574_line_463;
        fireChangeEvent();
    }

    /**
     * Returns the insets for the label (that is, the amount of blank space
     * that should be left around the label).
     *
     * @return The label insets (never <code>null</code>).
     *
     * @see #setLabelInsets(RectangleInsets)
     */
    public RectangleInsets getLabelInsets() {
        return this.labelInsets;
    }

    /**
     * Sets the insets for the axis label, and sends an {@link AxisChangeEvent}
     * to all registered listeners.
     *
     * @param insets  the insets (<code>null</code> not permitted).
     *
     * @see #getLabelInsets()
     */
    public void setLabelInsets(RectangleInsets insets) {
        setLabelInsets(insets, true);
    }

    /**
     * Sets the insets for the axis label, and sends an {@link AxisChangeEvent}
     * to all registered listeners.
     *
     * @param insets  the insets (<code>null</code> not permitted).
     * @param notify  notify listeners?
     *
     * @since 1.0.10
     */
    public void setLabelInsets(RectangleInsets insets, boolean notify) {
        if (insets == null) {
            throw new IllegalArgumentException("Null 'insets' argument.");
        }
        if (!insets.equals(this.labelInsets)) {
            this.labelInsets = insets;
            if (notify) {
                fireChangeEvent();
            }
        }
    }

    /**
     * Returns the angle of the axis label.
     *
     * @return The angle (in radians).
     *
     * @see #setLabelAngle(double)
     */
    public double getLabelAngle() {
        return this.labelAngle;
    }

    /**
     * Sets the angle for the label and sends an {@link AxisChangeEvent} to all
     * registered listeners.
     *
     * @param angle  the angle (in radians).
     *
     * @see #getLabelAngle()
     */
    public void setLabelAngle(double angle) {
        this.labelAngle = angle;
        fireChangeEvent();
    }

    /**
     * Returns the tool tip text for the axis label.
     *
     * @return The tool tip text (possibly <code>null</code>).
     *
     * @see #setLabelToolTip(String)
     *
     * @since 1.2.0
     */
    public String getLabelToolTip() {
        return this.labelToolTip;
    }

    /**
     * Sets the tool tip text for the axis label and sends a .
     * {@link AxisChangeEvent} to all registered listeners.
     *
     * @param text  the tool tip text (<code>null</code> permitted).
     *
     * @see #getLabelToolTip()
     *
     * @since 1.2.0
     */
    public void setLabelToolTip(String text) {
        this.labelToolTip = text;
        fireChangeEvent();
    }

    /**
     * Returns the URL text for the axis label.
     *
     * @return The URL (possibly <code>null</code>).
     *
     * @see #setLabelURL(String)
     *
     * @since 1.2.0
     */
    public String getLabelURL() {
        return this.labelURL;
    }

    /**
     * Sets the URL for the axis label and sends an {@link AxisChangeEvent} to
     * all registered listeners.
     *
     * @param url  the URL (<code>null</code> permitted).
     *
     * @see #getLabelURL()
     *
     * @since 1.2.0
     */
    public void setLabelURL(String url) {
        this.labelURL = url;
        fireChangeEvent();
    }

    /**
     * A flag that controls whether or not the axis line is drawn.
     *
     * @return A boolean.
     *
     * @see #getAxisLinePaint()
     * @see #getAxisLineStroke()
     * @see #setAxisLineVisible(boolean)
     */
    public boolean isAxisLineVisible() {
        return this.axisLineVisible;
    }

    /**
     * Sets a flag that controls whether or not the axis line is visible and
     * sends an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param visible  the flag.
     *
     * @see #isAxisLineVisible()
     * @see #setAxisLinePaint(Paint)
     * @see #setAxisLineStroke(Stroke)
     */
    public void setAxisLineVisible(boolean visible) {
        this.axisLineVisible = visible;
        fireChangeEvent();
    }

    /**
     * Returns the paint used to draw the axis line.
     *
     * @return The paint (never <code>null</code>).
     *
     * @see #setAxisLinePaint(Paint)
     */
    public Paint getAxisLinePaint() {
        return this.axisLinePaint;
    }

    /**
     * Sets the paint used to draw the axis line and sends an
     * {@link AxisChangeEvent} to all registered listeners.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getAxisLinePaint()
     */
    public void setAxisLinePaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.axisLinePaint = paint;
        fireChangeEvent();
    }

    /**
     * Returns the stroke used to draw the axis line.
     *
     * @return The stroke (never <code>null</code>).
     *
     * @see #setAxisLineStroke(Stroke)
     */
    public Stroke getAxisLineStroke() {
        return this.axisLineStroke;
    }

    /**
     * Sets the stroke used to draw the axis line and sends an
     * {@link AxisChangeEvent} to all registered listeners.
     *
     * @param stroke  the stroke (<code>null</code> not permitted).
     *
     * @see #getAxisLineStroke()
     */
    public void setAxisLineStroke(Stroke stroke) {
        if (stroke == null) {
            throw new IllegalArgumentException("Null 'stroke' argument.");
        }
        this.axisLineStroke = stroke;
        fireChangeEvent();
    }

    /**
     * Returns a flag indicating whether or not the tick labels are visible.
     *
     * @return The flag.
     *
     * @see #getTickLabelFont()
     * @see #getTickLabelPaint()
     * @see #setTickLabelsVisible(boolean)
     */
    public boolean isTickLabelsVisible() {
        return this.tickLabelsVisible;
    }

    /**
     * Sets the flag that determines whether or not the tick labels are
     * visible and sends an {@link AxisChangeEvent} to all registered
     * listeners.
     *
     * @param flag  the flag.
     *
     * @see #isTickLabelsVisible()
     * @see #setTickLabelFont(Font)
     * @see #setTickLabelPaint(Paint)
     */
    public void setTickLabelsVisible(boolean flag) {

        if (flag != this.tickLabelsVisible) {
            this.tickLabelsVisible = flag;
            fireChangeEvent();
        }

    }

    /**
     * Returns the flag that indicates whether or not the minor tick marks are
     * showing.
     *
     * @return The flag that indicates whether or not the minor tick marks are
     *         showing.
     *
     * @see #setMinorTickMarksVisible(boolean)
     *
     * @since 1.0.12
     */
    public boolean isMinorTickMarksVisible() {
        return this.minorTickMarksVisible;
    }

    /**
     * Sets the flag that indicates whether or not the minor tick marks are
     * showing and sends an {@link AxisChangeEvent} to all registered
     * listeners.
     *
     * @param flag  the flag.
     *
     * @see #isMinorTickMarksVisible()
     *
     * @since 1.0.12
     */
    public void setMinorTickMarksVisible(boolean flag) {
        if (flag != this.minorTickMarksVisible) {
            this.minorTickMarksVisible = flag;
            fireChangeEvent();
        }
    }

    /**
     * Returns the font used for the tick labels (if showing).
     *
     * @return The font (never <code>null</code>).
     *
     * @see #setTickLabelFont(Font)
     */
    public Font getTickLabelFont() {
        return this.tickLabelFont;
    }

    /**
     * Sets the font for the tick labels and sends an {@link AxisChangeEvent}
     * to all registered listeners.
     *
     * @param font  the font (<code>null</code> not allowed).
     *
     * @see #getTickLabelFont()
     */
    public void setTickLabelFont(Font font) {

        int PROBE_START_LINE_761 = 763;
		java.awt.Font p_font_586_line_761 = font;
		boolean axis_1_expr97_line_761 = p_font_586_line_761 == null;
		int PROBE_END_LINE_761 = 763;
		if (axis_1_expr97_line_761) {
            throw new IllegalArgumentException("Null 'font' argument.");
        }

        int PROBE_START_LINE_765 = 768;
		java.awt.Font f_tick_label_font_555_line_765 = this.tickLabelFont;
		java.awt.Font p_font_586_line_765 = font;
		boolean axis_1_expr99_line_765 = f_tick_label_font_555_line_765.equals(p_font_586_line_765);
		boolean axis_1_expr98_line_765 = !axis_1_expr99_line_765;
		int PROBE_END_LINE_765 = 768;
		if (axis_1_expr98_line_765) {
            this.tickLabelFont = font;
            fireChangeEvent();
        }

    }

    /**
     * Returns the color/shade used for the tick labels.
     *
     * @return The paint used for the tick labels.
     *
     * @see #setTickLabelPaint(Paint)
     */
    public Paint getTickLabelPaint() {
        return this.tickLabelPaint;
    }

    /**
     * Sets the paint used to draw tick labels (if they are showing) and
     * sends an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getTickLabelPaint()
     */
    public void setTickLabelPaint(Paint paint) {
        int PROBE_START_LINE_792 = 794;
		java.awt.Paint p_paint_587_line_792 = paint;
		boolean axis_1_expr102_line_792 = p_paint_587_line_792 == null;
		int PROBE_END_LINE_792 = 794;
		if (axis_1_expr102_line_792) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        int PROBE_START_LINE_795 = 795;
		java.awt.Paint p_paint_587_line_795 = paint;
		int PROBE_END_LINE_795 = 795;
		this.tickLabelPaint = p_paint_587_line_795;
        fireChangeEvent();
    }

    /**
     * Returns the insets for the tick labels.
     *
     * @return The insets (never <code>null</code>).
     *
     * @see #setTickLabelInsets(RectangleInsets)
     */
    public RectangleInsets getTickLabelInsets() {
        return this.tickLabelInsets;
    }

    /**
     * Sets the insets for the tick labels and sends an {@link AxisChangeEvent}
     * to all registered listeners.
     *
     * @param insets  the insets (<code>null</code> not permitted).
     *
     * @see #getTickLabelInsets()
     */
    public void setTickLabelInsets(RectangleInsets insets) {
        if (insets == null) {
            throw new IllegalArgumentException("Null 'insets' argument.");
        }
        if (!this.tickLabelInsets.equals(insets)) {
            this.tickLabelInsets = insets;
            fireChangeEvent();
        }
    }

    /**
     * Returns the flag that indicates whether or not the tick marks are
     * showing.
     *
     * @return The flag that indicates whether or not the tick marks are
     *         showing.
     *
     * @see #setTickMarksVisible(boolean)
     */
    public boolean isTickMarksVisible() {
        return this.tickMarksVisible;
    }

    /**
     * Sets the flag that indicates whether or not the tick marks are showing
     * and sends an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param flag  the flag.
     *
     * @see #isTickMarksVisible()
     */
    public void setTickMarksVisible(boolean flag) {
        if (flag != this.tickMarksVisible) {
            this.tickMarksVisible = flag;
            fireChangeEvent();
        }
    }

    /**
     * Returns the inside length of the tick marks.
     *
     * @return The length.
     *
     * @see #getTickMarkOutsideLength()
     * @see #setTickMarkInsideLength(float)
     */
    public float getTickMarkInsideLength() {
        return this.tickMarkInsideLength;
    }

    /**
     * Sets the inside length of the tick marks and sends
     * an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param length  the new length.
     *
     * @see #getTickMarkInsideLength()
     */
    public void setTickMarkInsideLength(float length) {
        this.tickMarkInsideLength = length;
        fireChangeEvent();
    }

    /**
     * Returns the outside length of the tick marks.
     *
     * @return The length.
     *
     * @see #getTickMarkInsideLength()
     * @see #setTickMarkOutsideLength(float)
     */
    public float getTickMarkOutsideLength() {
        return this.tickMarkOutsideLength;
    }

    /**
     * Sets the outside length of the tick marks and sends
     * an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param length  the new length.
     *
     * @see #getTickMarkInsideLength()
     */
    public void setTickMarkOutsideLength(float length) {
        this.tickMarkOutsideLength = length;
        fireChangeEvent();
    }

    /**
     * Returns the stroke used to draw tick marks.
     *
     * @return The stroke (never <code>null</code>).
     *
     * @see #setTickMarkStroke(Stroke)
     */
    public Stroke getTickMarkStroke() {
        return this.tickMarkStroke;
    }

    /**
     * Sets the stroke used to draw tick marks and sends
     * an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param stroke  the stroke (<code>null</code> not permitted).
     *
     * @see #getTickMarkStroke()
     */
    public void setTickMarkStroke(Stroke stroke) {
        if (stroke == null) {
            throw new IllegalArgumentException("Null 'stroke' argument.");
        }
        if (!this.tickMarkStroke.equals(stroke)) {
            this.tickMarkStroke = stroke;
            fireChangeEvent();
        }
    }

    /**
     * Returns the paint used to draw tick marks (if they are showing).
     *
     * @return The paint (never <code>null</code>).
     *
     * @see #setTickMarkPaint(Paint)
     */
    public Paint getTickMarkPaint() {
        return this.tickMarkPaint;
    }

    /**
     * Sets the paint used to draw tick marks and sends an
     * {@link AxisChangeEvent} to all registered listeners.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getTickMarkPaint()
     */
    public void setTickMarkPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.tickMarkPaint = paint;
        fireChangeEvent();
    }

    /**
     * Returns the inside length of the minor tick marks.
     *
     * @return The length.
     *
     * @see #getMinorTickMarkOutsideLength()
     * @see #setMinorTickMarkInsideLength(float)
     *
     * @since 1.0.12
     */
    public float getMinorTickMarkInsideLength() {
        return this.minorTickMarkInsideLength;
    }

    /**
     * Sets the inside length of the minor tick marks and sends
     * an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param length  the new length.
     *
     * @see #getMinorTickMarkInsideLength()
     *
     * @since 1.0.12
     */
    public void setMinorTickMarkInsideLength(float length) {
        this.minorTickMarkInsideLength = length;
        fireChangeEvent();
    }

    /**
     * Returns the outside length of the minor tick marks.
     *
     * @return The length.
     *
     * @see #getMinorTickMarkInsideLength()
     * @see #setMinorTickMarkOutsideLength(float)
     *
     * @since 1.0.12
     */
    public float getMinorTickMarkOutsideLength() {
        return this.minorTickMarkOutsideLength;
    }

    /**
     * Sets the outside length of the minor tick marks and sends
     * an {@link AxisChangeEvent} to all registered listeners.
     *
     * @param length  the new length.
     *
     * @see #getMinorTickMarkInsideLength()
     *
     * @since 1.0.12
     */
    public void setMinorTickMarkOutsideLength(float length) {
        this.minorTickMarkOutsideLength = length;
        fireChangeEvent();
    }

    /**
     * Returns the plot that the axis is assigned to.  This method will return
     * <code>null</code> if the axis is not currently assigned to a plot.
     *
     * @return The plot that the axis is assigned to (possibly
     *         <code>null</code>).
     *
     * @see #setPlot(Plot)
     */
    public Plot getPlot() {
        int PROBE_START_LINE_1030 = 1030;
		org.jfree.chart.plot.Plot f_plot_569_line_1030 = this.plot;
		int PROBE_END_LINE_1030 = 1030;
		return f_plot_569_line_1030;
    }

    /**
     * Sets a reference to the plot that the axis is assigned to.
     * <P>
     * This method is used internally, you shouldn't need to call it yourself.
     *
     * @param plot  the plot.
     *
     * @see #getPlot()
     */
    public void setPlot(Plot plot) {
        int PROBE_START_LINE_1043 = 1043;
		org.jfree.chart.plot.Plot p_plot_596_line_1043 = plot;
		int PROBE_END_LINE_1043 = 1043;
		this.plot = p_plot_596_line_1043;
        configure();
    }

    /**
     * Returns the fixed dimension for the axis.
     *
     * @return The fixed dimension.
     *
     * @see #setFixedDimension(double)
     */
    public double getFixedDimension() {
        return this.fixedDimension;
    }

    /**
     * Sets the fixed dimension for the axis.
     * <P>
     * This is used when combining more than one plot on a chart.  In this case,
     * there may be several axes that need to have the same height or width so
     * that they are aligned.  This method is used to fix a dimension for the
     * axis (the context determines whether the dimension is horizontal or
     * vertical).
     *
     * @param dimension  the fixed dimension.
     *
     * @see #getFixedDimension()
     */
    public void setFixedDimension(double dimension) {
        this.fixedDimension = dimension;
    }

    /**
     * Configures the axis to work with the current plot.  Override this method
     * to perform any special processing (such as auto-rescaling).
     */
    public abstract void configure();

    /**
     * Estimates the space (height or width) required to draw the axis.
     *
     * @param g2  the graphics device.
     * @param plot  the plot that the axis belongs to.
     * @param plotArea  the area within which the plot (including axes) should
     *                  be drawn.
     * @param edge  the axis location.
     * @param space  space already reserved.
     *
     * @return The space required to draw the axis (including pre-reserved
     *         space).
     */
    public abstract AxisSpace reserveSpace(Graphics2D g2, Plot plot,
                                           Rectangle2D plotArea,
                                           RectangleEdge edge,
                                           AxisSpace space);

    /**
     * Draws the axis on a Java 2D graphics device (such as the screen or a
     * printer).
     *
     * @param g2  the graphics device (<code>null</code> not permitted).
     * @param cursor  the cursor location (determines where to draw the axis).
     * @param plotArea  the area within which the axes and plot should be drawn.
     * @param dataArea  the area within which the data should be drawn.
     * @param edge  the axis location (<code>null</code> not permitted).
     * @param plotState  collects information about the plot
     *                   (<code>null</code> permitted).
     *
     * @return The axis state (never <code>null</code>).
     */
    public abstract AxisState draw(Graphics2D g2,
                                   double cursor,
                                   Rectangle2D plotArea,
                                   Rectangle2D dataArea,
                                   RectangleEdge edge,
                                   PlotRenderingInfo plotState);

    /**
     * Calculates the positions of the ticks for the axis, storing the results
     * in the tick list (ready for drawing).
     *
     * @param g2  the graphics device.
     * @param state  the axis state.
     * @param dataArea  the area inside the axes.
     * @param edge  the edge on which the axis is located.
     *
     * @return The list of ticks.
     */
    public abstract List refreshTicks(Graphics2D g2, AxisState state,
            Rectangle2D dataArea, RectangleEdge edge);

    /**
     * Created an entity for the axis.
     *
     * @param cursor  the initial cursor value.
     * @param state  the axis state after completion of the drawing with a
     *     possibly updated cursor position.
     * @param dataArea  the data area.
     * @param edge  the edge.
     * @param plotState  the PlotRenderingInfo from which a reference to the
     *     entity collection can be obtained.
     *
     * @since 1.0.13
     */
    protected void createAndAddEntity(double cursor, AxisState state,
            Rectangle2D dataArea, RectangleEdge edge,
            PlotRenderingInfo plotState) {

        if (plotState == null || plotState.getOwner() == null) {
            return;  // no need to create entity if we can´t save it anyways...
        }
        Rectangle2D hotspot = null;
        if (edge.equals(RectangleEdge.TOP)) {
            hotspot = new Rectangle2D.Double(dataArea.getX(),
                    state.getCursor(), dataArea.getWidth(),
                    cursor - state.getCursor());
        }
        else if (edge.equals(RectangleEdge.BOTTOM)) {
            hotspot = new Rectangle2D.Double(dataArea.getX(), cursor,
                    dataArea.getWidth(), state.getCursor() - cursor);
        }
        else if (edge.equals(RectangleEdge.LEFT)) {
            hotspot = new Rectangle2D.Double(state.getCursor(),
                    dataArea.getY(), cursor - state.getCursor(),
                    dataArea.getHeight());
        }
        else if (edge.equals(RectangleEdge.RIGHT)) {
            hotspot = new Rectangle2D.Double(cursor, dataArea.getY(),
                    state.getCursor() - cursor, dataArea.getHeight());
        }
        EntityCollection e = plotState.getOwner().getEntityCollection();
        if (e != null) {
            e.add(new AxisEntity(hotspot, this));
        }
    }

    /**
     * Registers an object for notification of changes to the axis.
     *
     * @param listener  the object that is being registered.
     *
     * @see #removeChangeListener(AxisChangeListener)
     */
    public void addChangeListener(AxisChangeListener listener) {
        int PROBE_START_LINE_1187 = 1187;
		javax.swing.event.EventListenerList f_listener_list_570_line_1187 = this.listenerList;
		org.jfree.chart.event.AxisChangeListener p_listener_618_line_1187 = listener;
		int PROBE_END_LINE_1187 = 1187;
		f_listener_list_570_line_1187.add(AxisChangeListener.class, p_listener_618_line_1187);
    }

    /**
     * Deregisters an object for notification of changes to the axis.
     *
     * @param listener  the object to deregister.
     *
     * @see #addChangeListener(AxisChangeListener)
     */
    public void removeChangeListener(AxisChangeListener listener) {
        this.listenerList.remove(AxisChangeListener.class, listener);
    }

    /**
     * Returns <code>true</code> if the specified object is registered with
     * the dataset as a listener.  Most applications won't need to call this
     * method, it exists mainly for use by unit testing code.
     *
     * @param listener  the listener.
     *
     * @return A boolean.
     */
    public boolean hasListener(EventListener listener) {
        List list = Arrays.asList(this.listenerList.getListenerList());
        return list.contains(listener);
    }

    /**
     * Notifies all registered listeners that the axis has changed.
     * The AxisChangeEvent provides information about the change.
     *
     * @param event  information about the change to the axis.
     */
    protected void notifyListeners(AxisChangeEvent event) {
        int PROBE_START_LINE_1222 = 1222;
		javax.swing.event.EventListenerList f_listener_list_570_line_1222 = this.listenerList;
		Object[] axis_1_expr117_line_1222 = f_listener_list_570_line_1222.getListenerList();
		Object[] listeners = axis_1_expr117_line_1222;
        boolean FOR_STMT_TOGGLE_LINE_1223 = false;
		int PROBE_END_LINE_1222 = 1222;
		for (int i = 0; true;) {
            int PROBE_START_LINE_1224 = 1226;
			if (!FOR_STMT_TOGGLE_LINE_1223) {
				FOR_STMT_TOGGLE_LINE_1223 = true;
				Object[] v_listeners_622_line_1223 = listeners;
				int q_length_22_line_1223 = v_listeners_622_line_1223.length;
				int axis_1_expr121_line_1223 = q_length_22_line_1223 - 2;
				i = axis_1_expr121_line_1223;
			} else {
				if (FOR_STMT_TOGGLE_LINE_1223) {
					i -= 2;
				} else {
					FOR_STMT_TOGGLE_LINE_1223 = true;
				}
			}
			int v_i_623_line_1223 = i;
			boolean axis_1_expr122_line_1223 = v_i_623_line_1223 >= 0;
			if (!(axis_1_expr122_line_1223)) {
				break;
			}
			Object[] v_listeners_622_line_1224 = listeners;
			int v_i_623_line_1224 = i;
			Object axis_1_expr125_line_1224 = v_listeners_622_line_1224[v_i_623_line_1224];
			boolean axis_1_expr124_line_1224 = axis_1_expr125_line_1224 == AxisChangeListener.class;
			int PROBE_END_LINE_1224 = 1226;
			if (axis_1_expr124_line_1224) {
                int PROBE_START_LINE_1225 = 1225;
				Object[] v_listeners_622_line_1225 = listeners;
				int v_i_623_line_1225 = i;
				int axis_1_expr131_line_1225 = v_i_623_line_1225 + 1;
				Object axis_1_expr130_line_1225 = v_listeners_622_line_1225[axis_1_expr131_line_1225];
				org.jfree.chart.event.AxisChangeListener axis_1_expr128_line_1225 = ((AxisChangeListener) axis_1_expr130_line_1225);
				org.jfree.chart.event.AxisChangeEvent p_event_621_line_1225 = event;
				int PROBE_END_LINE_1225 = 1225;
				axis_1_expr128_line_1225.axisChanged(p_event_621_line_1225);
            }
        }
    }

    /**
     * Sends an {@link AxisChangeEvent} to all registered listeners.
     *
     * @since 1.0.12
     */
    protected void fireChangeEvent() {
        notifyListeners(new AxisChangeEvent(this));
    }

    /**
     * Returns a rectangle that encloses the axis label.  This is typically
     * used for layout purposes (it gives the maximum dimensions of the label).
     *
     * @param g2  the graphics device.
     * @param edge  the edge of the plot area along which the axis is measuring.
     *
     * @return The enclosing rectangle.
     */
    protected Rectangle2D getLabelEnclosure(Graphics2D g2, RectangleEdge edge) {

        Rectangle2D result = new Rectangle2D.Double();
        String axisLabel = getLabel();
        if (axisLabel != null && !axisLabel.equals("")) {
            FontMetrics fm = g2.getFontMetrics(getLabelFont());
            Rectangle2D bounds = TextUtilities.getTextBounds(axisLabel, g2, fm);
            RectangleInsets insets = getLabelInsets();
            bounds = insets.createOutsetRectangle(bounds);
            double angle = getLabelAngle();
            if (edge == RectangleEdge.LEFT || edge == RectangleEdge.RIGHT) {
                angle = angle - Math.PI / 2.0;
            }
            double x = bounds.getCenterX();
            double y = bounds.getCenterY();
            AffineTransform transformer
                = AffineTransform.getRotateInstance(angle, x, y);
            Shape labelBounds = transformer.createTransformedShape(bounds);
            result = labelBounds.getBounds2D();
        }

        return result;

    }

    /**
     * Draws the axis label.
     *
     * @param label  the label text.
     * @param g2  the graphics device.
     * @param plotArea  the plot area.
     * @param dataArea  the area inside the axes.
     * @param edge  the location of the axis.
     * @param state  the axis state (<code>null</code> not permitted).
     * @param plotState  the plot state (<code>null</code> permitted).
     *
     * @return Information about the axis.
     */
    protected AxisState drawLabel(String label, Graphics2D g2,
            Rectangle2D plotArea, Rectangle2D dataArea, RectangleEdge edge,
            AxisState state, PlotRenderingInfo plotState) {

        // it is unlikely that 'state' will be null, but check anyway...
        if (state == null) {
            throw new IllegalArgumentException("Null 'state' argument.");
        }

        if ((label == null) || (label.equals(""))) {
            return state;
        }

        Font font = getLabelFont();
        RectangleInsets insets = getLabelInsets();
        g2.setFont(font);
        g2.setPaint(getLabelPaint());
        FontMetrics fm = g2.getFontMetrics();
        Rectangle2D labelBounds = TextUtilities.getTextBounds(label, g2, fm);
        Shape hotspot = null;

        if (edge == RectangleEdge.TOP) {
            AffineTransform t = AffineTransform.getRotateInstance(
                    getLabelAngle(), labelBounds.getCenterX(),
                    labelBounds.getCenterY());
            Shape rotatedLabelBounds = t.createTransformedShape(labelBounds);
            labelBounds = rotatedLabelBounds.getBounds2D();
            float w = (float) labelBounds.getWidth();
            float h = (float) labelBounds.getHeight();
            float labelx = (float) dataArea.getCenterX();
            float labely = (float) (state.getCursor() - insets.getBottom()
                    - h / 2.0);
            TextUtilities.drawRotatedString(label, g2, labelx, labely,
                    TextAnchor.CENTER, getLabelAngle(), TextAnchor.CENTER);
            hotspot = new Rectangle2D.Float(labelx - w / 2.0f,
                    labely - h / 2.0f, w, h);
            state.cursorUp(insets.getTop() + labelBounds.getHeight()
                    + insets.getBottom());
        }
        else if (edge == RectangleEdge.BOTTOM) {
            AffineTransform t = AffineTransform.getRotateInstance(
                    getLabelAngle(), labelBounds.getCenterX(),
                    labelBounds.getCenterY());
            Shape rotatedLabelBounds = t.createTransformedShape(labelBounds);
            labelBounds = rotatedLabelBounds.getBounds2D();
            float w = (float) labelBounds.getWidth();
            float h = (float) labelBounds.getHeight();
            float labelx = (float) dataArea.getCenterX();
            float labely = (float) (state.getCursor() + insets.getTop()
                    + h / 2.0);
            TextUtilities.drawRotatedString(label, g2, labelx, labely,
                    TextAnchor.CENTER, getLabelAngle(), TextAnchor.CENTER);
            hotspot = new Rectangle2D.Float(labelx - w / 2.0f,
                    labely - h / 2.0f, w, h);
            state.cursorDown(insets.getTop() + labelBounds.getHeight()
                    + insets.getBottom());
        }
        else if (edge == RectangleEdge.LEFT) {
            AffineTransform t = AffineTransform.getRotateInstance(
                    getLabelAngle() - Math.PI / 2.0, labelBounds.getCenterX(),
                    labelBounds.getCenterY());
            Shape rotatedLabelBounds = t.createTransformedShape(labelBounds);
            labelBounds = rotatedLabelBounds.getBounds2D();
            float w = (float) labelBounds.getWidth();
            float h = (float) labelBounds.getHeight();
            float labelx = (float) (state.getCursor() - insets.getRight()
                    - w / 2.0);
            float labely = (float) dataArea.getCenterY();
            TextUtilities.drawRotatedString(label, g2, labelx, labely,
                    TextAnchor.CENTER, getLabelAngle() - Math.PI / 2.0,
                    TextAnchor.CENTER);
            hotspot = new Rectangle2D.Float(labelx - w / 2.0f,
                    labely - h / 2.0f, w, h);
            state.cursorLeft(insets.getLeft() + labelBounds.getWidth()
                    + insets.getRight());
        }
        else if (edge == RectangleEdge.RIGHT) {

            AffineTransform t = AffineTransform.getRotateInstance(
                    getLabelAngle() + Math.PI / 2.0,
                    labelBounds.getCenterX(), labelBounds.getCenterY());
            Shape rotatedLabelBounds = t.createTransformedShape(labelBounds);
            labelBounds = rotatedLabelBounds.getBounds2D();
            float w = (float) labelBounds.getWidth();
            float h = (float) labelBounds.getHeight();
            float labelx = (float) (state.getCursor()
                            + insets.getLeft() + w / 2.0);
            float labely = (float) (dataArea.getY() + dataArea.getHeight()
                    / 2.0);
            TextUtilities.drawRotatedString(label, g2, labelx, labely,
                    TextAnchor.CENTER, getLabelAngle() + Math.PI / 2.0,
                    TextAnchor.CENTER);
            hotspot = new Rectangle2D.Float(labelx - w / 2.0f,
                    labely - h / 2.0f, w, h);
            state.cursorRight(insets.getLeft() + labelBounds.getWidth()
                    + insets.getRight());

        }
        if (plotState != null && hotspot != null) {
            ChartRenderingInfo owner = plotState.getOwner();
            if (owner != null) {
                EntityCollection entities = owner.getEntityCollection();
                if (entities != null) {
                    entities.add(new AxisLabelEntity(this, hotspot,
                            this.labelToolTip, this.labelURL));
                }
            }
        }
        return state;

    }

    /**
     * Draws an axis line at the current cursor position and edge.
     *
     * @param g2  the graphics device.
     * @param cursor  the cursor position.
     * @param dataArea  the data area.
     * @param edge  the edge.
     */
    protected void drawAxisLine(Graphics2D g2, double cursor,
            Rectangle2D dataArea, RectangleEdge edge) {

        Line2D axisLine = null;
        if (edge == RectangleEdge.TOP) {
            axisLine = new Line2D.Double(dataArea.getX(), cursor,
                    dataArea.getMaxX(), cursor);
        }
        else if (edge == RectangleEdge.BOTTOM) {
            axisLine = new Line2D.Double(dataArea.getX(), cursor,
                    dataArea.getMaxX(), cursor);
        }
        else if (edge == RectangleEdge.LEFT) {
            axisLine = new Line2D.Double(cursor, dataArea.getY(), cursor,
                    dataArea.getMaxY());
        }
        else if (edge == RectangleEdge.RIGHT) {
            axisLine = new Line2D.Double(cursor, dataArea.getY(), cursor,
                    dataArea.getMaxY());
        }
        g2.setPaint(this.axisLinePaint);
        g2.setStroke(this.axisLineStroke);
        g2.draw(axisLine);

    }

    /**
     * Returns a clone of the axis.
     *
     * @return A clone.
     *
     * @throws CloneNotSupportedException if some component of the axis does
     *         not support cloning.
     */
    public Object clone() throws CloneNotSupportedException {
        Axis clone = (Axis) super.clone();
        // It's up to the plot which clones up to restore the correct references
        clone.plot = null;
        clone.listenerList = new EventListenerList();
        return clone;
    }

    /**
     * Tests this axis for equality with another object.
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return <code>true</code> or <code>false</code>.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Axis)) {
            return false;
        }
        Axis that = (Axis) obj;
        if (this.visible != that.visible) {
            return false;
        }
        if (!ObjectUtilities.equal(this.label, that.label)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.labelFont, that.labelFont)) {
            return false;
        }
        if (!PaintUtilities.equal(this.labelPaint, that.labelPaint)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.labelInsets, that.labelInsets)) {
            return false;
        }
        if (this.labelAngle != that.labelAngle) {
            return false;
        }
        if (!ObjectUtilities.equal(this.labelToolTip, that.labelToolTip)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.labelURL, that.labelURL)) {
            return false;
        }
        if (this.axisLineVisible != that.axisLineVisible) {
            return false;
        }
        if (!ObjectUtilities.equal(this.axisLineStroke, that.axisLineStroke)) {
            return false;
        }
        if (!PaintUtilities.equal(this.axisLinePaint, that.axisLinePaint)) {
            return false;
        }
        if (this.tickLabelsVisible != that.tickLabelsVisible) {
            return false;
        }
        if (!ObjectUtilities.equal(this.tickLabelFont, that.tickLabelFont)) {
            return false;
        }
        if (!PaintUtilities.equal(this.tickLabelPaint, that.tickLabelPaint)) {
            return false;
        }
        if (!ObjectUtilities.equal(
            this.tickLabelInsets, that.tickLabelInsets
        )) {
            return false;
        }
        if (this.tickMarksVisible != that.tickMarksVisible) {
            return false;
        }
        if (this.tickMarkInsideLength != that.tickMarkInsideLength) {
            return false;
        }
        if (this.tickMarkOutsideLength != that.tickMarkOutsideLength) {
            return false;
        }
        if (!PaintUtilities.equal(this.tickMarkPaint, that.tickMarkPaint)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.tickMarkStroke, that.tickMarkStroke)) {
            return false;
        }
        if (this.minorTickMarksVisible != that.minorTickMarksVisible) {
            return false;
        }
        if (this.minorTickMarkInsideLength != that.minorTickMarkInsideLength) {
            return false;
        }
        if (this.minorTickMarkOutsideLength
                != that.minorTickMarkOutsideLength) {
            return false;
        }
        if (this.fixedDimension != that.fixedDimension) {
            return false;
        }
        return true;
    }

    /**
     * Provides serialization support.
     *
     * @param stream  the output stream.
     *
     * @throws IOException  if there is an I/O error.
     */
    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        SerialUtilities.writePaint(this.labelPaint, stream);
        SerialUtilities.writePaint(this.tickLabelPaint, stream);
        SerialUtilities.writeStroke(this.axisLineStroke, stream);
        SerialUtilities.writePaint(this.axisLinePaint, stream);
        SerialUtilities.writeStroke(this.tickMarkStroke, stream);
        SerialUtilities.writePaint(this.tickMarkPaint, stream);
    }

    /**
     * Provides serialization support.
     *
     * @param stream  the input stream.
     *
     * @throws IOException  if there is an I/O error.
     * @throws ClassNotFoundException  if there is a classpath problem.
     */
    private void readObject(ObjectInputStream stream)
        throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        this.labelPaint = SerialUtilities.readPaint(stream);
        this.tickLabelPaint = SerialUtilities.readPaint(stream);
        this.axisLineStroke = SerialUtilities.readStroke(stream);
        this.axisLinePaint = SerialUtilities.readPaint(stream);
        this.tickMarkStroke = SerialUtilities.readStroke(stream);
        this.tickMarkPaint = SerialUtilities.readPaint(stream);
        this.listenerList = new EventListenerList();
    }

}
