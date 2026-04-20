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

package org.apache.commons.math.linear;

import java.io.Serializable;

import org.apache.commons.math.util.OpenIntToDoubleHashMap;

/**
 * Sparse matrix implementation based on an open addressed map.
 *
 * @version $Id$
 * @since 2.0
 */
public class OpenMapRealMatrix extends AbstractRealMatrix
    implements SparseRealMatrix, Serializable {
    /** Serializable version identifier. */
    private static final long serialVersionUID = -5962461716457143437L;
    /** Number of rows of the matrix. */
    private final int rows;
    /** Number of columns of the matrix. */
    private final int columns;
    /** Storage for (sparse) matrix elements. */
    private final OpenIntToDoubleHashMap entries;

    /**
     * Build a sparse matrix with the supplied row and column dimensions.
     *
     * @param rowDimension Number of rows of the matrix.
     * @param columnDimension Number of columns of the matrix.
     */
    public OpenMapRealMatrix(int rowDimension, int columnDimension) {
        super(rowDimension, columnDimension);
        int PROBE_START_LINE_49 = 49;
		int p_row_dimension_1334_line_49 = rowDimension;
		int PROBE_END_LINE_49 = 49;
		this.rows = p_row_dimension_1334_line_49;
        int PROBE_START_LINE_50 = 50;
		int p_column_dimension_1335_line_50 = columnDimension;
		int PROBE_END_LINE_50 = 50;
		this.columns = p_column_dimension_1335_line_50;
        this.entries = new OpenIntToDoubleHashMap(0.0);
    }

    /**
     * Build a matrix by copying another one.
     *
     * @param matrix matrix to copy.
     */
    public OpenMapRealMatrix(OpenMapRealMatrix matrix) {
        this.rows = matrix.rows;
        this.columns = matrix.columns;
        this.entries = new OpenIntToDoubleHashMap(matrix.entries);
    }

    /** {@inheritDoc} */
    @Override
    public OpenMapRealMatrix copy() {
        return new OpenMapRealMatrix(this);
    }

    /** {@inheritDoc} */
    @Override
    public OpenMapRealMatrix createMatrix(int rowDimension, int columnDimension) {
        return new OpenMapRealMatrix(rowDimension, columnDimension);
    }

    /** {@inheritDoc} */
    @Override
    public int getColumnDimension() {
        int PROBE_START_LINE_80 = 80;
		int f_columns_1337_line_80 = columns;
		int PROBE_END_LINE_80 = 80;
		return f_columns_1337_line_80;
    }

    /**
     * Compute the sum of this matrix and {@code m}.
     *
     * @param m Matrix to be added.
     * @return {@code this} + {@code m}.
     * @throws org.apache.commons.math.exception.DimensionMismatchException
     * if {@code m} is not the same size as this matrix.
     */
    public OpenMapRealMatrix add(OpenMapRealMatrix m) {

        // safety check
        MatrixUtils.checkAdditionCompatible(this, m);

        final OpenMapRealMatrix out = new OpenMapRealMatrix(this);
        for (OpenIntToDoubleHashMap.Iterator iterator = m.entries.iterator(); iterator.hasNext();) {
            iterator.advance();
            final int row = iterator.key() / columns;
            final int col = iterator.key() - row * columns;
            out.setEntry(row, col, getEntry(row, col) + iterator.value());
        }

        return out;

    }

    /** {@inheritDoc} */
    @Override
    public OpenMapRealMatrix subtract(final RealMatrix m) {
        try {
            return subtract((OpenMapRealMatrix) m);
        } catch (ClassCastException cce) {
            return (OpenMapRealMatrix) super.subtract(m);
        }
    }

    /**
     * Subtract {@code m} from this matrix.
     *
     * @param m Matrix to be subtracted.
     * @return {@code this} - {@code m}.
     * @throws org.apache.commons.math.exception.DimensionMismatchException
     * if {@code m} is not the same size as this matrix.
     */
    public OpenMapRealMatrix subtract(OpenMapRealMatrix m) {
        // Safety check.
        MatrixUtils.checkAdditionCompatible(this, m);

        final OpenMapRealMatrix out = new OpenMapRealMatrix(this);
        for (OpenIntToDoubleHashMap.Iterator iterator = m.entries.iterator(); iterator.hasNext();) {
            iterator.advance();
            final int row = iterator.key() / columns;
            final int col = iterator.key() - row * columns;
            out.setEntry(row, col, getEntry(row, col) - iterator.value());
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public RealMatrix multiply(final RealMatrix m) {
        try {
            return multiply((OpenMapRealMatrix) m);
        } catch (ClassCastException cce) {

            // safety check
            MatrixUtils.checkMultiplicationCompatible(this, m);

            final int outCols = m.getColumnDimension();
            final BlockRealMatrix out = new BlockRealMatrix(rows, outCols);
            for (OpenIntToDoubleHashMap.Iterator iterator = entries.iterator(); iterator.hasNext();) {
                iterator.advance();
                final double value = iterator.value();
                final int key      = iterator.key();
                final int i        = key / columns;
                final int k        = key % columns;
                for (int j = 0; j < outCols; ++j) {
                    out.addToEntry(i, j, value * m.getEntry(k, j));
                }
            }

            return out;
        }
    }

    /**
     * Postmultiply this matrix by {@code m}.
     *
     * @param m Matrix to postmultiply by.
     * @return {@code this} * {@code m}.
     * @throws MatrixDimensionMismatchException
     * if the number of rows of {@code m} differ from the number of columns
     * of this matrix.
     */
    public OpenMapRealMatrix multiply(OpenMapRealMatrix m) {
        // Safety check.
        MatrixUtils.checkMultiplicationCompatible(this, m);

        final int outCols = m.getColumnDimension();
        OpenMapRealMatrix out = new OpenMapRealMatrix(rows, outCols);
        for (OpenIntToDoubleHashMap.Iterator iterator = entries.iterator(); iterator.hasNext();) {
            iterator.advance();
            final double value = iterator.value();
            final int key      = iterator.key();
            final int i        = key / columns;
            final int k        = key % columns;
            for (int j = 0; j < outCols; ++j) {
                final int rightKey = m.computeKey(k, j);
                if (m.entries.containsKey(rightKey)) {
                    final int outKey = out.computeKey(i, j);
                    final double outValue =
                        out.entries.get(outKey) + value * m.entries.get(rightKey);
                    if (outValue == 0.0) {
                        out.entries.remove(outKey);
                    } else {
                        out.entries.put(outKey, outValue);
                    }
                }
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public double getEntry(int row, int column) {
        int PROBE_START_LINE_210 = 210;
		int p_row_1347_line_210 = row;
		int PROBE_END_LINE_210 = 210;
		MatrixUtils.checkRowIndex(this, p_row_1347_line_210);
        int PROBE_START_LINE_211 = 211;
		int p_column_1348_line_211 = column;
		int PROBE_END_LINE_211 = 211;
		MatrixUtils.checkColumnIndex(this, p_column_1348_line_211);
        int PROBE_START_LINE_212 = 212;
		org.apache.commons.math.util.OpenIntToDoubleHashMap f_entries_1338_line_212 = entries;
		int p_row_1347_line_212 = row;
		int p_column_1348_line_212 = column;
		int open_map_real_matrix_1_expr17_line_212 = computeKey(p_row_1347_line_212, p_column_1348_line_212);
		double open_map_real_matrix_1_expr16_line_212 = f_entries_1338_line_212
				.get(open_map_real_matrix_1_expr17_line_212);
		int PROBE_END_LINE_212 = 212;
		return open_map_real_matrix_1_expr16_line_212;
    }

    /** {@inheritDoc} */
    @Override
    public int getRowDimension() {
        int PROBE_START_LINE_218 = 218;
		int f_rows_1336_line_218 = rows;
		int PROBE_END_LINE_218 = 218;
		return f_rows_1336_line_218;
    }

    /** {@inheritDoc} */
    @Override
    public void setEntry(int row, int column, double value) {
        int PROBE_START_LINE_224 = 224;
		int p_row_1349_line_224 = row;
		int PROBE_END_LINE_224 = 224;
		MatrixUtils.checkRowIndex(this, p_row_1349_line_224);
        int PROBE_START_LINE_225 = 225;
		int p_column_1350_line_225 = column;
		int PROBE_END_LINE_225 = 225;
		MatrixUtils.checkColumnIndex(this, p_column_1350_line_225);
        int PROBE_START_LINE_226 = 230;
		double p_value_1351_line_226 = value;
		boolean open_map_real_matrix_1_expr22_line_226 = p_value_1351_line_226 == 0.0;
		int PROBE_END_LINE_226 = 230;
		if (open_map_real_matrix_1_expr22_line_226) {
            int PROBE_START_LINE_227 = 227;
			org.apache.commons.math.util.OpenIntToDoubleHashMap f_entries_1338_line_227 = entries;
			int p_row_1349_line_227 = row;
			int p_column_1350_line_227 = column;
			int open_map_real_matrix_1_expr24_line_227 = computeKey(p_row_1349_line_227, p_column_1350_line_227);
			int PROBE_END_LINE_227 = 227;
			f_entries_1338_line_227.remove(open_map_real_matrix_1_expr24_line_227);
        } else {
            int PROBE_START_LINE_229 = 229;
			org.apache.commons.math.util.OpenIntToDoubleHashMap f_entries_1338_line_229 = entries;
			int p_row_1349_line_229 = row;
			int p_column_1350_line_229 = column;
			int open_map_real_matrix_1_expr26_line_229 = computeKey(p_row_1349_line_229, p_column_1350_line_229);
			double p_value_1351_line_229 = value;
			int PROBE_END_LINE_229 = 229;
			f_entries_1338_line_229.put(open_map_real_matrix_1_expr26_line_229, p_value_1351_line_229);
        }
    }

    /** {@inheritDoc} */
    @Override
    public void addToEntry(int row, int column, double increment) {
        MatrixUtils.checkRowIndex(this, row);
        MatrixUtils.checkColumnIndex(this, column);
        final int key = computeKey(row, column);
        final double value = entries.get(key) + increment;
        if (value == 0.0) {
            entries.remove(key);
        } else {
            entries.put(key, value);
        }
    }

    /** {@inheritDoc} */
    @Override
    public void multiplyEntry(int row, int column, double factor) {
        MatrixUtils.checkRowIndex(this, row);
        MatrixUtils.checkColumnIndex(this, column);
        final int key = computeKey(row, column);
        final double value = entries.get(key) * factor;
        if (value == 0.0) {
            entries.remove(key);
        } else {
            entries.put(key, value);
        }
    }

    /**
     * Compute the key to access a matrix element
     * @param row row index of the matrix element
     * @param column column index of the matrix element
     * @return key within the map to access the matrix element
     */
    private int computeKey(int row, int column) {
        int PROBE_START_LINE_268 = 268;
		int p_row_1358_line_268 = row;
		int f_columns_1337_line_268 = columns;
		int open_map_real_matrix_1_expr28_line_268 = p_row_1358_line_268 * f_columns_1337_line_268;
		int p_column_1359_line_268 = column;
		int open_map_real_matrix_1_expr27_line_268 = open_map_real_matrix_1_expr28_line_268 + p_column_1359_line_268;
		int PROBE_END_LINE_268 = 268;
		return open_map_real_matrix_1_expr27_line_268;
    }


}
