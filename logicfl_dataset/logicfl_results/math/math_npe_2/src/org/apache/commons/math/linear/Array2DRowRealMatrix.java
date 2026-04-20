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

import org.apache.commons.math.exception.DimensionMismatchException;
import org.apache.commons.math.exception.NullArgumentException;
import org.apache.commons.math.exception.NoDataException;
import org.apache.commons.math.exception.MathIllegalStateException;
import org.apache.commons.math.exception.util.LocalizedFormats;

/**
 * Implementation of RealMatrix using a double[][] array to store entries and
 * <a href="http://www.math.gatech.edu/~bourbaki/math2601/Web-notes/2num.pdf">
 * LU decomposition</a> to support linear system
 * solution and inverse.
 * <p>
 * The LU decomposition is performed as needed, to support the following operations: <ul>
 * <li>solve</li>
 * <li>isSingular</li>
 * <li>getDeterminant</li>
 * <li>inverse</li> </ul></p>
 * <p>
 * <strong>Usage notes</strong>:<br>
 * <ul><li>
 * The LU decomposition is cached and reused on subsequent calls.
 * If data are modified via references to the underlying array obtained using
 * <code>getDataRef()</code>, then the stored LU decomposition will not be
 * discarded.  In this case, you need to explicitly invoke
 * <code>LUDecompose()</code> to recompute the decomposition
 * before using any of the methods above.</li>
 * <li>
 * As specified in the {@link RealMatrix} interface, matrix element indexing
 * is 0-based -- e.g., <code>getEntry(0, 0)</code>
 * returns the element in the first row, first column of the matrix.</li></ul>
 * </p>
 *
 * @version $Id$
 */
public class Array2DRowRealMatrix extends AbstractRealMatrix implements Serializable {
    /** Serializable version identifier. */
    private static final long serialVersionUID = -1067294169172445528L;
    /** Entries of the matrix. */
    protected double data[][];

    /**
     * Creates a matrix with no data
     */
    public Array2DRowRealMatrix() {}

    /**
     * Create a new RealMatrix with the supplied row and column dimensions.
     *
     * @param rowDimension Number of rows in the new matrix.
     * @param columnDimension Number of columns in the new matrix.
     * @throws org.apache.commons.math.exception.NotStrictlyPositiveException
     * if the row or column dimension is not positive.
     */
    public Array2DRowRealMatrix(final int rowDimension, final int columnDimension) {
        super(rowDimension, columnDimension);
        data = new double[rowDimension][columnDimension];
    }

    /**
     * Create a new {@code RealMatrix} using the input array as the underlying
     * data array.
     * <p>The input array is copied, not referenced. This constructor has
     * the same effect as calling {@link #Array2DRowRealMatrix(double[][], boolean)}
     * with the second argument set to {@code true}.</p>
     *
     * @param d Data for the new matrix.
     * @throws DimensionMismatchException if {@code d} is not rectangular.
     * @throws NoDataException if {@code d} row or colum dimension is zero.
     * @throws NullPointerException if {@code d} is {@code null}.
     * @see #Array2DRowRealMatrix(double[][], boolean)
     */
    public Array2DRowRealMatrix(final double[][] d) {
        int PROBE_START_LINE_94 = 94;
		double[][] p_d_663_line_94 = d;
		int PROBE_END_LINE_94 = 94;
		copyIn(p_d_663_line_94);
    }

    /**
     * Create a new RealMatrix using the input array as the underlying
     * data array.
     * If an array is built specially in order to be embedded in a
     * RealMatrix and not used directly, the {@code copyArray} may be
     * set to {@code false}. This will prevent the copying and improve
     * performance as no new array will be built and no data will be copied.
     *
     * @param d Data for new matrix.
     * @param copyArray if {@code true}, the input array will be copied,
     * otherwise it will be referenced.
     * @throws DimensionMismatchException if {@code d} is not rectangular
     * (not all rows have the same length) or empty.
     * @throws NullArgumentException if {@code d} is {@code null}.
     * @throws NoDataException if there are not at least one row and one column.
     * @see #Array2DRowRealMatrix(double[][])
     */
    public Array2DRowRealMatrix(final double[][] d, final boolean copyArray) {
        if (copyArray) {
            copyIn(d);
        } else {
            if (d == null) {
                throw new NullArgumentException();
            }
            final int nRows = d.length;
            if (nRows == 0) {
                throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
            }
            final int nCols = d[0].length;
            if (nCols == 0) {
                throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
            }
            for (int r = 1; r < nRows; r++) {
                if (d[r].length != nCols) {
                    throw new DimensionMismatchException(d[r].length, nCols);
                }
            }
            data = d;
        }
    }

    /**
     * Create a new (column) RealMatrix using {@code v} as the
     * data for the unique column of the created matrix.
     * The input array is copied.
     *
     * @param v Column vector holding data for new matrix.
     */
    public Array2DRowRealMatrix(final double[] v) {
        final int nRows = v.length;
        data = new double[nRows][1];
        for (int row = 0; row < nRows; row++) {
            data[row][0] = v[row];
        }
    }

    /** {@inheritDoc} */
    @Override
    public RealMatrix createMatrix(final int rowDimension,
                                   final int columnDimension) {
        return new Array2DRowRealMatrix(rowDimension, columnDimension);
    }

    /** {@inheritDoc} */
    @Override
    public RealMatrix copy() {
        return new Array2DRowRealMatrix(copyOut(), false);
    }

    /**
     * Compute the sum of this matrix with {@code m}.
     *
     * @param m Matrix to be added.
     * @return {@code this} + m.
     * @throws MatrixDimensionMismatchException
     * if {@code m} is not the same size as this matrix.
     */
    public Array2DRowRealMatrix add(final Array2DRowRealMatrix m) {
        // Safety check.
        MatrixUtils.checkAdditionCompatible(this, m);

        final int rowCount    = getRowDimension();
        final int columnCount = getColumnDimension();
        final double[][] outData = new double[rowCount][columnCount];
        for (int row = 0; row < rowCount; row++) {
            final double[] dataRow    = data[row];
            final double[] mRow       = m.data[row];
            final double[] outDataRow = outData[row];
            for (int col = 0; col < columnCount; col++) {
                outDataRow[col] = dataRow[col] + mRow[col];
            }
        }

        return new Array2DRowRealMatrix(outData, false);
    }

    /**
     * Subtract {@code m} from this matrix.
     *
     * @param m Matrix to be subtracted.
     * @return {@code this} - m.
     * @throws MatrixDimensionMismatchException
     * if {@code m} is not the same size as this matrix.
     */
    public Array2DRowRealMatrix subtract(final Array2DRowRealMatrix m) {
        // Safety check.
        MatrixUtils.checkSubtractionCompatible(this, m);

        final int rowCount    = getRowDimension();
        final int columnCount = getColumnDimension();
        final double[][] outData = new double[rowCount][columnCount];
        for (int row = 0; row < rowCount; row++) {
            final double[] dataRow    = data[row];
            final double[] mRow       = m.data[row];
            final double[] outDataRow = outData[row];
            for (int col = 0; col < columnCount; col++) {
                outDataRow[col] = dataRow[col] - mRow[col];
            }
        }

        return new Array2DRowRealMatrix(outData, false);
    }

    /**
     * Postmultiplying this matrix by {@code m}.
     *
     * @param m Matrix to postmultiply by.
     * @return {@code this} * m.
     * @throws DimensionMismatchException if the number of columns of this
     * matrix is not equal to the number of rows of {@code m}.
     */
    public Array2DRowRealMatrix multiply(final Array2DRowRealMatrix m) {
        // Safety check.
        MatrixUtils.checkMultiplicationCompatible(this, m);

        final int nRows = this.getRowDimension();
        final int nCols = m.getColumnDimension();
        final int nSum = this.getColumnDimension();
        final double[][] outData = new double[nRows][nCols];
        for (int row = 0; row < nRows; row++) {
            final double[] dataRow    = data[row];
            final double[] outDataRow = outData[row];
            for (int col = 0; col < nCols; col++) {
                double sum = 0;
                for (int i = 0; i < nSum; i++) {
                    sum += dataRow[i] * m.data[i][col];
                }
                outDataRow[col] = sum;
            }
        }

        return new Array2DRowRealMatrix(outData, false);

    }

    /** {@inheritDoc} */
    @Override
    public double[][] getData() {
        return copyOut();
    }

    /**
     * Get a reference to the underlying data array.
     *
     * @return 2-dimensional array of entries.
     */
    public double[][] getDataRef() {
        return data;
    }

    /** {@inheritDoc} */
    @Override
    public void setSubMatrix(final double[][] subMatrix,
                             final int row, final int column) {
        int PROBE_START_LINE_271 = 296;
								double[][] f_data_675_line_271 = data;
								boolean array2_drow_real_matrix_1_expr2_line_271 = f_data_675_line_271 == null;
								int PROBE_END_LINE_271 = 296;
		if (array2_drow_real_matrix_1_expr2_line_271) {
            int PROBE_START_LINE_272 = 274;
			int p_row_673_line_272 = row;
			boolean array2_drow_real_matrix_1_expr3_line_272 = p_row_673_line_272 > 0;
			int PROBE_END_LINE_272 = 274;
			if (array2_drow_real_matrix_1_expr3_line_272) {
                throw new MathIllegalStateException(LocalizedFormats.FIRST_ROWS_NOT_INITIALIZED_YET, row);
            }
            int PROBE_START_LINE_275 = 277;
			int p_column_674_line_275 = column;
			boolean array2_drow_real_matrix_1_expr4_line_275 = p_column_674_line_275 > 0;
			int PROBE_END_LINE_275 = 277;
			if (array2_drow_real_matrix_1_expr4_line_275) {
                throw new MathIllegalStateException(LocalizedFormats.FIRST_COLUMNS_NOT_INITIALIZED_YET, column);
            }
            int PROBE_START_LINE_278 = 278;
			double[][] p_sub_matrix_672_line_278 = subMatrix;
			int q_length_7_line_278 = p_sub_matrix_672_line_278.length;
			int PROBE_END_LINE_278 = 278;
			final int nRows = q_length_7_line_278;
            int PROBE_START_LINE_279 = 281;
			int v_n_rows_676_line_279 = nRows;
			boolean array2_drow_real_matrix_1_expr5_line_279 = v_n_rows_676_line_279 == 0;
			int PROBE_END_LINE_279 = 281;
			if (array2_drow_real_matrix_1_expr5_line_279) {
                throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
            }

            int PROBE_START_LINE_283 = 283;
			double[][] p_sub_matrix_672_line_283 = subMatrix;
			double[] array2_drow_real_matrix_1_expr7_line_283 = p_sub_matrix_672_line_283[0];
			int array2_drow_real_matrix_1_expr6_line_283 = array2_drow_real_matrix_1_expr7_line_283.length;
			int PROBE_END_LINE_283 = 283;
			final int nCols = array2_drow_real_matrix_1_expr6_line_283;
            int PROBE_START_LINE_284 = 286;
			int v_n_cols_677_line_284 = nCols;
			boolean array2_drow_real_matrix_1_expr8_line_284 = v_n_cols_677_line_284 == 0;
			int PROBE_END_LINE_284 = 286;
			if (array2_drow_real_matrix_1_expr8_line_284) {
                throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
            }
            int PROBE_START_LINE_287 = 287;
			double[][] p_sub_matrix_672_line_287 = subMatrix;
			int q_length_8_line_287 = p_sub_matrix_672_line_287.length;
			int v_n_cols_677_line_287 = nCols;
			int PROBE_END_LINE_287 = 287;
			data = new double[q_length_8_line_287][v_n_cols_677_line_287];
            for (int i = 0; true; ++i) {
                int PROBE_START_LINE_289 = 291;
				int v_i_678_line_288 = i;
				double[][] f_data_675_line_288 = data;
				int q_length_8_line_288 = f_data_675_line_288.length;
				boolean array2_drow_real_matrix_1_expr12_line_288 = v_i_678_line_288 < q_length_8_line_288;
				if (!(array2_drow_real_matrix_1_expr12_line_288)) {
					break;
				}
				double[][] p_sub_matrix_672_line_289 = subMatrix;
				int v_i_678_line_289 = i;
				double[] array2_drow_real_matrix_1_expr16_line_289 = p_sub_matrix_672_line_289[v_i_678_line_289];
				int array2_drow_real_matrix_1_expr15_line_289 = array2_drow_real_matrix_1_expr16_line_289.length;
				int v_n_cols_677_line_289 = nCols;
				boolean array2_drow_real_matrix_1_expr14_line_289 = array2_drow_real_matrix_1_expr15_line_289 != v_n_cols_677_line_289;
				int PROBE_END_LINE_289 = 291;
				if (array2_drow_real_matrix_1_expr14_line_289) {
                    throw new DimensionMismatchException(subMatrix[i].length, nCols);
                }
                int PROBE_START_LINE_292 = 292;
				double[][] p_sub_matrix_672_line_292 = subMatrix;
				int v_i_678_line_292 = i;
				double[] array2_drow_real_matrix_1_expr18_line_292 = p_sub_matrix_672_line_292[v_i_678_line_292];
				double[][] f_data_675_line_292 = data;
				int v_i_678_line_292_v1 = i;
				int p_row_673_line_292 = row;
				int array2_drow_real_matrix_1_expr20_line_292 = v_i_678_line_292_v1 + p_row_673_line_292;
				double[] array2_drow_real_matrix_1_expr19_line_292 = f_data_675_line_292[array2_drow_real_matrix_1_expr20_line_292];
				int p_column_674_line_292 = column;
				int v_n_cols_677_line_292 = nCols;
				int PROBE_END_LINE_292 = 292;
				System.arraycopy(array2_drow_real_matrix_1_expr18_line_292, 0, array2_drow_real_matrix_1_expr19_line_292, p_column_674_line_292, v_n_cols_677_line_292);
            }
        } else {
            int PROBE_START_LINE_295 = 295;
			double[][] p_sub_matrix_672_line_295 = subMatrix;
			int p_row_673_line_295 = row;
			int p_column_674_line_295 = column;
			int PROBE_END_LINE_295 = 295;
			super.setSubMatrix(p_sub_matrix_672_line_295, p_row_673_line_295, p_column_674_line_295);
        }

    }

    /** {@inheritDoc} */
    @Override
    public double getEntry(final int row, final int column) {
        int PROBE_START_LINE_303 = 303;
		int p_row_679_line_303 = row;
		int p_column_680_line_303 = column;
		int PROBE_END_LINE_303 = 303;
		MatrixUtils.checkMatrixIndex(this, p_row_679_line_303, p_column_680_line_303);
        int PROBE_START_LINE_304 = 304;
		double[][] f_data_675_line_304 = data;
		int p_row_679_line_304 = row;
		double[] array2_drow_real_matrix_1_expr25_line_304 = f_data_675_line_304[p_row_679_line_304];
		int p_column_680_line_304 = column;
		double array2_drow_real_matrix_1_expr24_line_304 = array2_drow_real_matrix_1_expr25_line_304[p_column_680_line_304];
		int PROBE_END_LINE_304 = 304;
		return array2_drow_real_matrix_1_expr24_line_304;
    }

    /** {@inheritDoc} */
    @Override
    public void setEntry(final int row, final int column, final double value) {
        int PROBE_START_LINE_310 = 310;
		int p_row_681_line_310 = row;
		int p_column_682_line_310 = column;
		int PROBE_END_LINE_310 = 310;
		MatrixUtils.checkMatrixIndex(this, p_row_681_line_310, p_column_682_line_310);
        int PROBE_START_LINE_311 = 311;
		double[][] f_data_675_line_311 = data;
		int p_row_681_line_311 = row;
		double[] array2_drow_real_matrix_1_expr30_line_311 = f_data_675_line_311[p_row_681_line_311];
		int p_column_682_line_311 = column;
		double p_value_683_line_311 = value;
		int PROBE_END_LINE_311 = 311;
		array2_drow_real_matrix_1_expr30_line_311[p_column_682_line_311] = p_value_683_line_311;
    }

    /** {@inheritDoc} */
    @Override
    public void addToEntry(final int row, final int column, final double increment) {
        MatrixUtils.checkMatrixIndex(this, row, column);
        data[row][column] += increment;
    }

    /** {@inheritDoc} */
    @Override
    public void multiplyEntry(final int row, final int column, final double factor) {
        MatrixUtils.checkMatrixIndex(this, row, column);
        data[row][column] *= factor;
    }

    /** {@inheritDoc} */
    @Override
        public int getRowDimension() {
        int PROBE_START_LINE_331 = 331;
			double[][] f_data_675_line_331 = data;
			boolean array2_drow_real_matrix_1_expr33_line_331 = f_data_675_line_331 == null;
			boolean array2_drow_real_matrix_1_expr32_line_331 = (array2_drow_real_matrix_1_expr33_line_331);
			int q_length_9_line_331 = 0;
			if (!array2_drow_real_matrix_1_expr32_line_331) {
				double[][] f_data_675_line_331_v1 = data;
				q_length_9_line_331 = f_data_675_line_331_v1.length;
			}
			int array2_drow_real_matrix_1_expr31_line_331 = array2_drow_real_matrix_1_expr32_line_331
					? 0
					: q_length_9_line_331;
			int PROBE_END_LINE_331 = 331;
		return array2_drow_real_matrix_1_expr31_line_331;
    }

    /** {@inheritDoc} */
    @Override
    public int getColumnDimension() {
        int PROBE_START_LINE_337 = 337;
		double[][] f_data_675_line_337 = data;
		boolean array2_drow_real_matrix_1_expr39_line_337 = f_data_675_line_337 == null;
		boolean array2_drow_real_matrix_1_expr38_line_337 = (array2_drow_real_matrix_1_expr39_line_337);
		boolean array2_drow_real_matrix_1_expr40_line_337 = false;
		if (!array2_drow_real_matrix_1_expr38_line_337) {
			double[][] f_data_675_line_337_v1 = data;
			double[] array2_drow_real_matrix_1_expr42_line_337 = f_data_675_line_337_v1[0];
			boolean array2_drow_real_matrix_1_expr41_line_337 = array2_drow_real_matrix_1_expr42_line_337 == null;
			array2_drow_real_matrix_1_expr40_line_337 = (array2_drow_real_matrix_1_expr41_line_337);
		}
		boolean array2_drow_real_matrix_1_expr37_line_337 = array2_drow_real_matrix_1_expr38_line_337
				|| array2_drow_real_matrix_1_expr40_line_337;
		boolean array2_drow_real_matrix_1_expr35_line_337 = (array2_drow_real_matrix_1_expr37_line_337);
		int array2_drow_real_matrix_1_expr36_line_337 = 0;
		if (!array2_drow_real_matrix_1_expr35_line_337) {
			double[][] f_data_675_line_337_v2 = data;
			double[] array2_drow_real_matrix_1_expr43_line_337 = f_data_675_line_337_v2[0];
			array2_drow_real_matrix_1_expr36_line_337 = array2_drow_real_matrix_1_expr43_line_337.length;
		}
		int array2_drow_real_matrix_1_expr34_line_337 = array2_drow_real_matrix_1_expr35_line_337
				? 0
				: array2_drow_real_matrix_1_expr36_line_337;
		int PROBE_END_LINE_337 = 337;
		return array2_drow_real_matrix_1_expr34_line_337;
    }

    /** {@inheritDoc} */
    @Override
    public double[] operate(final double[] v) {
        final int nRows = this.getRowDimension();
        final int nCols = this.getColumnDimension();
        if (v.length != nCols) {
            throw new DimensionMismatchException(v.length, nCols);
        }
        final double[] out = new double[nRows];
        for (int row = 0; row < nRows; row++) {
            final double[] dataRow = data[row];
            double sum = 0;
            for (int i = 0; i < nCols; i++) {
                sum += dataRow[i] * v[i];
            }
            out[row] = sum;
        }
        return out;
    }

    /** {@inheritDoc} */
    @Override
    public double[] preMultiply(final double[] v) {
        final int nRows = getRowDimension();
        final int nCols = getColumnDimension();
        if (v.length != nRows) {
            throw new DimensionMismatchException(v.length, nRows);
        }

        final double[] out = new double[nCols];
        for (int col = 0; col < nCols; ++col) {
            double sum = 0;
            for (int i = 0; i < nRows; ++i) {
                sum += data[i][col] * v[i];
            }
            out[col] = sum;
        }

        return out;

    }

    /** {@inheritDoc} */
    @Override
    public double walkInRowOrder(final RealMatrixChangingVisitor visitor) {
        final int rows    = getRowDimension();
        final int columns = getColumnDimension();
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int i = 0; i < rows; ++i) {
            final double[] rowI = data[i];
            for (int j = 0; j < columns; ++j) {
                rowI[j] = visitor.visit(i, j, rowI[j]);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInRowOrder(final RealMatrixPreservingVisitor visitor) {
        final int rows    = getRowDimension();
        final int columns = getColumnDimension();
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int i = 0; i < rows; ++i) {
            final double[] rowI = data[i];
            for (int j = 0; j < columns; ++j) {
                visitor.visit(i, j, rowI[j]);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInRowOrder(final RealMatrixChangingVisitor visitor,
                                 final int startRow, final int endRow,
                                 final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(getRowDimension(), getColumnDimension(),
                      startRow, endRow, startColumn, endColumn);
        for (int i = startRow; i <= endRow; ++i) {
            final double[] rowI = data[i];
            for (int j = startColumn; j <= endColumn; ++j) {
                rowI[j] = visitor.visit(i, j, rowI[j]);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInRowOrder(final RealMatrixPreservingVisitor visitor,
                                 final int startRow, final int endRow,
                                 final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(getRowDimension(), getColumnDimension(),
                      startRow, endRow, startColumn, endColumn);
        for (int i = startRow; i <= endRow; ++i) {
            final double[] rowI = data[i];
            for (int j = startColumn; j <= endColumn; ++j) {
                visitor.visit(i, j, rowI[j]);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInColumnOrder(final RealMatrixChangingVisitor visitor) {
        final int rows    = getRowDimension();
        final int columns = getColumnDimension();
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int j = 0; j < columns; ++j) {
            for (int i = 0; i < rows; ++i) {
                final double[] rowI = data[i];
                rowI[j] = visitor.visit(i, j, rowI[j]);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInColumnOrder(final RealMatrixPreservingVisitor visitor) {
        final int rows    = getRowDimension();
        final int columns = getColumnDimension();
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int j = 0; j < columns; ++j) {
            for (int i = 0; i < rows; ++i) {
                visitor.visit(i, j, data[i][j]);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInColumnOrder(final RealMatrixChangingVisitor visitor,
                                    final int startRow, final int endRow,
                                    final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(getRowDimension(), getColumnDimension(),
                      startRow, endRow, startColumn, endColumn);
        for (int j = startColumn; j <= endColumn; ++j) {
            for (int i = startRow; i <= endRow; ++i) {
                final double[] rowI = data[i];
                rowI[j] = visitor.visit(i, j, rowI[j]);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInColumnOrder(final RealMatrixPreservingVisitor visitor,
                                    final int startRow, final int endRow,
                                    final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(getRowDimension(), getColumnDimension(),
                      startRow, endRow, startColumn, endColumn);
        for (int j = startColumn; j <= endColumn; ++j) {
            for (int i = startRow; i <= endRow; ++i) {
                visitor.visit(i, j, data[i][j]);
            }
        }
        return visitor.end();
    }

    /**
     * Get a fresh copy of the underlying data array.
     *
     * @return a copy of the underlying data array.
     */
    private double[][] copyOut() {
        final int nRows = this.getRowDimension();
        final double[][] out = new double[nRows][this.getColumnDimension()];
        // can't copy 2-d array in one shot, otherwise get row references
        for (int i = 0; i < nRows; i++) {
            System.arraycopy(data[i], 0, out[i], 0, data[i].length);
        }
        return out;
    }

    /**
     * Replace data with a fresh copy of the input array.
     *
     * @param in Data to copy.
     * @throws NoDataException if the input array is empty.
     * @throws DimensionMismatchException if the input array is not rectangular.
     * @throws org.apache.commons.math.exception.NullArgumentException if
     * the input array is {@code null}.
     */
    private void copyIn(final double[][] in) {
        int PROBE_START_LINE_533 = 533;
		double[][] p_in_716_line_533 = in;
		int PROBE_END_LINE_533 = 533;
		setSubMatrix(p_in_716_line_533, 0, 0);
    }
}
