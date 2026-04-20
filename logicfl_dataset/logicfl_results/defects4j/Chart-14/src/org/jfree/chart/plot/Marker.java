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
 * -----------
 * Marker.java
 * -----------
 * (C) Copyright 2002-2007, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Nicolas Brodu;
 *
 * Changes (since 2-Jul-2002)
 * --------------------------
 * 02-Jul-2002 : Added extra constructor, standard header and Javadoc 
 *               comments (DG);
 * 20-Aug-2002 : Added the outline stroke attribute (DG);
 * 02-Oct-2002 : Fixed errors reported by Checkstyle (DG);
 * 16-Oct-2002 : Added new constructor (DG);
 * 26-Mar-2003 : Implemented Serializable (DG);
 * 21-May-2003 : Added labels (DG);
 * 11-Sep-2003 : Implemented Cloneable (NB);
 * 05-Nov-2003 : Added checks to ensure some attributes are never null (DG);
 * 11-Feb-2003 : Moved to org.jfree.chart.plot package, plus significant API 
 *               changes to support IntervalMarker in plots (DG);
 * 14-Jun-2004 : Updated equals() method (DG);
 * 21-Jan-2005 : Added settings to control direction of horizontal and 
 *               vertical label offsets (DG);
 * 01-Jun-2005 : Modified to use only one label offset type - this will be 
 *               applied to the domain or range axis as appropriate (DG);
 * 06-Jun-2005 : Fix equals() method to handle GradientPaint (DG);
 * 19-Aug-2005 : Changed constructor from public --> protected (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 05-Sep-2006 : Added MarkerChangeListener support (DG);
 * 20-Jun-2007 : Removed JCommon dependencies (DG);
 * 26-Sep-2007 : Fix for serialization bug 1802195 (DG);
 *
 */

package org.jfree.chart.plot;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Paint;
import java.awt.Stroke;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.EventListener;

import javax.swing.event.EventListenerList;

import org.jfree.chart.event.MarkerChangeEvent;
import org.jfree.chart.event.MarkerChangeListener;
import org.jfree.chart.text.TextAnchor;
import org.jfree.chart.util.LengthAdjustmentType;
import org.jfree.chart.util.ObjectUtilities;
import org.jfree.chart.util.PaintUtilities;
import org.jfree.chart.util.RectangleAnchor;
import org.jfree.chart.util.RectangleInsets;
import org.jfree.chart.util.SerialUtilities;

/**
 * The base class for markers that can be added to plots to highlight a value 
 * or range of values.
 * <br><br>
 * An event notification mechanism was added to this class in JFreeChart 
 * version 1.0.3.
 */
public abstract class Marker implements Cloneable, Serializable {

    /** For serialization. */
    private static final long serialVersionUID = -734389651405327166L;

    /** The paint. */
    private transient Paint paint;

    /** The stroke. */
    private transient Stroke stroke;
    
    /** The outline paint. */
    private transient Paint outlinePaint;

    /** The outline stroke. */
    private transient Stroke outlineStroke;

    /** The alpha transparency. */
    private float alpha;

    /** The label. */
    private String label = null;

    /** The label font. */
    private Font labelFont;

    /** The label paint. */
    private transient Paint labelPaint;

    /** The label position. */
    private RectangleAnchor labelAnchor;
    
    /** The text anchor for the label. */
    private TextAnchor labelTextAnchor;

    /** The label offset from the marker rectangle. */
    private RectangleInsets labelOffset;
    
    /** 
     * The offset type for the domain or range axis (never <code>null</code>). 
     */
    private LengthAdjustmentType labelOffsetType;
    
    /** Storage for registered change listeners. */
    private transient EventListenerList listenerList;

    /**
     * Creates a new marker with default attributes.
     */
    protected Marker() {
        this(Color.gray);
    }

    /**
     * Constructs a new marker.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     */
    protected Marker(Paint paint) {
        this(paint, new BasicStroke(0.5f), Color.gray, new BasicStroke(0.5f), 
                0.80f);
    }

    /**
     * Constructs a new marker.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     * @param stroke  the stroke (<code>null</code> not permitted).
     * @param outlinePaint  the outline paint (<code>null</code> permitted).
     * @param outlineStroke  the outline stroke (<code>null</code> permitted).
     * @param alpha  the alpha transparency (must be in the range 0.0f to 
     *     1.0f).
     *     
     * @throws IllegalArgumentException if <code>paint</code> or 
     *     <code>stroke</code> is <code>null</code>, or <code>alpha</code> is 
     *     not in the specified range.
     */
    protected Marker(Paint paint, Stroke stroke, 
                     Paint outlinePaint, Stroke outlineStroke, 
                     float alpha) {

        int PROBE_START_LINE_175 = 177;
						java.awt.Paint p_paint_418_line_175 = paint;
						boolean marker_1_expr5_line_175 = p_paint_418_line_175 == null;
						int PROBE_END_LINE_175 = 177;
		if (marker_1_expr5_line_175) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        int PROBE_START_LINE_178 = 180;
		java.awt.Stroke p_stroke_419_line_178 = stroke;
		boolean marker_1_expr6_line_178 = p_stroke_419_line_178 == null;
		int PROBE_END_LINE_178 = 180;
		if (marker_1_expr6_line_178) {
            throw new IllegalArgumentException("Null 'stroke' argument.");
        }
        int PROBE_START_LINE_181 = 183;
		float p_alpha_422_line_181 = alpha;
		boolean marker_1_expr8_line_181 = p_alpha_422_line_181 < 0.0f;
		boolean marker_1_expr9_line_181 = false;
		if (!marker_1_expr8_line_181) {
			float p_alpha_422_line_181_v1 = alpha;
			marker_1_expr9_line_181 = p_alpha_422_line_181_v1 > 1.0f;
		}
		boolean marker_1_expr7_line_181 = marker_1_expr8_line_181 || marker_1_expr9_line_181;
		int PROBE_END_LINE_181 = 183;
		if (marker_1_expr7_line_181)
            throw new IllegalArgumentException(
                    "The 'alpha' value must be in the range 0.0f to 1.0f");
        
        int PROBE_START_LINE_185 = 185;
		java.awt.Paint p_paint_418_line_185 = paint;
		int PROBE_END_LINE_185 = 185;
		this.paint = p_paint_418_line_185;
        int PROBE_START_LINE_186 = 186;
		java.awt.Stroke p_stroke_419_line_186 = stroke;
		int PROBE_END_LINE_186 = 186;
		this.stroke = p_stroke_419_line_186;
        int PROBE_START_LINE_187 = 187;
		java.awt.Paint p_outline_paint_420_line_187 = outlinePaint;
		int PROBE_END_LINE_187 = 187;
		this.outlinePaint = p_outline_paint_420_line_187;
        int PROBE_START_LINE_188 = 188;
		java.awt.Stroke p_outline_stroke_421_line_188 = outlineStroke;
		int PROBE_END_LINE_188 = 188;
		this.outlineStroke = p_outline_stroke_421_line_188;
        int PROBE_START_LINE_189 = 189;
		float p_alpha_422_line_189 = alpha;
		int PROBE_END_LINE_189 = 189;
		this.alpha = p_alpha_422_line_189;
        
        int PROBE_START_LINE_191 = 191;
		int q_plain_18_line_191 = Font.PLAIN;
		int PROBE_END_LINE_191 = 191;
		this.labelFont = new Font("SansSerif", q_plain_18_line_191, 9);
        int PROBE_START_LINE_192 = 192;
		java.awt.Color q_black_18_line_192 = Color.black;
		int PROBE_END_LINE_192 = 192;
		this.labelPaint = q_black_18_line_192;
        int PROBE_START_LINE_193 = 193;
		org.jfree.chart.util.RectangleAnchor q_top_left_19_line_193 = RectangleAnchor.TOP_LEFT;
		int PROBE_END_LINE_193 = 193;
		this.labelAnchor = q_top_left_19_line_193;
        this.labelOffset = new RectangleInsets(3.0, 3.0, 3.0, 3.0);
        int PROBE_START_LINE_195 = 195;
		org.jfree.chart.util.LengthAdjustmentType q_contract_20_line_195 = LengthAdjustmentType.CONTRACT;
		int PROBE_END_LINE_195 = 195;
		this.labelOffsetType = q_contract_20_line_195;
        int PROBE_START_LINE_196 = 196;
		org.jfree.chart.text.TextAnchor q_center_21_line_196 = TextAnchor.CENTER;
		int PROBE_END_LINE_196 = 196;
		this.labelTextAnchor = q_center_21_line_196;
        
        this.listenerList = new EventListenerList();
    }

    /**
     * Returns the paint.
     *
     * @return The paint (never <code>null</code>).
     * 
     * @see #setPaint(Paint)
     */
    public Paint getPaint() {
        return this.paint;
    }
    
    /**
     * Sets the paint and sends a {@link MarkerChangeEvent} to all registered
     * listeners.
     * 
     * @param paint  the paint (<code>null</code> not permitted).
     * 
     * @see #getPaint()
     */
    public void setPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.paint = paint;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the stroke.
     *
     * @return The stroke (never <code>null</code>).
     * 
     * @see #setStroke(Stroke)
     */
    public Stroke getStroke() {
        return this.stroke;
    }
    
    /**
     * Sets the stroke and sends a {@link MarkerChangeEvent} to all registered
     * listeners.
     * 
     * @param stroke  the stroke (<code>null</code> not permitted).
     * 
     * @see #getStroke()
     */
    public void setStroke(Stroke stroke) {
        if (stroke == null) {
            throw new IllegalArgumentException("Null 'stroke' argument.");
        }
        this.stroke = stroke;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the outline paint.
     *
     * @return The outline paint (possibly <code>null</code>).
     * 
     * @see #setOutlinePaint(Paint)
     */
    public Paint getOutlinePaint() {
        return this.outlinePaint;
    }
    
    /**
     * Sets the outline paint and sends a {@link MarkerChangeEvent} to all 
     * registered listeners.
     * 
     * @param paint  the paint (<code>null</code> permitted).
     * 
     * @see #getOutlinePaint()
     */
    public void setOutlinePaint(Paint paint) {
        this.outlinePaint = paint;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the outline stroke.
     *
     * @return The outline stroke (possibly <code>null</code>).
     * 
     * @see #setOutlineStroke(Stroke)
     */
    public Stroke getOutlineStroke() {
        return this.outlineStroke;
    }
    
    /**
     * Sets the outline stroke and sends a {@link MarkerChangeEvent} to all 
     * registered listeners.
     * 
     * @param stroke  the stroke (<code>null</code> permitted).
     * 
     * @see #getOutlineStroke()
     */
    public void setOutlineStroke(Stroke stroke) {
        this.outlineStroke = stroke;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the alpha transparency.
     *
     * @return The alpha transparency.
     * 
     * @see #setAlpha(float)
     */
    public float getAlpha() {
        return this.alpha;
    }
    
    /**
     * Sets the alpha transparency that should be used when drawing the 
     * marker, and sends a {@link MarkerChangeEvent} to all registered 
     * listeners.  The alpha transparency is a value in the range 0.0f 
     * (completely transparent) to 1.0f (completely opaque).
     * 
     * @param alpha  the alpha transparency (must be in the range 0.0f to 
     *     1.0f).
     *     
     * @throws IllegalArgumentException if <code>alpha</code> is not in the
     *     specified range.
     *     
     * @see #getAlpha()
     */
    public void setAlpha(float alpha) {
        if (alpha < 0.0f || alpha > 1.0f)
            throw new IllegalArgumentException(
                    "The 'alpha' value must be in the range 0.0f to 1.0f");
        this.alpha = alpha;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the label (if <code>null</code> no label is displayed).
     *
     * @return The label (possibly <code>null</code>).
     * 
     * @see #setLabel(String)
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * Sets the label (if <code>null</code> no label is displayed) and sends a
     * {@link MarkerChangeEvent} to all registered listeners.
     *
     * @param label  the label (<code>null</code> permitted).
     * 
     * @see #getLabel()
     */
    public void setLabel(String label) {
        this.label = label;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the label font.
     *
     * @return The label font (never <code>null</code>).
     * 
     * @see #setLabelFont(Font)
     */
    public Font getLabelFont() {
        return this.labelFont;
    }

    /**
     * Sets the label font and sends a {@link MarkerChangeEvent} to all 
     * registered listeners.
     *
     * @param font  the font (<code>null</code> not permitted).
     * 
     * @see #getLabelFont()
     */
    public void setLabelFont(Font font) {
        if (font == null) {
            throw new IllegalArgumentException("Null 'font' argument.");
        }
        this.labelFont = font;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the label paint.
     *
     * @return The label paint (never </code>null</code>).
     * 
     * @see #setLabelPaint(Paint)
     */
    public Paint getLabelPaint() {
        return this.labelPaint;
    }

    /**
     * Sets the label paint and sends a {@link MarkerChangeEvent} to all
     * registered listeners.
     *
     * @param paint  the paint (<code>null</code> not permitted).
     * 
     * @see #getLabelPaint()
     */
    public void setLabelPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("Null 'paint' argument.");
        }
        this.labelPaint = paint;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the label anchor.  This defines the position of the label 
     * anchor, relative to the bounds of the marker.
     *
     * @return The label anchor (never <code>null</code>).
     * 
     * @see #setLabelAnchor(RectangleAnchor)
     */
    public RectangleAnchor getLabelAnchor() {
        return this.labelAnchor;
    }

    /**
     * Sets the label anchor and sends a {@link MarkerChangeEvent} to all 
     * registered listeners.  The anchor defines the position of the label 
     * anchor, relative to the bounds of the marker.
     *
     * @param anchor  the anchor (<code>null</code> not permitted).
     * 
     * @see #getLabelAnchor()
     */
    public void setLabelAnchor(RectangleAnchor anchor) {
        if (anchor == null) {
            throw new IllegalArgumentException("Null 'anchor' argument.");
        }
        this.labelAnchor = anchor;
        notifyListeners(new MarkerChangeEvent(this));
    }

    /**
     * Returns the label offset.
     * 
     * @return The label offset (never <code>null</code>).
     * 
     * @see #setLabelOffset(RectangleInsets)
     */
    public RectangleInsets getLabelOffset() {
        return this.labelOffset;
    }
    
    /**
     * Sets the label offset and sends a {@link MarkerChangeEvent} to all
     * registered listeners.
     * 
     * @param offset  the label offset (<code>null</code> not permitted).
     * 
     * @see #getLabelOffset()
     */
    public void setLabelOffset(RectangleInsets offset) {
        if (offset == null) {
            throw new IllegalArgumentException("Null 'offset' argument.");
        }
        this.labelOffset = offset;
        notifyListeners(new MarkerChangeEvent(this));
    }
    
    /**
     * Returns the label offset type.
     * 
     * @return The type (never <code>null</code>).
     * 
     * @see #setLabelOffsetType(LengthAdjustmentType)
     */
    public LengthAdjustmentType getLabelOffsetType() {
        return this.labelOffsetType;   
    }
    
    /**
     * Sets the label offset type and sends a {@link MarkerChangeEvent} to all
     * registered listeners.
     * 
     * @param adj  the type (<code>null</code> not permitted).
     * 
     * @see #getLabelOffsetType()
     */
    public void setLabelOffsetType(LengthAdjustmentType adj) {
        int PROBE_START_LINE_490 = 492;
		org.jfree.chart.util.LengthAdjustmentType p_adj_445_line_490 = adj;
		boolean marker_1_expr49_line_490 = p_adj_445_line_490 == null;
		int PROBE_END_LINE_490 = 492;
		if (marker_1_expr49_line_490) {
            throw new IllegalArgumentException("Null 'adj' argument.");
        }
        int PROBE_START_LINE_493 = 493;
		org.jfree.chart.util.LengthAdjustmentType p_adj_445_line_493 = adj;
		int PROBE_END_LINE_493 = 493;
		this.labelOffsetType = p_adj_445_line_493;    
        notifyListeners(new MarkerChangeEvent(this));
    }
        
    /**
     * Returns the label text anchor.
     * 
     * @return The label text anchor (never <code>null</code>).
     * 
     * @see #setLabelTextAnchor(TextAnchor)
     */
    public TextAnchor getLabelTextAnchor() {
        return this.labelTextAnchor;
    }
    
    /**
     * Sets the label text anchor and sends a {@link MarkerChangeEvent} to 
     * all registered listeners.
     * 
     * @param anchor  the label text anchor (<code>null</code> not permitted).
     * 
     * @see #getLabelTextAnchor()
     */
    public void setLabelTextAnchor(TextAnchor anchor) {
        if (anchor == null) { 
            throw new IllegalArgumentException("Null 'anchor' argument.");
        }
        this.labelTextAnchor = anchor;
        notifyListeners(new MarkerChangeEvent(this));
    }
    
    /**
     * Registers an object for notification of changes to the marker.
     *
     * @param listener  the object to be registered.
     * 
     * @see #removeChangeListener(MarkerChangeListener)
     * 
     * @since 1.0.3
     */
    public void addChangeListener(MarkerChangeListener listener) {
        int PROBE_START_LINE_534 = 534;
		javax.swing.event.EventListenerList f_listener_list_434_line_534 = this.listenerList;
		org.jfree.chart.event.MarkerChangeListener p_listener_447_line_534 = listener;
		int PROBE_END_LINE_534 = 534;
		f_listener_list_434_line_534.add(MarkerChangeListener.class, p_listener_447_line_534);
    }

    /**
     * Unregisters an object for notification of changes to the marker.
     *
     * @param listener  the object to be unregistered.
     * 
     * @see #addChangeListener(MarkerChangeListener)
     * 
     * @since 1.0.3
     */
    public void removeChangeListener(MarkerChangeListener listener) {
        this.listenerList.remove(MarkerChangeListener.class, listener);
    }

    /**
     * Notifies all registered listeners that the marker has been modified.
     *
     * @param event  information about the change event.
     * 
     * @since 1.0.3
     */
    public void notifyListeners(MarkerChangeEvent event) {

        int PROBE_START_LINE_559 = 559;
		javax.swing.event.EventListenerList f_listener_list_434_line_559 = this.listenerList;
		Object[] marker_1_expr60_line_559 = f_listener_list_434_line_559.getListenerList();
		Object[] listeners = marker_1_expr60_line_559;
        boolean FOR_STMT_TOGGLE_LINE_560 = false;
		int PROBE_END_LINE_559 = 559;
		for (int i = 0; true;) {
            int PROBE_START_LINE_561 = 563;
			if (!FOR_STMT_TOGGLE_LINE_560) {
				FOR_STMT_TOGGLE_LINE_560 = true;
				Object[] v_listeners_450_line_560 = listeners;
				int q_length_22_line_560 = v_listeners_450_line_560.length;
				int marker_1_expr64_line_560 = q_length_22_line_560 - 2;
				i = marker_1_expr64_line_560;
			} else {
				if (FOR_STMT_TOGGLE_LINE_560) {
					i -= 2;
				} else {
					FOR_STMT_TOGGLE_LINE_560 = true;
				}
			}
			int v_i_451_line_560 = i;
			boolean marker_1_expr65_line_560 = v_i_451_line_560 >= 0;
			if (!(marker_1_expr65_line_560)) {
				break;
			}
			int PROBE_END_LINE_561 = 563;
			if (listeners[i] == MarkerChangeListener.class) {
                ((MarkerChangeListener) listeners[i + 1]).markerChanged(event);
            }
        }

    }

    /**
     * Returns an array containing all the listeners of the specified type.
     * 
     * @param listenerType  the listener type.
     * 
     * @return The array of listeners.
     * 
     * @since 1.0.3
     */
    public EventListener[] getListeners(Class listenerType) {
        return this.listenerList.getListeners(listenerType);    
    }
    
    /**
     * Tests the marker for equality with an arbitrary object.
     * 
     * @param obj  the object (<code>null</code> permitted).
     * 
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Marker)) {
            return false;
        }
        Marker that = (Marker) obj;
        if (!PaintUtilities.equal(this.paint, that.paint)) {
            return false;   
        }
        if (!ObjectUtilities.equal(this.stroke, that.stroke)) {
            return false;
        }
        if (!PaintUtilities.equal(this.outlinePaint, that.outlinePaint)) {
            return false;   
        }
        if (!ObjectUtilities.equal(this.outlineStroke, that.outlineStroke)) {
            return false;
        }
        if (this.alpha != that.alpha) {
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
        if (this.labelAnchor != that.labelAnchor) {
            return false;
        }
        if (this.labelTextAnchor != that.labelTextAnchor) {
            return false;   
        }
        if (!ObjectUtilities.equal(this.labelOffset, that.labelOffset)) {
            return false;
        }
        if (!this.labelOffsetType.equals(that.labelOffsetType)) {
            return false;
        }
        return true;
    }
    
    /**
     * Creates a clone of the marker.
     * 
     * @return A clone.
     * 
     * @throws CloneNotSupportedException never.
     */
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
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
        SerialUtilities.writePaint(this.paint, stream);
        SerialUtilities.writeStroke(this.stroke, stream);
        SerialUtilities.writePaint(this.outlinePaint, stream);
        SerialUtilities.writeStroke(this.outlineStroke, stream);
        SerialUtilities.writePaint(this.labelPaint, stream);
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
        this.paint = SerialUtilities.readPaint(stream);
        this.stroke = SerialUtilities.readStroke(stream);
        this.outlinePaint = SerialUtilities.readPaint(stream);
        this.outlineStroke = SerialUtilities.readStroke(stream);
        this.labelPaint = SerialUtilities.readPaint(stream);
        this.listenerList = new EventListenerList();
    }

}
