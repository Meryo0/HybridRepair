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
 * -----------------
 * CategoryPlot.java
 * -----------------
 * (C) Copyright 2000-2008, by Object Refinery Limited and Contributors.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Jeremy Bowman;
 *                   Arnaud Lelievre;
 *                   Richard West, Advanced Micro Devices, Inc.;
 *
 * Changes (from 21-Jun-2001)
 * --------------------------
 * 21-Jun-2001 : Removed redundant JFreeChart parameter from constructors (DG);
 * 21-Aug-2001 : Added standard header. Fixed DOS encoding problem (DG);
 * 18-Sep-2001 : Updated header (DG);
 * 15-Oct-2001 : Data source classes moved to com.jrefinery.data.* (DG);
 * 22-Oct-2001 : Renamed DataSource.java --> Dataset.java etc. (DG);
 * 23-Oct-2001 : Changed intro and trail gaps on bar plots to use percentage of 
 *               available space rather than a fixed number of units (DG);
 * 12-Dec-2001 : Changed constructors to protected (DG);
 * 13-Dec-2001 : Added tooltips (DG);
 * 16-Jan-2002 : Increased maximum intro and trail gap percents, plus added 
 *               some argument checking code.  Thanks to Taoufik Romdhane for 
 *               suggesting this (DG);
 * 05-Feb-2002 : Added accessor methods for the tooltip generator, incorporated
 *               alpha-transparency for Plot and subclasses (DG);
 * 06-Mar-2002 : Updated import statements (DG);
 * 14-Mar-2002 : Renamed BarPlot.java --> CategoryPlot.java, and changed code 
 *               to use the CategoryItemRenderer interface (DG);
 * 22-Mar-2002 : Dropped the getCategories() method (DG);
 * 23-Apr-2002 : Moved the dataset from the JFreeChart class to the Plot 
 *               class (DG);
 * 29-Apr-2002 : New methods to support printing values at the end of bars, 
 *               contributed by Jeremy Bowman (DG);
 * 11-May-2002 : New methods for label visibility and overlaid plot support, 
 *               contributed by Jeremy Bowman (DG);
 * 06-Jun-2002 : Removed the tooltip generator, this is now stored with the 
 *               renderer.  Moved constants into the CategoryPlotConstants 
 *               interface.  Updated Javadoc comments (DG);
 * 10-Jun-2002 : Overridden datasetChanged() method to update the upper and 
 *               lower bound on the range axis (if necessary), updated 
 *               Javadocs (DG);
 * 25-Jun-2002 : Removed redundant imports (DG);
 * 20-Aug-2002 : Changed the constructor for Marker (DG);
 * 28-Aug-2002 : Added listener notification to setDomainAxis() and 
 *               setRangeAxis() (DG);
 * 23-Sep-2002 : Added getLegendItems() method and fixed errors reported by 
 *               Checkstyle (DG);
 * 28-Oct-2002 : Changes to the CategoryDataset interface (DG);
 * 05-Nov-2002 : Base dataset is now TableDataset not CategoryDataset (DG);
 * 07-Nov-2002 : Renamed labelXXX as valueLabelXXX (DG);
 * 18-Nov-2002 : Added grid settings for both domain and range axis (previously
 *               these were set in the axes) (DG);
 * 19-Nov-2002 : Added axis location parameters to constructor (DG);
 * 17-Jan-2003 : Moved to com.jrefinery.chart.plot package (DG);
 * 14-Feb-2003 : Fixed bug in auto-range calculation for secondary axis (DG);
 * 26-Mar-2003 : Implemented Serializable (DG);
 * 02-May-2003 : Moved render() method up from subclasses. Added secondary 
 *               range markers. Added an attribute to control the dataset 
 *               rendering order.  Added a drawAnnotations() method.  Changed 
 *               the axis location from an int to an AxisLocation (DG);
 * 07-May-2003 : Merged HorizontalCategoryPlot and VerticalCategoryPlot into 
 *               this class (DG);
 * 02-Jun-2003 : Removed check for range axis compatibility (DG);
 * 04-Jul-2003 : Added a domain gridline position attribute (DG);
 * 21-Jul-2003 : Moved DrawingSupplier to Plot superclass (DG);
 * 19-Aug-2003 : Added equals() method and implemented Cloneable (DG);
 * 01-Sep-2003 : Fixed bug 797466 (no change event when secondary dataset 
 *               changes) (DG);
 * 02-Sep-2003 : Fixed bug 795209 (wrong dataset checked in render2 method) and
 *               790407 (initialise method) (DG);
 * 08-Sep-2003 : Added internationalization via use of properties 
 *               resourceBundle (RFE 690236) (AL); 
 * 08-Sep-2003 : Fixed bug (wrong secondary range axis being used).  Changed 
 *               ValueAxis API (DG);
 * 10-Sep-2003 : Fixed bug in setRangeAxis() method (DG);
 * 15-Sep-2003 : Fixed two bugs in serialization, implemented 
 *               PublicCloneable (DG);
 * 23-Oct-2003 : Added event notification for changes to renderer (DG);
 * 26-Nov-2003 : Fixed bug (849645) in clearRangeMarkers() method (DG);
 * 03-Dec-2003 : Modified draw method to accept anchor (DG);
 * 21-Jan-2004 : Update for renamed method in ValueAxis (DG);
 * 10-Mar-2004 : Fixed bug in axis range calculation when secondary renderer is
 *               stacked (DG);
 * 12-May-2004 : Added fixed legend items (DG);
 * 19-May-2004 : Added check for null legend item from renderer (DG);
 * 02-Jun-2004 : Updated the DatasetRenderingOrder class (DG);
 * 05-Nov-2004 : Renamed getDatasetsMappedToRangeAxis() 
 *               --> datasetsMappedToRangeAxis(), and ensured that returned 
 *               list doesn't contain null datasets (DG);
 * 12-Nov-2004 : Implemented new Zoomable interface (DG);
 * 07-Jan-2005 : Renamed getRangeExtent() --> findRangeBounds() in 
 *               CategoryItemRenderer (DG);
 * 04-May-2005 : Fixed serialization of range markers (DG);
 * 05-May-2005 : Updated draw() method parameters (DG);
 * 20-May-2005 : Added setDomainAxes() and setRangeAxes() methods, as per
 *               RFE 1183100 (DG);
 * 01-Jun-2005 : Upon deserialization, register plot as a listener with its
 *               axes, dataset(s) and renderer(s) - see patch 1209475 (DG);
 * 02-Jun-2005 : Added support for domain markers (DG);
 * 06-Jun-2005 : Fixed equals() method for use with GradientPaint (DG);
 * 09-Jun-2005 : Added setRenderers(), as per RFE 1183100 (DG);
 * 16-Jun-2005 : Added getDomainAxisCount() and getRangeAxisCount() methods, to
 *               match XYPlot (see RFE 1220495) (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 11-Jan-2006 : Added configureRangeAxes() to rendererChanged(), since the
 *               renderer might influence the axis range (DG);
 * 27-Jan-2006 : Added various null argument checks (DG);
 * 18-Aug-2006 : Added getDatasetCount() method, plus a fix for bug drawing 
 *               category labels, thanks to Adriaan Joubert (1277726) (DG);
 * 05-Sep-2006 : Added MarkerChangeEvent support (DG);
 * 30-Oct-2006 : Added getDomainAxisIndex(), datasetsMappedToDomainAxis() and 
 *               getCategoriesForAxis() methods (DG);
 * 22-Nov-2006 : Fire PlotChangeEvent from setColumnRenderingOrder() and
 *               setRowRenderingOrder() (DG);
 * 29-Nov-2006 : Fix for bug 1605207 (IntervalMarker exceeds bounds of data 
 *               area) (DG);
 * 26-Feb-2007 : Fix for bug 1669218 (setDomainAxisLocation() notify argument
 *               ignored) (DG);
 * 13-Mar-2007 : Added null argument checks for setRangeCrosshairPaint() and
 *               setRangeCrosshairStroke(), fixed clipping for 
 *               annotations (DG);
 * 07-Jun-2007 : Override drawBackground() for new GradientPaint handling (DG);
 * 21-Jun-2007 : Removed JCommon dependencies (DG);
 * 06-Jul-2007 : Updated annotation handling (DG);
 * 10-Jul-2007 : Added getRangeAxisIndex(ValueAxis) method (DG);
 * 24-Sep-2007 : Implemented new zoom methods (DG);
 * 25-Oct-2007 : Added some argument checks (DG);
 * 05-Nov-2007 : Applied patch 1823697, by Richard West, for removal of domain
 *               and range markers (DG);
 * 14-Nov-2007 : Added missing event notifications (DG);
 * 25-Mar-2008 : Added new methods with optional notification - see patch
 *               1913751 (DG);
 * 07-Apr-2008 : Fixed NPE in removeDomainMarker() and 
 *               removeRangeMarker() (DG);
 * 
 *
 */

package org.jfree.chart.plot;

import java.awt.AlphaComposite;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.geom.Line2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

import org.jfree.chart.LegendItem;
import org.jfree.chart.LegendItemCollection;
import org.jfree.chart.annotations.CategoryAnnotation;
import org.jfree.chart.axis.Axis;
import org.jfree.chart.axis.AxisCollection;
import org.jfree.chart.axis.AxisLocation;
import org.jfree.chart.axis.AxisSpace;
import org.jfree.chart.axis.AxisState;
import org.jfree.chart.axis.CategoryAnchor;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.axis.ValueTick;
import org.jfree.chart.event.ChartChangeEventType;
import org.jfree.chart.event.PlotChangeEvent;
import org.jfree.chart.event.RendererChangeEvent;
import org.jfree.chart.event.RendererChangeListener;
import org.jfree.chart.renderer.category.CategoryItemRenderer;
import org.jfree.chart.renderer.category.CategoryItemRendererState;
import org.jfree.chart.util.Layer;
import org.jfree.chart.util.ObjectList;
import org.jfree.chart.util.ObjectUtilities;
import org.jfree.chart.util.PaintUtilities;
import org.jfree.chart.util.PublicCloneable;
import org.jfree.chart.util.RectangleEdge;
import org.jfree.chart.util.RectangleInsets;
import org.jfree.chart.util.SerialUtilities;
import org.jfree.chart.util.SortOrder;
import org.jfree.data.Range;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.Dataset;
import org.jfree.data.general.DatasetChangeEvent;
import org.jfree.data.general.DatasetUtilities;

/**
 * A general plotting class that uses data from a {@link CategoryDataset} and 
 * renders each data item using a {@link CategoryItemRenderer}.
 */
public class CategoryPlot extends Plot implements ValueAxisPlot, 
        Zoomable, RendererChangeListener, Cloneable, PublicCloneable, 
        Serializable {

    /** For serialization. */
    private static final long serialVersionUID = -3537691700434728188L;
    
    /** 
     * The default visibility of the grid lines plotted against the domain 
     * axis. 
     */
    public static final boolean DEFAULT_DOMAIN_GRIDLINES_VISIBLE = false;

    /** 
     * The default visibility of the grid lines plotted against the range 
     * axis. 
     */
    public static final boolean DEFAULT_RANGE_GRIDLINES_VISIBLE = true;

    /** The default grid line stroke. */
    public static final Stroke DEFAULT_GRIDLINE_STROKE = new BasicStroke(0.5f,
            BasicStroke.CAP_BUTT, BasicStroke.JOIN_BEVEL, 0.0f, new float[] 
            {2.0f, 2.0f}, 0.0f);

    int PROBE_START_LINE_255 = 256;

	public static final java.awt.Color q_white_6_line_256 = Color.WHITE;

	int PROBE_END_LINE_255 = 256;

	/** The default grid line paint. */
    public static final Paint DEFAULT_GRIDLINE_PAINT = q_white_6_line_256;

    /** The default value label font. */
    public static final Font DEFAULT_VALUE_LABEL_FONT = new Font("SansSerif", 
            Font.PLAIN, 10);

    /** 
     * The default crosshair visibility. 
     * 
     * @since 1.0.5
     */
    public static final boolean DEFAULT_CROSSHAIR_VISIBLE = false;

    /** 
     * The default crosshair stroke. 
     * 
     * @since 1.0.5
     */
    public static final Stroke DEFAULT_CROSSHAIR_STROKE
            = DEFAULT_GRIDLINE_STROKE;

    int PROBE_START_LINE_277 = 282;

	public static final java.awt.Color q_blue_8_line_282 = Color.blue;

	int PROBE_END_LINE_277 = 282;

	/** 
     * The default crosshair paint. 
     * 
     * @since 1.0.5
     */
    public static final Paint DEFAULT_CROSSHAIR_PAINT = q_blue_8_line_282;

    /** The resourceBundle for the localization. */
    protected static ResourceBundle localizationResources 
            = ResourceBundle.getBundle(
            "org.jfree.chart.plot.LocalizationBundle");

    /** The plot orientation. */
    private PlotOrientation orientation;

    /** The offset between the data area and the axes. */
    private RectangleInsets axisOffset;

    /** Storage for the domain axes. */
    private ObjectList domainAxes;

    /** Storage for the domain axis locations. */
    private ObjectList domainAxisLocations;

    /**
     * A flag that controls whether or not the shared domain axis is drawn 
     * (only relevant when the plot is being used as a subplot).
     */
    private boolean drawSharedDomainAxis;

    /** Storage for the range axes. */
    private ObjectList rangeAxes;

    /** Storage for the range axis locations. */
    private ObjectList rangeAxisLocations;

    /** Storage for the datasets. */
    private ObjectList datasets;

    /** Storage for keys that map datasets to domain axes. */
    private ObjectList datasetToDomainAxisMap;
    
    /** Storage for keys that map datasets to range axes. */
    private ObjectList datasetToRangeAxisMap;

    /** Storage for the renderers. */
    private ObjectList renderers;

    /** The dataset rendering order. */
    private DatasetRenderingOrder renderingOrder 
            = DatasetRenderingOrder.REVERSE;

    int PROBE_START_LINE_329 = 333;

	private org.jfree.chart.util.SortOrder q_ascending_10_line_333 = SortOrder.ASCENDING;

	int PROBE_END_LINE_329 = 333;

	/** 
     * Controls the order in which the columns are traversed when rendering the 
     * data items. 
     */
    private SortOrder columnRenderingOrder = q_ascending_10_line_333;
    
    int PROBE_START_LINE_335 = 339;

	private org.jfree.chart.util.SortOrder q_ascending_11_line_339 = SortOrder.ASCENDING;

	int PROBE_END_LINE_335 = 339;

	/** 
     * Controls the order in which the rows are traversed when rendering the 
     * data items. 
     */
    private SortOrder rowRenderingOrder = q_ascending_11_line_339;
    
    /** 
     * A flag that controls whether the grid-lines for the domain axis are 
     * visible. 
     */
    private boolean domainGridlinesVisible;

    /** The position of the domain gridlines relative to the category. */
    private CategoryAnchor domainGridlinePosition;

    /** The stroke used to draw the domain grid-lines. */
    private transient Stroke domainGridlineStroke;

    /** The paint used to draw the domain  grid-lines. */
    private transient Paint domainGridlinePaint;

    /** 
     * A flag that controls whether the grid-lines for the range axis are 
     * visible. 
     */
    private boolean rangeGridlinesVisible;

    /** The stroke used to draw the range axis grid-lines. */
    private transient Stroke rangeGridlineStroke;

    /** The paint used to draw the range axis grid-lines. */
    private transient Paint rangeGridlinePaint;

    /** The anchor value. */
    private double anchorValue;

    /** A flag that controls whether or not a range crosshair is drawn. */
    private boolean rangeCrosshairVisible;

    /** The range crosshair value. */
    private double rangeCrosshairValue;

    /** The pen/brush used to draw the crosshair (if any). */
    private transient Stroke rangeCrosshairStroke;

    /** The color used to draw the crosshair (if any). */
    private transient Paint rangeCrosshairPaint;

    /** 
     * A flag that controls whether or not the crosshair locks onto actual 
     * data points. 
     */
    private boolean rangeCrosshairLockedOnData = true;

    /** A map containing lists of markers for the domain axes. */
    private Map foregroundDomainMarkers;

    /** A map containing lists of markers for the domain axes. */
    private Map backgroundDomainMarkers;

    /** A map containing lists of markers for the range axes. */
    private Map foregroundRangeMarkers;

    /** A map containing lists of markers for the range axes. */
    private Map backgroundRangeMarkers;

    /** 
     * A (possibly empty) list of annotations for the plot.  The list should
     * be initialised in the constructor and never allowed to be 
     * <code>null</code>.
     */
    private List annotations;

    /**
     * The weight for the plot (only relevant when the plot is used as a subplot
     * within a combined plot).
     */
    private int weight;

    /** The fixed space for the domain axis. */
    private AxisSpace fixedDomainAxisSpace;

    /** The fixed space for the range axis. */
    private AxisSpace fixedRangeAxisSpace;

    /** 
     * An optional collection of legend items that can be returned by the 
     * getLegendItems() method. 
     */
    private LegendItemCollection fixedLegendItems;
    
    /**
     * Default constructor.
     */
    public CategoryPlot() {
        this(null, null, null, null);
    }

    /**
     * Creates a new plot.
     *
     * @param dataset  the dataset (<code>null</code> permitted).
     * @param domainAxis  the domain axis (<code>null</code> permitted).
     * @param rangeAxis  the range axis (<code>null</code> permitted).
     * @param renderer  the item renderer (<code>null</code> permitted).
     *
     */
    public CategoryPlot(CategoryDataset dataset,
                        CategoryAxis domainAxis,
                        ValueAxis rangeAxis,
                        CategoryItemRenderer renderer) {

        super();

        int PROBE_START_LINE_449 = 449;
		org.jfree.chart.plot.PlotOrientation q_vertical_11_line_449 = PlotOrientation.VERTICAL;
		int PROBE_END_LINE_449 = 449;
		this.orientation = q_vertical_11_line_449;

        // allocate storage for dataset, axes and renderers
        this.domainAxes = new ObjectList();
        this.domainAxisLocations = new ObjectList();
        this.rangeAxes = new ObjectList();
        this.rangeAxisLocations = new ObjectList();
        
        this.datasetToDomainAxisMap = new ObjectList();
        this.datasetToRangeAxisMap = new ObjectList();

        this.renderers = new ObjectList();

        this.datasets = new ObjectList();
        int PROBE_START_LINE_463 = 463;
		org.jfree.chart.util.ObjectList f_datasets_100_line_463 = this.datasets;
		org.jfree.data.category.CategoryDataset p_dataset_88_line_463 = dataset;
		int PROBE_END_LINE_463 = 463;
		f_datasets_100_line_463.set(0, p_dataset_88_line_463);
        int PROBE_START_LINE_464 = 466;
		org.jfree.data.category.CategoryDataset p_dataset_88_line_464 = dataset;
		boolean category_plot_1_expr45_line_464 = p_dataset_88_line_464 != null;
		int PROBE_END_LINE_464 = 466;
		if (category_plot_1_expr45_line_464) {
            dataset.addChangeListener(this);
        }

        this.axisOffset = new RectangleInsets(4.0, 4.0, 4.0, 4.0);

        int PROBE_START_LINE_470 = 470;
		org.jfree.chart.axis.AxisLocation q_bottom_or_left_12_line_470 = AxisLocation.BOTTOM_OR_LEFT;
		int PROBE_END_LINE_470 = 470;
		setDomainAxisLocation(q_bottom_or_left_12_line_470, false);
        int PROBE_START_LINE_471 = 471;
		org.jfree.chart.axis.AxisLocation q_top_or_left_13_line_471 = AxisLocation.TOP_OR_LEFT;
		int PROBE_END_LINE_471 = 471;
		setRangeAxisLocation(q_top_or_left_13_line_471, false);

        int PROBE_START_LINE_473 = 473;
		org.jfree.chart.util.ObjectList f_renderers_99_line_473 = this.renderers;
		org.jfree.chart.renderer.category.CategoryItemRenderer p_renderer_91_line_473 = renderer;
		int PROBE_END_LINE_473 = 473;
		f_renderers_99_line_473.set(0, p_renderer_91_line_473);
        int PROBE_START_LINE_474 = 477;
		org.jfree.chart.renderer.category.CategoryItemRenderer p_renderer_91_line_474 = renderer;
		boolean category_plot_1_expr55_line_474 = p_renderer_91_line_474 != null;
		int PROBE_END_LINE_474 = 477;
		if (category_plot_1_expr55_line_474) {
            renderer.setPlot(this);
            renderer.addChangeListener(this);
        }

        int PROBE_START_LINE_479 = 479;
		org.jfree.chart.util.ObjectList f_domain_axes_93_line_479 = this.domainAxes;
		org.jfree.chart.axis.CategoryAxis p_domain_axis_89_line_479 = domainAxis;
		int PROBE_END_LINE_479 = 479;
		f_domain_axes_93_line_479.set(0, p_domain_axis_89_line_479);
        this.mapDatasetToDomainAxis(0, 0);
        int PROBE_START_LINE_481 = 484;
		org.jfree.chart.axis.CategoryAxis p_domain_axis_89_line_481 = domainAxis;
		boolean category_plot_1_expr61_line_481 = p_domain_axis_89_line_481 != null;
		int PROBE_END_LINE_481 = 484;
		if (category_plot_1_expr61_line_481) {
            domainAxis.setPlot(this);
            domainAxis.addChangeListener(this);
        }
        this.drawSharedDomainAxis = false;

        int PROBE_START_LINE_487 = 487;
		org.jfree.chart.util.ObjectList f_range_axes_95_line_487 = this.rangeAxes;
		org.jfree.chart.axis.ValueAxis p_range_axis_90_line_487 = rangeAxis;
		int PROBE_END_LINE_487 = 487;
		f_range_axes_95_line_487.set(0, p_range_axis_90_line_487);
        this.mapDatasetToRangeAxis(0, 0);
        int PROBE_START_LINE_489 = 492;
		org.jfree.chart.axis.ValueAxis p_range_axis_90_line_489 = rangeAxis;
		boolean category_plot_1_expr70_line_489 = p_range_axis_90_line_489 != null;
		int PROBE_END_LINE_489 = 492;
		if (category_plot_1_expr70_line_489) {
            rangeAxis.setPlot(this);
            rangeAxis.addChangeListener(this);
        }
        
        configureDomainAxes();
        configureRangeAxes();

        int PROBE_START_LINE_497 = 497;
		boolean f_default_domain_gridlines_visible_104_line_497 = DEFAULT_DOMAIN_GRIDLINES_VISIBLE;
		int PROBE_END_LINE_497 = 497;
		this.domainGridlinesVisible = f_default_domain_gridlines_visible_104_line_497;
        int PROBE_START_LINE_498 = 498;
		org.jfree.chart.axis.CategoryAnchor q_middle_14_line_498 = CategoryAnchor.MIDDLE;
		int PROBE_END_LINE_498 = 498;
		this.domainGridlinePosition = q_middle_14_line_498;
        int PROBE_START_LINE_499 = 499;
		java.awt.Stroke f_default_gridline_stroke_78_line_499 = DEFAULT_GRIDLINE_STROKE;
		int PROBE_END_LINE_499 = 499;
		this.domainGridlineStroke = f_default_gridline_stroke_78_line_499;
        int PROBE_START_LINE_500 = 500;
		java.awt.Paint f_default_gridline_paint_79_line_500 = DEFAULT_GRIDLINE_PAINT;
		int PROBE_END_LINE_500 = 500;
		this.domainGridlinePaint = f_default_gridline_paint_79_line_500;

        int PROBE_START_LINE_502 = 502;
		boolean f_default_range_gridlines_visible_109_line_502 = DEFAULT_RANGE_GRIDLINES_VISIBLE;
		int PROBE_END_LINE_502 = 502;
		this.rangeGridlinesVisible = f_default_range_gridlines_visible_109_line_502;
        int PROBE_START_LINE_503 = 503;
		java.awt.Stroke f_default_gridline_stroke_78_line_503 = DEFAULT_GRIDLINE_STROKE;
		int PROBE_END_LINE_503 = 503;
		this.rangeGridlineStroke = f_default_gridline_stroke_78_line_503;
        int PROBE_START_LINE_504 = 504;
		java.awt.Paint f_default_gridline_paint_79_line_504 = DEFAULT_GRIDLINE_PAINT;
		int PROBE_END_LINE_504 = 504;
		this.rangeGridlinePaint = f_default_gridline_paint_79_line_504;

        this.foregroundDomainMarkers = new HashMap();
        this.backgroundDomainMarkers = new HashMap();
        this.foregroundRangeMarkers = new HashMap();
        this.backgroundRangeMarkers = new HashMap();

        Marker baseline = new ValueMarker(0.0, new Color(0.8f, 0.8f, 0.8f, 
                0.5f), new BasicStroke(1.0f), new Color(0.85f, 0.85f, 0.95f, 
                0.5f), new BasicStroke(1.0f), 0.6f);
        int PROBE_START_LINE_514 = 514;
		org.jfree.chart.plot.Marker v_baseline_116_line_514 = baseline;
		org.jfree.chart.util.Layer q_background_15_line_514 = Layer.BACKGROUND;
		int PROBE_END_LINE_514 = 514;
		addRangeMarker(v_baseline_116_line_514, q_background_15_line_514);

        this.anchorValue = 0.0;

        int PROBE_START_LINE_518 = 518;
		boolean f_default_crosshair_visible_119_line_518 = DEFAULT_CROSSHAIR_VISIBLE;
		int PROBE_END_LINE_518 = 518;
		this.rangeCrosshairVisible = f_default_crosshair_visible_119_line_518;
        this.rangeCrosshairValue = 0.0;
        int PROBE_START_LINE_520 = 520;
		java.awt.Stroke f_default_crosshair_stroke_81_line_520 = DEFAULT_CROSSHAIR_STROKE;
		int PROBE_END_LINE_520 = 520;
		this.rangeCrosshairStroke = f_default_crosshair_stroke_81_line_520;
        int PROBE_START_LINE_521 = 521;
		java.awt.Paint f_default_crosshair_paint_82_line_521 = DEFAULT_CROSSHAIR_PAINT;
		int PROBE_END_LINE_521 = 521;
		this.rangeCrosshairPaint = f_default_crosshair_paint_82_line_521;
        
        this.annotations = new java.util.ArrayList();

    }
    
    /**
     * Returns a string describing the type of plot.
     *
     * @return The type.
     */
    public String getPlotType() {
        return localizationResources.getString("Category_Plot");
    }

    /**
     * Returns the orientation of the plot.
     *
     * @return The orientation of the plot (never <code>null</code>).
     * 
     * @see #setOrientation(PlotOrientation)
     */
    public PlotOrientation getOrientation() {
        return this.orientation;
    }

    /**
     * Sets the orientation for the plot and sends a {@link PlotChangeEvent} to
     * all registered listeners.
     *
     * @param orientation  the orientation (<code>null</code> not permitted).
     * 
     * @see #getOrientation()
     */
    public void setOrientation(PlotOrientation orientation) {
        if (orientation == null) {
            throw new IllegalArgumentException("Null 'orientation' argument.");
        }
        this.orientation = orientation;
        fireChangeEvent();
    }

    /**
     * Returns the axis offset.
     *
     * @return The axis offset (never <code>null</code>).
     * 
     * @see #setAxisOffset(RectangleInsets)
     */
    public RectangleInsets getAxisOffset() {
        return this.axisOffset;
    }

    /**
     * Sets the axis offsets (gap between the data area and the axes) and
     * sends a {@link PlotChangeEvent} to all registered listeners.
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
        fireChangeEvent();
    }

    /**
     * Returns the domain axis for the plot.  If the domain axis for this plot
     * is <code>null</code>, then the method will return the parent plot's 
     * domain axis (if there is a parent plot).
     *
     * @return The domain axis (<code>null</code> permitted).
     * 
     * @see #setDomainAxis(CategoryAxis)
     */
    public CategoryAxis getDomainAxis() {
        return getDomainAxis(0);
    }

    /**
     * Returns a domain axis.
     *
     * @param index  the axis index.
     *
     * @return The axis (<code>null</code> possible).
     * 
     * @see #setDomainAxis(int, CategoryAxis)
     */
    public CategoryAxis getDomainAxis(int index) {
        CategoryAxis result = null;
        if (index < this.domainAxes.size()) {
            result = (CategoryAxis) this.domainAxes.get(index);
        }
        if (result == null) {
            Plot parent = getParent();
            if (parent instanceof CategoryPlot) {
                CategoryPlot cp = (CategoryPlot) parent;
                result = cp.getDomainAxis(index);
            }
        }
        return result;
    }

    /**
     * Sets the domain axis for the plot and sends a {@link PlotChangeEvent} to
     * all registered listeners.
     *
     * @param axis  the axis (<code>null</code> permitted).
     * 
     * @see #getDomainAxis()
     */
    public void setDomainAxis(CategoryAxis axis) {
        setDomainAxis(0, axis);
    }

    /**
     * Sets a domain axis and sends a {@link PlotChangeEvent} to all 
     * registered listeners.
     *
     * @param index  the axis index.
     * @param axis  the axis (<code>null</code> permitted).
     * 
     * @see #getDomainAxis(int)
     */
    public void setDomainAxis(int index, CategoryAxis axis) {
        setDomainAxis(index, axis, true);
    }
 
    /**
     * Sets a domain axis and, if requested, sends a {@link PlotChangeEvent} to 
     * all registered listeners.
     *
     * @param index  the axis index.
     * @param axis  the axis (<code>null</code> permitted).
     * @param notify  notify listeners?
     */
    public void setDomainAxis(int index, CategoryAxis axis, boolean notify) {
        CategoryAxis existing = (CategoryAxis) this.domainAxes.get(index);
        if (existing != null) {
            existing.removeChangeListener(this);
        }
        if (axis != null) {
            axis.setPlot(this);
        }
        this.domainAxes.set(index, axis);
        if (axis != null) {
            axis.configure();
            axis.addChangeListener(this);
        }
        if (notify) {
            fireChangeEvent();
        }
    }

    /**
     * Sets the domain axes for this plot and sends a {@link PlotChangeEvent}
     * to all registered listeners.
     * 
     * @param axes  the axes (<code>null</code> not permitted).
     * 
     * @see #setRangeAxes(ValueAxis[])
     */
    public void setDomainAxes(CategoryAxis[] axes) {
        for (int i = 0; i < axes.length; i++) {
            setDomainAxis(i, axes[i], false);   
        }
        fireChangeEvent();
    }
    
    /**
     * Returns the index of the specified axis, or <code>-1</code> if the axis
     * is not assigned to the plot.
     * 
     * @param axis  the axis (<code>null</code> not permitted).
     * 
     * @return The axis index.
     * 
     * @see #getDomainAxis(int)
     * @see #getRangeAxisIndex(ValueAxis)
     * 
     * @since 1.0.3
     */
    public int getDomainAxisIndex(CategoryAxis axis) {
        if (axis == null) {
            throw new IllegalArgumentException("Null 'axis' argument.");
        }
        return this.domainAxes.indexOf(axis);
    }
    
    /**
     * Returns the domain axis location for the primary domain axis.
     *
     * @return The location (never <code>null</code>).
     * 
     * @see #getRangeAxisLocation()
     */
    public AxisLocation getDomainAxisLocation() {
        return getDomainAxisLocation(0);
    }

    /**
     * Returns the location for a domain axis.
     *
     * @param index  the axis index.
     *
     * @return The location.
     * 
     * @see #setDomainAxisLocation(int, AxisLocation)
     */
    public AxisLocation getDomainAxisLocation(int index) {
        AxisLocation result = null;
        if (index < this.domainAxisLocations.size()) {
            result = (AxisLocation) this.domainAxisLocations.get(index);
        }
        if (result == null) {
            result = AxisLocation.getOpposite(getDomainAxisLocation(0));
        }
        return result;
    }

    /**
     * Sets the location of the domain axis and sends a {@link PlotChangeEvent}
     * to all registered listeners.
     *
     * @param location  the axis location (<code>null</code> not permitted).
     * 
     * @see #getDomainAxisLocation()
     * @see #setDomainAxisLocation(int, AxisLocation)
     */
    public void setDomainAxisLocation(AxisLocation location) {
        // delegate...
        setDomainAxisLocation(0, location, true);
    }

    /**
     * Sets the location of the domain axis and, if requested, sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param location  the axis location (<code>null</code> not permitted).
     * @param notify  a flag that controls whether listeners are notified.
     */
    public void setDomainAxisLocation(AxisLocation location, boolean notify) {
        int PROBE_START_LINE_767 = 767;
		org.jfree.chart.axis.AxisLocation p_location_137_line_767 = location;
		boolean p_notify_138_line_767 = notify;
		int PROBE_END_LINE_767 = 767;
		// delegate...
        setDomainAxisLocation(0, p_location_137_line_767, p_notify_138_line_767);
    }

    /**
     * Sets the location for a domain axis and sends a {@link PlotChangeEvent}
     * to all registered listeners.
     *
     * @param index  the axis index.
     * @param location  the location.
     * 
     * @see #getDomainAxisLocation(int)
     * @see #setRangeAxisLocation(int, AxisLocation)
     */
    public void setDomainAxisLocation(int index, AxisLocation location) {
        // delegate...
        setDomainAxisLocation(index, location, true);
    }
    
    /**
     * Sets the location for a domain axis and sends a {@link PlotChangeEvent} 
     * to all registered listeners.
     * 
     * @param index  the axis index.
     * @param location  the location.
     * @param notify  notify listeners?
     * 
     * @since 1.0.5
     * 
     * @see #getDomainAxisLocation(int)
     * @see #setRangeAxisLocation(int, AxisLocation, boolean)
     */
    public void setDomainAxisLocation(int index, AxisLocation location, 
            boolean notify) {
        int PROBE_START_LINE_800 = 803;
				int p_index_141_line_800 = index;
				boolean category_plot_1_expr137_line_800 = p_index_141_line_800 == 0;
				boolean category_plot_1_expr138_line_800 = true;
				if (category_plot_1_expr137_line_800) {
					org.jfree.chart.axis.AxisLocation p_location_142_line_800 = location;
					category_plot_1_expr138_line_800 = p_location_142_line_800 == null;
				}
				boolean category_plot_1_expr136_line_800 = category_plot_1_expr137_line_800
						&& category_plot_1_expr138_line_800;
				int PROBE_END_LINE_800 = 803;
		if (category_plot_1_expr136_line_800) {
            throw new IllegalArgumentException(
                    "Null 'location' for index 0 not permitted.");
        }
        int PROBE_START_LINE_804 = 804;
		org.jfree.chart.util.ObjectList f_domain_axis_locations_94_line_804 = this.domainAxisLocations;
		int p_index_141_line_804 = index;
		org.jfree.chart.axis.AxisLocation p_location_142_line_804 = location;
		int PROBE_END_LINE_804 = 804;
		f_domain_axis_locations_94_line_804.set(p_index_141_line_804, p_location_142_line_804);
        int PROBE_START_LINE_805 = 807;
		boolean p_notify_143_line_805 = notify;
		int PROBE_END_LINE_805 = 807;
		if (p_notify_143_line_805) {
            fireChangeEvent();
        }
    }

    /**
     * Returns the domain axis edge.  This is derived from the axis location
     * and the plot orientation.
     *
     * @return The edge (never <code>null</code>).
     */
    public RectangleEdge getDomainAxisEdge() {
        return getDomainAxisEdge(0);
    }

    /**
     * Returns the edge for a domain axis.
     *
     * @param index  the axis index.
     *
     * @return The edge (never <code>null</code>).
     */
    public RectangleEdge getDomainAxisEdge(int index) {
        RectangleEdge result = null;
        AxisLocation location = getDomainAxisLocation(index);
        if (location != null) {
            result = Plot.resolveDomainAxisLocation(location, this.orientation);
        }
        else {
            result = RectangleEdge.opposite(getDomainAxisEdge(0));
        }
        return result;
    }

    /**
     * Returns the number of domain axes.
     *
     * @return The axis count.
     */
    public int getDomainAxisCount() {
        return this.domainAxes.size();
    }

    /**
     * Clears the domain axes from the plot and sends a {@link PlotChangeEvent}
     * to all registered listeners.
     */
    public void clearDomainAxes() {
        for (int i = 0; i < this.domainAxes.size(); i++) {
            CategoryAxis axis = (CategoryAxis) this.domainAxes.get(i);
            if (axis != null) {
                axis.removeChangeListener(this);
            }
        }
        this.domainAxes.clear();
        fireChangeEvent();
    }

    /**
     * Configures the domain axes.
     */
    public void configureDomainAxes() {
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_868 = 868;
			int v_i_145_line_867 = i;
			org.jfree.chart.util.ObjectList f_domain_axes_93_line_867 = this.domainAxes;
			int category_plot_1_expr144_line_867 = f_domain_axes_93_line_867.size();
			boolean category_plot_1_expr143_line_867 = v_i_145_line_867 < category_plot_1_expr144_line_867;
			if (!(category_plot_1_expr143_line_867)) {
				break;
			}
			org.jfree.chart.util.ObjectList f_domain_axes_93_line_868 = this.domainAxes;
			int v_i_145_line_868 = i;
			Object category_plot_1_expr149_line_868 = f_domain_axes_93_line_868.get(v_i_145_line_868);
			int PROBE_END_LINE_868 = 868;
			CategoryAxis axis = (CategoryAxis) category_plot_1_expr149_line_868;
            int PROBE_START_LINE_869 = 871;
			org.jfree.chart.axis.CategoryAxis v_axis_146_line_869 = axis;
			boolean category_plot_1_expr152_line_869 = v_axis_146_line_869 != null;
			int PROBE_END_LINE_869 = 871;
			if (category_plot_1_expr152_line_869) {
                axis.configure();
            }
        }
    }

    /**
     * Returns the range axis for the plot.  If the range axis for this plot is
     * null, then the method will return the parent plot's range axis (if there
     * is a parent plot).
     *
     * @return The range axis (possibly <code>null</code>).
     */
    public ValueAxis getRangeAxis() {
        return getRangeAxis(0);
    }

    /**
     * Returns a range axis.
     *
     * @param index  the axis index.
     *
     * @return The axis (<code>null</code> possible).
     */
    public ValueAxis getRangeAxis(int index) {
        ValueAxis result = null;
        int PROBE_START_LINE_895 = 897;
		int p_index_147_line_895 = index;
		org.jfree.chart.util.ObjectList f_range_axes_95_line_895 = this.rangeAxes;
		int category_plot_1_expr154_line_895 = f_range_axes_95_line_895.size();
		boolean category_plot_1_expr153_line_895 = p_index_147_line_895 < category_plot_1_expr154_line_895;
		int PROBE_END_LINE_895 = 897;
		if (category_plot_1_expr153_line_895) {
            int PROBE_START_LINE_896 = 896;
			org.jfree.chart.util.ObjectList f_range_axes_95_line_896 = this.rangeAxes;
			int p_index_147_line_896 = index;
			Object category_plot_1_expr159_line_896 = f_range_axes_95_line_896.get(p_index_147_line_896);
			int PROBE_END_LINE_896 = 896;
			result = (ValueAxis) category_plot_1_expr159_line_896;
        }
        int PROBE_START_LINE_898 = 904;
		org.jfree.chart.axis.ValueAxis v_result_148_line_898 = result;
		boolean category_plot_1_expr162_line_898 = v_result_148_line_898 == null;
		int PROBE_END_LINE_898 = 904;
		if (category_plot_1_expr162_line_898) {
            int PROBE_START_LINE_899 = 899;
			Plot category_plot_1_expr163_line_899 = getParent();
			int PROBE_END_LINE_899 = 899;
			Plot parent = category_plot_1_expr163_line_899;
            int PROBE_START_LINE_900 = 903;
			org.jfree.chart.plot.Plot v_parent_149_line_900 = parent;
			boolean category_plot_1_expr164_line_900 = v_parent_149_line_900 instanceof CategoryPlot;
			int PROBE_END_LINE_900 = 903;
			if (category_plot_1_expr164_line_900) {
                CategoryPlot cp = (CategoryPlot) parent;
                result = cp.getRangeAxis(index);
            }
        }
        int PROBE_START_LINE_905 = 905;
		org.jfree.chart.axis.ValueAxis v_result_148_line_905 = result;
		int PROBE_END_LINE_905 = 905;
		return v_result_148_line_905;
    }

    /**
     * Sets the range axis for the plot and sends a {@link PlotChangeEvent} to
     * all registered listeners.
     *
     * @param axis  the axis (<code>null</code> permitted).
     */
    public void setRangeAxis(ValueAxis axis) {
        setRangeAxis(0, axis);
    }

    /**
     * Sets a range axis and sends a {@link PlotChangeEvent} to all registered
     * listeners.
     *
     * @param index  the axis index.
     * @param axis  the axis.
     */
    public void setRangeAxis(int index, ValueAxis axis) {
        setRangeAxis(index, axis, true);
    }
        
    /**
     * Sets a range axis and, if requested, sends a {@link PlotChangeEvent} to 
     * all registered listeners.
     *
     * @param index  the axis index.
     * @param axis  the axis.
     * @param notify  notify listeners?
     */
    public void setRangeAxis(int index, ValueAxis axis, boolean notify) {
        ValueAxis existing = (ValueAxis) this.rangeAxes.get(index);
        if (existing != null) {
            existing.removeChangeListener(this);
        }
        if (axis != null) {
            axis.setPlot(this);
        }
        this.rangeAxes.set(index, axis);
        if (axis != null) {
            axis.configure();
            axis.addChangeListener(this);
        }
        if (notify) {
            fireChangeEvent();
        }
    }

    /**
     * Sets the range axes for this plot and sends a {@link PlotChangeEvent}
     * to all registered listeners.
     * 
     * @param axes  the axes (<code>null</code> not permitted).
     * 
     * @see #setDomainAxes(CategoryAxis[])
     */
    public void setRangeAxes(ValueAxis[] axes) {
        for (int i = 0; i < axes.length; i++) {
            setRangeAxis(i, axes[i], false);   
        }
        fireChangeEvent();
    }

    /**
     * Returns the index of the specified axis, or <code>-1</code> if the axis
     * is not assigned to the plot.
     *
     * @param axis  the axis (<code>null</code> not permitted).
     *
     * @return The axis index.
     * 
     * @see #getRangeAxis(int)
     * @see #getDomainAxisIndex(CategoryAxis)
     * 
     * @since 1.0.7
     */
    public int getRangeAxisIndex(ValueAxis axis) {
        if (axis == null) {
            throw new IllegalArgumentException("Null 'axis' argument.");
        }
        int result = this.rangeAxes.indexOf(axis);
        if (result < 0) { // try the parent plot
            Plot parent = getParent();
            if (parent instanceof CategoryPlot) {
                CategoryPlot p = (CategoryPlot) parent;
                result = p.getRangeAxisIndex(axis);
            }
        }
        return result;
    }

    /**
     * Returns the range axis location.
     *
     * @return The location (never <code>null</code>).
     */
    public AxisLocation getRangeAxisLocation() {
        return getRangeAxisLocation(0);
    }

    /**
     * Returns the location for a range axis.
     *
     * @param index  the axis index.
     *
     * @return The location.
     * 
     * @see #setRangeAxisLocation(int, AxisLocation)
     */
    public AxisLocation getRangeAxisLocation(int index) {
        AxisLocation result = null;
        if (index < this.rangeAxisLocations.size()) {
            result = (AxisLocation) this.rangeAxisLocations.get(index);
        }
        if (result == null) {
            result = AxisLocation.getOpposite(getRangeAxisLocation(0));
        }
        return result;
    }

    /**
     * Sets the location of the range axis and sends a {@link PlotChangeEvent}
     * to all registered listeners.
     *
     * @param location  the location (<code>null</code> not permitted).
     * 
     * @see #setRangeAxisLocation(AxisLocation, boolean)
     * @see #setDomainAxisLocation(AxisLocation)
     */
    public void setRangeAxisLocation(AxisLocation location) {
        // defer argument checking...
        setRangeAxisLocation(location, true);
    }

    /**
     * Sets the location of the range axis and, if requested, sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param location  the location (<code>null</code> not permitted).
     * @param notify  notify listeners?
     * 
     * @see #setDomainAxisLocation(AxisLocation, boolean)
     */
    public void setRangeAxisLocation(AxisLocation location, boolean notify) {
        int PROBE_START_LINE_1051 = 1051;
		org.jfree.chart.axis.AxisLocation p_location_160_line_1051 = location;
		boolean p_notify_161_line_1051 = notify;
		int PROBE_END_LINE_1051 = 1051;
		setRangeAxisLocation(0, p_location_160_line_1051, p_notify_161_line_1051);
    }

    /**
     * Sets the location for a range axis and sends a {@link PlotChangeEvent} 
     * to all registered listeners.
     *
     * @param index  the axis index.
     * @param location  the location.
     * 
     * @see #getRangeAxisLocation(int)
     * @see #setRangeAxisLocation(int, AxisLocation, boolean)
     */
    public void setRangeAxisLocation(int index, AxisLocation location) {
        setRangeAxisLocation(index, location, true);
    }

    /**
     * Sets the location for a range axis and sends a {@link PlotChangeEvent} 
     * to all registered listeners.
     *
     * @param index  the axis index.
     * @param location  the location.
     * @param notify  notify listeners?
     * 
     * @see #getRangeAxisLocation(int)
     * @see #setDomainAxisLocation(int, AxisLocation, boolean)
     */
    public void setRangeAxisLocation(int index, AxisLocation location, 
                                     boolean notify) {
        int PROBE_START_LINE_1081 = 1084;
										int p_index_164_line_1081 = index;
										boolean category_plot_1_expr167_line_1081 = p_index_164_line_1081 == 0;
										boolean category_plot_1_expr168_line_1081 = true;
										if (category_plot_1_expr167_line_1081) {
											org.jfree.chart.axis.AxisLocation p_location_165_line_1081 = location;
											category_plot_1_expr168_line_1081 = p_location_165_line_1081 == null;
										}
										boolean category_plot_1_expr166_line_1081 = category_plot_1_expr167_line_1081
												&& category_plot_1_expr168_line_1081;
										int PROBE_END_LINE_1081 = 1084;
		if (category_plot_1_expr166_line_1081) {
            throw new IllegalArgumentException(
                    "Null 'location' for index 0 not permitted.");
        }
        int PROBE_START_LINE_1085 = 1085;
		org.jfree.chart.util.ObjectList f_range_axis_locations_96_line_1085 = this.rangeAxisLocations;
		int p_index_164_line_1085 = index;
		org.jfree.chart.axis.AxisLocation p_location_165_line_1085 = location;
		int PROBE_END_LINE_1085 = 1085;
		f_range_axis_locations_96_line_1085.set(p_index_164_line_1085, p_location_165_line_1085);
        int PROBE_START_LINE_1086 = 1088;
		boolean p_notify_166_line_1086 = notify;
		int PROBE_END_LINE_1086 = 1088;
		if (p_notify_166_line_1086) {
            fireChangeEvent();
        }
    }

    /**
     * Returns the edge where the primary range axis is located.
     *
     * @return The edge (never <code>null</code>).
     */
    public RectangleEdge getRangeAxisEdge() {
        return getRangeAxisEdge(0);
    }

    /**
     * Returns the edge for a range axis.
     *
     * @param index  the axis index.
     *
     * @return The edge.
     */
    public RectangleEdge getRangeAxisEdge(int index) {
        AxisLocation location = getRangeAxisLocation(index);
        RectangleEdge result = Plot.resolveRangeAxisLocation(location, 
                this.orientation);
        if (result == null) {
            result = RectangleEdge.opposite(getRangeAxisEdge(0));
        }
        return result;
    }

    /**
     * Returns the number of range axes.
     *
     * @return The axis count.
     */
    public int getRangeAxisCount() {
        return this.rangeAxes.size();
    }

    /**
     * Clears the range axes from the plot and sends a {@link PlotChangeEvent} 
     * to all registered listeners.
     */
    public void clearRangeAxes() {
        for (int i = 0; i < this.rangeAxes.size(); i++) {
            ValueAxis axis = (ValueAxis) this.rangeAxes.get(i);
            if (axis != null) {
                axis.removeChangeListener(this);
            }
        }
        this.rangeAxes.clear();
        fireChangeEvent();
    }

    /**
     * Configures the range axes.
     */
    public void configureRangeAxes() {
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1146 = 1146;
			int v_i_168_line_1145 = i;
			org.jfree.chart.util.ObjectList f_range_axes_95_line_1145 = this.rangeAxes;
			int category_plot_1_expr174_line_1145 = f_range_axes_95_line_1145.size();
			boolean category_plot_1_expr173_line_1145 = v_i_168_line_1145 < category_plot_1_expr174_line_1145;
			if (!(category_plot_1_expr173_line_1145)) {
				break;
			}
			org.jfree.chart.util.ObjectList f_range_axes_95_line_1146 = this.rangeAxes;
			int v_i_168_line_1146 = i;
			Object category_plot_1_expr179_line_1146 = f_range_axes_95_line_1146.get(v_i_168_line_1146);
			int PROBE_END_LINE_1146 = 1146;
			ValueAxis axis = (ValueAxis) category_plot_1_expr179_line_1146;
            int PROBE_START_LINE_1147 = 1149;
			org.jfree.chart.axis.ValueAxis v_axis_169_line_1147 = axis;
			boolean category_plot_1_expr182_line_1147 = v_axis_169_line_1147 != null;
			int PROBE_END_LINE_1147 = 1149;
			if (category_plot_1_expr182_line_1147) {
                axis.configure();
            }
        }
    }

    /**
     * Returns the primary dataset for the plot.
     *
     * @return The primary dataset (possibly <code>null</code>).
     * 
     * @see #setDataset(CategoryDataset)
     */
    public CategoryDataset getDataset() {
        return getDataset(0);
    }

    /**
     * Returns the dataset at the given index.
     *
     * @param index  the dataset index.
     *
     * @return The dataset (possibly <code>null</code>).
     * 
     * @see #setDataset(int, CategoryDataset)
     */
    public CategoryDataset getDataset(int index) {
        CategoryDataset result = null;
        int PROBE_START_LINE_1175 = 1177;
		org.jfree.chart.util.ObjectList f_datasets_100_line_1175 = this.datasets;
		int category_plot_1_expr184_line_1175 = f_datasets_100_line_1175.size();
		int p_index_170_line_1175 = index;
		boolean category_plot_1_expr183_line_1175 = category_plot_1_expr184_line_1175 > p_index_170_line_1175;
		int PROBE_END_LINE_1175 = 1177;
		if (category_plot_1_expr183_line_1175) {
            int PROBE_START_LINE_1176 = 1176;
			org.jfree.chart.util.ObjectList f_datasets_100_line_1176 = this.datasets;
			int p_index_170_line_1176 = index;
			Object category_plot_1_expr189_line_1176 = f_datasets_100_line_1176.get(p_index_170_line_1176);
			int PROBE_END_LINE_1176 = 1176;
			result = (CategoryDataset) category_plot_1_expr189_line_1176;
        }
        int PROBE_START_LINE_1178 = 1178;
		org.jfree.data.category.CategoryDataset v_result_171_line_1178 = result;
		int PROBE_END_LINE_1178 = 1178;
		return v_result_171_line_1178;
    }

    /**
     * Sets the dataset for the plot, replacing the existing dataset, if there 
     * is one.  This method also calls the 
     * {@link #datasetChanged(DatasetChangeEvent)} method, which adjusts the 
     * axis ranges if necessary and sends a {@link PlotChangeEvent} to all 
     * registered listeners.
     *
     * @param dataset  the dataset (<code>null</code> permitted).
     * 
     * @see #getDataset()
     */
    public void setDataset(CategoryDataset dataset) {
        setDataset(0, dataset);
    }

    /**
     * Sets a dataset for the plot.
     *
     * @param index  the dataset index.
     * @param dataset  the dataset (<code>null</code> permitted).
     * 
     * @see #getDataset(int)
     */
    public void setDataset(int index, CategoryDataset dataset) {
        
        CategoryDataset existing = (CategoryDataset) this.datasets.get(index);
        if (existing != null) {
            existing.removeChangeListener(this);
        }
        this.datasets.set(index, dataset);
        if (dataset != null) {
            dataset.addChangeListener(this);
        }
        
        // send a dataset change event to self...
        DatasetChangeEvent event = new DatasetChangeEvent(this, dataset);
        datasetChanged(event);
        
    }

    /**
     * Returns the number of datasets.
     *
     * @return The number of datasets.
     * 
     * @since 1.0.2
     */
    public int getDatasetCount() {
        return this.datasets.size();
    }

    /**
     * Maps a dataset to a particular domain axis.
     * 
     * @param index  the dataset index (zero-based).
     * @param axisIndex  the axis index (zero-based).
     * 
     * @see #getDomainAxisForDataset(int)
     */
    public void mapDatasetToDomainAxis(int index, int axisIndex) {
        int PROBE_START_LINE_1241 = 1241;
		org.jfree.chart.util.ObjectList f_dataset_to_domain_axis_map_97_line_1241 = this.datasetToDomainAxisMap;
		int p_index_175_line_1241 = index;
		int p_axis_index_176_line_1241 = axisIndex;
		int PROBE_END_LINE_1241 = 1241;
		f_dataset_to_domain_axis_map_97_line_1241.set(p_index_175_line_1241, new Integer(p_axis_index_176_line_1241));  
        int PROBE_START_LINE_1243 = 1243;
		int p_index_175_line_1243 = index;
		org.jfree.data.category.CategoryDataset category_plot_1_expr199_line_1243 = getDataset(p_index_175_line_1243);
		int PROBE_END_LINE_1243 = 1243;
		// fake a dataset change event to update axes...
        datasetChanged(new DatasetChangeEvent(this, category_plot_1_expr199_line_1243));  
    }

    /**
     * Returns the domain axis for a dataset.  You can change the axis for a 
     * dataset using the {@link #mapDatasetToDomainAxis(int, int)} method.
     * 
     * @param index  the dataset index.
     * 
     * @return The domain axis.
     * 
     * @see #mapDatasetToDomainAxis(int, int)
     */
    public CategoryAxis getDomainAxisForDataset(int index) {
        CategoryAxis result = getDomainAxis();
        Integer axisIndex = (Integer) this.datasetToDomainAxisMap.get(index);
        if (axisIndex != null) {
            result = getDomainAxis(axisIndex.intValue());
        }
        return result;    
    }
    
    /**
     * Maps a dataset to a particular range axis.
     * 
     * @param index  the dataset index (zero-based).
     * @param axisIndex  the axis index (zero-based).
     * 
     * @see #getRangeAxisForDataset(int)
     */
    public void mapDatasetToRangeAxis(int index, int axisIndex) {
        int PROBE_START_LINE_1274 = 1274;
		org.jfree.chart.util.ObjectList f_dataset_to_range_axis_map_98_line_1274 = this.datasetToRangeAxisMap;
		int p_index_178_line_1274 = index;
		int p_axis_index_179_line_1274 = axisIndex;
		int PROBE_END_LINE_1274 = 1274;
		f_dataset_to_range_axis_map_98_line_1274.set(p_index_178_line_1274, new Integer(p_axis_index_179_line_1274));
        int PROBE_START_LINE_1276 = 1276;
		int p_index_178_line_1276 = index;
		org.jfree.data.category.CategoryDataset category_plot_1_expr207_line_1276 = getDataset(p_index_178_line_1276);
		int PROBE_END_LINE_1276 = 1276;
		// fake a dataset change event to update axes...
        datasetChanged(new DatasetChangeEvent(this, category_plot_1_expr207_line_1276));  
    }

    /**
     * Returns the range axis for a dataset.  You can change the axis for a 
     * dataset using the {@link #mapDatasetToRangeAxis(int, int)} method.
     * 
     * @param index  the dataset index.
     * 
     * @return The range axis.
     * 
     * @see #mapDatasetToRangeAxis(int, int)
     */
    public ValueAxis getRangeAxisForDataset(int index) {
        ValueAxis result = getRangeAxis();
        Integer axisIndex = (Integer) this.datasetToRangeAxisMap.get(index);
        if (axisIndex != null) {
            result = getRangeAxis(axisIndex.intValue());
        }
        return result;    
    }
    
    /**
     * Returns a reference to the renderer for the plot.
     *
     * @return The renderer.
     * 
     * @see #setRenderer(CategoryItemRenderer)
     */
    public CategoryItemRenderer getRenderer() {
        return getRenderer(0);
    }

    /**
     * Returns the renderer at the given index.
     *
     * @param index  the renderer index.
     *
     * @return The renderer (possibly <code>null</code>).
     * 
     * @see #setRenderer(int, CategoryItemRenderer)
     */
    public CategoryItemRenderer getRenderer(int index) {
        CategoryItemRenderer result = null;
        if (this.renderers.size() > index) {
            result = (CategoryItemRenderer) this.renderers.get(index);
        }
        return result;
    }
    
    /**
     * Sets the renderer at index 0 (sometimes referred to as the "primary" 
     * renderer) and sends a {@link PlotChangeEvent} to all registered 
     * listeners.
     *
     * @param renderer  the renderer (<code>null</code> permitted.
     * 
     * @see #getRenderer()
     */
    public void setRenderer(CategoryItemRenderer renderer) {
        setRenderer(0, renderer, true);
    }

    /**
     * Sets the renderer at index 0 (sometimes referred to as the "primary" 
     * renderer) and, if requested, sends a {@link PlotChangeEvent} to all 
     * registered listeners.
     * <p>
     * You can set the renderer to <code>null</code>, but this is not 
     * recommended because:
     * <ul>
     *   <li>no data will be displayed;</li>
     *   <li>the plot background will not be painted;</li>
     * </ul>
     *
     * @param renderer  the renderer (<code>null</code> permitted).
     * @param notify  notify listeners?
     * 
     * @see #getRenderer()
     */
    public void setRenderer(CategoryItemRenderer renderer, boolean notify) {
        setRenderer(0, renderer, notify);
    }

    /**
     * Sets the renderer at the specified index and sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param index  the index.
     * @param renderer  the renderer (<code>null</code> permitted).
     * 
     * @see #getRenderer(int)
     * @see #setRenderer(int, CategoryItemRenderer, boolean)
     */
    public void setRenderer(int index, CategoryItemRenderer renderer) {
        setRenderer(index, renderer, true);   
    }

    /**
     * Sets a renderer.  A {@link PlotChangeEvent} is sent to all registered 
     * listeners.
     *
     * @param index  the index.
     * @param renderer  the renderer (<code>null</code> permitted).
     * @param notify  notify listeners?
     * 
     * @see #getRenderer(int)
     */
    public void setRenderer(int index, CategoryItemRenderer renderer, 
                            boolean notify) {
        
        // stop listening to the existing renderer...
        CategoryItemRenderer existing 
            = (CategoryItemRenderer) this.renderers.get(index);
        if (existing != null) {
            existing.removeChangeListener(this);
        }
        
        // register the new renderer...
        this.renderers.set(index, renderer);
        if (renderer != null) {
            renderer.setPlot(this);
            renderer.addChangeListener(this);
        }
        
        configureDomainAxes();
        configureRangeAxes();
        
        if (notify) {
            fireChangeEvent();
        }
    }

    /**
     * Sets the renderers for this plot and sends a {@link PlotChangeEvent}
     * to all registered listeners.
     * 
     * @param renderers  the renderers.
     */
    public void setRenderers(CategoryItemRenderer[] renderers) {
        for (int i = 0; i < renderers.length; i++) {
            setRenderer(i, renderers[i], false);   
        }
        fireChangeEvent();
    }
    
    /**
     * Returns the renderer for the specified dataset.  If the dataset doesn't
     * belong to the plot, this method will return <code>null</code>.
     * 
     * @param dataset  the dataset (<code>null</code> permitted).
     * 
     * @return The renderer (possibly <code>null</code>).
     */
    public CategoryItemRenderer getRendererForDataset(CategoryDataset dataset) {
        CategoryItemRenderer result = null;
        for (int i = 0; i < this.datasets.size(); i++) {
            if (this.datasets.get(i) == dataset) {
                result = (CategoryItemRenderer) this.renderers.get(i);   
                break;
            }
        }
        return result;
    }
    
    /**
     * Returns the index of the specified renderer, or <code>-1</code> if the
     * renderer is not assigned to this plot.
     * 
     * @param renderer  the renderer (<code>null</code> permitted).
     * 
     * @return The renderer index.
     */
    public int getIndexOf(CategoryItemRenderer renderer) {
        return this.renderers.indexOf(renderer);
    }

    /**
     * Returns the dataset rendering order.
     *
     * @return The order (never <code>null</code>).
     * 
     * @see #setDatasetRenderingOrder(DatasetRenderingOrder)
     */
    public DatasetRenderingOrder getDatasetRenderingOrder() {
        return this.renderingOrder;
    }

    /**
     * Sets the rendering order and sends a {@link PlotChangeEvent} to all 
     * registered listeners.  By default, the plot renders the primary dataset 
     * last (so that the primary dataset overlays the secondary datasets).  You 
     * can reverse this if you want to.
     *
     * @param order  the rendering order (<code>null</code> not permitted).
     * 
     * @see #getDatasetRenderingOrder()
     */
    public void setDatasetRenderingOrder(DatasetRenderingOrder order) {
        if (order == null) {
            throw new IllegalArgumentException("Null 'order' argument.");   
        }
        this.renderingOrder = order;
        fireChangeEvent();
    }

    /**
     * Returns the order in which the columns are rendered.  The default value
     * is <code>SortOrder.ASCENDING</code>.
     * 
     * @return The column rendering order (never <code>null</code).
     * 
     * @see #setColumnRenderingOrder(SortOrder)
     */    
    public SortOrder getColumnRenderingOrder() {
        return this.columnRenderingOrder;
    }
    
    /**
     * Sets the column order in which the items in each dataset should be 
     * rendered and sends a {@link PlotChangeEvent} to all registered 
     * listeners.  Note that this affects the order in which items are drawn, 
     * NOT their position in the chart.
     * 
     * @param order  the order (<code>null</code> not permitted).
     * 
     * @see #getColumnRenderingOrder()
     * @see #setRowRenderingOrder(SortOrder)
     */
    public void setColumnRenderingOrder(SortOrder order) {
        if (order == null) {
            throw new IllegalArgumentException("Null 'order' argument.");
        }
        this.columnRenderingOrder = order;
        fireChangeEvent();
    }
    
    /**
     * Returns the order in which the rows should be rendered.  The default 
     * value is <code>SortOrder.ASCENDING</code>.
     * 
     * @return The order (never <code>null</code>).
     * 
     * @see #setRowRenderingOrder(SortOrder)
     */
    public SortOrder getRowRenderingOrder() {
        return this.rowRenderingOrder;
    }

    /**
     * Sets the row order in which the items in each dataset should be 
     * rendered and sends a {@link PlotChangeEvent} to all registered 
     * listeners.  Note that this affects the order in which items are drawn, 
     * NOT their position in the chart.
     * 
     * @param order  the order (<code>null</code> not permitted).
     * 
     * @see #getRowRenderingOrder()
     * @see #setColumnRenderingOrder(SortOrder)
     */
    public void setRowRenderingOrder(SortOrder order) {
        if (order == null) {
            throw new IllegalArgumentException("Null 'order' argument.");
        }
        this.rowRenderingOrder = order;
        fireChangeEvent();
    }
    
    /**
     * Returns the flag that controls whether the domain grid-lines are visible.
     *
     * @return The <code>true</code> or <code>false</code>.
     * 
     * @see #setDomainGridlinesVisible(boolean)
     */
    public boolean isDomainGridlinesVisible() {
        return this.domainGridlinesVisible;
    }

    /**
     * Sets the flag that controls whether or not grid-lines are drawn against 
     * the domain axis.
     * <p>
     * If the flag value changes, a {@link PlotChangeEvent} is sent to all 
     * registered listeners.
     *
     * @param visible  the new value of the flag.
     * 
     * @see #isDomainGridlinesVisible()
     */
    public void setDomainGridlinesVisible(boolean visible) {
        if (this.domainGridlinesVisible != visible) {
            this.domainGridlinesVisible = visible;
            fireChangeEvent();
        }
    }

    /**
     * Returns the position used for the domain gridlines.
     * 
     * @return The gridline position (never <code>null</code>).
     * 
     * @see #setDomainGridlinePosition(CategoryAnchor)
     */
    public CategoryAnchor getDomainGridlinePosition() {
        return this.domainGridlinePosition;
    }

    /**
     * Sets the position used for the domain gridlines and sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     * 
     * @param position  the position (<code>null</code> not permitted).
     * 
     * @see #getDomainGridlinePosition()
     */
    public void setDomainGridlinePosition(CategoryAnchor position) {
        if (position == null) {
            throw new IllegalArgumentException("Null 'position' argument.");   
        }
        this.domainGridlinePosition = position;
        fireChangeEvent();
    }

    /**
     * Returns the stroke used to draw grid-lines against the domain axis.
     *
     * @return The stroke (never <code>null</code>).
     * 
     * @see #setDomainGridlineStroke(Stroke)
     */
    public Stroke getDomainGridlineStroke() {
        return this.domainGridlineStroke;
    }

    /**
     * Sets the stroke used to draw grid-lines against the domain axis and
     * sends a {@link PlotChangeEvent} to all registered listeners.
     *
     * @param stroke  the stroke (<code>null</code> not permitted).
     * 
     * @see #getDomainGridlineStroke()
     */
    public void setDomainGridlineStroke(Stroke stroke) {
        if (stroke == null) {
            throw new IllegalArgumentException("Null 'stroke' not permitted.");
        }
        this.domainGridlineStroke = stroke;
        fireChangeEvent();
    }

    /**
     * Returns the paint used to draw grid-lines against the domain axis.
     *
     * @return The paint (never <code>null</code>).
     * 
     * @see #setDomainGridlinePaint(Paint)
     */
    public Paint getDomainGridlinePaint() {
        return this.domainGridlinePaint;
    }

    /**
     * Sets the paint used to draw the grid-lines (if any) against the domain 
     * axis and sends a {@link PlotChangeEvent} to all registered listeners.
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
        fireChangeEvent();
    }

    /**
     * Returns the flag that controls whether the range grid-lines are visible.
     *
     * @return The flag.
     * 
     * @see #setRangeGridlinesVisible(boolean)
     */
    public boolean isRangeGridlinesVisible() {
        return this.rangeGridlinesVisible;
    }

    /**
     * Sets the flag that controls whether or not grid-lines are drawn against 
     * the range axis.  If the flag changes value, a {@link PlotChangeEvent} is 
     * sent to all registered listeners.
     *
     * @param visible  the new value of the flag.
     * 
     * @see #isRangeGridlinesVisible()
     */
    public void setRangeGridlinesVisible(boolean visible) {
        if (this.rangeGridlinesVisible != visible) {
            this.rangeGridlinesVisible = visible;
            fireChangeEvent();
        }
    }

    /**
     * Returns the stroke used to draw the grid-lines against the range axis.
     *
     * @return The stroke (never <code>null</code>).
     * 
     * @see #setRangeGridlineStroke(Stroke)
     */
    public Stroke getRangeGridlineStroke() {
        return this.rangeGridlineStroke;
    }

    /**
     * Sets the stroke used to draw the grid-lines against the range axis and 
     * sends a {@link PlotChangeEvent} to all registered listeners.
     *
     * @param stroke  the stroke (<code>null</code> not permitted).
     * 
     * @see #getRangeGridlineStroke()
     */
    public void setRangeGridlineStroke(Stroke stroke) {
        if (stroke == null) {
            throw new IllegalArgumentException("Null 'stroke' argument.");   
        }
        this.rangeGridlineStroke = stroke;
        fireChangeEvent();
    }

    /**
     * Returns the paint used to draw the grid-lines against the range axis.
     *
     * @return The paint (never <code>null</code>).
     * 
     * @see #setRangeGridlinePaint(Paint)
     */
    public Paint getRangeGridlinePaint() {
        return this.rangeGridlinePaint;
    }

    /**
     * Sets the paint used to draw the grid lines against the range axis and 
     * sends a {@link PlotChangeEvent} to all registered listeners.
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
        fireChangeEvent();
    }
    
    /**
     * Returns the fixed legend items, if any.
     * 
     * @return The legend items (possibly <code>null</code>).
     * 
     * @see #setFixedLegendItems(LegendItemCollection)
     */
    public LegendItemCollection getFixedLegendItems() {
        return this.fixedLegendItems;   
    }

    /**
     * Sets the fixed legend items for the plot.  Leave this set to 
     * <code>null</code> if you prefer the legend items to be created 
     * automatically.
     * 
     * @param items  the legend items (<code>null</code> permitted).
     * 
     * @see #getFixedLegendItems()
     */
    public void setFixedLegendItems(LegendItemCollection items) {
        this.fixedLegendItems = items;
        fireChangeEvent();
    }
    
    /**
     * Returns the legend items for the plot.  By default, this method creates 
     * a legend item for each series in each of the datasets.  You can change 
     * this behaviour by overriding this method.
     *
     * @return The legend items.
     */
    public LegendItemCollection getLegendItems() {
        LegendItemCollection result = this.fixedLegendItems;
        if (result == null) {
            result = new LegendItemCollection();
            // get the legend items for the datasets...
            int count = this.datasets.size();
            for (int datasetIndex = 0; datasetIndex < count; datasetIndex++) {
                CategoryDataset dataset = getDataset(datasetIndex);
                if (dataset != null) {
                    CategoryItemRenderer renderer = getRenderer(datasetIndex);
                    if (renderer != null) {
                        int seriesCount = dataset.getRowCount();
                        for (int i = 0; i < seriesCount; i++) {
                            LegendItem item = renderer.getLegendItem(
                                    datasetIndex, i);
                            if (item != null) {
                                result.add(item);
                            }
                        }
                    }
                }
            }
        }
        return result;
    }

    /**
     * Handles a 'click' on the plot by updating the anchor value.
     *
     * @param x  x-coordinate of the click (in Java2D space).
     * @param y  y-coordinate of the click (in Java2D space).
     * @param info  information about the plot's dimensions.
     *
     */
    public void handleClick(int x, int y, PlotRenderingInfo info) {

        Rectangle2D dataArea = info.getDataArea();
        if (dataArea.contains(x, y)) {
            // set the anchor value for the range axis...
            double java2D = 0.0;
            if (this.orientation == PlotOrientation.HORIZONTAL) {
                java2D = x;
            }
            else if (this.orientation == PlotOrientation.VERTICAL) {
                java2D = y;
            }
            RectangleEdge edge = Plot.resolveRangeAxisLocation(
                    getRangeAxisLocation(), this.orientation);
            double value = getRangeAxis().java2DToValue(
                    java2D, info.getDataArea(), edge);
            setAnchorValue(value);
            setRangeCrosshairValue(value);
        }

    }

    /**
     * Zooms (in or out) on the plot's value axis.
     * <p>
     * If the value 0.0 is passed in as the zoom percent, the auto-range
     * calculation for the axis is restored (which sets the range to include
     * the minimum and maximum data values, thus displaying all the data).
     *
     * @param percent  the zoom amount.
     */
    public void zoom(double percent) {

        if (percent > 0.0) {
            double range = getRangeAxis().getRange().getLength();
            double scaledRange = range * percent;
            getRangeAxis().setRange(this.anchorValue - scaledRange / 2.0,
                    this.anchorValue + scaledRange / 2.0);
        }
        else {
            getRangeAxis().setAutoRange(true);
        }

    }

    /**
     * Receives notification of a change to the plot's dataset.
     * <P>
     * The range axis bounds will be recalculated if necessary.
     *
     * @param event  information about the event (not used here).
     */
    public void datasetChanged(DatasetChangeEvent event) {

        int PROBE_START_LINE_1855 = 1855;
		org.jfree.chart.util.ObjectList f_range_axes_95_line_1855 = this.rangeAxes;
		int category_plot_1_expr208_line_1855 = f_range_axes_95_line_1855.size();
		int PROBE_END_LINE_1855 = 1855;
		int count = category_plot_1_expr208_line_1855;
        for (int axisIndex = 0; true; axisIndex++) {
            int PROBE_START_LINE_1857 = 1857;
			int v_axis_index_210_line_1856 = axisIndex;
			int v_count_209_line_1856 = count;
			boolean category_plot_1_expr212_line_1856 = v_axis_index_210_line_1856 < v_count_209_line_1856;
			if (!(category_plot_1_expr212_line_1856)) {
				break;
			}
			int v_axis_index_210_line_1857 = axisIndex;
			ValueAxis category_plot_1_expr214_line_1857 = getRangeAxis(v_axis_index_210_line_1857);
			int PROBE_END_LINE_1857 = 1857;
			ValueAxis yAxis = category_plot_1_expr214_line_1857;
            int PROBE_START_LINE_1858 = 1860;
			org.jfree.chart.axis.ValueAxis v_y_axis_211_line_1858 = yAxis;
			boolean category_plot_1_expr215_line_1858 = v_y_axis_211_line_1858 != null;
			int PROBE_END_LINE_1858 = 1860;
			if (category_plot_1_expr215_line_1858) {
                yAxis.configure();
            }
        }
        int PROBE_START_LINE_1862 = 1869;
		org.jfree.chart.plot.Plot category_plot_1_expr217_line_1862 = getParent();
		boolean category_plot_1_expr216_line_1862 = category_plot_1_expr217_line_1862 != null;
		int PROBE_END_LINE_1862 = 1869;
		if (category_plot_1_expr216_line_1862) {
            getParent().datasetChanged(event);
        }
        else {
            PlotChangeEvent e = new PlotChangeEvent(this);
            int PROBE_START_LINE_1867 = 1867;
			org.jfree.chart.event.PlotChangeEvent v_e_212_line_1867 = e;
			org.jfree.chart.event.ChartChangeEventType q_dataset_updated_16_line_1867 = ChartChangeEventType.DATASET_UPDATED;
			int PROBE_END_LINE_1867 = 1867;
			v_e_212_line_1867.setType(q_dataset_updated_16_line_1867);
            int PROBE_START_LINE_1868 = 1868;
			org.jfree.chart.event.PlotChangeEvent v_e_212_line_1868 = e;
			int PROBE_END_LINE_1868 = 1868;
			notifyListeners(v_e_212_line_1868);
        }

    }

    /**
     * Receives notification of a renderer change event.
     *
     * @param event  the event.
     */
    public void rendererChanged(RendererChangeEvent event) {
        Plot parent = getParent();
        if (parent != null) {
            if (parent instanceof RendererChangeListener) {
                RendererChangeListener rcl = (RendererChangeListener) parent;
                rcl.rendererChanged(event);
            }
            else {
                // this should never happen with the existing code, but throw 
                // an exception in case future changes make it possible...
                throw new RuntimeException(
                    "The renderer has changed and I don't know what to do!");
            }
        }
        else {
            configureRangeAxes();
            PlotChangeEvent e = new PlotChangeEvent(this);
            notifyListeners(e);
        }
    }
    
    /**
     * Adds a marker for display (in the foreground) against the domain axis and
     * sends a {@link PlotChangeEvent} to all registered listeners. Typically a 
     * marker will be drawn by the renderer as a line perpendicular to the 
     * domain axis, however this is entirely up to the renderer.
     *
     * @param marker  the marker (<code>null</code> not permitted).
     * 
     * @see #removeDomainMarker(Marker)
     */
    public void addDomainMarker(CategoryMarker marker) {
        addDomainMarker(marker, Layer.FOREGROUND); 
    }
        
    /**
     * Adds a marker for display against the domain axis and sends a 
     * {@link PlotChangeEvent} to all registered listeners.  Typically a marker 
     * will be drawn by the renderer as a line perpendicular to the domain 
     * axis, however this is entirely up to the renderer.
     *
     * @param marker  the marker (<code>null</code> not permitted).
     * @param layer  the layer (foreground or background) (<code>null</code> 
     *               not permitted).
     *               
     * @see #removeDomainMarker(Marker, Layer)
     */
    public void addDomainMarker(CategoryMarker marker, Layer layer) {
        addDomainMarker(0, marker, layer);
    }

    /**
     * Adds a marker for display by a particular renderer and sends a
     * {@link PlotChangeEvent} to all registered listeners.
     * <P>
     * Typically a marker will be drawn by the renderer as a line perpendicular
     * to a domain axis, however this is entirely up to the renderer.
     *
     * @param index  the renderer index.
     * @param marker  the marker (<code>null</code> not permitted).
     * @param layer  the layer (<code>null</code> not permitted).
     * 
     * @see #removeDomainMarker(int, Marker, Layer)
     */
    public void addDomainMarker(int index, CategoryMarker marker, Layer layer) {
        addDomainMarker(index, marker, layer, true);
    }
    	
    /**
     * Adds a marker for display by a particular renderer and, if requested,
     * sends a {@link PlotChangeEvent} to all registered listeners.
     * <P>
     * Typically a marker will be drawn by the renderer as a line perpendicular
     * to a domain axis, however this is entirely up to the renderer.
     *
     * @param index  the renderer index.
     * @param marker  the marker (<code>null</code> not permitted).
     * @param layer  the layer (<code>null</code> not permitted).
     * @param notify  notify listeners?
     * 
     * @since 1.0.10
     * 
     * @see #removeDomainMarker(int, Marker, Layer, boolean)
     */
    public void addDomainMarker(int index, CategoryMarker marker, Layer layer,
    		boolean notify) {
        if (marker == null) {
            throw new IllegalArgumentException("Null 'marker' not permitted.");
        }
        if (layer == null) {
            throw new IllegalArgumentException("Null 'layer' not permitted.");
        }
        Collection markers;
        if (layer == Layer.FOREGROUND) {
            markers = (Collection) this.foregroundDomainMarkers.get(
                    new Integer(index));
            if (markers == null) {
                markers = new java.util.ArrayList();
                this.foregroundDomainMarkers.put(new Integer(index), markers);
            }
            markers.add(marker);
        }
        else if (layer == Layer.BACKGROUND) {
            markers = (Collection) this.backgroundDomainMarkers.get(
                    new Integer(index));
            if (markers == null) {
                markers = new java.util.ArrayList();
                this.backgroundDomainMarkers.put(new Integer(index), markers);
            }
            markers.add(marker);            
        }
        marker.addChangeListener(this);
        if (notify) {
            fireChangeEvent();
        }
    }

    /**
     * Clears all the domain markers for the plot and sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     * 
     * @see #clearRangeMarkers()
     */
    public void clearDomainMarkers() {
        if (this.backgroundDomainMarkers != null) {
            Set keys = this.backgroundDomainMarkers.keySet();
            Iterator iterator = keys.iterator();
            while (iterator.hasNext()) {
                Integer key = (Integer) iterator.next();
                clearDomainMarkers(key.intValue());
            }
            this.backgroundDomainMarkers.clear();
        }
        if (this.foregroundDomainMarkers != null) {
            Set keys = this.foregroundDomainMarkers.keySet();
            Iterator iterator = keys.iterator();
            while (iterator.hasNext()) {
                Integer key = (Integer) iterator.next();
                clearDomainMarkers(key.intValue());
            }
            this.foregroundDomainMarkers.clear();
        }
        fireChangeEvent();
    }

    /**
     * Returns the list of domain markers (read only) for the specified layer.
     *
     * @param layer  the layer (foreground or background).
     * 
     * @return The list of domain markers.
     */
    public Collection getDomainMarkers(Layer layer) {
        return getDomainMarkers(0, layer);
    }

    /**
     * Returns a collection of domain markers for a particular renderer and 
     * layer.
     * 
     * @param index  the renderer index.
     * @param layer  the layer.
     * 
     * @return A collection of markers (possibly <code>null</code>).
     */
    public Collection getDomainMarkers(int index, Layer layer) {
        Collection result = null;
        Integer key = new Integer(index);
        if (layer == Layer.FOREGROUND) {
            result = (Collection) this.foregroundDomainMarkers.get(key);
        }    
        else if (layer == Layer.BACKGROUND) {
            result = (Collection) this.backgroundDomainMarkers.get(key);
        }
        if (result != null) {
            result = Collections.unmodifiableCollection(result);
        }
        return result;
    }
    
    /**
     * Clears all the domain markers for the specified renderer.
     * 
     * @param index  the renderer index.
     * 
     * @see #clearRangeMarkers(int)
     */
    public void clearDomainMarkers(int index) {
        Integer key = new Integer(index);
        if (this.backgroundDomainMarkers != null) {
            Collection markers 
                = (Collection) this.backgroundDomainMarkers.get(key);
            if (markers != null) {
                Iterator iterator = markers.iterator();
                while (iterator.hasNext()) {
                    Marker m = (Marker) iterator.next();
                    m.removeChangeListener(this);
                }
                markers.clear();
            }
        }
        if (this.foregroundDomainMarkers != null) {
            Collection markers 
                = (Collection) this.foregroundDomainMarkers.get(key);
            if (markers != null) {
                Iterator iterator = markers.iterator();
                while (iterator.hasNext()) {
                    Marker m = (Marker) iterator.next();
                    m.removeChangeListener(this);
                }
                markers.clear();
            }
        }
        fireChangeEvent();
    }
    
    /**
     * Removes a marker for the domain axis and sends a {@link PlotChangeEvent} 
     * to all registered listeners.
     *
     * @param marker  the marker.
     *
     * @return A boolean indicating whether or not the marker was actually 
     *         removed.
     *
     * @since 1.0.7
     */
    public boolean removeDomainMarker(Marker marker) {
        int PROBE_START_LINE_2106 = 2106;
		org.jfree.chart.plot.Marker p_marker_228_line_2106 = marker;
		org.jfree.chart.util.Layer q_foreground_17_line_2106 = Layer.FOREGROUND;
		boolean category_plot_1_expr222_line_2106 = removeDomainMarker(p_marker_228_line_2106,
				q_foreground_17_line_2106);
		int PROBE_END_LINE_2106 = 2106;
		return category_plot_1_expr222_line_2106;
    }

    /**
     * Removes a marker for the domain axis in the specified layer and sends a
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param marker the marker (<code>null</code> not permitted).
     * @param layer the layer (foreground or background).
     *
     * @return A boolean indicating whether or not the marker was actually 
     *         removed.
     *
     * @since 1.0.7
     */
    public boolean removeDomainMarker(Marker marker, Layer layer) {
        int PROBE_START_LINE_2122 = 2122;
		org.jfree.chart.plot.Marker p_marker_229_line_2122 = marker;
		org.jfree.chart.util.Layer p_layer_230_line_2122 = layer;
		boolean category_plot_1_expr223_line_2122 = removeDomainMarker(0, p_marker_229_line_2122,
				p_layer_230_line_2122);
		int PROBE_END_LINE_2122 = 2122;
		return category_plot_1_expr223_line_2122;
    }

    /**
     * Removes a marker for a specific dataset/renderer and sends a
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param index the dataset/renderer index.
     * @param marker the marker.
     * @param layer the layer (foreground or background).
     *
     * @return A boolean indicating whether or not the marker was actually 
     *         removed.
     *
     * @since 1.0.7
     */
    public boolean removeDomainMarker(int index, Marker marker, Layer layer) {
    	int PROBE_START_LINE_2139 = 2139;
		int p_index_231_line_2139 = index;
		org.jfree.chart.plot.Marker p_marker_232_line_2139 = marker;
		org.jfree.chart.util.Layer p_layer_233_line_2139 = layer;
		boolean category_plot_1_expr224_line_2139 = removeDomainMarker(p_index_231_line_2139, p_marker_232_line_2139,
				p_layer_233_line_2139, true);
		int PROBE_END_LINE_2139 = 2139;
		return category_plot_1_expr224_line_2139;
    }

    /**
     * Removes a marker for a specific dataset/renderer and, if requested, 
     * sends a {@link PlotChangeEvent} to all registered listeners.
     *
     * @param index the dataset/renderer index.
     * @param marker the marker.
     * @param layer the layer (foreground or background).
     *
     * @return A boolean indicating whether or not the marker was actually 
     *         removed.
     *
     * @since 1.0.10
     */
    public boolean removeDomainMarker(int index, Marker marker, Layer layer,
    		boolean notify) {
        ArrayList markers = null;
        int PROBE_START_LINE_2158 = 2165;
		org.jfree.chart.util.Layer p_layer_236_line_2158 = layer;
		org.jfree.chart.util.Layer q_foreground_18_line_2158 = Layer.FOREGROUND;
		boolean category_plot_1_expr225_line_2158 = p_layer_236_line_2158 == q_foreground_18_line_2158;
		int PROBE_END_LINE_2158 = 2165;
		if (category_plot_1_expr225_line_2158) {
            int PROBE_START_LINE_2159 = 2160;
			java.util.Map f_foreground_domain_markers_112_line_2159 = this.foregroundDomainMarkers;
			Object category_plot_1_expr228_line_2159 = f_foreground_domain_markers_112_line_2159
					.get(new Integer(index));
			int PROBE_END_LINE_2159 = 2160;
			markers = (ArrayList) category_plot_1_expr228_line_2159;
        }
        else {
            markers = (ArrayList) this.backgroundDomainMarkers.get(new Integer(
                    index));
        }
        int PROBE_START_LINE_2166 = 2166;
		java.util.ArrayList v_markers_238_line_2166 = markers;
		org.jfree.chart.plot.Marker p_marker_235_line_2166 = marker;
		boolean category_plot_1_expr232_line_2166 = v_markers_238_line_2166.remove(p_marker_235_line_2166);
		int PROBE_END_LINE_2166 = 2166;
		boolean removed = category_plot_1_expr232_line_2166;
        if (removed && notify) {
            fireChangeEvent();
        }
        return removed;
    }
    
    /**
     * Adds a marker for display (in the foreground) against the range axis and
     * sends a {@link PlotChangeEvent} to all registered listeners. Typically a 
     * marker will be drawn by the renderer as a line perpendicular to the 
     * range axis, however this is entirely up to the renderer.
     *
     * @param marker  the marker (<code>null</code> not permitted).
     * 
     * @see #removeRangeMarker(Marker)
     */
    public void addRangeMarker(Marker marker) {
        addRangeMarker(marker, Layer.FOREGROUND); 
    }
        
    /**
     * Adds a marker for display against the range axis and sends a 
     * {@link PlotChangeEvent} to all registered listeners.  Typically a marker 
     * will be drawn by the renderer as a line perpendicular to the range axis, 
     * however this is entirely up to the renderer.
     *
     * @param marker  the marker (<code>null</code> not permitted).
     * @param layer  the layer (foreground or background) (<code>null</code> 
     *               not permitted).
     *               
     * @see #removeRangeMarker(Marker, Layer)
     */
    public void addRangeMarker(Marker marker, Layer layer) {
        int PROBE_START_LINE_2200 = 2200;
		org.jfree.chart.plot.Marker p_marker_241_line_2200 = marker;
		org.jfree.chart.util.Layer p_layer_242_line_2200 = layer;
		int PROBE_END_LINE_2200 = 2200;
		addRangeMarker(0, p_marker_241_line_2200, p_layer_242_line_2200);
    }

    /**
     * Adds a marker for display by a particular renderer and sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     * <P>
     * Typically a marker will be drawn by the renderer as a line perpendicular
     * to a range axis, however this is entirely up to the renderer.
     *
     * @param index  the renderer index.
     * @param marker  the marker.
     * @param layer  the layer.
     * 
     * @see #removeRangeMarker(int, Marker, Layer)
     */
    public void addRangeMarker(int index, Marker marker, Layer layer) {
    	int PROBE_START_LINE_2217 = 2217;
		int p_index_243_line_2217 = index;
		org.jfree.chart.plot.Marker p_marker_244_line_2217 = marker;
		org.jfree.chart.util.Layer p_layer_245_line_2217 = layer;
		int PROBE_END_LINE_2217 = 2217;
		addRangeMarker(p_index_243_line_2217, p_marker_244_line_2217, p_layer_245_line_2217, true);
    }

    /**
     * Adds a marker for display by a particular renderer and sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     * <P>
     * Typically a marker will be drawn by the renderer as a line perpendicular
     * to a range axis, however this is entirely up to the renderer.
     *
     * @param index  the renderer index.
     * @param marker  the marker.
     * @param layer  the layer.
     * @param notify  notify listeners?
     * 
     * @since 1.0.10
     * 
     * @see #removeRangeMarker(int, Marker, Layer, boolean)
     */
    public void addRangeMarker(int index, Marker marker, Layer layer,
    		boolean notify) {
        Collection markers = null;
        int PROBE_START_LINE_2239 = 2256;
		org.jfree.chart.util.Layer p_layer_248_line_2239 = layer;
		org.jfree.chart.util.Layer q_foreground_18_line_2239 = Layer.FOREGROUND;
		boolean category_plot_1_expr235_line_2239 = p_layer_248_line_2239 == q_foreground_18_line_2239;
		int PROBE_END_LINE_2239 = 2256;
		if (category_plot_1_expr235_line_2239) {
            markers = (Collection) this.foregroundRangeMarkers.get(
                    new Integer(index));
            if (markers == null) {
                markers = new java.util.ArrayList();
                this.foregroundRangeMarkers.put(new Integer(index), markers);
            }
            markers.add(marker);
        } else {
			int PROBE_START_LINE_2248 = 2256;
			org.jfree.chart.util.Layer p_layer_248_line_2248 = layer;
			org.jfree.chart.util.Layer q_background_18_line_2248 = Layer.BACKGROUND;
			boolean category_plot_1_expr236_line_2248 = p_layer_248_line_2248 == q_background_18_line_2248;
			int PROBE_END_LINE_2248 = 2256;
			if (category_plot_1_expr236_line_2248) {
				int PROBE_START_LINE_2249 = 2250;
				java.util.Map f_background_range_markers_115_line_2249 = this.backgroundRangeMarkers;
				Object category_plot_1_expr239_line_2249 = f_background_range_markers_115_line_2249
						.get(new Integer(index));
				int PROBE_END_LINE_2249 = 2250;
				markers = (Collection) category_plot_1_expr239_line_2249;
				int PROBE_START_LINE_2251 = 2254;
				java.util.Collection v_markers_250_line_2251 = markers;
				boolean category_plot_1_expr243_line_2251 = v_markers_250_line_2251 == null;
				int PROBE_END_LINE_2251 = 2254;
				if (category_plot_1_expr243_line_2251) {
					markers = new java.util.ArrayList();
					int PROBE_START_LINE_2253 = 2253;
					java.util.Map f_background_range_markers_115_line_2253 = this.backgroundRangeMarkers;
					int p_index_246_line_2253 = index;
					java.util.Collection v_markers_250_line_2253 = markers;
					int PROBE_END_LINE_2253 = 2253;
					f_background_range_markers_115_line_2253.put(new Integer(p_index_246_line_2253),
							v_markers_250_line_2253);
				}
				int PROBE_START_LINE_2255 = 2255;
				java.util.Collection v_markers_250_line_2255 = markers;
				org.jfree.chart.plot.Marker p_marker_247_line_2255 = marker;
				int PROBE_END_LINE_2255 = 2255;
				v_markers_250_line_2255.add(p_marker_247_line_2255);
			}
		}
        int PROBE_START_LINE_2257 = 2257;
		org.jfree.chart.plot.Marker p_marker_247_line_2257 = marker;
		int PROBE_END_LINE_2257 = 2257;
		p_marker_247_line_2257.addChangeListener(this);
        int PROBE_START_LINE_2258 = 2260;
		boolean p_notify_249_line_2258 = notify;
		int PROBE_END_LINE_2258 = 2260;
		if (p_notify_249_line_2258) {
            fireChangeEvent();
        }
    }

    /**
     * Clears all the range markers for the plot and sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     * 
     * @see #clearDomainMarkers()
     */
    public void clearRangeMarkers() {
        if (this.backgroundRangeMarkers != null) {
            Set keys = this.backgroundRangeMarkers.keySet();
            Iterator iterator = keys.iterator();
            while (iterator.hasNext()) {
                Integer key = (Integer) iterator.next();
                clearRangeMarkers(key.intValue());
            }
            this.backgroundRangeMarkers.clear();
        }
        if (this.foregroundRangeMarkers != null) {
            Set keys = this.foregroundRangeMarkers.keySet();
            Iterator iterator = keys.iterator();
            while (iterator.hasNext()) {
                Integer key = (Integer) iterator.next();
                clearRangeMarkers(key.intValue());
            }
            this.foregroundRangeMarkers.clear();
        }
        fireChangeEvent();
    }

    /**
     * Returns the list of range markers (read only) for the specified layer.
     *
     * @param layer  the layer (foreground or background).
     * 
     * @return The list of range markers.
     * 
     * @see #getRangeMarkers(int, Layer)
     */
    public Collection getRangeMarkers(Layer layer) {
        return getRangeMarkers(0, layer);
    }

    /**
     * Returns a collection of range markers for a particular renderer and 
     * layer.
     * 
     * @param index  the renderer index.
     * @param layer  the layer.
     * 
     * @return A collection of markers (possibly <code>null</code>).
     */
    public Collection getRangeMarkers(int index, Layer layer) {
        Collection result = null;
        Integer key = new Integer(index);
        if (layer == Layer.FOREGROUND) {
            result = (Collection) this.foregroundRangeMarkers.get(key);
        }    
        else if (layer == Layer.BACKGROUND) {
            result = (Collection) this.backgroundRangeMarkers.get(key);
        }
        if (result != null) {
            result = Collections.unmodifiableCollection(result);
        }
        return result;
    }
    
    /**
     * Clears all the range markers for the specified renderer.
     * 
     * @param index  the renderer index.
     * 
     * @see #clearDomainMarkers(int)
     */
    public void clearRangeMarkers(int index) {
        Integer key = new Integer(index);
        if (this.backgroundRangeMarkers != null) {
            Collection markers 
                = (Collection) this.backgroundRangeMarkers.get(key);
            if (markers != null) {
                Iterator iterator = markers.iterator();
                while (iterator.hasNext()) {
                    Marker m = (Marker) iterator.next();
                    m.removeChangeListener(this);
                }
                markers.clear();
            }
        }
        if (this.foregroundRangeMarkers != null) {
            Collection markers 
                = (Collection) this.foregroundRangeMarkers.get(key);
            if (markers != null) {
                Iterator iterator = markers.iterator();
                while (iterator.hasNext()) {
                    Marker m = (Marker) iterator.next();
                    m.removeChangeListener(this);
                }
                markers.clear();
            }
        }
        fireChangeEvent();
    }

    /**
     * Removes a marker for the range axis and sends a {@link PlotChangeEvent} 
     * to all registered listeners.
     *
     * @param marker the marker.
     *
     * @return A boolean indicating whether or not the marker was actually 
     *         removed.
     *
     * @since 1.0.7
     * 
     * @see #addRangeMarker(Marker)
     */
    public boolean removeRangeMarker(Marker marker) {
        int PROBE_START_LINE_2378 = 2378;
		org.jfree.chart.plot.Marker p_marker_255_line_2378 = marker;
		org.jfree.chart.util.Layer q_foreground_18_line_2378 = Layer.FOREGROUND;
		boolean category_plot_1_expr254_line_2378 = removeRangeMarker(p_marker_255_line_2378,
				q_foreground_18_line_2378);
		int PROBE_END_LINE_2378 = 2378;
		return category_plot_1_expr254_line_2378;
    }

    /**
     * Removes a marker for the range axis in the specified layer and sends a
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param marker the marker (<code>null</code> not permitted).
     * @param layer the layer (foreground or background).
     *
     * @return A boolean indicating whether or not the marker was actually 
     *         removed.
     *
     * @since 1.0.7
     * 
     * @see #addRangeMarker(Marker, Layer)
     */
    public boolean removeRangeMarker(Marker marker, Layer layer) {
        int PROBE_START_LINE_2396 = 2396;
		org.jfree.chart.plot.Marker p_marker_256_line_2396 = marker;
		org.jfree.chart.util.Layer p_layer_257_line_2396 = layer;
		boolean category_plot_1_expr255_line_2396 = removeRangeMarker(0, p_marker_256_line_2396, p_layer_257_line_2396);
		int PROBE_END_LINE_2396 = 2396;
		return category_plot_1_expr255_line_2396;
    }

    /**
     * Removes a marker for a specific dataset/renderer and sends a
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param index the dataset/renderer index.
     * @param marker the marker.
     * @param layer the layer (foreground or background).
     *
     * @return A boolean indicating whether or not the marker was actually 
     *         removed.
     *
     * @since 1.0.7
     * 
     * @see #addRangeMarker(int, Marker, Layer)
     */
    public boolean removeRangeMarker(int index, Marker marker, Layer layer) {
    	int PROBE_START_LINE_2415 = 2415;
		int p_index_258_line_2415 = index;
		org.jfree.chart.plot.Marker p_marker_259_line_2415 = marker;
		org.jfree.chart.util.Layer p_layer_260_line_2415 = layer;
		boolean category_plot_1_expr256_line_2415 = removeRangeMarker(p_index_258_line_2415, p_marker_259_line_2415,
				p_layer_260_line_2415, true);
		int PROBE_END_LINE_2415 = 2415;
		return category_plot_1_expr256_line_2415;
    }

    /**
     * Removes a marker for a specific dataset/renderer and sends a
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param index  the dataset/renderer index.
     * @param marker  the marker.
     * @param layer  the layer (foreground or background).
     * @param notify  notify listeners.
     *
     * @return A boolean indicating whether or not the marker was actually 
     *         removed.
     *
     * @since 1.0.10
     * 
     * @see #addRangeMarker(int, Marker, Layer, boolean)
     */
    public boolean removeRangeMarker(int index, Marker marker, Layer layer,
    		boolean notify) {
        int PROBE_START_LINE_2436 = 2438;
				org.jfree.chart.plot.Marker p_marker_262_line_2436 = marker;
				boolean category_plot_1_expr257_line_2436 = p_marker_262_line_2436 == null;
				int PROBE_END_LINE_2436 = 2438;
		if (category_plot_1_expr257_line_2436) {
            throw new IllegalArgumentException("Null 'marker' argument.");
        }
        ArrayList markers = null;
        int PROBE_START_LINE_2440 = 2447;
		org.jfree.chart.util.Layer p_layer_263_line_2440 = layer;
		org.jfree.chart.util.Layer q_foreground_18_line_2440 = Layer.FOREGROUND;
		boolean category_plot_1_expr258_line_2440 = p_layer_263_line_2440 == q_foreground_18_line_2440;
		int PROBE_END_LINE_2440 = 2447;
		if (category_plot_1_expr258_line_2440) {
            int PROBE_START_LINE_2441 = 2442;
			java.util.Map f_foreground_range_markers_114_line_2441 = this.foregroundRangeMarkers;
			Object category_plot_1_expr261_line_2441 = f_foreground_range_markers_114_line_2441.get(new Integer(index));
			int PROBE_END_LINE_2441 = 2442;
			markers = (ArrayList) category_plot_1_expr261_line_2441;
        }
        else {
            markers = (ArrayList) this.backgroundRangeMarkers.get(new Integer(
                    index));
        }
        int PROBE_START_LINE_2448 = 2448;
		java.util.ArrayList v_markers_265_line_2448 = markers;
		org.jfree.chart.plot.Marker p_marker_262_line_2448 = marker;
		boolean category_plot_1_expr265_line_2448 = v_markers_265_line_2448.remove(p_marker_262_line_2448);
		int PROBE_END_LINE_2448 = 2448;
		boolean removed = category_plot_1_expr265_line_2448;
        if (removed && notify) {
            fireChangeEvent();
        }
        return removed;
    }

    /**
     * Returns a flag indicating whether or not the range crosshair is visible.
     *
     * @return The flag.
     * 
     * @see #setRangeCrosshairVisible(boolean)
     */
    public boolean isRangeCrosshairVisible() {
        return this.rangeCrosshairVisible;
    }

    /**
     * Sets the flag indicating whether or not the range crosshair is visible.
     *
     * @param flag  the new value of the flag.
     * 
     * @see #isRangeCrosshairVisible()
     */
    public void setRangeCrosshairVisible(boolean flag) {
        if (this.rangeCrosshairVisible != flag) {
            this.rangeCrosshairVisible = flag;
            fireChangeEvent();
        }
    }

    /**
     * Returns a flag indicating whether or not the crosshair should "lock-on"
     * to actual data values.
     *
     * @return The flag.
     * 
     * @see #setRangeCrosshairLockedOnData(boolean)
     */
    public boolean isRangeCrosshairLockedOnData() {
        return this.rangeCrosshairLockedOnData;
    }

    /**
     * Sets the flag indicating whether or not the range crosshair should 
     * "lock-on" to actual data values.
     *
     * @param flag  the flag.
     * 
     * @see #isRangeCrosshairLockedOnData()
     */
    public void setRangeCrosshairLockedOnData(boolean flag) {
        if (this.rangeCrosshairLockedOnData != flag) {
            this.rangeCrosshairLockedOnData = flag;
            fireChangeEvent();
        }
    }

    /**
     * Returns the range crosshair value.
     *
     * @return The value.
     * 
     * @see #setRangeCrosshairValue(double)
     */
    public double getRangeCrosshairValue() {
        return this.rangeCrosshairValue;
    }

    /**
     * Sets the domain crosshair value.
     * <P>
     * Registered listeners are notified that the plot has been modified, but
     * only if the crosshair is visible.
     *
     * @param value  the new value.
     * 
     * @see #getRangeCrosshairValue()
     */
    public void setRangeCrosshairValue(double value) {
        setRangeCrosshairValue(value, true);
    }

    /**
     * Sets the range crosshair value and, if requested, sends a 
     * {@link PlotChangeEvent} to all registered listeners (but only if the 
     * crosshair is visible).
     *
     * @param value  the new value.
     * @param notify  a flag that controls whether or not listeners are 
     *                notified.
     *                
     * @see #getRangeCrosshairValue()
     */
    public void setRangeCrosshairValue(double value, boolean notify) {
        this.rangeCrosshairValue = value;
        if (isRangeCrosshairVisible() && notify) {
            fireChangeEvent();
        }
    }

    /**
     * Returns the pen-style (<code>Stroke</code>) used to draw the crosshair 
     * (if visible).
     *
     * @return The crosshair stroke (never <code>null</code>).
     * 
     * @see #setRangeCrosshairStroke(Stroke)
     * @see #isRangeCrosshairVisible()
     * @see #getRangeCrosshairPaint()
     */
    public Stroke getRangeCrosshairStroke() {
        return this.rangeCrosshairStroke;
    }

    /**
     * Sets the pen-style (<code>Stroke</code>) used to draw the range 
     * crosshair (if visible), and sends a {@link PlotChangeEvent} to all 
     * registered listeners.
     *
     * @param stroke  the new crosshair stroke (<code>null</code> not 
     *         permitted).
     * 
     * @see #getRangeCrosshairStroke()
     */
    public void setRangeCrosshairStroke(Stroke stroke) {
        if (stroke == null) {
            throw new IllegalArgumentException("Null 'stroke' argument.");
        }
        this.rangeCrosshairStroke = stroke;
        fireChangeEvent();
    }

    /**
     * Returns the paint used to draw the range crosshair.
     *
     * @return The paint (never <code>null</code>).
     * 
     * @see #setRangeCrosshairPaint(Paint)
     * @see #isRangeCrosshairVisible()
     * @see #getRangeCrosshairStroke()
     */
    public Paint getRangeCrosshairPaint() {
        return this.rangeCrosshairPaint;
    }

    /**
     * Sets the paint used to draw the range crosshair (if visible) and 
     * sends a {@link PlotChangeEvent} to all registered listeners.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     * 
     * @see #getRangeCrosshairPaint()
     */
    public void setRangeCrosshairPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.rangeCrosshairPaint = paint;
        fireChangeEvent();
    }

    /**
     * Returns the list of annotations.
     *
     * @return The list of annotations (never <code>null</code>).
     */
    public List getAnnotations() {
        return this.annotations;
    }

    /**
     * Adds an annotation to the plot and sends a {@link PlotChangeEvent} to all
     * registered listeners.
     *
     * @param annotation  the annotation (<code>null</code> not permitted).
     * 
     * @see #removeAnnotation(CategoryAnnotation)
     */
    public void addAnnotation(CategoryAnnotation annotation) {
    	addAnnotation(annotation, true);
    }
    
    /**
     * Adds an annotation to the plot and, if requested, sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param annotation  the annotation (<code>null</code> not permitted).
     * @param notify  notify listeners?
     * 
     * @since 1.0.10
     */
    public void addAnnotation(CategoryAnnotation annotation, boolean notify) {
        if (annotation == null) {
            throw new IllegalArgumentException("Null 'annotation' argument.");
        }
        this.annotations.add(annotation);
        if (notify) {
            fireChangeEvent();
        }
    }

    /**
     * Removes an annotation from the plot and sends a {@link PlotChangeEvent}
     * to all registered listeners.
     *
     * @param annotation  the annotation (<code>null</code> not permitted).
     *
     * @return A boolean (indicates whether or not the annotation was removed).
     * 
     * @see #addAnnotation(CategoryAnnotation)
     */
    public boolean removeAnnotation(CategoryAnnotation annotation) {
    	return removeAnnotation(annotation, true);
    }

    /**
     * Removes an annotation from the plot and, if requested, sends a 
     * {@link PlotChangeEvent} to all registered listeners.
     *
     * @param annotation  the annotation (<code>null</code> not permitted).
     * @param notify  notify listeners?
     *
     * @return A boolean (indicates whether or not the annotation was removed).
     * 
     * @since 1.0.10
     */
    public boolean removeAnnotation(CategoryAnnotation annotation, 
    		boolean notify) {
        if (annotation == null) {
            throw new IllegalArgumentException("Null 'annotation' argument.");
        }
        boolean removed = this.annotations.remove(annotation);
        if (removed && notify) {
            fireChangeEvent();
        }
        return removed;
    }

    /**
     * Clears all the annotations and sends a {@link PlotChangeEvent} to all
     * registered listeners.
     */
    public void clearAnnotations() {
        this.annotations.clear();
        fireChangeEvent();
    }

    /**
     * Calculates the space required for the domain axis/axes.
     * 
     * @param g2  the graphics device.
     * @param plotArea  the plot area.
     * @param space  a carrier for the result (<code>null</code> permitted).
     * 
     * @return The required space.
     */
    protected AxisSpace calculateDomainAxisSpace(Graphics2D g2, 
                                                 Rectangle2D plotArea, 
                                                 AxisSpace space) {
                                                     
        if (space == null) {
            space = new AxisSpace();
        }
        
        // reserve some space for the domain axis...
        if (this.fixedDomainAxisSpace != null) {
            if (this.orientation == PlotOrientation.HORIZONTAL) {
                space.ensureAtLeast(
                    this.fixedDomainAxisSpace.getLeft(), RectangleEdge.LEFT);
                space.ensureAtLeast(this.fixedDomainAxisSpace.getRight(), 
                        RectangleEdge.RIGHT);
            }
            else if (this.orientation == PlotOrientation.VERTICAL) {
                space.ensureAtLeast(this.fixedDomainAxisSpace.getTop(), 
                        RectangleEdge.TOP);
                space.ensureAtLeast(this.fixedDomainAxisSpace.getBottom(), 
                        RectangleEdge.BOTTOM);
            }
        }
        else {
            // reserve space for the primary domain axis...
            RectangleEdge domainEdge = Plot.resolveDomainAxisLocation(
                    getDomainAxisLocation(), this.orientation);
            if (this.drawSharedDomainAxis) {
                space = getDomainAxis().reserveSpace(g2, this, plotArea, 
                        domainEdge, space);
            }
            
            // reserve space for any domain axes...
            for (int i = 0; i < this.domainAxes.size(); i++) {
                Axis xAxis = (Axis) this.domainAxes.get(i);
                if (xAxis != null) {
                    RectangleEdge edge = getDomainAxisEdge(i);
                    space = xAxis.reserveSpace(g2, this, plotArea, edge, space);
                }
            }
        }

        return space;
                                                     
    }
    
    /**
     * Calculates the space required for the range axis/axes.
     * 
     * @param g2  the graphics device.
     * @param plotArea  the plot area.
     * @param space  a carrier for the result (<code>null</code> permitted).
     * 
     * @return The required space.
     */
    protected AxisSpace calculateRangeAxisSpace(Graphics2D g2, 
                                                Rectangle2D plotArea, 
                                                AxisSpace space) {
                                                  
        if (space == null) {
            space = new AxisSpace(); 
        }
        
        // reserve some space for the range axis...
        if (this.fixedRangeAxisSpace != null) {
            if (this.orientation == PlotOrientation.HORIZONTAL) {
                space.ensureAtLeast(this.fixedRangeAxisSpace.getTop(), 
                        RectangleEdge.TOP);
                space.ensureAtLeast(this.fixedRangeAxisSpace.getBottom(), 
                        RectangleEdge.BOTTOM);
            }
            else if (this.orientation == PlotOrientation.VERTICAL) {
                space.ensureAtLeast(this.fixedRangeAxisSpace.getLeft(), 
                        RectangleEdge.LEFT);
                space.ensureAtLeast(this.fixedRangeAxisSpace.getRight(), 
                        RectangleEdge.RIGHT);
            }
        }
        else {
            // reserve space for the range axes (if any)...
            for (int i = 0; i < this.rangeAxes.size(); i++) {
                Axis yAxis = (Axis) this.rangeAxes.get(i);
                if (yAxis != null) {
                    RectangleEdge edge = getRangeAxisEdge(i);
                    space = yAxis.reserveSpace(g2, this, plotArea, edge, space);
                }
            }
        }
        return space;
                                                    
    }

    /**
     * Calculates the space required for the axes.
     *
     * @param g2  the graphics device.
     * @param plotArea  the plot area.
     *
     * @return The space required for the axes.
     */
    protected AxisSpace calculateAxisSpace(Graphics2D g2, 
                                           Rectangle2D plotArea) {
        AxisSpace space = new AxisSpace();
        space = calculateRangeAxisSpace(g2, plotArea, space);
        space = calculateDomainAxisSpace(g2, plotArea, space);
        return space;
    }
    
    /**
     * Draws the plot on a Java 2D graphics device (such as the screen or a 
     * printer).
     * <P>
     * At your option, you may supply an instance of {@link PlotRenderingInfo}.
     * If you do, it will be populated with information about the drawing,
     * including various plot dimensions and tooltip info.
     *
     * @param g2  the graphics device.
     * @param area  the area within which the plot (including axes) should 
     *              be drawn.
     * @param anchor  the anchor point (<code>null</code> permitted).
     * @param parentState  the state from the parent plot, if there is one.
     * @param state  collects info as the chart is drawn (possibly 
     *               <code>null</code>).
     */
    public void draw(Graphics2D g2, Rectangle2D area, 
                     Point2D anchor,
                     PlotState parentState,
                     PlotRenderingInfo state) {

        // if the plot area is too small, just return...
        boolean b1 = (area.getWidth() <= MINIMUM_WIDTH_TO_DRAW);
        boolean b2 = (area.getHeight() <= MINIMUM_HEIGHT_TO_DRAW);
        if (b1 || b2) {
            return;
        }

        // record the plot area...
        if (state == null) {
            // if the incoming state is null, no information will be passed
            // back to the caller - but we create a temporary state to record
            // the plot area, since that is used later by the axes
            state = new PlotRenderingInfo(null);
        }
        state.setPlotArea(area);

        // adjust the drawing area for the plot insets (if any)...
        RectangleInsets insets = getInsets();
        insets.trim(area);

        // calculate the data area...
        AxisSpace space = calculateAxisSpace(g2, area);
        Rectangle2D dataArea = space.shrink(area, null);
        this.axisOffset.trim(dataArea);

        state.setDataArea(dataArea);

        // if there is a renderer, it draws the background, otherwise use the 
        // default background...
        if (getRenderer() != null) {
            getRenderer().drawBackground(g2, this, dataArea);
        }
        else {
            drawBackground(g2, dataArea);
        }
       
        Map axisStateMap = drawAxes(g2, area, dataArea, state);

        // don't let anyone draw outside the data area
        Shape savedClip = g2.getClip();
        g2.clip(dataArea);

        drawDomainGridlines(g2, dataArea);

        AxisState rangeAxisState = (AxisState) axisStateMap.get(getRangeAxis());
        if (rangeAxisState == null) {
            if (parentState != null) {
                rangeAxisState = (AxisState) parentState.getSharedAxisStates()
                        .get(getRangeAxis());
            }
        }
        if (rangeAxisState != null) {
            drawRangeGridlines(g2, dataArea, rangeAxisState.getTicks());
        }
        
        // draw the markers...
        for (int i = 0; i < this.renderers.size(); i++) {
            drawDomainMarkers(g2, dataArea, i, Layer.BACKGROUND);
        }        
        for (int i = 0; i < this.renderers.size(); i++) {
            drawRangeMarkers(g2, dataArea, i, Layer.BACKGROUND);
        }

        // now render data items...
        boolean foundData = false;

        // set up the alpha-transparency...
        Composite originalComposite = g2.getComposite();
        g2.setComposite(AlphaComposite.getInstance(
                AlphaComposite.SRC_OVER, getForegroundAlpha()));

        DatasetRenderingOrder order = getDatasetRenderingOrder();
        if (order == DatasetRenderingOrder.FORWARD) {

            // draw background annotations
            int datasetCount = this.datasets.size();
            for (int i = 0; i < datasetCount; i++) {
                CategoryItemRenderer r = getRenderer(i);
                if (r != null) {
                    CategoryAxis domainAxis = getDomainAxisForDataset(i);
                    ValueAxis rangeAxis = getRangeAxisForDataset(i);
                    r.drawAnnotations(g2, dataArea, domainAxis, rangeAxis,
                            Layer.BACKGROUND, state);
                }
            }

            for (int i = 0; i < datasetCount; i++) {
                foundData = render(g2, dataArea, i, state) || foundData;
            }

            // draw foreground annotations
            for (int i = 0; i < datasetCount; i++) {
                CategoryItemRenderer r = getRenderer(i);
                if (r != null) {
                    CategoryAxis domainAxis = getDomainAxisForDataset(i);
                    ValueAxis rangeAxis = getRangeAxisForDataset(i);
                    r.drawAnnotations(g2, dataArea, domainAxis, rangeAxis,
                            Layer.FOREGROUND, state);
                }
            }
        }
        else {  // DatasetRenderingOrder.REVERSE
            
            // draw background annotations
            int datasetCount = this.datasets.size();
            for (int i = datasetCount - 1; i >= 0; i--) {
                CategoryItemRenderer r = getRenderer(i);
                if (r != null) {
                    CategoryAxis domainAxis = getDomainAxisForDataset(i);
                    ValueAxis rangeAxis = getRangeAxisForDataset(i);
                    r.drawAnnotations(g2, dataArea, domainAxis, rangeAxis,
                            Layer.BACKGROUND, state);
                }
            }
            
            for (int i = this.datasets.size() - 1; i >= 0; i--) {
                foundData = render(g2, dataArea, i, state) || foundData;   
            }

            // draw foreground annotations
            for (int i = datasetCount - 1; i >= 0; i--) {
                CategoryItemRenderer r = getRenderer(i);
                if (r != null) {
                    CategoryAxis domainAxis = getDomainAxisForDataset(i);
                    ValueAxis rangeAxis = getRangeAxisForDataset(i);
                    r.drawAnnotations(g2, dataArea, domainAxis, rangeAxis,
                            Layer.FOREGROUND, state);
                }
            }
        }
        
        // draw the foreground markers...
        for (int i = 0; i < this.renderers.size(); i++) {
            drawDomainMarkers(g2, dataArea, i, Layer.FOREGROUND);
        }
        for (int i = 0; i < this.renderers.size(); i++) {
            drawRangeMarkers(g2, dataArea, i, Layer.FOREGROUND);
        }

        // draw the plot's annotations (if any)...
        drawAnnotations(g2, dataArea, state);

        g2.setClip(savedClip);
        g2.setComposite(originalComposite);

        if (!foundData) {
            drawNoDataMessage(g2, dataArea);
        }

        // draw range crosshair if required...
        if (isRangeCrosshairVisible()) {
            // FIXME: this doesn't handle multiple range axes
            drawRangeCrosshair(g2, dataArea, getOrientation(), 
                    getRangeCrosshairValue(), getRangeAxis(),
                    getRangeCrosshairStroke(), getRangeCrosshairPaint());
        }

        // draw an outline around the plot area...
        if (getRenderer() != null) {
            getRenderer().drawOutline(g2, this, dataArea);
        }
        else {
            drawOutline(g2, dataArea);
        }

    }

    /**
     * Draws the plot background (the background color and/or image).
     * <P>
     * This method will be called during the chart drawing process and is 
     * declared public so that it can be accessed by the renderers used by 
     * certain subclasses.  You shouldn't need to call this method directly.
     *
     * @param g2  the graphics device.
     * @param area  the area within which the plot should be drawn.
     */
    public void drawBackground(Graphics2D g2, Rectangle2D area) {
        fillBackground(g2, area, this.orientation);
        drawBackgroundImage(g2, area);
    }

    /**
     * A utility method for drawing the plot's axes.
     * 
     * @param g2  the graphics device.
     * @param plotArea  the plot area.
     * @param dataArea  the data area.
     * @param plotState  collects information about the plot (<code>null</code>
     *                   permitted).
     * 
     * @return A map containing the axis states.
     */
    protected Map drawAxes(Graphics2D g2, 
                           Rectangle2D plotArea, 
                           Rectangle2D dataArea,
                           PlotRenderingInfo plotState) {

        AxisCollection axisCollection = new AxisCollection();

        // add domain axes to lists...
        for (int index = 0; index < this.domainAxes.size(); index++) {
            CategoryAxis xAxis = (CategoryAxis) this.domainAxes.get(index);
            if (xAxis != null) {
                axisCollection.add(xAxis, getDomainAxisEdge(index));
            }
        }

        // add range axes to lists...
        for (int index = 0; index < this.rangeAxes.size(); index++) {
            ValueAxis yAxis = (ValueAxis) this.rangeAxes.get(index);
            if (yAxis != null) {
                axisCollection.add(yAxis, getRangeAxisEdge(index));
            }
        }

        Map axisStateMap = new HashMap();
        
        // draw the top axes
        double cursor = dataArea.getMinY() - this.axisOffset.calculateTopOutset(
                dataArea.getHeight());
        Iterator iterator = axisCollection.getAxesAtTop().iterator();
        while (iterator.hasNext()) {
            Axis axis = (Axis) iterator.next();
            if (axis != null) {
                AxisState axisState = axis.draw(g2, cursor, plotArea, dataArea, 
                        RectangleEdge.TOP, plotState);
                cursor = axisState.getCursor();
                axisStateMap.put(axis, axisState);
            }
        }

        // draw the bottom axes
        cursor = dataArea.getMaxY() 
                 + this.axisOffset.calculateBottomOutset(dataArea.getHeight());
        iterator = axisCollection.getAxesAtBottom().iterator();
        while (iterator.hasNext()) {
            Axis axis = (Axis) iterator.next();
            if (axis != null) {
                AxisState axisState = axis.draw(g2, cursor, plotArea, dataArea,
                        RectangleEdge.BOTTOM, plotState);
                cursor = axisState.getCursor();
                axisStateMap.put(axis, axisState);
            }
        }

        // draw the left axes
        cursor = dataArea.getMinX() 
                 - this.axisOffset.calculateLeftOutset(dataArea.getWidth());
        iterator = axisCollection.getAxesAtLeft().iterator();
        while (iterator.hasNext()) {
            Axis axis = (Axis) iterator.next();
            if (axis != null) {
                AxisState axisState = axis.draw(g2, cursor, plotArea, dataArea,
                        RectangleEdge.LEFT, plotState);
                cursor = axisState.getCursor();
                axisStateMap.put(axis, axisState);
            }
        }

        // draw the right axes
        cursor = dataArea.getMaxX() 
                 + this.axisOffset.calculateRightOutset(dataArea.getWidth());
        iterator = axisCollection.getAxesAtRight().iterator();
        while (iterator.hasNext()) {
            Axis axis = (Axis) iterator.next();
            if (axis != null) {
                AxisState axisState = axis.draw(g2, cursor, plotArea, dataArea, 
                        RectangleEdge.RIGHT, plotState);
                cursor = axisState.getCursor();
                axisStateMap.put(axis, axisState);
            }
        }
        
        return axisStateMap;
        
    }

    /**
     * Draws a representation of a dataset within the dataArea region using the
     * appropriate renderer.
     *
     * @param g2  the graphics device.
     * @param dataArea  the region in which the data is to be drawn.
     * @param index  the dataset and renderer index.
     * @param info  an optional object for collection dimension information.
     * 
     * @return A boolean that indicates whether or not real data was found.
     */
    public boolean render(Graphics2D g2, Rectangle2D dataArea, int index, 
                          PlotRenderingInfo info) {

        boolean foundData = false;
        CategoryDataset currentDataset = getDataset(index);
        CategoryItemRenderer renderer = getRenderer(index);
        CategoryAxis domainAxis = getDomainAxisForDataset(index);
        ValueAxis rangeAxis = getRangeAxisForDataset(index);
        boolean hasData = !DatasetUtilities.isEmptyOrNull(currentDataset);
        if (hasData && renderer != null) {
            
            foundData = true;
            CategoryItemRendererState state = renderer.initialise(g2, dataArea,
                    this, index, info);
            int columnCount = currentDataset.getColumnCount();
            int rowCount = currentDataset.getRowCount();
            int passCount = renderer.getPassCount();
            for (int pass = 0; pass < passCount; pass++) {            
                if (this.columnRenderingOrder == SortOrder.ASCENDING) {
                    for (int column = 0; column < columnCount; column++) {
                        if (this.rowRenderingOrder == SortOrder.ASCENDING) {
                            for (int row = 0; row < rowCount; row++) {
                                renderer.drawItem(g2, state, dataArea, this, 
                                        domainAxis, rangeAxis, currentDataset, 
                                        row, column, pass);
                            }
                        }
                        else {
                            for (int row = rowCount - 1; row >= 0; row--) {
                                renderer.drawItem(g2, state, dataArea, this, 
                                        domainAxis, rangeAxis, currentDataset, 
                                        row, column, pass);
                            }                        
                        }
                    }
                }
                else {
                    for (int column = columnCount - 1; column >= 0; column--) {
                        if (this.rowRenderingOrder == SortOrder.ASCENDING) {
                            for (int row = 0; row < rowCount; row++) {
                                renderer.drawItem(g2, state, dataArea, this, 
                                        domainAxis, rangeAxis, currentDataset, 
                                        row, column, pass);
                            }
                        }
                        else {
                            for (int row = rowCount - 1; row >= 0; row--) {
                                renderer.drawItem(g2, state, dataArea, this, 
                                        domainAxis, rangeAxis, currentDataset, 
                                        row, column, pass);
                            }                        
                        }
                    }
                }
            }
        }
        return foundData;
        
    }

    /**
     * Draws the gridlines for the plot.
     *
     * @param g2  the graphics device.
     * @param dataArea  the area inside the axes.
     * 
     * @see #drawRangeGridlines(Graphics2D, Rectangle2D, List)
     */
    protected void drawDomainGridlines(Graphics2D g2, Rectangle2D dataArea) {

        // draw the domain grid lines, if any...
        if (isDomainGridlinesVisible()) {
            CategoryAnchor anchor = getDomainGridlinePosition();
            RectangleEdge domainAxisEdge = getDomainAxisEdge();
            Stroke gridStroke = getDomainGridlineStroke();
            Paint gridPaint = getDomainGridlinePaint();
            if ((gridStroke != null) && (gridPaint != null)) {
                // iterate over the categories
                CategoryDataset data = getDataset();
                if (data != null) {
                    CategoryAxis axis = getDomainAxis();
                    if (axis != null) {
                        int columnCount = data.getColumnCount();
                        for (int c = 0; c < columnCount; c++) {
                            double xx = axis.getCategoryJava2DCoordinate(
                                    anchor, c, columnCount, dataArea, 
                                    domainAxisEdge);
                            CategoryItemRenderer renderer1 = getRenderer();
                            if (renderer1 != null) {
                                renderer1.drawDomainGridline(g2, this, 
                                        dataArea, xx);
                            }
                        }
                    }
                }
            }
        }
    }
 
    /**
     * Draws the gridlines for the plot.
     *
     * @param g2  the graphics device.
     * @param dataArea  the area inside the axes.
     * @param ticks  the ticks.
     * 
     * @see #drawDomainGridlines(Graphics2D, Rectangle2D)
     */
    protected void drawRangeGridlines(Graphics2D g2, Rectangle2D dataArea, 
                                      List ticks) {
        // draw the range grid lines, if any...
        if (isRangeGridlinesVisible()) {
            Stroke gridStroke = getRangeGridlineStroke();
            Paint gridPaint = getRangeGridlinePaint();
            if ((gridStroke != null) && (gridPaint != null)) {
                ValueAxis axis = getRangeAxis();
                if (axis != null) {
                    Iterator iterator = ticks.iterator();
                    while (iterator.hasNext()) {
                        ValueTick tick = (ValueTick) iterator.next();
                        CategoryItemRenderer renderer1 = getRenderer();
                        if (renderer1 != null) {
                            renderer1.drawRangeGridline(g2, this, 
                                    getRangeAxis(), dataArea, tick.getValue());
                        }
                    }
                }
            }
        }
    }

    /**
     * Draws the annotations.
     *
     * @param g2  the graphics device.
     * @param dataArea  the data area.
     * @param info  the plot rendering info (<code>null</code> permitted).
     */
    protected void drawAnnotations(Graphics2D g2, Rectangle2D dataArea,
            PlotRenderingInfo info) {

        Iterator iterator = getAnnotations().iterator();
        while (iterator.hasNext()) {
            CategoryAnnotation annotation 
                    = (CategoryAnnotation) iterator.next();
            annotation.draw(g2, this, dataArea, getDomainAxis(), 
                    getRangeAxis(), 0, info);
        }

    }

    /**
     * Draws the domain markers (if any) for an axis and layer.  This method is 
     * typically called from within the draw() method.
     *
     * @param g2  the graphics device.
     * @param dataArea  the data area.
     * @param index  the renderer index.
     * @param layer  the layer (foreground or background).
     * 
     * @see #drawRangeMarkers(Graphics2D, Rectangle2D, int, Layer)
     */
    protected void drawDomainMarkers(Graphics2D g2, Rectangle2D dataArea, 
                                     int index, Layer layer) {
                                                 
        CategoryItemRenderer r = getRenderer(index);
        if (r == null) {
            return;
        }
        
        Collection markers = getDomainMarkers(index, layer);
        CategoryAxis axis = getDomainAxisForDataset(index);
        if (markers != null && axis != null) {
            Iterator iterator = markers.iterator();
            while (iterator.hasNext()) {
                CategoryMarker marker = (CategoryMarker) iterator.next();
                r.drawDomainMarker(g2, this, axis, marker, dataArea);
            }
        }
        
    }

    /**
     * Draws the range markers (if any) for an axis and layer.  This method is 
     * typically called from within the draw() method.
     *
     * @param g2  the graphics device.
     * @param dataArea  the data area.
     * @param index  the renderer index.
     * @param layer  the layer (foreground or background).
     * 
     * @see #drawDomainMarkers(Graphics2D, Rectangle2D, int, Layer)
     */
    protected void drawRangeMarkers(Graphics2D g2, Rectangle2D dataArea, 
                                    int index, Layer layer) {
                                                 
        CategoryItemRenderer r = getRenderer(index);
        if (r == null) {
            return;
        }
        
        Collection markers = getRangeMarkers(index, layer);
        ValueAxis axis = getRangeAxisForDataset(index);
        if (markers != null && axis != null) {
            Iterator iterator = markers.iterator();
            while (iterator.hasNext()) {
                Marker marker = (Marker) iterator.next();
                r.drawRangeMarker(g2, this, axis, marker, dataArea);
            }
        }
        
    }

    /**
     * Utility method for drawing a line perpendicular to the range axis (used
     * for crosshairs).
     *
     * @param g2  the graphics device.
     * @param dataArea  the area defined by the axes.
     * @param value  the data value.
     * @param stroke  the line stroke (<code>null</code> not permitted).
     * @param paint  the line paint (<code>null</code> not permitted).
     */
    protected void drawRangeLine(Graphics2D g2, Rectangle2D dataArea,
            double value, Stroke stroke, Paint paint) {

        double java2D = getRangeAxis().valueToJava2D(value, dataArea, 
                getRangeAxisEdge());
        Line2D line = null;
        if (this.orientation == PlotOrientation.HORIZONTAL) {
            line = new Line2D.Double(java2D, dataArea.getMinY(), java2D, 
                    dataArea.getMaxY());
        }
        else if (this.orientation == PlotOrientation.VERTICAL) {
            line = new Line2D.Double(dataArea.getMinX(), java2D, 
                    dataArea.getMaxX(), java2D);
        }
        g2.setStroke(stroke);
        g2.setPaint(paint);
        g2.draw(line);

    }

    /**
     * Draws a range crosshair.
     * 
     * @param g2  the graphics target.
     * @param dataArea  the data area.
     * @param orientation  the plot orientation.
     * @param value  the crosshair value.
     * @param axis  the axis against which the value is measured.
     * @param stroke  the stroke used to draw the crosshair line.
     * @param paint  the paint used to draw the crosshair line.
     * 
     * @since 1.0.5
     */
    protected void drawRangeCrosshair(Graphics2D g2, Rectangle2D dataArea, 
            PlotOrientation orientation, double value, ValueAxis axis, 
            Stroke stroke, Paint paint) {
        
        if (!axis.getRange().contains(value)) {
            return;
        }
        Line2D line = null;
        if (orientation == PlotOrientation.HORIZONTAL) {
            double xx = axis.valueToJava2D(value, dataArea, 
                    RectangleEdge.BOTTOM);
            line = new Line2D.Double(xx, dataArea.getMinY(), xx, 
                    dataArea.getMaxY());
        }
        else {
            double yy = axis.valueToJava2D(value, dataArea, 
                    RectangleEdge.LEFT);
            line = new Line2D.Double(dataArea.getMinX(), yy, 
                    dataArea.getMaxX(), yy);
        }
        g2.setStroke(stroke);
        g2.setPaint(paint);
        g2.draw(line);
       
    }
    
    /**
     * Returns the range of data values that will be plotted against the range 
     * axis.  If the dataset is <code>null</code>, this method returns 
     * <code>null</code>.
     *
     * @param axis  the axis.
     *
     * @return The data range.
     */
    public Range getDataRange(ValueAxis axis) {

        Range result = null;
        List mappedDatasets = new ArrayList();
        
        int rangeIndex = this.rangeAxes.indexOf(axis);
        if (rangeIndex >= 0) {
            mappedDatasets.addAll(datasetsMappedToRangeAxis(rangeIndex));
        }
        else if (axis == getRangeAxis()) {
            mappedDatasets.addAll(datasetsMappedToRangeAxis(0));
        }

        // iterate through the datasets that map to the axis and get the union 
        // of the ranges.
        Iterator iterator = mappedDatasets.iterator();
        while (iterator.hasNext()) {
            CategoryDataset d = (CategoryDataset) iterator.next();
            CategoryItemRenderer r = getRendererForDataset(d);
            if (r != null) {
                result = Range.combine(result, r.findRangeBounds(d));
            }
        }
        return result;

    }

    /**
     * Returns a list of the datasets that are mapped to the axis with the
     * specified index.
     * 
     * @param axisIndex  the axis index.
     * 
     * @return The list (possibly empty, but never <code>null</code>).
     * 
     * @since 1.0.3
     */
    private List datasetsMappedToDomainAxis(int axisIndex) {
        List result = new ArrayList();
        for (int datasetIndex = 0; datasetIndex < this.datasets.size(); 
                datasetIndex++) {
            Object dataset = this.datasets.get(datasetIndex);
            if (dataset != null) {
                Integer m = (Integer) this.datasetToDomainAxisMap.get(
                        datasetIndex);
                if (m == null) {  // a dataset with no mapping is assigned to 
                                  // axis 0
                    if (axisIndex == 0) {
                        result.add(dataset);
                    }
                }
                else {
                    if (m.intValue() == axisIndex) {
                        result.add(dataset);
                    }
                }
            }
        }
        return result;
    }
    
    /**
     * A utility method that returns a list of datasets that are mapped to a 
     * given range axis.
     * 
     * @param index  the axis index.
     * 
     * @return A list of datasets.
     */
    private List datasetsMappedToRangeAxis(int index) {
        List result = new ArrayList();
        for (int i = 0; i < this.datasets.size(); i++) {
            Object dataset = this.datasets.get(i);
            if (dataset != null) {
                Integer m = (Integer) this.datasetToRangeAxisMap.get(i);
                if (m == null) {  // a dataset with no mapping is assigned to 
                                  // axis 0
                    if (index == 0) { 
                        result.add(dataset);
                    }
                }
                else {
                    if (m.intValue() == index) {
                        result.add(dataset);
                    }
                }
            }
        }
        return result;    
    }

    /**
     * Returns the weight for this plot when it is used as a subplot within a 
     * combined plot.
     *
     * @return The weight.
     * 
     * @see #setWeight(int)
     */
    public int getWeight() {
        return this.weight;
    }

    /**
     * Sets the weight for the plot and sends a {@link PlotChangeEvent} to all
     * registered listeners.
     *
     * @param weight  the weight.
     * 
     * @see #getWeight()
     */
    public void setWeight(int weight) {
        this.weight = weight;
        fireChangeEvent();
    }
    
    /**
     * Returns the fixed domain axis space.
     *
     * @return The fixed domain axis space (possibly <code>null</code>).
     * 
     * @see #setFixedDomainAxisSpace(AxisSpace)
     */
    public AxisSpace getFixedDomainAxisSpace() {
        return this.fixedDomainAxisSpace;
    }

    /**
     * Sets the fixed domain axis space and sends a {@link PlotChangeEvent} to
     * all registered listeners.
     *
     * @param space  the space (<code>null</code> permitted).
     * 
     * @see #getFixedDomainAxisSpace()
     */
    public void setFixedDomainAxisSpace(AxisSpace space) {
        setFixedDomainAxisSpace(space, true);
    }

    /**
     * Sets the fixed domain axis space and sends a {@link PlotChangeEvent} to
     * all registered listeners.
     *
     * @param space  the space (<code>null</code> permitted).
     * @param notify  notify listeners?
     * 
     * @see #getFixedDomainAxisSpace()
     * 
     * @since 1.0.7
     */
    public void setFixedDomainAxisSpace(AxisSpace space, boolean notify) {
        this.fixedDomainAxisSpace = space;
        if (notify) {
            fireChangeEvent();
        }
    }

    /**
     * Returns the fixed range axis space.
     *
     * @return The fixed range axis space (possibly <code>null</code>).
     * 
     * @see #setFixedRangeAxisSpace(AxisSpace)
     */
    public AxisSpace getFixedRangeAxisSpace() {
        return this.fixedRangeAxisSpace;
    }

    /**
     * Sets the fixed range axis space and sends a {@link PlotChangeEvent} to 
     * all registered listeners.
     *
     * @param space  the space (<code>null</code> permitted).
     * 
     * @see #getFixedRangeAxisSpace()
     */
    public void setFixedRangeAxisSpace(AxisSpace space) {
        setFixedRangeAxisSpace(space, true);
    }

    /**
     * Sets the fixed range axis space and sends a {@link PlotChangeEvent} to 
     * all registered listeners.
     *
     * @param space  the space (<code>null</code> permitted).
     * @param notify  notify listeners?
     * 
     * @see #getFixedRangeAxisSpace()
     *
     * @since 1.0.7
     */
    public void setFixedRangeAxisSpace(AxisSpace space, boolean notify) {
        this.fixedRangeAxisSpace = space;
        if (notify) {
            fireChangeEvent();
        }
    }

    /**
     * Returns a list of the categories in the plot's primary dataset.
     * 
     * @return A list of the categories in the plot's primary dataset.
     * 
     * @see #getCategoriesForAxis(CategoryAxis)
     */
    public List getCategories() {
        List result = null;
        if (getDataset() != null) {
            result = Collections.unmodifiableList(getDataset().getColumnKeys());
        }
        return result;
    }
    
    /**
     * Returns a list of the categories that should be displayed for the
     * specified axis.
     * 
     * @param axis  the axis (<code>null</code> not permitted)
     * 
     * @return The categories.
     * 
     * @since 1.0.3
     */
    public List getCategoriesForAxis(CategoryAxis axis) {
        List result = new ArrayList();
        int axisIndex = this.domainAxes.indexOf(axis);
        List datasets = datasetsMappedToDomainAxis(axisIndex);
        Iterator iterator = datasets.iterator();
        while (iterator.hasNext()) {
            CategoryDataset dataset = (CategoryDataset) iterator.next();
            // add the unique categories from this dataset
            for (int i = 0; i < dataset.getColumnCount(); i++) {
                Comparable category = dataset.getColumnKey(i);
                if (!result.contains(category)) {
                    result.add(category);
                }
            }
        }
        return result;
    }

    /**
     * Returns the flag that controls whether or not the shared domain axis is 
     * drawn for each subplot.
     * 
     * @return A boolean.
     * 
     * @see #setDrawSharedDomainAxis(boolean)
     */
    public boolean getDrawSharedDomainAxis() {
        return this.drawSharedDomainAxis;
    }
    
    /**
     * Sets the flag that controls whether the shared domain axis is drawn when
     * this plot is being used as a subplot.
     * 
     * @param draw  a boolean.
     * 
     * @see #getDrawSharedDomainAxis()
     */
    public void setDrawSharedDomainAxis(boolean draw) {
        this.drawSharedDomainAxis = draw;
        fireChangeEvent();
    }

    /**
     * Returns <code>false</code> to indicate that the domain axes are not
     * zoomable.
     * 
     * @return A boolean.
     * 
     * @see #isRangeZoomable()
     */
    public boolean isDomainZoomable() {
        return false;
    }
    
    /**
     * Returns <code>true</code> to indicate that the range axes are zoomable.
     * 
     * @return A boolean.
     * 
     * @see #isDomainZoomable()
     */
    public boolean isRangeZoomable() {
        return true;
    }

    /**
     * This method does nothing, because <code>CategoryPlot</code> doesn't 
     * support zooming on the domain.
     *
     * @param factor  the zoom factor.
     * @param state  the plot state.
     * @param source  the source point (in Java2D space) for the zoom.
     */
    public void zoomDomainAxes(double factor, PlotRenderingInfo state, 
                               Point2D source) {
        // can't zoom domain axis
    }

    /**
     * This method does nothing, because <code>CategoryPlot</code> doesn't 
     * support zooming on the domain.
     * 
     * @param lowerPercent  the lower bound.
     * @param upperPercent  the upper bound.
     * @param state  the plot state.
     * @param source  the source point (in Java2D space) for the zoom.
     */
    public void zoomDomainAxes(double lowerPercent, double upperPercent, 
                               PlotRenderingInfo state, Point2D source) {
        // can't zoom domain axis
    }
    
    /**
     * This method does nothing, because <code>CategoryPlot</code> doesn't 
     * support zooming on the domain.
     *
     * @param factor  the zoom factor.
     * @param info  the plot rendering info.
     * @param source  the source point (in Java2D space).
     * @param useAnchor  use source point as zoom anchor?
     * 
     * @see #zoomRangeAxes(double, PlotRenderingInfo, Point2D, boolean)
     * 
     * @since 1.0.7
     */
    public void zoomDomainAxes(double factor, PlotRenderingInfo info,
                               Point2D source, boolean useAnchor) {
        // can't zoom domain axis
    }

    /**
     * Multiplies the range on the range axis/axes by the specified factor.
     *
     * @param factor  the zoom factor.
     * @param state  the plot state.
     * @param source  the source point (in Java2D space) for the zoom.
     */
    public void zoomRangeAxes(double factor, PlotRenderingInfo state, 
                              Point2D source) {
        // delegate to other method
        zoomRangeAxes(factor, state, source, false);    
    }

    /**
     * Multiplies the range on the range axis/axes by the specified factor.
     *
     * @param factor  the zoom factor.
     * @param info  the plot rendering info.
     * @param source  the source point.
     * @param useAnchor  a flag that controls whether or not the source point
     *         is used for the zoom anchor.
     * 
     * @see #zoomDomainAxes(double, PlotRenderingInfo, Point2D, boolean)
     * 
     * @since 1.0.7
     */
    public void zoomRangeAxes(double factor, PlotRenderingInfo info,
                              Point2D source, boolean useAnchor) {
                
        // perform the zoom on each range axis
        for (int i = 0; i < this.rangeAxes.size(); i++) {
            ValueAxis rangeAxis = (ValueAxis) this.rangeAxes.get(i);
            if (rangeAxis != null) {
                if (useAnchor) {
                    // get the relevant source coordinate given the plot 
                    // orientation
                    double sourceY = source.getY();
                    if (this.orientation == PlotOrientation.HORIZONTAL) {
                        sourceY = source.getX();
                    }
                    double anchorY = rangeAxis.java2DToValue(sourceY, 
                            info.getDataArea(), getRangeAxisEdge());
                    rangeAxis.resizeRange(factor, anchorY);
                }
                else {
                    rangeAxis.resizeRange(factor);
                }
            }
        }
    }

    /**
     * Zooms in on the range axes.
     * 
     * @param lowerPercent  the lower bound.
     * @param upperPercent  the upper bound.
     * @param state  the plot state.
     * @param source  the source point (in Java2D space) for the zoom.
     */
    public void zoomRangeAxes(double lowerPercent, double upperPercent, 
                              PlotRenderingInfo state, Point2D source) {
        for (int i = 0; i < this.rangeAxes.size(); i++) {
            ValueAxis rangeAxis = (ValueAxis) this.rangeAxes.get(i);
            if (rangeAxis != null) {
                rangeAxis.zoomRange(lowerPercent, upperPercent);
            }
        }
    }
    
    /**
     * Returns the anchor value.
     * 
     * @return The anchor value.
     * 
     * @see #setAnchorValue(double)
     */
    public double getAnchorValue() {
        return this.anchorValue;
    }

    /**
     * Sets the anchor value and sends a {@link PlotChangeEvent} to all 
     * registered listeners.
     * 
     * @param value  the anchor value.
     * 
     * @see #getAnchorValue()
     */
    public void setAnchorValue(double value) {
        setAnchorValue(value, true);
    }

    /**
     * Sets the anchor value and, if requested, sends a {@link PlotChangeEvent}
     * to all registered listeners.
     * 
     * @param value  the value.
     * @param notify  notify listeners?
     * 
     * @see #getAnchorValue()
     */
    public void setAnchorValue(double value, boolean notify) {
        this.anchorValue = value;
        if (notify) {
            fireChangeEvent();
        }
    }
    
    /** 
     * Tests the plot for equality with an arbitrary object.
     * 
     * @param obj  the object to test against (<code>null</code> permitted).
     * 
     * @return A boolean.
     */
    public boolean equals(Object obj) {
    
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CategoryPlot)) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }

        CategoryPlot that = (CategoryPlot) obj;
            
        if (this.orientation != that.orientation) {
            return false;
        }
        if (!ObjectUtilities.equal(this.axisOffset, that.axisOffset)) {
            return false;
        }
        if (!this.domainAxes.equals(that.domainAxes)) {
            return false;
        }
        if (!this.domainAxisLocations.equals(that.domainAxisLocations)) {
            return false;
        }
        if (this.drawSharedDomainAxis != that.drawSharedDomainAxis) {
            return false;
        }
        if (!this.rangeAxes.equals(that.rangeAxes)) {
            return false;
        }
        if (!this.rangeAxisLocations.equals(that.rangeAxisLocations)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.datasetToDomainAxisMap, 
                that.datasetToDomainAxisMap)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.datasetToRangeAxisMap, 
                that.datasetToRangeAxisMap)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.renderers, that.renderers)) {
            return false;
        }
        if (this.renderingOrder != that.renderingOrder) {
            return false;
        }
        if (this.columnRenderingOrder != that.columnRenderingOrder) {
            return false;
        }
        if (this.rowRenderingOrder != that.rowRenderingOrder) {
            return false;
        }
        if (this.domainGridlinesVisible != that.domainGridlinesVisible) {
            return false;
        }
        if (this.domainGridlinePosition != that.domainGridlinePosition) {
            return false;
        }
        if (!ObjectUtilities.equal(this.domainGridlineStroke, 
                that.domainGridlineStroke)) {
            return false;
        }
        if (!PaintUtilities.equal(this.domainGridlinePaint, 
                that.domainGridlinePaint)) {
            return false;
        }
        if (this.rangeGridlinesVisible != that.rangeGridlinesVisible) {
            return false;
        }
        if (!ObjectUtilities.equal(this.rangeGridlineStroke, 
                that.rangeGridlineStroke)) {
            return false;
        }
        if (!PaintUtilities.equal(this.rangeGridlinePaint, 
                that.rangeGridlinePaint)) {
            return false;
        }
        if (this.anchorValue != that.anchorValue) {
            return false;
        }
        if (this.rangeCrosshairVisible != that.rangeCrosshairVisible) {
            return false;
        }
        if (this.rangeCrosshairValue != that.rangeCrosshairValue) {
            return false;
        }
        if (!ObjectUtilities.equal(this.rangeCrosshairStroke, 
                that.rangeCrosshairStroke)) {
            return false;
        }
        if (!PaintUtilities.equal(this.rangeCrosshairPaint, 
                that.rangeCrosshairPaint)) {
            return false;
        }
        if (this.rangeCrosshairLockedOnData 
                != that.rangeCrosshairLockedOnData) {
            return false;
        }      
        if (!ObjectUtilities.equal(this.foregroundRangeMarkers, 
                that.foregroundRangeMarkers)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.backgroundRangeMarkers, 
                that.backgroundRangeMarkers)) {
            return false;
        }
        if (!ObjectUtilities.equal(this.annotations, that.annotations)) {
            return false;
        }
        if (this.weight != that.weight) {
            return false;
        }
        if (!ObjectUtilities.equal(this.fixedDomainAxisSpace, 
                that.fixedDomainAxisSpace)) {
            return false;
        }    
        if (!ObjectUtilities.equal(this.fixedRangeAxisSpace, 
                that.fixedRangeAxisSpace)) {
            return false;
        }    
        
        return true;
        
    }
    
    /**
     * Returns a clone of the plot.
     * 
     * @return A clone.
     * 
     * @throws CloneNotSupportedException  if the cloning is not supported.
     */
    public Object clone() throws CloneNotSupportedException {
        
        CategoryPlot clone = (CategoryPlot) super.clone();
        
        clone.domainAxes = new ObjectList();
        for (int i = 0; i < this.domainAxes.size(); i++) {
            CategoryAxis xAxis = (CategoryAxis) this.domainAxes.get(i);
            if (xAxis != null) {
                CategoryAxis clonedAxis = (CategoryAxis) xAxis.clone();
                clone.setDomainAxis(i, clonedAxis);
            }
        }
        clone.domainAxisLocations 
            = (ObjectList) this.domainAxisLocations.clone();

        clone.rangeAxes = new ObjectList();
        for (int i = 0; i < this.rangeAxes.size(); i++) {
            ValueAxis yAxis = (ValueAxis) this.rangeAxes.get(i);
            if (yAxis != null) {
                ValueAxis clonedAxis = (ValueAxis) yAxis.clone();
                clone.setRangeAxis(i, clonedAxis);
            }
        }
        clone.rangeAxisLocations = (ObjectList) this.rangeAxisLocations.clone();

        clone.datasets = (ObjectList) this.datasets.clone();
        for (int i = 0; i < clone.datasets.size(); i++) {
            CategoryDataset dataset = clone.getDataset(i);
            if (dataset != null) {
                dataset.addChangeListener(clone);
            }
        }
        clone.datasetToDomainAxisMap 
            = (ObjectList) this.datasetToDomainAxisMap.clone();
        clone.datasetToRangeAxisMap 
            = (ObjectList) this.datasetToRangeAxisMap.clone();
        clone.renderers = (ObjectList) this.renderers.clone();
        if (this.fixedDomainAxisSpace != null) {
            clone.fixedDomainAxisSpace = (AxisSpace) ObjectUtilities.clone(
                    this.fixedDomainAxisSpace);
        }
        if (this.fixedRangeAxisSpace != null) {
            clone.fixedRangeAxisSpace = (AxisSpace) ObjectUtilities.clone(
                    this.fixedRangeAxisSpace);
        }
        
        return clone;
            
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
        SerialUtilities.writeStroke(this.domainGridlineStroke, stream);
        SerialUtilities.writePaint(this.domainGridlinePaint, stream);
        SerialUtilities.writeStroke(this.rangeGridlineStroke, stream);
        SerialUtilities.writePaint(this.rangeGridlinePaint, stream);
        SerialUtilities.writeStroke(this.rangeCrosshairStroke, stream);
        SerialUtilities.writePaint(this.rangeCrosshairPaint, stream);
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
        this.domainGridlineStroke = SerialUtilities.readStroke(stream);
        this.domainGridlinePaint = SerialUtilities.readPaint(stream);
        this.rangeGridlineStroke = SerialUtilities.readStroke(stream);
        this.rangeGridlinePaint = SerialUtilities.readPaint(stream);
        this.rangeCrosshairStroke = SerialUtilities.readStroke(stream);
        this.rangeCrosshairPaint = SerialUtilities.readPaint(stream);

        for (int i = 0; i < this.domainAxes.size(); i++) {
            CategoryAxis xAxis = (CategoryAxis) this.domainAxes.get(i);
            if (xAxis != null) {
                xAxis.setPlot(this);
                xAxis.addChangeListener(this);
            }
        } 
        for (int i = 0; i < this.rangeAxes.size(); i++) {
            ValueAxis yAxis = (ValueAxis) this.rangeAxes.get(i);
            if (yAxis != null) {
                yAxis.setPlot(this);   
                yAxis.addChangeListener(this);
            }
        }
        int datasetCount = this.datasets.size();
        for (int i = 0; i < datasetCount; i++) {
            Dataset dataset = (Dataset) this.datasets.get(i);
            if (dataset != null) {
                dataset.addChangeListener(this);
            }
        }
        int rendererCount = this.renderers.size();
        for (int i = 0; i < rendererCount; i++) {
            CategoryItemRenderer renderer 
                = (CategoryItemRenderer) this.renderers.get(i);
            if (renderer != null) {
                renderer.addChangeListener(this);
            }
        }

    }

}
