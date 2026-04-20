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
package org.apache.commons.math3.geometry.euclidean.threed;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/** The class represent lines in a three dimensional space.

 * <p>Each oriented line is intrinsically associated with an abscissa
 * which is a coordinate on the line. The point at abscissa 0 is the
 * orthogonal projection of the origin on the line, another equivalent
 * way to express this is to say that it is the point of the line
 * which is closest to the origin. Abscissa increases in the line
 * direction.</p>

 * @version $Id$
 * @since 3.0
 */
public class Line implements Embedding<Euclidean3D, Euclidean1D> {

    /** Line direction. */
    private Vector3D direction;

    /** Line point closest to the origin. */
    private Vector3D zero;

    /** Build a line from two points.
     * @param p1 first point belonging to the line (this can be any point)
     * @param p2 second point belonging to the line (this can be any point, different from p1)
     * @exception MathIllegalArgumentException if the points are equal
     */
    public Line(final Vector3D p1, final Vector3D p2) throws MathIllegalArgumentException {
        int PROBE_START_LINE_55 = 55;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_p_1_73_line_55 = p1;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_p_2_74_line_55 = p2;
		int PROBE_END_LINE_55 = 55;
		reset(p_p_1_73_line_55, p_p_2_74_line_55);
    }

    /** Copy constructor.
     * <p>The created instance is completely independent from the
     * original instance, it is a deep copy.</p>
     * @param line line to copy
     */
    public Line(final Line line) {
        this.direction = line.direction;
        this.zero      = line.zero;
    }

    /** Reset the instance as if built from two points.
     * @param p1 first point belonging to the line (this can be any point)
     * @param p2 second point belonging to the line (this can be any point, different from p1)
     * @exception MathIllegalArgumentException if the points are equal
     */
    public void reset(final Vector3D p1, final Vector3D p2) throws MathIllegalArgumentException {
        int PROBE_START_LINE_74 = 74;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_p_2_77_line_74 = p2;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_p_1_76_line_74 = p1;
		Vector3D line_1_expr2_line_74 = p_p_2_77_line_74.subtract(p_p_1_76_line_74);
		int PROBE_END_LINE_74 = 74;
		final Vector3D delta = line_1_expr2_line_74;
        int PROBE_START_LINE_75 = 75;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_delta_78_line_75 = delta;
		double line_1_expr3_line_75 = v_delta_78_line_75.getNormSq();
		int PROBE_END_LINE_75 = 75;
		final double norm2 = line_1_expr3_line_75;
        int PROBE_START_LINE_76 = 78;
		double v_norm_2_79_line_76 = norm2;
		boolean line_1_expr4_line_76 = v_norm_2_79_line_76 == 0.0;
		int PROBE_END_LINE_76 = 78;
		if (line_1_expr4_line_76) {
            throw new MathIllegalArgumentException(LocalizedFormats.ZERO_NORM);
        }
        int PROBE_START_LINE_79 = 79;
		double v_norm_2_79_line_79 = norm2;
		double line_1_expr10_line_79 = FastMath.sqrt(v_norm_2_79_line_79);
		double line_1_expr9_line_79 = 1.0 / line_1_expr10_line_79;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_delta_78_line_79 = delta;
		int PROBE_END_LINE_79 = 79;
		this.direction = new Vector3D(line_1_expr9_line_79, v_delta_78_line_79);
        int PROBE_START_LINE_80 = 80;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_p_1_76_line_80 = p1;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_p_1_76_line_80_v1 = p1;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_delta_78_line_80 = delta;
		double line_1_expr15_line_80 = p_p_1_76_line_80_v1.dotProduct(v_delta_78_line_80);
		double line_1_expr14_line_80 = -line_1_expr15_line_80;
		double v_norm_2_79_line_80 = norm2;
		double line_1_expr13_line_80 = line_1_expr14_line_80 / v_norm_2_79_line_80;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_delta_78_line_80_v1 = delta;
		int PROBE_END_LINE_80 = 80;
		zero = new Vector3D(1.0, p_p_1_76_line_80, line_1_expr13_line_80, v_delta_78_line_80_v1);
    }

    /** Get a line with reversed direction.
     * @return a new instance, with reversed direction
     */
    public Line revert() {
        final Line reverted = new Line(this);
        reverted.direction = reverted.direction.negate();
        return reverted;
    }

    /** Get the normalized direction vector.
     * @return normalized direction vector
     */
    public Vector3D getDirection() {
        return direction;
    }

    /** Get the line point closest to the origin.
     * @return line point closest to the origin
     */
    public Vector3D getOrigin() {
        return zero;
    }

    /** Get the abscissa of a point with respect to the line.
     * <p>The abscissa is 0 if the projection of the point and the
     * projection of the frame origin on the line are the same
     * point.</p>
     * @param point point to check
     * @return abscissa of the point
     */
    public double getAbscissa(final Vector3D point) {
        int PROBE_START_LINE_114 = 114;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_point_82_line_114 = point;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_zero_81_line_114 = zero;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D line_1_expr17_line_114 = p_point_82_line_114
				.subtract(f_zero_81_line_114);
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_direction_80_line_114 = direction;
		double line_1_expr16_line_114 = line_1_expr17_line_114.dotProduct(f_direction_80_line_114);
		int PROBE_END_LINE_114 = 114;
		return line_1_expr16_line_114;
    }

    /** Get one point from the line.
     * @param abscissa desired abscissa for the point
     * @return one point belonging to the line, at specified abscissa
     */
    public Vector3D pointAt(final double abscissa) {
        return new Vector3D(1.0, zero, abscissa, direction);
    }

    /** {@inheritDoc}
     * @see #getAbscissa(Vector3D)
     */
    public Vector1D toSubSpace(final Vector<Euclidean3D> point) {
        int PROBE_START_LINE_129 = 129;
		Vector<org.apache.commons.math3.geometry.euclidean.threed.Euclidean3D> p_point_84_line_129 = point;
		double line_1_expr19_line_129 = getAbscissa((Vector3D) p_point_84_line_129);
		int PROBE_END_LINE_129 = 129;
		return new Vector1D(line_1_expr19_line_129);
    }

    /** {@inheritDoc}
     * @see #pointAt(double)
     */
    public Vector3D toSpace(final Vector<Euclidean1D> point) {
        return pointAt(((Vector1D) point).getX());
    }

    /** Check if the instance is similar to another line.
     * <p>Lines are considered similar if they contain the same
     * points. This does not mean they are equal since they can have
     * opposite directions.</p>
     * @param line line to which instance should be compared
     * @return true if the lines are similar
     */
    public boolean isSimilarTo(final Line line) {
        final double angle = Vector3D.angle(direction, line.direction);
        return ((angle < 1.0e-10) || (angle > (FastMath.PI - 1.0e-10))) && contains(line.zero);
    }

    /** Check if the instance contains a point.
     * @param p point to check
     * @return true if p belongs to the line
     */
    public boolean contains(final Vector3D p) {
        int PROBE_START_LINE_156 = 156;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_p_87_line_156 = p;
		double line_1_expr22_line_156 = distance(p_p_87_line_156);
		boolean line_1_expr21_line_156 = line_1_expr22_line_156 < 1.0e-10;
		int PROBE_END_LINE_156 = 156;
		return line_1_expr21_line_156;
    }

    /** Compute the distance between the instance and a point.
     * @param p to check
     * @return distance between the instance and the point
     */
    public double distance(final Vector3D p) {
        int PROBE_START_LINE_164 = 164;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D p_p_88_line_164 = p;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_zero_81_line_164 = zero;
		Vector3D line_1_expr23_line_164 = p_p_88_line_164.subtract(f_zero_81_line_164);
		int PROBE_END_LINE_164 = 164;
		final Vector3D d = line_1_expr23_line_164;
        int PROBE_START_LINE_165 = 165;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_d_89_line_165 = d;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_d_89_line_165_v1 = d;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_direction_80_line_165 = direction;
		double line_1_expr26_line_165 = v_d_89_line_165_v1.dotProduct(f_direction_80_line_165);
		double line_1_expr25_line_165 = -line_1_expr26_line_165;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_direction_80_line_165_v1 = direction;
		int PROBE_END_LINE_165 = 165;
		final Vector3D n = new Vector3D(1.0, v_d_89_line_165, line_1_expr25_line_165, f_direction_80_line_165_v1);
        int PROBE_START_LINE_166 = 166;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_n_90_line_166 = n;
		double line_1_expr27_line_166 = v_n_90_line_166.getNorm();
		int PROBE_END_LINE_166 = 166;
		return line_1_expr27_line_166;
    }

    /** Compute the shortest distance between the instance and another line.
     * @param line line to check against the instance
     * @return shortest distance between the instance and the line
     */
    public double distance(final Line line) {

        final Vector3D normal = Vector3D.crossProduct(direction, line.direction);
        final double n = normal.getNorm();
        if (n < Precision.SAFE_MIN) {
            // lines are parallel
            return distance(line.zero);
        }

        // signed separation of the two parallel planes that contains the lines
        final double offset = line.zero.subtract(zero).dotProduct(normal) / n;

        return FastMath.abs(offset);

    }

    /** Compute the point of the instance closest to another line.
     * @param line line to check against the instance
     * @return point of the instance closest to another line
     */
    public Vector3D closestPoint(final Line line) {

        int PROBE_START_LINE_195 = 195;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_direction_80_line_195 = direction;
		org.apache.commons.math3.geometry.euclidean.threed.Line p_line_92_line_195 = line;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D q_direction_2_line_195 = p_line_92_line_195.direction;
		double line_1_expr28_line_195 = f_direction_80_line_195.dotProduct(q_direction_2_line_195);
		int PROBE_END_LINE_195 = 195;
		final double cos = line_1_expr28_line_195;
        int PROBE_START_LINE_196 = 196;
		double v_cos_93_line_196 = cos;
		double v_cos_93_line_196_v1 = cos;
		double line_1_expr30_line_196 = v_cos_93_line_196 * v_cos_93_line_196_v1;
		double line_1_expr29_line_196 = 1 - line_1_expr30_line_196;
		int PROBE_END_LINE_196 = 196;
		final double n = line_1_expr29_line_196;
        int PROBE_START_LINE_197 = 200;
		double v_n_94_line_197 = n;
		double q_epsilon_3_line_197 = Precision.EPSILON;
		boolean line_1_expr31_line_197 = v_n_94_line_197 < q_epsilon_3_line_197;
		int PROBE_END_LINE_197 = 200;
		if (line_1_expr31_line_197) {
            // the lines are parallel
            return zero;
        }

        int PROBE_START_LINE_202 = 202;
		org.apache.commons.math3.geometry.euclidean.threed.Line p_line_92_line_202 = line;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D q_zero_4_line_202 = p_line_92_line_202.zero;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_zero_81_line_202 = zero;
		Vector3D line_1_expr32_line_202 = q_zero_4_line_202.subtract(f_zero_81_line_202);
		int PROBE_END_LINE_202 = 202;
		final Vector3D delta0 = line_1_expr32_line_202;
        int PROBE_START_LINE_203 = 203;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_delta_0_95_line_203 = delta0;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_direction_80_line_203 = direction;
		double line_1_expr33_line_203 = v_delta_0_95_line_203.dotProduct(f_direction_80_line_203);
		int PROBE_END_LINE_203 = 203;
		final double a        = line_1_expr33_line_203;
        int PROBE_START_LINE_204 = 204;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_delta_0_95_line_204 = delta0;
		org.apache.commons.math3.geometry.euclidean.threed.Line p_line_92_line_204 = line;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D q_direction_5_line_204 = p_line_92_line_204.direction;
		double line_1_expr34_line_204 = v_delta_0_95_line_204.dotProduct(q_direction_5_line_204);
		int PROBE_END_LINE_204 = 204;
		final double b        = line_1_expr34_line_204;

        int PROBE_START_LINE_206 = 206;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_zero_81_line_206 = zero;
		double v_a_96_line_206 = a;
		double v_b_97_line_206 = b;
		double v_cos_93_line_206 = cos;
		double line_1_expr39_line_206 = v_b_97_line_206 * v_cos_93_line_206;
		double line_1_expr38_line_206 = v_a_96_line_206 - line_1_expr39_line_206;
		double line_1_expr37_line_206 = (line_1_expr38_line_206);
		double v_n_94_line_206 = n;
		double line_1_expr36_line_206 = line_1_expr37_line_206 / v_n_94_line_206;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D f_direction_80_line_206 = direction;
		int PROBE_END_LINE_206 = 206;
		return new Vector3D(1, f_zero_81_line_206, line_1_expr36_line_206, f_direction_80_line_206);

    }

    /** Get the intersection point of the instance and another line.
     * @param line other line
     * @return intersection point of the instance and the other line
     * or null if there are no intersection points
     */
    public Vector3D intersection(final Line line) {
        int PROBE_START_LINE_216 = 216;
		org.apache.commons.math3.geometry.euclidean.threed.Line p_line_98_line_216 = line;
		Vector3D line_1_expr40_line_216 = closestPoint(p_line_98_line_216);
		int PROBE_END_LINE_216 = 216;
		final Vector3D closest = line_1_expr40_line_216;
        int PROBE_START_LINE_217 = 217;
		org.apache.commons.math3.geometry.euclidean.threed.Line p_line_98_line_217 = line;
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_closest_99_line_217 = closest;
		boolean line_1_expr42_line_217 = p_line_98_line_217.contains(v_closest_99_line_217);
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D v_closest_99_line_217_v1 = null;
		if (line_1_expr42_line_217) {
			v_closest_99_line_217_v1 = closest;
		}
		org.apache.commons.math3.geometry.euclidean.threed.Vector3D line_1_expr41_line_217 = line_1_expr42_line_217
				? v_closest_99_line_217_v1
				: null;
		int PROBE_END_LINE_217 = 217;
		return line_1_expr41_line_217;
    }

    /** Build a sub-line covering the whole line.
     * @return a sub-line covering the whole line
     */
    public SubLine wholeLine() {
        return new SubLine(this, new IntervalsSet());
    }

}
