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

package org.apache.commons.math.stat.clustering;

import java.io.Serializable;
import java.util.Collection;

import org.apache.commons.math.util.MathUtils;

/**
 * A simple implementation of {@link Clusterable} for points with integer coordinates.
 * @version $Revision$ $Date$
 * @since 2.0
 */
public class EuclideanIntegerPoint implements Clusterable<EuclideanIntegerPoint>, Serializable {

    /** Serializable version identifier. */
    private static final long serialVersionUID = 3946024775784901369L;

    /** Point coordinates. */
    private final int[] point;

    /**
     * Build an instance wrapping an integer array.
     * <p>The wrapped array is referenced, it is <em>not</em> copied.</p>
     * @param point the n-dimensional point in integer space
     */
    public EuclideanIntegerPoint(final int[] point) {
        int PROBE_START_LINE_44 = 44;
		int[] p_point_5_line_44 = point;
		int PROBE_END_LINE_44 = 44;
		this.point = p_point_5_line_44;
    }

    /**
     * Get the n-dimensional point in integer space.
     * @return a reference (not a copy!) to the wrapped array
     */
    public int[] getPoint() {
        int PROBE_START_LINE_52 = 52;
		int[] f_point_6_line_52 = point;
		int PROBE_END_LINE_52 = 52;
		return f_point_6_line_52;
    }

    /** {@inheritDoc} */
    public double distanceFrom(final EuclideanIntegerPoint p) {
        int PROBE_START_LINE_57 = 57;
		int[] f_point_6_line_57 = point;
		org.apache.commons.math.stat.clustering.EuclideanIntegerPoint p_p_7_line_57 = p;
		int[] euclidean_integer_point_1_expr5_line_57 = p_p_7_line_57.getPoint();
		double euclidean_integer_point_1_expr4_line_57 = MathUtils.distance(f_point_6_line_57,
				euclidean_integer_point_1_expr5_line_57);
		int PROBE_END_LINE_57 = 57;
		return euclidean_integer_point_1_expr4_line_57;
    }

    /** {@inheritDoc} */
    public EuclideanIntegerPoint centroidOf(final Collection<EuclideanIntegerPoint> points) {
        int[] centroid = new int[getPoint().length];
        for (EuclideanIntegerPoint p : points) {
            for (int i = 0; i < centroid.length; i++) {
                centroid[i] += p.getPoint()[i];
            }
        }
        for (int i = 0; i < centroid.length; i++) {
            centroid[i] /= points.size();
        }
        return new EuclideanIntegerPoint(centroid);
    }

    /** {@inheritDoc} */
    @Override
    public boolean equals(final Object other) {
        if (!(other instanceof EuclideanIntegerPoint)) {
            return false;
        }
        final int[] otherPoint = ((EuclideanIntegerPoint) other).getPoint();
        if (point.length != otherPoint.length) {
            return false;
        }
        for (int i = 0; i < point.length; i++) {
            if (point[i] != otherPoint[i]) {
                return false;
            }
        }
        return true;
    }

    /** {@inheritDoc} */
    @Override
    public int hashCode() {
        int hashCode = 0;
        for (Integer i : point) {
            hashCode += i.hashCode() * 13 + 7;
        }
        return hashCode;
    }
    
    /** {@inheritDoc} */
    @Override
    public String toString() {
        final StringBuffer buff = new StringBuffer("(");
        final int[] coordinates = getPoint();
        for (int i = 0; i < coordinates.length; i++) {
            buff.append(coordinates[i]);
            if (i < coordinates.length - 1) {
                buff.append(",");
            }
        }
        buff.append(")");
        return buff.toString();
    }

}
