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

import org.apache.commons.math.Field;
import org.apache.commons.math.FieldElement;
import org.apache.commons.math.exception.NoDataException;
import org.apache.commons.math.exception.DimensionMismatchException;
import org.apache.commons.math.exception.util.LocalizedFormats;
import org.apache.commons.math.util.FastMath;

/**
 * Cache-friendly implementation of FieldMatrix using a flat arrays to store
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
 * for matrix multiplication). The default value is to use 36x36 blocks.
 * </p>
 * <p>
 * The regular blocks represent {@link #BLOCK_SIZE} x {@link #BLOCK_SIZE} squares. Blocks
 * at right hand side and bottom side which may be smaller to fit matrix dimensions. The square
 * blocks are flattened in row major order in single dimension arrays which are therefore
 * {@link #BLOCK_SIZE}<sup>2</sup> elements long for regular blocks. The blocks are themselves
 * organized in row major order.
 * </p>
 * <p>
 * As an example, for a block size of 36x36, a 100x60 matrix would be stored in 6 blocks.
 * Block 0 would be a Field[1296] array holding the upper left 36x36 square, block 1 would be
 * a Field[1296] array holding the upper center 36x36 square, block 2 would be a Field[1008]
 * array holding the upper right 36x28 rectangle, block 3 would be a Field[864] array holding
 * the lower left 24x36 rectangle, block 4 would be a Field[864] array holding the lower center
 * 24x36 rectangle and block 5 would be a Field[672] array holding the lower right 24x28
 * rectangle.
 * </p>
 * <p>
 * The layout complexity overhead versus simple mapping of matrices to java
 * arrays is negligible for small matrices (about 1%). The gain from cache efficiency leads
 * to up to 3-fold improvements for matrices of moderate to large size.
 * </p>
 * @param <T> the type of the field elements
 * @version $Id$
 * @since 2.0
 */
public class BlockFieldMatrix<T extends FieldElement<T>> extends AbstractFieldMatrix<T> implements Serializable {
    /** Block size. */
    public static final int BLOCK_SIZE = 36;
    /** Serializable version identifier. */
    private static final long serialVersionUID = -4602336630143123183L;
    /** Blocks of matrix entries. */
    private final T blocks[][];
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
     * @param field Field to which the elements belong.
     * @param rows Number of rows in the new matrix.
     * @param columns Number of columns in the new matrix.
     * @throws org.apache.commons.math.exception.NotStrictlyPositiveException
     * if row or column dimension is not positive.
     */
    public BlockFieldMatrix(final Field<T> field, final int rows, final int columns) {
        super(field, rows, columns);
        this.rows    = rows;
        this.columns = columns;

        // number of blocks
        blockRows    = (rows    + BLOCK_SIZE - 1) / BLOCK_SIZE;
        blockColumns = (columns + BLOCK_SIZE - 1) / BLOCK_SIZE;

        // allocate storage blocks, taking care of smaller ones at right and bottom
        blocks = createBlocksLayout(field, rows, columns);
    }

    /**
     * Create a new dense matrix copying entries from raw layout data.
     * <p>The input array <em>must</em> already be in raw layout.</p>
     * <p>Calling this constructor is equivalent to call:
     * <pre>matrix = new BlockFieldMatrix<T>(getField(), rawData.length, rawData[0].length,
     *                                   toBlocksLayout(rawData), false);</pre>
     * </p>
     * @param rawData Data for the new matrix, in raw layout.
     *
     * @exception DimensionMismatchException if the {@code blockData} shape is
     * inconsistent with block layout.
     * @see #BlockFieldMatrix(int, int, FieldElement[][], boolean)
     */
    public BlockFieldMatrix(final T[][] rawData) {
        this(rawData.length, rawData[0].length, toBlocksLayout(rawData), false);
    }

    /**
     * Create a new dense matrix copying entries from block layout data.
     * <p>The input array <em>must</em> already be in blocks layout.</p>
     * @param rows  the number of rows in the new matrix
     * @param columns  the number of columns in the new matrix
     * @param blockData data for new matrix
     * @param copyArray if true, the input array will be copied, otherwise
     * it will be referenced
     *
     * @exception DimensionMismatchException if the {@code blockData} shape is
     * inconsistent with block layout.
     * @see #createBlocksLayout(Field, int, int)
     * @see #toBlocksLayout(FieldElement[][])
     * @see #BlockFieldMatrix(FieldElement[][])
     */
    public BlockFieldMatrix(final int rows, final int columns,
                            final T[][] blockData, final boolean copyArray) {
        super(extractField(blockData), rows, columns);
        int PROBE_START_LINE_142 = 142;
		int p_rows_804_line_142 = rows;
		int PROBE_END_LINE_142 = 142;
		this.rows    = p_rows_804_line_142;
        int PROBE_START_LINE_143 = 143;
		int p_columns_805_line_143 = columns;
		int PROBE_END_LINE_143 = 143;
		this.columns = p_columns_805_line_143;

        int PROBE_START_LINE_146 = 146;
		int p_rows_804_line_146 = rows;
		int f_block_size_811_line_146 = BLOCK_SIZE;
		int block_field_matrix_1_expr17_line_146 = p_rows_804_line_146 + f_block_size_811_line_146;
		int block_field_matrix_1_expr16_line_146 = block_field_matrix_1_expr17_line_146 - 1;
		int block_field_matrix_1_expr15_line_146 = (block_field_matrix_1_expr16_line_146);
		int f_block_size_811_line_146_v1 = BLOCK_SIZE;
		int block_field_matrix_1_expr14_line_146 = block_field_matrix_1_expr15_line_146 / f_block_size_811_line_146_v1;
		int PROBE_END_LINE_146 = 146;
		// number of blocks
        blockRows    = block_field_matrix_1_expr14_line_146;
        int PROBE_START_LINE_147 = 147;
		int p_columns_805_line_147 = columns;
		int f_block_size_811_line_147 = BLOCK_SIZE;
		int block_field_matrix_1_expr22_line_147 = p_columns_805_line_147 + f_block_size_811_line_147;
		int block_field_matrix_1_expr21_line_147 = block_field_matrix_1_expr22_line_147 - 1;
		int block_field_matrix_1_expr20_line_147 = (block_field_matrix_1_expr21_line_147);
		int f_block_size_811_line_147_v1 = BLOCK_SIZE;
		int block_field_matrix_1_expr19_line_147 = block_field_matrix_1_expr20_line_147 / f_block_size_811_line_147_v1;
		int PROBE_END_LINE_147 = 147;
		blockColumns = block_field_matrix_1_expr19_line_147;

        int PROBE_START_LINE_149 = 155;
		boolean p_copy_array_807_line_149 = copyArray;
		int PROBE_END_LINE_149 = 155;
		if (p_copy_array_807_line_149) {
            // allocate storage blocks, taking care of smaller ones at right and bottom
            blocks = buildArray(getField(), blockRows * blockColumns, -1);
        } else {
            int PROBE_START_LINE_154 = 154;
			T[][] p_block_data_806_line_154 = blockData;
			int PROBE_END_LINE_154 = 154;
			// reference existing array
            blocks = p_block_data_806_line_154;
        }

        int index = 0;
        for (int iBlock = 0; true; ++iBlock) {
            int PROBE_START_LINE_159 = 159;
			int v_i_block_815_line_158 = iBlock;
			int f_block_rows_810_line_158 = blockRows;
			boolean block_field_matrix_1_expr25_line_158 = v_i_block_815_line_158 < f_block_rows_810_line_158;
			if (!(block_field_matrix_1_expr25_line_158)) {
				break;
			}
			int v_i_block_815_line_159 = iBlock;
			int block_field_matrix_1_expr27_line_159 = blockHeight(v_i_block_815_line_159);
			int PROBE_END_LINE_159 = 159;
			final int iHeight = block_field_matrix_1_expr27_line_159;
            for (int jBlock = 0; true; ++jBlock, ++index) {
                int PROBE_START_LINE_161 = 164;
				int v_j_block_817_line_160 = jBlock;
				int f_block_columns_812_line_160 = blockColumns;
				boolean block_field_matrix_1_expr29_line_160 = v_j_block_817_line_160 < f_block_columns_812_line_160;
				if (!(block_field_matrix_1_expr29_line_160)) {
					break;
				}
				T[][] p_block_data_806_line_161 = blockData;
				int v_index_814_line_161 = index;
				T[] block_field_matrix_1_expr34_line_161 = p_block_data_806_line_161[v_index_814_line_161];
				int block_field_matrix_1_expr33_line_161 = block_field_matrix_1_expr34_line_161.length;
				int v_i_height_816_line_161 = iHeight;
				int v_j_block_817_line_161 = jBlock;
				int block_field_matrix_1_expr36_line_161 = blockWidth(v_j_block_817_line_161);
				int block_field_matrix_1_expr35_line_161 = v_i_height_816_line_161
						* block_field_matrix_1_expr36_line_161;
				boolean block_field_matrix_1_expr32_line_161 = block_field_matrix_1_expr33_line_161 != block_field_matrix_1_expr35_line_161;
				int PROBE_END_LINE_161 = 164;
				if (block_field_matrix_1_expr32_line_161) {
                    throw new DimensionMismatchException(blockData[index].length,
                                                         iHeight * blockWidth(jBlock));
                }
                int PROBE_START_LINE_165 = 167;
				boolean p_copy_array_807_line_165 = copyArray;
				int PROBE_END_LINE_165 = 167;
				if (p_copy_array_807_line_165) {
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
     * is the layout used in {@link BlockFieldMatrix} instances, where the matrix
     * is split in square blocks (except at right and bottom side where blocks may
     * be rectangular to fit matrix size) and each block is stored in a flattened
     * one-dimensional array.
     * </p>
     * <p>
     * This method creates an array in blocks layout from an input array in raw layout.
     * It can be used to provide the array argument of the {@link
     * #BlockFieldMatrix(int, int, FieldElement[][], boolean)}
     * constructor.
     * </p>
     * @param <T> Type of the field elements.
     * @param rawData Data array in raw layout.
     * @return a new data array containing the same entries but in blocks layout
     * @throws DimensionMismatchException if {@code rawData} is not rectangular
     *  (not all rows have the same length).
     * @see #createBlocksLayout(Field, int, int)
     * @see #BlockFieldMatrix(int, int, FieldElement[][], boolean)
     */
    public static <T extends FieldElement<T>> T[][] toBlocksLayout(final T[][] rawData) {

        int PROBE_START_LINE_198 = 198;
		T[][] p_raw_data_818_line_198 = rawData;
		int q_length_10_line_198 = p_raw_data_818_line_198.length;
		int PROBE_END_LINE_198 = 198;
		final int rows         = q_length_10_line_198;
        int PROBE_START_LINE_199 = 199;
		T[][] p_raw_data_818_line_199 = rawData;
		T[] block_field_matrix_1_expr38_line_199 = p_raw_data_818_line_199[0];
		int block_field_matrix_1_expr37_line_199 = block_field_matrix_1_expr38_line_199.length;
		int PROBE_END_LINE_199 = 199;
		final int columns      = block_field_matrix_1_expr37_line_199;
        int PROBE_START_LINE_200 = 200;
		int v_rows_819_line_200 = rows;
		int f_block_size_811_line_200 = BLOCK_SIZE;
		int block_field_matrix_1_expr42_line_200 = v_rows_819_line_200 + f_block_size_811_line_200;
		int block_field_matrix_1_expr41_line_200 = block_field_matrix_1_expr42_line_200 - 1;
		int block_field_matrix_1_expr40_line_200 = (block_field_matrix_1_expr41_line_200);
		int f_block_size_811_line_200_v1 = BLOCK_SIZE;
		int block_field_matrix_1_expr39_line_200 = block_field_matrix_1_expr40_line_200 / f_block_size_811_line_200_v1;
		int PROBE_END_LINE_200 = 200;
		final int blockRows    = block_field_matrix_1_expr39_line_200;
        int PROBE_START_LINE_201 = 201;
		int v_columns_820_line_201 = columns;
		int f_block_size_811_line_201 = BLOCK_SIZE;
		int block_field_matrix_1_expr46_line_201 = v_columns_820_line_201 + f_block_size_811_line_201;
		int block_field_matrix_1_expr45_line_201 = block_field_matrix_1_expr46_line_201 - 1;
		int block_field_matrix_1_expr44_line_201 = (block_field_matrix_1_expr45_line_201);
		int f_block_size_811_line_201_v1 = BLOCK_SIZE;
		int block_field_matrix_1_expr43_line_201 = block_field_matrix_1_expr44_line_201 / f_block_size_811_line_201_v1;
		int PROBE_END_LINE_201 = 201;
		final int blockColumns = block_field_matrix_1_expr43_line_201;

        // safety checks
        for (int i = 0; true; ++i) {
            int PROBE_START_LINE_205 = 205;
			int v_i_823_line_204 = i;
			T[][] p_raw_data_818_line_204 = rawData;
			int q_length_11_line_204 = p_raw_data_818_line_204.length;
			boolean block_field_matrix_1_expr48_line_204 = v_i_823_line_204 < q_length_11_line_204;
			if (!(block_field_matrix_1_expr48_line_204)) {
				break;
			}
			T[][] p_raw_data_818_line_205 = rawData;
			int v_i_823_line_205 = i;
			T[] block_field_matrix_1_expr51_line_205 = p_raw_data_818_line_205[v_i_823_line_205];
			int block_field_matrix_1_expr50_line_205 = block_field_matrix_1_expr51_line_205.length;
			int PROBE_END_LINE_205 = 205;
			final int length = block_field_matrix_1_expr50_line_205;
            int PROBE_START_LINE_206 = 208;
			int v_length_824_line_206 = length;
			int v_columns_820_line_206 = columns;
			boolean block_field_matrix_1_expr52_line_206 = v_length_824_line_206 != v_columns_820_line_206;
			int PROBE_END_LINE_206 = 208;
			if (block_field_matrix_1_expr52_line_206) {
                throw new DimensionMismatchException(columns, length);
            }
        }

        int PROBE_START_LINE_212 = 212;
		T[][] p_raw_data_818_line_212 = rawData;
		Field<T> block_field_matrix_1_expr53_line_212 = extractField(p_raw_data_818_line_212);
		int PROBE_END_LINE_212 = 212;
		// convert array
        final Field<T> field = block_field_matrix_1_expr53_line_212;
        int PROBE_START_LINE_213 = 213;
		Field<T> v_field_825_line_213 = field;
		int v_block_rows_821_line_213 = blockRows;
		int v_block_columns_822_line_213 = blockColumns;
		int block_field_matrix_1_expr55_line_213 = v_block_rows_821_line_213 * v_block_columns_822_line_213;
		int block_field_matrix_1_expr56_line_213 = -1;
		T[][] block_field_matrix_1_expr54_line_213 = buildArray(v_field_825_line_213,
				block_field_matrix_1_expr55_line_213, block_field_matrix_1_expr56_line_213);
		int PROBE_END_LINE_213 = 213;
		final T[][] blocks = block_field_matrix_1_expr54_line_213;
        int blockIndex = 0;
        for (int iBlock = 0; true; ++iBlock) {
            int PROBE_START_LINE_216 = 216;
			int v_i_block_828_line_215 = iBlock;
			int v_block_rows_821_line_215 = blockRows;
			boolean block_field_matrix_1_expr58_line_215 = v_i_block_828_line_215 < v_block_rows_821_line_215;
			if (!(block_field_matrix_1_expr58_line_215)) {
				break;
			}
			int v_i_block_828_line_216 = iBlock;
			int f_block_size_811_line_216 = BLOCK_SIZE;
			int block_field_matrix_1_expr60_line_216 = v_i_block_828_line_216 * f_block_size_811_line_216;
			int PROBE_END_LINE_216 = 216;
			final int pStart  = block_field_matrix_1_expr60_line_216;
            int PROBE_START_LINE_217 = 217;
			int v_p_start_829_line_217 = pStart;
			int f_block_size_811_line_217 = BLOCK_SIZE;
			int block_field_matrix_1_expr62_line_217 = v_p_start_829_line_217 + f_block_size_811_line_217;
			int v_rows_819_line_217 = rows;
			int block_field_matrix_1_expr61_line_217 = FastMath.min(block_field_matrix_1_expr62_line_217,
					v_rows_819_line_217);
			int PROBE_END_LINE_217 = 217;
			final int pEnd    = block_field_matrix_1_expr61_line_217;
            int PROBE_START_LINE_218 = 218;
			int v_p_end_830_line_218 = pEnd;
			int v_p_start_829_line_218 = pStart;
			int block_field_matrix_1_expr63_line_218 = v_p_end_830_line_218 - v_p_start_829_line_218;
			int PROBE_END_LINE_218 = 218;
			final int iHeight = block_field_matrix_1_expr63_line_218;
            for (int jBlock = 0; true; ++jBlock) {
                int PROBE_START_LINE_220 = 220;
				int v_j_block_832_line_219 = jBlock;
				int v_block_columns_822_line_219 = blockColumns;
				boolean block_field_matrix_1_expr65_line_219 = v_j_block_832_line_219 < v_block_columns_822_line_219;
				if (!(block_field_matrix_1_expr65_line_219)) {
					break;
				}
				int v_j_block_832_line_220 = jBlock;
				int f_block_size_811_line_220 = BLOCK_SIZE;
				int block_field_matrix_1_expr67_line_220 = v_j_block_832_line_220 * f_block_size_811_line_220;
				int PROBE_END_LINE_220 = 220;
				final int qStart = block_field_matrix_1_expr67_line_220;
                int PROBE_START_LINE_221 = 221;
				int v_q_start_833_line_221 = qStart;
				int f_block_size_811_line_221 = BLOCK_SIZE;
				int block_field_matrix_1_expr69_line_221 = v_q_start_833_line_221 + f_block_size_811_line_221;
				int v_columns_820_line_221 = columns;
				int block_field_matrix_1_expr68_line_221 = FastMath.min(block_field_matrix_1_expr69_line_221,
						v_columns_820_line_221);
				int PROBE_END_LINE_221 = 221;
				final int qEnd   = block_field_matrix_1_expr68_line_221;
                int PROBE_START_LINE_222 = 222;
				int v_q_end_834_line_222 = qEnd;
				int v_q_start_833_line_222 = qStart;
				int block_field_matrix_1_expr70_line_222 = v_q_end_834_line_222 - v_q_start_833_line_222;
				int PROBE_END_LINE_222 = 222;
				final int jWidth = block_field_matrix_1_expr70_line_222;

                int PROBE_START_LINE_225 = 225;
				Field<T> v_field_825_line_225 = field;
				int v_i_height_831_line_225 = iHeight;
				int v_j_width_835_line_225 = jWidth;
				int block_field_matrix_1_expr72_line_225 = v_i_height_831_line_225 * v_j_width_835_line_225;
				T[] block_field_matrix_1_expr71_line_225 = buildArray(v_field_825_line_225,
						block_field_matrix_1_expr72_line_225);
				int PROBE_END_LINE_225 = 225;
				// allocate new block
                final T[] block = block_field_matrix_1_expr71_line_225;
                int PROBE_START_LINE_226 = 226;
				T[][] v_blocks_826_line_226 = blocks;
				int v_block_index_827_line_226 = blockIndex;
				T[] v_block_836_line_226 = block;
				int PROBE_END_LINE_226 = 226;
				v_blocks_826_line_226[v_block_index_827_line_226] = v_block_836_line_226;

                // copy data
                int index = 0;
                int PROBE_START_LINE_229 = 229;
				boolean FOR_STMT_TOGGLE_LINE_230 = false;
				int PROBE_END_LINE_229 = 229;
				for (int p = 0; true;) {
                    int PROBE_START_LINE_231 = 231;
					if (!FOR_STMT_TOGGLE_LINE_230) {
						FOR_STMT_TOGGLE_LINE_230 = true;
						int v_p_start_829_line_230 = pStart;
						p = v_p_start_829_line_230;
					} else {
						if (FOR_STMT_TOGGLE_LINE_230) {
							++p;
						} else {
							FOR_STMT_TOGGLE_LINE_230 = true;
						}
					}
					int v_p_838_line_230 = p;
					int v_p_end_830_line_230 = pEnd;
					boolean block_field_matrix_1_expr76_line_230 = v_p_838_line_230 < v_p_end_830_line_230;
					if (!(block_field_matrix_1_expr76_line_230)) {
						break;
					}
					T[][] p_raw_data_818_line_231 = rawData;
					int v_p_838_line_231 = p;
					T[] block_field_matrix_1_expr79_line_231 = p_raw_data_818_line_231[v_p_838_line_231];
					int v_q_start_833_line_231 = qStart;
					T[] v_block_836_line_231 = block;
					int v_index_837_line_231 = index;
					int v_j_width_835_line_231 = jWidth;
					int PROBE_END_LINE_231 = 231;
					System.arraycopy(block_field_matrix_1_expr79_line_231, v_q_start_833_line_231, v_block_836_line_231, v_index_837_line_231, v_j_width_835_line_231);
                    int PROBE_START_LINE_232 = 232;
					int v_j_width_835_line_232 = jWidth;
					int PROBE_END_LINE_232 = 232;
					index += v_j_width_835_line_232;
                }

                ++blockIndex;
            }
        }

        int PROBE_START_LINE_239 = 239;
		T[][] v_blocks_826_line_239 = blocks;
		int PROBE_END_LINE_239 = 239;
		return v_blocks_826_line_239;
    }

    /**
     * Create a data array in blocks layout.
     * <p>
     * This method can be used to create the array argument of the {@link
     * #BlockFieldMatrix(int, int, FieldElement[][], boolean)}
     * constructor.
     * </p>
     * @param <T> Type of the field elements.
     * @param field Field to which the elements belong.
     * @param rows Number of rows in the new matrix.
     * @param columns Number of columns in the new matrix.
     * @return a new data array in blocks layout.
     * @see #toBlocksLayout(FieldElement[][])
     * @see #BlockFieldMatrix(int, int, FieldElement[][], boolean)
     */
    public static <T extends FieldElement<T>> T[][] createBlocksLayout(final Field<T> field,
                                                                       final int rows, final int columns) {
        final int blockRows    = (rows    + BLOCK_SIZE - 1) / BLOCK_SIZE;
        final int blockColumns = (columns + BLOCK_SIZE - 1) / BLOCK_SIZE;

        final T[][] blocks = buildArray(field, blockRows * blockColumns, -1);
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart  = iBlock * BLOCK_SIZE;
            final int pEnd    = FastMath.min(pStart + BLOCK_SIZE, rows);
            final int iHeight = pEnd - pStart;
            for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                final int qStart = jBlock * BLOCK_SIZE;
                final int qEnd   = FastMath.min(qStart + BLOCK_SIZE, columns);
                final int jWidth = qEnd - qStart;
                blocks[blockIndex] = buildArray(field, iHeight * jWidth);
                ++blockIndex;
            }
        }

        return blocks;
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> createMatrix(final int rowDimension, final int columnDimension) {
        return new BlockFieldMatrix<T>(getField(), rowDimension, columnDimension);
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> copy() {

        // create an empty matrix
        BlockFieldMatrix<T> copied = new BlockFieldMatrix<T>(getField(), rows, columns);

        // copy the blocks
        for (int i = 0; i < blocks.length; ++i) {
            System.arraycopy(blocks[i], 0, copied.blocks[i], 0, blocks[i].length);
        }

        return copied;
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> add(final FieldMatrix<T> m) {
        try {
            return add((BlockFieldMatrix<T>) m);
        } catch (ClassCastException cce) {

            // safety check
            checkAdditionCompatible(m);

            final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, columns);

            // perform addition block-wise, to ensure good cache behavior
            int blockIndex = 0;
            for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {
                for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {

                    // perform addition on the current block
                    final T[] outBlock = out.blocks[blockIndex];
                    final T[] tBlock   = blocks[blockIndex];
                    final int      pStart   = iBlock * BLOCK_SIZE;
                    final int      pEnd     = FastMath.min(pStart + BLOCK_SIZE, rows);
                    final int      qStart   = jBlock * BLOCK_SIZE;
                    final int      qEnd     = FastMath.min(qStart + BLOCK_SIZE, columns);
                    int k = 0;
                    for (int p = pStart; p < pEnd; ++p) {
                        for (int q = qStart; q < qEnd; ++q) {
                            outBlock[k] = tBlock[k].add(m.getEntry(p, q));
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
     * Compute the sum of this and <code>m</code>.
     *
     * @param m    matrix to be added
     * @return     this + m
     * @throws  IllegalArgumentException if m is not the same size as this
     */
    public BlockFieldMatrix<T> add(final BlockFieldMatrix<T> m) {

        // safety check
        checkAdditionCompatible(m);

        final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, columns);

        // perform addition block-wise, to ensure good cache behavior
        for (int blockIndex = 0; blockIndex < out.blocks.length; ++blockIndex) {
            final T[] outBlock = out.blocks[blockIndex];
            final T[] tBlock   = blocks[blockIndex];
            final T[] mBlock   = m.blocks[blockIndex];
            for (int k = 0; k < outBlock.length; ++k) {
                outBlock[k] = tBlock[k].add(mBlock[k]);
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> subtract(final FieldMatrix<T> m) {
        try {
            return subtract((BlockFieldMatrix<T>) m);
        } catch (ClassCastException cce) {

            // safety check
            checkSubtractionCompatible(m);

            final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, columns);

            // perform subtraction block-wise, to ensure good cache behavior
            int blockIndex = 0;
            for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {
                for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {

                    // perform subtraction on the current block
                    final T[] outBlock = out.blocks[blockIndex];
                    final T[] tBlock   = blocks[blockIndex];
                    final int      pStart   = iBlock * BLOCK_SIZE;
                    final int      pEnd     = FastMath.min(pStart + BLOCK_SIZE, rows);
                    final int      qStart   = jBlock * BLOCK_SIZE;
                    final int      qEnd     = FastMath.min(qStart + BLOCK_SIZE, columns);
                    int k = 0;
                    for (int p = pStart; p < pEnd; ++p) {
                        for (int q = qStart; q < qEnd; ++q) {
                            outBlock[k] = tBlock[k].subtract(m.getEntry(p, q));
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
     * Compute this minus <code>m</code>.
     *
     * @param m    matrix to be subtracted
     * @return     this - m
     * @throws  IllegalArgumentException if m is not the same size as this
     */
    public BlockFieldMatrix<T> subtract(final BlockFieldMatrix<T> m) {
        // safety check
        checkSubtractionCompatible(m);

        final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, columns);

        // perform subtraction block-wise, to ensure good cache behavior
        for (int blockIndex = 0; blockIndex < out.blocks.length; ++blockIndex) {
            final T[] outBlock = out.blocks[blockIndex];
            final T[] tBlock   = blocks[blockIndex];
            final T[] mBlock   = m.blocks[blockIndex];
            for (int k = 0; k < outBlock.length; ++k) {
                outBlock[k] = tBlock[k].subtract(mBlock[k]);
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> scalarAdd(final T d) {
        final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, columns);

        // perform subtraction block-wise, to ensure good cache behavior
        for (int blockIndex = 0; blockIndex < out.blocks.length; ++blockIndex) {
            final T[] outBlock = out.blocks[blockIndex];
            final T[] tBlock   = blocks[blockIndex];
            for (int k = 0; k < outBlock.length; ++k) {
                outBlock[k] = tBlock[k].add(d);
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> scalarMultiply(final T d) {

        final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, columns);

        // perform subtraction block-wise, to ensure good cache behavior
        for (int blockIndex = 0; blockIndex < out.blocks.length; ++blockIndex) {
            final T[] outBlock = out.blocks[blockIndex];
            final T[] tBlock   = blocks[blockIndex];
            for (int k = 0; k < outBlock.length; ++k) {
                outBlock[k] = tBlock[k].multiply(d);
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> multiply(final FieldMatrix<T> m) {
        try {
            return multiply((BlockFieldMatrix<T>) m);
        } catch (ClassCastException cce) {

            // safety check
            checkMultiplicationCompatible(m);

            final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, m.getColumnDimension());
            final T zero = getField().getZero();

            // perform multiplication block-wise, to ensure good cache behavior
            int blockIndex = 0;
            for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {

                final int pStart = iBlock * BLOCK_SIZE;
                final int pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);

                for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {

                    final int qStart = jBlock * BLOCK_SIZE;
                    final int qEnd   = FastMath.min(qStart + BLOCK_SIZE, m.getColumnDimension());

                    // select current block
                    final T[] outBlock = out.blocks[blockIndex];

                    // perform multiplication on current block
                    for (int kBlock = 0; kBlock < blockColumns; ++kBlock) {
                        final int kWidth      = blockWidth(kBlock);
                        final T[] tBlock = blocks[iBlock * blockColumns + kBlock];
                        final int rStart      = kBlock * BLOCK_SIZE;
                        int k = 0;
                        for (int p = pStart; p < pEnd; ++p) {
                            final int lStart = (p - pStart) * kWidth;
                            final int lEnd   = lStart + kWidth;
                            for (int q = qStart; q < qEnd; ++q) {
                                T sum = zero;
                                int r = rStart;
                                for (int l = lStart; l < lEnd; ++l) {
                                    sum = sum.add(tBlock[l].multiply(m.getEntry(r, q)));
                                    ++r;
                                }
                                outBlock[k] = outBlock[k].add(sum);
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
     * Returns the result of postmultiplying this by m.
     *
     * @param m    matrix to postmultiply by
     * @return     this * m
     * @throws     IllegalArgumentException
     *             if columnDimension(this) != rowDimension(m)
     */
    public BlockFieldMatrix<T> multiply(BlockFieldMatrix<T> m) {

        // safety check
        checkMultiplicationCompatible(m);

        final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, m.columns);
        final T zero = getField().getZero();

        // perform multiplication block-wise, to ensure good cache behavior
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {

            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);

            for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {
                final int jWidth = out.blockWidth(jBlock);
                final int jWidth2 = jWidth  + jWidth;
                final int jWidth3 = jWidth2 + jWidth;
                final int jWidth4 = jWidth3 + jWidth;

                // select current block
                final T[] outBlock = out.blocks[blockIndex];

                // perform multiplication on current block
                for (int kBlock = 0; kBlock < blockColumns; ++kBlock) {
                    final int kWidth = blockWidth(kBlock);
                    final T[] tBlock = blocks[iBlock * blockColumns + kBlock];
                    final T[] mBlock = m.blocks[kBlock * m.blockColumns + jBlock];
                    int k = 0;
                    for (int p = pStart; p < pEnd; ++p) {
                        final int lStart = (p - pStart) * kWidth;
                        final int lEnd   = lStart + kWidth;
                        for (int nStart = 0; nStart < jWidth; ++nStart) {
                            T sum = zero;
                            int l = lStart;
                            int n = nStart;
                            while (l < lEnd - 3) {
                                sum = sum.
                                      add(tBlock[l].multiply(mBlock[n])).
                                      add(tBlock[l + 1].multiply(mBlock[n + jWidth])).
                                      add(tBlock[l + 2].multiply(mBlock[n + jWidth2])).
                                      add(tBlock[l + 3].multiply(mBlock[n + jWidth3]));
                                l += 4;
                                n += jWidth4;
                            }
                            while (l < lEnd) {
                                sum = sum.add(tBlock[l++].multiply(mBlock[n]));
                                n += jWidth;
                            }
                            outBlock[k] = outBlock[k].add(sum);
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
    public T[][] getData() {

        final T[][] data = buildArray(getField(), getRowDimension(), getColumnDimension());
        final int lastColumns = columns - (blockColumns - 1) * BLOCK_SIZE;

        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);
            int regularPos   = 0;
            int lastPos      = 0;
            for (int p = pStart; p < pEnd; ++p) {
                final T[] dataP = data[p];
                int blockIndex = iBlock * blockColumns;
                int dataPos    = 0;
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
    public FieldMatrix<T> getSubMatrix(final int startRow, final int endRow,
                                       final int startColumn, final int endColumn) {
        // safety checks
        checkSubMatrixIndex(startRow, endRow, startColumn, endColumn);

        // create the output matrix
        final BlockFieldMatrix<T> out =
            new BlockFieldMatrix<T>(getField(), endRow - startRow + 1, endColumn - startColumn + 1);

        // compute blocks shifts
        final int blockStartRow    = startRow    / BLOCK_SIZE;
        final int rowsShift        = startRow    % BLOCK_SIZE;
        final int blockStartColumn = startColumn / BLOCK_SIZE;
        final int columnsShift     = startColumn % BLOCK_SIZE;

        // perform extraction block-wise, to ensure good cache behavior
        int pBlock = blockStartRow;
        for (int iBlock = 0; iBlock < out.blockRows; ++iBlock) {
            final int iHeight = out.blockHeight(iBlock);
            int qBlock = blockStartColumn;
            for (int jBlock = 0; jBlock < out.blockColumns; ++jBlock) {
                final int jWidth = out.blockWidth(jBlock);

                // handle one block of the output matrix
                final int      outIndex = iBlock * out.blockColumns + jBlock;
                final T[] outBlock = out.blocks[outIndex];
                final int      index    = pBlock * blockColumns + qBlock;
                final int      width    = blockWidth(qBlock);

                final int heightExcess = iHeight + rowsShift - BLOCK_SIZE;
                final int widthExcess  = jWidth + columnsShift - BLOCK_SIZE;
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
    private void copyBlockPart(final T[] srcBlock, final int srcWidth,
                               final int srcStartRow, final int srcEndRow,
                               final int srcStartColumn, final int srcEndColumn,
                               final T[] dstBlock, final int dstWidth,
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
    public void setSubMatrix(final T[][] subMatrix, final int row, final int column) {
        int PROBE_START_LINE_762 = 762;
		T[][] p_sub_matrix_866_line_762 = subMatrix;
		T[] block_field_matrix_1_expr83_line_762 = p_sub_matrix_866_line_762[0];
		int block_field_matrix_1_expr82_line_762 = block_field_matrix_1_expr83_line_762.length;
		int PROBE_END_LINE_762 = 762;
		// safety checks
        final int refLength = block_field_matrix_1_expr82_line_762;
        int PROBE_START_LINE_763 = 765;
		int v_ref_length_869_line_763 = refLength;
		boolean block_field_matrix_1_expr84_line_763 = v_ref_length_869_line_763 == 0;
		int PROBE_END_LINE_763 = 765;
		if (block_field_matrix_1_expr84_line_763) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        int PROBE_START_LINE_766 = 766;
		int p_row_867_line_766 = row;
		T[][] p_sub_matrix_866_line_766 = subMatrix;
		int q_length_11_line_766 = p_sub_matrix_866_line_766.length;
		int block_field_matrix_1_expr86_line_766 = p_row_867_line_766 + q_length_11_line_766;
		int block_field_matrix_1_expr85_line_766 = block_field_matrix_1_expr86_line_766 - 1;
		int PROBE_END_LINE_766 = 766;
		final int endRow    = block_field_matrix_1_expr85_line_766;
        int PROBE_START_LINE_767 = 767;
		int p_column_868_line_767 = column;
		int v_ref_length_869_line_767 = refLength;
		int block_field_matrix_1_expr88_line_767 = p_column_868_line_767 + v_ref_length_869_line_767;
		int block_field_matrix_1_expr87_line_767 = block_field_matrix_1_expr88_line_767 - 1;
		int PROBE_END_LINE_767 = 767;
		final int endColumn = block_field_matrix_1_expr87_line_767;
        int PROBE_START_LINE_768 = 768;
		int p_row_867_line_768 = row;
		int v_end_row_870_line_768 = endRow;
		int p_column_868_line_768 = column;
		int v_end_column_871_line_768 = endColumn;
		int PROBE_END_LINE_768 = 768;
		checkSubMatrixIndex(p_row_867_line_768, v_end_row_870_line_768, p_column_868_line_768, v_end_column_871_line_768);
        int PROBE_START_LINE_769 = 773;
		T[][] p_sub_matrix_866_line_769 = subMatrix;
		int PROBE_END_LINE_769 = 773;
		for (final T[] subRow : p_sub_matrix_866_line_769) {
            int PROBE_START_LINE_770 = 772;
			T[] v_sub_row_872_line_770 = subRow;
			int q_length_12_line_770 = v_sub_row_872_line_770.length;
			int v_ref_length_869_line_770 = refLength;
			boolean block_field_matrix_1_expr90_line_770 = q_length_12_line_770 != v_ref_length_869_line_770;
			int PROBE_END_LINE_770 = 772;
			if (block_field_matrix_1_expr90_line_770) {
                throw new DimensionMismatchException(refLength, subRow.length);
            }
        }

        int PROBE_START_LINE_776 = 776;
		int p_row_867_line_776 = row;
		int f_block_size_811_line_776 = BLOCK_SIZE;
		int block_field_matrix_1_expr91_line_776 = p_row_867_line_776 / f_block_size_811_line_776;
		int PROBE_END_LINE_776 = 776;
		// compute blocks bounds
        final int blockStartRow    = block_field_matrix_1_expr91_line_776;
        int PROBE_START_LINE_777 = 777;
		int v_end_row_870_line_777 = endRow;
		int f_block_size_811_line_777 = BLOCK_SIZE;
		int block_field_matrix_1_expr94_line_777 = v_end_row_870_line_777 + f_block_size_811_line_777;
		int block_field_matrix_1_expr93_line_777 = (block_field_matrix_1_expr94_line_777);
		int f_block_size_811_line_777_v1 = BLOCK_SIZE;
		int block_field_matrix_1_expr92_line_777 = block_field_matrix_1_expr93_line_777 / f_block_size_811_line_777_v1;
		int PROBE_END_LINE_777 = 777;
		final int blockEndRow      = block_field_matrix_1_expr92_line_777;
        int PROBE_START_LINE_778 = 778;
		int p_column_868_line_778 = column;
		int f_block_size_811_line_778 = BLOCK_SIZE;
		int block_field_matrix_1_expr95_line_778 = p_column_868_line_778 / f_block_size_811_line_778;
		int PROBE_END_LINE_778 = 778;
		final int blockStartColumn = block_field_matrix_1_expr95_line_778;
        int PROBE_START_LINE_779 = 779;
		int v_end_column_871_line_779 = endColumn;
		int f_block_size_811_line_779 = BLOCK_SIZE;
		int block_field_matrix_1_expr98_line_779 = v_end_column_871_line_779 + f_block_size_811_line_779;
		int block_field_matrix_1_expr97_line_779 = (block_field_matrix_1_expr98_line_779);
		int f_block_size_811_line_779_v1 = BLOCK_SIZE;
		int block_field_matrix_1_expr96_line_779 = block_field_matrix_1_expr97_line_779 / f_block_size_811_line_779_v1;
		int PROBE_END_LINE_779 = 779;
		final int blockEndColumn   = block_field_matrix_1_expr96_line_779;

        int PROBE_START_LINE_781 = 781;
		boolean FOR_STMT_TOGGLE_LINE_782 = false;
		int PROBE_END_LINE_781 = 781;
		// perform copy block-wise, to ensure good cache behavior
        for (int iBlock = 0; true;) {
            int PROBE_START_LINE_783 = 783;
			if (!FOR_STMT_TOGGLE_LINE_782) {
				FOR_STMT_TOGGLE_LINE_782 = true;
				int v_block_start_row_873_line_782 = blockStartRow;
				iBlock = v_block_start_row_873_line_782;
			} else {
				if (FOR_STMT_TOGGLE_LINE_782) {
					++iBlock;
				} else {
					FOR_STMT_TOGGLE_LINE_782 = true;
				}
			}
			int v_i_block_877_line_782 = iBlock;
			int v_block_end_row_874_line_782 = blockEndRow;
			boolean block_field_matrix_1_expr100_line_782 = v_i_block_877_line_782 < v_block_end_row_874_line_782;
			if (!(block_field_matrix_1_expr100_line_782)) {
				break;
			}
			int v_i_block_877_line_783 = iBlock;
			int block_field_matrix_1_expr102_line_783 = blockHeight(v_i_block_877_line_783);
			int PROBE_END_LINE_783 = 783;
			final int iHeight  = block_field_matrix_1_expr102_line_783;
            int PROBE_START_LINE_784 = 784;
			int v_i_block_877_line_784 = iBlock;
			int f_block_size_811_line_784 = BLOCK_SIZE;
			int block_field_matrix_1_expr103_line_784 = v_i_block_877_line_784 * f_block_size_811_line_784;
			int PROBE_END_LINE_784 = 784;
			final int firstRow = block_field_matrix_1_expr103_line_784;
            int PROBE_START_LINE_785 = 785;
			int p_row_867_line_785 = row;
			int v_first_row_879_line_785 = firstRow;
			int block_field_matrix_1_expr104_line_785 = FastMath.max(p_row_867_line_785, v_first_row_879_line_785);
			int PROBE_END_LINE_785 = 785;
			final int iStart   = block_field_matrix_1_expr104_line_785;
            int PROBE_START_LINE_786 = 786;
			int v_end_row_870_line_786 = endRow;
			int block_field_matrix_1_expr106_line_786 = v_end_row_870_line_786 + 1;
			int v_first_row_879_line_786 = firstRow;
			int v_i_height_878_line_786 = iHeight;
			int block_field_matrix_1_expr107_line_786 = v_first_row_879_line_786 + v_i_height_878_line_786;
			int block_field_matrix_1_expr105_line_786 = FastMath.min(block_field_matrix_1_expr106_line_786,
					block_field_matrix_1_expr107_line_786);
			int PROBE_END_LINE_786 = 786;
			final int iEnd     = block_field_matrix_1_expr105_line_786;

            int PROBE_START_LINE_787 = 787;
			boolean FOR_STMT_TOGGLE_LINE_788 = false;
			int PROBE_END_LINE_787 = 787;
			for (int jBlock = 0; true;) {
                int PROBE_START_LINE_789 = 789;
				if (!FOR_STMT_TOGGLE_LINE_788) {
					FOR_STMT_TOGGLE_LINE_788 = true;
					int v_block_start_column_875_line_788 = blockStartColumn;
					jBlock = v_block_start_column_875_line_788;
				} else {
					if (FOR_STMT_TOGGLE_LINE_788) {
						++jBlock;
					} else {
						FOR_STMT_TOGGLE_LINE_788 = true;
					}
				}
				int v_j_block_882_line_788 = jBlock;
				int v_block_end_column_876_line_788 = blockEndColumn;
				boolean block_field_matrix_1_expr109_line_788 = v_j_block_882_line_788 < v_block_end_column_876_line_788;
				if (!(block_field_matrix_1_expr109_line_788)) {
					break;
				}
				int v_j_block_882_line_789 = jBlock;
				int block_field_matrix_1_expr111_line_789 = blockWidth(v_j_block_882_line_789);
				int PROBE_END_LINE_789 = 789;
				final int jWidth      = block_field_matrix_1_expr111_line_789;
                int PROBE_START_LINE_790 = 790;
				int v_j_block_882_line_790 = jBlock;
				int f_block_size_811_line_790 = BLOCK_SIZE;
				int block_field_matrix_1_expr112_line_790 = v_j_block_882_line_790 * f_block_size_811_line_790;
				int PROBE_END_LINE_790 = 790;
				final int firstColumn = block_field_matrix_1_expr112_line_790;
                int PROBE_START_LINE_791 = 791;
				int p_column_868_line_791 = column;
				int v_first_column_884_line_791 = firstColumn;
				int block_field_matrix_1_expr113_line_791 = FastMath.max(p_column_868_line_791,
						v_first_column_884_line_791);
				int PROBE_END_LINE_791 = 791;
				final int jStart      = block_field_matrix_1_expr113_line_791;
                int PROBE_START_LINE_792 = 792;
				int v_end_column_871_line_792 = endColumn;
				int block_field_matrix_1_expr115_line_792 = v_end_column_871_line_792 + 1;
				int v_first_column_884_line_792 = firstColumn;
				int v_j_width_883_line_792 = jWidth;
				int block_field_matrix_1_expr116_line_792 = v_first_column_884_line_792 + v_j_width_883_line_792;
				int block_field_matrix_1_expr114_line_792 = FastMath.min(block_field_matrix_1_expr115_line_792,
						block_field_matrix_1_expr116_line_792);
				int PROBE_END_LINE_792 = 792;
				final int jEnd        = block_field_matrix_1_expr114_line_792;
                int PROBE_START_LINE_793 = 793;
				int v_j_end_886_line_793 = jEnd;
				int v_j_start_885_line_793 = jStart;
				int block_field_matrix_1_expr117_line_793 = v_j_end_886_line_793 - v_j_start_885_line_793;
				int PROBE_END_LINE_793 = 793;
				final int jLength     = block_field_matrix_1_expr117_line_793;

                int PROBE_START_LINE_796 = 796;
				T[][] f_blocks_813_line_796 = blocks;
				int v_i_block_877_line_796 = iBlock;
				int f_block_columns_812_line_796 = blockColumns;
				int block_field_matrix_1_expr120_line_796 = v_i_block_877_line_796 * f_block_columns_812_line_796;
				int v_j_block_882_line_796 = jBlock;
				int block_field_matrix_1_expr119_line_796 = block_field_matrix_1_expr120_line_796
						+ v_j_block_882_line_796;
				T[] block_field_matrix_1_expr118_line_796 = f_blocks_813_line_796[block_field_matrix_1_expr119_line_796];
				// handle one block, row by row
                final T[] block = block_field_matrix_1_expr118_line_796;
                boolean FOR_STMT_TOGGLE_LINE_797 = false;
				int PROBE_END_LINE_796 = 796;
				for (int i = 0; true;) {
                    int PROBE_START_LINE_798 = 800;
					if (!FOR_STMT_TOGGLE_LINE_797) {
						FOR_STMT_TOGGLE_LINE_797 = true;
						int v_i_start_880_line_797 = iStart;
						i = v_i_start_880_line_797;
					} else {
						if (FOR_STMT_TOGGLE_LINE_797) {
							++i;
						} else {
							FOR_STMT_TOGGLE_LINE_797 = true;
						}
					}
					int v_i_889_line_797 = i;
					int v_i_end_881_line_797 = iEnd;
					boolean block_field_matrix_1_expr122_line_797 = v_i_889_line_797 < v_i_end_881_line_797;
					if (!(block_field_matrix_1_expr122_line_797)) {
						break;
					}
					T[][] p_sub_matrix_866_line_798 = subMatrix;
					int v_i_889_line_798 = i;
					int p_row_867_line_798 = row;
					int block_field_matrix_1_expr128_line_798 = v_i_889_line_798 - p_row_867_line_798;
					T[] block_field_matrix_1_expr125_line_798 = p_sub_matrix_866_line_798[block_field_matrix_1_expr128_line_798];
					int v_j_start_885_line_798 = jStart;
					int p_column_868_line_798 = column;
					int block_field_matrix_1_expr126_line_798 = v_j_start_885_line_798 - p_column_868_line_798;
					int PROBE_END_LINE_798 = 800;
					System.arraycopy(block_field_matrix_1_expr125_line_798, block_field_matrix_1_expr126_line_798,
                                     block, (i - firstRow) * jWidth + (jStart - firstColumn),
                                     jLength);
                }

            }
        }
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> getRowMatrix(final int row) {
        checkRowIndex(row);
        final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), 1, columns);

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock  = row / BLOCK_SIZE;
        final int iRow    = row - iBlock * BLOCK_SIZE;
        int outBlockIndex = 0;
        int outIndex      = 0;
        T[] outBlock = out.blocks[outBlockIndex];
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth     = blockWidth(jBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
            final int available  = outBlock.length - outIndex;
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
    public void setRowMatrix(final int row, final FieldMatrix<T> matrix) {
        try {
            setRowMatrix(row, (BlockFieldMatrix<T>) matrix);
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
     * @throws org.apache.commons.math.exception.OutOfRangeException if the
     * specified row index is invalid.
     * @throws MatrixDimensionMismatchException if the matrix dimensions do
     * not match one instance row.
     */
    public void setRowMatrix(final int row, final BlockFieldMatrix<T> matrix) {
        checkRowIndex(row);
        final int nCols = getColumnDimension();
        if ((matrix.getRowDimension() != 1) ||
            (matrix.getColumnDimension() != nCols)) {
            throw new MatrixDimensionMismatchException(matrix.getRowDimension(),
                                                       matrix.getColumnDimension(),
                                                       1, nCols);
        }

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock = row / BLOCK_SIZE;
        final int iRow   = row - iBlock * BLOCK_SIZE;
        int mBlockIndex  = 0;
        int mIndex       = 0;
        T[] mBlock  = matrix.blocks[mBlockIndex];
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth     = blockWidth(jBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
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
    public FieldMatrix<T> getColumnMatrix(final int column) {
        checkColumnIndex(column);
        final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), rows, 1);

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock  = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth  = blockWidth(jBlock);
        int outBlockIndex = 0;
        int outIndex      = 0;
        T[] outBlock = out.blocks[outBlockIndex];
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
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
    public void setColumnMatrix(final int column, final FieldMatrix<T> matrix) {
        try {
            setColumnMatrix(column, (BlockFieldMatrix<T>) matrix);
        } catch (ClassCastException cce) {
            super.setColumnMatrix(column, matrix);
        }
    }

    /**
     * Sets the entries in column number {@code column}
     * as a column matrix.  Column indices start at 0.
     *
     * @param column Column to be set.
     * @param matrix Column matrix (must have one column and the same number of rows
     * as the instance).
     * @throws org.apache.commons.math.exception.OutOfRangeException if
     * the specified column index is invalid.
     * @throws MatrixDimensionMismatchException if the matrix dimensions do
     * not match one instance column.
     */
    void setColumnMatrix(final int column, final BlockFieldMatrix<T> matrix) {
        checkColumnIndex(column);
        final int nRows = getRowDimension();
        if ((matrix.getRowDimension() != nRows) ||
            (matrix.getColumnDimension() != 1)) {
            throw new MatrixDimensionMismatchException(matrix.getRowDimension(),
                                                       matrix.getColumnDimension(),
                                                       nRows, 1);
        }

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock  = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth  = blockWidth(jBlock);
        int mBlockIndex = 0;
        int mIndex      = 0;
        T[] mBlock = matrix.blocks[mBlockIndex];
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
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
    public FieldVector<T> getRowVector(final int row) {
        checkRowIndex(row);
        final T[] outData = buildArray(getField(), columns);

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock  = row / BLOCK_SIZE;
        final int iRow    = row - iBlock * BLOCK_SIZE;
        int outIndex      = 0;
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth     = blockWidth(jBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
            System.arraycopy(block, iRow * jWidth, outData, outIndex, jWidth);
            outIndex += jWidth;
        }

        return new ArrayFieldVector<T>(getField(), outData, false);
    }

    /** {@inheritDoc} */
    @Override
    public void setRowVector(final int row, final FieldVector<T> vector) {
        try {
            setRow(row, ((ArrayFieldVector<T>) vector).getDataRef());
        } catch (ClassCastException cce) {
            super.setRowVector(row, vector);
        }
    }

    /** {@inheritDoc} */
    @Override
    public FieldVector<T> getColumnVector(final int column) {
        checkColumnIndex(column);
        final T[] outData = buildArray(getField(), rows);

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock  = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth  = blockWidth(jBlock);
        int outIndex      = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
            for (int i = 0; i < iHeight; ++i) {
                outData[outIndex++] = block[i * jWidth + jColumn];
            }
        }

        return new ArrayFieldVector<T>(getField(), outData, false);
    }

    /** {@inheritDoc} */
    @Override
    public void setColumnVector(final int column, final FieldVector<T> vector) {
        try {
            setColumn(column, ((ArrayFieldVector<T>) vector).getDataRef());
        } catch (ClassCastException cce) {
            super.setColumnVector(column, vector);
        }
    }

    /** {@inheritDoc} */
    @Override
    public T[] getRow(final int row) {
        checkRowIndex(row);
        final T[] out = buildArray(getField(), columns);

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock  = row / BLOCK_SIZE;
        final int iRow    = row - iBlock * BLOCK_SIZE;
        int outIndex      = 0;
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth     = blockWidth(jBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
            System.arraycopy(block, iRow * jWidth, out, outIndex, jWidth);
            outIndex += jWidth;
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public void setRow(final int row, final T[] array) {
        checkRowIndex(row);
        final int nCols = getColumnDimension();
        if (array.length != nCols) {
            throw new MatrixDimensionMismatchException(1, array.length, 1, nCols);
        }

        // perform copy block-wise, to ensure good cache behavior
        final int iBlock  = row / BLOCK_SIZE;
        final int iRow    = row - iBlock * BLOCK_SIZE;
        int outIndex      = 0;
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth     = blockWidth(jBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
            System.arraycopy(array, outIndex, block, iRow * jWidth, jWidth);
            outIndex += jWidth;
        }
    }

    /** {@inheritDoc} */
    @Override
    public T[] getColumn(final int column) {
        checkColumnIndex(column);
        final T[] out = buildArray(getField(), rows);

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock  = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth  = blockWidth(jBlock);
        int outIndex      = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
            for (int i = 0; i < iHeight; ++i) {
                out[outIndex++] = block[i * jWidth + jColumn];
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public void setColumn(final int column, final T[] array) {
        checkColumnIndex(column);
        final int nRows = getRowDimension();
        if (array.length != nRows) {
            throw new MatrixDimensionMismatchException(array.length, 1, nRows, 1);
        }

        // perform copy block-wise, to ensure good cache behavior
        final int jBlock  = column / BLOCK_SIZE;
        final int jColumn = column - jBlock * BLOCK_SIZE;
        final int jWidth  = blockWidth(jBlock);
        int outIndex      = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int iHeight = blockHeight(iBlock);
            final T[] block = blocks[iBlock * blockColumns + jBlock];
            for (int i = 0; i < iHeight; ++i) {
                block[i * jWidth + jColumn] = array[outIndex++];
            }
        }
    }

    /** {@inheritDoc} */
    @Override
    public T getEntry(final int row, final int column) {
        int PROBE_START_LINE_1122 = 1122;
		int p_row_912_line_1122 = row;
		int PROBE_END_LINE_1122 = 1122;
		checkRowIndex(p_row_912_line_1122);
        int PROBE_START_LINE_1123 = 1123;
		int p_column_913_line_1123 = column;
		int PROBE_END_LINE_1123 = 1123;
		checkColumnIndex(p_column_913_line_1123);

        int PROBE_START_LINE_1125 = 1125;
		int p_row_912_line_1125 = row;
		int f_block_size_811_line_1125 = BLOCK_SIZE;
		int block_field_matrix_1_expr131_line_1125 = p_row_912_line_1125 / f_block_size_811_line_1125;
		int PROBE_END_LINE_1125 = 1125;
		final int iBlock = block_field_matrix_1_expr131_line_1125;
        int PROBE_START_LINE_1126 = 1126;
		int p_column_913_line_1126 = column;
		int f_block_size_811_line_1126 = BLOCK_SIZE;
		int block_field_matrix_1_expr132_line_1126 = p_column_913_line_1126 / f_block_size_811_line_1126;
		int PROBE_END_LINE_1126 = 1126;
		final int jBlock = block_field_matrix_1_expr132_line_1126;
        int PROBE_START_LINE_1127 = 1128;
		int p_row_912_line_1127 = row;
		int v_i_block_914_line_1127 = iBlock;
		int f_block_size_811_line_1127 = BLOCK_SIZE;
		int block_field_matrix_1_expr137_line_1127 = v_i_block_914_line_1127 * f_block_size_811_line_1127;
		int block_field_matrix_1_expr136_line_1127 = p_row_912_line_1127 - block_field_matrix_1_expr137_line_1127;
		int block_field_matrix_1_expr135_line_1127 = (block_field_matrix_1_expr136_line_1127);
		int v_j_block_915_line_1127 = jBlock;
		int block_field_matrix_1_expr138_line_1127 = blockWidth(v_j_block_915_line_1127);
		int block_field_matrix_1_expr134_line_1127 = block_field_matrix_1_expr135_line_1127
				* block_field_matrix_1_expr138_line_1127;
		int block_field_matrix_1_expr133_line_1127 = block_field_matrix_1_expr134_line_1127
				+ (column - jBlock * BLOCK_SIZE);
		int PROBE_END_LINE_1127 = 1128;
		final int k      = block_field_matrix_1_expr133_line_1127;

        int PROBE_START_LINE_1130 = 1130;
		T[][] f_blocks_813_line_1130 = blocks;
		int v_i_block_914_line_1130 = iBlock;
		int f_block_columns_812_line_1130 = blockColumns;
		int block_field_matrix_1_expr142_line_1130 = v_i_block_914_line_1130 * f_block_columns_812_line_1130;
		int v_j_block_915_line_1130 = jBlock;
		int block_field_matrix_1_expr141_line_1130 = block_field_matrix_1_expr142_line_1130 + v_j_block_915_line_1130;
		T[] block_field_matrix_1_expr140_line_1130 = f_blocks_813_line_1130[block_field_matrix_1_expr141_line_1130];
		int v_k_916_line_1130 = k;
		T block_field_matrix_1_expr139_line_1130 = block_field_matrix_1_expr140_line_1130[v_k_916_line_1130];
		int PROBE_END_LINE_1130 = 1130;
		return block_field_matrix_1_expr139_line_1130;
    }

    /** {@inheritDoc} */
    @Override
    public void setEntry(final int row, final int column, final T value) {
        checkRowIndex(row);
        checkColumnIndex(column);

        final int iBlock = row    / BLOCK_SIZE;
        final int jBlock = column / BLOCK_SIZE;
        final int k      = (row    - iBlock * BLOCK_SIZE) * blockWidth(jBlock) +
            (column - jBlock * BLOCK_SIZE);

        blocks[iBlock * blockColumns + jBlock][k] = value;
    }

    /** {@inheritDoc} */
    @Override
    public void addToEntry(final int row, final int column, final T increment) {
        checkRowIndex(row);
        checkColumnIndex(column);

        final int iBlock = row    / BLOCK_SIZE;
        final int jBlock = column / BLOCK_SIZE;
        final int k      = (row    - iBlock * BLOCK_SIZE) * blockWidth(jBlock) +
            (column - jBlock * BLOCK_SIZE);
        final T[] blockIJ = blocks[iBlock * blockColumns + jBlock];

        blockIJ[k] = blockIJ[k].add(increment);
    }

    /** {@inheritDoc} */
    @Override
    public void multiplyEntry(final int row, final int column, final T factor) {
        checkRowIndex(row);
        checkColumnIndex(column);

        final int iBlock = row    / BLOCK_SIZE;
        final int jBlock = column / BLOCK_SIZE;
        final int k      = (row    - iBlock * BLOCK_SIZE) * blockWidth(jBlock) +
            (column - jBlock * BLOCK_SIZE);
        final T[] blockIJ = blocks[iBlock * blockColumns + jBlock];

        blockIJ[k] = blockIJ[k].multiply(factor);
    }

    /** {@inheritDoc} */
    @Override
    public FieldMatrix<T> transpose() {
        final int nRows = getRowDimension();
        final int nCols = getColumnDimension();
        final BlockFieldMatrix<T> out = new BlockFieldMatrix<T>(getField(), nCols, nRows);

        // perform transpose block-wise, to ensure good cache behavior
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < blockColumns; ++iBlock) {
            for (int jBlock = 0; jBlock < blockRows; ++jBlock) {

                // transpose current block
                final T[] outBlock = out.blocks[blockIndex];
                final T[] tBlock   = blocks[jBlock * blockColumns + iBlock];
                final int      pStart   = iBlock * BLOCK_SIZE;
                final int      pEnd     = FastMath.min(pStart + BLOCK_SIZE, columns);
                final int      qStart   = jBlock * BLOCK_SIZE;
                final int      qEnd     = FastMath.min(qStart + BLOCK_SIZE, rows);
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
        int PROBE_START_LINE_1219 = 1219;
		int f_rows_808_line_1219 = rows;
		int PROBE_END_LINE_1219 = 1219;
		return f_rows_808_line_1219;
    }

    /** {@inheritDoc} */
    @Override
    public int getColumnDimension() {
        int PROBE_START_LINE_1225 = 1225;
		int f_columns_809_line_1225 = columns;
		int PROBE_END_LINE_1225 = 1225;
		return f_columns_809_line_1225;
    }

    /** {@inheritDoc} */
    @Override
    public T[] operate(final T[] v) {
        if (v.length != columns) {
            throw new DimensionMismatchException(v.length, columns);
        }
        final T[] out = buildArray(getField(), rows);
        final T zero = getField().getZero();

        // perform multiplication block-wise, to ensure good cache behavior
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                final T[] block  = blocks[iBlock * blockColumns + jBlock];
                final int      qStart = jBlock * BLOCK_SIZE;
                final int      qEnd   = FastMath.min(qStart + BLOCK_SIZE, columns);
                int k = 0;
                for (int p = pStart; p < pEnd; ++p) {
                    T sum = zero;
                    int q = qStart;
                    while (q < qEnd - 3) {
                        sum = sum.
                              add(block[k].multiply(v[q])).
                              add(block[k + 1].multiply(v[q + 1])).
                              add(block[k + 2].multiply(v[q + 2])).
                              add(block[k + 3].multiply(v[q + 3]));
                        k += 4;
                        q += 4;
                    }
                    while (q < qEnd) {
                        sum = sum.add(block[k++].multiply(v[q++]));
                    }
                    out[p] = out[p].add(sum);
                }
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public T[] preMultiply(final T[] v) {

        if (v.length != rows) {
            throw new DimensionMismatchException(v.length, rows);
        }
        final T[] out = buildArray(getField(), columns);
        final T zero = getField().getZero();

        // perform multiplication block-wise, to ensure good cache behavior
        for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
            final int jWidth  = blockWidth(jBlock);
            final int jWidth2 = jWidth  + jWidth;
            final int jWidth3 = jWidth2 + jWidth;
            final int jWidth4 = jWidth3 + jWidth;
            final int qStart = jBlock * BLOCK_SIZE;
            final int qEnd   = FastMath.min(qStart + BLOCK_SIZE, columns);
            for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
                final T[] block  = blocks[iBlock * blockColumns + jBlock];
                final int      pStart = iBlock * BLOCK_SIZE;
                final int      pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);
                for (int q = qStart; q < qEnd; ++q) {
                    int k = q - qStart;
                    T sum = zero;
                    int p = pStart;
                    while (p < pEnd - 3) {
                        sum = sum.
                              add(block[k].multiply(v[p])).
                              add(block[k + jWidth].multiply(v[p + 1])).
                              add(block[k + jWidth2].multiply(v[p + 2])).
                              add(block[k + jWidth3].multiply(v[p + 3]));
                        k += jWidth4;
                        p += 4;
                    }
                    while (p < pEnd) {
                        sum = sum.add(block[k].multiply(v[p++]));
                        k += jWidth;
                    }
                    out[q] = out[q].add(sum);
                }
            }
        }

        return out;
    }

    /** {@inheritDoc} */
    @Override
    public T walkInRowOrder(final FieldMatrixChangingVisitor<T> visitor) {
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int p = pStart; p < pEnd; ++p) {
                for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                    final int jWidth = blockWidth(jBlock);
                    final int qStart = jBlock * BLOCK_SIZE;
                    final int qEnd   = FastMath.min(qStart + BLOCK_SIZE, columns);
                    final T[] block = blocks[iBlock * blockColumns + jBlock];
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
    public T walkInRowOrder(final FieldMatrixPreservingVisitor<T> visitor) {
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int p = pStart; p < pEnd; ++p) {
                for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                    final int jWidth = blockWidth(jBlock);
                    final int qStart = jBlock * BLOCK_SIZE;
                    final int qEnd   = FastMath.min(qStart + BLOCK_SIZE, columns);
                    final T[] block = blocks[iBlock * blockColumns + jBlock];
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
    public T walkInRowOrder(final FieldMatrixChangingVisitor<T> visitor,
                            final int startRow, final int endRow,
                            final int startColumn, final int endColumn) {
        checkSubMatrixIndex(startRow, endRow, startColumn, endColumn);
        visitor.start(rows, columns, startRow, endRow, startColumn, endColumn);
        for (int iBlock = startRow / BLOCK_SIZE; iBlock < 1 + endRow / BLOCK_SIZE; ++iBlock) {
            final int p0     = iBlock * BLOCK_SIZE;
            final int pStart = FastMath.max(startRow, p0);
            final int pEnd   = FastMath.min((iBlock + 1) * BLOCK_SIZE, 1 + endRow);
            for (int p = pStart; p < pEnd; ++p) {
                for (int jBlock = startColumn / BLOCK_SIZE; jBlock < 1 + endColumn / BLOCK_SIZE; ++jBlock) {
                    final int jWidth = blockWidth(jBlock);
                    final int q0     = jBlock * BLOCK_SIZE;
                    final int qStart = FastMath.max(startColumn, q0);
                    final int qEnd   = FastMath.min((jBlock + 1) * BLOCK_SIZE, 1 + endColumn);
                    final T[] block = blocks[iBlock * blockColumns + jBlock];
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
    public T walkInRowOrder(final FieldMatrixPreservingVisitor<T> visitor,
                            final int startRow, final int endRow,
                            final int startColumn, final int endColumn) {
        checkSubMatrixIndex(startRow, endRow, startColumn, endColumn);
        visitor.start(rows, columns, startRow, endRow, startColumn, endColumn);
        for (int iBlock = startRow / BLOCK_SIZE; iBlock < 1 + endRow / BLOCK_SIZE; ++iBlock) {
            final int p0     = iBlock * BLOCK_SIZE;
            final int pStart = FastMath.max(startRow, p0);
            final int pEnd   = FastMath.min((iBlock + 1) * BLOCK_SIZE, 1 + endRow);
            for (int p = pStart; p < pEnd; ++p) {
                for (int jBlock = startColumn / BLOCK_SIZE; jBlock < 1 + endColumn / BLOCK_SIZE; ++jBlock) {
                    final int jWidth = blockWidth(jBlock);
                    final int q0     = jBlock * BLOCK_SIZE;
                    final int qStart = FastMath.max(startColumn, q0);
                    final int qEnd   = FastMath.min((jBlock + 1) * BLOCK_SIZE, 1 + endColumn);
                    final T[] block = blocks[iBlock * blockColumns + jBlock];
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
    public T walkInOptimizedOrder(final FieldMatrixChangingVisitor<T> visitor) {
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                final int qStart = jBlock * BLOCK_SIZE;
                final int qEnd   = FastMath.min(qStart + BLOCK_SIZE, columns);
                final T[] block = blocks[blockIndex];
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
    public T walkInOptimizedOrder(final FieldMatrixPreservingVisitor<T> visitor) {
        visitor.start(rows, columns, 0, rows - 1, 0, columns - 1);
        int blockIndex = 0;
        for (int iBlock = 0; iBlock < blockRows; ++iBlock) {
            final int pStart = iBlock * BLOCK_SIZE;
            final int pEnd   = FastMath.min(pStart + BLOCK_SIZE, rows);
            for (int jBlock = 0; jBlock < blockColumns; ++jBlock) {
                final int qStart = jBlock * BLOCK_SIZE;
                final int qEnd   = FastMath.min(qStart + BLOCK_SIZE, columns);
                final T[] block = blocks[blockIndex];
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
    public T walkInOptimizedOrder(final FieldMatrixChangingVisitor<T> visitor,
                                       final int startRow, final int endRow,
                                       final int startColumn, final int endColumn) {
        checkSubMatrixIndex(startRow, endRow, startColumn, endColumn);
        visitor.start(rows, columns, startRow, endRow, startColumn, endColumn);
        for (int iBlock = startRow / BLOCK_SIZE; iBlock < 1 + endRow / BLOCK_SIZE; ++iBlock) {
            final int p0     = iBlock * BLOCK_SIZE;
            final int pStart = FastMath.max(startRow, p0);
            final int pEnd   = FastMath.min((iBlock + 1) * BLOCK_SIZE, 1 + endRow);
            for (int jBlock = startColumn / BLOCK_SIZE; jBlock < 1 + endColumn / BLOCK_SIZE; ++jBlock) {
                final int jWidth = blockWidth(jBlock);
                final int q0     = jBlock * BLOCK_SIZE;
                final int qStart = FastMath.max(startColumn, q0);
                final int qEnd   = FastMath.min((jBlock + 1) * BLOCK_SIZE, 1 + endColumn);
                final T[] block = blocks[iBlock * blockColumns + jBlock];
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
    public T walkInOptimizedOrder(final FieldMatrixPreservingVisitor<T> visitor,
                                       final int startRow, final int endRow,
                                       final int startColumn, final int endColumn) {
        checkSubMatrixIndex(startRow, endRow, startColumn, endColumn);
        visitor.start(rows, columns, startRow, endRow, startColumn, endColumn);
        for (int iBlock = startRow / BLOCK_SIZE; iBlock < 1 + endRow / BLOCK_SIZE; ++iBlock) {
            final int p0     = iBlock * BLOCK_SIZE;
            final int pStart = FastMath.max(startRow, p0);
            final int pEnd   = FastMath.min((iBlock + 1) * BLOCK_SIZE, 1 + endRow);
            for (int jBlock = startColumn / BLOCK_SIZE; jBlock < 1 + endColumn / BLOCK_SIZE; ++jBlock) {
                final int jWidth = blockWidth(jBlock);
                final int q0     = jBlock * BLOCK_SIZE;
                final int qStart = FastMath.max(startColumn, q0);
                final int qEnd   = FastMath.min((jBlock + 1) * BLOCK_SIZE, 1 + endColumn);
                final T[] block = blocks[iBlock * blockColumns + jBlock];
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
        int PROBE_START_LINE_1536 = 1536;
		int p_block_row_952_line_1536 = blockRow;
		int f_block_rows_810_line_1536 = blockRows;
		int block_field_matrix_1_expr147_line_1536 = f_block_rows_810_line_1536 - 1;
		boolean block_field_matrix_1_expr146_line_1536 = p_block_row_952_line_1536 == block_field_matrix_1_expr147_line_1536;
		boolean block_field_matrix_1_expr144_line_1536 = (block_field_matrix_1_expr146_line_1536);
		int block_field_matrix_1_expr145_line_1536 = 0;
		int f_block_size_811_line_1536_v1 = 0;
		if (block_field_matrix_1_expr144_line_1536) {
			int f_rows_808_line_1536 = rows;
			int p_block_row_952_line_1536_v1 = blockRow;
			int f_block_size_811_line_1536 = BLOCK_SIZE;
			int block_field_matrix_1_expr148_line_1536 = p_block_row_952_line_1536_v1 * f_block_size_811_line_1536;
			block_field_matrix_1_expr145_line_1536 = f_rows_808_line_1536 - block_field_matrix_1_expr148_line_1536;
		} else {
			f_block_size_811_line_1536_v1 = BLOCK_SIZE;
		}
		int block_field_matrix_1_expr143_line_1536 = block_field_matrix_1_expr144_line_1536
				? block_field_matrix_1_expr145_line_1536
				: f_block_size_811_line_1536_v1;
		int PROBE_END_LINE_1536 = 1536;
		return block_field_matrix_1_expr143_line_1536;
    }

    /**
     * Get the width of a block.
     * @param blockColumn column index (in block sense) of the block
     * @return width (number of columns) of the block
     */
    private int blockWidth(final int blockColumn) {
        int PROBE_START_LINE_1545 = 1545;
		int p_block_column_953_line_1545 = blockColumn;
		int f_block_columns_812_line_1545 = blockColumns;
		int block_field_matrix_1_expr153_line_1545 = f_block_columns_812_line_1545 - 1;
		boolean block_field_matrix_1_expr152_line_1545 = p_block_column_953_line_1545 == block_field_matrix_1_expr153_line_1545;
		boolean block_field_matrix_1_expr150_line_1545 = (block_field_matrix_1_expr152_line_1545);
		int block_field_matrix_1_expr151_line_1545 = 0;
		int f_block_size_811_line_1545_v1 = 0;
		if (block_field_matrix_1_expr150_line_1545) {
			int f_columns_809_line_1545 = columns;
			int p_block_column_953_line_1545_v1 = blockColumn;
			int f_block_size_811_line_1545 = BLOCK_SIZE;
			int block_field_matrix_1_expr154_line_1545 = p_block_column_953_line_1545_v1 * f_block_size_811_line_1545;
			block_field_matrix_1_expr151_line_1545 = f_columns_809_line_1545 - block_field_matrix_1_expr154_line_1545;
		} else {
			f_block_size_811_line_1545_v1 = BLOCK_SIZE;
		}
		int block_field_matrix_1_expr149_line_1545 = block_field_matrix_1_expr150_line_1545
				? block_field_matrix_1_expr151_line_1545
				: f_block_size_811_line_1545_v1;
		int PROBE_END_LINE_1545 = 1545;
		return block_field_matrix_1_expr149_line_1545;
    }
}
