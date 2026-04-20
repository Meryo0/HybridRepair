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

import java.util.ArrayList;

import org.apache.commons.math.exception.NoDataException;
import org.apache.commons.math.exception.NotStrictlyPositiveException;
import org.apache.commons.math.exception.DimensionMismatchException;
import org.apache.commons.math.exception.util.LocalizedFormats;
import org.apache.commons.math.util.MathUtils;
import org.apache.commons.math.util.FastMath;

/**
 * Basic implementation of RealMatrix methods regardless of the underlying storage.
 * <p>All the methods implemented here use {@link #getEntry(int, int)} to access
 * matrix elements. Derived class can provide faster implementations. </p>
 *
 * @version $Id$
 * @since 2.0
 */
public abstract class AbstractRealMatrix implements RealMatrix {
    /**
     * Creates a matrix with no data
     */
    protected AbstractRealMatrix() {}

    /**
     * Create a new RealMatrix with the supplied row and column dimensions.
     *
     * @param rowDimension  the number of rows in the new matrix
     * @param columnDimension  the number of columns in the new matrix
     * @throws NotStrictlyPositiveException if row or column dimension is not positive
     */
    protected AbstractRealMatrix(final int rowDimension, final int columnDimension) {
        int PROBE_START_LINE_51 = 53;
		int p_row_dimension_520_line_51 = rowDimension;
		boolean abstract_real_matrix_1_expr1_line_51 = p_row_dimension_520_line_51 < 1;
		int PROBE_END_LINE_51 = 53;
		if (abstract_real_matrix_1_expr1_line_51) {
            throw new NotStrictlyPositiveException(rowDimension);
        }
        int PROBE_START_LINE_54 = 56;
		int p_column_dimension_521_line_54 = columnDimension;
		boolean abstract_real_matrix_1_expr2_line_54 = p_column_dimension_521_line_54 < 1;
		int PROBE_END_LINE_54 = 56;
		if (abstract_real_matrix_1_expr2_line_54) {
            throw new NotStrictlyPositiveException(columnDimension);
        }
    }

    /** {@inheritDoc} */
    public abstract RealMatrix createMatrix(final int rowDimension, final int columnDimension);

    /** {@inheritDoc} */
    public abstract RealMatrix copy();

    /** {@inheritDoc} */
    public RealMatrix add(RealMatrix m) {
        // Safety check.
        MatrixUtils.checkAdditionCompatible(this, m);

        final int rowCount    = getRowDimension();
        final int columnCount = getColumnDimension();
        final RealMatrix out = createMatrix(rowCount, columnCount);
        for (int row = 0; row < rowCount; ++row) {
            for (int col = 0; col < columnCount; ++col) {
                out.setEntry(row, col, getEntry(row, col) + m.getEntry(row, col));
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    public RealMatrix subtract(final RealMatrix m) {
        // Safety check.
        MatrixUtils.checkSubtractionCompatible(this, m);

        final int rowCount    = getRowDimension();
        final int columnCount = getColumnDimension();
        final RealMatrix out = createMatrix(rowCount, columnCount);
        for (int row = 0; row < rowCount; ++row) {
            for (int col = 0; col < columnCount; ++col) {
                out.setEntry(row, col, getEntry(row, col) - m.getEntry(row, col));
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    public RealMatrix scalarAdd(final double d) {
        final int rowCount    = getRowDimension();
        final int columnCount = getColumnDimension();
        final RealMatrix out = createMatrix(rowCount, columnCount);
        for (int row = 0; row < rowCount; ++row) {
            for (int col = 0; col < columnCount; ++col) {
                out.setEntry(row, col, getEntry(row, col) + d);
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    public RealMatrix scalarMultiply(final double d) {
        final int rowCount    = getRowDimension();
        final int columnCount = getColumnDimension();
        final RealMatrix out = createMatrix(rowCount, columnCount);
        for (int row = 0; row < rowCount; ++row) {
            for (int col = 0; col < columnCount; ++col) {
                out.setEntry(row, col, getEntry(row, col) * d);
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    public RealMatrix multiply(final RealMatrix m) {
        // Safety check.
        MatrixUtils.checkMultiplicationCompatible(this, m);

        final int nRows = getRowDimension();
        final int nCols = m.getColumnDimension();
        final int nSum  = getColumnDimension();
        final RealMatrix out = createMatrix(nRows, nCols);
        for (int row = 0; row < nRows; ++row) {
            for (int col = 0; col < nCols; ++col) {
                double sum = 0;
                for (int i = 0; i < nSum; ++i) {
                    sum += getEntry(row, i) * m.getEntry(i, col);
                }
                out.setEntry(row, col, sum);
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    public RealMatrix preMultiply(final RealMatrix m) {
        return m.multiply(this);
    }

    /** {@inheritDoc} */
    public RealMatrix power(final int p) {
        if (p < 0) {
            throw new IllegalArgumentException("p must be >= 0");
        }

        if (!isSquare()) {
            throw new NonSquareMatrixException(getRowDimension(), getColumnDimension());
        }

        if (p == 0) {
            return MatrixUtils.createRealIdentityMatrix(this.getRowDimension());
        }

        if (p == 1) {
            return this.copy();
        }

        final int power = p - 1;

        /*
         * Only log_2(p) operations is used by doing as follows:
         * 5^214 = 5^128 * 5^64 * 5^16 * 5^4 * 5^2
         *
         * In general, the same approach is used for A^p.
         */

        final char[] binaryRepresentation = Integer.toBinaryString(power).toCharArray();
        final ArrayList<Integer> nonZeroPositions = new ArrayList<Integer>();
        int maxI = -1;

        for (int i = 0; i < binaryRepresentation.length; ++i) {
            if (binaryRepresentation[i] == '1') {
                final int pos = binaryRepresentation.length - i - 1;
                nonZeroPositions.add(pos);

                // The positions are taken in turn, so maxI is only changed once
                if (maxI == -1) {
                    maxI = pos;
                }
            }
        }

        RealMatrix[] results = new RealMatrix[maxI + 1];
        results[0] = this.copy();

        for (int i = 1; i <= maxI; ++i) {
            results[i] = results[i-1].multiply(results[i-1]);
        }

        RealMatrix result = this.copy();

        for (Integer i : nonZeroPositions) {
            result = result.multiply(results[i]);
        }

        return result;
    }

    /** {@inheritDoc} */
    public double[][] getData() {
        final double[][] data = new double[getRowDimension()][getColumnDimension()];

        for (int i = 0; i < data.length; ++i) {
            final double[] dataI = data[i];
            for (int j = 0; j < dataI.length; ++j) {
                dataI[j] = getEntry(i, j);
            }
        }

        return data;
    }

    /** {@inheritDoc} */
    public double getNorm() {
        return walkInColumnOrder(new RealMatrixPreservingVisitor() {

            /** Last row index. */
            private double endRow;

            /** Sum of absolute values on one column. */
            private double columnSum;

            /** Maximal sum across all columns. */
            private double maxColSum;

            /** {@inheritDoc} */
            public void start(final int rows, final int columns,
                              final int startRow, final int endRow,
                              final int startColumn, final int endColumn) {
                this.endRow = endRow;
                columnSum   = 0;
                maxColSum   = 0;
            }

            /** {@inheritDoc} */
            public void visit(final int row, final int column, final double value) {
                columnSum += FastMath.abs(value);
                if (row == endRow) {
                    maxColSum = FastMath.max(maxColSum, columnSum);
                    columnSum = 0;
                }
            }

            /** {@inheritDoc} */
            public double end() {
                return maxColSum;
            }
        });
    }

    /** {@inheritDoc} */
    public double getFrobeniusNorm() {
        return walkInOptimizedOrder(new RealMatrixPreservingVisitor() {

            /** Sum of squared entries. */
            private double sum;

            /** {@inheritDoc} */
            public void start(final int rows, final int columns,
                              final int startRow, final int endRow,
                              final int startColumn, final int endColumn) {
                sum = 0;
            }

            /** {@inheritDoc} */
            public void visit(final int row, final int column, final double value) {
                sum += value * value;
            }

            /** {@inheritDoc} */
            public double end() {
                return FastMath.sqrt(sum);
            }
        });
    }

    /** {@inheritDoc} */
    public RealMatrix getSubMatrix(final int startRow, final int endRow,
                                   final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);

        final RealMatrix subMatrix =
            createMatrix(endRow - startRow + 1, endColumn - startColumn + 1);
        for (int i = startRow; i <= endRow; ++i) {
            for (int j = startColumn; j <= endColumn; ++j) {
                subMatrix.setEntry(i - startRow, j - startColumn, getEntry(i, j));
            }
        }

        return subMatrix;
    }

    /** {@inheritDoc} */
    public RealMatrix getSubMatrix(final int[] selectedRows, final int[] selectedColumns) {
        // safety checks
        MatrixUtils.checkSubMatrixIndex(this, selectedRows, selectedColumns);

        // copy entries
        final RealMatrix subMatrix =
            createMatrix(selectedRows.length, selectedColumns.length);
        subMatrix.walkInOptimizedOrder(new DefaultRealMatrixChangingVisitor() {

            /** {@inheritDoc} */
            @Override
            public double visit(final int row, final int column, final double value) {
                return getEntry(selectedRows[row], selectedColumns[column]);
            }

        });

        return subMatrix;
    }

    /** {@inheritDoc} */
    public void copySubMatrix(final int startRow, final int endRow,
                              final int startColumn, final int endColumn,
                              final double[][] destination) {
        // safety checks
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        final int rowsCount    = endRow + 1 - startRow;
        final int columnsCount = endColumn + 1 - startColumn;
        if ((destination.length < rowsCount) || (destination[0].length < columnsCount)) {
            throw new MatrixDimensionMismatchException(destination.length, destination[0].length,
                                                       rowsCount, columnsCount);
        }

        // copy entries
        walkInOptimizedOrder(new DefaultRealMatrixPreservingVisitor() {

            /** Initial row index. */
            private int startRow;

            /** Initial column index. */
            private int startColumn;

            /** {@inheritDoc} */
            @Override
            public void start(final int rows, final int columns,
                              final int startRow, final int endRow,
                              final int startColumn, final int endColumn) {
                this.startRow    = startRow;
                this.startColumn = startColumn;
            }

            /** {@inheritDoc} */
            @Override
            public void visit(final int row, final int column, final double value) {
                destination[row - startRow][column - startColumn] = value;
            }

        }, startRow, endRow, startColumn, endColumn);
    }

    /** {@inheritDoc} */
    public void copySubMatrix(int[] selectedRows, int[] selectedColumns, double[][] destination) {
        // safety checks
        MatrixUtils.checkSubMatrixIndex(this, selectedRows, selectedColumns);
        if ((destination.length < selectedRows.length) ||
            (destination[0].length < selectedColumns.length)) {
            throw new MatrixDimensionMismatchException(destination.length, destination[0].length,
                                                       selectedRows.length, selectedColumns.length);
        }

        // copy entries
        for (int i = 0; i < selectedRows.length; i++) {
            final double[] destinationI = destination[i];
            for (int j = 0; j < selectedColumns.length; j++) {
                destinationI[j] = getEntry(selectedRows[i], selectedColumns[j]);
            }
        }
    }

    /** {@inheritDoc} */
    public void setSubMatrix(final double[][] subMatrix, final int row, final int column) {
        int PROBE_START_LINE_389 = 389;
		double[][] p_sub_matrix_575_line_389 = subMatrix;
		int q_length_6_line_389 = p_sub_matrix_575_line_389.length;
		int PROBE_END_LINE_389 = 389;
		final int nRows = q_length_6_line_389;
        int PROBE_START_LINE_390 = 392;
		int v_n_rows_578_line_390 = nRows;
		boolean abstract_real_matrix_1_expr3_line_390 = v_n_rows_578_line_390 == 0;
		int PROBE_END_LINE_390 = 392;
		if (abstract_real_matrix_1_expr3_line_390) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }

        int PROBE_START_LINE_394 = 394;
		double[][] p_sub_matrix_575_line_394 = subMatrix;
		double[] abstract_real_matrix_1_expr5_line_394 = p_sub_matrix_575_line_394[0];
		int abstract_real_matrix_1_expr4_line_394 = abstract_real_matrix_1_expr5_line_394.length;
		int PROBE_END_LINE_394 = 394;
		final int nCols = abstract_real_matrix_1_expr4_line_394;
        int PROBE_START_LINE_395 = 397;
		int v_n_cols_579_line_395 = nCols;
		boolean abstract_real_matrix_1_expr6_line_395 = v_n_cols_579_line_395 == 0;
		int PROBE_END_LINE_395 = 397;
		if (abstract_real_matrix_1_expr6_line_395) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }

        for (int r = 1; true; ++r) {
            int PROBE_START_LINE_400 = 402;
			int v_r_580_line_399 = r;
			int v_n_rows_578_line_399 = nRows;
			boolean abstract_real_matrix_1_expr8_line_399 = v_r_580_line_399 < v_n_rows_578_line_399;
			if (!(abstract_real_matrix_1_expr8_line_399)) {
				break;
			}
			double[][] p_sub_matrix_575_line_400 = subMatrix;
			int v_r_580_line_400 = r;
			double[] abstract_real_matrix_1_expr12_line_400 = p_sub_matrix_575_line_400[v_r_580_line_400];
			int abstract_real_matrix_1_expr11_line_400 = abstract_real_matrix_1_expr12_line_400.length;
			int v_n_cols_579_line_400 = nCols;
			boolean abstract_real_matrix_1_expr10_line_400 = abstract_real_matrix_1_expr11_line_400 != v_n_cols_579_line_400;
			int PROBE_END_LINE_400 = 402;
			if (abstract_real_matrix_1_expr10_line_400) {
                throw new DimensionMismatchException(nCols, subMatrix[r].length);
            }
        }

        int PROBE_START_LINE_405 = 405;
		int p_row_576_line_405 = row;
		int PROBE_END_LINE_405 = 405;
		MatrixUtils.checkRowIndex(this, p_row_576_line_405);
        int PROBE_START_LINE_406 = 406;
		int p_column_577_line_406 = column;
		int PROBE_END_LINE_406 = 406;
		MatrixUtils.checkColumnIndex(this, p_column_577_line_406);
        int PROBE_START_LINE_407 = 407;
		int v_n_rows_578_line_407 = nRows;
		int p_row_576_line_407 = row;
		int abstract_real_matrix_1_expr20_line_407 = v_n_rows_578_line_407 + p_row_576_line_407;
		int abstract_real_matrix_1_expr19_line_407 = abstract_real_matrix_1_expr20_line_407 - 1;
		int PROBE_END_LINE_407 = 407;
		MatrixUtils.checkRowIndex(this, abstract_real_matrix_1_expr19_line_407);
        int PROBE_START_LINE_408 = 408;
		int v_n_cols_579_line_408 = nCols;
		int p_column_577_line_408 = column;
		int abstract_real_matrix_1_expr24_line_408 = v_n_cols_579_line_408 + p_column_577_line_408;
		int abstract_real_matrix_1_expr23_line_408 = abstract_real_matrix_1_expr24_line_408 - 1;
		int PROBE_END_LINE_408 = 408;
		MatrixUtils.checkColumnIndex(this, abstract_real_matrix_1_expr23_line_408);

        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_411 = 413;
			int v_i_581_line_410 = i;
			int v_n_rows_578_line_410 = nRows;
			boolean abstract_real_matrix_1_expr26_line_410 = v_i_581_line_410 < v_n_rows_578_line_410;
			if (!(abstract_real_matrix_1_expr26_line_410)) {
				break;
			}
			int PROBE_END_LINE_411 = 413;
			for (int j = 0; true; ++j) {
                int PROBE_START_LINE_412 = 412;
				int v_j_582_line_411 = j;
				int v_n_cols_579_line_411 = nCols;
				boolean abstract_real_matrix_1_expr29_line_411 = v_j_582_line_411 < v_n_cols_579_line_411;
				if (!(abstract_real_matrix_1_expr29_line_411)) {
					break;
				}
				int p_row_576_line_412 = row;
				int v_i_581_line_412 = i;
				int abstract_real_matrix_1_expr32_line_412 = p_row_576_line_412 + v_i_581_line_412;
				int p_column_577_line_412 = column;
				int v_j_582_line_412 = j;
				int abstract_real_matrix_1_expr33_line_412 = p_column_577_line_412 + v_j_582_line_412;
				double[][] p_sub_matrix_575_line_412 = subMatrix;
				int v_i_581_line_412_v1 = i;
				double[] abstract_real_matrix_1_expr35_line_412 = p_sub_matrix_575_line_412[v_i_581_line_412_v1];
				int v_j_582_line_412_v1 = j;
				double abstract_real_matrix_1_expr34_line_412 = abstract_real_matrix_1_expr35_line_412[v_j_582_line_412_v1];
				int PROBE_END_LINE_412 = 412;
				setEntry(abstract_real_matrix_1_expr32_line_412, abstract_real_matrix_1_expr33_line_412, abstract_real_matrix_1_expr34_line_412);
            }
        }
    }

    /** {@inheritDoc} */
    public RealMatrix getRowMatrix(final int row) {
        MatrixUtils.checkRowIndex(this, row);
        final int nCols = getColumnDimension();
        final RealMatrix out = createMatrix(1, nCols);
        for (int i = 0; i < nCols; ++i) {
            out.setEntry(0, i, getEntry(row, i));
        }

        return out;
    }

    /** {@inheritDoc} */
    public void setRowMatrix(final int row, final RealMatrix matrix) {
        MatrixUtils.checkRowIndex(this, row);
        final int nCols = getColumnDimension();
        if ((matrix.getRowDimension() != 1) ||
            (matrix.getColumnDimension() != nCols)) {
            throw new MatrixDimensionMismatchException(matrix.getRowDimension(),
                                                       matrix.getColumnDimension(),
                                                       1, nCols);
        }
        for (int i = 0; i < nCols; ++i) {
            setEntry(row, i, matrix.getEntry(0, i));
        }
    }

    /** {@inheritDoc} */
    public RealMatrix getColumnMatrix(final int column) {
        MatrixUtils.checkColumnIndex(this, column);
        final int nRows = getRowDimension();
        final RealMatrix out = createMatrix(nRows, 1);
        for (int i = 0; i < nRows; ++i) {
            out.setEntry(i, 0, getEntry(i, column));
        }

        return out;
    }

    /** {@inheritDoc} */
    public void setColumnMatrix(final int column, final RealMatrix matrix) {
        MatrixUtils.checkColumnIndex(this, column);
        final int nRows = getRowDimension();
        if ((matrix.getRowDimension() != nRows) ||
            (matrix.getColumnDimension() != 1)) {
            throw new MatrixDimensionMismatchException(matrix.getRowDimension(),
                                                       matrix.getColumnDimension(),
                                                       nRows, 1);
        }
        for (int i = 0; i < nRows; ++i) {
            setEntry(i, column, matrix.getEntry(i, 0));
        }
    }

    /** {@inheritDoc} */
    public RealVector getRowVector(final int row) {
        return new ArrayRealVector(getRow(row), false);
    }

    /** {@inheritDoc} */
    public void setRowVector(final int row, final RealVector vector) {
        MatrixUtils.checkRowIndex(this, row);
        final int nCols = getColumnDimension();
        if (vector.getDimension() != nCols) {
            throw new MatrixDimensionMismatchException(1, vector.getDimension(),
                                                       1, nCols);
        }
        for (int i = 0; i < nCols; ++i) {
            setEntry(row, i, vector.getEntry(i));
        }
    }

    /** {@inheritDoc} */
    public RealVector getColumnVector(final int column) {
        return new ArrayRealVector(getColumn(column), false);
    }

    /** {@inheritDoc} */
    public void setColumnVector(final int column, final RealVector vector) {
        MatrixUtils.checkColumnIndex(this, column);
        final int nRows = getRowDimension();
        if (vector.getDimension() != nRows) {
            throw new MatrixDimensionMismatchException(vector.getDimension(), 1,
                                                       nRows, 1);
        }
        for (int i = 0; i < nRows; ++i) {
            setEntry(i, column, vector.getEntry(i));
        }
    }

    /** {@inheritDoc} */
    public double[] getRow(final int row) {
        MatrixUtils.checkRowIndex(this, row);
        final int nCols = getColumnDimension();
        final double[] out = new double[nCols];
        for (int i = 0; i < nCols; ++i) {
            out[i] = getEntry(row, i);
        }

        return out;
    }

    /** {@inheritDoc} */
    public void setRow(final int row, final double[] array) {
        MatrixUtils.checkRowIndex(this, row);
        final int nCols = getColumnDimension();
        if (array.length != nCols) {
            throw new MatrixDimensionMismatchException(1, array.length, 1, nCols);
        }
        for (int i = 0; i < nCols; ++i) {
            setEntry(row, i, array[i]);
        }
    }

    /** {@inheritDoc} */
    public double[] getColumn(final int column) {
        MatrixUtils.checkColumnIndex(this, column);
        final int nRows = getRowDimension();
        final double[] out = new double[nRows];
        for (int i = 0; i < nRows; ++i) {
            out[i] = getEntry(i, column);
        }

        return out;
    }

    /** {@inheritDoc} */
    public void setColumn(final int column, final double[] array) {
        MatrixUtils.checkColumnIndex(this, column);
        final int nRows = getRowDimension();
        if (array.length != nRows) {
            throw new MatrixDimensionMismatchException(array.length, 1, nRows, 1);
        }
        for (int i = 0; i < nRows; ++i) {
            setEntry(i, column, array[i]);
        }
    }

    /** {@inheritDoc} */
    public abstract double getEntry(int row, int column);

    /** {@inheritDoc} */
    public abstract void setEntry(int row, int column, double value);

    /** {@inheritDoc} */
    public abstract void addToEntry(int row, int column, double increment);

    /** {@inheritDoc} */
    public abstract void multiplyEntry(int row, int column, double factor);

    /** {@inheritDoc} */
    public RealMatrix transpose() {
        final int nRows = getRowDimension();
        final int nCols = getColumnDimension();
        final RealMatrix out = createMatrix(nCols, nRows);
        walkInOptimizedOrder(new DefaultRealMatrixPreservingVisitor() {

            /** {@inheritDoc} */
            @Override
            public void visit(final int row, final int column, final double value) {
                out.setEntry(column, row, value);
            }

        });

        return out;
    }

    /** {@inheritDoc} */
    public boolean isSquare() {
        return getColumnDimension() == getRowDimension();
    }

    /** {@inheritDoc} */
    public abstract int getRowDimension();

    /** {@inheritDoc} */
    public abstract int getColumnDimension();

    /** {@inheritDoc} */
    public double getTrace() {
        final int nRows = getRowDimension();
        final int nCols = getColumnDimension();
        if (nRows != nCols) {
            throw new NonSquareMatrixException(nRows, nCols);
       }
        double trace = 0;
        for (int i = 0; i < nRows; ++i) {
            trace += getEntry(i, i);
        }
        return trace;
    }

    /** {@inheritDoc} */
    public double[] operate(final double[] v) {
        final int nRows = getRowDimension();
        final int nCols = getColumnDimension();
        if (v.length != nCols) {
            throw new DimensionMismatchException(v.length, nCols);
        }

        final double[] out = new double[nRows];
        for (int row = 0; row < nRows; ++row) {
            double sum = 0;
            for (int i = 0; i < nCols; ++i) {
                sum += getEntry(row, i) * v[i];
            }
            out[row] = sum;
        }

        return out;
    }

    /** {@inheritDoc} */
    public RealVector operate(final RealVector v) {
        try {
            return new ArrayRealVector(operate(((ArrayRealVector) v).getDataRef()), false);
        } catch (ClassCastException cce) {
            final int nRows = getRowDimension();
            final int nCols = getColumnDimension();
            if (v.getDimension() != nCols) {
                throw new DimensionMismatchException(v.getDimension(), nCols);
            }

            final double[] out = new double[nRows];
            for (int row = 0; row < nRows; ++row) {
                double sum = 0;
                for (int i = 0; i < nCols; ++i) {
                    sum += getEntry(row, i) * v.getEntry(i);
                }
                out[row] = sum;
            }

            return new ArrayRealVector(out, false);
        }
    }

    /** {@inheritDoc} */
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
                sum += getEntry(i, col) * v[i];
            }
            out[col] = sum;
        }

        return out;
    }

    /** {@inheritDoc} */
    public RealVector preMultiply(final RealVector v) {
        try {
            return new ArrayRealVector(preMultiply(((ArrayRealVector) v).getDataRef()), false);
        } catch (ClassCastException cce) {

            final int nRows = getRowDimension();
            final int nCols = getColumnDimension();
            if (v.getDimension() != nRows) {
                throw new DimensionMismatchException(v.getDimension(), nRows);
            }

            final double[] out = new double[nCols];
            for (int col = 0; col < nCols; ++col) {
                double sum = 0;
                for (int i = 0; i < nRows; ++i) {
                    sum += getEntry(i, col) * v.getEntry(i);
                }
                out[col] = sum;
            }

            return new ArrayRealVector(out, false);
        }
    }

    /** {@inheritDoc} */
    public double walkInRowOrder(final RealMatrixChangingVisitor visitor) {
        final int rows    = getRowDimension();
        final int columns = getColumnDimension();
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int row = 0; row < rows; ++row) {
            for (int column = 0; column < columns; ++column) {
                final double oldValue = getEntry(row, column);
                final double newValue = visitor.visit(row, column, oldValue);
                setEntry(row, column, newValue);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    public double walkInRowOrder(final RealMatrixPreservingVisitor visitor) {
        final int rows    = getRowDimension();
        final int columns = getColumnDimension();
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int row = 0; row < rows; ++row) {
            for (int column = 0; column < columns; ++column) {
                visitor.visit(row, column, getEntry(row, column));
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    public double walkInRowOrder(final RealMatrixChangingVisitor visitor,
                                 final int startRow, final int endRow,
                                 final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(getRowDimension(), getColumnDimension(),
                      startRow, endRow, startColumn, endColumn);
        for (int row = startRow; row <= endRow; ++row) {
            for (int column = startColumn; column <= endColumn; ++column) {
                final double oldValue = getEntry(row, column);
                final double newValue = visitor.visit(row, column, oldValue);
                setEntry(row, column, newValue);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    public double walkInRowOrder(final RealMatrixPreservingVisitor visitor,
                                 final int startRow, final int endRow,
                                 final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(getRowDimension(), getColumnDimension(),
                      startRow, endRow, startColumn, endColumn);
        for (int row = startRow; row <= endRow; ++row) {
            for (int column = startColumn; column <= endColumn; ++column) {
                visitor.visit(row, column, getEntry(row, column));
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    public double walkInColumnOrder(final RealMatrixChangingVisitor visitor) {
        final int rows    = getRowDimension();
        final int columns = getColumnDimension();
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int column = 0; column < columns; ++column) {
            for (int row = 0; row < rows; ++row) {
                final double oldValue = getEntry(row, column);
                final double newValue = visitor.visit(row, column, oldValue);
                setEntry(row, column, newValue);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    public double walkInColumnOrder(final RealMatrixPreservingVisitor visitor) {
        final int rows    = getRowDimension();
        final int columns = getColumnDimension();
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int column = 0; column < columns; ++column) {
            for (int row = 0; row < rows; ++row) {
                visitor.visit(row, column, getEntry(row, column));
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    public double walkInColumnOrder(final RealMatrixChangingVisitor visitor,
                                    final int startRow, final int endRow,
                                    final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(getRowDimension(), getColumnDimension(),
                      startRow, endRow, startColumn, endColumn);
        for (int column = startColumn; column <= endColumn; ++column) {
            for (int row = startRow; row <= endRow; ++row) {
                final double oldValue = getEntry(row, column);
                final double newValue = visitor.visit(row, column, oldValue);
                setEntry(row, column, newValue);
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    public double walkInColumnOrder(final RealMatrixPreservingVisitor visitor,
                                    final int startRow, final int endRow,
                                    final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(getRowDimension(), getColumnDimension(),
                      startRow, endRow, startColumn, endColumn);
        for (int column = startColumn; column <= endColumn; ++column) {
            for (int row = startRow; row <= endRow; ++row) {
                visitor.visit(row, column, getEntry(row, column));
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    public double walkInOptimizedOrder(final RealMatrixChangingVisitor visitor) {
        return walkInRowOrder(visitor);
    }

    /** {@inheritDoc} */
    public double walkInOptimizedOrder(final RealMatrixPreservingVisitor visitor) {
        return walkInRowOrder(visitor);
    }

    /** {@inheritDoc} */
    public double walkInOptimizedOrder(final RealMatrixChangingVisitor visitor,
                                       final int startRow, final int endRow,
                                       final int startColumn, final int endColumn) {
        return walkInRowOrder(visitor, startRow, endRow, startColumn, endColumn);
    }

    /** {@inheritDoc} */
    public double walkInOptimizedOrder(final RealMatrixPreservingVisitor visitor,
                                       final int startRow, final int endRow,
                                       final int startColumn, final int endColumn) {
        return walkInRowOrder(visitor, startRow, endRow, startColumn, endColumn);
    }

    /**
     * Get a string representation for this matrix.
     * @return a string representation for this matrix
     */
    @Override
    public String toString() {
        final int nRows = getRowDimension();
        final int nCols = getColumnDimension();
        final StringBuffer res = new StringBuffer();
        String fullClassName = getClass().getName();
        String shortClassName = fullClassName.substring(fullClassName.lastIndexOf('.') + 1);
        res.append(shortClassName).append("{");

        for (int i = 0; i < nRows; ++i) {
            if (i > 0) {
                res.append(",");
            }
            res.append("{");
            for (int j = 0; j < nCols; ++j) {
                if (j > 0) {
                    res.append(",");
                }
                res.append(getEntry(i, j));
            }
            res.append("}");
        }

        res.append("}");
        return res.toString();
    }

    /**
     * Returns true iff <code>object</code> is a
     * <code>RealMatrix</code> instance with the same dimensions as this
     * and all corresponding matrix entries are equal.
     *
     * @param object the object to test equality against.
     * @return true if object equals this
     */
    @Override
    public boolean equals(final Object object) {
        int PROBE_START_LINE_885 = 887;
		Object p_object_655_line_885 = object;
		boolean abstract_real_matrix_1_expr36_line_885 = p_object_655_line_885 == this;
		int PROBE_END_LINE_885 = 887;
		if (abstract_real_matrix_1_expr36_line_885 ) {
            return true;
        }
        int PROBE_START_LINE_888 = 890;
		Object p_object_655_line_888 = object;
		boolean abstract_real_matrix_1_expr39_line_888 = p_object_655_line_888 instanceof RealMatrix;
		boolean abstract_real_matrix_1_expr38_line_888 = abstract_real_matrix_1_expr39_line_888 == false;
		int PROBE_END_LINE_888 = 890;
		if (abstract_real_matrix_1_expr38_line_888) {
            return false;
        }
        int PROBE_START_LINE_891 = 891;
		Object p_object_655_line_891 = object;
		int PROBE_END_LINE_891 = 891;
		RealMatrix m = (RealMatrix) p_object_655_line_891;
        int PROBE_START_LINE_892 = 892;
		int abstract_real_matrix_1_expr41_line_892 = getRowDimension();
		int PROBE_END_LINE_892 = 892;
		final int nRows = abstract_real_matrix_1_expr41_line_892;
        int PROBE_START_LINE_893 = 893;
		int abstract_real_matrix_1_expr42_line_893 = getColumnDimension();
		int PROBE_END_LINE_893 = 893;
		final int nCols = abstract_real_matrix_1_expr42_line_893;
        int PROBE_START_LINE_894 = 896;
		org.apache.commons.math.linear.RealMatrix v_m_656_line_894 = m;
		int abstract_real_matrix_1_expr45_line_894 = v_m_656_line_894.getColumnDimension();
		int v_n_cols_658_line_894 = nCols;
		boolean abstract_real_matrix_1_expr44_line_894 = abstract_real_matrix_1_expr45_line_894 != v_n_cols_658_line_894;
		boolean abstract_real_matrix_1_expr46_line_894 = false;
		if (!abstract_real_matrix_1_expr44_line_894) {
			org.apache.commons.math.linear.RealMatrix v_m_656_line_894_v1 = m;
			int abstract_real_matrix_1_expr47_line_894 = v_m_656_line_894_v1.getRowDimension();
			int v_n_rows_657_line_894 = nRows;
			abstract_real_matrix_1_expr46_line_894 = abstract_real_matrix_1_expr47_line_894 != v_n_rows_657_line_894;
		}
		boolean abstract_real_matrix_1_expr43_line_894 = abstract_real_matrix_1_expr44_line_894
				|| abstract_real_matrix_1_expr46_line_894;
		int PROBE_END_LINE_894 = 896;
		if (abstract_real_matrix_1_expr43_line_894) {
            return false;
        }
        for (int row = 0; true; ++row) {
            int PROBE_START_LINE_898 = 902;
			int v_row_659_line_897 = row;
			int v_n_rows_657_line_897 = nRows;
			boolean abstract_real_matrix_1_expr49_line_897 = v_row_659_line_897 < v_n_rows_657_line_897;
			if (!(abstract_real_matrix_1_expr49_line_897)) {
				break;
			}
			int PROBE_END_LINE_898 = 902;
			for (int col = 0; true; ++col) {
                int PROBE_START_LINE_899 = 901;
				int v_col_660_line_898 = col;
				int v_n_cols_658_line_898 = nCols;
				boolean abstract_real_matrix_1_expr52_line_898 = v_col_660_line_898 < v_n_cols_658_line_898;
				if (!(abstract_real_matrix_1_expr52_line_898)) {
					break;
				}
				int v_row_659_line_899 = row;
				int v_col_660_line_899 = col;
				double abstract_real_matrix_1_expr55_line_899 = getEntry(v_row_659_line_899, v_col_660_line_899);
				org.apache.commons.math.linear.RealMatrix v_m_656_line_899 = m;
				int v_row_659_line_899_v1 = row;
				int v_col_660_line_899_v1 = col;
				double abstract_real_matrix_1_expr56_line_899 = v_m_656_line_899.getEntry(v_row_659_line_899_v1,
						v_col_660_line_899_v1);
				boolean abstract_real_matrix_1_expr54_line_899 = abstract_real_matrix_1_expr55_line_899 != abstract_real_matrix_1_expr56_line_899;
				int PROBE_END_LINE_899 = 901;
				if (abstract_real_matrix_1_expr54_line_899) {
                    return false;
                }
            }
        }
        return true;
    }

    /**
     * Computes a hashcode for the matrix.
     *
     * @return hashcode for matrix
     */
    @Override
    public int hashCode() {
        int ret = 7;
        final int nRows = getRowDimension();
        final int nCols = getColumnDimension();
        ret = ret * 31 + nRows;
        ret = ret * 31 + nCols;
        for (int row = 0; row < nRows; ++row) {
            for (int col = 0; col < nCols; ++col) {
               ret = ret * 31 + (11 * (row+1) + 17 * (col+1)) *
                   MathUtils.hash(getEntry(row, col));
           }
        }
        return ret;
    }
}
