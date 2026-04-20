package com.fasterxml.jackson.databind.util;

import java.io.*;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;

/**
 * Helper for simple bounded LRU maps used for reusing lookup values.
 *<p>
 * Note that serialization behavior is such that contents are NOT serialized,
 * on assumption that all use cases are for caching where persistence
 * does not make sense. The only thing serialized is the cache size of Map.
 *<p>
 * NOTE: the only reason we extend {@link LinkedHashMap} instead of aggregating
 * it is that this way we can override {@link #removeEldestEntry}.
 * Access, however, MUST be done using single-element access methods (or matching
 * <code>xxxAll()</code> methods that call them); access via iterators are not
 * guaranteed to work.
 *<p>
 * NOTE: since version 2.4, uses {@link ReentrantReadWriteLock} to improve
 * concurrent access.
 */
public class LRUMap<K,V> extends LinkedHashMap<K,V>
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    protected final transient Lock _readLock, _writeLock;
    
    protected final transient int _maxEntries;
    
    public LRUMap(int initialEntries, int maxEntries)
    {
        super(initialEntries, 0.8f, true);
        int PROBE_START_LINE_37 = 37;
		int p_max_entries_2698_line_37 = maxEntries;
		int PROBE_END_LINE_37 = 37;
		_maxEntries = p_max_entries_2698_line_37;
        final ReentrantReadWriteLock rwl = new ReentrantReadWriteLock();
        int PROBE_START_LINE_39 = 39;
		java.util.concurrent.locks.ReentrantReadWriteLock v_rwl_2700_line_39 = rwl;
		java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock lrumap_1_expr5_line_39 = v_rwl_2700_line_39
				.readLock();
		int PROBE_END_LINE_39 = 39;
		_readLock = lrumap_1_expr5_line_39;
        int PROBE_START_LINE_40 = 40;
		java.util.concurrent.locks.ReentrantReadWriteLock v_rwl_2700_line_40 = rwl;
		java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock lrumap_1_expr7_line_40 = v_rwl_2700_line_40
				.writeLock();
		int PROBE_END_LINE_40 = 40;
		_writeLock = lrumap_1_expr7_line_40;
    }

    @Override
    protected boolean removeEldestEntry(Map.Entry<K,V> eldest) {
        int PROBE_START_LINE_45 = 45;
		int lrumap_1_expr9_line_45 = size();
		int f__max_entries_2699_line_45 = _maxEntries;
		boolean lrumap_1_expr8_line_45 = lrumap_1_expr9_line_45 > f__max_entries_2699_line_45;
		int PROBE_END_LINE_45 = 45;
		return lrumap_1_expr8_line_45;
    }

    /*
    /**********************************************************
    /* Overrides to support proper concurrency
    /**********************************************************
     */

    @Override
    public V get(Object key) {
        int PROBE_START_LINE_56 = 56;
		java.util.concurrent.locks.Lock f__read_lock_2701_line_56 = _readLock;
		int PROBE_END_LINE_56 = 56;
		f__read_lock_2701_line_56.lock();
        try {
            int PROBE_START_LINE_58 = 58;
			Object p_key_2704_line_58 = key;
			V lrumap_1_expr11_line_58 = super.get(p_key_2704_line_58);
			int PROBE_END_LINE_58 = 58;
			return lrumap_1_expr11_line_58;
        } finally {
            int PROBE_START_LINE_60 = 60;
			java.util.concurrent.locks.Lock f__read_lock_2701_line_60 = _readLock;
			int PROBE_END_LINE_60 = 60;
			f__read_lock_2701_line_60.unlock();
        }
    }

    @Override
    public V put(K key, V value) {
        int PROBE_START_LINE_66 = 66;
		java.util.concurrent.locks.Lock f__write_lock_2702_line_66 = _writeLock;
		int PROBE_END_LINE_66 = 66;
		f__write_lock_2702_line_66.lock();
        try {
            int PROBE_START_LINE_68 = 68;
			K p_key_2705_line_68 = key;
			V p_value_2706_line_68 = value;
			V lrumap_1_expr14_line_68 = super.put(p_key_2705_line_68, p_value_2706_line_68);
			int PROBE_END_LINE_68 = 68;
			return lrumap_1_expr14_line_68;
        } finally {
            int PROBE_START_LINE_70 = 70;
			java.util.concurrent.locks.Lock f__write_lock_2702_line_70 = _writeLock;
			int PROBE_END_LINE_70 = 70;
			f__write_lock_2702_line_70.unlock();
        }
    }

    @Override
    public V remove(Object key) {
        _writeLock.lock();
        try {
            return super.remove(key);
        } finally {
            _writeLock.unlock();
        }
    }
    
    /*
    /**********************************************************
    /* Serializable overrides
    /**********************************************************
     */

    /**
     * Ugly hack, to work through the requirement that _value is indeed final,
     * and that JDK serialization won't call ctor(s) if Serializable is implemented.
     * 
     * @since 2.1
     */
    protected transient int _jdkSerializeMaxEntries;

    private void readObject(ObjectInputStream in) throws IOException {
        _jdkSerializeMaxEntries = in.readInt();
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.writeInt(_jdkSerializeMaxEntries);
    }

    protected Object readResolve() {
        return new LRUMap<Object,Object>(_jdkSerializeMaxEntries, _jdkSerializeMaxEntries);
    }
}
