/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.math3.geometry.euclidean.twod;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Interval;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.Region.Location;
import org.apache.commons.math3.geometry.partitioning.Side;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;

/** This class represents a sub-hyperplane for {@link Line}.
 * @version $Id$
 * @since 3.0
 */
public class SubLine extends AbstractSubHyperplane<Euclidean2D, Euclidean1D> {

    /** Simple constructor.
     * @param hyperplane underlying hyperplane
     * @param remainingRegion remaining region of the hyperplane
     */
    public SubLine(final Hyperplane<Euclidean2D> hyperplane,
                   final Region<Euclidean1D> remainingRegion) {
        super(hyperplane, remainingRegion);
    }

    /** Create a sub-line from two endpoints.
     * @param start start point
     * @param end end point
     */
    public SubLine(final Vector2D start, final Vector2D end) {
        super(new Line(start, end), buildIntervalSet(start, end));
    }

    /** Create a sub-line from a segment.
     * @param segment single segment forming the sub-line
     */
    public SubLine(final Segment segment) {
        super(segment.getLine(), buildIntervalSet(segment.getStart(), segment.getEnd()));
    }

    /** Get the endpoints of the sub-line.
     * <p>
     * A subline may be any arbitrary number of disjoints segments, so the endpoints
     * are provided as a list of endpoint pairs. Each element of the list represents
     * one segment, and each segment contains a start point at index 0 and an end point
     * at index 1. If the sub-line is unbounded in the negative infinity direction,
     * the start point of the first segment will have infinite coordinates. If the
     * sub-line is unbounded in the positive infinity direction, the end point of the
     * last segment will have infinite coordinates. So a sub-line covering the whole
     * line will contain just one row and both elements of this row will have infinite
     * coordinates. If the sub-line is empty, the returned list will contain 0 segments.
     * </p>
     * @return list of segments endpoints
     */
    public List<Segment> getSegments() {

        final Line line = (Line) getHyperplane();
        final List<Interval> list = ((IntervalsSet) getRemainingRegion()).asList();
        final List<Segment> segments = new ArrayList<Segment>();

        for (final Interval interval : list) {
            final Vector2D start = line.toSpace(new Vector1D(interval.getInf()));
            final Vector2D end   = line.toSpace(new Vector1D(interval.getSup()));
            segments.add(new Segment(start, end, line));
        }

        return segments;

    }

    /** Get the intersection of the instance and another sub-line.
     * <p>
     * This method is related to the {@link Line#intersection(Line)
     * intersection} method in the {@link Line Line} class, but in addition
     * to compute the point along infinite lines, it also checks the point
     * lies on both sub-line ranges.
     * </p>
     * @param subLine other sub-line which may intersect instance
     * @param includeEndPoints if true, endpoints are considered to belong to
     * instance (i.e. they are closed sets) and may be returned, otherwise endpoints
     * are considered to not belong to instance (i.e. they are open sets) and intersection
     * occurring on endpoints lead to null being returned
     * @return the intersection point if there is one, null if the sub-lines don't intersect
     */
    public Vector2D intersection(final SubLine subLine, final boolean includeEndPoints) {

        int PROBE_START_LINE_113 = 113;
		Hyperplane<org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D> sub_line_2_expr5_line_113 = getHyperplane();
		int PROBE_END_LINE_113 = 113;
		// retrieve the underlying lines
        Line line1 = (Line) sub_line_2_expr5_line_113;
        int PROBE_START_LINE_114 = 114;
		org.apache.commons.math3.geometry.euclidean.twod.SubLine p_sub_line_234_line_114 = subLine;
		Hyperplane<org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D> sub_line_2_expr7_line_114 = p_sub_line_234_line_114
				.getHyperplane();
		int PROBE_END_LINE_114 = 114;
		Line line2 = (Line) sub_line_2_expr7_line_114;

        int PROBE_START_LINE_117 = 117;
		org.apache.commons.math3.geometry.euclidean.twod.Line v_line_1_236_line_117 = line1;
		org.apache.commons.math3.geometry.euclidean.twod.Line v_line_2_237_line_117 = line2;
		Vector2D sub_line_2_expr8_line_117 = v_line_1_236_line_117.intersection(v_line_2_237_line_117);
		int PROBE_END_LINE_117 = 117;
		// compute the intersection on infinite line
        Vector2D v2D = sub_line_2_expr8_line_117;

        int PROBE_START_LINE_120 = 120;
		Region<org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D> sub_line_2_expr11_line_120 = getRemainingRegion();
		org.apache.commons.math3.geometry.euclidean.twod.Line v_line_1_236_line_120 = line1;
		org.apache.commons.math3.geometry.euclidean.twod.Vector2D v_v_2d_238_line_120 = v2D;
		org.apache.commons.math3.geometry.euclidean.oned.Vector1D sub_line_2_expr10_line_120 = v_line_1_236_line_120
				.toSubSpace(v_v_2d_238_line_120);
		Location sub_line_2_expr9_line_120 = sub_line_2_expr11_line_120.checkPoint(sub_line_2_expr10_line_120);
		int PROBE_END_LINE_120 = 120;
		// check location of point with respect to first sub-line
        Location loc1 = sub_line_2_expr9_line_120;

        // check location of point with respect to second sub-line
        Location loc2 = subLine.getRemainingRegion().checkPoint(line2.toSubSpace(v2D));

        if (includeEndPoints) {
            return ((loc1 != Location.OUTSIDE) && (loc2 != Location.OUTSIDE)) ? v2D : null;
        } else {
            return ((loc1 == Location.INSIDE) && (loc2 == Location.INSIDE)) ? v2D : null;
        }

    }

    /** Build an interval set from two points.
     * @param start start point
     * @param end end point
     * @return an interval set
     */
    private static IntervalsSet buildIntervalSet(final Vector2D start, final Vector2D end) {
        int PROBE_START_LINE_139 = 139;
		org.apache.commons.math3.geometry.euclidean.twod.Vector2D p_start_240_line_139 = start;
		org.apache.commons.math3.geometry.euclidean.twod.Vector2D p_end_241_line_139 = end;
		int PROBE_END_LINE_139 = 139;
		final Line line = new Line(p_start_240_line_139, p_end_241_line_139);
        int PROBE_START_LINE_140 = 141;
		org.apache.commons.math3.geometry.euclidean.twod.Line v_line_242_line_140 = line;
		org.apache.commons.math3.geometry.euclidean.twod.Vector2D p_start_240_line_140 = start;
		org.apache.commons.math3.geometry.euclidean.oned.Vector1D sub_line_2_expr16_line_140 = v_line_242_line_140
				.toSubSpace(p_start_240_line_140);
		double sub_line_2_expr14_line_140 = sub_line_2_expr16_line_140.getX();
		int PROBE_END_LINE_140 = 141;
		return new IntervalsSet(sub_line_2_expr14_line_140,
                                line.toSubSpace(end).getX());
    }

    /** {@inheritDoc} */
    @Override
    protected AbstractSubHyperplane<Euclidean2D, Euclidean1D> buildNew(final Hyperplane<Euclidean2D> hyperplane,
                                                                       final Region<Euclidean1D> remainingRegion) {
        return new SubLine(hyperplane, remainingRegion);
    }

    /** {@inheritDoc} */
    @Override
    public Side side(final Hyperplane<Euclidean2D> hyperplane) {

        final Line    thisLine  = (Line) getHyperplane();
        final Line    otherLine = (Line) hyperplane;
        final Vector2D crossing  = thisLine.intersection(otherLine);

        if (crossing == null) {
            // the lines are parallel,
            final double global = otherLine.getOffset(thisLine);
            return (global < -1.0e-10) ? Side.MINUS : ((global > 1.0e-10) ? Side.PLUS : Side.HYPER);
        }

        // the lines do intersect
        final boolean direct = FastMath.sin(thisLine.getAngle() - otherLine.getAngle()) < 0;
        final Vector1D x = thisLine.toSubSpace(crossing);
        return getRemainingRegion().side(new OrientedPoint(x, direct));

    }

    /** {@inheritDoc} */
    @Override
    public SplitSubHyperplane<Euclidean2D> split(final Hyperplane<Euclidean2D> hyperplane) {

        final Line    thisLine  = (Line) getHyperplane();
        final Line    otherLine = (Line) hyperplane;
        final Vector2D crossing  = thisLine.intersection(otherLine);

        if (crossing == null) {
            // the lines are parallel
            final double global = otherLine.getOffset(thisLine);
            return (global < -1.0e-10) ?
                   new SplitSubHyperplane<Euclidean2D>(null, this) :
                   new SplitSubHyperplane<Euclidean2D>(this, null);
        }

        // the lines do intersect
        final boolean direct = FastMath.sin(thisLine.getAngle() - otherLine.getAngle()) < 0;
        final Vector1D x      = thisLine.toSubSpace(crossing);
        final SubHyperplane<Euclidean1D> subPlus  = new OrientedPoint(x, !direct).wholeHyperplane();
        final SubHyperplane<Euclidean1D> subMinus = new OrientedPoint(x,  direct).wholeHyperplane();

        final BSPTree<Euclidean1D> splitTree = getRemainingRegion().getTree(false).split(subMinus);
        final BSPTree<Euclidean1D> plusTree  = getRemainingRegion().isEmpty(splitTree.getPlus()) ?
                                               new BSPTree<Euclidean1D>(Boolean.FALSE) :
                                               new BSPTree<Euclidean1D>(subPlus, new BSPTree<Euclidean1D>(Boolean.FALSE),
                                                                        splitTree.getPlus(), null);
        final BSPTree<Euclidean1D> minusTree = getRemainingRegion().isEmpty(splitTree.getMinus()) ?
                                               new BSPTree<Euclidean1D>(Boolean.FALSE) :
                                               new BSPTree<Euclidean1D>(subMinus, new BSPTree<Euclidean1D>(Boolean.FALSE),
                                                                        splitTree.getMinus(), null);

        return new SplitSubHyperplane<Euclidean2D>(new SubLine(thisLine.copySelf(), new IntervalsSet(plusTree)),
                                                   new SubLine(thisLine.copySelf(), new IntervalsSet(minusTree)));

    }

}
