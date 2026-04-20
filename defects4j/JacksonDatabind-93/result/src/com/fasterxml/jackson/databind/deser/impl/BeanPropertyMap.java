package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.List;
import java.util.Iterator;
import java.util.Collection;
import java.util.ArrayList;

/**
 * Helper class used for storing mapping from property name to
 * {@link SettableBeanProperty} instances.
 *<p>
 * Note that this class is used instead of generic {@link java.util.HashMap}
 * for bit of performance gain (and some memory savings): although default
 * implementation is very good for generic use cases, it can be streamlined
 * a bit for specific use case we have. Even relatively small improvements
 * matter since this is directly on the critical path during deserialization,
 * as it is done for each and every POJO property deserialized.
 */
public class BeanPropertyMap
    implements Iterable<SettableBeanProperty>,
        java.io.Serializable
{
    private static final long serialVersionUID = 2L;

    /**
     * @since 2.5
     */
    protected final boolean _caseInsensitive;

    private int _hashMask;

    /**
     * Number of entries stored in the hash area.
     */
    private int _size;
    
    private int _spillCount;

    /**
     * Hash area that contains key/property pairs in adjacent elements.
     */
    private Object[] _hashArea;

    /**
     * Array of properties in the exact order they were handed in. This is
     * used by as-array serialization, deserialization.
     */
    private SettableBeanProperty[] _propsInOrder;

    public BeanPropertyMap(boolean caseInsensitive, Collection<SettableBeanProperty> props)
    {
        int PROBE_START_LINE_60 = 60;
		boolean p_case_insensitive_2227_line_60 = caseInsensitive;
		int PROBE_END_LINE_60 = 60;
		_caseInsensitive = p_case_insensitive_2227_line_60;
        int PROBE_START_LINE_61 = 61;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2228_line_61 = props;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2228_line_61_v1 = props;
		int bean_property_map_1_expr5_line_61 = p_props_2228_line_61_v1.size();
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] bean_property_map_1_expr3_line_61 = p_props_2228_line_61
				.toArray(new SettableBeanProperty[bean_property_map_1_expr5_line_61]);
		int PROBE_END_LINE_61 = 61;
		_propsInOrder = bean_property_map_1_expr3_line_61;
        int PROBE_START_LINE_62 = 62;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2228_line_62 = props;
		int PROBE_END_LINE_62 = 62;
		init(p_props_2228_line_62);
    }

    /**
     * @since 2.8
     */
    protected BeanPropertyMap(BeanPropertyMap base, boolean caseInsensitive)
    {
        _caseInsensitive = caseInsensitive;

        // 16-May-2016, tatu: Alas, not enough to just change flag, need to re-init
        //    as well.
        _propsInOrder = Arrays.copyOf(base._propsInOrder, base._propsInOrder.length);
        init(Arrays.asList(_propsInOrder));
    }

    /**
     * Mutant factory method that constructs a new instance if desired case-insensitivity
     * state differs from the state of this instance; if states are the same, returns
     * <code>this</code>.
     *
     * @since 2.8
     */
    public BeanPropertyMap withCaseInsensitivity(boolean state) {
        if (_caseInsensitive == state) {
            return this;
        }
        return new BeanPropertyMap(this, state);
    }

    protected void init(Collection<SettableBeanProperty> props)
    {
        int PROBE_START_LINE_94 = 94;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2234_line_94 = props;
		int bean_property_map_1_expr8_line_94 = p_props_2234_line_94.size();
		int PROBE_END_LINE_94 = 94;
		_size = bean_property_map_1_expr8_line_94;

        int PROBE_START_LINE_97 = 97;
		int f__size_2235_line_97 = _size;
		int bean_property_map_1_expr9_line_97 = findSize(f__size_2235_line_97);
		int PROBE_END_LINE_97 = 97;
		// First: calculate size of primary hash area
        final int hashSize = bean_property_map_1_expr9_line_97;
        int PROBE_START_LINE_98 = 98;
		int v_hash_size_2236_line_98 = hashSize;
		int bean_property_map_1_expr11_line_98 = v_hash_size_2236_line_98 - 1;
		int PROBE_END_LINE_98 = 98;
		_hashMask = bean_property_map_1_expr11_line_98;

        int PROBE_START_LINE_101 = 101;
		int v_hash_size_2236_line_101 = hashSize;
		int v_hash_size_2236_line_101_v1 = hashSize;
		int bean_property_map_1_expr16_line_101 = v_hash_size_2236_line_101_v1 >> 1;
		int bean_property_map_1_expr15_line_101 = (bean_property_map_1_expr16_line_101);
		int bean_property_map_1_expr14_line_101 = v_hash_size_2236_line_101 + bean_property_map_1_expr15_line_101;
		int bean_property_map_1_expr13_line_101 = (bean_property_map_1_expr14_line_101);
		int bean_property_map_1_expr12_line_101 = bean_property_map_1_expr13_line_101 * 2;
		int PROBE_END_LINE_101 = 101;
		// and allocate enough to contain primary/secondary, expand for spillovers as need be
        int alloc = bean_property_map_1_expr12_line_101;
        int PROBE_START_LINE_102 = 102;
		int v_alloc_2238_line_102 = alloc;
		int PROBE_END_LINE_102 = 102;
		Object[] hashed = new Object[v_alloc_2238_line_102];
        int spillCount = 0;

        int PROBE_START_LINE_105 = 131;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2234_line_105 = props;
		int PROBE_END_LINE_105 = 131;
		for (SettableBeanProperty prop : p_props_2234_line_105) {
            int PROBE_START_LINE_107 = 109;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2241_line_107 = prop;
			boolean bean_property_map_1_expr18_line_107 = v_prop_2241_line_107 == null;
			int PROBE_END_LINE_107 = 109;
			// Due to removal, renaming, theoretically possible we'll have "holes" so:
            if (bean_property_map_1_expr18_line_107) {
                continue;
            }
            
            int PROBE_START_LINE_111 = 111;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2241_line_111 = prop;
			String bean_property_map_1_expr19_line_111 = getPropertyName(v_prop_2241_line_111);
			int PROBE_END_LINE_111 = 111;
			String key = bean_property_map_1_expr19_line_111;
            int PROBE_START_LINE_112 = 112;
			String v_key_2242_line_112 = key;
			int bean_property_map_1_expr20_line_112 = _hashCode(v_key_2242_line_112);
			int PROBE_END_LINE_112 = 112;
			int slot = bean_property_map_1_expr20_line_112;
            int PROBE_START_LINE_113 = 113;
			int v_slot_2243_line_113 = slot;
			int bean_property_map_1_expr22_line_113 = v_slot_2243_line_113 << 1;
			int bean_property_map_1_expr21_line_113 = (bean_property_map_1_expr22_line_113);
			int PROBE_END_LINE_113 = 113;
			int ix = bean_property_map_1_expr21_line_113;

            int PROBE_START_LINE_116 = 127;
			Object[] v_hashed_2239_line_116 = hashed;
			int v_ix_2244_line_116 = ix;
			Object bean_property_map_1_expr24_line_116 = v_hashed_2239_line_116[v_ix_2244_line_116];
			boolean bean_property_map_1_expr23_line_116 = bean_property_map_1_expr24_line_116 != null;
			int PROBE_END_LINE_116 = 127;
			// primary slot not free?
            if (bean_property_map_1_expr23_line_116) {
                // secondary?
                ix = (hashSize + (slot >> 1)) << 1;
                if (hashed[ix] != null) {
                    // ok, spill over.
                    ix = ((hashSize + (hashSize >> 1) ) << 1) + spillCount;
                    spillCount += 2;
                    if (ix >= hashed.length) {
                        hashed = Arrays.copyOf(hashed, hashed.length + 4);
                    }
                }
            }
int PROBE_START_LINE_129 = 129;
			Object[] v_hashed_2239_line_129 = hashed;
			int v_ix_2244_line_129 = ix;
			String v_key_2242_line_129 = key;
			int PROBE_END_LINE_129 = 129;
			//System.err.println(" add '"+key+" at #"+(ix>>1)+"/"+size+" (hashed at "+slot+")");             
            v_hashed_2239_line_129[v_ix_2244_line_129] = v_key_2242_line_129;
            int PROBE_START_LINE_130 = 130;
			Object[] v_hashed_2239_line_130 = hashed;
			int v_ix_2244_line_130 = ix;
			int bean_property_map_1_expr29_line_130 = v_ix_2244_line_130 + 1;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2241_line_130 = prop;
			int PROBE_END_LINE_130 = 130;
			v_hashed_2239_line_130[bean_property_map_1_expr29_line_130] = v_prop_2241_line_130;
        }
int PROBE_START_LINE_137 = 137;
		Object[] v_hashed_2239_line_137 = hashed;
		int PROBE_END_LINE_137 = 137;
		/*
for (int i = 0; i < hashed.length; i += 2) {
System.err.printf("#%02d: %s\n", i>>1, (hashed[i] == null) ? "-" : hashed[i]);
}
*/
        _hashArea = v_hashed_2239_line_137;
        int PROBE_START_LINE_138 = 138;
		int v_spill_count_2240_line_138 = spillCount;
		int PROBE_END_LINE_138 = 138;
		_spillCount = v_spill_count_2240_line_138;
    }
    
    private final static int findSize(int size)
    {
        int PROBE_START_LINE_143 = 145;
		int p_size_2247_line_143 = size;
		boolean bean_property_map_1_expr32_line_143 = p_size_2247_line_143 <= 5;
		int PROBE_END_LINE_143 = 145;
		if (bean_property_map_1_expr32_line_143) {
            return 8;
        }
        if (size <= 12) {
            return 16;
        }
        int needed = size + (size >> 2); // at most 80% full
        int result = 32;
        while (result < needed) {
            result += result;
        }
        return result;
    }
    
    /**
     * @since 2.6
     */
    public static BeanPropertyMap construct(Collection<SettableBeanProperty> props, boolean caseInsensitive) {
        int PROBE_START_LINE_161 = 161;
		boolean p_case_insensitive_2249_line_161 = caseInsensitive;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2248_line_161 = props;
		int PROBE_END_LINE_161 = 161;
		return new BeanPropertyMap(p_case_insensitive_2249_line_161, p_props_2248_line_161);
    }
    
    /**
     * Fluent copy method that creates a new instance that is a copy
     * of this instance except for one additional property that is
     * passed as the argument.
     * Note that method does not modify this instance but constructs
     * and returns a new one.
     */
    public BeanPropertyMap withProperty(SettableBeanProperty newProp)
    {
        // First: may be able to just replace?
        String key = getPropertyName(newProp);

        for (int i = 1, end = _hashArea.length; i < end; i += 2) {
            SettableBeanProperty prop = (SettableBeanProperty) _hashArea[i];
            if ((prop != null) && prop.getName().equals(key)) {
                _hashArea[i] = newProp;
                _propsInOrder[_findFromOrdered(prop)] = newProp;
                return this;
            }
        }
        // If not, append
        final int slot = _hashCode(key);
        final int hashSize = _hashMask+1;
        int ix = (slot<<1);
        
        // primary slot not free?
        if (_hashArea[ix] != null) {
            // secondary?
            ix = (hashSize + (slot >> 1)) << 1;
            if (_hashArea[ix] != null) {
                // ok, spill over.
                ix = ((hashSize + (hashSize >> 1) ) << 1) + _spillCount;
                _spillCount += 2;
                if (ix >= _hashArea.length) {
                    _hashArea = Arrays.copyOf(_hashArea, _hashArea.length + 4);
                    // Uncomment for debugging only
                    /*
for (int i = 0; i < _hashArea.length; i += 2) {
    if (_hashArea[i] != null) {
        System.err.println("Property #"+(i/2)+" '"+_hashArea[i]+"'...");
    }
}
System.err.println("And new propr #"+slot+" '"+key+"'");
*/
                
                }
            }
        }
        _hashArea[ix] = key;
        _hashArea[ix+1] = newProp;

        int last = _propsInOrder.length;
        _propsInOrder = Arrays.copyOf(_propsInOrder, last+1);
        _propsInOrder[last] = newProp;

        // should we just create a new one? Or is resetting ok?
        
        return this;
    }

    public BeanPropertyMap assignIndexes()
    {
        // order is arbitrary, but stable:
        int index = 0;
        int PROBE_START_LINE_227 = 227;
		boolean FOR_STMT_TOGGLE_LINE_228 = false;
		int PROBE_END_LINE_227 = 227;
		for (int i = 1, end = 0; true;) {
            int PROBE_START_LINE_229 = 229;
			if (!FOR_STMT_TOGGLE_LINE_228) {
				FOR_STMT_TOGGLE_LINE_228 = true;
				i = 1;
				Object[] f__hash_area_2245_line_228 = _hashArea;
				int q_length_65_line_228 = f__hash_area_2245_line_228.length;
				end = q_length_65_line_228;
			} else {
				if (FOR_STMT_TOGGLE_LINE_228) {
					i += 2;
				} else {
					FOR_STMT_TOGGLE_LINE_228 = true;
				}
			}
			int v_i_2252_line_228 = i;
			int v_end_2253_line_228 = end;
			boolean bean_property_map_1_expr35_line_228 = v_i_2252_line_228 < v_end_2253_line_228;
			if (!(bean_property_map_1_expr35_line_228)) {
				break;
			}
			Object[] f__hash_area_2245_line_229 = _hashArea;
			int v_i_2252_line_229 = i;
			Object bean_property_map_1_expr38_line_229 = f__hash_area_2245_line_229[v_i_2252_line_229];
			int PROBE_END_LINE_229 = 229;
			SettableBeanProperty prop = (SettableBeanProperty) bean_property_map_1_expr38_line_229;
            int PROBE_START_LINE_230 = 232;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2254_line_230 = prop;
			boolean bean_property_map_1_expr39_line_230 = v_prop_2254_line_230 != null;
			int PROBE_END_LINE_230 = 232;
			if (bean_property_map_1_expr39_line_230) {
                int PROBE_START_LINE_231 = 231;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2254_line_231 = prop;
				int PROBE_END_LINE_231 = 231;
				v_prop_2254_line_231.assignIndex(index++);
            }
        }
        return this;
    }

    /**
     * Mutant factory method for constructing a map where all entries use given
     * prefix
     */
    public BeanPropertyMap renameAll(NameTransformer transformer)
    {
        if (transformer == null || (transformer == NameTransformer.NOP)) {
            return this;
        }
        // Try to retain insertion ordering as well
        final int len = _propsInOrder.length;
        ArrayList<SettableBeanProperty> newProps = new ArrayList<SettableBeanProperty>(len);

        for (int i = 0; i < len; ++i) {
            SettableBeanProperty prop = _propsInOrder[i];
            
            // What to do with holes? For now, retain
            if (prop == null) {
                newProps.add(prop);
                continue;
            }
            newProps.add(_rename(prop, transformer));
        }
        // should we try to re-index? Ordering probably changed but caller probably doesn't want changes...
        return new BeanPropertyMap(_caseInsensitive, newProps);
    }

    /**
     * Mutant factory method that will use this instance as the base, and
     * construct an instance that is otherwise same except for excluding
     * properties with specified names.
     *
     * @since 2.8
     */
    public BeanPropertyMap withoutProperties(Collection<String> toExclude)
    {
        if (toExclude.isEmpty()) {
            return this;
        }
        final int len = _propsInOrder.length;
        ArrayList<SettableBeanProperty> newProps = new ArrayList<SettableBeanProperty>(len);

        for (int i = 0; i < len; ++i) {
            SettableBeanProperty prop = _propsInOrder[i];
            // 01-May-2015, tatu: Not 100% sure if existing `null`s should be retained;
            //   or, if entries to ignore should be retained as nulls. For now just
            //   prune them out
            if (prop != null) { // may contain holes, too, check.
                if (!toExclude.contains(prop.getName())) {
                    newProps.add(prop);
                }
            }
        }
        // should we try to re-index? Apparently no need
        return new BeanPropertyMap(_caseInsensitive, newProps);
    }
    
    /**
     * Specialized method that can be used to replace an existing entry
     * (note: entry MUST exist; otherwise exception is thrown) with
     * specified replacement.
     */
    public void replace(SettableBeanProperty newProp)
    {
        int PROBE_START_LINE_301 = 301;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_new_prop_2257_line_301 = newProp;
		String bean_property_map_1_expr43_line_301 = getPropertyName(p_new_prop_2257_line_301);
		int PROBE_END_LINE_301 = 301;
		String key = bean_property_map_1_expr43_line_301;
        int PROBE_START_LINE_302 = 302;
		String v_key_2258_line_302 = key;
		int bean_property_map_1_expr44_line_302 = _findIndexInHash(v_key_2258_line_302);
		int PROBE_END_LINE_302 = 302;
		int ix = bean_property_map_1_expr44_line_302;
        
        int PROBE_START_LINE_304 = 310;
		int v_ix_2259_line_304 = ix;
		boolean bean_property_map_1_expr45_line_304 = v_ix_2259_line_304 >= 0;
		int PROBE_END_LINE_304 = 310;
		if (bean_property_map_1_expr45_line_304) {
            int PROBE_START_LINE_305 = 305;
			Object[] f__hash_area_2245_line_305 = _hashArea;
			int v_ix_2259_line_305 = ix;
			Object bean_property_map_1_expr47_line_305 = f__hash_area_2245_line_305[v_ix_2259_line_305];
			int PROBE_END_LINE_305 = 305;
			SettableBeanProperty prop = (SettableBeanProperty) bean_property_map_1_expr47_line_305;
            int PROBE_START_LINE_306 = 306;
			Object[] f__hash_area_2245_line_306 = _hashArea;
			int v_ix_2259_line_306 = ix;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_new_prop_2257_line_306 = newProp;
			int PROBE_END_LINE_306 = 306;
			f__hash_area_2245_line_306[v_ix_2259_line_306] = p_new_prop_2257_line_306;
            int PROBE_START_LINE_308 = 308;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty[] f__props_in_order_2230_line_308 = _propsInOrder;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2260_line_308 = prop;
			int bean_property_map_1_expr52_line_308 = _findFromOrdered(v_prop_2260_line_308);
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_new_prop_2257_line_308 = newProp;
			int PROBE_END_LINE_308 = 308;
			// also, replace in in-order
            f__props_in_order_2230_line_308[bean_property_map_1_expr52_line_308] = p_new_prop_2257_line_308;
            return;
        }
        
        throw new NoSuchElementException("No entry '"+key+"' found, can't replace");
    }

    private List<SettableBeanProperty> properties() {
        int PROBE_START_LINE_316 = 316;
		int f__size_2235_line_316 = _size;
		ArrayList<SettableBeanProperty> p = new ArrayList<SettableBeanProperty>(f__size_2235_line_316);
        boolean FOR_STMT_TOGGLE_LINE_317 = false;
		int PROBE_END_LINE_316 = 316;
		for (int i = 1, end = 0; true;) {
            int PROBE_START_LINE_318 = 318;
			if (!FOR_STMT_TOGGLE_LINE_317) {
				FOR_STMT_TOGGLE_LINE_317 = true;
				i = 1;
				Object[] f__hash_area_2245_line_317 = _hashArea;
				int q_length_66_line_317 = f__hash_area_2245_line_317.length;
				end = q_length_66_line_317;
			} else {
				if (FOR_STMT_TOGGLE_LINE_317) {
					i += 2;
				} else {
					FOR_STMT_TOGGLE_LINE_317 = true;
				}
			}
			int v_i_2262_line_317 = i;
			int v_end_2263_line_317 = end;
			boolean bean_property_map_1_expr55_line_317 = v_i_2262_line_317 < v_end_2263_line_317;
			if (!(bean_property_map_1_expr55_line_317)) {
				break;
			}
			Object[] f__hash_area_2245_line_318 = _hashArea;
			int v_i_2262_line_318 = i;
			Object bean_property_map_1_expr58_line_318 = f__hash_area_2245_line_318[v_i_2262_line_318];
			int PROBE_END_LINE_318 = 318;
			SettableBeanProperty prop = (SettableBeanProperty) bean_property_map_1_expr58_line_318;
            int PROBE_START_LINE_319 = 321;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2264_line_319 = prop;
			boolean bean_property_map_1_expr59_line_319 = v_prop_2264_line_319 != null;
			int PROBE_END_LINE_319 = 321;
			if (bean_property_map_1_expr59_line_319) {
                int PROBE_START_LINE_320 = 320;
				ArrayList<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_p_2261_line_320 = p;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2264_line_320 = prop;
				int PROBE_END_LINE_320 = 320;
				v_p_2261_line_320.add(v_prop_2264_line_320);
            }
        }
        int PROBE_START_LINE_323 = 323;
		ArrayList<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_p_2261_line_323 = p;
		int PROBE_END_LINE_323 = 323;
		return v_p_2261_line_323;
    }

    /**
     * Accessor for traversing over all contained properties.
     */
    @Override
    public Iterator<SettableBeanProperty> iterator() {
        int PROBE_START_LINE_331 = 331;
		List<com.fasterxml.jackson.databind.deser.SettableBeanProperty> bean_property_map_1_expr62_line_331 = properties();
		Iterator<com.fasterxml.jackson.databind.deser.SettableBeanProperty> bean_property_map_1_expr61_line_331 = bean_property_map_1_expr62_line_331
				.iterator();
		int PROBE_END_LINE_331 = 331;
		return bean_property_map_1_expr61_line_331;
    }

    /**
     * Method that will re-create initial insertion-ordering of
     * properties contained in this map. Note that if properties
     * have been removed, array may contain nulls; otherwise
     * it should be consecutive.
     * 
     * @since 2.1
     */
    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        return _propsInOrder;
    }

    // Confining this case insensitivity to this function (and the find method) in case we want to
    // apply a particular locale to the lower case function.  For now, using the default.
    protected final String getPropertyName(SettableBeanProperty prop) {
        int PROBE_START_LINE_349 = 349;
		boolean f__case_insensitive_2229_line_349 = _caseInsensitive;
		String bean_property_map_1_expr64_line_349 = null;
		String bean_property_map_1_expr65_line_349 = null;
		if (f__case_insensitive_2229_line_349) {
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2265_line_349 = prop;
			String bean_property_map_1_expr66_line_349 = p_prop_2265_line_349.getName();
			bean_property_map_1_expr64_line_349 = bean_property_map_1_expr66_line_349.toLowerCase();
		} else {
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2265_line_349_v1 = prop;
			bean_property_map_1_expr65_line_349 = p_prop_2265_line_349_v1.getName();
		}
		String bean_property_map_1_expr63_line_349 = f__case_insensitive_2229_line_349
				? bean_property_map_1_expr64_line_349
				: bean_property_map_1_expr65_line_349;
		int PROBE_END_LINE_349 = 349;
		return bean_property_map_1_expr63_line_349;
    }

    /**
     * @since 2.3
     */
    public SettableBeanProperty find(int index)
    {
        // note: will scan the whole area, including primary, secondary and
        // possible spill-area
        for (int i = 1, end = _hashArea.length; i < end; i += 2) {
            SettableBeanProperty prop = (SettableBeanProperty) _hashArea[i];
            if ((prop != null) && (index == prop.getPropertyIndex())) {
                return prop;
            }
        }
        return null;
    }

    public SettableBeanProperty find(String key)
    {
        if (key == null) {
            throw new IllegalArgumentException("Can not pass null property name");
        }
        if (_caseInsensitive) {
            key = key.toLowerCase();
        }
            
        // inlined `_hashCode(key)`
        int slot = key.hashCode() & _hashMask;
//        int h = key.hashCode();
//        int slot = (h + (h >> 13)) & _hashMask;

        int ix = (slot<<1);
        Object match = _hashArea[ix];
        if ((match == key) || key.equals(match)) {
            return (SettableBeanProperty) _hashArea[ix+1];
        }
        return _find2(key, slot, match);
    }

    private final SettableBeanProperty _find2(String key, int slot, Object match)
    {
        if (match == null) {
            return null;
        }
        // no? secondary?
        int hashSize = _hashMask+1;
        int ix = hashSize + (slot>>1) << 1;
        match = _hashArea[ix];
        if (key.equals(match)) {
            return (SettableBeanProperty) _hashArea[ix+1];
        }
        if (match != null) { // _findFromSpill(...)
            int i = (hashSize + (hashSize>>1)) << 1;
            for (int end = i + _spillCount; i < end; i += 2) {
                match = _hashArea[i];
                if ((match == key) || key.equals(match)) {
                    return (SettableBeanProperty) _hashArea[i+1];
                }
            }
        }
        return null;
    }
    
    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    public int size() { return _size; }

    /**
     * Specialized method for removing specified existing entry.
     * NOTE: entry MUST exist, otherwise an exception is thrown.
     */
    public void remove(SettableBeanProperty propToRm)
    {
        ArrayList<SettableBeanProperty> props = new ArrayList<SettableBeanProperty>(_size);
        String key = getPropertyName(propToRm);
        boolean found = false;

        for (int i = 1, end = _hashArea.length; i < end; i += 2) {
            SettableBeanProperty prop = (SettableBeanProperty) _hashArea[i];
            if (prop == null) {
                continue;
            }
            if (!found) {
                // 09-Jan-2017, tatu: Important: must check name slot and NOT property name,
                //   as only former is lower-case in case-insensitive case
                found = key.equals(_hashArea[i-1]);
                if (found) {
                    // need to leave a hole here
                    _propsInOrder[_findFromOrdered(prop)] = null;
                    continue;
                }
            }
            props.add(prop);
        }
        if (!found) {
            throw new NoSuchElementException("No entry '"+propToRm.getName()+"' found, can't remove");
        }
        init(props);
    }

    /**
     * Convenience method that tries to find property with given name, and
     * if it is found, call {@link SettableBeanProperty#deserializeAndSet}
     * on it, and return true; or, if not found, return false.
     * Note, too, that if deserialization is attempted, possible exceptions
     * are wrapped if and as necessary, so caller need not handle those.
     * 
     * @since 2.5
     */
    public boolean findDeserializeAndSet(JsonParser p, DeserializationContext ctxt,
            Object bean, String key) throws IOException
    {
        final SettableBeanProperty prop = find(key);
        if (prop == null) {
            return false;
        }
        try {
            prop.deserializeAndSet(p, ctxt, bean);
        } catch (Exception e) {
            wrapAndThrow(e, bean, key, ctxt);
        }
        return true;
    }

    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append("Properties=[");
        int count = 0;

        Iterator<SettableBeanProperty> it = iterator();
        while (it.hasNext()) {
            SettableBeanProperty prop = it.next();
            if (count++ > 0) {
                sb.append(", ");
            }
            sb.append(prop.getName());
            sb.append('(');
            sb.append(prop.getType());
            sb.append(')');
        }
        sb.append(']');
        return sb.toString();
    }
    
    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */

    protected SettableBeanProperty _rename(SettableBeanProperty prop, NameTransformer xf)
    {
        if (prop == null) {
            return prop;
        }
        String newName = xf.transform(prop.getName());
        prop = prop.withSimpleName(newName);
        JsonDeserializer<?> deser = prop.getValueDeserializer();
        if (deser != null) {
            @SuppressWarnings("unchecked")
            JsonDeserializer<Object> newDeser = (JsonDeserializer<Object>)
                deser.unwrappingDeserializer(xf);
            if (newDeser != deser) {
                prop = prop.withValueDeserializer(newDeser);
            }
        }
        return prop;
    }

    protected void wrapAndThrow(Throwable t, Object bean, String fieldName, DeserializationContext ctxt)
        throws IOException
    {
        // inlined 'throwOrReturnThrowable'
        while (t instanceof InvocationTargetException && t.getCause() != null) {
            t = t.getCause();
        }
        // Errors to be passed as is
        if (t instanceof Error) {
            throw (Error) t;
        }
        // StackOverflowErrors are tricky ones; need to be careful...
        boolean wrap = (ctxt == null) || ctxt.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        // Ditto for IOExceptions; except we may want to wrap JSON exceptions
        if (t instanceof IOException) {
            if (!wrap || !(t instanceof JsonProcessingException)) {
                throw (IOException) t;
            }
        } else if (!wrap) { // allow disabling wrapping for unchecked exceptions
            if (t instanceof RuntimeException) {
                throw (RuntimeException) t;
            }
        }
        throw JsonMappingException.wrapWithPath(t, bean, fieldName);
    }

    /**
     * Helper method used to find exact location of a property with name
     * given exactly, not subject to case changes, within hash area.
     * Expectation is that such property SHOULD exist, although no
     * exception is thrown.
     *
     * @since 2.7
     */
    private final int _findIndexInHash(String key)
    {
        int PROBE_START_LINE_562 = 562;
		String p_key_2282_line_562 = key;
		int bean_property_map_1_expr67_line_562 = _hashCode(p_key_2282_line_562);
		int PROBE_END_LINE_562 = 562;
		final int slot = bean_property_map_1_expr67_line_562;
        int PROBE_START_LINE_563 = 563;
		int v_slot_2283_line_563 = slot;
		int bean_property_map_1_expr69_line_563 = v_slot_2283_line_563 << 1;
		int bean_property_map_1_expr68_line_563 = (bean_property_map_1_expr69_line_563);
		int PROBE_END_LINE_563 = 563;
		int ix = bean_property_map_1_expr68_line_563;
        
        int PROBE_START_LINE_566 = 568;
		String p_key_2282_line_566 = key;
		Object[] f__hash_area_2245_line_566 = _hashArea;
		int v_ix_2284_line_566 = ix;
		Object bean_property_map_1_expr71_line_566 = f__hash_area_2245_line_566[v_ix_2284_line_566];
		boolean bean_property_map_1_expr70_line_566 = p_key_2282_line_566.equals(bean_property_map_1_expr71_line_566);
		int PROBE_END_LINE_566 = 568;
		// primary match?
        if (bean_property_map_1_expr70_line_566) {
            int PROBE_START_LINE_567 = 567;
			int v_ix_2284_line_567 = ix;
			int bean_property_map_1_expr72_line_567 = v_ix_2284_line_567 + 1;
			int PROBE_END_LINE_567 = 567;
			return bean_property_map_1_expr72_line_567;
        }
        // no? secondary?
        int hashSize = _hashMask+1;
        ix = hashSize + (slot>>1) << 1;
        if (key.equals(_hashArea[ix])) {
            return ix+1;
        }
        // perhaps spill then
        int i = (hashSize + (hashSize>>1)) << 1;
        for (int end = i + _spillCount; i < end; i += 2) {
            if (key.equals(_hashArea[i])) {
                return i+1;
            }
        }
        return -1;
    }
    
    private final int _findFromOrdered(SettableBeanProperty prop) {
        int PROBE_START_LINE_585 = 585;
		boolean FOR_STMT_TOGGLE_LINE_586 = false;
		int PROBE_END_LINE_585 = 585;
		for (int i = 0, end = 0; true;) {
            int PROBE_START_LINE_587 = 589;
			if (!FOR_STMT_TOGGLE_LINE_586) {
				FOR_STMT_TOGGLE_LINE_586 = true;
				i = 0;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty[] f__props_in_order_2230_line_586 = _propsInOrder;
				int q_length_66_line_586 = f__props_in_order_2230_line_586.length;
				end = q_length_66_line_586;
			} else {
				if (FOR_STMT_TOGGLE_LINE_586) {
					++i;
				} else {
					FOR_STMT_TOGGLE_LINE_586 = true;
				}
			}
			int v_i_2286_line_586 = i;
			int v_end_2287_line_586 = end;
			boolean bean_property_map_1_expr74_line_586 = v_i_2286_line_586 < v_end_2287_line_586;
			if (!(bean_property_map_1_expr74_line_586)) {
				break;
			}
			com.fasterxml.jackson.databind.deser.SettableBeanProperty[] f__props_in_order_2230_line_587 = _propsInOrder;
			int v_i_2286_line_587 = i;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_property_map_1_expr77_line_587 = f__props_in_order_2230_line_587[v_i_2286_line_587];
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2285_line_587 = prop;
			boolean bean_property_map_1_expr76_line_587 = bean_property_map_1_expr77_line_587 == p_prop_2285_line_587;
			int PROBE_END_LINE_587 = 589;
			if (bean_property_map_1_expr76_line_587) {
                int PROBE_START_LINE_588 = 588;
				int v_i_2286_line_588 = i;
				int PROBE_END_LINE_588 = 588;
				return v_i_2286_line_588;
            }
        }
        throw new IllegalStateException("Illegal state: property '"+prop.getName()+"' missing from _propsInOrder");
    }

    // Offlined version for convenience if we want to change hashing scheme
    private final int _hashCode(String key) {
        // This method produces better hash, fewer collisions... yet for some
        // reason produces slightly worse performance. Very strange.

        // 05-Aug-2015, tatu: ... still true?

        int PROBE_START_LINE_605 = 605;
		String p_key_2288_line_605 = key;
		int bean_property_map_1_expr79_line_605 = p_key_2288_line_605.hashCode();
		int f__hash_mask_2237_line_605 = _hashMask;
		int bean_property_map_1_expr78_line_605 = bean_property_map_1_expr79_line_605 & f__hash_mask_2237_line_605;
		int PROBE_END_LINE_605 = 605;
		/*
        int h = key.hashCode();
        return (h + (h >> 13)) & _hashMask;
        */
        return bean_property_map_1_expr78_line_605;
    }
}
