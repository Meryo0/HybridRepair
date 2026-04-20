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
 * ----------
 * Title.java
 * ----------
 * (C) Copyright 2000-2008, by David Berry and Contributors.
 *
 * Original Author:  David Berry;
 * Contributor(s):   David Gilbert (for Object Refinery Limited);
 *                   Nicolas Brodu;
 *
 * Changes (from 21-Aug-2001)
 * --------------------------
 * 21-Aug-2001 : Added standard header (DG);
 * 18-Sep-2001 : Updated header (DG);
 * 14-Nov-2001 : Package com.jrefinery.common.ui.* changed to
 *               com.jrefinery.ui.* (DG);
 * 07-Feb-2002 : Changed blank space around title from Insets --> Spacer, to
 *               allow for relative or absolute spacing (DG);
 * 25-Jun-2002 : Removed unnecessary imports (DG);
 * 01-Oct-2002 : Fixed errors reported by Checkstyle (DG);
 * 14-Oct-2002 : Changed the event listener storage structure (DG);
 * 11-Sep-2003 : Took care of listeners while cloning (NB);
 * 22-Sep-2003 : Spacer cannot be null. Added nullpointer checks for this (TM);
 * 08-Jan-2003 : Renamed AbstractTitle --> Title and moved to separate
 *               package (DG);
 * 26-Oct-2004 : Refactored to implement Block interface, and removed redundant
 *               constants (DG);
 * 11-Jan-2005 : Removed deprecated code in preparation for the 1.0.0
 *               release (DG);
 * 02-Feb-2005 : Changed Spacer --> RectangleInsets for padding (DG);
 * 03-May-2005 : Fixed problem in equals() method (DG);
 * 20-Jun-2007 : Removed JCommon dependency (DG);
 * 19-Sep-2008 : Added visibility flag (DG);
 *
 */

package org.jfree.chart.title;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

import javax.swing.event.EventListenerList;

import org.jfree.chart.block.AbstractBlock;
import org.jfree.chart.block.Block;
import org.jfree.chart.event.TitleChangeEvent;
import org.jfree.chart.event.TitleChangeListener;
import org.jfree.chart.util.HorizontalAlignment;
import org.jfree.chart.util.ObjectUtilities;
import org.jfree.chart.util.RectangleEdge;
import org.jfree.chart.util.RectangleInsets;
import org.jfree.chart.util.VerticalAlignment;

/**
 * The base class for all chart titles.  A chart can have multiple titles,
 * appearing at the top, bottom, left or right of the chart.
 * <P>
 * Concrete implementations of this class will render text and images, and
 * hence do the actual work of drawing titles.
 */
public abstract class Title extends AbstractBlock
                            implements Block, Cloneable, Serializable {

    /** For serialization. */
    private static final long serialVersionUID = -6675162505277817221L;

    int PROBE_START_LINE_96 = 97;

	public static final org.jfree.chart.util.RectangleEdge q_top_67_line_97 = RectangleEdge.TOP;

	int PROBE_END_LINE_96 = 97;

	/** The default title position. */
    public static final RectangleEdge DEFAULT_POSITION = q_top_67_line_97;

    int PROBE_START_LINE_99 = 101;

	public static final org.jfree.chart.util.HorizontalAlignment q_center_68_line_101 = HorizontalAlignment.CENTER;

	int PROBE_END_LINE_99 = 101;

	/** The default horizontal alignment. */
    public static final HorizontalAlignment
            DEFAULT_HORIZONTAL_ALIGNMENT = q_center_68_line_101;

    int PROBE_START_LINE_103 = 105;

	public static final org.jfree.chart.util.VerticalAlignment q_center_68_line_105 = VerticalAlignment.CENTER;

	int PROBE_END_LINE_103 = 105;

	/** The default vertical alignment. */
    public static final VerticalAlignment
            DEFAULT_VERTICAL_ALIGNMENT = q_center_68_line_105;

    /** Default title padding. */
    public static final RectangleInsets DEFAULT_PADDING = new RectangleInsets(
            1, 1, 1, 1);

    /**
     * A flag that controls whether or not the title is visible.
     *
     * @since 1.0.11
     */
    public boolean visible;

    /** The title position. */
    private RectangleEdge position;

    /** The horizontal alignment of the title content. */
    private HorizontalAlignment horizontalAlignment;

    /** The vertical alignment of the title content. */
    private VerticalAlignment verticalAlignment;

    /** Storage for registered change listeners. */
    private transient EventListenerList listenerList;

    /**
     * A flag that can be used to temporarily disable the listener mechanism.
     */
    private boolean notify;

    /**
     * Creates a new title, using default attributes where necessary.
     */
    protected Title() {
        this(Title.DEFAULT_POSITION,
                Title.DEFAULT_HORIZONTAL_ALIGNMENT,
                Title.DEFAULT_VERTICAL_ALIGNMENT, Title.DEFAULT_PADDING);
    }

    /**
     * Creates a new title, using default attributes where necessary.
     *
     * @param position  the position of the title (<code>null</code> not
     *                  permitted).
     * @param horizontalAlignment  the horizontal alignment of the title
     *                             (<code>null</code> not permitted).
     * @param verticalAlignment  the vertical alignment of the title
     *                           (<code>null</code> not permitted).
     */
    protected Title(RectangleEdge position,
                    HorizontalAlignment horizontalAlignment,
                    VerticalAlignment verticalAlignment) {

        this(position, horizontalAlignment, verticalAlignment,
                Title.DEFAULT_PADDING);

    }

    /**
     * Creates a new title.
     *
     * @param position  the position of the title (<code>null</code> not
     *                  permitted).
     * @param horizontalAlignment  the horizontal alignment of the title (LEFT,
     *                             CENTER or RIGHT, <code>null</code> not
     *                             permitted).
     * @param verticalAlignment  the vertical alignment of the title (TOP,
     *                           MIDDLE or BOTTOM, <code>null</code> not
     *                           permitted).
     * @param padding  the amount of space to leave around the outside of the
     *                 title (<code>null</code> not permitted).
     */
    protected Title(RectangleEdge position,
                    HorizontalAlignment horizontalAlignment,
                    VerticalAlignment verticalAlignment,
                    RectangleInsets padding) {

        int PROBE_START_LINE_183 = 185;
						org.jfree.chart.util.RectangleEdge p_position_3105_line_183 = position;
						boolean title_1_expr3_line_183 = p_position_3105_line_183 == null;
						int PROBE_END_LINE_183 = 185;
		// check arguments...
        if (title_1_expr3_line_183) {
            throw new IllegalArgumentException("Null 'position' argument.");
        }
        int PROBE_START_LINE_186 = 189;
		org.jfree.chart.util.HorizontalAlignment p_horizontal_alignment_3106_line_186 = horizontalAlignment;
		boolean title_1_expr4_line_186 = p_horizontal_alignment_3106_line_186 == null;
		int PROBE_END_LINE_186 = 189;
		if (title_1_expr4_line_186) {
            throw new IllegalArgumentException(
                    "Null 'horizontalAlignment' argument.");
        }

        int PROBE_START_LINE_191 = 194;
		org.jfree.chart.util.VerticalAlignment p_vertical_alignment_3107_line_191 = verticalAlignment;
		boolean title_1_expr5_line_191 = p_vertical_alignment_3107_line_191 == null;
		int PROBE_END_LINE_191 = 194;
		if (title_1_expr5_line_191) {
            throw new IllegalArgumentException(
                    "Null 'verticalAlignment' argument.");
        }
        int PROBE_START_LINE_195 = 197;
		org.jfree.chart.util.RectangleInsets p_padding_3108_line_195 = padding;
		boolean title_1_expr6_line_195 = p_padding_3108_line_195 == null;
		int PROBE_END_LINE_195 = 197;
		if (title_1_expr6_line_195) {
            throw new IllegalArgumentException("Null 'spacer' argument.");
        }

        this.visible = true;
        int PROBE_START_LINE_200 = 200;
		org.jfree.chart.util.RectangleEdge p_position_3105_line_200 = position;
		int PROBE_END_LINE_200 = 200;
		this.position = p_position_3105_line_200;
        int PROBE_START_LINE_201 = 201;
		org.jfree.chart.util.HorizontalAlignment p_horizontal_alignment_3106_line_201 = horizontalAlignment;
		int PROBE_END_LINE_201 = 201;
		this.horizontalAlignment = p_horizontal_alignment_3106_line_201;
        int PROBE_START_LINE_202 = 202;
		org.jfree.chart.util.VerticalAlignment p_vertical_alignment_3107_line_202 = verticalAlignment;
		int PROBE_END_LINE_202 = 202;
		this.verticalAlignment = p_vertical_alignment_3107_line_202;
        int PROBE_START_LINE_203 = 203;
		org.jfree.chart.util.RectangleInsets p_padding_3108_line_203 = padding;
		int PROBE_END_LINE_203 = 203;
		setPadding(p_padding_3108_line_203);
        this.listenerList = new EventListenerList();
        this.notify = true;

    }

    /**
     * Returns a flag that controls whether or not the title should be
     * drawn.  The default value is <code>true</code>.
     *
     * @return A boolean.
     *
     * @see #setVisible(boolean)
     *
     * @since 1.0.11
     */
    public boolean isVisible() {
        return this.visible;
    }

    /**
     * Sets a flag that controls whether or not the title should be drawn, and
     * sends a {@link TitleChangeEvent} to all registered listeners.
     *
     * @param visible  the new flag value.
     *
     * @see #isVisible()
     *
     * @since 1.0.11
     */
    public void setVisible(boolean visible) {
        this.visible = visible;
        notifyListeners(new TitleChangeEvent(this));
    }

    /**
     * Returns the position of the title.
     *
     * @return The title position (never <code>null</code>).
     */
    public RectangleEdge getPosition() {
        return this.position;
    }

    /**
     * Sets the position for the title and sends a {@link TitleChangeEvent} to
     * all registered listeners.
     *
     * @param position  the position (<code>null</code> not permitted).
     */
    public void setPosition(RectangleEdge position) {
        int PROBE_START_LINE_254 = 256;
		org.jfree.chart.util.RectangleEdge p_position_3116_line_254 = position;
		boolean title_1_expr27_line_254 = p_position_3116_line_254 == null;
		int PROBE_END_LINE_254 = 256;
		if (title_1_expr27_line_254) {
            throw new IllegalArgumentException("Null 'position' argument.");
        }
        int PROBE_START_LINE_257 = 260;
		org.jfree.chart.util.RectangleEdge f_position_3110_line_257 = this.position;
		org.jfree.chart.util.RectangleEdge p_position_3116_line_257 = position;
		boolean title_1_expr28_line_257 = f_position_3110_line_257 != p_position_3116_line_257;
		int PROBE_END_LINE_257 = 260;
		if (title_1_expr28_line_257) {
            int PROBE_START_LINE_258 = 258;
			org.jfree.chart.util.RectangleEdge p_position_3116_line_258 = position;
			int PROBE_END_LINE_258 = 258;
			this.position = p_position_3116_line_258;
            notifyListeners(new TitleChangeEvent(this));
        }
    }

    /**
     * Returns the horizontal alignment of the title.
     *
     * @return The horizontal alignment (never <code>null</code>).
     */
    public HorizontalAlignment getHorizontalAlignment() {
        return this.horizontalAlignment;
    }

    /**
     * Sets the horizontal alignment for the title and sends a
     * {@link TitleChangeEvent} to all registered listeners.
     *
     * @param alignment  the horizontal alignment (<code>null</code> not
     *                   permitted).
     */
    public void setHorizontalAlignment(HorizontalAlignment alignment) {
        if (alignment == null) {
            throw new IllegalArgumentException("Null 'alignment' argument.");
        }
        if (this.horizontalAlignment != alignment) {
            this.horizontalAlignment = alignment;
            notifyListeners(new TitleChangeEvent(this));
        }
    }

    /**
     * Returns the vertical alignment of the title.
     *
     * @return The vertical alignment (never <code>null</code>).
     */
    public VerticalAlignment getVerticalAlignment() {
        return this.verticalAlignment;
    }

    /**
     * Sets the vertical alignment for the title, and notifies any registered
     * listeners of the change.
     *
     * @param alignment  the new vertical alignment (TOP, MIDDLE or BOTTOM,
     *                   <code>null</code> not permitted).
     */
    public void setVerticalAlignment(VerticalAlignment alignment) {
        if (alignment == null) {
            throw new IllegalArgumentException("Null 'alignment' argument.");
        }
        if (this.verticalAlignment != alignment) {
            this.verticalAlignment = alignment;
            notifyListeners(new TitleChangeEvent(this));
        }
    }

    /**
     * Returns the flag that indicates whether or not the notification
     * mechanism is enabled.
     *
     * @return The flag.
     */
    public boolean getNotify() {
        return this.notify;
    }

    /**
     * Sets the flag that indicates whether or not the notification mechanism
     * is enabled.  There are certain situations (such as cloning) where you
     * want to turn notification off temporarily.
     *
     * @param flag  the new value of the flag.
     */
    public void setNotify(boolean flag) {
        this.notify = flag;
        if (flag) {
            notifyListeners(new TitleChangeEvent(this));
        }
    }

    /**
     * Draws the title on a Java 2D graphics device (such as the screen or a
     * printer).
     *
     * @param g2  the graphics device.
     * @param area  the area allocated for the title (subclasses should not
     *              draw outside this area).
     */
    public abstract void draw(Graphics2D g2, Rectangle2D area);

    /**
     * Returns a clone of the title.
     * <P>
     * One situation when this is useful is when editing the title properties -
     * you can edit a clone, and then it is easier to cancel the changes if
     * necessary.
     *
     * @return A clone of the title.
     *
     * @throws CloneNotSupportedException not thrown by this class, but it may
     *         be thrown by subclasses.
     */
    public Object clone() throws CloneNotSupportedException {
        Title duplicate = (Title) super.clone();
        duplicate.listenerList = new EventListenerList();
        // RectangleInsets is immutable => same reference in clone OK
        return duplicate;
    }

    /**
     * Registers an object for notification of changes to the title.
     *
     * @param listener  the object that is being registered.
     */
    public void addChangeListener(TitleChangeListener listener) {
        int PROBE_START_LINE_374 = 374;
		javax.swing.event.EventListenerList f_listener_list_3113_line_374 = this.listenerList;
		org.jfree.chart.event.TitleChangeListener p_listener_3122_line_374 = listener;
		int PROBE_END_LINE_374 = 374;
		f_listener_list_3113_line_374.add(TitleChangeListener.class, p_listener_3122_line_374);
    }

    /**
     * Unregisters an object for notification of changes to the chart title.
     *
     * @param listener  the object that is being unregistered.
     */
    public void removeChangeListener(TitleChangeListener listener) {
        this.listenerList.remove(TitleChangeListener.class, listener);
    }

    /**
     * Notifies all registered listeners that the chart title has changed in
     * some way.
     *
     * @param event  an object that contains information about the change to
     *               the title.
     */
    protected void notifyListeners(TitleChangeEvent event) {
        int PROBE_START_LINE_394 = 402;
		boolean f_notify_3114_line_394 = this.notify;
		int PROBE_END_LINE_394 = 402;
		if (f_notify_3114_line_394) {
            int PROBE_START_LINE_395 = 395;
			javax.swing.event.EventListenerList f_listener_list_3113_line_395 = this.listenerList;
			Object[] title_1_expr43_line_395 = f_listener_list_3113_line_395.getListenerList();
			Object[] listeners = title_1_expr43_line_395;
            boolean FOR_STMT_TOGGLE_LINE_396 = false;
			int PROBE_END_LINE_395 = 395;
			for (int i = 0; true;) {
                int PROBE_START_LINE_397 = 400;
				if (!FOR_STMT_TOGGLE_LINE_396) {
					FOR_STMT_TOGGLE_LINE_396 = true;
					Object[] v_listeners_3125_line_396 = listeners;
					int q_length_68_line_396 = v_listeners_3125_line_396.length;
					int title_1_expr47_line_396 = q_length_68_line_396 - 2;
					i = title_1_expr47_line_396;
				} else {
					if (FOR_STMT_TOGGLE_LINE_396) {
						i -= 2;
					} else {
						FOR_STMT_TOGGLE_LINE_396 = true;
					}
				}
				int v_i_3126_line_396 = i;
				boolean title_1_expr48_line_396 = v_i_3126_line_396 >= 0;
				if (!(title_1_expr48_line_396)) {
					break;
				}
				Object[] v_listeners_3125_line_397 = listeners;
				int v_i_3126_line_397 = i;
				Object title_1_expr51_line_397 = v_listeners_3125_line_397[v_i_3126_line_397];
				boolean title_1_expr50_line_397 = title_1_expr51_line_397 == TitleChangeListener.class;
				int PROBE_END_LINE_397 = 400;
				if (title_1_expr50_line_397) {
                    int PROBE_START_LINE_398 = 399;
					Object[] v_listeners_3125_line_398 = listeners;
					int v_i_3126_line_398 = i;
					int title_1_expr57_line_398 = v_i_3126_line_398 + 1;
					Object title_1_expr56_line_398 = v_listeners_3125_line_398[title_1_expr57_line_398];
					org.jfree.chart.event.TitleChangeListener title_1_expr54_line_398 = ((TitleChangeListener) title_1_expr56_line_398);
					int PROBE_END_LINE_398 = 399;
					title_1_expr54_line_398.titleChanged(
                            event);
                }
            }
        }
    }

    /**
     * Tests an object for equality with this title.
     *
     * @param obj  the object (<code>null</code> not permitted).
     *
     * @return <code>true</code> or <code>false</code>.
     */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Title)) {
            return false;
        }
        Title that = (Title) obj;
        if (this.visible != that.visible) {
            return false;
        }
        if (this.position != that.position) {
            return false;
        }
        if (this.horizontalAlignment != that.horizontalAlignment) {
            return false;
        }
        if (this.verticalAlignment != that.verticalAlignment) {
            return false;
        }
        if (this.notify != that.notify) {
            return false;
        }
        return super.equals(obj);
    }

    /**
     * Returns a hashcode for the title.
     *
     * @return The hashcode.
     */
    public int hashCode() {
        int result = 193;
        result = 37 * result + ObjectUtilities.hashCode(this.position);
        result = 37 * result
                + ObjectUtilities.hashCode(this.horizontalAlignment);
        result = 37 * result + ObjectUtilities.hashCode(this.verticalAlignment);
        return result;
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
        this.listenerList = new EventListenerList();
    }

}
