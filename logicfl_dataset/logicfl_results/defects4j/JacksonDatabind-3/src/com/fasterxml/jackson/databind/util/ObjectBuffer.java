package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.List;

/**
 * Helper class to use for constructing Object arrays by appending entries
 * to create arrays of various lengths (length that is not known a priori). 
 */
public final class ObjectBuffer
{
    // // // Config constants

    /**
     * Also: let's expand by doubling up until 64k chunks (which is 16k entries for
     * 32-bit machines)
     */
    private final static int SMALL_CHUNK = (1 << 14);

    /**
     * Let's limit maximum size of chunks we use; helps avoid excessive allocation
     * overhead for huge data sets.
     * For now, let's limit to quarter million entries, 1 meg chunks for 32-bit
     * machines.
     */
    private final static int MAX_CHUNK = (1 << 18);

    // // // Data storage

    private LinkedNode<Object[]> _head;

    private LinkedNode<Object[]> _tail;

    /**
     * Number of total buffered entries in this buffer, counting all instances
     * within linked list formed by following {@link #_head}.
     */
    private int _size;

    // // // Simple reuse

    /**
     * Reusable Object array, stored here after buffer has been released having
     * been used previously.
     */
    private Object[] _freeBuffer;

    /*
    /**********************************************************
    /* Construction
    /**********************************************************
     */

    public ObjectBuffer() { }

    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    /**
     * Method called to start buffering process. Will ensure that the buffer
     * is empty, and then return an object array to start chunking content on
     */
    public Object[] resetAndStart()
    {
        _reset();
        int PROBE_START_LINE_69 = 71;
		Object[] f__free_buffer_2710_line_69 = _freeBuffer;
		boolean object_buffer_1_expr2_line_69 = f__free_buffer_2710_line_69 == null;
		int PROBE_END_LINE_69 = 71;
		if (object_buffer_1_expr2_line_69) {
            return new Object[12];
        }
        return _freeBuffer;
    }

    /**
     * Method called to add a full Object array as a chunk buffered within
     * this buffer, and to obtain a new array to fill. Caller is not to use
     * the array it gives; but to use the returned array for continued
     * buffering.
     *
     * @param fullChunk Completed chunk that the caller is requesting
     *   to append to this buffer. It is generally chunk that was
     *   returned by an earlier call to {@link #resetAndStart} or
     *   {@link #appendCompletedChunk} (although this is not required or
     *   enforced)
     *
     * @return New chunk buffer for caller to fill
     */
    public Object[] appendCompletedChunk(Object[] fullChunk)
    {
        LinkedNode<Object[]> next = new LinkedNode<Object[]>(fullChunk, null);
        if (_head == null) { // first chunk
            _head = _tail = next;
        } else { // have something already
            _tail.linkNext(next);
            _tail = next;
        }
        int len = fullChunk.length;
        _size += len;
        // double the size for small chunks
        if (len < SMALL_CHUNK) {
            len += len;
        } else if (len < MAX_CHUNK) { // but by +25% for larger (to limit overhead)
            len += (len >> 2);
        }
        return new Object[len];
    }

    /**
     * Method called to indicate that the buffering process is now
     * complete; and to construct a combined exactly-sized result
     * array. Additionally the buffer itself will be reset to
     * reduce memory retention.
     *<p>
     * Resulting array will be of generic <code>Object[]</code> type:
     * if a typed array is needed, use the method with additional
     * type argument.
     */
    public Object[] completeAndClearBuffer(Object[] lastChunk, int lastChunkEntries)
    {
        int totalSize = lastChunkEntries + _size;
        Object[] result = new Object[totalSize];
        _copyTo(result, totalSize, lastChunk, lastChunkEntries);
        return result;
    }

    /**
     * Type-safe alternative to
     * {@link #completeAndClearBuffer(Object[], int)}, to allow
     * for constructing explicitly typed result array.
     *
     * @param componentType Type of elements included in the buffer. Will be
     *   used for constructing the result array.
     */
    public <T> T[] completeAndClearBuffer(Object[] lastChunk, int lastChunkEntries, Class<T> componentType)
    {
       int PROBE_START_LINE_137 = 137;
		int p_last_chunk_entries_2715_line_137 = lastChunkEntries;
		int f__size_2718_line_137 = _size;
		int object_buffer_1_expr4_line_137 = p_last_chunk_entries_2715_line_137 + f__size_2718_line_137;
		int PROBE_END_LINE_137 = 137;
	int totalSize = object_buffer_1_expr4_line_137;
 	   int PROBE_START_LINE_138 = 139;
	Class<T> p_component_type_2716_line_139 = componentType;
	int v_total_size_2717_line_139 = totalSize;
	Object object_buffer_1_expr6_line_139 = Array.newInstance(p_component_type_2716_line_139,
			v_total_size_2717_line_139);
	int PROBE_END_LINE_138 = 139;
	@SuppressWarnings("unchecked")
        T[] result = (T[]) object_buffer_1_expr6_line_139;
        int PROBE_START_LINE_140 = 140;
	T[] v_result_2719_line_140 = result;
	int v_total_size_2717_line_140 = totalSize;
	Object[] p_last_chunk_2714_line_140 = lastChunk;
	int p_last_chunk_entries_2715_line_140 = lastChunkEntries;
	int PROBE_END_LINE_140 = 140;
		_copyTo(v_result_2719_line_140, v_total_size_2717_line_140, p_last_chunk_2714_line_140, p_last_chunk_entries_2715_line_140);
        _reset();
        int PROBE_START_LINE_142 = 142;
		T[] v_result_2719_line_142 = result;
		int PROBE_END_LINE_142 = 142;
		return v_result_2719_line_142;
    }

    public void completeAndClearBuffer(Object[] lastChunk, int lastChunkEntries, List<Object> resultList)
    {
        for (LinkedNode<Object[]> n = _head; n != null; n = n.next()) {
            Object[] curr = n.value();
            for (int i = 0, len = curr.length; i < len; ++i) {
                resultList.add(curr[i]);
            }
        }
        // and then the last one
        for (int i = 0; i < lastChunkEntries; ++i) {
            resultList.add(lastChunk[i]);
        }
    }
    
    /**
     * Helper method that can be used to check how much free capacity
     * will this instance start with. Can be used to choose the best
     * instance to reuse, based on size of reusable object chunk
     * buffer holds reference to.
     */
    public int initialCapacity() {
        return (_freeBuffer == null) ? 0 : _freeBuffer.length;
    }

    /**
     * Method that can be used to check how many Objects have been buffered
     * within this buffer.
     */
    public int bufferedSize() { return _size; }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    protected void _reset()
    {
        int PROBE_START_LINE_184 = 186;
		LinkedNode<Object[]> f__tail_2723_line_184 = _tail;
		boolean object_buffer_1_expr9_line_184 = f__tail_2723_line_184 != null;
		int PROBE_END_LINE_184 = 186;
		// can we reuse the last (and thereby biggest) array for next time?
        if (object_buffer_1_expr9_line_184) {
            _freeBuffer = _tail.value();
        }
        // either way, must discard current contents
        _head = _tail = null;
        _size = 0;
    }

    protected final void _copyTo(Object resultArray, int totalSize,
            Object[] lastChunk, int lastChunkEntries)
    {
        int ptr = 0;

        int PROBE_START_LINE_196 = 196;
		boolean FOR_STMT_TOGGLE_LINE_197 = false;
		int PROBE_END_LINE_196 = 196;
		for (LinkedNode<Object[]> n = null; true;) {
            int PROBE_START_LINE_198 = 198;
			if (!FOR_STMT_TOGGLE_LINE_197) {
				FOR_STMT_TOGGLE_LINE_197 = true;
				LinkedNode<Object[]> f__head_2724_line_197 = _head;
				n = f__head_2724_line_197;
			} else {
				if (FOR_STMT_TOGGLE_LINE_197) {
					LinkedNode<Object[]> v_n_2730_line_197_v1 = n;
					LinkedNode<Object[]> object_buffer_1_expr16_line_197 = v_n_2730_line_197_v1.next();
					n = object_buffer_1_expr16_line_197;
				} else {
					FOR_STMT_TOGGLE_LINE_197 = true;
				}
			}
			LinkedNode<Object[]> v_n_2730_line_197 = n;
			boolean object_buffer_1_expr14_line_197 = v_n_2730_line_197 != null;
			if (!(object_buffer_1_expr14_line_197)) {
				break;
			}
			int PROBE_END_LINE_198 = 198;
			Object[] curr = n.value();
            int len = curr.length;
            System.arraycopy(curr, 0, resultArray, ptr, len);
            ptr += len;
        }
        int PROBE_START_LINE_203 = 203;
		Object[] p_last_chunk_2727_line_203 = lastChunk;
		Object p_result_array_2725_line_203 = resultArray;
		int v_ptr_2729_line_203 = ptr;
		int p_last_chunk_entries_2728_line_203 = lastChunkEntries;
		int PROBE_END_LINE_203 = 203;
		System.arraycopy(p_last_chunk_2727_line_203, 0, p_result_array_2725_line_203, v_ptr_2729_line_203, p_last_chunk_entries_2728_line_203);
        int PROBE_START_LINE_204 = 204;
		int p_last_chunk_entries_2728_line_204 = lastChunkEntries;
		int PROBE_END_LINE_204 = 204;
		ptr += p_last_chunk_entries_2728_line_204;

        int PROBE_START_LINE_207 = 209;
		int v_ptr_2729_line_207 = ptr;
		int p_total_size_2726_line_207 = totalSize;
		boolean object_buffer_1_expr19_line_207 = v_ptr_2729_line_207 != p_total_size_2726_line_207;
		int PROBE_END_LINE_207 = 209;
		// sanity check (could have failed earlier due to out-of-bounds, too)
        if (object_buffer_1_expr19_line_207) {
            throw new IllegalStateException("Should have gotten "+totalSize+" entries, got "+ptr);
        }
    }
}
