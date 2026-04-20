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
 * -----------------------
 * StandardChartTheme.java
 * -----------------------
 * (C) Copyright 2008, 2009, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 14-Aug-2008 : Version 1 (DG);
 * 10-Apr-2009 : Added getter/setter for smallFont (DG);
 *
 */

package org.jfree.chart;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Paint;
import java.awt.Stroke;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

import org.jfree.chart.annotations.XYAnnotation;
import org.jfree.chart.annotations.XYTextAnnotation;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.PeriodAxis;
import org.jfree.chart.axis.PeriodAxisLabelInfo;
import org.jfree.chart.axis.SubCategoryAxis;
import org.jfree.chart.axis.SymbolAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.block.Block;
import org.jfree.chart.block.BlockContainer;
import org.jfree.chart.block.LabelBlock;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.CombinedDomainCategoryPlot;
import org.jfree.chart.plot.CombinedDomainXYPlot;
import org.jfree.chart.plot.CombinedRangeCategoryPlot;
import org.jfree.chart.plot.CombinedRangeXYPlot;
import org.jfree.chart.plot.DefaultDrawingSupplier;
import org.jfree.chart.plot.DrawingSupplier;
import org.jfree.chart.plot.FastScatterPlot;
import org.jfree.chart.plot.MeterPlot;
import org.jfree.chart.plot.MultiplePiePlot;
import org.jfree.chart.plot.PieLabelLinkStyle;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.Plot;
import org.jfree.chart.plot.PolarPlot;
import org.jfree.chart.plot.SpiderWebPlot;
import org.jfree.chart.plot.ThermometerPlot;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.AbstractRenderer;
import org.jfree.chart.renderer.category.BarPainter;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.BarRenderer3D;
import org.jfree.chart.renderer.category.CategoryItemRenderer;
import org.jfree.chart.renderer.category.GradientBarPainter;
import org.jfree.chart.renderer.category.LineRenderer3D;
import org.jfree.chart.renderer.category.MinMaxCategoryRenderer;
import org.jfree.chart.renderer.category.StatisticalBarRenderer;
import org.jfree.chart.renderer.xy.GradientXYBarPainter;
import org.jfree.chart.renderer.xy.XYBarPainter;
import org.jfree.chart.renderer.xy.XYBarRenderer;
import org.jfree.chart.renderer.xy.XYItemRenderer;
import org.jfree.chart.title.CompositeTitle;
import org.jfree.chart.title.LegendTitle;
import org.jfree.chart.title.PaintScaleLegend;
import org.jfree.chart.title.TextTitle;
import org.jfree.chart.title.Title;
import org.jfree.chart.util.PaintUtilities;
import org.jfree.chart.util.PublicCloneable;
import org.jfree.chart.util.RectangleInsets;
import org.jfree.chart.util.SerialUtilities;

/**
 * A default implementation of the {@link ChartTheme} interface.  This
 * implementation just collects a whole bunch of chart attributes and mimics
 * the manual process of applying each attribute to the right sub-object
 * within the JFreeChart instance.  It's not elegant code, but it works.
 *
 * @since 1.0.11
 */
public class StandardChartTheme implements ChartTheme, Cloneable,
        PublicCloneable, Serializable {

    /** The name of this theme. */
    private String name;

    /**
     * The largest font size.  Use for the main chart title.
     */
    private Font extraLargeFont;

    /**
     * A large font.  Used for subtitles.
     */
    private Font largeFont;

    /**
     * The regular font size.  Used for axis tick labels, legend items etc.
     */
    private Font regularFont;

    /**
     * The small font size.
     */
    private Font smallFont;

    /** The paint used to display the main chart title. */
    private transient Paint titlePaint;

    /** The paint used to display subtitles. */
    private transient Paint subtitlePaint;

    /** The background paint for the chart. */
    private transient Paint chartBackgroundPaint;

    /** The legend background paint. */
    private transient Paint legendBackgroundPaint;

    /** The legend item paint. */
    private transient Paint legendItemPaint;

    /** The drawing supplier. */
    private DrawingSupplier drawingSupplier;

    /** The background paint for the plot. */
    private transient Paint plotBackgroundPaint;

    /** The plot outline paint. */
    private transient Paint plotOutlinePaint;

    /** The label link style for pie charts. */
    private PieLabelLinkStyle labelLinkStyle;

    /** The label link paint for pie charts. */
    private transient Paint labelLinkPaint;

    /** The domain grid line paint. */
    private transient Paint domainGridlinePaint;

    /** The range grid line paint. */
    private transient Paint rangeGridlinePaint;

    /**
     * The baseline paint (used for domain and range zero baselines)
     *
     * @since 1.0.13
     */
    private transient Paint baselinePaint;

    /** The crosshair paint. */
    private transient Paint crosshairPaint;

    /** The axis offsets. */
    private RectangleInsets axisOffset;

    /** The axis label paint. */
    private transient Paint axisLabelPaint;

    /** The tick label paint. */
    private transient Paint tickLabelPaint;

    /** The item label paint. */
    private transient Paint itemLabelPaint;

    /**
     * A flag that controls whether or not shadows are visible (for example,
     * in a bar renderer).
     */
    private boolean shadowVisible;

    /** The shadow paint. */
    private transient Paint shadowPaint;

    /** The bar painter. */
    private BarPainter barPainter;

    /** The XY bar painter. */
    private XYBarPainter xyBarPainter;

    /** The thermometer paint. */
    private transient Paint thermometerPaint;

    /**
     * The paint used to fill the interior of the 'walls' in the background
     * of a plot with a 3D effect.  Applied to BarRenderer3D.
     */
    private transient Paint wallPaint;

    /** The error indicator paint for the {@link StatisticalBarRenderer}. */
    private transient Paint errorIndicatorPaint;

    int PROBE_START_LINE_226 = 227;

	private transient java.awt.Paint q_default_grid_band_paint_13_line_227 = SymbolAxis.DEFAULT_GRID_BAND_PAINT;

	int PROBE_END_LINE_226 = 227;

	/** The grid band paint for a {@link SymbolAxis}. */
    private transient Paint gridBandPaint = q_default_grid_band_paint_13_line_227;

    /** The grid band alternate paint for a {@link SymbolAxis}. */
    private transient Paint gridBandAlternatePaint
            = SymbolAxis.DEFAULT_GRID_BAND_ALTERNATE_PAINT;

    /**
     * Creates and returns the default 'JFree' chart theme.
     *
     * @return A chart theme.
     */
    public static ChartTheme createJFreeTheme() {
        return new StandardChartTheme("JFree");
    }

    /**
     * Creates and returns a theme called "Darkness".  In this theme, the
     * charts have a black background.
     *
     * @return The "Darkness" theme.
     */
    public static ChartTheme createDarknessTheme() {
        StandardChartTheme theme = new StandardChartTheme("Darkness");
        theme.titlePaint = Color.white;
        theme.subtitlePaint = Color.white;
        theme.legendBackgroundPaint = Color.black;
        theme.legendItemPaint = Color.white;
        theme.chartBackgroundPaint = Color.black;
        theme.plotBackgroundPaint = Color.black;
        theme.plotOutlinePaint = Color.yellow;
        theme.baselinePaint = Color.white;
        theme.crosshairPaint = Color.red;
        theme.labelLinkPaint = Color.lightGray;
        theme.tickLabelPaint = Color.white;
        theme.axisLabelPaint = Color.white;
        theme.shadowPaint = Color.darkGray;
        theme.itemLabelPaint = Color.white;
        theme.drawingSupplier = new DefaultDrawingSupplier(
                new Paint[] {Color.decode("0xFFFF00"),
                        Color.decode("0x0036CC"), Color.decode("0xFF0000"),
                        Color.decode("0xFFFF7F"), Color.decode("0x6681CC"),
                        Color.decode("0xFF7F7F"), Color.decode("0xFFFFBF"),
                        Color.decode("0x99A6CC"), Color.decode("0xFFBFBF"),
                        Color.decode("0xA9A938"), Color.decode("0x2D4587")},
                new Paint[] {Color.decode("0xFFFF00"),
                        Color.decode("0x0036CC")},
                new Stroke[] {new BasicStroke(2.0f)},
                new Stroke[] {new BasicStroke(0.5f)},
                DefaultDrawingSupplier.DEFAULT_SHAPE_SEQUENCE);
        theme.wallPaint = Color.darkGray;
        theme.errorIndicatorPaint = Color.lightGray;
        theme.gridBandPaint = new Color(255, 255, 255, 20);
        theme.gridBandAlternatePaint = new Color(255, 255, 255, 40);
        return theme;
    }
    /**
     * Creates and returns a {@link ChartTheme} that doesn't apply any changes
     * to the JFreeChart defaults.  This produces the "legacy" look for
     * JFreeChart.
     *
     * @return A legacy theme.
     */
    public static ChartTheme createLegacyTheme() {
        StandardChartTheme theme = new StandardChartTheme("Legacy") {
            public void apply(JFreeChart chart) {
                // do nothing at all
            }
        };
        return theme;
    }

    /**
     * Creates a new default instance.
     *
     * @param name  the name of the theme (<code>null</code> not permitted).
     */
    public StandardChartTheme(String name) {
        int PROBE_START_LINE_304 = 306;
		String p_name_426_line_304 = name;
		boolean standard_chart_theme_1_expr1_line_304 = p_name_426_line_304 == null;
		int PROBE_END_LINE_304 = 306;
		if (standard_chart_theme_1_expr1_line_304) {
            throw new IllegalArgumentException("Null 'name' argument.");
        }
        int PROBE_START_LINE_307 = 307;
		String p_name_426_line_307 = name;
		int PROBE_END_LINE_307 = 307;
		this.name = p_name_426_line_307;
        int PROBE_START_LINE_308 = 308;
		int q_bold_15_line_308 = Font.BOLD;
		int PROBE_END_LINE_308 = 308;
		this.extraLargeFont = new Font("Tahoma", q_bold_15_line_308, 20);
        int PROBE_START_LINE_309 = 309;
		int q_bold_15_line_309 = Font.BOLD;
		int PROBE_END_LINE_309 = 309;
		this.largeFont = new Font("Tahoma", q_bold_15_line_309, 14);
        int PROBE_START_LINE_310 = 310;
		int q_plain_15_line_310 = Font.PLAIN;
		int PROBE_END_LINE_310 = 310;
		this.regularFont = new Font("Tahoma", q_plain_15_line_310, 12);
        int PROBE_START_LINE_311 = 311;
		int q_plain_16_line_311 = Font.PLAIN;
		int PROBE_END_LINE_311 = 311;
		this.smallFont = new Font("Tahoma", q_plain_16_line_311, 10);
        int PROBE_START_LINE_312 = 312;
		java.awt.Color q_black_16_line_312 = Color.black;
		int PROBE_END_LINE_312 = 312;
		this.titlePaint = q_black_16_line_312;
        int PROBE_START_LINE_313 = 313;
		java.awt.Color q_black_16_line_313 = Color.black;
		int PROBE_END_LINE_313 = 313;
		this.subtitlePaint = q_black_16_line_313;
        int PROBE_START_LINE_314 = 314;
		java.awt.Color q_white_16_line_314 = Color.white;
		int PROBE_END_LINE_314 = 314;
		this.legendBackgroundPaint = q_white_16_line_314;
        int PROBE_START_LINE_315 = 315;
		java.awt.Color q_dark_gray_16_line_315 = Color.darkGray;
		int PROBE_END_LINE_315 = 315;
		this.legendItemPaint = q_dark_gray_16_line_315;
        int PROBE_START_LINE_316 = 316;
		java.awt.Color q_white_17_line_316 = Color.white;
		int PROBE_END_LINE_316 = 316;
		this.chartBackgroundPaint = q_white_17_line_316;
        this.drawingSupplier = new DefaultDrawingSupplier();
        int PROBE_START_LINE_318 = 318;
		java.awt.Color q_light_gray_17_line_318 = Color.lightGray;
		int PROBE_END_LINE_318 = 318;
		this.plotBackgroundPaint = q_light_gray_17_line_318;
        int PROBE_START_LINE_319 = 319;
		java.awt.Color q_black_18_line_319 = Color.black;
		int PROBE_END_LINE_319 = 319;
		this.plotOutlinePaint = q_black_18_line_319;
        int PROBE_START_LINE_320 = 320;
		java.awt.Color q_black_18_line_320 = Color.black;
		int PROBE_END_LINE_320 = 320;
		this.labelLinkPaint = q_black_18_line_320;
        int PROBE_START_LINE_321 = 321;
		org.jfree.chart.plot.PieLabelLinkStyle q_cubic_curve_18_line_321 = PieLabelLinkStyle.CUBIC_CURVE;
		int PROBE_END_LINE_321 = 321;
		this.labelLinkStyle = q_cubic_curve_18_line_321;
        this.axisOffset = new RectangleInsets(4, 4, 4, 4);
        int PROBE_START_LINE_323 = 323;
		java.awt.Color q_white_19_line_323 = Color.white;
		int PROBE_END_LINE_323 = 323;
		this.domainGridlinePaint = q_white_19_line_323;
        int PROBE_START_LINE_324 = 324;
		java.awt.Color q_white_19_line_324 = Color.white;
		int PROBE_END_LINE_324 = 324;
		this.rangeGridlinePaint = q_white_19_line_324;
        int PROBE_START_LINE_325 = 325;
		java.awt.Color q_black_19_line_325 = Color.black;
		int PROBE_END_LINE_325 = 325;
		this.baselinePaint = q_black_19_line_325;
        int PROBE_START_LINE_326 = 326;
		java.awt.Color q_blue_19_line_326 = Color.blue;
		int PROBE_END_LINE_326 = 326;
		this.crosshairPaint = q_blue_19_line_326;
        int PROBE_START_LINE_327 = 327;
		java.awt.Color q_dark_gray_20_line_327 = Color.darkGray;
		int PROBE_END_LINE_327 = 327;
		this.axisLabelPaint = q_dark_gray_20_line_327;
        int PROBE_START_LINE_328 = 328;
		java.awt.Color q_dark_gray_20_line_328 = Color.darkGray;
		int PROBE_END_LINE_328 = 328;
		this.tickLabelPaint = q_dark_gray_20_line_328;
        this.barPainter = new GradientBarPainter();
        this.xyBarPainter = new GradientXYBarPainter();
        this.shadowVisible = true;
        int PROBE_START_LINE_332 = 332;
		java.awt.Color q_gray_20_line_332 = Color.gray;
		int PROBE_END_LINE_332 = 332;
		this.shadowPaint = q_gray_20_line_332;
        int PROBE_START_LINE_333 = 333;
		java.awt.Color q_black_21_line_333 = Color.black;
		int PROBE_END_LINE_333 = 333;
		this.itemLabelPaint = q_black_21_line_333;
        int PROBE_START_LINE_334 = 334;
		java.awt.Color q_white_21_line_334 = Color.white;
		int PROBE_END_LINE_334 = 334;
		this.thermometerPaint = q_white_21_line_334;
        int PROBE_START_LINE_335 = 335;
		java.awt.Paint q_default_wall_paint_21_line_335 = BarRenderer3D.DEFAULT_WALL_PAINT;
		int PROBE_END_LINE_335 = 335;
		this.wallPaint = q_default_wall_paint_21_line_335;
        int PROBE_START_LINE_336 = 336;
		java.awt.Color q_black_22_line_336 = Color.black;
		int PROBE_END_LINE_336 = 336;
		this.errorIndicatorPaint = q_black_22_line_336;
    }

    /**
     * Returns the largest font for this theme.
     *
     * @return The largest font for this theme.
     *
     * @see #setExtraLargeFont(Font)
     */
    public Font getExtraLargeFont() {
        return this.extraLargeFont;
    }

    /**
     * Sets the largest font for this theme.
     *
     * @param font  the font (<code>null</code> not permitted).
     *
     * @see #getExtraLargeFont()
     */
    public void setExtraLargeFont(Font font) {
        if (font == null) {
            throw new IllegalArgumentException("Null 'font' argument.");
        }
        this.extraLargeFont = font;
    }

    /**
     * Returns the large font for this theme.
     *
     * @return The large font (never <code>null</code>).
     *
     * @see #setLargeFont(Font)
     */
    public Font getLargeFont() {
        return this.largeFont;
    }

    /**
     * Sets the large font for this theme.
     *
     * @param font  the font (<code>null</code> not permitted).
     *
     * @see #getLargeFont()
     */
    public void setLargeFont(Font font) {
        if (font == null) {
            throw new IllegalArgumentException("Null 'font' argument.");
        }
        this.largeFont = font;
    }

    /**
     * Returns the regular font.
     *
     * @return The regular font (never <code>null</code>).
     *
     * @see #setRegularFont(Font)
     */
    public Font getRegularFont() {
        return this.regularFont;
    }

    /**
     * Sets the regular font for this theme.
     *
     * @param font  the font (<code>null</code> not permitted).
     *
     * @see #getRegularFont()
     */
    public void setRegularFont(Font font) {
        if (font == null) {
            throw new IllegalArgumentException("Null 'font' argument.");
        }
        this.regularFont = font;
    }

    /**
     * Returns the small font.
     *
     * @return The small font (never <code>null</code>).
     *
     * @see #setSmallFont(Font)
     *
     * @since 1.0.13
     */
    public Font getSmallFont() {
        return this.smallFont;
    }

    /**
     * Sets the small font for this theme.
     *
     * @param font  the font (<code>null</code> not permitted).
     *
     * @see #getSmallFont()
     *
     * @since 1.0.13
     */
    public void setSmallFont(Font font) {
        if (font == null) {
            throw new IllegalArgumentException("Null 'font' argument.");
        }
        this.smallFont = font;
    }

    /**
     * Returns the title paint.
     *
     * @return The title paint (never <code>null</code>).
     *
     * @see #setTitlePaint(Paint)
     */
    public Paint getTitlePaint() {
        return this.titlePaint;
    }

    /**
     * Sets the title paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getTitlePaint()
     */
    public void setTitlePaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.titlePaint = paint;
    }

    /**
     * Returns the subtitle paint.
     *
     * @return The subtitle paint (never <code>null</code>).
     *
     * @see #setSubtitlePaint(Paint)
     */
    public Paint getSubtitlePaint() {
        return this.subtitlePaint;
    }

    /**
     * Sets the subtitle paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getSubtitlePaint()
     */
    public void setSubtitlePaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.subtitlePaint = paint;
    }

    /**
     * Returns the chart background paint.
     *
     * @return The chart background paint (never <code>null</code>).
     *
     * @see #setChartBackgroundPaint(Paint)
     */
    public Paint getChartBackgroundPaint() {
        return this.chartBackgroundPaint;
    }

    /**
     * Sets the chart background paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getChartBackgroundPaint()
     */
    public void setChartBackgroundPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.chartBackgroundPaint = paint;
    }

    /**
     * Returns the legend background paint.
     *
     * @return The legend background paint (never <code>null</code>).
     *
     * @see #setLegendBackgroundPaint(Paint)
     */
    public Paint getLegendBackgroundPaint() {
        return this.legendBackgroundPaint;
    }

    /**
     * Sets the legend background paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getLegendBackgroundPaint()
     */
    public void setLegendBackgroundPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.legendBackgroundPaint = paint;
    }

    /**
     * Returns the legend item paint.
     *
     * @return The legend item paint (never <code>null</code>).
     *
     * @see #setLegendItemPaint(Paint)
     */
    public Paint getLegendItemPaint() {
        return this.legendItemPaint;
    }

    /**
     * Sets the legend item paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getLegendItemPaint()
     */
    public void setLegendItemPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.legendItemPaint = paint;
    }

    /**
     * Returns the plot background paint.
     *
     * @return The plot background paint (never <code>null</code>).
     *
     * @see #setPlotBackgroundPaint(Paint)
     */
    public Paint getPlotBackgroundPaint() {
        return this.plotBackgroundPaint;
    }

    /**
     * Sets the plot background paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getPlotBackgroundPaint()
     */
    public void setPlotBackgroundPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.plotBackgroundPaint = paint;
    }

    /**
     * Returns the plot outline paint.
     *
     * @return The plot outline paint (never <code>null</code>).
     *
     * @see #setPlotOutlinePaint(Paint)
     */
    public Paint getPlotOutlinePaint() {
        return this.plotOutlinePaint;
    }

    /**
     * Sets the plot outline paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getPlotOutlinePaint()
     */
    public void setPlotOutlinePaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.plotOutlinePaint = paint;
    }

    /**
     * Returns the label link style for pie charts.
     *
     * @return The label link style (never <code>null</code>).
     *
     * @see #setLabelLinkStyle(PieLabelLinkStyle)
     */
    public PieLabelLinkStyle getLabelLinkStyle() {
        return this.labelLinkStyle;
    }

    /**
     * Sets the label link style for pie charts.
     *
     * @param style  the style (<code>null</code> not permitted).
     *
     * @see #getLabelLinkStyle()
     */
    public void setLabelLinkStyle(PieLabelLinkStyle style) {
        if (style == null) {
            throw new IllegalArgumentException("Null 'style' argument.");
        }
        this.labelLinkStyle = style;
    }

    /**
     * Returns the label link paint for pie charts.
     *
     * @return The label link paint (never <code>null</code>).
     *
     * @see #setLabelLinkPaint(Paint)
     */
    public Paint getLabelLinkPaint() {
        return this.labelLinkPaint;
    }

    /**
     * Sets the label link paint for pie charts.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getLabelLinkPaint()
     */
    public void setLabelLinkPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.labelLinkPaint = paint;
    }

    /**
     * Returns the domain grid line paint.
     *
     * @return The domain grid line paint (never <code>null<code>).
     *
     * @see #setDomainGridlinePaint(Paint)
     */
    public Paint getDomainGridlinePaint() {
        return this.domainGridlinePaint;
    }

    /**
     * Sets the domain grid line paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getDomainGridlinePaint()
     */
    public void setDomainGridlinePaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.domainGridlinePaint = paint;
    }

    /**
     * Returns the range grid line paint.
     *
     * @return The range grid line paint (never <code>null</code>).
     *
     * @see #setRangeGridlinePaint(Paint)
     */
    public Paint getRangeGridlinePaint() {
        return this.rangeGridlinePaint;
    }

    /**
     * Sets the range grid line paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getRangeGridlinePaint()
     */
    public void setRangeGridlinePaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.rangeGridlinePaint = paint;
    }

    /**
     * Returns the baseline paint.
     *
     * @return The baseline paint.
     *
     * @since 1.0.13
     */
    public Paint getBaselinePaint() {
        return this.baselinePaint;
    }

    /**
     * Sets the baseline paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @since 1.0.13
     */
    public void setBaselinePaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.baselinePaint = paint;
    }

    /**
     * Returns the crosshair paint.
     *
     * @return The crosshair paint.
     */
    public Paint getCrosshairPaint() {
        return this.crosshairPaint;
    }

    /**
     * Sets the crosshair paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     */
    public void setCrosshairPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.crosshairPaint = paint;
    }

    /**
     * Returns the axis offsets.
     *
     * @return The axis offsets (never <code>null</code>).
     *
     * @see #setAxisOffset(RectangleInsets)
     */
    public RectangleInsets getAxisOffset() {
        return this.axisOffset;
    }

    /**
     * Sets the axis offset.
     *
     * @param offset  the offset (<code>null</code> not permitted).
     *
     * @see #getAxisOffset()
     */
    public void setAxisOffset(RectangleInsets offset) {
        if (offset == null) {
            throw new IllegalArgumentException("Null 'offset' argument.");
        }
        this.axisOffset = offset;
    }

    /**
     * Returns the axis label paint.
     *
     * @return The axis label paint (never <code>null</code>).
     *
     * @see #setAxisLabelPaint(Paint)
     */
    public Paint getAxisLabelPaint() {
        return this.axisLabelPaint;
    }

    /**
     * Sets the axis label paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getAxisLabelPaint()
     */
    public void setAxisLabelPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.axisLabelPaint = paint;
    }

    /**
     * Returns the tick label paint.
     *
     * @return The tick label paint (never <code>null</code>).
     *
     * @see #setTickLabelPaint(Paint)
     */
    public Paint getTickLabelPaint() {
        return this.tickLabelPaint;
    }

    /**
     * Sets the tick label paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getTickLabelPaint()
     */
    public void setTickLabelPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.tickLabelPaint = paint;
    }

    /**
     * Returns the item label paint.
     *
     * @return The item label paint (never <code>null</code>).
     *
     * @see #setItemLabelPaint(Paint)
     */
    public Paint getItemLabelPaint() {
        return this.itemLabelPaint;
    }

    /**
     * Sets the item label paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getItemLabelPaint()
     */
    public void setItemLabelPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.itemLabelPaint = paint;
    }

    /**
     * Returns the shadow visibility flag.
     *
     * @return The shadow visibility flag.
     *
     * @see #setShadowVisible(boolean)
     */
    public boolean isShadowVisible() {
        return this.shadowVisible;
    }

    /**
     * Sets the shadow visibility flag.
     *
     * @param visible  the flag.
     *
     * @see #isShadowVisible()
     */
    public void setShadowVisible(boolean visible) {
        this.shadowVisible = visible;
    }

    /**
     * Returns the shadow paint.
     *
     * @return The shadow paint (never <code>null</code>).
     *
     * @see #setShadowPaint(Paint)
     */
    public Paint getShadowPaint() {
        return this.shadowPaint;
    }

    /**
     * Sets the shadow paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getShadowPaint()
     */
    public void setShadowPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.shadowPaint = paint;
    }

    /**
     * Returns the bar painter.
     *
     * @return The bar painter (never <code>null</code>).
     *
     * @see #setBarPainter(BarPainter)
     */
    public BarPainter getBarPainter() {
        return this.barPainter;
    }

    /**
     * Sets the bar painter.
     *
     * @param painter  the painter (<code>null</code> not permitted).
     *
     * @see #getBarPainter()
     */
    public void setBarPainter(BarPainter painter) {
        if (painter == null) {
            throw new IllegalArgumentException("Null 'painter' argument.");
        }
        this.barPainter = painter;
    }

    /**
     * Returns the XY bar painter.
     *
     * @return The XY bar painter (never <code>null</code>).
     *
     * @see #setXYBarPainter(XYBarPainter)
     */
    public XYBarPainter getXYBarPainter() {
        return this.xyBarPainter;
    }

    /**
     * Sets the XY bar painter.
     *
     * @param painter  the painter (<code>null</code> not permitted).
     *
     * @see #getXYBarPainter()
     */
    public void setXYBarPainter(XYBarPainter painter) {
        if (painter == null) {
            throw new IllegalArgumentException("Null 'painter' argument.");
        }
        this.xyBarPainter = painter;
    }

    /**
     * Returns the thermometer paint.
     *
     * @return The thermometer paint (never <code>null</code>).
     *
     * @see #setThermometerPaint(Paint)
     */
    public Paint getThermometerPaint() {
        return this.thermometerPaint;
    }

    /**
     * Sets the thermometer paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getThermometerPaint()
     */
    public void setThermometerPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.thermometerPaint = paint;
    }

    /**
     * Returns the wall paint for charts with a 3D effect.
     *
     * @return The wall paint (never <code>null</code>).
     *
     * @see #setWallPaint(Paint)
     */
    public Paint getWallPaint() {
        return this.wallPaint;
    }

    /**
     * Sets the wall paint for charts with a 3D effect.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getWallPaint()
     */
    public void setWallPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.wallPaint = paint;
    }

    /**
     * Returns the error indicator paint.
     *
     * @return The error indicator paint (never <code>null</code>).
     *
     * @see #setErrorIndicatorPaint(Paint)
     */
    public Paint getErrorIndicatorPaint() {
        return this.errorIndicatorPaint;
    }

    /**
     * Sets the error indicator paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getErrorIndicatorPaint()
     */
    public void setErrorIndicatorPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.errorIndicatorPaint = paint;
    }

    /**
     * Returns the grid band paint.
     *
     * @return The grid band paint (never <code>null</code>).
     *
     * @see #setGridBandPaint(Paint)
     */
    public Paint getGridBandPaint() {
        return this.gridBandPaint;
    }

    /**
     * Sets the grid band paint.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getGridBandPaint()
     */
    public void setGridBandPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.gridBandPaint = paint;
    }

    /**
     * Returns the grid band alternate paint (used for a {@link SymbolAxis}).
     *
     * @return The paint (never <code>null</code>).
     *
     * @see #setGridBandAlternatePaint(Paint)
     */
    public Paint getGridBandAlternatePaint() {
        return this.gridBandAlternatePaint;
    }

    /**
     * Sets the grid band alternate paint (used for a {@link SymbolAxis}).
     *
     * @param paint  the paint (<code>null</code> not permitted).
     *
     * @see #getGridBandAlternatePaint()
     */
    public void setGridBandAlternatePaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.gridBandAlternatePaint = paint;
    }

    /**
     * Returns the name of this theme.
     *
     * @return The name of this theme.
     */
    public String getName() {
        return this.name;
    }

    /**
     * Returns a clone of the drawing supplier for this theme.
     *
     * @return A clone of the drawing supplier.
     */
    public DrawingSupplier getDrawingSupplier() {
        DrawingSupplier result = null;
        int PROBE_START_LINE_1102 = 1110;
		org.jfree.chart.plot.DrawingSupplier f_drawing_supplier_437_line_1102 = this.drawingSupplier;
		boolean standard_chart_theme_1_expr100_line_1102 = f_drawing_supplier_437_line_1102 instanceof PublicCloneable;
		int PROBE_END_LINE_1102 = 1110;
		if (standard_chart_theme_1_expr100_line_1102) {
            int PROBE_START_LINE_1103 = 1103;
			org.jfree.chart.plot.DrawingSupplier f_drawing_supplier_437_line_1103 = this.drawingSupplier;
			int PROBE_END_LINE_1103 = 1103;
			PublicCloneable pc = (PublicCloneable) f_drawing_supplier_437_line_1103;
              try {
                int PROBE_START_LINE_1105 = 1105;
				org.jfree.chart.util.PublicCloneable v_pc_488_line_1105 = pc;
				Object standard_chart_theme_1_expr108_line_1105 = v_pc_488_line_1105.clone();
				int PROBE_END_LINE_1105 = 1105;
				result = (DrawingSupplier) standard_chart_theme_1_expr108_line_1105;
            }
            catch (CloneNotSupportedException e) {
                e.printStackTrace();
            }
        }
        int PROBE_START_LINE_1111 = 1111;
		org.jfree.chart.plot.DrawingSupplier v_result_487_line_1111 = result;
		int PROBE_END_LINE_1111 = 1111;
		return v_result_487_line_1111;
    }

    /**
     * Sets the drawing supplier for this theme.
     *
     * @param supplier  the supplier (<code>null</code> not permitted).
     *
     * @see #getDrawingSupplier()
     */
    public void setDrawingSupplier(DrawingSupplier supplier) {
        if (supplier == null) {
            throw new IllegalArgumentException("Null 'supplier' argument.");
        }
        this.drawingSupplier = supplier;
    }

    /**
     * Applies this theme to the supplied chart.
     *
     * @param chart  the chart (<code>null</code> not permitted).
     */
    public void apply(JFreeChart chart) {
        int PROBE_START_LINE_1134 = 1136;
		org.jfree.chart.JFreeChart p_chart_490_line_1134 = chart;
		boolean standard_chart_theme_1_expr109_line_1134 = p_chart_490_line_1134 == null;
		int PROBE_END_LINE_1134 = 1136;
		if (standard_chart_theme_1_expr109_line_1134) {
            throw new IllegalArgumentException("Null 'chart' argument.");
        }
        int PROBE_START_LINE_1137 = 1137;
		org.jfree.chart.JFreeChart p_chart_490_line_1137 = chart;
		TextTitle standard_chart_theme_1_expr110_line_1137 = p_chart_490_line_1137.getTitle();
		int PROBE_END_LINE_1137 = 1137;
		TextTitle title = standard_chart_theme_1_expr110_line_1137;
        int PROBE_START_LINE_1138 = 1141;
		org.jfree.chart.title.TextTitle v_title_491_line_1138 = title;
		boolean standard_chart_theme_1_expr111_line_1138 = v_title_491_line_1138 != null;
		int PROBE_END_LINE_1138 = 1141;
		if (standard_chart_theme_1_expr111_line_1138) {
            int PROBE_START_LINE_1139 = 1139;
			org.jfree.chart.title.TextTitle v_title_491_line_1139 = title;
			java.awt.Font f_extra_large_font_428_line_1139 = this.extraLargeFont;
			int PROBE_END_LINE_1139 = 1139;
			v_title_491_line_1139.setFont(f_extra_large_font_428_line_1139);
            int PROBE_START_LINE_1140 = 1140;
			org.jfree.chart.title.TextTitle v_title_491_line_1140 = title;
			java.awt.Paint f_title_paint_432_line_1140 = this.titlePaint;
			int PROBE_END_LINE_1140 = 1140;
			v_title_491_line_1140.setPaint(f_title_paint_432_line_1140);
        }

        int PROBE_START_LINE_1143 = 1143;
		org.jfree.chart.JFreeChart p_chart_490_line_1143 = chart;
		int standard_chart_theme_1_expr118_line_1143 = p_chart_490_line_1143.getSubtitleCount();
		int PROBE_END_LINE_1143 = 1143;
		int subtitleCount = standard_chart_theme_1_expr118_line_1143;
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1145 = 1145;
			int v_i_493_line_1144 = i;
			int v_subtitle_count_492_line_1144 = subtitleCount;
			boolean standard_chart_theme_1_expr120_line_1144 = v_i_493_line_1144 < v_subtitle_count_492_line_1144;
			if (!(standard_chart_theme_1_expr120_line_1144)) {
				break;
			}
			org.jfree.chart.JFreeChart p_chart_490_line_1145 = chart;
			int v_i_493_line_1145 = i;
			org.jfree.chart.title.Title standard_chart_theme_1_expr123_line_1145 = p_chart_490_line_1145
					.getSubtitle(v_i_493_line_1145);
			int PROBE_END_LINE_1145 = 1145;
			applyToTitle(standard_chart_theme_1_expr123_line_1145);
        }

        int PROBE_START_LINE_1148 = 1148;
		org.jfree.chart.JFreeChart p_chart_490_line_1148 = chart;
		java.awt.Paint f_chart_background_paint_436_line_1148 = this.chartBackgroundPaint;
		int PROBE_END_LINE_1148 = 1148;
		p_chart_490_line_1148.setBackgroundPaint(f_chart_background_paint_436_line_1148);

        int PROBE_START_LINE_1151 = 1151;
		org.jfree.chart.JFreeChart p_chart_490_line_1151 = chart;
		Plot standard_chart_theme_1_expr127_line_1151 = p_chart_490_line_1151.getPlot();
		int PROBE_END_LINE_1151 = 1151;
		// now process the plot if there is one
        Plot plot = standard_chart_theme_1_expr127_line_1151;
        int PROBE_START_LINE_1152 = 1154;
		org.jfree.chart.plot.Plot v_plot_494_line_1152 = plot;
		boolean standard_chart_theme_1_expr128_line_1152 = v_plot_494_line_1152 != null;
		int PROBE_END_LINE_1152 = 1154;
		if (standard_chart_theme_1_expr128_line_1152) {
            int PROBE_START_LINE_1153 = 1153;
			org.jfree.chart.plot.Plot v_plot_494_line_1153 = plot;
			int PROBE_END_LINE_1153 = 1153;
			applyToPlot(v_plot_494_line_1153);
        }
    }

    /**
     * Applies the attributes of this theme to the specified title.
     *
     * @param title  the title.
     */
    protected void applyToTitle(Title title) {
        int PROBE_START_LINE_1163 = 1198;
		org.jfree.chart.title.Title p_title_495_line_1163 = title;
		boolean standard_chart_theme_1_expr130_line_1163 = p_title_495_line_1163 instanceof TextTitle;
		int PROBE_END_LINE_1163 = 1198;
		if (standard_chart_theme_1_expr130_line_1163) {
            TextTitle tt = (TextTitle) title;
            tt.setFont(this.largeFont);
            tt.setPaint(this.subtitlePaint);
        } else {
			int PROBE_START_LINE_1168 = 1198;
			org.jfree.chart.title.Title p_title_495_line_1168 = title;
			boolean standard_chart_theme_1_expr131_line_1168 = p_title_495_line_1168 instanceof LegendTitle;
			int PROBE_END_LINE_1168 = 1198;
			if (standard_chart_theme_1_expr131_line_1168) {
				int PROBE_START_LINE_1169 = 1169;
				org.jfree.chart.title.Title p_title_495_line_1169 = title;
				int PROBE_END_LINE_1169 = 1169;
				LegendTitle lt = (LegendTitle) p_title_495_line_1169;
				int PROBE_START_LINE_1170 = 1172;
				org.jfree.chart.title.LegendTitle v_lt_496_line_1170 = lt;
				java.awt.Paint standard_chart_theme_1_expr134_line_1170 = v_lt_496_line_1170.getBackgroundPaint();
				boolean standard_chart_theme_1_expr133_line_1170 = standard_chart_theme_1_expr134_line_1170 != null;
				int PROBE_END_LINE_1170 = 1172;
				if (standard_chart_theme_1_expr133_line_1170) {
					int PROBE_START_LINE_1171 = 1171;
					org.jfree.chart.title.LegendTitle v_lt_496_line_1171 = lt;
					java.awt.Paint f_legend_background_paint_434_line_1171 = this.legendBackgroundPaint;
					int PROBE_END_LINE_1171 = 1171;
					v_lt_496_line_1171.setBackgroundPaint(f_legend_background_paint_434_line_1171);
				}
				int PROBE_START_LINE_1173 = 1173;
				org.jfree.chart.title.LegendTitle v_lt_496_line_1173 = lt;
				java.awt.Font f_regular_font_430_line_1173 = this.regularFont;
				int PROBE_END_LINE_1173 = 1173;
				v_lt_496_line_1173.setItemFont(f_regular_font_430_line_1173);
				int PROBE_START_LINE_1174 = 1174;
				org.jfree.chart.title.LegendTitle v_lt_496_line_1174 = lt;
				java.awt.Paint f_legend_item_paint_435_line_1174 = this.legendItemPaint;
				int PROBE_END_LINE_1174 = 1174;
				v_lt_496_line_1174.setItemPaint(f_legend_item_paint_435_line_1174);
				int PROBE_START_LINE_1175 = 1177;
				org.jfree.chart.title.LegendTitle v_lt_496_line_1175 = lt;
				org.jfree.chart.block.BlockContainer standard_chart_theme_1_expr145_line_1175 = v_lt_496_line_1175
						.getWrapper();
				boolean standard_chart_theme_1_expr144_line_1175 = standard_chart_theme_1_expr145_line_1175 != null;
				int PROBE_END_LINE_1175 = 1177;
				if (standard_chart_theme_1_expr144_line_1175) {
					applyToBlockContainer(lt.getWrapper());
				}
			} else if (title instanceof PaintScaleLegend) {
				PaintScaleLegend psl = (PaintScaleLegend) title;
				psl.setBackgroundPaint(this.legendBackgroundPaint);
				ValueAxis axis = psl.getAxis();
				if (axis != null) {
					applyToValueAxis(axis);
				}
			} else if (title instanceof CompositeTitle) {
				CompositeTitle ct = (CompositeTitle) title;
				BlockContainer bc = ct.getContainer();
				List blocks = bc.getBlocks();
				Iterator iterator = blocks.iterator();
				while (iterator.hasNext()) {
					Block b = (Block) iterator.next();
					if (b instanceof Title) {
						applyToTitle((Title) b);
					}
				}
			}
		}
    }

    /**
     * Applies the attributes of this theme to the specified container.
     *
     * @param bc  a block container (<code>null</code> not permitted).
     */
    protected void applyToBlockContainer(BlockContainer bc) {
        Iterator iterator = bc.getBlocks().iterator();
        while (iterator.hasNext()) {
            Block b = (Block) iterator.next();
            applyToBlock(b);
        }
    }

    /**
     * Applies the attributes of this theme to the specified block.
     *
     * @param b  the block.
     */
    protected void applyToBlock(Block b) {
        if (b instanceof Title) {
            applyToTitle((Title) b);
        }
        else if (b instanceof LabelBlock) {
            LabelBlock lb = (LabelBlock) b;
            lb.setFont(this.regularFont);
            lb.setPaint(this.legendItemPaint);
        }
    }

    /**
     * Applies the attributes of this theme to a plot.
     *
     * @param plot  the plot (<code>null</code>).
     */
    protected void applyToPlot(Plot plot) {
        int PROBE_START_LINE_1236 = 1238;
		org.jfree.chart.plot.Plot p_plot_499_line_1236 = plot;
		boolean standard_chart_theme_1_expr146_line_1236 = p_plot_499_line_1236 == null;
		int PROBE_END_LINE_1236 = 1238;
		if (standard_chart_theme_1_expr146_line_1236) {
            throw new IllegalArgumentException("Null 'plot' argument.");
        }
        int PROBE_START_LINE_1239 = 1241;
		org.jfree.chart.plot.Plot p_plot_499_line_1239 = plot;
		org.jfree.chart.plot.DrawingSupplier standard_chart_theme_1_expr148_line_1239 = p_plot_499_line_1239
				.getDrawingSupplier();
		boolean standard_chart_theme_1_expr147_line_1239 = standard_chart_theme_1_expr148_line_1239 != null;
		int PROBE_END_LINE_1239 = 1241;
		if (standard_chart_theme_1_expr147_line_1239) {
            int PROBE_START_LINE_1240 = 1240;
			org.jfree.chart.plot.Plot p_plot_499_line_1240 = plot;
			org.jfree.chart.plot.DrawingSupplier standard_chart_theme_1_expr150_line_1240 = getDrawingSupplier();
			int PROBE_END_LINE_1240 = 1240;
			p_plot_499_line_1240.setDrawingSupplier(standard_chart_theme_1_expr150_line_1240);
        }
        int PROBE_START_LINE_1242 = 1244;
		org.jfree.chart.plot.Plot p_plot_499_line_1242 = plot;
		java.awt.Paint standard_chart_theme_1_expr152_line_1242 = p_plot_499_line_1242.getBackgroundPaint();
		boolean standard_chart_theme_1_expr151_line_1242 = standard_chart_theme_1_expr152_line_1242 != null;
		int PROBE_END_LINE_1242 = 1244;
		if (standard_chart_theme_1_expr151_line_1242) {
            int PROBE_START_LINE_1243 = 1243;
			org.jfree.chart.plot.Plot p_plot_499_line_1243 = plot;
			java.awt.Paint f_plot_background_paint_438_line_1243 = this.plotBackgroundPaint;
			int PROBE_END_LINE_1243 = 1243;
			p_plot_499_line_1243.setBackgroundPaint(f_plot_background_paint_438_line_1243);
        }
        int PROBE_START_LINE_1245 = 1245;
		org.jfree.chart.plot.Plot p_plot_499_line_1245 = plot;
		java.awt.Paint f_plot_outline_paint_439_line_1245 = this.plotOutlinePaint;
		int PROBE_END_LINE_1245 = 1245;
		p_plot_499_line_1245.setOutlinePaint(f_plot_outline_paint_439_line_1245);

        int PROBE_START_LINE_1251 = 1277;
		org.jfree.chart.plot.Plot p_plot_499_line_1251 = plot;
		boolean standard_chart_theme_1_expr159_line_1251 = p_plot_499_line_1251 instanceof PiePlot;
		int PROBE_END_LINE_1251 = 1277;
		// now handle specific plot types (and yes, I know this is some
        // really ugly code that has to be manually updated any time a new
        // plot type is added - I should have written something much cooler,
        // but I didn't and neither did anyone else).
        if (standard_chart_theme_1_expr159_line_1251) {
            int PROBE_START_LINE_1252 = 1252;
			org.jfree.chart.plot.Plot p_plot_499_line_1252 = plot;
			int PROBE_END_LINE_1252 = 1252;
			applyToPiePlot((PiePlot) p_plot_499_line_1252);
        } else {
			int PROBE_START_LINE_1254 = 1277;
			org.jfree.chart.plot.Plot p_plot_499_line_1254 = plot;
			boolean standard_chart_theme_1_expr162_line_1254 = p_plot_499_line_1254 instanceof MultiplePiePlot;
			int PROBE_END_LINE_1254 = 1277;
			if (standard_chart_theme_1_expr162_line_1254) {
				applyToMultiplePiePlot((MultiplePiePlot) plot);
			} else {
				int PROBE_START_LINE_1257 = 1277;
				org.jfree.chart.plot.Plot p_plot_499_line_1257 = plot;
				boolean standard_chart_theme_1_expr163_line_1257 = p_plot_499_line_1257 instanceof CategoryPlot;
				int PROBE_END_LINE_1257 = 1277;
				if (standard_chart_theme_1_expr163_line_1257) {
					applyToCategoryPlot((CategoryPlot) plot);
				} else {
					int PROBE_START_LINE_1260 = 1277;
					org.jfree.chart.plot.Plot p_plot_499_line_1260 = plot;
					boolean standard_chart_theme_1_expr164_line_1260 = p_plot_499_line_1260 instanceof XYPlot;
					int PROBE_END_LINE_1260 = 1277;
					if (standard_chart_theme_1_expr164_line_1260) {
						int PROBE_START_LINE_1261 = 1261;
						org.jfree.chart.plot.Plot p_plot_499_line_1261 = plot;
						int PROBE_END_LINE_1261 = 1261;
						applyToXYPlot((XYPlot) p_plot_499_line_1261);
					} else if (plot instanceof FastScatterPlot) {
						applyToFastScatterPlot((FastScatterPlot) plot);
					} else if (plot instanceof MeterPlot) {
						applyToMeterPlot((MeterPlot) plot);
					} else if (plot instanceof ThermometerPlot) {
						applyToThermometerPlot((ThermometerPlot) plot);
					} else if (plot instanceof SpiderWebPlot) {
						applyToSpiderWebPlot((SpiderWebPlot) plot);
					} else if (plot instanceof PolarPlot) {
						applyToPolarPlot((PolarPlot) plot);
					}
				}
			}
		}
    }

    /**
     * Applies the attributes of this theme to a {@link PiePlot} instance.
     * This method also clears any set values for the section paint, outline
     * etc, so that the theme's {@link DrawingSupplier} will be used.
     *
     * @param plot  the plot (<code>null</code> not permitted).
     */
    protected void applyToPiePlot(PiePlot plot) {
        int PROBE_START_LINE_1288 = 1288;
		org.jfree.chart.plot.PiePlot p_plot_500_line_1288 = plot;
		java.awt.Paint f_label_link_paint_440_line_1288 = this.labelLinkPaint;
		int PROBE_END_LINE_1288 = 1288;
		p_plot_500_line_1288.setLabelLinkPaint(f_label_link_paint_440_line_1288);
        int PROBE_START_LINE_1289 = 1289;
		org.jfree.chart.plot.PiePlot p_plot_500_line_1289 = plot;
		org.jfree.chart.plot.PieLabelLinkStyle f_label_link_style_441_line_1289 = this.labelLinkStyle;
		int PROBE_END_LINE_1289 = 1289;
		p_plot_500_line_1289.setLabelLinkStyle(f_label_link_style_441_line_1289);
        int PROBE_START_LINE_1290 = 1290;
		org.jfree.chart.plot.PiePlot p_plot_500_line_1290 = plot;
		java.awt.Font f_regular_font_430_line_1290 = this.regularFont;
		int PROBE_END_LINE_1290 = 1290;
		p_plot_500_line_1290.setLabelFont(f_regular_font_430_line_1290);

        int PROBE_START_LINE_1294 = 1296;
		org.jfree.chart.plot.PiePlot p_plot_500_line_1294 = plot;
		boolean standard_chart_theme_1_expr176_line_1294 = p_plot_500_line_1294.getAutoPopulateSectionPaint();
		int PROBE_END_LINE_1294 = 1296;
		// clear the section attributes so that the theme's DrawingSupplier
        // will be used
        if (standard_chart_theme_1_expr176_line_1294) {
            int PROBE_START_LINE_1295 = 1295;
			org.jfree.chart.plot.PiePlot p_plot_500_line_1295 = plot;
			int PROBE_END_LINE_1295 = 1295;
			p_plot_500_line_1295.clearSectionPaints(false);
        }
        int PROBE_START_LINE_1297 = 1299;
		org.jfree.chart.plot.PiePlot p_plot_500_line_1297 = plot;
		boolean standard_chart_theme_1_expr178_line_1297 = p_plot_500_line_1297.getAutoPopulateSectionOutlinePaint();
		int PROBE_END_LINE_1297 = 1299;
		if (standard_chart_theme_1_expr178_line_1297) {
            plot.clearSectionOutlinePaints(false);
        }
        int PROBE_START_LINE_1300 = 1302;
		org.jfree.chart.plot.PiePlot p_plot_500_line_1300 = plot;
		boolean standard_chart_theme_1_expr179_line_1300 = p_plot_500_line_1300.getAutoPopulateSectionOutlineStroke();
		int PROBE_END_LINE_1300 = 1302;
		if (standard_chart_theme_1_expr179_line_1300) {
            plot.clearSectionOutlineStrokes(false);
        }
    }

    /**
     * Applies the attributes of this theme to a {@link MultiplePiePlot}.
     *
     * @param plot  the plot (<code>null</code> not permitted).
     */
    protected void applyToMultiplePiePlot(MultiplePiePlot plot) {
        apply(plot.getPieChart());
    }

    /**
     * Applies the attributes of this theme to a {@link CategoryPlot}.
     *
     * @param plot  the plot (<code>null</code> not permitted).
     */
    protected void applyToCategoryPlot(CategoryPlot plot) {
        plot.setAxisOffset(this.axisOffset);
        plot.setDomainGridlinePaint(this.domainGridlinePaint);
        plot.setRangeGridlinePaint(this.rangeGridlinePaint);
        plot.setRangeZeroBaselinePaint(this.baselinePaint);

        // process all domain axes
        int domainAxisCount = plot.getDomainAxisCount();
        for (int i = 0; i < domainAxisCount; i++) {
            CategoryAxis axis = plot.getDomainAxis(i);
            if (axis != null) {
                applyToCategoryAxis(axis);
            }
        }

        // process all range axes
        int rangeAxisCount = plot.getRangeAxisCount();
        for (int i = 0; i < rangeAxisCount; i++) {
            ValueAxis axis = (ValueAxis) plot.getRangeAxis(i);
            if (axis != null) {
                applyToValueAxis(axis);
            }
        }

        // process all renderers
        int rendererCount = plot.getRendererCount();
        for (int i = 0; i < rendererCount; i++) {
            CategoryItemRenderer r = plot.getRenderer(i);
            if (r != null) {
                applyToCategoryItemRenderer(r);
            }
        }

        if (plot instanceof CombinedDomainCategoryPlot) {
            CombinedDomainCategoryPlot cp = (CombinedDomainCategoryPlot) plot;
            Iterator iterator = cp.getSubplots().iterator();
            while (iterator.hasNext()) {
                CategoryPlot subplot = (CategoryPlot) iterator.next();
                if (subplot != null) {
                    applyToPlot(subplot);
                }
            }
        }
        if (plot instanceof CombinedRangeCategoryPlot) {
            CombinedRangeCategoryPlot cp = (CombinedRangeCategoryPlot) plot;
            Iterator iterator = cp.getSubplots().iterator();
            while (iterator.hasNext()) {
                CategoryPlot subplot = (CategoryPlot) iterator.next();
                if (subplot != null) {
                    applyToPlot(subplot);
                }
            }
        }
    }

    /**
     * Applies the attributes of this theme to a {@link XYPlot}.
     *
     * @param plot  the plot (<code>null</code> not permitted).
     */
    protected void applyToXYPlot(XYPlot plot) {
        int PROBE_START_LINE_1380 = 1380;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1380 = plot;
		org.jfree.chart.util.RectangleInsets f_axis_offset_442_line_1380 = this.axisOffset;
		int PROBE_END_LINE_1380 = 1380;
		p_plot_503_line_1380.setAxisOffset(f_axis_offset_442_line_1380);
        int PROBE_START_LINE_1381 = 1381;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1381 = plot;
		java.awt.Paint f_baseline_paint_445_line_1381 = this.baselinePaint;
		int PROBE_END_LINE_1381 = 1381;
		p_plot_503_line_1381.setDomainZeroBaselinePaint(f_baseline_paint_445_line_1381);
        int PROBE_START_LINE_1382 = 1382;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1382 = plot;
		java.awt.Paint f_baseline_paint_445_line_1382 = this.baselinePaint;
		int PROBE_END_LINE_1382 = 1382;
		p_plot_503_line_1382.setRangeZeroBaselinePaint(f_baseline_paint_445_line_1382);
        int PROBE_START_LINE_1383 = 1383;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1383 = plot;
		java.awt.Paint f_domain_gridline_paint_443_line_1383 = this.domainGridlinePaint;
		int PROBE_END_LINE_1383 = 1383;
		p_plot_503_line_1383.setDomainGridlinePaint(f_domain_gridline_paint_443_line_1383);
        int PROBE_START_LINE_1384 = 1384;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1384 = plot;
		java.awt.Paint f_range_gridline_paint_444_line_1384 = this.rangeGridlinePaint;
		int PROBE_END_LINE_1384 = 1384;
		p_plot_503_line_1384.setRangeGridlinePaint(f_range_gridline_paint_444_line_1384);
        int PROBE_START_LINE_1385 = 1385;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1385 = plot;
		java.awt.Paint f_crosshair_paint_446_line_1385 = this.crosshairPaint;
		int PROBE_END_LINE_1385 = 1385;
		p_plot_503_line_1385.setDomainCrosshairPaint(f_crosshair_paint_446_line_1385);
        int PROBE_START_LINE_1386 = 1386;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1386 = plot;
		java.awt.Paint f_crosshair_paint_446_line_1386 = this.crosshairPaint;
		int PROBE_END_LINE_1386 = 1386;
		p_plot_503_line_1386.setRangeCrosshairPaint(f_crosshair_paint_446_line_1386);
        int PROBE_START_LINE_1388 = 1388;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1388 = plot;
		int standard_chart_theme_1_expr201_line_1388 = p_plot_503_line_1388.getDomainAxisCount();
		int PROBE_END_LINE_1388 = 1388;
		// process all domain axes
        int domainAxisCount = standard_chart_theme_1_expr201_line_1388;
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1390 = 1390;
			int v_i_505_line_1389 = i;
			int v_domain_axis_count_504_line_1389 = domainAxisCount;
			boolean standard_chart_theme_1_expr203_line_1389 = v_i_505_line_1389 < v_domain_axis_count_504_line_1389;
			if (!(standard_chart_theme_1_expr203_line_1389)) {
				break;
			}
			org.jfree.chart.plot.XYPlot p_plot_503_line_1390 = plot;
			int v_i_505_line_1390 = i;
			ValueAxis standard_chart_theme_1_expr205_line_1390 = p_plot_503_line_1390.getDomainAxis(v_i_505_line_1390);
			int PROBE_END_LINE_1390 = 1390;
			ValueAxis axis = standard_chart_theme_1_expr205_line_1390;
            int PROBE_START_LINE_1391 = 1393;
			org.jfree.chart.axis.ValueAxis v_axis_506_line_1391 = axis;
			boolean standard_chart_theme_1_expr206_line_1391 = v_axis_506_line_1391 != null;
			int PROBE_END_LINE_1391 = 1393;
			if (standard_chart_theme_1_expr206_line_1391) {
                int PROBE_START_LINE_1392 = 1392;
				org.jfree.chart.axis.ValueAxis v_axis_506_line_1392 = axis;
				int PROBE_END_LINE_1392 = 1392;
				applyToValueAxis(v_axis_506_line_1392);
            }
        }

        int PROBE_START_LINE_1397 = 1397;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1397 = plot;
		int standard_chart_theme_1_expr208_line_1397 = p_plot_503_line_1397.getRangeAxisCount();
		int PROBE_END_LINE_1397 = 1397;
		// process all range axes
        int rangeAxisCount = standard_chart_theme_1_expr208_line_1397;
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1399 = 1399;
			int v_i_508_line_1398 = i;
			int v_range_axis_count_507_line_1398 = rangeAxisCount;
			boolean standard_chart_theme_1_expr210_line_1398 = v_i_508_line_1398 < v_range_axis_count_507_line_1398;
			if (!(standard_chart_theme_1_expr210_line_1398)) {
				break;
			}
			org.jfree.chart.plot.XYPlot p_plot_503_line_1399 = plot;
			int v_i_508_line_1399 = i;
			org.jfree.chart.axis.ValueAxis standard_chart_theme_1_expr213_line_1399 = p_plot_503_line_1399
					.getRangeAxis(v_i_508_line_1399);
			int PROBE_END_LINE_1399 = 1399;
			ValueAxis axis = (ValueAxis) standard_chart_theme_1_expr213_line_1399;
            int PROBE_START_LINE_1400 = 1402;
			org.jfree.chart.axis.ValueAxis v_axis_509_line_1400 = axis;
			boolean standard_chart_theme_1_expr214_line_1400 = v_axis_509_line_1400 != null;
			int PROBE_END_LINE_1400 = 1402;
			if (standard_chart_theme_1_expr214_line_1400) {
                int PROBE_START_LINE_1401 = 1401;
				org.jfree.chart.axis.ValueAxis v_axis_509_line_1401 = axis;
				int PROBE_END_LINE_1401 = 1401;
				applyToValueAxis(v_axis_509_line_1401);
            }
        }

        int PROBE_START_LINE_1406 = 1406;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1406 = plot;
		int standard_chart_theme_1_expr216_line_1406 = p_plot_503_line_1406.getRendererCount();
		int PROBE_END_LINE_1406 = 1406;
		// process all renderers
        int rendererCount = standard_chart_theme_1_expr216_line_1406;
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1408 = 1408;
			int v_i_511_line_1407 = i;
			int v_renderer_count_510_line_1407 = rendererCount;
			boolean standard_chart_theme_1_expr218_line_1407 = v_i_511_line_1407 < v_renderer_count_510_line_1407;
			if (!(standard_chart_theme_1_expr218_line_1407)) {
				break;
			}
			org.jfree.chart.plot.XYPlot p_plot_503_line_1408 = plot;
			int v_i_511_line_1408 = i;
			XYItemRenderer standard_chart_theme_1_expr220_line_1408 = p_plot_503_line_1408
					.getRenderer(v_i_511_line_1408);
			int PROBE_END_LINE_1408 = 1408;
			XYItemRenderer r = standard_chart_theme_1_expr220_line_1408;
            int PROBE_START_LINE_1409 = 1411;
			org.jfree.chart.renderer.xy.XYItemRenderer v_r_512_line_1409 = r;
			boolean standard_chart_theme_1_expr221_line_1409 = v_r_512_line_1409 != null;
			int PROBE_END_LINE_1409 = 1411;
			if (standard_chart_theme_1_expr221_line_1409) {
                int PROBE_START_LINE_1410 = 1410;
				org.jfree.chart.renderer.xy.XYItemRenderer v_r_512_line_1410 = r;
				int PROBE_END_LINE_1410 = 1410;
				applyToXYItemRenderer(v_r_512_line_1410);
            }
        }

        int PROBE_START_LINE_1415 = 1415;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1415 = plot;
		java.util.List standard_chart_theme_1_expr224_line_1415 = p_plot_503_line_1415.getAnnotations();
		Iterator standard_chart_theme_1_expr223_line_1415 = standard_chart_theme_1_expr224_line_1415.iterator();
		int PROBE_END_LINE_1415 = 1415;
		// process all annotations
        Iterator iter = standard_chart_theme_1_expr223_line_1415;
        while (true) {
            int PROBE_START_LINE_1416 = 1416;
			java.util.Iterator v_iter_513_line_1416 = iter;
			boolean standard_chart_theme_1_expr225_line_1416 = v_iter_513_line_1416.hasNext();
			if (!(standard_chart_theme_1_expr225_line_1416)) {
				break;
			}
			int PROBE_END_LINE_1416 = 1416;
			XYAnnotation a = (XYAnnotation) iter.next();
            applyToXYAnnotation(a);
        }

        int PROBE_START_LINE_1421 = 1430;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1421 = plot;
		boolean standard_chart_theme_1_expr226_line_1421 = p_plot_503_line_1421 instanceof CombinedDomainXYPlot;
		int PROBE_END_LINE_1421 = 1430;
		if (standard_chart_theme_1_expr226_line_1421) {
            CombinedDomainXYPlot cp = (CombinedDomainXYPlot) plot;
            Iterator iterator = cp.getSubplots().iterator();
            while (iterator.hasNext()) {
                XYPlot subplot = (XYPlot) iterator.next();
                if (subplot != null) {
                    applyToPlot(subplot);
                }
            }
        }
        int PROBE_START_LINE_1431 = 1440;
		org.jfree.chart.plot.XYPlot p_plot_503_line_1431 = plot;
		boolean standard_chart_theme_1_expr227_line_1431 = p_plot_503_line_1431 instanceof CombinedRangeXYPlot;
		int PROBE_END_LINE_1431 = 1440;
		if (standard_chart_theme_1_expr227_line_1431) {
            CombinedRangeXYPlot cp = (CombinedRangeXYPlot) plot;
            Iterator iterator = cp.getSubplots().iterator();
            while (iterator.hasNext()) {
                XYPlot subplot = (XYPlot) iterator.next();
                if (subplot != null) {
                    applyToPlot(subplot);
                }
            }
        }
    }

    /**
     * Applies the attributes of this theme to a {@link FastScatterPlot}.
     * @param plot
     */
    protected void applyToFastScatterPlot(FastScatterPlot plot) {
        plot.setDomainGridlinePaint(this.domainGridlinePaint);
        plot.setRangeGridlinePaint(this.rangeGridlinePaint);
        ValueAxis xAxis = plot.getDomainAxis();
        if (xAxis != null) {
            applyToValueAxis(xAxis);
        }
        ValueAxis yAxis = plot.getRangeAxis();
        if (yAxis != null) {
            applyToValueAxis(yAxis);
        }

    }

    /**
     * Applies the attributes of this theme to a {@link PolarPlot}.  This
     * method is called from the {@link #applyToPlot(Plot)} method.
     *
     * @param plot  the plot (<code>null</code> not permitted).
     */
    protected void applyToPolarPlot(PolarPlot plot) {
        plot.setAngleLabelFont(this.regularFont);
        plot.setAngleLabelPaint(this.tickLabelPaint);
        plot.setAngleGridlinePaint(this.domainGridlinePaint);
        plot.setRadiusGridlinePaint(this.rangeGridlinePaint);
        ValueAxis axis = plot.getAxis();
        if (axis != null) {
            applyToValueAxis(axis);
        }
    }

    /**
     * Applies the attributes of this theme to a {@link SpiderWebPlot}.
     *
     * @param plot  the plot (<code>null</code> not permitted).
     */
    protected void applyToSpiderWebPlot(SpiderWebPlot plot) {
        plot.setLabelFont(this.regularFont);
        plot.setLabelPaint(this.axisLabelPaint);
        plot.setAxisLinePaint(this.axisLabelPaint);
    }

    /**
     * Applies the attributes of this theme to a {@link MeterPlot}.
     *
     * @param plot  the plot (<code>null</code> not permitted).
     */
    protected void applyToMeterPlot(MeterPlot plot) {
        plot.setDialBackgroundPaint(this.plotBackgroundPaint);
        plot.setValueFont(this.largeFont);
        plot.setValuePaint(this.axisLabelPaint);
        plot.setDialOutlinePaint(this.plotOutlinePaint);
        plot.setNeedlePaint(this.thermometerPaint);
        plot.setTickLabelFont(this.regularFont);
        plot.setTickLabelPaint(this.tickLabelPaint);
    }

    /**
     * Applies the attributes for this theme to a {@link ThermometerPlot}.
     * This method is called from the {@link #applyToPlot(Plot)} method.
     *
     * @param plot  the plot.
     */
    protected void applyToThermometerPlot(ThermometerPlot plot) {
        plot.setValueFont(this.largeFont);
        plot.setThermometerPaint(this.thermometerPaint);
        ValueAxis axis = plot.getRangeAxis();
        if (axis != null) {
            applyToValueAxis(axis);
        }
    }

    /**
     * Applies the attributes for this theme to a {@link CategoryAxis}.
     *
     * @param axis  the axis (<code>null</code> not permitted).
     */
    protected void applyToCategoryAxis(CategoryAxis axis) {
        axis.setLabelFont(this.largeFont);
        axis.setLabelPaint(this.axisLabelPaint);
        axis.setTickLabelFont(this.regularFont);
        axis.setTickLabelPaint(this.tickLabelPaint);
        if (axis instanceof SubCategoryAxis) {
            SubCategoryAxis sca = (SubCategoryAxis) axis;
            sca.setSubLabelFont(this.regularFont);
            sca.setSubLabelPaint(this.tickLabelPaint);
        }
    }

    /**
     * Applies the attributes for this theme to a {@link ValueAxis}.
     *
     * @param axis  the axis (<code>null</code> not permitted).
     */
    protected void applyToValueAxis(ValueAxis axis) {
        int PROBE_START_LINE_1542 = 1542;
		org.jfree.chart.axis.ValueAxis p_axis_520_line_1542 = axis;
		java.awt.Font f_large_font_429_line_1542 = this.largeFont;
		int PROBE_END_LINE_1542 = 1542;
		p_axis_520_line_1542.setLabelFont(f_large_font_429_line_1542);
        int PROBE_START_LINE_1543 = 1543;
		org.jfree.chart.axis.ValueAxis p_axis_520_line_1543 = axis;
		java.awt.Paint f_axis_label_paint_447_line_1543 = this.axisLabelPaint;
		int PROBE_END_LINE_1543 = 1543;
		p_axis_520_line_1543.setLabelPaint(f_axis_label_paint_447_line_1543);
        int PROBE_START_LINE_1544 = 1544;
		org.jfree.chart.axis.ValueAxis p_axis_520_line_1544 = axis;
		java.awt.Font f_regular_font_430_line_1544 = this.regularFont;
		int PROBE_END_LINE_1544 = 1544;
		p_axis_520_line_1544.setTickLabelFont(f_regular_font_430_line_1544);
        int PROBE_START_LINE_1545 = 1545;
		org.jfree.chart.axis.ValueAxis p_axis_520_line_1545 = axis;
		java.awt.Paint f_tick_label_paint_448_line_1545 = this.tickLabelPaint;
		int PROBE_END_LINE_1545 = 1545;
		p_axis_520_line_1545.setTickLabelPaint(f_tick_label_paint_448_line_1545);
        int PROBE_START_LINE_1546 = 1548;
		org.jfree.chart.axis.ValueAxis p_axis_520_line_1546 = axis;
		boolean standard_chart_theme_1_expr240_line_1546 = p_axis_520_line_1546 instanceof SymbolAxis;
		int PROBE_END_LINE_1546 = 1548;
		if (standard_chart_theme_1_expr240_line_1546) {
            applyToSymbolAxis((SymbolAxis) axis);
        }
        int PROBE_START_LINE_1549 = 1551;
		org.jfree.chart.axis.ValueAxis p_axis_520_line_1549 = axis;
		boolean standard_chart_theme_1_expr241_line_1549 = p_axis_520_line_1549 instanceof PeriodAxis;
		int PROBE_END_LINE_1549 = 1551;
		if (standard_chart_theme_1_expr241_line_1549) {
            applyToPeriodAxis((PeriodAxis) axis);
        }
    }

    /**
     * Applies the attributes for this theme to a {@link SymbolAxis}.
     *
     * @param axis  the axis (<code>null</code> not permitted).
     */
    protected void applyToSymbolAxis(SymbolAxis axis) {
        axis.setGridBandPaint(this.gridBandPaint);
        axis.setGridBandAlternatePaint(this.gridBandAlternatePaint);
    }

    /**
     * Applies the attributes for this theme to a {@link PeriodAxis}.
     *
     * @param axis  the axis (<code>null</code> not permitted).
     */
    protected void applyToPeriodAxis(PeriodAxis axis) {
        PeriodAxisLabelInfo[] info = axis.getLabelInfo();
        for (int i = 0; i < info.length; i++) {
            PeriodAxisLabelInfo e = info[i];
            PeriodAxisLabelInfo n = new PeriodAxisLabelInfo(e.getPeriodClass(),
                    e.getDateFormat(), e.getPadding(), this.regularFont,
                    this.tickLabelPaint, e.getDrawDividers(),
                    e.getDividerStroke(), e.getDividerPaint());
            info[i] = n;
        }
        axis.setLabelInfo(info);
    }

    /**
     * Applies the attributes for this theme to an {@link AbstractRenderer}.
     *
     * @param renderer  the renderer (<code>null</code> not permitted).
     */
    protected void applyToAbstractRenderer(AbstractRenderer renderer) {
        int PROBE_START_LINE_1588 = 1590;
		org.jfree.chart.renderer.AbstractRenderer p_renderer_523_line_1588 = renderer;
		boolean standard_chart_theme_1_expr242_line_1588 = p_renderer_523_line_1588.getAutoPopulateSeriesPaint();
		int PROBE_END_LINE_1588 = 1590;
		if (standard_chart_theme_1_expr242_line_1588) {
            int PROBE_START_LINE_1589 = 1589;
			org.jfree.chart.renderer.AbstractRenderer p_renderer_523_line_1589 = renderer;
			int PROBE_END_LINE_1589 = 1589;
			p_renderer_523_line_1589.clearSeriesPaints(false);
        }
        int PROBE_START_LINE_1591 = 1593;
		org.jfree.chart.renderer.AbstractRenderer p_renderer_523_line_1591 = renderer;
		boolean standard_chart_theme_1_expr244_line_1591 = p_renderer_523_line_1591.getAutoPopulateSeriesStroke();
		int PROBE_END_LINE_1591 = 1593;
		if (standard_chart_theme_1_expr244_line_1591) {
            int PROBE_START_LINE_1592 = 1592;
			org.jfree.chart.renderer.AbstractRenderer p_renderer_523_line_1592 = renderer;
			int PROBE_END_LINE_1592 = 1592;
			p_renderer_523_line_1592.clearSeriesStrokes(false);
        }
    }

    /**
     * Applies the settings of this theme to the specified renderer.
     *
     * @param renderer  the renderer (<code>null</code> not permitted).
     */
    protected void applyToCategoryItemRenderer(CategoryItemRenderer renderer) {
        if (renderer == null) {
            throw new IllegalArgumentException("Null 'renderer' argument.");
        }

        if (renderer instanceof AbstractRenderer) {
            applyToAbstractRenderer((AbstractRenderer) renderer);
        }

        renderer.setBaseItemLabelFont(this.regularFont);
        renderer.setBaseItemLabelPaint(this.itemLabelPaint);

        // now we handle some special cases - yes, UGLY code alert!

        // BarRenderer
        if (renderer instanceof BarRenderer) {
            BarRenderer br = (BarRenderer) renderer;
            br.setBarPainter(this.barPainter);
            br.setShadowVisible(this.shadowVisible);
            br.setShadowPaint(this.shadowPaint);
        }

        // BarRenderer3D
        if (renderer instanceof BarRenderer3D) {
            BarRenderer3D br3d = (BarRenderer3D) renderer;
            br3d.setWallPaint(this.wallPaint);
        }

        // LineRenderer3D
        if (renderer instanceof LineRenderer3D) {
            LineRenderer3D lr3d = (LineRenderer3D) renderer;
            lr3d.setWallPaint(this.wallPaint);
        }

        //  StatisticalBarRenderer
        if (renderer instanceof StatisticalBarRenderer) {
            StatisticalBarRenderer sbr = (StatisticalBarRenderer) renderer;
            sbr.setErrorIndicatorPaint(this.errorIndicatorPaint);
        }

        // MinMaxCategoryRenderer
        if (renderer instanceof MinMaxCategoryRenderer) {
            MinMaxCategoryRenderer mmcr = (MinMaxCategoryRenderer) renderer;
            mmcr.setGroupPaint(this.errorIndicatorPaint);
        }
    }

    /**
     * Applies the settings of this theme to the specified renderer.
     *
     * @param renderer  the renderer (<code>null</code> not permitted).
     */
    protected void applyToXYItemRenderer(XYItemRenderer renderer) {
        int PROBE_START_LINE_1654 = 1656;
		org.jfree.chart.renderer.xy.XYItemRenderer p_renderer_525_line_1654 = renderer;
		boolean standard_chart_theme_1_expr246_line_1654 = p_renderer_525_line_1654 == null;
		int PROBE_END_LINE_1654 = 1656;
		if (standard_chart_theme_1_expr246_line_1654) {
            throw new IllegalArgumentException("Null 'renderer' argument.");
        }
        int PROBE_START_LINE_1657 = 1659;
		org.jfree.chart.renderer.xy.XYItemRenderer p_renderer_525_line_1657 = renderer;
		boolean standard_chart_theme_1_expr247_line_1657 = p_renderer_525_line_1657 instanceof AbstractRenderer;
		int PROBE_END_LINE_1657 = 1659;
		if (standard_chart_theme_1_expr247_line_1657) {
            int PROBE_START_LINE_1658 = 1658;
			org.jfree.chart.renderer.xy.XYItemRenderer p_renderer_525_line_1658 = renderer;
			int PROBE_END_LINE_1658 = 1658;
			applyToAbstractRenderer((AbstractRenderer) p_renderer_525_line_1658);
        }
        int PROBE_START_LINE_1660 = 1660;
		org.jfree.chart.renderer.xy.XYItemRenderer p_renderer_525_line_1660 = renderer;
		java.awt.Font f_regular_font_430_line_1660 = this.regularFont;
		int PROBE_END_LINE_1660 = 1660;
		p_renderer_525_line_1660.setBaseItemLabelFont(f_regular_font_430_line_1660);
        int PROBE_START_LINE_1661 = 1661;
		org.jfree.chart.renderer.xy.XYItemRenderer p_renderer_525_line_1661 = renderer;
		java.awt.Paint f_item_label_paint_453_line_1661 = this.itemLabelPaint;
		int PROBE_END_LINE_1661 = 1661;
		p_renderer_525_line_1661.setBaseItemLabelPaint(f_item_label_paint_453_line_1661);
        int PROBE_START_LINE_1662 = 1666;
		org.jfree.chart.renderer.xy.XYItemRenderer p_renderer_525_line_1662 = renderer;
		boolean standard_chart_theme_1_expr256_line_1662 = p_renderer_525_line_1662 instanceof XYBarRenderer;
		int PROBE_END_LINE_1662 = 1666;
		if (standard_chart_theme_1_expr256_line_1662) {
            XYBarRenderer br = (XYBarRenderer) renderer;
            br.setBarPainter(this.xyBarPainter);
            br.setShadowVisible(this.shadowVisible);
        }
    }

    /**
     * Applies the settings of this theme to the specified annotation.
     *
     * @param annotation  the annotation.
     */
    protected void applyToXYAnnotation(XYAnnotation annotation) {
        if (annotation == null) {
            throw new IllegalArgumentException("Null 'annotation' argument.");
        }
        if (annotation instanceof XYTextAnnotation) {
            XYTextAnnotation xyta = (XYTextAnnotation) annotation;
            xyta.setFont(this.smallFont);
            xyta.setPaint(this.itemLabelPaint);
        }
    }

    /**
     * Tests this theme for equality with an arbitrary object.
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StandardChartTheme)) {
            return false;
        }
        StandardChartTheme that = (StandardChartTheme) obj;
        if (!this.name.equals(that.name)) {
            return false;
        }
        if (!this.extraLargeFont.equals(that.extraLargeFont)) {
            return false;
        }
        if (!this.largeFont.equals(that.largeFont)) {
            return false;
        }
        if (!this.regularFont.equals(that.regularFont)) {
            return false;
        }
        if (!this.smallFont.equals(that.smallFont)) {
            return false;
        }
        if (!PaintUtilities.equal(this.titlePaint, that.titlePaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.subtitlePaint, that.subtitlePaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.chartBackgroundPaint,
                that.chartBackgroundPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.legendBackgroundPaint,
                that.legendBackgroundPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.legendItemPaint, that.legendItemPaint)) {
            return false;
        }
        if (!this.drawingSupplier.equals(that.drawingSupplier)) {
            return false;
        }
        if (!PaintUtilities.equal(this.plotBackgroundPaint,
                that.plotBackgroundPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.plotOutlinePaint,
                that.plotOutlinePaint)) {
            return false;
        }
        if (!this.labelLinkStyle.equals(that.labelLinkStyle)) {
            return false;
        }
        if (!PaintUtilities.equal(this.labelLinkPaint, that.labelLinkPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.domainGridlinePaint,
                that.domainGridlinePaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.rangeGridlinePaint,
                that.rangeGridlinePaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.crosshairPaint, that.crosshairPaint)) {
            return false;
        }
        if (!this.axisOffset.equals(that.axisOffset)) {
            return false;
        }
        if (!PaintUtilities.equal(this.axisLabelPaint, that.axisLabelPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.tickLabelPaint, that.tickLabelPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.itemLabelPaint, that.itemLabelPaint)) {
            return false;
        }
        if (this.shadowVisible != that.shadowVisible) {
            return false;
        }
        if (!PaintUtilities.equal(this.shadowPaint, that.shadowPaint)) {
            return false;
        }
        if (!this.barPainter.equals(that.barPainter)) {
            return false;
        }
        if (!this.xyBarPainter.equals(that.xyBarPainter)) {
            return false;
        }
        if (!PaintUtilities.equal(this.thermometerPaint,
                that.thermometerPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.wallPaint, that.wallPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.errorIndicatorPaint,
                that.errorIndicatorPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.gridBandPaint, that.gridBandPaint)) {
            return false;
        }
        if (!PaintUtilities.equal(this.gridBandAlternatePaint,
                that.gridBandAlternatePaint)) {
            return false;
        }
        return true;
    }

    /**
     * Returns a clone of this theme.
     *
     * @return A clone.
     *
     * @throws CloneNotSupportedException if the theme cannot be cloned.
     */
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    /**
     * Provides serialization support.
     *
     * @param stream  the output stream (<code>null</code> not permitted).
     *
     * @throws IOException  if there is an I/O error.
     */
    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        SerialUtilities.writePaint(this.titlePaint, stream);
        SerialUtilities.writePaint(this.subtitlePaint, stream);
        SerialUtilities.writePaint(this.chartBackgroundPaint, stream);
        SerialUtilities.writePaint(this.legendBackgroundPaint, stream);
        SerialUtilities.writePaint(this.legendItemPaint, stream);
        SerialUtilities.writePaint(this.plotBackgroundPaint, stream);
        SerialUtilities.writePaint(this.plotOutlinePaint, stream);
        SerialUtilities.writePaint(this.labelLinkPaint, stream);
        SerialUtilities.writePaint(this.baselinePaint, stream);
        SerialUtilities.writePaint(this.domainGridlinePaint, stream);
        SerialUtilities.writePaint(this.rangeGridlinePaint, stream);
        SerialUtilities.writePaint(this.crosshairPaint, stream);
        SerialUtilities.writePaint(this.axisLabelPaint, stream);
        SerialUtilities.writePaint(this.tickLabelPaint, stream);
        SerialUtilities.writePaint(this.itemLabelPaint, stream);
        SerialUtilities.writePaint(this.shadowPaint, stream);
        SerialUtilities.writePaint(this.thermometerPaint, stream);
        SerialUtilities.writePaint(this.wallPaint, stream);
        SerialUtilities.writePaint(this.errorIndicatorPaint, stream);
        SerialUtilities.writePaint(this.gridBandPaint, stream);
        SerialUtilities.writePaint(this.gridBandAlternatePaint, stream);
    }

    /**
     * Provides serialization support.
     *
     * @param stream  the input stream (<code>null</code> not permitted).
     *
     * @throws IOException  if there is an I/O error.
     * @throws ClassNotFoundException  if there is a classpath problem.
     */
    private void readObject(ObjectInputStream stream)
        throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        this.titlePaint = SerialUtilities.readPaint(stream);
        this.subtitlePaint = SerialUtilities.readPaint(stream);
        this.chartBackgroundPaint = SerialUtilities.readPaint(stream);
        this.legendBackgroundPaint = SerialUtilities.readPaint(stream);
        this.legendItemPaint = SerialUtilities.readPaint(stream);
        this.plotBackgroundPaint = SerialUtilities.readPaint(stream);
        this.plotOutlinePaint = SerialUtilities.readPaint(stream);
        this.labelLinkPaint = SerialUtilities.readPaint(stream);
        this.baselinePaint = SerialUtilities.readPaint(stream);
        this.domainGridlinePaint = SerialUtilities.readPaint(stream);
        this.rangeGridlinePaint = SerialUtilities.readPaint(stream);
        this.crosshairPaint = SerialUtilities.readPaint(stream);
        this.axisLabelPaint = SerialUtilities.readPaint(stream);
        this.tickLabelPaint = SerialUtilities.readPaint(stream);
        this.itemLabelPaint = SerialUtilities.readPaint(stream);
        this.shadowPaint = SerialUtilities.readPaint(stream);
        this.thermometerPaint = SerialUtilities.readPaint(stream);
        this.wallPaint = SerialUtilities.readPaint(stream);
        this.errorIndicatorPaint = SerialUtilities.readPaint(stream);
        this.gridBandPaint = SerialUtilities.readPaint(stream);
        this.gridBandAlternatePaint = SerialUtilities.readPaint(stream);
    }

}
