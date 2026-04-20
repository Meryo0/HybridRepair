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
package org.apache.commons.io.output;

import static org.apache.commons.io.IOUtils.EOF;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.apache.commons.io.input.ClosedInputStream;

/**
 * This is the base class for implementing an output stream in which the data
 * is written into a byte array. The buffer automatically grows as data
 * is written to it.
 * <p>
 * The data can be retrieved using {@code toByteArray()} and
 * {@code toString()}.
 * Closing an {@link AbstractByteArrayOutputStream} has no effect. The methods in
 * this class can be called after the stream has been closed without
 * generating an {@link IOException}.
 * </p>
 * <p>
 * This is the base for an alternative implementation of the
 * {@link java.io.ByteArrayOutputStream} class. The original implementation
 * only allocates 32 bytes at the beginning. As this class is designed for
 * heavy duty it starts at {@value #DEFAULT_SIZE} bytes. In contrast to the original it doesn't
 * reallocate the whole memory block but allocates additional buffers. This
 * way no buffers need to be garbage collected and the contents don't have
 * to be copied to the new buffer. This class is designed to behave exactly
 * like the original. The only exception is the deprecated
 * {@link java.io.ByteArrayOutputStream#toString(int)} method that has been
 * ignored.
 * </p>
 *
 * @since 2.7
 */
public abstract class AbstractByteArrayOutputStream extends OutputStream {

    /**
     * Constructor for an InputStream subclass.
     *
     * @param <T> the type of the InputStream.
     */
    @FunctionalInterface
    protected interface InputStreamConstructor<T extends InputStream> {

        /**
         * Constructs an InputStream subclass.
         *
         * @param buffer the buffer
         * @param offset the offset into the buffer
         * @param length the length of the buffer
         *
         * @return the InputStream subclass.
         */
        T construct(final byte[] buffer, final int offset, final int length);
    }

    static final int DEFAULT_SIZE = 1024;

    /** The list of buffers, which grows and never reduces. */
    private final List<byte[]> buffers = new ArrayList<>();

    /** The index of the current buffer. */
    private int currentBufferIndex;

    /** The total count of bytes in all the filled buffers. */
    private int filledBufferSum;

    /** The current buffer. */
    private byte[] currentBuffer;

    /** The total count of bytes written. */
    protected int count;

    /** Flag to indicate if the buffers can be reused after reset */
    private boolean reuseBuffers = true;

    /**
     * Does nothing.
     *
     * The methods in this class can be called after the stream has been closed without generating an {@link IOException}.
     *
     * @throws IOException never (this method should not declare this exception but it has to now due to backwards
     *         compatibility)
     */
    @Override
    public void close() throws IOException {
        //nop
    }

    /**
     * Makes a new buffer available either by allocating
     * a new one or re-cycling an existing one.
     *
     * @param newCount  the size of the buffer if one is created
     */
    protected void needNewBuffer(final int newCount) {
        int PROBE_START_LINE_122 = 142;
		int f_current_buffer_index_404_line_122 = currentBufferIndex;
		List<byte[]> f_buffers_401_line_122 = buffers;
		int abstract_byte_array_output_stream_1_expr4_line_122 = f_buffers_401_line_122.size();
		int abstract_byte_array_output_stream_1_expr3_line_122 = abstract_byte_array_output_stream_1_expr4_line_122 - 1;
		boolean abstract_byte_array_output_stream_1_expr2_line_122 = f_current_buffer_index_404_line_122 < abstract_byte_array_output_stream_1_expr3_line_122;
		int PROBE_END_LINE_122 = 142;
		if (abstract_byte_array_output_stream_1_expr2_line_122) {
            // Recycling old buffer
            filledBufferSum += currentBuffer.length;

            currentBufferIndex++;
            currentBuffer = buffers.get(currentBufferIndex);
        } else {
            // Creating new buffer
            final int newBufferSize;
            int PROBE_START_LINE_131 = 137;
			byte[] f_current_buffer_405_line_131 = currentBuffer;
			boolean abstract_byte_array_output_stream_1_expr5_line_131 = f_current_buffer_405_line_131 == null;
			int PROBE_END_LINE_131 = 137;
			if (abstract_byte_array_output_stream_1_expr5_line_131) {
                int PROBE_START_LINE_132 = 132;
				int p_new_count_403_line_132 = newCount;
				int PROBE_END_LINE_132 = 132;
				newBufferSize = p_new_count_403_line_132;
                filledBufferSum = 0;
            } else {
                newBufferSize = Math.max(currentBuffer.length << 1, newCount - filledBufferSum);
                filledBufferSum += currentBuffer.length;
            }

            currentBufferIndex++;
            int PROBE_START_LINE_140 = 140;
			int v_new_buffer_size_406_line_140 = newBufferSize;
			byte[] abstract_byte_array_output_stream_1_expr10_line_140 = IOUtils
					.byteArray(v_new_buffer_size_406_line_140);
			int PROBE_END_LINE_140 = 140;
			currentBuffer = abstract_byte_array_output_stream_1_expr10_line_140;
            int PROBE_START_LINE_141 = 141;
			List<byte[]> f_buffers_401_line_141 = buffers;
			byte[] f_current_buffer_405_line_141 = currentBuffer;
			int PROBE_END_LINE_141 = 141;
			f_buffers_401_line_141.add(f_current_buffer_405_line_141);
        }
    }

    /**
     * @see java.io.ByteArrayOutputStream#reset()
     */
    public abstract void reset();

    /**
     * @see java.io.ByteArrayOutputStream#reset()
     */
    protected void resetImpl() {
        count = 0;
        filledBufferSum = 0;
        currentBufferIndex = 0;
        if (reuseBuffers) {
            currentBuffer = buffers.get(currentBufferIndex);
        } else {
            //Throw away old buffers
            currentBuffer = null;
            final int size = buffers.get(0).length;
            buffers.clear();
            needNewBuffer(size);
            reuseBuffers = true;
        }
    }

    /**
     * Returns the current size of the byte array.
     *
     * @return the current size of the byte array
     */
    public abstract int size();

    /**
     * Gets the current contents of this byte stream as a byte array.
     * The result is independent of this stream.
     *
     * @return the current contents of this output stream, as a byte array
     * @see java.io.ByteArrayOutputStream#toByteArray()
     */
    public abstract byte[] toByteArray();

    /**
     * Gets the current contents of this byte stream as a byte array.
     * The result is independent of this stream.
     *
     * @return the current contents of this output stream, as a byte array
     * @see java.io.ByteArrayOutputStream#toByteArray()
     */
    protected byte[] toByteArrayImpl() {
        int PROBE_START_LINE_193 = 193;
		int f_count_409_line_193 = count;
		int PROBE_END_LINE_193 = 193;
		int remaining = f_count_409_line_193;
        int PROBE_START_LINE_194 = 196;
		int v_remaining_408_line_194 = remaining;
		boolean abstract_byte_array_output_stream_1_expr12_line_194 = v_remaining_408_line_194 == 0;
		int PROBE_END_LINE_194 = 196;
		if (abstract_byte_array_output_stream_1_expr12_line_194) {
            return IOUtils.EMPTY_BYTE_ARRAY;
        }
        int PROBE_START_LINE_197 = 197;
		int v_remaining_408_line_197 = remaining;
		byte[] abstract_byte_array_output_stream_1_expr13_line_197 = IOUtils.byteArray(v_remaining_408_line_197);
		int PROBE_END_LINE_197 = 197;
		final byte[] newBuf = abstract_byte_array_output_stream_1_expr13_line_197;
        int pos = 0;
        int PROBE_START_LINE_199 = 207;
		List<byte[]> f_buffers_401_line_199 = buffers;
		int PROBE_END_LINE_199 = 207;
		for (final byte[] buf : f_buffers_401_line_199) {
            int PROBE_START_LINE_200 = 200;
			byte[] v_buf_412_line_200 = buf;
			int q_length_6_line_200 = v_buf_412_line_200.length;
			int v_remaining_408_line_200 = remaining;
			int abstract_byte_array_output_stream_1_expr14_line_200 = Math.min(q_length_6_line_200,
					v_remaining_408_line_200);
			int PROBE_END_LINE_200 = 200;
			final int c = abstract_byte_array_output_stream_1_expr14_line_200;
            int PROBE_START_LINE_201 = 201;
			byte[] v_buf_412_line_201 = buf;
			byte[] v_new_buf_410_line_201 = newBuf;
			int v_pos_411_line_201 = pos;
			int v_c_413_line_201 = c;
			int PROBE_END_LINE_201 = 201;
			System.arraycopy(v_buf_412_line_201, 0, v_new_buf_410_line_201, v_pos_411_line_201, v_c_413_line_201);
            int PROBE_START_LINE_202 = 202;
			int v_c_413_line_202 = c;
			int PROBE_END_LINE_202 = 202;
			pos += v_c_413_line_202;
            int PROBE_START_LINE_203 = 203;
			int v_c_413_line_203 = c;
			int PROBE_END_LINE_203 = 203;
			remaining -= v_c_413_line_203;
            int PROBE_START_LINE_204 = 206;
			int v_remaining_408_line_204 = remaining;
			boolean abstract_byte_array_output_stream_1_expr18_line_204 = v_remaining_408_line_204 == 0;
			int PROBE_END_LINE_204 = 206;
			if (abstract_byte_array_output_stream_1_expr18_line_204) {
                break;
            }
        }
        int PROBE_START_LINE_208 = 208;
		byte[] v_new_buf_410_line_208 = newBuf;
		int PROBE_END_LINE_208 = 208;
		return v_new_buf_410_line_208;
    }

    /**
     * Gets the current contents of this byte stream as an Input Stream. The
     * returned stream is backed by buffers of {@code this} stream,
     * avoiding memory allocation and copy, thus saving space and time.<br>
     *
     * @return the current contents of this output stream.
     * @see java.io.ByteArrayOutputStream#toByteArray()
     * @see #reset()
     * @since 2.5
     */
    public abstract InputStream toInputStream();

    /**
     * Gets the current contents of this byte stream as an Input Stream. The
     * returned stream is backed by buffers of {@code this} stream,
     * avoiding memory allocation and copy, thus saving space and time.<br>
     *
     * @param <T> the type of the InputStream which makes up
     *            the {@link SequenceInputStream}.
     * @param isConstructor A constructor for an InputStream which makes
     *                     up the {@link SequenceInputStream}.
     *
     * @return the current contents of this output stream.
     * @see java.io.ByteArrayOutputStream#toByteArray()
     * @see #reset()
     * @since 2.7
     */
    @SuppressWarnings("resource") // The result InputStream MUST be managed by the call site.
    protected <T extends InputStream> InputStream toInputStream(final InputStreamConstructor<T> isConstructor) {
        int remaining = count;
        if (remaining == 0) {
            return ClosedInputStream.INSTANCE;
        }
        final List<T> list = new ArrayList<>(buffers.size());
        for (final byte[] buf : buffers) {
            final int c = Math.min(buf.length, remaining);
            list.add(isConstructor.construct(buf, 0, c));
            remaining -= c;
            if (remaining == 0) {
                break;
            }
        }
        reuseBuffers = false;
        return new SequenceInputStream(Collections.enumeration(list));
    }

    /**
     * Gets the current contents of this byte stream as a string
     * using the platform default charset.
     * @return the contents of the byte array as a String
     * @see java.io.ByteArrayOutputStream#toString()
     * @deprecated 2.5 use {@link #toString(String)} instead
     */
    @Override
    @Deprecated
    public String toString() {
        // make explicit the use of the default charset
        return new String(toByteArray(), Charset.defaultCharset());
    }

    /**
     * Gets the current contents of this byte stream as a string
     * using the specified encoding.
     *
     * @param charset  the character encoding
     * @return the string converted from the byte array
     * @see java.io.ByteArrayOutputStream#toString(String)
     * @since 2.5
     */
    public String toString(final Charset charset) {
        return new String(toByteArray(), charset);
    }

    /**
     * Gets the current contents of this byte stream as a string
     * using the specified encoding.
     *
     * @param enc  the name of the character encoding
     * @return the string converted from the byte array
     * @throws UnsupportedEncodingException if the encoding is not supported
     * @see java.io.ByteArrayOutputStream#toString(String)
     */
    public String toString(final String enc) throws UnsupportedEncodingException {
        return new String(toByteArray(), enc);
    }

    @Override
    public abstract void write(final byte[] b, final int off, final int len);

    /**
     * Writes the entire contents of the specified input stream to this
     * byte stream. Bytes from the input stream are read directly into the
     * internal buffer of this stream.
     *
     * @param in the input stream to read from
     * @return total number of bytes read from the input stream
     *         (and written to this stream)
     * @throws IOException if an I/O error occurs while reading the input stream
     * @since 1.4
     */
    public abstract int write(final InputStream in) throws IOException;

    @Override
    public abstract void write(final int b);

    /**
     * Writes the bytes to the byte array.
     * @param b the bytes to write
     * @param off The start offset
     * @param len The number of bytes to write
     */
    protected void writeImpl(final byte[] b, final int off, final int len) {
        int PROBE_START_LINE_323 = 323;
		int f_count_409_line_323 = count;
		int p_len_424_line_323 = len;
		int abstract_byte_array_output_stream_1_expr19_line_323 = f_count_409_line_323 + p_len_424_line_323;
		int PROBE_END_LINE_323 = 323;
		final int newCount = abstract_byte_array_output_stream_1_expr19_line_323;
        int PROBE_START_LINE_324 = 324;
		int p_len_424_line_324 = len;
		int PROBE_END_LINE_324 = 324;
		int remaining = p_len_424_line_324;
        int PROBE_START_LINE_325 = 325;
		int f_count_409_line_325 = count;
		int f_filled_buffer_sum_407_line_325 = filledBufferSum;
		int abstract_byte_array_output_stream_1_expr20_line_325 = f_count_409_line_325
				- f_filled_buffer_sum_407_line_325;
		int PROBE_END_LINE_325 = 325;
		int inBufferPos = abstract_byte_array_output_stream_1_expr20_line_325;
        while (true) {
            int PROBE_START_LINE_326 = 326;
			int v_remaining_426_line_326 = remaining;
			boolean abstract_byte_array_output_stream_1_expr21_line_326 = v_remaining_426_line_326 > 0;
			if (!(abstract_byte_array_output_stream_1_expr21_line_326)) {
				break;
			}
			int PROBE_END_LINE_326 = 326;
			int PROBE_START_LINE_327 = 327;
			int v_remaining_426_line_327 = remaining;
			byte[] f_current_buffer_405_line_327 = currentBuffer;
			int q_length_7_line_327 = f_current_buffer_405_line_327.length;
			int v_in_buffer_pos_427_line_327 = inBufferPos;
			int abstract_byte_array_output_stream_1_expr23_line_327 = q_length_7_line_327
					- v_in_buffer_pos_427_line_327;
			int abstract_byte_array_output_stream_1_expr22_line_327 = Math.min(v_remaining_426_line_327,
					abstract_byte_array_output_stream_1_expr23_line_327);
			int PROBE_END_LINE_327 = 327;
			final int part = abstract_byte_array_output_stream_1_expr22_line_327;
            int PROBE_START_LINE_328 = 328;
			byte[] p_b_422_line_328 = b;
			int p_off_423_line_328 = off;
			int p_len_424_line_328 = len;
			int abstract_byte_array_output_stream_1_expr26_line_328 = p_off_423_line_328 + p_len_424_line_328;
			int v_remaining_426_line_328 = remaining;
			int abstract_byte_array_output_stream_1_expr25_line_328 = abstract_byte_array_output_stream_1_expr26_line_328
					- v_remaining_426_line_328;
			byte[] f_current_buffer_405_line_328 = currentBuffer;
			int v_in_buffer_pos_427_line_328 = inBufferPos;
			int v_part_428_line_328 = part;
			int PROBE_END_LINE_328 = 328;
			System.arraycopy(p_b_422_line_328, abstract_byte_array_output_stream_1_expr25_line_328, f_current_buffer_405_line_328, v_in_buffer_pos_427_line_328, v_part_428_line_328);
            int PROBE_START_LINE_329 = 329;
			int v_part_428_line_329 = part;
			int PROBE_END_LINE_329 = 329;
			remaining -= v_part_428_line_329;
            int PROBE_START_LINE_330 = 333;
			int v_remaining_426_line_330 = remaining;
			boolean abstract_byte_array_output_stream_1_expr28_line_330 = v_remaining_426_line_330 > 0;
			int PROBE_END_LINE_330 = 333;
			if (abstract_byte_array_output_stream_1_expr28_line_330) {
                needNewBuffer(newCount);
                inBufferPos = 0;
            }
        }
        int PROBE_START_LINE_335 = 335;
		int v_new_count_425_line_335 = newCount;
		int PROBE_END_LINE_335 = 335;
		count = v_new_count_425_line_335;
    }

    /**
     * Writes the entire contents of the specified input stream to this
     * byte stream. Bytes from the input stream are read directly into the
     * internal buffer of this stream.
     *
     * @param in the input stream to read from
     * @return total number of bytes read from the input stream
     *         (and written to this stream)
     * @throws IOException if an I/O error occurs while reading the input stream
     * @since 2.7
     */
    protected int writeImpl(final InputStream in) throws IOException {
        int readCount = 0;
        int inBufferPos = count - filledBufferSum;
        int n = in.read(currentBuffer, inBufferPos, currentBuffer.length - inBufferPos);
        while (n != EOF) {
            readCount += n;
            inBufferPos += n;
            count += n;
            if (inBufferPos == currentBuffer.length) {
                needNewBuffer(currentBuffer.length);
                inBufferPos = 0;
            }
            n = in.read(currentBuffer, inBufferPos, currentBuffer.length - inBufferPos);
        }
        return readCount;
    }

    /**
     * Write a byte to byte array.
     * @param b the byte to write
     */
    protected void writeImpl(final int b) {
        int inBufferPos = count - filledBufferSum;
        if (inBufferPos == currentBuffer.length) {
            needNewBuffer(count + 1);
            inBufferPos = 0;
        }
        currentBuffer[inBufferPos] = (byte) b;
        count++;
    }

    /**
     * Writes the entire contents of this byte stream to the
     * specified output stream.
     *
     * @param out  the output stream to write to
     * @throws IOException if an I/O error occurs, such as if the stream is closed
     * @see java.io.ByteArrayOutputStream#writeTo(OutputStream)
     */
    public abstract void writeTo(final OutputStream out) throws IOException;

    /**
     * Writes the entire contents of this byte stream to the
     * specified output stream.
     *
     * @param out  the output stream to write to
     * @throws IOException if an I/O error occurs, such as if the stream is closed
     * @see java.io.ByteArrayOutputStream#writeTo(OutputStream)
     */
    protected void writeToImpl(final OutputStream out) throws IOException {
        int remaining = count;
        for (final byte[] buf : buffers) {
            final int c = Math.min(buf.length, remaining);
            out.write(buf, 0, c);
            remaining -= c;
            if (remaining == 0) {
                break;
            }
        }
    }

}
