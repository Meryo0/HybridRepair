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
import java.util.Arrays;

import org.apache.commons.math.exception.DimensionMismatchException;
import org.apache.commons.math.exception.NoDataException;
import org.apache.commons.math.exception.util.LocalizedFormats;
import org.apache.commons.math.util.FastMath;

/**
 * Cache-friendly implementation of RealMatrix using a flat arrays to store
 * square blocks of the matrix.
 * <p>
 * This implementation is specially designed to be cache-friendly. Square blocks are
 * stored as small arrays and allow efficient traversal of data both in row major direction
 * and columns major direction, one block at a time. This greatly increases performances
 * for algorithms that use crossed directions loops like multiplication or transposition.
 * </p>
 * <p>
 * The size of square blocks is a static parameter. It may be tuned according to the cache
 * size of the target computer processor. As a rule of thumbs, it should be the largest
 * value that allows three blocks to be simultaneously cached (this is necessary for example
 * for matrix multiplication). The default value is to use 52x52 blocks which is well suited
 * for processors with 64k L1 cache (one block holds 2704 values or 21632 bytes). This value
 * could be lowered to 36x36 for processors with 32k L1 cache.
 * </p>
 * <p>
 * The regular blocks represent {@link #BLOCK_SIZE} x {@link #BLOCK_SIZE} squares. Blocks
 * at right hand side and bottom side which may be smaller to fit matrix dimensions. The square
 * blocks are flattened in row major order in single dimension arrays which are therefore
 * {@link #BLOCK_SIZE}<sup>2</sup> elements long for regular blocks. The blocks are themselves
 * organized in row major order.
 * </p>
 * <p>
 * As an example, for a block size of 52x52, a 100x60 matrix would be stored in 4 blocks.
 * Block 0 would be a double[2704] array holding the upper left 52x52 square, block 1 would be
 * a double[416] array holding the upper right 52x8 rectangle, block 2 would be a double[2496]
 * array holding the lower left 48x52 rectangle and block 3 would be a double[384] array
 * holding the lower right 48x8 rectangle.
 * </p>
 * <p>
 * The layout complexity overhead versus simple mapping of matrices to java
 * arrays is negligible for small matrices (about 1%). The gain from cache efficiency leads
 * to up to 3-fold improvements for matrices of moderate to large size.
 * </p>
 * @version $Id$
 * @since 2.0
 */
public class BlockRealMatrix extends AbstractRealMatrix implements Serializable {
    /** Block size. */
    public static final int BLOCK_SIZE = 52;
    /** Serializable version identifier */
    private static final long serialVersionUID = 4991895511313664478L;
    /** Blocks of matrix entries. */
    private final double blocks[][];
    /** Number of rows of the matrix. */
    private final int rows;
    /** Number of columns of the matrix. */
    private final int columns;
    /** Number of block rows of the matrix. */
    private final int blockRows;
    /** Number of block columns of the matrix. */
    private final int blockColumns;

    /**
     * Create a new matrix with the supplied row and column dimensions.
     *
     * @param rows  the number of rows in the new matrix
     * @param columns  the number of columns in the new matrix
     * @throws org.apache.commons.math.exception.NotStrictlyPositiveException
     * if row or column dimension is not positive.
     */
    public BlockRealMatrix(final int rows, final int columns) {
        super(rows, columns);
        this.rows = rows;
        this.columns = columns;

        // number of blocks
        blockRows = (rows + BLOCK_SIZE - 1) / BLOCK_SIZE;
        blockColumns = (columns + BLOCK_SIZE - 1) / BLOCK_SIZE;

        // allocate storage blocks, taking care of smaller ones at right and bottom
        blocks = createBlocksLayout(rows, columns);
    }

    /**
     * Create a new dense matrix copying entries from raw layout data.
     * <p>The input array <em>must</em> already be in raw layout.</p>
     * <p>Calling this constructor is equivalent to call:
     * <pre>matrix = new BlockRealMatrix(rawData.length, rawData[0].length,
     *                                   toBlocksLayout(rawData), false);</pre>
     * </p>
     *
     * @param rawData data for new matrix, in raw layout
     * @throws DimensionMismatchException if the shape of {@code blockData} is
     * inconsistent with block layout.
     * @see #BlockRealMatrix(int, int, double[][], boolean)
     */
    public BlockRealMatrix(final double[][] rawData) {
        this(rawData.length, rawData[0].length, toBlocksLayout(rawData), false);
    }

    /**
     * Create a new dense matrix copying entries from block layout data.
     * <p>The input array <em>must</em> already be in blocks layout.</p>
     *
     * @param rows Number of rows in the new matrix.
     * @param columns Number of columns in the new matrix.
     * @param blockData data for new matrix
     * @param copyArray Whether the input array will be copied or referenced.
     * @throws DimensionMismatchException if the shape of {@code blockData} is
     * inconsistent with block layout.
     * @see #createBlocksLayout(int, int)
     * @see #toBlocksLayout(double[][])
     * @see #BlockRealMatrix(double[][])
     */
    public BlockRealMatrix(final int rows, final int columns,
                           final double[][] blockData, final boolean copyArray) {
        super(rows, columns);
        int PROBE_START_LINE_138 = 138;
		int p_rows_1034_line_138 = rows;
		int PROBE_END_LINE_138 = 138;
		this.rows = p_rows_1034_line_138;
        int PROBE_START_LINE_139 = 139;
		int p_columns_1035_line_139 = columns;
		int PROBE_END_LINE_139 = 139;
		this.columns = p_columns_1035_line_139;

        int PROBE_START_LINE_142 = 142;
		int p_rows_1034_line_142 = rows;
		int f_block_size_1041_line_142 = BLOCK_SIZE;
		int block_real_matrix_1_expr16_line_142 = p_rows_1034_line_142 + f_block_size_1041_line_142;
		int block_real_matrix_1_expr15_line_142 = block_real_matrix_1_expr16_line_142 - 1;
		int block_real_matrix_1_expr14_line_142 = (block_real_matrix_1_expr15_line_142);
		int f_block_size_1041_line_142_v1 = BLOCK_SIZE;
		int block_real_matrix_1_expr13_line_142 = block_real_matrix_1_expr14_line_142 / f_block_size_1041_line_142_v1;
		int PROBE_END_LINE_142 = 142;
		// number of blocks
        blockRows = block_real_matrix_1_expr13_line_142;
        int PROBE_START_LINE_143 = 143;
		int p_columns_1035_line_143 = columns;
		int f_block_size_1041_line_143 = BLOCK_SIZE;
		int block_real_matrix_1_expr21_line_143 = p_columns_1035_line_143 + f_block_size_1041_line_143;
		int block_real_matrix_1_expr20_line_143 = block_real_matrix_1_expr21_line_143 - 1;
		int block_real_matrix_1_expr19_line_143 = (block_real_matrix_1_expr20_line_143);
		int f_block_size_1041_line_143_v1 = BLOCK_SIZE;
		int block_real_matrix_1_expr18_line_143 = block_real_matrix_1_expr19_line_143 / f_block_size_1041_line_143_v1;
		int PROBE_END_LINE_143 = 143;
		blockColumns = block_real_matrix_1_expr18_line_143;

        int PROBE_START_LINE_145 = 151;
		boolean p_copy_array_1037_line_145 = copyArray;
		int PROBE_END_LINE_145 = 151;
		if (p_copy_array_1037_line_145) {
            // allocate storage blocks, taking care of smaller ones at right and bottom
            blocks = new double[blockRows * blockColumns][];
        } else {
            int PROBE_START_LINE_150 = 150;
			double[][] p_block_data_1036_line_150 = blockData;
			int PROBE_END_LINE_150 = 150;
			// reference existing array
            blocks = p_block_data_1036_line_150;
        }

        int index = 0;
        for (int iBlock = 0; true; ++iBlock) {
            int PROBE_START_LINE_155 = 155;
			int v_i_block_1045_line_154 = iBlock;
			int f_block_rows_1040_line_154 = blockRows;
			boolean block_real_matrix_1_expr24_line_154 = v_i_block_1045_line_154 < f_block_rows_1040_line_154;
			if (!(block_real_matrix_1_expr24_line_154)) {
				break;
			}
			int v_i_block_1045_line_155 = iBlock;
			int block_real_matrix_1_expr26_line_155 = blockHeight(v_i_block_1045_line_155);
			int PROBE_END_LINE_155 = 155;
			final int iHeight = block_real_matrix_1_expr26_line_155;
            for (int jBlock = 0; true; ++jBlock, ++index) {
                int PROBE_START_LINE_157 = 160;
				int v_j_block_1047_line_156 = jBlock;
				int f_block_columns_1042_line_156 = blockColumns;
				boolean block_real_matrix_1_expr28_line_156 = v_j_block_1047_line_156 < f_block_columns_1042_line_156;
				if (!(block_real_matrix_1_expr28_line_156)) {
					break;
				}
				double[][] p_block_data_1036_line_157 = blockData;
				int v_index_1044_line_157 = index;
				double[] block_real_matrix_1_expr33_line_157 = p_block_data_1036_line_157[v_index_1044_line_157];
				int block_real_matrix_1_expr32_line_157 = block_real_matrix_1_expr33_line_157.length;
				int v_i_height_1046_line_157 = iHeight;
				int v_j_block_1047_line_157 = jBlock;
				int block_real_matrix_1_expr35_line_157 = blockWidth(v_j_block_1047_line_157);
				int block_real_matrix_1_expr34_line_157 = v_i_height_1046_line_157
						* block_real_matrix_1_expr35_line_157;
				boolean block_real_matrix_1_expr31_line_157 = block_real_matrix_1_expr32_line_157 != block_real_matrix_1_expr34_line_157;
				int PROBE_END_LINE_157 = 160;
				if (block_real_matrix_1_expr31_line_157) {
                    throw new DimensionMismatchException(blockData[index].length,
                                                         iHeight * blockWidth(jBlock));
                }
                int PROBE_START_LINE_161 = 163;
				boolean p_copy_array_1037_line_161 = copyArray;
				int PROBE_END_LINE_161 = 163;
				if (p_copy_array_1037_line_161) {
                    blocks[index] = blockData[index].clone();
                }
            }
        }
    }

    /**
     * Convert a data array from raw layout to blocks layout.
     * <p>
     * Raw layout is the straightforward layout where element at row i and
     * column j is in array element <code>rawData[i][j]</code>. Blocks layout
     * is the layout used in {@link BlockRealMatrix} instances, where the matrix
     * is split in square blocks (except at right and bottom side where blocks may
     * be rectangular to fit matrix size) and each block is stored in a flattened
     * one-dimensional array.
     * </p>
     * <p>
     * This method creates an array in blocks layout from an input array in raw layout.
     * It can be used to provide the array argument of the {@link
     * #BlockRealMatrix(int, int, double[][], boolean)} constructor.
     * </p>
     * @param rawData Data array in raw layout.
     * @return a new data array containing the same entries but in blocks layout.
     * @throws DimensionMismatchException if {@code rawData} is not rectangular.
     * @see #createBlocksLayout(int, int)
     * @see #BlockRealMatrix(int, int, double[][], boolean)
     */
    public static double[][] toBlocksLayout(final double[][] rawData) {
        int PROBE_START_LINE_190 = 190;
		double[][] p_raw_data_1048_line_190 = rawData;
		int q_length_14_line_190 = p_raw_data_1048_line_190.length;
		int PROBE_END_LINE_190 = 190;
		final int rows = q_length_14_line_190;
        int PROBE_START_LINE_191 = 191;
		double[][] p_raw_data_1048_line_191 = rawData;
		double[] block_real_matrix_1_expr37_line_191 = p_raw_data_1048_line_191[0];
		int block_real_matrix_1_expr36_line_191 = block_real_matrix_1_expr37_line_191.length;
		int PROBE_END_LINE_191 = 191;
		final int columns = block_real_matrix_1_expr36_line_191;
        int PROBE_START_LINE_192 = 192;
		int v_rows_1049_line_192 = rows;
		int f_block_size_1041_line_192 = BLOCK_SIZE;
		int block_real_matrix_1_expr41_line_192 = v_rows_1049_line_192 + f_block_size_1041_line_192;
		int block_real_matrix_1_expr40_line_192 = block_real_matrix_1_expr41_line_192 - 1;
		int block_real_matrix_1_expr39_line_192 = (block_real_matrix_1_expr40_line_192);
		int f_block_size_1041_line_192_v1 = BLOCK_SIZE;
		int block_real_matrix_1_expr38_line_192 = block_real_matrix_1_expr39_line_192 / f_block_size_1041_line_192_v1;
		int PROBE_END_LINE_192 = 192;
		final int blockRows = block_real_matrix_1_expr38_line_192;
        int PROBE_START_LINE_193 = 193;
		int v_columns_1050_line_193 = columns;
		int f_block_size_1041_line_193 = BLOCK_SIZE;
		int block_real_matrix_1_expr45_line_193 = v_columns_1050_line_193 + f_block_size_1041_line_193;
		int block_real_matrix_1_expr44_line_193 = block_real_matrix_1_expr45_line_193 - 1;
		int block_real_matrix_1_expr43_line_193 = (block_real_matrix_1_expr44_line_193);
		int f_block_size_1041_line_193_v1 = BLOCK_SIZE;
		int block_real_matrix_1_expr42_line_193 = block_real_matrix_1_expr43_line_193 / f_block_size_1041_line_193_v1;
		int PROBE_END_LINE_193 = 193;
		final int blockColumns = block_real_matrix_1_expr42_line_193;

        // safety checks
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_197 = 197;
			int v_i_1053_line_196 = i;
			double[][] p_raw_data_1048_line_196 = rawData;
			int q_length_15_line_196 = p_raw_data_1048_line_196.length;
			boolean block_real_matrix_1_expr47_line_196 = v_i_1053_line_196 < q_length_15_line_196;
			if (!(block_real_matrix_1_expr47_line_196)) {
				break;
			}
			double[][] p_raw_data_1048_line_197 = rawData;
			int v_i_1053_line_197 = i;
			double[] block_real_matrix_1_expr50_line_197 = p_raw_data_1048_line_197[v_i_1053_line_197];
			int block_real_matrix_1_expr49_line_197 = block_real_matrix_1_expr50_line_197.length;
			int PROBE_END_LINE_197 = 197;
			final int length = block_real_matrix_1_expr49_line_197;
            int PROBE_START_LINE_198 = 200;
			int v_length_1054_line_198 = length;
			int v_columns_1050_line_198 = columns;
			boolean block_real_matrix_1_expr51_line_198 = v_length_1054_line_198 != v_columns_1050_line_198;
			int PROBE_END_LINE_198 = 200;
			if (block_real_matrix_1_expr51_line_198) {
                throw new DimensionMismatchException(columns, length);
            }
        }

        int PROBE_START_LINE_204 = 204;
		int v_block_rows_1051_line_204 = blockRows;
		int v_block_columns_1052_line_204 = blockColumns;
		int block_real_matrix_1_expr53_line_204 = v_block_rows_1051_line_204 * v_block_columns_1052_line_204;
		int PROBE_END_LINE_204 = 204;
		// convert array
        final double[][] blocks = new double[block_real_matrix_1_expr53_line_204][];
        int blockIndex = 0;
        for (int iBlock = 0; true; ++iBlock) {
            int PROBE_START_LINE_207 = 207;
			int v_i_block_1057_line_206 = iBlock;
			int v_block_rows_1051_line_206 = blockRows;
			boolean block_real_matrix_1_expr55_line_206 = v_i_block_1057_line_206 < v_block_rows_1051_line_206;
			if (!(block_real_matrix_1_expr55_line_206)) {
				break;
			}
			int v_i_block_1057_line_207 = iBlock;
			int f_block_size_1041_line_207 = BLOCK_SIZE;
			int block_real_matrix_1_expr57_line_207 = v_i_block_1057_line_207 * f_block_size_1041_line_207;
			int PROBE_END_LINE_207 = 207;
			final int pStart = block_real_matrix_1_expr57_line_207;
            int PROBE_START_LINE_208 = 208;
			int v_p_start_1058_line_208 = pStart;
			int f_block_size_1041_line_208 = BLOCK_SIZE;
			int block_real_matrix_1_expr59_line_208 = v_p_start_1058_line_208 + f_block_size_1041_line_208;
			int v_rows_1049_line_208 = rows;
			int block_real_matrix_1_expr58_line_208 = FastMath.min(block_real_matrix_1_expr59_line_208,
					v_rows_1049_line_208);
			int PROBE_END_LINE_208 = 208;
			final int pEnd = block_real_matrix_1_expr58_line_208;
            int PROBE_START_LINE_209 = 209;
			int v_p_end_1059_line_209 = pEnd;
			int v_p_start_1058_line_209 = pStart;
			int block_real_matrix_1_expr60_line_209 = v_p_end_1059_line_209 - v_p_start_1058_line_209;
			int PROBE_END_LINE_209 = 209;
			final int iHeight = block_real_matrix_1_expr60_line_209;
            for (int jBlock = 0; true; ++jBlock) {
                int PROBE_START_LINE_211 = 211;
				int v_j_block_1061_line_210 = jBlock;
				int v_block_columns_1052_line_210 = blockColumns;
				boolean block_real_matrix_1_expr62_line_210 = v_j_block_1061_line_210 < v_block_columns_1052_line_210;
				if (!(block_real_matrix_1_expr62_line_210)) {
					break;
				}
				int v_j_block_1061_line_211 = jBlock;
				int f_block_size_1041_line_211 = BLOCK_SIZE;
				int block_real_matrix_1_expr64_line_211 = v_j_block_1061_line_211 * f_block_size_1041_line_211;
				int PROBE_END_LINE_211 = 211;
				final int qStart = block_real_matrix_1_expr64_line_211;
                int PROBE_START_LINE_212 = 212;
				int v_q_start_1062_line_212 = qStart;
				int f_block_size_1041_line_212 = BLOCK_SIZE;
				int block_real_matrix_1_expr66_line_212 = v_q_start_1062_line_212 + f_block_size_1041_line_212;
				int v_columns_1050_line_212 = columns;
				int block_real_matrix_1_expr65_line_212 = FastMath.min(block_real_matrix_1_expr66_line_212,
						v_columns_1050_line_212);
				int PROBE_END_LINE_212 = 212;
				final int qEnd = block_real_matrix_1_expr65_line_212;
                int PROBE_START_LINE_213 = 213;
				int v_q_end_1063_line_213 = qEnd;
				int v_q_start_1062_line_213 = qStart;
				int block_real_matrix_1_expr67_line_213 = v_q_end_1063_line_213 - v_q_start_1062_line_213;
				int PROBE_END_LINE_213 = 213;
				final int jWidth = block_real_matrix_1_expr67_line_213;

                int PROBE_START_LINE_216 = 216;
				int v_i_height_1060_line_216 = iHeight;
				int v_j_width_1064_line_216 = jWidth;
				int block_real_matrix_1_expr69_line_216 = v_i_height_1060_line_216 * v_j_width_1064_line_216;
				int PROBE_END_LINE_216 = 216;
				// allocate new block
                final double[] block = new double[block_real_matrix_1_expr69_line_216];
                int PROBE_START_LINE_217 = 217;
				double[][] v_blocks_1055_line_217 = blocks;
				int v_block_index_1056_line_217 = blockIndex;
				double[] v_block_1065_line_217 = block;
				int PROBE_END_LINE_217 = 217;
				v_blocks_1055_line_217[v_block_index_1056_line_217] = v_block_1065_line_217;

                // copy data
                int index = 0;
                int PROBE_START_LINE_220 = 220;
				boolean FOR_STMT_TOGGLE_LINE_221 = false;
				int PROBE_END_LINE_220 = 220;
				for (int p = 0; true;) {
                    int PROBE_START_LINE_222 = 222;
					if (!FOR_STMT_TOGGLE_LINE_221) {
						FOR_STMT_TOGGLE_LINE_221 = true;
						int v_p_start_1058_line_221 = pStart;
						p = v_p_start_1058_line_221;
					} else {
						if (FOR_STMT_TOGGLE_LINE_221) {
							++p;
						} else {
							FOR_STMT_TOGGLE_LINE_221 = true;
						}
					}
					int v_p_1067_line_221 = p;
					int v_p_end_1059_line_221 = pEnd;
					boolean block_real_matrix_1_expr73_line_221 = v_p_1067_line_221 < v_p_end_1059_line_221;
					if (!(block_real_matrix_1_expr73_line_221)) {
						break;
					}
					double[][] p_raw_data_1048_line_222 = rawData;
					int v_p_1067_line_222 = p;
					double[] block_real_matrix_1_expr76_line_222 = p_raw_data_1048_line_222[v_p_1067_line_222];
					int v_q_start_1062_line_222 = qStart;
					double[] v_block_1065_line_222 = block;
					int v_index_1066_line_222 = index;
					int v_j_width_1064_line_222 = jWidth;
					int PROBE_END_LINE_222 = 222;
					System.arraycopy(block_real_matrix_1_expr76_line_222, v_q_start_1062_line_222, v_block_1065_line_222, v_index_1066_line_222, v_j_width_1064_line_222);
                    int PROBE_START_LINE_223 = 223;
					int v_j_width_1064_line_223 = jWidth;
					int PROBE_END_LINE_223 = 223;
					index += v_j_width_1064_line_223;
                }
                ++blockIndex;
            }
        }

        int PROBE_START_LINE_229 = 229;
		double[][] v_blocks_1055_line_229 = blocks;
		int PROBE_END_LINE_229 = 229;
		return v_blocks_1055_line_229;
    }

    /**
     * Create a data array in blocks layout.
     * <p>
     * This method can be used to create the array argument of the {@link
     * #BlockRealMatrix(int, int, double[][], boolean)} constructor.
     * </p>
     * @param rows Number of rows in the new matrix.
     * @param columns Number of columns in the new matrix.
     * @return a new data array in blocks layout.
     * @see #toBlocksLayout(double[][])
     * @see #BlockRealMatrix(int, int, double[][], boolean)
     */
    public static double[][] createBlocksLayout(final int rows, final int columns) {
        final int blockRows = (rows    + BLOCK_SIZE - 1) / BLOCK_SIZE;
        final int blockColumns = (columns + BLOCK_SIZE - 1) / BLOCK_SIZE;

        final double[][] blocks = new double[blockRows * blockColumns][];
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
            final int iHeight = pEnd - pStart;
            for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                final int qStart = jBlock * BLOCK_SIZE;
                final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
                final int jWidth = qEnd - qStart;
                blocks[blockIndex] = new double[iHeight * jWidth];
                ++blockIndex;
            }
        }

        return blocks;
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix createMatrix(final int rowDimension, final int columnDimension) {
        return new BlockRealMatrix(rowDimension, columnDimension);
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix copy() {
        // create an empty matrix
        BlockRealMatrix copied = new BlockRealMatrix(rows, columns);

        // copy the blocks
        for (int i = 0; i < blocks.length; ++i) {
            System.arraycopy(blocks[i], 0, copied.blocks[i], 0, blocks[i].length);
        }

        return copied;
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix add(final RealMatrix m) {
        try {
            return add((BlockRealMatrix) m);
        } catch (ClassCastException cce) {
            // safety check
            MatrixUtils.checkAdditionCompatible(this, m);

            final BlockRealMatrix out = new BlockRealMatrix(rows, columns);

            // perform addition block-wise, to ensure good cache behavior
            int blockIndex = 0;
            for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {
                for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {

                    // perform addition on the current block
                    final double[] outBlock = out.blocks[blockIndex];
                    final double[] tBlock   = blocks[blockIndex];
                    final int pStart = iBlock * BLOCK_SIZE;
                    final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
                    final int qStart = jBlock * BLOCK_SIZE;
                    final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
                    int k = 0;
                    for (int p = pStart; p < pEnd; ++p) {
                        for (int q = qStart; q < qEnd; ++q) {
                            outBlock[k] = tBlock[k] + m.getEntry(p, q);
                            ++k;
                        }
                    }
                    // go to next block
                    ++blockIndex;
                }
            }

            return out;
        }
    }

    /**
     * Compute the sum of this matrix and {@code m}.
     *
     * @param m Matrix to be added.
     * @return {@code this} + m.
     * @throws MatrixDimensionMismatchException if {@code m} is not the same
     * size as this matrix.
     */
    public BlockRealMatrix add(final BlockRealMatrix m) {
        // safety check
        MatrixUtils.checkAdditionCompatible(this, m);

        final BlockRealMatrix out = new BlockRealMatrix(rows, columns);

        // perform addition block-wise, to ensure good cache behavior
        for (int blockIndex = 0; blockIndex < out.blocks.length; ++blockIndex) {
            final double[] outBlock = out.blocks[blockIndex];
            final double[] tBlock = blocks[blockIndex];
            final double[] mBlock = m.blocks[blockIndex];
            for (int k = 0; k < outBlock.length; ++k) {
                outBlock[k] = tBlock[k] + mBlock[k];
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix subtract(final RealMatrix m) {
        try {
            return subtract((BlockRealMatrix) m);
        } catch (ClassCastException cce) {
            // safety check
            MatrixUtils.checkSubtractionCompatible(this, m);

            final BlockRealMatrix out = new BlockRealMatrix(rows, columns);

            // perform subtraction block-wise, to ensure good cache behavior
            int blockIndex = 0;
            for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {
                for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {

                    // perform subtraction on the current block
                    final double[] outBlock = out.blocks[blockIndex];
                    final double[] tBlock = blocks[blockIndex];
                    final int pStart = iBlock * BLOCK_SIZE;
                    final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
                    final int qStart = jBlock * BLOCK_SIZE;
                    final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
                    int k = 0;
                    for (int p = pStart; p < pEnd; ++p) {
                        for (int q = qStart; q < qEnd; ++q) {
                            outBlock[k] = tBlock[k] - m.getEntry(p, q);
                            ++k;
                        }
                    }
                    // go to next block
                    ++blockIndex;
                }
            }

            return out;
        }
    }

    /**
     * Subtract {@code m} from this matrix.
     *
     * @param m Matrix to be subtracted.
     * @return {@code this} - m.
     * @throws MatrixDimensionMismatchException if {@code m} is not the
     * same size as this matrix.
     */
    public BlockRealMatrix subtract(final BlockRealMatrix m) {
        // safety check
        MatrixUtils.checkSubtractionCompatible(this, m);

        final BlockRealMatrix out = new BlockRealMatrix(rows, columns);

        // perform subtraction block-wise, to ensure good cache behavior
        for (int blockIndex = 0; blockIndex < out.blocks.length; ++blockIndex) {
            final double[] outBlock = out.blocks[blockIndex];
            final double[] tBlock = blocks[blockIndex];
            final double[] mBlock = m.blocks[blockIndex];
            for (int k = 0; k < outBlock.length; ++k) {
                outBlock[k] = tBlock[k] - mBlock[k];
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix scalarAdd(final double d) {

        final BlockRealMatrix out = new BlockRealMatrix(rows, columns);

        // perform subtraction block-wise, to ensure good cache behavior
        for (int blockIndex = 0; blockIndex < out.blocks.length; ++blockIndex) {
            final double[] outBlock = out.blocks[blockIndex];
            final double[] tBlock = blocks[blockIndex];
            for (int k = 0; k < outBlock.length; ++k) {
                outBlock[k] = tBlock[k] + d;
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public RealMatrix scalarMultiply(final double d) {
        final BlockRealMatrix out = new BlockRealMatrix(rows, columns);

        // perform subtraction block-wise, to ensure good cache behavior
        for (int blockIndex = 0; blockIndex < out.blocks.length; ++blockIndex) {
            final double[] outBlock = out.blocks[blockIndex];
            final double[] tBlock = blocks[blockIndex];
            for (int k = 0; k < outBlock.length; ++k) {
                outBlock[k] = tBlock[k] * d;
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix multiply(final RealMatrix m) {
        try {
            return multiply((BlockRealMatrix) m);
        } catch (ClassCastException cce) {
            // safety check
            MatrixUtils.checkMultiplicationCompatible(this, m);

            final BlockRealMatrix out = new BlockRealMatrix(rows, m.getColumnDimension());

            // perform multiplication block-wise, to ensure good cache behavior
            int blockIndex = 0;
            for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {
                final int pStart = iBlock * BLOCK_SIZE;
                final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);

                for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {
                    final int qStart = jBlock * BLOCK_SIZE;
                    final int qEnd = FastMath.min(qStart + BLOCK_SIZE, m.getColumnDimension());

                    // select current block
                    final double[] outBlock = out.blocks[blockIndex];

                    // perform multiplication on current block
                    for (int kBlock = 0; kBlock < blockColumns; ++kBlock) {
                        final int kWidth = blockWidth(kBlock);
                        final double[] tBlock = blocks[iBlock * blockColumns + kBlock];
                        final int rStart = kBlock * BLOCK_SIZE;
                        int k = 0;
                        for (int p = pStart; p < pEnd; ++p) {
                            final int lStart = (p - pStart) * kWidth;
                            final int lEnd = lStart + kWidth;
                            for (int q = qStart; q < qEnd; ++q) {
                                double sum = 0;
                                int r = rStart;
                                for (int l = lStart; l < lEnd; ++l) {
                                    sum += tBlock[l] * m.getEntry(r, q);
                                    ++r;
                                }
                                outBlock[k] += sum;
                                ++k;
                            }
                        }
                    }
                    // go to next block
                    ++blockIndex;
                }
            }

            return out;
        }
    }

    /**
     * Returns the result of postmultiplying this by {@code m}.
     *
     * @param m Matrix to postmultiply by.
     * @return {@code this} * m.
     * @throws MatrixDimensionMismatchException if the matrices are not
     * compatible.
     */
    public BlockRealMatrix multiply(BlockRealMatrix m) {
        // safety check
        MatrixUtils.checkMultiplicationCompatible(this, m);

        final BlockRealMatrix out = new BlockRealMatrix(rows, m.columns);

        // perform multiplication block-wise, to ensure good cache behavior
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {

            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);

            for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {
                final int jWidth = out.blockWidth(jBlock);
                final int jWidth2 = jWidth  + jWidth;
                final int jWidth3 = jWidth2 + jWidth;
                final int jWidth4 = jWidth3 + jWidth;

                // select current block
                final double[] outBlock = out.blocks[blockIndex];

                // perform multiplication on current block
                for (int kBlock = 0; kBlock < blockColumns; ++kBlock) {
                    final int kWidth = blockWidth(kBlock);
                    final double[] tBlock = blocks[iBlock * blockColumns + kBlock];
                    final double[] mBlock = m.blocks[kBlock * m.blockColumns + jBlock];
                    int k = 0;
                    for (int p = pStart; p < pEnd; ++p) {
                        final int lStart = (p - pStart) * kWidth;
                        final int lEnd = lStart + kWidth;
                        for (int nStart = 0; nStart < jWidth; ++nStart) {
                            double sum = 0;
                            int l = lStart;
                            int n = nStart;
                            while (l < lEnd - 3) {
                                sum += tBlock[l] * mBlock[n] +
                                       tBlock[l + 1] * mBlock[n + jWidth] +
                                       tBlock[l + 2] * mBlock[n + jWidth2] +
                                       tBlock[l + 3] * mBlock[n + jWidth3];
                                l += 4;
                                n += jWidth4;
                            }
                            while (l < lEnd) {
                                sum += tBlock[l++] * mBlock[n];
                                n += jWidth;
                            }
                            outBlock[k] += sum;
                            ++k;
                        }
                    }
                }
                // go to next block
                ++blockIndex;
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public double[][] getData() {
        final double[][] data = new double[getRowDimension()][getColumnDimension()];
        final int lastColumns = columns - (blockColumns - 1) * BLOCK_SIZE;

        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
            int regularPos = 0;
            int lastPos = 0;
            for (int p = pStart; p < pEnd; ++p) {
                final double[] dataP = data[p];
                int blockIndex = iBlock * blockColumns;
                int dataPos = 0;
                for (int jBlock = 0; jBlock < blockColumns - 1; ++jBlock) {
                    System.arraycopy(blocks[blockIndex++], regularPos, dataP, dataPos, BLOCK_SIZE);
                    dataPos += BLOCK_SIZE;
                }
                System.arraycopy(blocks[blockIndex], lastPos, dataP, dataPos, lastColumns);
                regularPos += BLOCK_SIZE;
                lastPos    += lastColumns;
            }
        }

        return data;
    }

    /** {@inheritDoc} */
    @Override
    public double getNorm() {
        final double[] colSums = new double[BLOCK_SIZE];
        double maxColSum = 0;
        for (int jBlock = 0; jBlock < blockColumns; jBlock++) {
            final int jWidth = blockWidth(jBlock);
            Arrays.fill(colSums, 0, jWidth, 0.0);
            for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
                final int iHeight = blockHeight(iBlock);
                final double[] block = blocks[iBlock * blockColumns + jBlock];
                for (int j = 0; j < jWidth; ++j) {
                    double sum = 0;
                    for (int i = 0; i < iHeight; ++i) {
                        sum += FastMath.abs(block[i * jWidth + j]);
                    }
                    colSums[j] += sum;
                }
            }
            for (int j = 0; j < jWidth; ++j) {
                maxColSum = FastMath.max(maxColSum, colSums[j]);
            }
        }
        return maxColSum;
    }

    /** {@inheritDoc} */
    @Override
    public double getFrobeniusNorm() {
        double sum2 = 0;
        for (int blockIndex = 0; blockIndex < blocks.length; ++blockIndex) {
            for (final double entry : blocks[blockIndex]) {
                sum2 += entry * entry;
            }
        }
        return FastMath.sqrt(sum2);
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix getSubMatrix(final int startRow, final int endRow,
                                        final int startColumn, final int endColumn) {
        // safety checks
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);

        // create the output matrix
        final BlockRealMatrix out =
            new BlockRealMatrix(endRow - startRow + 1, endColumn - startColumn + 1);

        // compute blocks shifts
        final int blockStartRow = startRow / BLOCK_SIZE;
        final int rowsShift = startRow % BLOCK_SIZE;
        final int blockStartColumn = startColumn / BLOCK_SIZE;
        final int columnsShift = startColumn % BLOCK_SIZE;

        // perform extraction block-wise, to ensure good cache behavior
        int pBlock = blockStartRow;
        for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {
            final int iHeight = out.blockHeight(iBlock);
            int qBlock = blockStartColumn;
            for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {
                final int jWidth = out.blockWidth(jBlock);

                // handle one block of the output matrix
                final int outIndex = iBlock * out.blockColumns + jBlock;
                final double[] outBlock = out.blocks[outIndex];
                final int index = pBlock * blockColumns + qBlock;
                final int width = blockWidth(qBlock);

                final int heightExcess = iHeight + rowsShift - BLOCK_SIZE;
                final int widthExcess = jWidth + columnsShift - BLOCK_SIZE;
                if (heightExcess > 0) {
                    // the submatrix block spans on two blocks rows from the original matrix
                    if (widthExcess > 0) {
                        // the submatrix block spans on two blocks columns from the original matrix
                        final int width2 = blockWidth(qBlock + 1);
                        copyBlockPart(blocks[index], width,
                                      rowsShift, BLOCK_SIZE,
                                      columnsShift, BLOCK_SIZE,
                                      outBlock, jWidth, 0, 0);
                        copyBlockPart(blocks[index + 1], width2,
                                      rowsShift, BLOCK_SIZE,
                                      0, widthExcess,
                                      outBlock, jWidth, 0, jWidth - widthExcess);
                        copyBlockPart(blocks[index + blockColumns], width,
                                      0, heightExcess,
                                      columnsShift, BLOCK_SIZE,
                                      outBlock, jWidth, iHeight - heightExcess, 0);
                        copyBlockPart(blocks[index + blockColumns + 1], width2,
                                      0, heightExcess,
                                      0, widthExcess,
                                      outBlock, jWidth, iHeight - heightExcess, jWidth - widthExcess);
                    } else {
                        // the submatrix block spans on one block column from the original matrix
                        copyBlockPart(blocks[index], width,
                                      rowsShift, BLOCK_SIZE,
                                      columnsShift, jWidth + columnsShift,
                                      outBlock, jWidth, 0, 0);
                        copyBlockPart(blocks[index + blockColumns], width,
                                      0, heightExcess,
                                      columnsShift, jWidth + columnsShift,
                                      outBlock, jWidth, iHeight - heightExcess, 0);
                    }
                } else {
                    // the submatrix block spans on one block row from the original matrix
                    if (widthExcess > 0) {
                        // the submatrix block spans on two blocks columns from the original matrix
                        final int width2 = blockWidth(qBlock + 1);
                        copyBlockPart(blocks[index], width,
                                      rowsShift, iHeight + rowsShift,
                                      columnsShift, BLOCK_SIZE,
                                      outBlock, jWidth, 0, 0);
                        copyBlockPart(blocks[index + 1], width2,
                                      rowsShift, iHeight + rowsShift,
                                      0, widthExcess,
                                      outBlock, jWidth, 0, jWidth - widthExcess);
                    } else {
                        // the submatrix block spans on one block column from the original matrix
                        copyBlockPart(blocks[index], width,
                                      rowsShift, iHeight + rowsShift,
                                      columnsShift, jWidth + columnsShift,
                                      outBlock, jWidth, 0, 0);
                    }
               }
                ++qBlock;
            }
            ++pBlock;
        }

        return out;
    }

    /**
     * Copy a part of a block into another one
     * <p>This method can be called only when the specified part fits in both
     * blocks, no verification is done here.</p>
     * @param srcBlock source block
     * @param srcWidth source block width ({@link #BLOCK_SIZE} or smaller)
     * @param srcStartRow start row in the source block
     * @param srcEndRow end row (exclusive) in the source block
     * @param srcStartColumn start column in the source block
     * @param srcEndColumn end column (exclusive) in the source block
     * @param dstBlock destination block
     * @param dstWidth destination block width ({@link #BLOCK_SIZE} or smaller)
     * @param dstStartRow start row in the destination block
     * @param dstStartColumn start column in the destination block
     */
    private void copyBlockPart(final double[] srcBlock, final int srcWidth,
                               final int srcStartRow, final int srcEndRow,
                               final int srcStartColumn, final int srcEndColumn,
                               final double[] dstBlock, final int dstWidth,
                               final int dstStartRow, final int dstStartColumn) {
        final int length = srcEndColumn - srcStartColumn;
        int srcPos = srcStartRow * srcWidth + srcStartColumn;
        int dstPos = dstStartRow * dstWidth + dstStartColumn;
        for (int srcRow = srcStartRow; srcRow < srcEndRow; ++srcRow) {
            System.arraycopy(srcBlock, srcPos, dstBlock, dstPos, length);
            srcPos += srcWidth;
            dstPos += dstWidth;
        }
    }

    /** {@inheritDoc} */
    @Override
    public void setSubMatrix(final double[][] subMatrix, final int row, final int column) {
        int PROBE_START_LINE_769 = 769;
		double[][] p_sub_matrix_1094_line_769 = subMatrix;
		double[] block_real_matrix_1_expr80_line_769 = p_sub_matrix_1094_line_769[0];
		int block_real_matrix_1_expr79_line_769 = block_real_matrix_1_expr80_line_769.length;
		int PROBE_END_LINE_769 = 769;
		// safety checks
        final int refLength = block_real_matrix_1_expr79_line_769;
        int PROBE_START_LINE_770 = 772;
		int v_ref_length_1097_line_770 = refLength;
		boolean block_real_matrix_1_expr81_line_770 = v_ref_length_1097_line_770 == 0;
		int PROBE_END_LINE_770 = 772;
		if (block_real_matrix_1_expr81_line_770) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        int PROBE_START_LINE_773 = 773;
		int p_row_1095_line_773 = row;
		double[][] p_sub_matrix_1094_line_773 = subMatrix;
		int q_length_15_line_773 = p_sub_matrix_1094_line_773.length;
		int block_real_matrix_1_expr83_line_773 = p_row_1095_line_773 + q_length_15_line_773;
		int block_real_matrix_1_expr82_line_773 = block_real_matrix_1_expr83_line_773 - 1;
		int PROBE_END_LINE_773 = 773;
		final int endRow = block_real_matrix_1_expr82_line_773;
        int PROBE_START_LINE_774 = 774;
		int p_column_1096_line_774 = column;
		int v_ref_length_1097_line_774 = refLength;
		int block_real_matrix_1_expr85_line_774 = p_column_1096_line_774 + v_ref_length_1097_line_774;
		int block_real_matrix_1_expr84_line_774 = block_real_matrix_1_expr85_line_774 - 1;
		int PROBE_END_LINE_774 = 774;
		final int endColumn = block_real_matrix_1_expr84_line_774;
        int PROBE_START_LINE_775 = 775;
		int p_row_1095_line_775 = row;
		int v_end_row_1098_line_775 = endRow;
		int p_column_1096_line_775 = column;
		int v_end_column_1099_line_775 = endColumn;
		int PROBE_END_LINE_775 = 775;
		MatrixUtils.checkSubMatrixIndex(this, p_row_1095_line_775, v_end_row_1098_line_775, p_column_1096_line_775, v_end_column_1099_line_775);
        int PROBE_START_LINE_776 = 780;
		double[][] p_sub_matrix_1094_line_776 = subMatrix;
		int PROBE_END_LINE_776 = 780;
		for (final double[] subRow : p_sub_matrix_1094_line_776) {
            int PROBE_START_LINE_777 = 779;
			double[] v_sub_row_1100_line_777 = subRow;
			int q_length_16_line_777 = v_sub_row_1100_line_777.length;
			int v_ref_length_1097_line_777 = refLength;
			boolean block_real_matrix_1_expr88_line_777 = q_length_16_line_777 != v_ref_length_1097_line_777;
			int PROBE_END_LINE_777 = 779;
			if (block_real_matrix_1_expr88_line_777) {
                throw new DimensionMismatchException(refLength, subRow.length);
            }
        }

        int PROBE_START_LINE_783 = 783;
		int p_row_1095_line_783 = row;
		int f_block_size_1041_line_783 = BLOCK_SIZE;
		int block_real_matrix_1_expr89_line_783 = p_row_1095_line_783 / f_block_size_1041_line_783;
		int PROBE_END_LINE_783 = 783;
		// compute blocks bounds
        final int blockStartRow = block_real_matrix_1_expr89_line_783;
        int PROBE_START_LINE_784 = 784;
		int v_end_row_1098_line_784 = endRow;
		int f_block_size_1041_line_784 = BLOCK_SIZE;
		int block_real_matrix_1_expr92_line_784 = v_end_row_1098_line_784 + f_block_size_1041_line_784;
		int block_real_matrix_1_expr91_line_784 = (block_real_matrix_1_expr92_line_784);
		int f_block_size_1041_line_784_v1 = BLOCK_SIZE;
		int block_real_matrix_1_expr90_line_784 = block_real_matrix_1_expr91_line_784 / f_block_size_1041_line_784_v1;
		int PROBE_END_LINE_784 = 784;
		final int blockEndRow = block_real_matrix_1_expr90_line_784;
        int PROBE_START_LINE_785 = 785;
		int p_column_1096_line_785 = column;
		int f_block_size_1041_line_785 = BLOCK_SIZE;
		int block_real_matrix_1_expr93_line_785 = p_column_1096_line_785 / f_block_size_1041_line_785;
		int PROBE_END_LINE_785 = 785;
		final int blockStartColumn = block_real_matrix_1_expr93_line_785;
        int PROBE_START_LINE_786 = 786;
		int v_end_column_1099_line_786 = endColumn;
		int f_block_size_1041_line_786 = BLOCK_SIZE;
		int block_real_matrix_1_expr96_line_786 = v_end_column_1099_line_786 + f_block_size_1041_line_786;
		int block_real_matrix_1_expr95_line_786 = (block_real_matrix_1_expr96_line_786);
		int f_block_size_1041_line_786_v1 = BLOCK_SIZE;
		int block_real_matrix_1_expr94_line_786 = block_real_matrix_1_expr95_line_786 / f_block_size_1041_line_786_v1;
		int PROBE_END_LINE_786 = 786;
		final int blockEndColumn = block_real_matrix_1_expr94_line_786;

        int PROBE_START_LINE_788 = 788;
		boolean FOR_STMT_TOGGLE_LINE_789 = false;
		int PROBE_END_LINE_788 = 788;
		// perform copy block-wise, to ensure good cache behavior
        for (int iBlock = 0; true;) {
            int PROBE_START_LINE_790 = 790;
			if (!FOR_STMT_TOGGLE_LINE_789) {
				FOR_STMT_TOGGLE_LINE_789 = true;
				int v_block_start_row_1101_line_789 = blockStartRow;
				iBlock = v_block_start_row_1101_line_789;
			} else {
				if (FOR_STMT_TOGGLE_LINE_789) {
					++iBlock;
				} else {
					FOR_STMT_TOGGLE_LINE_789 = true;
				}
			}
			int v_i_block_1105_line_789 = iBlock;
			int v_block_end_row_1102_line_789 = blockEndRow;
			boolean block_real_matrix_1_expr98_line_789 = v_i_block_1105_line_789 < v_block_end_row_1102_line_789;
			if (!(block_real_matrix_1_expr98_line_789)) {
				break;
			}
			int v_i_block_1105_line_790 = iBlock;
			int block_real_matrix_1_expr100_line_790 = blockHeight(v_i_block_1105_line_790);
			int PROBE_END_LINE_790 = 790;
			final int iHeight = block_real_matrix_1_expr100_line_790;
            int PROBE_START_LINE_791 = 791;
			int v_i_block_1105_line_791 = iBlock;
			int f_block_size_1041_line_791 = BLOCK_SIZE;
			int block_real_matrix_1_expr101_line_791 = v_i_block_1105_line_791 * f_block_size_1041_line_791;
			int PROBE_END_LINE_791 = 791;
			final int firstRow = block_real_matrix_1_expr101_line_791;
            int PROBE_START_LINE_792 = 792;
			int p_row_1095_line_792 = row;
			int v_first_row_1107_line_792 = firstRow;
			int block_real_matrix_1_expr102_line_792 = FastMath.max(p_row_1095_line_792, v_first_row_1107_line_792);
			int PROBE_END_LINE_792 = 792;
			final int iStart = block_real_matrix_1_expr102_line_792;
            int PROBE_START_LINE_793 = 793;
			int v_end_row_1098_line_793 = endRow;
			int block_real_matrix_1_expr104_line_793 = v_end_row_1098_line_793 + 1;
			int v_first_row_1107_line_793 = firstRow;
			int v_i_height_1106_line_793 = iHeight;
			int block_real_matrix_1_expr105_line_793 = v_first_row_1107_line_793 + v_i_height_1106_line_793;
			int block_real_matrix_1_expr103_line_793 = FastMath.min(block_real_matrix_1_expr104_line_793,
					block_real_matrix_1_expr105_line_793);
			int PROBE_END_LINE_793 = 793;
			final int iEnd = block_real_matrix_1_expr103_line_793;

            int PROBE_START_LINE_794 = 794;
			boolean FOR_STMT_TOGGLE_LINE_795 = false;
			int PROBE_END_LINE_794 = 794;
			for (int jBlock = 0; true;) {
                int PROBE_START_LINE_796 = 796;
				if (!FOR_STMT_TOGGLE_LINE_795) {
					FOR_STMT_TOGGLE_LINE_795 = true;
					int v_block_start_column_1103_line_795 = blockStartColumn;
					jBlock = v_block_start_column_1103_line_795;
				} else {
					if (FOR_STMT_TOGGLE_LINE_795) {
						++jBlock;
					} else {
						FOR_STMT_TOGGLE_LINE_795 = true;
					}
				}
				int v_j_block_1110_line_795 = jBlock;
				int v_block_end_column_1104_line_795 = blockEndColumn;
				boolean block_real_matrix_1_expr107_line_795 = v_j_block_1110_line_795 < v_block_end_column_1104_line_795;
				if (!(block_real_matrix_1_expr107_line_795)) {
					break;
				}
				int v_j_block_1110_line_796 = jBlock;
				int block_real_matrix_1_expr109_line_796 = blockWidth(v_j_block_1110_line_796);
				int PROBE_END_LINE_796 = 796;
				final int jWidth = block_real_matrix_1_expr109_line_796;
                int PROBE_START_LINE_797 = 797;
				int v_j_block_1110_line_797 = jBlock;
				int f_block_size_1041_line_797 = BLOCK_SIZE;
				int block_real_matrix_1_expr110_line_797 = v_j_block_1110_line_797 * f_block_size_1041_line_797;
				int PROBE_END_LINE_797 = 797;
				final int firstColumn = block_real_matrix_1_expr110_line_797;
                int PROBE_START_LINE_798 = 798;
				int p_column_1096_line_798 = column;
				int v_first_column_1112_line_798 = firstColumn;
				int block_real_matrix_1_expr111_line_798 = FastMath.max(p_column_1096_line_798,
						v_first_column_1112_line_798);
				int PROBE_END_LINE_798 = 798;
				final int jStart = block_real_matrix_1_expr111_line_798;
                int PROBE_START_LINE_799 = 799;
				int v_end_column_1099_line_799 = endColumn;
				int block_real_matrix_1_expr113_line_799 = v_end_column_1099_line_799 + 1;
				int v_first_column_1112_line_799 = firstColumn;
				int v_j_width_1111_line_799 = jWidth;
				int block_real_matrix_1_expr114_line_799 = v_first_column_1112_line_799 + v_j_width_1111_line_799;
				int block_real_matrix_1_expr112_line_799 = FastMath.min(block_real_matrix_1_expr113_line_799,
						block_real_matrix_1_expr114_line_799);
				int PROBE_END_LINE_799 = 799;
				final int jEnd = block_real_matrix_1_expr112_line_799;
                int PROBE_START_LINE_800 = 800;
				int v_j_end_1114_line_800 = jEnd;
				int v_j_start_1113_line_800 = jStart;
				int block_real_matrix_1_expr115_line_800 = v_j_end_1114_line_800 - v_j_start_1113_line_800;
				int PROBE_END_LINE_800 = 800;
				final int jLength = block_real_matrix_1_expr115_line_800;

                int PROBE_START_LINE_803 = 803;
				double[][] f_blocks_1043_line_803 = blocks;
				int v_i_block_1105_line_803 = iBlock;
				int f_block_columns_1042_line_803 = blockColumns;
				int block_real_matrix_1_expr118_line_803 = v_i_block_1105_line_803 * f_block_columns_1042_line_803;
				int v_j_block_1110_line_803 = jBlock;
				int block_real_matrix_1_expr117_line_803 = block_real_matrix_1_expr118_line_803
						+ v_j_block_1110_line_803;
				double[] block_real_matrix_1_expr116_line_803 = f_blocks_1043_line_803[block_real_matrix_1_expr117_line_803];
				// handle one block, row by row
                final double[] block = block_real_matrix_1_expr116_line_803;
                boolean FOR_STMT_TOGGLE_LINE_804 = false;
				int PROBE_END_LINE_803 = 803;
				for (int i = 0; true;) {
                    int PROBE_START_LINE_805 = 807;
					if (!FOR_STMT_TOGGLE_LINE_804) {
						FOR_STMT_TOGGLE_LINE_804 = true;
						int v_i_start_1108_line_804 = iStart;
						i = v_i_start_1108_line_804;
					} else {
						if (FOR_STMT_TOGGLE_LINE_804) {
							++i;
						} else {
							FOR_STMT_TOGGLE_LINE_804 = true;
						}
					}
					int v_i_1117_line_804 = i;
					int v_i_end_1109_line_804 = iEnd;
					boolean block_real_matrix_1_expr120_line_804 = v_i_1117_line_804 < v_i_end_1109_line_804;
					if (!(block_real_matrix_1_expr120_line_804)) {
						break;
					}
					double[][] p_sub_matrix_1094_line_805 = subMatrix;
					int v_i_1117_line_805 = i;
					int p_row_1095_line_805 = row;
					int block_real_matrix_1_expr126_line_805 = v_i_1117_line_805 - p_row_1095_line_805;
					double[] block_real_matrix_1_expr123_line_805 = p_sub_matrix_1094_line_805[block_real_matrix_1_expr126_line_805];
					int v_j_start_1113_line_805 = jStart;
					int p_column_1096_line_805 = column;
					int block_real_matrix_1_expr124_line_805 = v_j_start_1113_line_805 - p_column_1096_line_805;
					int PROBE_END_LINE_805 = 807;
					System.arraycopy(block_real_matrix_1_expr123_line_805, block_real_matrix_1_expr124_line_805,
                                     block, (i - firstRow) * jWidth + (jStart - firstColumn),
                                     jLength);
                }

            }
        }
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix getRowMatrix(final int row) {
        MatrixUtils.checkRowIndex(this, row);
        final BlockRealMatrix out = new BlockRealMatrix(1, columns);

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock = row / BLOCK_SIZE;
        final int iRow = row - iBlock * BLOCK_SIZE;
        int outBlockIndex = 0;
        int outIndex = 0;
        double[] outBlock = out.blocks[outBlockIndex];
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth = blockWidth(jBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            final int available = outBlock.length - outIndex;
            if (jWidth > available) {
                System.arraycopy(block, iRow * jWidth, outBlock, outIndex, available);
                outBlock = out.blocks[++outBlockIndex];
                System.arraycopy(block, iRow * jWidth, outBlock, 0, jWidth - available);
                outIndex = jWidth - available;
            } else {
                System.arraycopy(block, iRow * jWidth, outBlock, outIndex, jWidth);
                outIndex += jWidth;
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public void setRowMatrix(final int row, final RealMatrix matrix) {
        try {
            setRowMatrix(row, (BlockRealMatrix) matrix);
        } catch (ClassCastException cce) {
            super.setRowMatrix(row, matrix);
        }
    }

    /**
     * Sets the entries in row number <code>row</code>
     * as a row matrix.  Row indices start at 0.
     *
     * @param row the row to be set
     * @param matrix row matrix (must have one row and the same number of columns
     * as the instance)
     * @throws org.apache.commons.math.exception.OutOfRangeException
     * if the specified row index is invalid.
     * @throws MatrixDimensionMismatchException if the matrix dimensions do
     * not match one instance row.
     */
    public void setRowMatrix(final int row, final BlockRealMatrix matrix) {
        MatrixUtils.checkRowIndex(this, row);
        final int nCols = getColumnDimension();
        if ((matrix.getRowDimension() != 1) ||
            (matrix.getColumnDimension() != nCols)) {
            throw new MatrixDimensionMismatchException(matrix.getRowDimension(),
                                                       matrix.getColumnDimension(),
                                                       1, nCols);
        }

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock = row / BLOCK_SIZE;
        final int iRow = row - iBlock * BLOCK_SIZE;
        int mBlockIndex = 0;
        int mIndex = 0;
        double[] mBlock = matrix.blocks[mBlockIndex];
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth = blockWidth(jBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            final int available  = mBlock.length - mIndex;
            if (jWidth > available) {
                System.arraycopy(mBlock, mIndex, block, iRow * jWidth, available);
                mBlock = matrix.blocks[++mBlockIndex];
                System.arraycopy(mBlock, 0, block, iRow * jWidth, jWidth - available);
                mIndex = jWidth - available;
            } else {
                System.arraycopy(mBlock, mIndex, block, iRow * jWidth, jWidth);
                mIndex += jWidth;
           }
        }
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix getColumnMatrix(final int column) {
        MatrixUtils.checkColumnIndex(this, column);
        final BlockRealMatrix out = new BlockRealMatrix(rows, 1);

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth = blockWidth(jBlock);
        int outBlockIndex = 0;
        int outIndex = 0;
        double[] outBlock = out.blocks[outBlockIndex];
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            for (int i = 0; i < iHeight; ++i) {
                if (outIndex >= outBlock.length) {
                    outBlock = out.blocks[++outBlockIndex];
                    outIndex = 0;
                }
                outBlock[outIndex++] = block[i * jWidth + jColumn];
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public void setColumnMatrix(final int column, final RealMatrix matrix) {
        try {
            setColumnMatrix(column, (BlockRealMatrix) matrix);
        } catch (ClassCastException cce) {
            super.setColumnMatrix(column, matrix);
        }
    }

    /**
     * Sets the entries in column number <code>column</code>
     * as a column matrix.  Column indices start at 0.
     *
     * @param column the column to be set
     * @param matrix column matrix (must have one column and the same number of rows
     * as the instance)
     * @throws org.apache.commons.math.exception.OutOfRangeException
     * if the specified column index is invalid.
     * @throws MatrixDimensionMismatchException if the matrix dimensions do
     * not match one instance column.
     */
    void setColumnMatrix(final int column, final BlockRealMatrix matrix) {
        MatrixUtils.checkColumnIndex(this, column);
        final int nRows = getRowDimension();
        if ((matrix.getRowDimension() != nRows) ||
            (matrix.getColumnDimension() != 1)) {
            throw new MatrixDimensionMismatchException(matrix.getRowDimension(),
                                                       matrix.getColumnDimension(),
                                                       nRows, 1);
        }

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth = blockWidth(jBlock);
        int mBlockIndex = 0;
        int mIndex = 0;
        double[] mBlock = matrix.blocks[mBlockIndex];
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            for (int i = 0; i < iHeight; ++i) {
                if (mIndex >= mBlock.length) {
                    mBlock = matrix.blocks[++mBlockIndex];
                    mIndex = 0;
                }
                block[i * jWidth + jColumn] = mBlock[mIndex++];
            }
        }
    }

    /** {@inheritDoc} */
    @Override
    public RealVector getRowVector(final int row) {
        MatrixUtils.checkRowIndex(this, row);
        final double[] outData = new double[columns];

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock = row / BLOCK_SIZE;
        final int iRow = row - iBlock * BLOCK_SIZE;
        int outIndex = 0;
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth = blockWidth(jBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            System.arraycopy(block, iRow * jWidth, outData, outIndex, jWidth);
            outIndex += jWidth;
        }

        return new ArrayRealVector(outData, false);
    }

    /** {@inheritDoc} */
    @Override
    public void setRowVector(final int row, final RealVector vector) {
        try {
            setRow(row, ((ArrayRealVector) vector).getDataRef());
        } catch (ClassCastException cce) {
            super.setRowVector(row, vector);
        }
    }

    /** {@inheritDoc} */
    @Override
    public RealVector getColumnVector(final int column) {
        MatrixUtils.checkColumnIndex(this, column);
        final double[] outData = new double[rows];

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth = blockWidth(jBlock);
        int outIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            for (int i = 0; i < iHeight; ++i) {
                outData[outIndex++] = block[i * jWidth + jColumn];
            }
        }

        return new ArrayRealVector(outData, false);
    }

    /** {@inheritDoc} */
    @Override
    public void setColumnVector(final int column, final RealVector vector) {
        try {
            setColumn(column, ((ArrayRealVector) vector).getDataRef());
        } catch (ClassCastException cce) {
            super.setColumnVector(column, vector);
        }
    }

    /** {@inheritDoc} */
    @Override
    public double[] getRow(final int row) {
        MatrixUtils.checkRowIndex(this, row);
        final double[] out = new double[columns];

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock = row / BLOCK_SIZE;
        final int iRow = row - iBlock * BLOCK_SIZE;
        int outIndex = 0;
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth     = blockWidth(jBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            System.arraycopy(block, iRow * jWidth, out, outIndex, jWidth);
            outIndex += jWidth;
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public void setRow(final int row, final double[] array) {
        MatrixUtils.checkRowIndex(this, row);
        final int nCols = getColumnDimension();
        if (array.length != nCols) {
            throw new MatrixDimensionMismatchException(1, array.length, 1, nCols);
        }

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock = row / BLOCK_SIZE;
        final int iRow = row - iBlock * BLOCK_SIZE;
        int outIndex = 0;
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth     = blockWidth(jBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            System.arraycopy(array, outIndex, block, iRow * jWidth, jWidth);
            outIndex += jWidth;
        }
    }

    /** {@inheritDoc} */
    @Override
    public double[] getColumn(final int column) {
        MatrixUtils.checkColumnIndex(this, column);
        final double[] out = new double[rows];

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock  = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth  = blockWidth(jBlock);
        int outIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            for (int i = 0; i < iHeight; ++i) {
                out[outIndex++] = block[i * jWidth + jColumn];
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public void setColumn(final int column, final double[] array) {
        MatrixUtils.checkColumnIndex(this, column);
        final int nRows = getRowDimension();
        if (array.length != nRows) {
            throw new MatrixDimensionMismatchException(array.length, 1, nRows, 1);
        }

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock  = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth = blockWidth(jBlock);
        int outIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final double[] block = blocks[iBlock * blockColumns + jBlock];
            for (int i = 0; i < iHeight; ++i) {
                block[i * jWidth + jColumn] = array[outIndex++];
            }
        }
    }

    /** {@inheritDoc} */
    @Override
    public double getEntry(final int row, final int column) {
        int PROBE_START_LINE_1129 = 1129;
		int p_row_1140_line_1129 = row;
		int p_column_1141_line_1129 = column;
		int PROBE_END_LINE_1129 = 1129;
		MatrixUtils.checkMatrixIndex(this, p_row_1140_line_1129, p_column_1141_line_1129);
        int PROBE_START_LINE_1130 = 1130;
		int p_row_1140_line_1130 = row;
		int f_block_size_1041_line_1130 = BLOCK_SIZE;
		int block_real_matrix_1_expr129_line_1130 = p_row_1140_line_1130 / f_block_size_1041_line_1130;
		int PROBE_END_LINE_1130 = 1130;
		final int iBlock = block_real_matrix_1_expr129_line_1130;
        int PROBE_START_LINE_1131 = 1131;
		int p_column_1141_line_1131 = column;
		int f_block_size_1041_line_1131 = BLOCK_SIZE;
		int block_real_matrix_1_expr130_line_1131 = p_column_1141_line_1131 / f_block_size_1041_line_1131;
		int PROBE_END_LINE_1131 = 1131;
		final int jBlock = block_real_matrix_1_expr130_line_1131;
        int PROBE_START_LINE_1132 = 1133;
		int p_row_1140_line_1132 = row;
		int v_i_block_1142_line_1132 = iBlock;
		int f_block_size_1041_line_1132 = BLOCK_SIZE;
		int block_real_matrix_1_expr135_line_1132 = v_i_block_1142_line_1132 * f_block_size_1041_line_1132;
		int block_real_matrix_1_expr134_line_1132 = p_row_1140_line_1132 - block_real_matrix_1_expr135_line_1132;
		int block_real_matrix_1_expr133_line_1132 = (block_real_matrix_1_expr134_line_1132);
		int v_j_block_1143_line_1132 = jBlock;
		int block_real_matrix_1_expr136_line_1132 = blockWidth(v_j_block_1143_line_1132);
		int block_real_matrix_1_expr132_line_1132 = block_real_matrix_1_expr133_line_1132
				* block_real_matrix_1_expr136_line_1132;
		int block_real_matrix_1_expr131_line_1132 = block_real_matrix_1_expr132_line_1132
				+ (column - jBlock * BLOCK_SIZE);
		int PROBE_END_LINE_1132 = 1133;
		final int k = block_real_matrix_1_expr131_line_1132;
        int PROBE_START_LINE_1134 = 1134;
		double[][] f_blocks_1043_line_1134 = blocks;
		int v_i_block_1142_line_1134 = iBlock;
		int f_block_columns_1042_line_1134 = blockColumns;
		int block_real_matrix_1_expr140_line_1134 = v_i_block_1142_line_1134 * f_block_columns_1042_line_1134;
		int v_j_block_1143_line_1134 = jBlock;
		int block_real_matrix_1_expr139_line_1134 = block_real_matrix_1_expr140_line_1134 + v_j_block_1143_line_1134;
		double[] block_real_matrix_1_expr138_line_1134 = f_blocks_1043_line_1134[block_real_matrix_1_expr139_line_1134];
		int v_k_1144_line_1134 = k;
		double block_real_matrix_1_expr137_line_1134 = block_real_matrix_1_expr138_line_1134[v_k_1144_line_1134];
		int PROBE_END_LINE_1134 = 1134;
		return block_real_matrix_1_expr137_line_1134;
    }

    /** {@inheritDoc} */
    @Override
    public void setEntry(final int row, final int column, final double value) {
        MatrixUtils.checkMatrixIndex(this, row, column);
        final int iBlock = row / BLOCK_SIZE;
        final int jBlock = column / BLOCK_SIZE;
        final int k = (row - iBlock * BLOCK_SIZE) * blockWidth(jBlock) +
            (column - jBlock * BLOCK_SIZE);
        blocks[iBlock * blockColumns + jBlock][k] = value;
    }

    /** {@inheritDoc} */
    @Override
    public void addToEntry(final int row, final int column, final double increment) {
        MatrixUtils.checkMatrixIndex(this, row, column);
        final int iBlock = row    / BLOCK_SIZE;
        final int jBlock = column / BLOCK_SIZE;
        final int k = (row    - iBlock * BLOCK_SIZE) * blockWidth(jBlock) +
            (column - jBlock * BLOCK_SIZE);
        blocks[iBlock * blockColumns + jBlock][k] += increment;
    }

    /** {@inheritDoc} */
    @Override
    public void multiplyEntry(final int row, final int column, final double factor) {
        MatrixUtils.checkMatrixIndex(this, row, column);
        final int iBlock = row / BLOCK_SIZE;
        final int jBlock = column / BLOCK_SIZE;
        final int k = (row - iBlock * BLOCK_SIZE) * blockWidth(jBlock) +
            (column - jBlock * BLOCK_SIZE);
        blocks[iBlock * blockColumns + jBlock][k] *= factor;
    }

    /** {@inheritDoc} */
    @Override
    public BlockRealMatrix transpose() {
        final int nRows = getRowDimension();
        final int nCols = getColumnDimension();
        final BlockRealMatrix out = new BlockRealMatrix(nCols, nRows);

        // perform transpose block-wise, to ensure good cache behavior
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < blockColumns; ++iBlock) {
            for (int jBlock = 0; jBlock < blockRows; ++jBlock) {
                // transpose current block
                final double[] outBlock = out.blocks[blockIndex];
                final double[] tBlock = blocks[jBlock * blockColumns + iBlock];
                final int pStart = iBlock * BLOCK_SIZE;
                final int pEnd = FastMath.min(pStart + BLOCK_SIZE, columns);
                final int qStart = jBlock * BLOCK_SIZE;
                final int qEnd = FastMath.min(qStart + BLOCK_SIZE, rows);
                int k = 0;
                for (int p = pStart; p < pEnd; ++p) {
                    final int lInc = pEnd - pStart;
                    int l = p - pStart;
                    for (int q = qStart; q < qEnd; ++q) {
                        outBlock[k] = tBlock[l];
                        ++k;
                        l+= lInc;
                    }
                }
                // go to next block
                ++blockIndex;
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public int getRowDimension() {
        int PROBE_START_LINE_1209 = 1209;
		int f_rows_1038_line_1209 = rows;
		int PROBE_END_LINE_1209 = 1209;
		return f_rows_1038_line_1209;
    }

    /** {@inheritDoc} */
    @Override
    public int getColumnDimension() {
        int PROBE_START_LINE_1215 = 1215;
		int f_columns_1039_line_1215 = columns;
		int PROBE_END_LINE_1215 = 1215;
		return f_columns_1039_line_1215;
    }

    /** {@inheritDoc} */
    @Override
    public double[] operate(final double[] v) {
        if (v.length != columns) {
            throw new DimensionMismatchException(v.length, columns);
        }
        final double[] out = new double[rows];

        // perform multiplication block-wise, to ensure good cache behavior
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                final double[] block  = blocks[iBlock * blockColumns + jBlock];
                final int qStart = jBlock * BLOCK_SIZE;
                final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
                int k = 0;
                for (int p = pStart; p < pEnd; ++p) {
                    double sum = 0;
                    int q = qStart;
                    while (q < qEnd - 3) {
                        sum += block[k]     * v[q]     +
                               block[k + 1] * v[q + 1] +
                               block[k + 2] * v[q + 2] +
                               block[k + 3] * v[q + 3];
                        k += 4;
                        q += 4;
                    }
                    while (q < qEnd) {
                        sum += block[k++] * v[q++];
                    }
                    out[p] += sum;
                }
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public double[] preMultiply(final double[] v) {
        if (v.length != rows) {
            throw new DimensionMismatchException(v.length, rows);
        }
        final double[] out = new double[columns];

        // perform multiplication block-wise, to ensure good cache behavior
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth  = blockWidth(jBlock);
            final int jWidth2 = jWidth  + jWidth;
            final int jWidth3 = jWidth2 + jWidth;
            final int jWidth4 = jWidth3 + jWidth;
            final int qStart = jBlock * BLOCK_SIZE;
            final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
            for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
                final double[] block  = blocks[iBlock * blockColumns + jBlock];
                final int pStart = iBlock * BLOCK_SIZE;
                final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
                for (int q = qStart; q < qEnd; ++q) {
                    int k = q - qStart;
                    double sum = 0;
                    int p = pStart;
                    while (p < pEnd - 3) {
                        sum += block[k]           * v[p]     +
                               block[k + jWidth]  * v[p + 1] +
                               block[k + jWidth2] * v[p + 2] +
                               block[k + jWidth3] * v[p + 3];
                        k += jWidth4;
                        p += 4;
                    }
                    while (p < pEnd) {
                        sum += block[k] * v[p++];
                        k += jWidth;
                    }
                    out[q] += sum;
                }
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public double walkInRowOrder(final RealMatrixChangingVisitor visitor) {
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int p = pStart; p < pEnd; ++p) {
                for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                    final int jWidth = blockWidth(jBlock);
                    final int qStart = jBlock * BLOCK_SIZE;
                    final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
                    final double[] block = blocks[iBlock * blockColumns + jBlock];
                    int k = (p - pStart) * jWidth;
                    for (int q = qStart; q < qEnd; ++q) {
                        block[k] = visitor.visit(p, q, block[k]);
                        ++k;
                    }
                }
             }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInRowOrder(final RealMatrixPreservingVisitor visitor) {
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int p = pStart; p < pEnd; ++p) {
                for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                    final int jWidth = blockWidth(jBlock);
                    final int qStart = jBlock * BLOCK_SIZE;
                    final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
                    final double[] block = blocks[iBlock * blockColumns + jBlock];
                    int k = (p - pStart) * jWidth;
                    for (int q = qStart; q < qEnd; ++q) {
                        visitor.visit(p, q, block[k]);
                        ++k;
                    }
                }
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
        visitor.start(rows, columns, startRow, endRow, startColumn, endColumn);
        for (int iBlock = startRow / BLOCK_SIZE; iBlock < 1 + endRow / BLOCK_SIZE; ++iBlock) {
            final int p0 = iBlock * BLOCK_SIZE;
            final int pStart = FastMath.max(startRow, p0);
            final int pEnd = FastMath.min((iBlock + 1) * BLOCK_SIZE, 1 + endRow);
            for (int p = pStart; p < pEnd; ++p) {
                for (int jBlock = startColumn / BLOCK_SIZE; jBlock < 1 + endColumn / BLOCK_SIZE; ++jBlock) {
                    final int jWidth = blockWidth(jBlock);
                    final int q0 = jBlock * BLOCK_SIZE;
                    final int qStart = FastMath.max(startColumn, q0);
                    final int qEnd = FastMath.min((jBlock + 1) * BLOCK_SIZE, 1 + endColumn);
                    final double[] block = blocks[iBlock * blockColumns + jBlock];
                    int k = (p - p0) * jWidth + qStart - q0;
                    for (int q = qStart; q < qEnd; ++q) {
                        block[k] = visitor.visit(p, q, block[k]);
                        ++k;
                    }
                }
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
        visitor.start(rows, columns, startRow, endRow, startColumn, endColumn);
        for (int iBlock = startRow / BLOCK_SIZE; iBlock < 1 + endRow / BLOCK_SIZE; ++iBlock) {
            final int p0 = iBlock * BLOCK_SIZE;
            final int pStart = FastMath.max(startRow, p0);
            final int pEnd = FastMath.min((iBlock + 1) * BLOCK_SIZE, 1 + endRow);
            for (int p = pStart; p < pEnd; ++p) {
                for (int jBlock = startColumn / BLOCK_SIZE; jBlock < 1 + endColumn / BLOCK_SIZE; ++jBlock) {
                    final int jWidth = blockWidth(jBlock);
                    final int q0 = jBlock * BLOCK_SIZE;
                    final int qStart = FastMath.max(startColumn, q0);
                    final int qEnd = FastMath.min((jBlock + 1) * BLOCK_SIZE, 1 + endColumn);
                    final double[] block = blocks[iBlock * blockColumns + jBlock];
                    int k = (p - p0) * jWidth + qStart - q0;
                    for (int q = qStart; q < qEnd; ++q) {
                        visitor.visit(p, q, block[k]);
                        ++k;
                    }
                }
             }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInOptimizedOrder(final RealMatrixChangingVisitor visitor) {
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                final int qStart = jBlock * BLOCK_SIZE;
                final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
                final double[] block = blocks[blockIndex];
                int k = 0;
                for (int p = pStart; p < pEnd; ++p) {
                    for (int q = qStart; q < qEnd; ++q) {
                        block[k] = visitor.visit(p, q, block[k]);
                        ++k;
                    }
                }
                ++blockIndex;
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInOptimizedOrder(final RealMatrixPreservingVisitor visitor) {
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                final int qStart = jBlock * BLOCK_SIZE;
                final int qEnd = FastMath.min(qStart + BLOCK_SIZE, columns);
                final double[] block = blocks[blockIndex];
                int k = 0;
                for (int p = pStart; p < pEnd; ++p) {
                    for (int q = qStart; q < qEnd; ++q) {
                        visitor.visit(p, q, block[k]);
                        ++k;
                    }
                }
                ++blockIndex;
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInOptimizedOrder(final RealMatrixChangingVisitor visitor,
                                       final int startRow, final int endRow,
                                       final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(rows, columns, startRow, endRow, startColumn, endColumn);
        for (int iBlock = startRow / BLOCK_SIZE; iBlock < 1 + endRow / BLOCK_SIZE; ++iBlock) {
            final int p0 = iBlock * BLOCK_SIZE;
            final int pStart = FastMath.max(startRow, p0);
            final int pEnd = FastMath.min((iBlock + 1) * BLOCK_SIZE, 1 + endRow);
            for (int jBlock = startColumn / BLOCK_SIZE; jBlock < 1 + endColumn / BLOCK_SIZE; ++jBlock) {
                final int jWidth = blockWidth(jBlock);
                final int q0 = jBlock * BLOCK_SIZE;
                final int qStart = FastMath.max(startColumn, q0);
                final int qEnd = FastMath.min((jBlock + 1) * BLOCK_SIZE, 1 + endColumn);
                final double[] block = blocks[iBlock * blockColumns + jBlock];
                for (int p = pStart; p < pEnd; ++p) {
                    int k = (p - p0) * jWidth + qStart - q0;
                    for (int q = qStart; q < qEnd; ++q) {
                        block[k] = visitor.visit(p, q, block[k]);
                        ++k;
                    }
                }
            }
        }
        return visitor.end();
    }

    /** {@inheritDoc} */
    @Override
    public double walkInOptimizedOrder(final RealMatrixPreservingVisitor visitor,
                                       final int startRow, final int endRow,
                                       final int startColumn, final int endColumn) {
        MatrixUtils.checkSubMatrixIndex(this, startRow, endRow, startColumn, endColumn);
        visitor.start(rows, columns, startRow, endRow, startColumn, endColumn);
        for (int iBlock = startRow / BLOCK_SIZE; iBlock < 1 + endRow / BLOCK_SIZE; ++iBlock) {
            final int p0 = iBlock * BLOCK_SIZE;
            final int pStart = FastMath.max(startRow, p0);
            final int pEnd = FastMath.min((iBlock + 1) * BLOCK_SIZE, 1 + endRow);
            for (int jBlock = startColumn / BLOCK_SIZE; jBlock < 1 + endColumn / BLOCK_SIZE; ++jBlock) {
                final int jWidth = blockWidth(jBlock);
                final int q0 = jBlock * BLOCK_SIZE;
                final int qStart = FastMath.max(startColumn, q0);
                final int qEnd = FastMath.min((jBlock + 1) * BLOCK_SIZE, 1 + endColumn);
                final double[] block = blocks[iBlock * blockColumns + jBlock];
                for (int p = pStart; p < pEnd; ++p) {
                    int k = (p - p0) * jWidth + qStart - q0;
                    for (int q = qStart; q < qEnd; ++q) {
                        visitor.visit(p, q, block[k]);
                        ++k;
                    }
                }
            }
        }
        return visitor.end();
    }

    /**
     * Get the height of a block.
     * @param blockRow row index (in block sense) of the block
     * @return height (number of rows) of the block
     */
    private int blockHeight(final int blockRow) {
        int PROBE_START_LINE_1521 = 1521;
		int p_block_row_1180_line_1521 = blockRow;
		int f_block_rows_1040_line_1521 = blockRows;
		int block_real_matrix_1_expr145_line_1521 = f_block_rows_1040_line_1521 - 1;
		boolean block_real_matrix_1_expr144_line_1521 = p_block_row_1180_line_1521 == block_real_matrix_1_expr145_line_1521;
		boolean block_real_matrix_1_expr142_line_1521 = (block_real_matrix_1_expr144_line_1521);
		int block_real_matrix_1_expr143_line_1521 = 0;
		int f_block_size_1041_line_1521_v1 = 0;
		if (block_real_matrix_1_expr142_line_1521) {
			int f_rows_1038_line_1521 = rows;
			int p_block_row_1180_line_1521_v1 = blockRow;
			int f_block_size_1041_line_1521 = BLOCK_SIZE;
			int block_real_matrix_1_expr146_line_1521 = p_block_row_1180_line_1521_v1 * f_block_size_1041_line_1521;
			block_real_matrix_1_expr143_line_1521 = f_rows_1038_line_1521 - block_real_matrix_1_expr146_line_1521;
		} else {
			f_block_size_1041_line_1521_v1 = BLOCK_SIZE;
		}
		int block_real_matrix_1_expr141_line_1521 = block_real_matrix_1_expr142_line_1521
				? block_real_matrix_1_expr143_line_1521
				: f_block_size_1041_line_1521_v1;
		int PROBE_END_LINE_1521 = 1521;
		return block_real_matrix_1_expr141_line_1521;
    }

    /**
     * Get the width of a block.
     * @param blockColumn column index (in block sense) of the block
     * @return width (number of columns) of the block
     */
    private int blockWidth(final int blockColumn) {
        int PROBE_START_LINE_1530 = 1530;
		int p_block_column_1181_line_1530 = blockColumn;
		int f_block_columns_1042_line_1530 = blockColumns;
		int block_real_matrix_1_expr151_line_1530 = f_block_columns_1042_line_1530 - 1;
		boolean block_real_matrix_1_expr150_line_1530 = p_block_column_1181_line_1530 == block_real_matrix_1_expr151_line_1530;
		boolean block_real_matrix_1_expr148_line_1530 = (block_real_matrix_1_expr150_line_1530);
		int block_real_matrix_1_expr149_line_1530 = 0;
		int f_block_size_1041_line_1530_v1 = 0;
		if (block_real_matrix_1_expr148_line_1530) {
			int f_columns_1039_line_1530 = columns;
			int p_block_column_1181_line_1530_v1 = blockColumn;
			int f_block_size_1041_line_1530 = BLOCK_SIZE;
			int block_real_matrix_1_expr152_line_1530 = p_block_column_1181_line_1530_v1 * f_block_size_1041_line_1530;
			block_real_matrix_1_expr149_line_1530 = f_columns_1039_line_1530 - block_real_matrix_1_expr152_line_1530;
		} else {
			f_block_size_1041_line_1530_v1 = BLOCK_SIZE;
		}
		int block_real_matrix_1_expr147_line_1530 = block_real_matrix_1_expr148_line_1530
				? block_real_matrix_1_expr149_line_1530
				: f_block_size_1041_line_1530_v1;
		int PROBE_END_LINE_1530 = 1530;
		return block_real_matrix_1_expr147_line_1530;
    }
}
