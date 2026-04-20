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

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Random;

/**
 * Clustering algorithm based on David Arthur and Sergei Vassilvitski k-means++ algorithm.
 * @param <T> type of the points to cluster
 * @see <a href="http://en.wikipedia.org/wiki/K-means%2B%2B">K-means++ (wikipedia)</a>
 * @version $Revision$ $Date$
 * @since 2.0
 */
public class KMeansPlusPlusClusterer<T extends Clusterable<T>> {

    /** Random generator for choosing initial centers. */
    private final Random random;

    /** Build a clusterer.
     * @param random random generator to use for choosing initial centers
     */
    public KMeansPlusPlusClusterer(final Random random) {
        int PROBE_START_LINE_41 = 41;
		java.util.Random p_random_10_line_41 = random;
		int PROBE_END_LINE_41 = 41;
		this.random = p_random_10_line_41;
    }

    /**
     * Runs the K-means++ clustering algorithm.
     *
     * @param points the points to cluster
     * @param k the number of clusters to split the data into
     * @param maxIterations the maximum number of iterations to run the algorithm
     *     for.  If negative, no maximum will be used
     * @return a list of clusters containing the points
     */
    public List<Cluster<T>> cluster(final Collection<T> points,
                                    final int k, final int maxIterations) {
        int PROBE_START_LINE_56 = 56;
										Collection<T> p_points_12_line_56 = points;
										int p_k_13_line_56 = k;
										java.util.Random f_random_11_line_56 = random;
										List<Cluster<T>> kmeans_plus_plus_clusterer_1_expr4_line_56 = chooseInitialCenters(
												p_points_12_line_56, p_k_13_line_56, f_random_11_line_56);
										int PROBE_END_LINE_56 = 56;
		// create the initial clusters
        List<Cluster<T>> clusters = kmeans_plus_plus_clusterer_1_expr4_line_56;
        int PROBE_START_LINE_57 = 57;
		List<Cluster<T>> v_clusters_15_line_57 = clusters;
		Collection<T> p_points_12_line_57 = points;
		int PROBE_END_LINE_57 = 57;
		assignPointsToClusters(v_clusters_15_line_57, p_points_12_line_57);

        // iterate through updating the centers until we're done
        final int max = (maxIterations < 0) ? Integer.MAX_VALUE : maxIterations;
        for (int count = 0; count < max; count++) {
            boolean clusteringChanged = false;
            List<Cluster<T>> newClusters = new ArrayList<Cluster<T>>();
            for (final Cluster<T> cluster : clusters) {
                final T newCenter = cluster.getCenter().centroidOf(cluster.getPoints());
                if (!newCenter.equals(cluster.getCenter())) {
                    clusteringChanged = true;
                }
                newClusters.add(new Cluster<T>(newCenter));
            }
            if (!clusteringChanged) {
                return clusters;
            }
            assignPointsToClusters(newClusters, points);
            clusters = newClusters;
        }
        return clusters;
    }

    /**
     * Adds the given points to the closest {@link Cluster}.
     *
     * @param <T> type of the points to cluster
     * @param clusters the {@link Cluster}s to add the points to
     * @param points the points to add to the given {@link Cluster}s
     */
    private static <T extends Clusterable<T>> void
        assignPointsToClusters(final Collection<Cluster<T>> clusters, final Collection<T> points) {
        int PROBE_START_LINE_89 = 92;
			Collection<T> p_points_17_line_89 = points;
			int PROBE_END_LINE_89 = 92;
		for (final T p : p_points_17_line_89) {
            int PROBE_START_LINE_90 = 90;
			Collection<Cluster<T>> p_clusters_16_line_90 = clusters;
			T v_p_18_line_90 = p;
			Cluster<T> kmeans_plus_plus_clusterer_1_expr6_line_90 = getNearestCluster(p_clusters_16_line_90,
					v_p_18_line_90);
			int PROBE_END_LINE_90 = 90;
			Cluster<T> cluster = kmeans_plus_plus_clusterer_1_expr6_line_90;
            int PROBE_START_LINE_91 = 91;
			Cluster<T> v_cluster_19_line_91 = cluster;
			T v_p_18_line_91 = p;
			int PROBE_END_LINE_91 = 91;
			v_cluster_19_line_91.addPoint(v_p_18_line_91);
        }
    }

    /**
     * Use K-means++ to choose the initial centers.
     *
     * @param <T> type of the points to cluster
     * @param points the points to choose the initial centers from
     * @param k the number of centers to choose
     * @param random random generator to use
     * @return the initial centers
     */
    private static <T extends Clusterable<T>> List<Cluster<T>>
        chooseInitialCenters(final Collection<T> points, final int k, final Random random) {

        int PROBE_START_LINE_107 = 107;
			Collection<T> p_points_20_line_107 = points;
			int PROBE_END_LINE_107 = 107;
		final List<T> pointSet = new ArrayList<T>(p_points_20_line_107);
        final List<Cluster<T>> resultSet = new ArrayList<Cluster<T>>();

        int PROBE_START_LINE_111 = 111;
		List<T> v_point_set_23_line_111 = pointSet;
		java.util.Random p_random_22_line_111 = random;
		List<T> v_point_set_23_line_111_v1 = pointSet;
		int kmeans_plus_plus_clusterer_1_expr12_line_111 = v_point_set_23_line_111_v1.size();
		int kmeans_plus_plus_clusterer_1_expr11_line_111 = p_random_22_line_111
				.nextInt(kmeans_plus_plus_clusterer_1_expr12_line_111);
		T kmeans_plus_plus_clusterer_1_expr10_line_111 = v_point_set_23_line_111
				.remove(kmeans_plus_plus_clusterer_1_expr11_line_111);
		int PROBE_END_LINE_111 = 111;
		// Choose one center uniformly at random from among the data points.
        final T firstPoint = kmeans_plus_plus_clusterer_1_expr10_line_111;
        int PROBE_START_LINE_112 = 112;
		List<Cluster<T>> v_result_set_24_line_112 = resultSet;
		T v_first_point_25_line_112 = firstPoint;
		int PROBE_END_LINE_112 = 112;
		v_result_set_24_line_112.add(new Cluster<T>(v_first_point_25_line_112));

        int PROBE_START_LINE_114 = 114;
		List<T> v_point_set_23_line_114 = pointSet;
		int kmeans_plus_plus_clusterer_1_expr16_line_114 = v_point_set_23_line_114.size();
		int PROBE_END_LINE_114 = 114;
		final double[] dx2 = new double[kmeans_plus_plus_clusterer_1_expr16_line_114];
        while (true) {
            int PROBE_START_LINE_115 = 115;
			List<Cluster<T>> v_result_set_24_line_115 = resultSet;
			int kmeans_plus_plus_clusterer_1_expr18_line_115 = v_result_set_24_line_115.size();
			int p_k_21_line_115 = k;
			boolean kmeans_plus_plus_clusterer_1_expr17_line_115 = kmeans_plus_plus_clusterer_1_expr18_line_115 < p_k_21_line_115;
			if (!(kmeans_plus_plus_clusterer_1_expr17_line_115)) {
				break;
			}
			int PROBE_END_LINE_115 = 115;
			// For each data point x, compute D(x), the distance between x and
            // the nearest center that has already been chosen.
            int sum = 0;
            for (int i = 0; i < pointSet.size(); i++) {
                final T p = pointSet.get(i);
                final Cluster<T> nearest = getNearestCluster(resultSet, p);
                final double d = p.distanceFrom(nearest.getCenter());
                sum += d * d;
                dx2[i] = sum;
            }

            // Add one new data point as a center. Each point x is chosen with
            // probability proportional to D(x)2
            final double r = random.nextDouble() * sum;
            for (int i = 0 ; i < dx2.length; i++) {
                if (dx2[i] >= r) {
                    final T p = pointSet.remove(i);
                    resultSet.add(new Cluster<T>(p));
                    break;
                }
            }
        }

        int PROBE_START_LINE_139 = 139;
		List<Cluster<T>> v_result_set_24_line_139 = resultSet;
		int PROBE_END_LINE_139 = 139;
		return v_result_set_24_line_139;

    }

    /**
     * Returns the nearest {@link Cluster} to the given point
     *
     * @param <T> type of the points to cluster
     * @param clusters the {@link Cluster}s to search
     * @param point the point to find the nearest {@link Cluster} for
     * @return the nearest {@link Cluster} to the given point
     */
    private static <T extends Clusterable<T>> Cluster<T>
        getNearestCluster(final Collection<Cluster<T>> clusters, final T point) {
        int PROBE_START_LINE_153 = 153;
			double q_max_value_1_line_153 = Double.MAX_VALUE;
			int PROBE_END_LINE_153 = 153;
		double minDistance = q_max_value_1_line_153;
        Cluster<T> minCluster = null;
        int PROBE_START_LINE_155 = 161;
		Collection<Cluster<T>> p_clusters_27_line_155 = clusters;
		int PROBE_END_LINE_155 = 161;
		for (final Cluster<T> c : p_clusters_27_line_155) {
            int PROBE_START_LINE_156 = 156;
			T p_point_28_line_156 = point;
			Cluster<T> v_c_31_line_156 = c;
			T kmeans_plus_plus_clusterer_1_expr20_line_156 = v_c_31_line_156.getCenter();
			double kmeans_plus_plus_clusterer_1_expr19_line_156 = p_point_28_line_156
					.distanceFrom(kmeans_plus_plus_clusterer_1_expr20_line_156);
			int PROBE_END_LINE_156 = 156;
			final double distance = kmeans_plus_plus_clusterer_1_expr19_line_156;
            int PROBE_START_LINE_157 = 160;
			double v_distance_32_line_157 = distance;
			double v_min_distance_29_line_157 = minDistance;
			boolean kmeans_plus_plus_clusterer_1_expr21_line_157 = v_distance_32_line_157 < v_min_distance_29_line_157;
			int PROBE_END_LINE_157 = 160;
			if (kmeans_plus_plus_clusterer_1_expr21_line_157) {
                minDistance = distance;
                minCluster = c;
            }
        }
        int PROBE_START_LINE_162 = 162;
		Cluster<T> v_min_cluster_30_line_162 = minCluster;
		int PROBE_END_LINE_162 = 162;
		return v_min_cluster_30_line_162;
    }

}
