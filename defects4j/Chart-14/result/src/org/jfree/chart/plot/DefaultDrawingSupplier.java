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
 * ---------------------------
 * DefaultDrawingSupplier.java
 * ---------------------------
 * (C) Copyright 2003-2007, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Jeremy Bowman;
 *
 * Changes
 * -------
 * 16-Jan-2003 : Version 1 (DG);
 * 17-Jan-2003 : Added stroke method, renamed DefaultPaintSupplier 
 *               --> DefaultDrawingSupplier (DG)
 * 27-Jan-2003 : Incorporated code from SeriesShapeFactory, originally 
 *               contributed by Jeremy Bowman (DG);
 * 25-Mar-2003 : Implemented Serializable (DG);
 * 20-Aug-2003 : Implemented Cloneable and PublicCloneable (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 13-Jun-2007 : Added fillPaintSequence (DG);
 * 21-Jun-2007 : Removed JCommon dependencies (DG);
 *
 */

 package org.jfree.chart.plot;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Paint;
import java.awt.Polygon;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;

import org.jfree.chart.ChartColor;
import org.jfree.chart.util.PublicCloneable;
import org.jfree.chart.util.SerialUtilities;
import org.jfree.chart.util.ShapeUtilities;

/**
 * A default implementation of the {@link DrawingSupplier} interface.  All
 * {@link Plot} instances have a new instance of this class installed by 
 * default.
 */
public class DefaultDrawingSupplier implements DrawingSupplier, Cloneable, 
        PublicCloneable, Serializable {

    /** For serialization. */
    private static final long serialVersionUID = -7339847061039422538L;
    
    /** The default fill paint sequence. */
    public static final Paint[] DEFAULT_PAINT_SEQUENCE 
            = ChartColor.createDefaultPaintArray();

    /** The default outline paint sequence. */
    public static final Paint[] DEFAULT_OUTLINE_PAINT_SEQUENCE = new Paint[] {
            Color.lightGray};

    /** The default fill paint sequence. */
    public static final Paint[] DEFAULT_FILL_PAINT_SEQUENCE = new Paint[] {
            Color.white};

    /** The default stroke sequence. */
    public static final Stroke[] DEFAULT_STROKE_SEQUENCE = new Stroke[] {
            new BasicStroke(1.0f, BasicStroke.CAP_SQUARE, 
                    BasicStroke.JOIN_BEVEL)};

    /** The default outline stroke sequence. */
    public static final Stroke[] DEFAULT_OUTLINE_STROKE_SEQUENCE 
            = new Stroke[] {new BasicStroke(1.0f, BasicStroke.CAP_SQUARE, 
                    BasicStroke.JOIN_BEVEL)};

    /** The default shape sequence. */
    public static final Shape[] DEFAULT_SHAPE_SEQUENCE 
            = createStandardSeriesShapes();

    /** The paint sequence. */
    private transient Paint[] paintSequence;

    /** The current paint index. */
    private int paintIndex;

    /** The outline paint sequence. */
    private transient Paint[] outlinePaintSequence;

    /** The current outline paint index. */
    private int outlinePaintIndex;

    /** The fill paint sequence. */
    private transient Paint[] fillPaintSequence;

    /** The current fill paint index. */
    private int fillPaintIndex;

    /** The stroke sequence. */
    private transient Stroke[] strokeSequence;

    /** The current stroke index. */
    private int strokeIndex;

    /** The outline stroke sequence. */
    private transient Stroke[] outlineStrokeSequence;

    /** The current outline stroke index. */
    private int outlineStrokeIndex;

    /** The shape sequence. */
    private transient Shape[] shapeSequence;

    /** The current shape index. */
    private int shapeIndex;

    /**
     * Creates a new supplier, with default sequences for fill paint, outline 
     * paint, stroke and shapes.
     */
    public DefaultDrawingSupplier() {

        this(DEFAULT_PAINT_SEQUENCE, DEFAULT_FILL_PAINT_SEQUENCE,
             DEFAULT_OUTLINE_PAINT_SEQUENCE,
             DEFAULT_STROKE_SEQUENCE,
             DEFAULT_OUTLINE_STROKE_SEQUENCE,
             DEFAULT_SHAPE_SEQUENCE);

    }

    /**
     * Creates a new supplier.
     *
     * @param paintSequence  the fill paint sequence.
     * @param outlinePaintSequence  the outline paint sequence.
     * @param strokeSequence  the stroke sequence.
     * @param outlineStrokeSequence  the outline stroke sequence.
     * @param shapeSequence  the shape sequence.
     */
    public DefaultDrawingSupplier(Paint[] paintSequence,
                                  Paint[] outlinePaintSequence,
                                  Stroke[] strokeSequence,
                                  Stroke[] outlineStrokeSequence,
                                  Shape[] shapeSequence) {

        this.paintSequence = paintSequence;
        this.fillPaintSequence = DEFAULT_FILL_PAINT_SEQUENCE;
        this.outlinePaintSequence = outlinePaintSequence;
        this.strokeSequence = strokeSequence;
        this.outlineStrokeSequence = outlineStrokeSequence;
        this.shapeSequence = shapeSequence;

    }

    /**
     * Creates a new supplier.
     *
     * @param paintSequence  the paint sequence.
     * @param fillPaintSequence  the fill paint sequence.
     * @param outlinePaintSequence  the outline paint sequence.
     * @param strokeSequence  the stroke sequence.
     * @param outlineStrokeSequence  the outline stroke sequence.
     * @param shapeSequence  the shape sequence.
     * 
     * @since 1.0.6
     */
    public DefaultDrawingSupplier(Paint[] paintSequence, 
            Paint[] fillPaintSequence, Paint[] outlinePaintSequence,
            Stroke[] strokeSequence, Stroke[] outlineStrokeSequence,
            Shape[] shapeSequence) {

        int PROBE_START_LINE_199 = 199;
				java.awt.Paint[] p_paint_sequence_387_line_199 = paintSequence;
				int PROBE_END_LINE_199 = 199;
		this.paintSequence = p_paint_sequence_387_line_199;
        int PROBE_START_LINE_200 = 200;
		java.awt.Paint[] p_fill_paint_sequence_388_line_200 = fillPaintSequence;
		int PROBE_END_LINE_200 = 200;
		this.fillPaintSequence = p_fill_paint_sequence_388_line_200;
        int PROBE_START_LINE_201 = 201;
		java.awt.Paint[] p_outline_paint_sequence_389_line_201 = outlinePaintSequence;
		int PROBE_END_LINE_201 = 201;
		this.outlinePaintSequence = p_outline_paint_sequence_389_line_201;
        int PROBE_START_LINE_202 = 202;
		java.awt.Stroke[] p_stroke_sequence_390_line_202 = strokeSequence;
		int PROBE_END_LINE_202 = 202;
		this.strokeSequence = p_stroke_sequence_390_line_202;
        int PROBE_START_LINE_203 = 203;
		java.awt.Stroke[] p_outline_stroke_sequence_391_line_203 = outlineStrokeSequence;
		int PROBE_END_LINE_203 = 203;
		this.outlineStrokeSequence = p_outline_stroke_sequence_391_line_203;
        int PROBE_START_LINE_204 = 204;
		java.awt.Shape[] p_shape_sequence_392_line_204 = shapeSequence;
		int PROBE_END_LINE_204 = 204;
		this.shapeSequence = p_shape_sequence_392_line_204;
    }

    /**
     * Returns the next paint in the sequence.
     *
     * @return The paint.
     */
    public Paint getNextPaint() {
        Paint result 
            = this.paintSequence[this.paintIndex % this.paintSequence.length];
        this.paintIndex++;
        return result;
    }

    /**
     * Returns the next outline paint in the sequence.
     *
     * @return The paint.
     */
    public Paint getNextOutlinePaint() {
        Paint result = this.outlinePaintSequence[
                this.outlinePaintIndex % this.outlinePaintSequence.length];
        this.outlinePaintIndex++;
        return result;
    }

    /**
     * Returns the next fill paint in the sequence.
     *
     * @return The paint.
     * 
     * @since 1.0.6
     */
    public Paint getNextFillPaint() {
        Paint result = this.fillPaintSequence[this.fillPaintIndex 
                % this.fillPaintSequence.length];
        this.fillPaintIndex++;
        return result;
    }

    /**
     * Returns the next stroke in the sequence.
     *
     * @return The stroke.
     */
    public Stroke getNextStroke() {
        Stroke result = this.strokeSequence[
                this.strokeIndex % this.strokeSequence.length];
        this.strokeIndex++;
        return result;
    }

    /**
     * Returns the next outline stroke in the sequence.
     *
     * @return The stroke.
     */
    public Stroke getNextOutlineStroke() {
        Stroke result = this.outlineStrokeSequence[
                this.outlineStrokeIndex % this.outlineStrokeSequence.length];
        this.outlineStrokeIndex++;
        return result;
    }

    /**
     * Returns the next shape in the sequence.
     *
     * @return The shape.
     */
    public Shape getNextShape() {
        Shape result = this.shapeSequence[
                this.shapeIndex % this.shapeSequence.length];
        this.shapeIndex++;
        return result;
    }

    /**
     * Creates an array of standard shapes to display for the items in series 
     * on charts.
     *
     * @return The array of shapes.
     */
    public static Shape[] createStandardSeriesShapes() {

        Shape[] result = new Shape[10];

        double size = 6.0;
        int PROBE_START_LINE_292 = 292;
		double v_size_400_line_292 = size;
		double default_drawing_supplier_1_expr30_line_292 = v_size_400_line_292 / 2.0;
		int PROBE_END_LINE_292 = 292;
		double delta = default_drawing_supplier_1_expr30_line_292;
        int[] xpoints = null;
        int[] ypoints = null;

        int PROBE_START_LINE_297 = 297;
		java.awt.Shape[] v_result_399_line_297 = result;
		double v_delta_401_line_297 = delta;
		double default_drawing_supplier_1_expr34_line_297 = -v_delta_401_line_297;
		double v_delta_401_line_297_v1 = delta;
		double default_drawing_supplier_1_expr35_line_297 = -v_delta_401_line_297_v1;
		double v_size_400_line_297 = size;
		double v_size_400_line_297_v1 = size;
		int PROBE_END_LINE_297 = 297;
		// square
        v_result_399_line_297[0] = new Rectangle2D.Double(default_drawing_supplier_1_expr34_line_297, default_drawing_supplier_1_expr35_line_297, v_size_400_line_297, v_size_400_line_297_v1);
        int PROBE_START_LINE_299 = 299;
		java.awt.Shape[] v_result_399_line_299 = result;
		double v_delta_401_line_299 = delta;
		double default_drawing_supplier_1_expr39_line_299 = -v_delta_401_line_299;
		double v_delta_401_line_299_v1 = delta;
		double default_drawing_supplier_1_expr40_line_299 = -v_delta_401_line_299_v1;
		double v_size_400_line_299 = size;
		double v_size_400_line_299_v1 = size;
		int PROBE_END_LINE_299 = 299;
		// circle
        v_result_399_line_299[1] = new Ellipse2D.Double(default_drawing_supplier_1_expr39_line_299, default_drawing_supplier_1_expr40_line_299, v_size_400_line_299, v_size_400_line_299_v1);

        int PROBE_START_LINE_302 = 302;
		double v_delta_401_line_302 = delta;
		double v_delta_401_line_302_v1 = delta;
		double default_drawing_supplier_1_expr43_line_302 = -v_delta_401_line_302_v1;
		int[] default_drawing_supplier_1_expr42_line_302 = intArray(0.0, v_delta_401_line_302,
				default_drawing_supplier_1_expr43_line_302);
		int PROBE_END_LINE_302 = 302;
		// up-pointing triangle
        xpoints = default_drawing_supplier_1_expr42_line_302;
        int PROBE_START_LINE_303 = 303;
		double v_delta_401_line_303 = delta;
		double default_drawing_supplier_1_expr46_line_303 = -v_delta_401_line_303;
		double v_delta_401_line_303_v1 = delta;
		double v_delta_401_line_303_v2 = delta;
		int[] default_drawing_supplier_1_expr45_line_303 = intArray(default_drawing_supplier_1_expr46_line_303,
				v_delta_401_line_303_v1, v_delta_401_line_303_v2);
		int PROBE_END_LINE_303 = 303;
		ypoints = default_drawing_supplier_1_expr45_line_303;
        int PROBE_START_LINE_304 = 304;
		java.awt.Shape[] v_result_399_line_304 = result;
		int[] v_xpoints_402_line_304 = xpoints;
		int[] v_ypoints_403_line_304 = ypoints;
		int PROBE_END_LINE_304 = 304;
		v_result_399_line_304[2] = new Polygon(v_xpoints_402_line_304, v_ypoints_403_line_304, 3);

        int PROBE_START_LINE_307 = 307;
		double v_delta_401_line_307 = delta;
		double v_delta_401_line_307_v1 = delta;
		double default_drawing_supplier_1_expr52_line_307 = -v_delta_401_line_307_v1;
		int[] default_drawing_supplier_1_expr51_line_307 = intArray(0.0, v_delta_401_line_307, 0.0,
				default_drawing_supplier_1_expr52_line_307);
		int PROBE_END_LINE_307 = 307;
		// diamond
        xpoints = default_drawing_supplier_1_expr51_line_307;
        int PROBE_START_LINE_308 = 308;
		double v_delta_401_line_308 = delta;
		double default_drawing_supplier_1_expr55_line_308 = -v_delta_401_line_308;
		double v_delta_401_line_308_v1 = delta;
		int[] default_drawing_supplier_1_expr54_line_308 = intArray(default_drawing_supplier_1_expr55_line_308, 0.0,
				v_delta_401_line_308_v1, 0.0);
		int PROBE_END_LINE_308 = 308;
		ypoints = default_drawing_supplier_1_expr54_line_308;
        int PROBE_START_LINE_309 = 309;
		java.awt.Shape[] v_result_399_line_309 = result;
		int[] v_xpoints_402_line_309 = xpoints;
		int[] v_ypoints_403_line_309 = ypoints;
		int PROBE_END_LINE_309 = 309;
		v_result_399_line_309[3] = new Polygon(v_xpoints_402_line_309, v_ypoints_403_line_309, 4);

        int PROBE_START_LINE_312 = 312;
		java.awt.Shape[] v_result_399_line_312 = result;
		double v_delta_401_line_312 = delta;
		double default_drawing_supplier_1_expr62_line_312 = -v_delta_401_line_312;
		double v_delta_401_line_312_v1 = delta;
		double default_drawing_supplier_1_expr65_line_312 = -v_delta_401_line_312_v1;
		double default_drawing_supplier_1_expr63_line_312 = default_drawing_supplier_1_expr65_line_312 / 2;
		double v_size_400_line_312 = size;
		double v_size_400_line_312_v1 = size;
		double default_drawing_supplier_1_expr64_line_312 = v_size_400_line_312_v1 / 2;
		int PROBE_END_LINE_312 = 312;
		// horizontal rectangle
        v_result_399_line_312[4] = new Rectangle2D.Double(default_drawing_supplier_1_expr62_line_312, default_drawing_supplier_1_expr63_line_312, v_size_400_line_312, default_drawing_supplier_1_expr64_line_312);

        int PROBE_START_LINE_315 = 315;
		double v_delta_401_line_315 = delta;
		double default_drawing_supplier_1_expr68_line_315 = -v_delta_401_line_315;
		double v_delta_401_line_315_v1 = delta;
		double default_drawing_supplier_1_expr69_line_315 = +v_delta_401_line_315_v1;
		int[] default_drawing_supplier_1_expr67_line_315 = intArray(default_drawing_supplier_1_expr68_line_315,
				default_drawing_supplier_1_expr69_line_315, 0.0);
		int PROBE_END_LINE_315 = 315;
		// down-pointing triangle
        xpoints = default_drawing_supplier_1_expr67_line_315;
        int PROBE_START_LINE_316 = 316;
		double v_delta_401_line_316 = delta;
		double default_drawing_supplier_1_expr72_line_316 = -v_delta_401_line_316;
		double v_delta_401_line_316_v1 = delta;
		double default_drawing_supplier_1_expr73_line_316 = -v_delta_401_line_316_v1;
		double v_delta_401_line_316_v2 = delta;
		int[] default_drawing_supplier_1_expr71_line_316 = intArray(default_drawing_supplier_1_expr72_line_316,
				default_drawing_supplier_1_expr73_line_316, v_delta_401_line_316_v2);
		int PROBE_END_LINE_316 = 316;
		ypoints = default_drawing_supplier_1_expr71_line_316;
        int PROBE_START_LINE_317 = 317;
		java.awt.Shape[] v_result_399_line_317 = result;
		int[] v_xpoints_402_line_317 = xpoints;
		int[] v_ypoints_403_line_317 = ypoints;
		int PROBE_END_LINE_317 = 317;
		v_result_399_line_317[5] = new Polygon(v_xpoints_402_line_317, v_ypoints_403_line_317, 3);

        int PROBE_START_LINE_320 = 320;
		java.awt.Shape[] v_result_399_line_320 = result;
		double v_delta_401_line_320 = delta;
		double default_drawing_supplier_1_expr80_line_320 = -v_delta_401_line_320;
		double v_delta_401_line_320_v1 = delta;
		double default_drawing_supplier_1_expr83_line_320 = -v_delta_401_line_320_v1;
		double default_drawing_supplier_1_expr81_line_320 = default_drawing_supplier_1_expr83_line_320 / 2;
		double v_size_400_line_320 = size;
		double v_size_400_line_320_v1 = size;
		double default_drawing_supplier_1_expr82_line_320 = v_size_400_line_320_v1 / 2;
		int PROBE_END_LINE_320 = 320;
		// horizontal ellipse
        v_result_399_line_320[6] = new Ellipse2D.Double(default_drawing_supplier_1_expr80_line_320, default_drawing_supplier_1_expr81_line_320, v_size_400_line_320, default_drawing_supplier_1_expr82_line_320);

        int PROBE_START_LINE_323 = 323;
		double v_delta_401_line_323 = delta;
		double default_drawing_supplier_1_expr86_line_323 = -v_delta_401_line_323;
		double v_delta_401_line_323_v1 = delta;
		double v_delta_401_line_323_v2 = delta;
		double default_drawing_supplier_1_expr87_line_323 = -v_delta_401_line_323_v2;
		int[] default_drawing_supplier_1_expr85_line_323 = intArray(default_drawing_supplier_1_expr86_line_323,
				v_delta_401_line_323_v1, default_drawing_supplier_1_expr87_line_323);
		int PROBE_END_LINE_323 = 323;
		// right-pointing triangle
        xpoints = default_drawing_supplier_1_expr85_line_323;
        int PROBE_START_LINE_324 = 324;
		double v_delta_401_line_324 = delta;
		double default_drawing_supplier_1_expr90_line_324 = -v_delta_401_line_324;
		double v_delta_401_line_324_v1 = delta;
		int[] default_drawing_supplier_1_expr89_line_324 = intArray(default_drawing_supplier_1_expr90_line_324, 0.0,
				v_delta_401_line_324_v1);
		int PROBE_END_LINE_324 = 324;
		ypoints = default_drawing_supplier_1_expr89_line_324;
        int PROBE_START_LINE_325 = 325;
		java.awt.Shape[] v_result_399_line_325 = result;
		int[] v_xpoints_402_line_325 = xpoints;
		int[] v_ypoints_403_line_325 = ypoints;
		int PROBE_END_LINE_325 = 325;
		v_result_399_line_325[7] = new Polygon(v_xpoints_402_line_325, v_ypoints_403_line_325, 3);

        int PROBE_START_LINE_328 = 328;
		java.awt.Shape[] v_result_399_line_328 = result;
		double v_delta_401_line_328 = delta;
		double default_drawing_supplier_1_expr100_line_328 = -v_delta_401_line_328;
		double default_drawing_supplier_1_expr97_line_328 = default_drawing_supplier_1_expr100_line_328 / 2;
		double v_delta_401_line_328_v1 = delta;
		double default_drawing_supplier_1_expr98_line_328 = -v_delta_401_line_328_v1;
		double v_size_400_line_328 = size;
		double default_drawing_supplier_1_expr99_line_328 = v_size_400_line_328 / 2;
		double v_size_400_line_328_v1 = size;
		int PROBE_END_LINE_328 = 328;
		// vertical rectangle
        v_result_399_line_328[8] = new Rectangle2D.Double(default_drawing_supplier_1_expr97_line_328, default_drawing_supplier_1_expr98_line_328, default_drawing_supplier_1_expr99_line_328, v_size_400_line_328_v1);

        int PROBE_START_LINE_331 = 331;
		double v_delta_401_line_331 = delta;
		double default_drawing_supplier_1_expr103_line_331 = -v_delta_401_line_331;
		double v_delta_401_line_331_v1 = delta;
		double v_delta_401_line_331_v2 = delta;
		int[] default_drawing_supplier_1_expr102_line_331 = intArray(default_drawing_supplier_1_expr103_line_331,
				v_delta_401_line_331_v1, v_delta_401_line_331_v2);
		int PROBE_END_LINE_331 = 331;
		// left-pointing triangle
        xpoints = default_drawing_supplier_1_expr102_line_331;
        int PROBE_START_LINE_332 = 332;
		double v_delta_401_line_332 = delta;
		double default_drawing_supplier_1_expr106_line_332 = -v_delta_401_line_332;
		double v_delta_401_line_332_v1 = delta;
		double default_drawing_supplier_1_expr107_line_332 = +v_delta_401_line_332_v1;
		int[] default_drawing_supplier_1_expr105_line_332 = intArray(0.0, default_drawing_supplier_1_expr106_line_332,
				default_drawing_supplier_1_expr107_line_332);
		int PROBE_END_LINE_332 = 332;
		ypoints = default_drawing_supplier_1_expr105_line_332;
        int PROBE_START_LINE_333 = 333;
		java.awt.Shape[] v_result_399_line_333 = result;
		int[] v_xpoints_402_line_333 = xpoints;
		int[] v_ypoints_403_line_333 = ypoints;
		int PROBE_END_LINE_333 = 333;
		v_result_399_line_333[9] = new Polygon(v_xpoints_402_line_333, v_ypoints_403_line_333, 3);

        int PROBE_START_LINE_335 = 335;
		java.awt.Shape[] v_result_399_line_335 = result;
		int PROBE_END_LINE_335 = 335;
		return v_result_399_line_335;

    }

    /**
     * Tests this object for equality with another object.
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {

        if (obj == this) {
            return true;
        }

        if (!(obj instanceof DefaultDrawingSupplier)) {
            return false;
        }

        DefaultDrawingSupplier that = (DefaultDrawingSupplier) obj;

        if (!Arrays.equals(this.paintSequence, that.paintSequence)) {
            return false;
        }
        if (this.paintIndex != that.paintIndex) {
            return false;   
        }
        if (!Arrays.equals(this.outlinePaintSequence, 
                that.outlinePaintSequence)) {
            return false;
        }
        if (this.outlinePaintIndex != that.outlinePaintIndex) {
            return false;
        }
        if (!Arrays.equals(this.strokeSequence, that.strokeSequence)) {
            return false;
        }
        if (this.strokeIndex != that.strokeIndex) {
            return false;   
        }
        if (!Arrays.equals(this.outlineStrokeSequence, 
                that.outlineStrokeSequence)) {
            return false;
        }
        if (this.outlineStrokeIndex != that.outlineStrokeIndex) {
            return false;   
        }
        if (!equalShapes(this.shapeSequence, that.shapeSequence)) {
            return false;
        }
        if (this.shapeIndex != that.shapeIndex) {
            return false;
        }
        return true;

    }
    
    /**
     * A utility method for testing the equality of two arrays of shapes.
     * 
     * @param s1  the first array (<code>null</code> permitted).
     * @param s2  the second array (<code>null</code> permitted).
     * 
     * @return A boolean.
     */
    private boolean equalShapes(Shape[] s1, Shape[] s2) {
        if (s1 == null) {
            return s2 == null;   
        }
        if (s2 == null) {
            return false;   
        }
        if (s1.length != s2.length) {
            return false;   
        }
        for (int i = 0; i < s1.length; i++) {
            if (!ShapeUtilities.equal(s1[i], s2[i])) {
                return false;   
            }
        }
        return true;
    }

    /**
     * Handles serialization.
     *
     * @param stream  the output stream.
     *
     * @throws IOException if there is an I/O problem.
     */
    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();

        int paintCount = this.paintSequence.length;
        stream.writeInt(paintCount);
        for (int i = 0; i < paintCount; i++) {
            SerialUtilities.writePaint(this.paintSequence[i], stream);
        }

        int outlinePaintCount = this.outlinePaintSequence.length;
        stream.writeInt(outlinePaintCount);
        for (int i = 0; i < outlinePaintCount; i++) {
            SerialUtilities.writePaint(this.outlinePaintSequence[i], stream);
        }

        int strokeCount = this.strokeSequence.length;
        stream.writeInt(strokeCount);
        for (int i = 0; i < strokeCount; i++) {
            SerialUtilities.writeStroke(this.strokeSequence[i], stream);
        }

        int outlineStrokeCount = this.outlineStrokeSequence.length;
        stream.writeInt(outlineStrokeCount);
        for (int i = 0; i < outlineStrokeCount; i++) {
            SerialUtilities.writeStroke(this.outlineStrokeSequence[i], stream);
        }

        int shapeCount = this.shapeSequence.length;
        stream.writeInt(shapeCount);
        for (int i = 0; i < shapeCount; i++) {
            SerialUtilities.writeShape(this.shapeSequence[i], stream);
        }

    }

    /**
     * Restores a serialized object.
     *
     * @param stream  the input stream.
     *
     * @throws IOException if there is an I/O problem.
     * @throws ClassNotFoundException if there is a problem loading a class.
     */
    private void readObject(ObjectInputStream stream) 
        throws IOException, ClassNotFoundException {
        stream.defaultReadObject();

        int paintCount = stream.readInt();
        this.paintSequence = new Paint[paintCount];
        for (int i = 0; i < paintCount; i++) {
            this.paintSequence[i] = SerialUtilities.readPaint(stream);
        }

        int outlinePaintCount = stream.readInt();
        this.outlinePaintSequence = new Paint[outlinePaintCount];
        for (int i = 0; i < outlinePaintCount; i++) {
            this.outlinePaintSequence[i] = SerialUtilities.readPaint(stream);
        }

        int strokeCount = stream.readInt();
        this.strokeSequence = new Stroke[strokeCount];
        for (int i = 0; i < strokeCount; i++) {
            this.strokeSequence[i] = SerialUtilities.readStroke(stream);
        }

        int outlineStrokeCount = stream.readInt();
        this.outlineStrokeSequence = new Stroke[outlineStrokeCount];
        for (int i = 0; i < outlineStrokeCount; i++) {
            this.outlineStrokeSequence[i] = SerialUtilities.readStroke(stream);
        }

        int shapeCount = stream.readInt();
        this.shapeSequence = new Shape[shapeCount];
        for (int i = 0; i < shapeCount; i++) {
            this.shapeSequence[i] = SerialUtilities.readShape(stream);
        }

    }

    /**
     * Helper method to avoid lots of explicit casts in getShape().  Returns
     * an array containing the provided doubles cast to ints.
     *
     * @param a  x
     * @param b  y
     * @param c  z
     *
     * @return int[3] with converted params.
     */
    private static int[] intArray(double a, double b, double c) {
        int PROBE_START_LINE_517 = 517;
		double p_a_409_line_517 = a;
		double p_b_410_line_517 = b;
		double p_c_411_line_517 = c;
		int PROBE_END_LINE_517 = 517;
		return new int[] {(int) p_a_409_line_517, (int) p_b_410_line_517, (int) p_c_411_line_517};
    }

    /**
     * Helper method to avoid lots of explicit casts in getShape().  Returns
     * an array containing the provided doubles cast to ints.
     *
     * @param a  x
     * @param b  y
     * @param c  z
     * @param d  t
     *
     * @return int[4] with converted params.
     */
    private static int[] intArray(double a, double b, double c, double d) {
        int PROBE_START_LINE_532 = 532;
		double p_a_412_line_532 = a;
		double p_b_413_line_532 = b;
		double p_c_414_line_532 = c;
		double p_d_415_line_532 = d;
		int PROBE_END_LINE_532 = 532;
		return new int[] {(int) p_a_412_line_532, (int) p_b_413_line_532, (int) p_c_414_line_532, (int) p_d_415_line_532};
    }

    /**
     * Returns a clone.
     * 
     * @return A clone.
     * 
     * @throws CloneNotSupportedException if a component of the supplier does 
     *                                    not support cloning.
     */
    public Object clone() throws CloneNotSupportedException {
        DefaultDrawingSupplier clone = (DefaultDrawingSupplier) super.clone(); 
        return clone;
    }
}
