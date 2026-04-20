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
 * ------------------------
 * RendererChangeEvent.java
 * ------------------------
 * (C) Copyright 2003-2009, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 23-Oct-2003 : Version 1 (DG);
 * ------------- JFREECHART 1.0.x ---------------------------------------------
 * 04-Apr-2007 : Fixed typo in API docs (DG);
 * 26-Mar-2009 : Added flag to signal visible series change (DG);
 *
 */

package org.jfree.chart.event;

/**
 * An event that can be forwarded to any {@link RendererChangeListener} to
 * signal a change to a renderer.
 */
public class RendererChangeEvent extends ChartChangeEvent {

    /** The renderer that generated the event. */
    private Object renderer;

    /**
     * A flag that indicates whether this event relates to a change in the
     * series visibility.  If so, the receiver (if it is a plot) may want to
     * update the axis bounds.
     *
     * @since 1.0.13
     */
    private boolean seriesVisibilityChanged;

    /**
     * Creates a new event.
     *
     * @param renderer  the renderer that generated the event.
     */
    public RendererChangeEvent(Object renderer) {
        this(renderer, false);
    }

    /**
     * Creates a new event.
     *
     * @param renderer  the renderer that generated the event.
     * @param seriesVisibilityChanged  a flag that indicates whether or not
     *         the event relates to a change in the series visibility flags.
     */
    public RendererChangeEvent(Object renderer,
            boolean seriesVisibilityChanged) {
        super(renderer);
        int PROBE_START_LINE_83 = 83;
		Object p_renderer_1262_line_83 = renderer;
		int PROBE_END_LINE_83 = 83;
		this.renderer = p_renderer_1262_line_83;
        int PROBE_START_LINE_84 = 84;
		boolean p_series_visibility_changed_1263_line_84 = seriesVisibilityChanged;
		int PROBE_END_LINE_84 = 84;
		this.seriesVisibilityChanged = p_series_visibility_changed_1263_line_84;
    }

    /**
     * Returns the renderer that generated the event.
     *
     * @return The renderer that generated the event.
     */
    public Object getRenderer() {
        return this.renderer;
    }

    /**
     * Returns the flag that indicates whether or not the event relates to
     * a change in series visibility.
     *
     * @return A boolean.
     *
     * @since 1.0.13
     */
    public boolean getSeriesVisibilityChanged() {
        int PROBE_START_LINE_105 = 105;
		boolean f_series_visibility_changed_1265_line_105 = this.seriesVisibilityChanged;
		int PROBE_END_LINE_105 = 105;
		return f_series_visibility_changed_1265_line_105;
    }

}
