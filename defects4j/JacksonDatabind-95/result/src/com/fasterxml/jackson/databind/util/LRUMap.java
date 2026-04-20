package com.fasterxml.jackson.databind.util;

import java.io.*;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Helper for simple bounded maps used for reusing lookup values.
 *<p>
 * Note that serialization behavior is such that contents are NOT serialized,
 * on assumption that all use cases are for caching where persistence
 * does not make sense. The only thing serialized is the cache size of Map.
 *<p>
 * NOTE: since version 2.4.2, this is <b>NOT</b> an LRU-based at all; reason
 * being that it is not possible to use JDK components that do LRU _AND_ perform
 * well wrt synchronization on multi-core systems. So we choose efficient synchronization
 * over potentially more efficient handling of entries.
 *<p>
 * And yes, there are efficient LRU implementations such as
 * <a href="https://code.google.com/p/concurrentlinkedhashmap/">concurrentlinkedhashmap</a>;
 * but at this point we really try to keep external deps to minimum. But perhaps
 * a shaded variant may be used one day.
 */
public class LRUMap<K,V>
    implements java.io.Serializable
{
    private static final long serialVersionUID = 1L;

    protected final transient int _maxEntries;

    protected final transient ConcurrentHashMap<K,V> _map;
    
    public LRUMap(int initialEntries, int maxEntries)
    {
        int PROBE_START_LINE_35 = 35;
		int p_initial_entries_635_line_35 = initialEntries;
		int PROBE_END_LINE_35 = 35;
		// We'll use concurrency level of 4, seems reasonable
        _map = new ConcurrentHashMap<K,V>(p_initial_entries_635_line_35, 0.8f, 4);
        int PROBE_START_LINE_36 = 36;
		int p_max_entries_636_line_36 = maxEntries;
		int PROBE_END_LINE_36 = 36;
		_maxEntries = p_max_entries_636_line_36;
    }

    public V put(K key, V value) {
        if (_map.size() >= _maxEntries) {
            // double-locking, yes, but safe here; trying to avoid "clear storms"
            synchronized (this) {
                if (_map.size() >= _maxEntries) {
                    clear();
                }
            }
        }
        return _map.put(key, value);
    }

    /**
     * @since 2.5
     */
    public V putIfAbsent(K key, V value) {
        int PROBE_START_LINE_57 = 63;
		ConcurrentHashMap<K, V> f__map_637_line_57 = _map;
		int lrumap_1_expr5_line_57 = f__map_637_line_57.size();
		int f__max_entries_638_line_57 = _maxEntries;
		boolean lrumap_1_expr4_line_57 = lrumap_1_expr5_line_57 >= f__max_entries_638_line_57;
		int PROBE_END_LINE_57 = 63;
		// not 100% optimal semantically, but better from correctness (never exceeds
        // defined maximum) and close enough all in all:
        if (lrumap_1_expr4_line_57) {
            synchronized (this) {
                if (_map.size() >= _maxEntries) {
                    clear();
                }
            }
        }
        int PROBE_START_LINE_64 = 64;
		ConcurrentHashMap<K, V> f__map_637_line_64 = _map;
		K p_key_641_line_64 = key;
		V p_value_642_line_64 = value;
		V lrumap_1_expr6_line_64 = f__map_637_line_64.putIfAbsent(p_key_641_line_64, p_value_642_line_64);
		int PROBE_END_LINE_64 = 64;
		return lrumap_1_expr6_line_64;
    }
    
    // NOTE: key is of type Object only to retain binary backwards-compatibility
    public V get(Object key) {  int PROBE_START_LINE_68 = 68;
		ConcurrentHashMap<K, V> f__map_637_line_68 = _map;
		Object p_key_643_line_68 = key;
		V lrumap_1_expr7_line_68 = f__map_637_line_68.get(p_key_643_line_68);
		int PROBE_END_LINE_68 = 68;
	return lrumap_1_expr7_line_68; }

    public void clear() { _map.clear(); }
    public int size() { return _map.size(); }

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
