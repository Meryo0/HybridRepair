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
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.List;
import java.util.Iterator;
import java.util.Collection;
import java.util.Map;
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
    private final SettableBeanProperty[] _propsInOrder;

    /**
     * Configuration of alias mappings, indexed by unmodified property name
     * to unmodified aliases, if any; entries only included for properties
     * that do have aliases.
     * This is is used for constructing actual reverse lookup mapping, if
     * needed, taking into account possible case-insensitivity, as well
     * as possibility of name prefixes.
     *
     * @since 2.9
     */
    private final Map<String,List<PropertyName>> _aliasDefs;

    /**
     * Mapping from secondary names (aliases) to primary names.
     *
     * @since 2.9
     */
    private final Map<String,String> _aliasMapping;

    /**
     * @since 2.9
     */
    public BeanPropertyMap(boolean caseInsensitive, Collection<SettableBeanProperty> props,
            Map<String,List<PropertyName>> aliasDefs)
    {
        int PROBE_START_LINE_85 = 85;
		boolean p_case_insensitive_2560_line_85 = caseInsensitive;
		int PROBE_END_LINE_85 = 85;
		_caseInsensitive = p_case_insensitive_2560_line_85;
        int PROBE_START_LINE_86 = 86;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2561_line_86 = props;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2561_line_86_v1 = props;
		int bean_property_map_1_expr5_line_86 = p_props_2561_line_86_v1.size();
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] bean_property_map_1_expr3_line_86 = p_props_2561_line_86
				.toArray(new SettableBeanProperty[bean_property_map_1_expr5_line_86]);
		int PROBE_END_LINE_86 = 86;
		_propsInOrder = bean_property_map_1_expr3_line_86;
        int PROBE_START_LINE_87 = 87;
		Map<String, List<com.fasterxml.jackson.databind.PropertyName>> p_alias_defs_2562_line_87 = aliasDefs;
		int PROBE_END_LINE_87 = 87;
		_aliasDefs = p_alias_defs_2562_line_87;
        int PROBE_START_LINE_88 = 88;
		Map<String, List<com.fasterxml.jackson.databind.PropertyName>> p_alias_defs_2562_line_88 = aliasDefs;
		Map<String, String> bean_property_map_1_expr8_line_88 = _buildAliasMapping(p_alias_defs_2562_line_88);
		int PROBE_END_LINE_88 = 88;
		_aliasMapping = bean_property_map_1_expr8_line_88;
        int PROBE_START_LINE_89 = 89;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2561_line_89 = props;
		int PROBE_END_LINE_89 = 89;
		init(p_props_2561_line_89);
    }

    /* Copy constructors used when a property can replace existing one
     *
     * @since 2.9.6
     */
    private BeanPropertyMap(BeanPropertyMap src,
            SettableBeanProperty newProp, int hashIndex, int orderedIndex)
    {
        // First, copy most fields as is:
        _caseInsensitive = src._caseInsensitive;
        _hashMask = src._hashMask;
        _size = src._size;
        _spillCount = src._spillCount;
        _aliasDefs = src._aliasDefs;
        _aliasMapping = src._aliasMapping;

        // but then make deep copy of arrays to modify
        _hashArea = Arrays.copyOf(src._hashArea, src._hashArea.length);
        _propsInOrder = Arrays.copyOf(src._propsInOrder, src._propsInOrder.length);
        _hashArea[hashIndex] = newProp;
        _propsInOrder[orderedIndex] = newProp;
    }

    /* Copy constructors used when a property needs to be appended (can't replace)
     *
     * @since 2.9.6
     */
    private BeanPropertyMap(BeanPropertyMap src,
            SettableBeanProperty newProp, String key, int slot)
    {
        // First, copy most fields as is:
        _caseInsensitive = src._caseInsensitive;
        _hashMask = src._hashMask;
        _size = src._size;
        _spillCount = src._spillCount;
        _aliasDefs = src._aliasDefs;
        _aliasMapping = src._aliasMapping;

        // but then make deep copy of arrays to modify
        _hashArea = Arrays.copyOf(src._hashArea, src._hashArea.length);
        int last = src._propsInOrder.length;
        // and append property at the end of ordering
        _propsInOrder = Arrays.copyOf(src._propsInOrder, last+1);
        _propsInOrder[last] = newProp;

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
                }
            }
        }
        _hashArea[ix] = key;
        _hashArea[ix+1] = newProp;
    }

    @Deprecated // since 2.8
    public BeanPropertyMap(boolean caseInsensitive, Collection<SettableBeanProperty> props)
    {
        this(caseInsensitive, props, Collections.<String,List<PropertyName>>emptyMap());
    }

    /**
     * @since 2.8
     */
    protected BeanPropertyMap(BeanPropertyMap base, boolean caseInsensitive)
    {
        _caseInsensitive = caseInsensitive;
        _aliasDefs = base._aliasDefs;
        _aliasMapping = base._aliasMapping;

        // 16-May-2016, tatu: Alas, not enough to just change flag, need to re-init as well.
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
        int PROBE_START_LINE_192 = 192;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2580_line_192 = props;
		int bean_property_map_1_expr11_line_192 = p_props_2580_line_192.size();
		int PROBE_END_LINE_192 = 192;
		_size = bean_property_map_1_expr11_line_192;

        int PROBE_START_LINE_195 = 195;
		int f__size_2581_line_195 = _size;
		int bean_property_map_1_expr12_line_195 = findSize(f__size_2581_line_195);
		int PROBE_END_LINE_195 = 195;
		// First: calculate size of primary hash area
        final int hashSize = bean_property_map_1_expr12_line_195;
        int PROBE_START_LINE_196 = 196;
		int v_hash_size_2582_line_196 = hashSize;
		int bean_property_map_1_expr14_line_196 = v_hash_size_2582_line_196 - 1;
		int PROBE_END_LINE_196 = 196;
		_hashMask = bean_property_map_1_expr14_line_196;

        int PROBE_START_LINE_199 = 199;
		int v_hash_size_2582_line_199 = hashSize;
		int v_hash_size_2582_line_199_v1 = hashSize;
		int bean_property_map_1_expr19_line_199 = v_hash_size_2582_line_199_v1 >> 1;
		int bean_property_map_1_expr18_line_199 = (bean_property_map_1_expr19_line_199);
		int bean_property_map_1_expr17_line_199 = v_hash_size_2582_line_199 + bean_property_map_1_expr18_line_199;
		int bean_property_map_1_expr16_line_199 = (bean_property_map_1_expr17_line_199);
		int bean_property_map_1_expr15_line_199 = bean_property_map_1_expr16_line_199 * 2;
		int PROBE_END_LINE_199 = 199;
		// and allocate enough to contain primary/secondary, expand for spillovers as need be
        int alloc = bean_property_map_1_expr15_line_199;
        int PROBE_START_LINE_200 = 200;
		int v_alloc_2584_line_200 = alloc;
		int PROBE_END_LINE_200 = 200;
		Object[] hashed = new Object[v_alloc_2584_line_200];
        int spillCount = 0;

        int PROBE_START_LINE_203 = 230;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2580_line_203 = props;
		int PROBE_END_LINE_203 = 230;
		for (SettableBeanProperty prop : p_props_2580_line_203) {
            int PROBE_START_LINE_205 = 207;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2587_line_205 = prop;
			boolean bean_property_map_1_expr21_line_205 = v_prop_2587_line_205 == null;
			int PROBE_END_LINE_205 = 207;
			// Due to removal, renaming, theoretically possible we'll have "holes" so:
            if (bean_property_map_1_expr21_line_205) {
                continue;
            }

            int PROBE_START_LINE_209 = 209;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2587_line_209 = prop;
			String bean_property_map_1_expr22_line_209 = getPropertyName(v_prop_2587_line_209);
			int PROBE_END_LINE_209 = 209;
			String key = bean_property_map_1_expr22_line_209;
            int PROBE_START_LINE_210 = 210;
			String v_key_2588_line_210 = key;
			int bean_property_map_1_expr23_line_210 = _hashCode(v_key_2588_line_210);
			int PROBE_END_LINE_210 = 210;
			int slot = bean_property_map_1_expr23_line_210;
            int PROBE_START_LINE_211 = 211;
			int v_slot_2589_line_211 = slot;
			int bean_property_map_1_expr25_line_211 = v_slot_2589_line_211 << 1;
			int bean_property_map_1_expr24_line_211 = (bean_property_map_1_expr25_line_211);
			int PROBE_END_LINE_211 = 211;
			int ix = bean_property_map_1_expr24_line_211;

            int PROBE_START_LINE_214 = 225;
			Object[] v_hashed_2585_line_214 = hashed;
			int v_ix_2590_line_214 = ix;
			Object bean_property_map_1_expr27_line_214 = v_hashed_2585_line_214[v_ix_2590_line_214];
			boolean bean_property_map_1_expr26_line_214 = bean_property_map_1_expr27_line_214 != null;
			int PROBE_END_LINE_214 = 225;
			// primary slot not free?
            if (bean_property_map_1_expr26_line_214) {
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
            int PROBE_START_LINE_226 = 226;
			Object[] v_hashed_2585_line_226 = hashed;
			int v_ix_2590_line_226 = ix;
			String v_key_2588_line_226 = key;
			int PROBE_END_LINE_226 = 226;
			v_hashed_2585_line_226[v_ix_2590_line_226] = v_key_2588_line_226;
            int PROBE_START_LINE_227 = 227;
			Object[] v_hashed_2585_line_227 = hashed;
			int v_ix_2590_line_227 = ix;
			int bean_property_map_1_expr32_line_227 = v_ix_2590_line_227 + 1;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2587_line_227 = prop;
			int PROBE_END_LINE_227 = 227;
			v_hashed_2585_line_227[bean_property_map_1_expr32_line_227] = v_prop_2587_line_227;

            // and aliases
        }
        int PROBE_START_LINE_231 = 231;
		Object[] v_hashed_2585_line_231 = hashed;
		int PROBE_END_LINE_231 = 231;
		_hashArea = v_hashed_2585_line_231;
        int PROBE_START_LINE_232 = 232;
		int v_spill_count_2586_line_232 = spillCount;
		int PROBE_END_LINE_232 = 232;
		_spillCount = v_spill_count_2586_line_232;
    }

    private final static int findSize(int size)
    {
        int PROBE_START_LINE_237 = 239;
		int p_size_2593_line_237 = size;
		boolean bean_property_map_1_expr35_line_237 = p_size_2593_line_237 <= 5;
		int PROBE_END_LINE_237 = 239;
		if (bean_property_map_1_expr35_line_237) {
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
    public static BeanPropertyMap construct(Collection<SettableBeanProperty> props,
            boolean caseInsensitive, Map<String,List<PropertyName>> aliasMapping) {
        int PROBE_START_LINE_256 = 256;
				boolean p_case_insensitive_2595_line_256 = caseInsensitive;
				Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_props_2594_line_256 = props;
				Map<String, List<com.fasterxml.jackson.databind.PropertyName>> p_alias_mapping_2596_line_256 = aliasMapping;
				int PROBE_END_LINE_256 = 256;
		return new BeanPropertyMap(p_case_insensitive_2595_line_256, p_props_2594_line_256, p_alias_mapping_2596_line_256);
    }

    @Deprecated // since 2.9
    public static BeanPropertyMap construct(Collection<SettableBeanProperty> props, boolean caseInsensitive) {
        return construct(props, caseInsensitive,
                Collections.<String,List<PropertyName>>emptyMap());
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
                return new BeanPropertyMap(this, newProp, i, _findFromOrdered(prop));
            }
        }
        // If not, append
        final int slot = _hashCode(key);

        return new BeanPropertyMap(this, newProp, key, slot);
    }

    public BeanPropertyMap assignIndexes()
    {
        // order is arbitrary, but stable:
        int index = 0;
        int PROBE_START_LINE_292 = 292;
		boolean FOR_STMT_TOGGLE_LINE_293 = false;
		int PROBE_END_LINE_292 = 292;
		for (int i = 1, end = 0; true;) {
            int PROBE_START_LINE_294 = 294;
			if (!FOR_STMT_TOGGLE_LINE_293) {
				FOR_STMT_TOGGLE_LINE_293 = true;
				i = 1;
				Object[] f__hash_area_2591_line_293 = _hashArea;
				int q_length_86_line_293 = f__hash_area_2591_line_293.length;
				end = q_length_86_line_293;
			} else {
				if (FOR_STMT_TOGGLE_LINE_293) {
					i += 2;
				} else {
					FOR_STMT_TOGGLE_LINE_293 = true;
				}
			}
			int v_i_2601_line_293 = i;
			int v_end_2602_line_293 = end;
			boolean bean_property_map_1_expr38_line_293 = v_i_2601_line_293 < v_end_2602_line_293;
			if (!(bean_property_map_1_expr38_line_293)) {
				break;
			}
			Object[] f__hash_area_2591_line_294 = _hashArea;
			int v_i_2601_line_294 = i;
			Object bean_property_map_1_expr41_line_294 = f__hash_area_2591_line_294[v_i_2601_line_294];
			int PROBE_END_LINE_294 = 294;
			SettableBeanProperty prop = (SettableBeanProperty) bean_property_map_1_expr41_line_294;
            int PROBE_START_LINE_295 = 297;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2603_line_295 = prop;
			boolean bean_property_map_1_expr42_line_295 = v_prop_2603_line_295 != null;
			int PROBE_END_LINE_295 = 297;
			if (bean_property_map_1_expr42_line_295) {
                int PROBE_START_LINE_296 = 296;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2603_line_296 = prop;
				int PROBE_END_LINE_296 = 296;
				v_prop_2603_line_296.assignIndex(index++);
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
        // 26-Feb-2017, tatu: Probably SHOULD handle renaming wrt Aliases?
        return new BeanPropertyMap(_caseInsensitive, newProps, _aliasDefs);
    }

    /*
    /**********************************************************
    /* Public API, mutators
    /**********************************************************
     */
    
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
        return new BeanPropertyMap(_caseInsensitive, newProps, _aliasDefs);
    }

    @Deprecated // in 2.9.4 -- must call method that takes old and new property to avoid mismatch
    public void replace(SettableBeanProperty newProp)
    {
        String key = getPropertyName(newProp);
        int ix = _findIndexInHash(key);
        if (ix < 0) {
            throw new NoSuchElementException("No entry '"+key+"' found, can't replace");
        }
        SettableBeanProperty prop = (SettableBeanProperty) _hashArea[ix];
        _hashArea[ix] = newProp;
        // also, replace in in-order
        _propsInOrder[_findFromOrdered(prop)] = newProp;
    }

    /**
     * Specialized method that can be used to replace an existing entry
     * (note: entry MUST exist; otherwise exception is thrown) with
     * specified replacement.
     *
     * @since 2.9.4
     */
    public void replace(SettableBeanProperty origProp, SettableBeanProperty newProp)
    {
        int i = 1;
        int PROBE_START_LINE_390 = 390;
		Object[] f__hash_area_2591_line_390 = _hashArea;
		int q_length_87_line_390 = f__hash_area_2591_line_390.length;
		int PROBE_END_LINE_390 = 390;
		int end = q_length_87_line_390;

        for (;; i += 2) {
            int PROBE_START_LINE_393 = 395;
			int v_i_2609_line_393 = i;
			int v_end_2610_line_393 = end;
			boolean bean_property_map_1_expr47_line_393 = v_i_2609_line_393 > v_end_2610_line_393;
			int PROBE_END_LINE_393 = 395;
			if (bean_property_map_1_expr47_line_393) {
                throw new NoSuchElementException("No entry '"+origProp.getName()+"' found, can't replace");
            }
            int PROBE_START_LINE_396 = 399;
			Object[] f__hash_area_2591_line_396 = _hashArea;
			int v_i_2609_line_396 = i;
			Object bean_property_map_1_expr49_line_396 = f__hash_area_2591_line_396[v_i_2609_line_396];
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_orig_prop_2607_line_396 = origProp;
			boolean bean_property_map_1_expr48_line_396 = bean_property_map_1_expr49_line_396 == p_orig_prop_2607_line_396;
			int PROBE_END_LINE_396 = 399;
			if (bean_property_map_1_expr48_line_396) {
                int PROBE_START_LINE_397 = 397;
				Object[] f__hash_area_2591_line_397 = _hashArea;
				int v_i_2609_line_397 = i;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty p_new_prop_2608_line_397 = newProp;
				int PROBE_END_LINE_397 = 397;
				f__hash_area_2591_line_397[v_i_2609_line_397] = p_new_prop_2608_line_397;
                break;
            }
        }
        int PROBE_START_LINE_401 = 401;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty[] f__props_in_order_2564_line_401 = _propsInOrder;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_orig_prop_2607_line_401 = origProp;
		int bean_property_map_1_expr54_line_401 = _findFromOrdered(p_orig_prop_2607_line_401);
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_new_prop_2608_line_401 = newProp;
		int PROBE_END_LINE_401 = 401;
		f__props_in_order_2564_line_401[bean_property_map_1_expr54_line_401] = p_new_prop_2608_line_401;
    }

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

    /*
    /**********************************************************
    /* Public API, simple accessors
    /**********************************************************
     */

    public int size() { return _size; }

    /**
     * @since 2.9
     */
    public boolean isCaseInsensitive() {
        return _caseInsensitive;
    }

    /**
     * @since 2.9
     */
    public boolean hasAliases() {
        return !_aliasDefs.isEmpty();
    }

    /**
     * Accessor for traversing over all contained properties.
     */
    @Override
    public Iterator<SettableBeanProperty> iterator() {
        int PROBE_START_LINE_464 = 464;
		List<com.fasterxml.jackson.databind.deser.SettableBeanProperty> bean_property_map_1_expr56_line_464 = _properties();
		Iterator<com.fasterxml.jackson.databind.deser.SettableBeanProperty> bean_property_map_1_expr55_line_464 = bean_property_map_1_expr56_line_464
				.iterator();
		int PROBE_END_LINE_464 = 464;
		return bean_property_map_1_expr55_line_464;
    }

    private List<SettableBeanProperty> _properties() {
        int PROBE_START_LINE_468 = 468;
		int f__size_2581_line_468 = _size;
		ArrayList<SettableBeanProperty> p = new ArrayList<SettableBeanProperty>(f__size_2581_line_468);
        boolean FOR_STMT_TOGGLE_LINE_469 = false;
		int PROBE_END_LINE_468 = 468;
		for (int i = 1, end = 0; true;) {
            int PROBE_START_LINE_470 = 470;
			if (!FOR_STMT_TOGGLE_LINE_469) {
				FOR_STMT_TOGGLE_LINE_469 = true;
				i = 1;
				Object[] f__hash_area_2591_line_469 = _hashArea;
				int q_length_87_line_469 = f__hash_area_2591_line_469.length;
				end = q_length_87_line_469;
			} else {
				if (FOR_STMT_TOGGLE_LINE_469) {
					i += 2;
				} else {
					FOR_STMT_TOGGLE_LINE_469 = true;
				}
			}
			int v_i_2613_line_469 = i;
			int v_end_2614_line_469 = end;
			boolean bean_property_map_1_expr59_line_469 = v_i_2613_line_469 < v_end_2614_line_469;
			if (!(bean_property_map_1_expr59_line_469)) {
				break;
			}
			Object[] f__hash_area_2591_line_470 = _hashArea;
			int v_i_2613_line_470 = i;
			Object bean_property_map_1_expr62_line_470 = f__hash_area_2591_line_470[v_i_2613_line_470];
			int PROBE_END_LINE_470 = 470;
			SettableBeanProperty prop = (SettableBeanProperty) bean_property_map_1_expr62_line_470;
            int PROBE_START_LINE_471 = 473;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2615_line_471 = prop;
			boolean bean_property_map_1_expr63_line_471 = v_prop_2615_line_471 != null;
			int PROBE_END_LINE_471 = 473;
			if (bean_property_map_1_expr63_line_471) {
                int PROBE_START_LINE_472 = 472;
				ArrayList<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_p_2612_line_472 = p;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2615_line_472 = prop;
				int PROBE_END_LINE_472 = 472;
				v_p_2612_line_472.add(v_prop_2615_line_472);
            }
        }
        int PROBE_START_LINE_475 = 475;
		ArrayList<com.fasterxml.jackson.databind.deser.SettableBeanProperty> v_p_2612_line_475 = p;
		int PROBE_END_LINE_475 = 475;
		return v_p_2612_line_475;
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
        int PROBE_START_LINE_493 = 493;
		boolean f__case_insensitive_2563_line_493 = _caseInsensitive;
		String bean_property_map_1_expr66_line_493 = null;
		String bean_property_map_1_expr67_line_493 = null;
		if (f__case_insensitive_2563_line_493) {
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2616_line_493 = prop;
			String bean_property_map_1_expr68_line_493 = p_prop_2616_line_493.getName();
			bean_property_map_1_expr66_line_493 = bean_property_map_1_expr68_line_493.toLowerCase();
		} else {
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2616_line_493_v1 = prop;
			bean_property_map_1_expr67_line_493 = p_prop_2616_line_493_v1.getName();
		}
		String bean_property_map_1_expr65_line_493 = f__case_insensitive_2563_line_493
				? bean_property_map_1_expr66_line_493
				: bean_property_map_1_expr67_line_493;
		int PROBE_END_LINE_493 = 493;
		return bean_property_map_1_expr65_line_493;
    }

    /*
    /**********************************************************
    /* Public API, property lookup
    /**********************************************************
     */
    
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
        int PROBE_START_LINE_520 = 522;
		String p_key_2618_line_520 = key;
		boolean bean_property_map_1_expr69_line_520 = p_key_2618_line_520 == null;
		int PROBE_END_LINE_520 = 522;
		if (bean_property_map_1_expr69_line_520) {
            throw new IllegalArgumentException("Cannot pass null property name");
        }
        int PROBE_START_LINE_523 = 525;
		boolean f__case_insensitive_2563_line_523 = _caseInsensitive;
		int PROBE_END_LINE_523 = 525;
		if (f__case_insensitive_2563_line_523) {
            key = key.toLowerCase();
        }

        int PROBE_START_LINE_528 = 528;
		String p_key_2618_line_528 = key;
		int bean_property_map_1_expr71_line_528 = p_key_2618_line_528.hashCode();
		int f__hash_mask_2583_line_528 = _hashMask;
		int bean_property_map_1_expr70_line_528 = bean_property_map_1_expr71_line_528 & f__hash_mask_2583_line_528;
		int PROBE_END_LINE_528 = 528;
		// inlined `_hashCode(key)`
        int slot = bean_property_map_1_expr70_line_528;
//        int h = key.hashCode();
//        int slot = (h + (h >> 13)) & _hashMask;

        int PROBE_START_LINE_532 = 532;
		int v_slot_2619_line_532 = slot;
		int bean_property_map_1_expr73_line_532 = v_slot_2619_line_532 << 1;
		int bean_property_map_1_expr72_line_532 = (bean_property_map_1_expr73_line_532);
		int PROBE_END_LINE_532 = 532;
		int ix = bean_property_map_1_expr72_line_532;
        int PROBE_START_LINE_533 = 533;
		Object[] f__hash_area_2591_line_533 = _hashArea;
		int v_ix_2620_line_533 = ix;
		Object bean_property_map_1_expr74_line_533 = f__hash_area_2591_line_533[v_ix_2620_line_533];
		int PROBE_END_LINE_533 = 533;
		Object match = bean_property_map_1_expr74_line_533;
        int PROBE_START_LINE_534 = 536;
		Object v_match_2621_line_534 = match;
		String p_key_2618_line_534 = key;
		boolean bean_property_map_1_expr77_line_534 = v_match_2621_line_534 == p_key_2618_line_534;
		boolean bean_property_map_1_expr76_line_534 = (bean_property_map_1_expr77_line_534);
		boolean bean_property_map_1_expr78_line_534 = false;
		if (!bean_property_map_1_expr76_line_534) {
			String p_key_2618_line_534_v1 = key;
			Object v_match_2621_line_534_v1 = match;
			bean_property_map_1_expr78_line_534 = p_key_2618_line_534_v1.equals(v_match_2621_line_534_v1);
		}
		boolean bean_property_map_1_expr75_line_534 = bean_property_map_1_expr76_line_534
				|| bean_property_map_1_expr78_line_534;
		int PROBE_END_LINE_534 = 536;
		if (bean_property_map_1_expr75_line_534) {
            int PROBE_START_LINE_535 = 535;
			Object[] f__hash_area_2591_line_535 = _hashArea;
			int v_ix_2620_line_535 = ix;
			int bean_property_map_1_expr81_line_535 = v_ix_2620_line_535 + 1;
			Object bean_property_map_1_expr80_line_535 = f__hash_area_2591_line_535[bean_property_map_1_expr81_line_535];
			int PROBE_END_LINE_535 = 535;
			return (SettableBeanProperty) bean_property_map_1_expr80_line_535;
        }
        return _find2(key, slot, match);
    }

    private final SettableBeanProperty _find2(String key, int slot, Object match)
    {
        if (match == null) {
            // 26-Feb-2017, tatu: Need to consider aliases
            return _findWithAlias(_aliasMapping.get(key));
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
        // 26-Feb-2017, tatu: Need to consider aliases
        return _findWithAlias(_aliasMapping.get(key));
    }

    private SettableBeanProperty _findWithAlias(String keyFromAlias)
    {
        if (keyFromAlias == null) {
            return null;
        }
        // NOTE: need to inline much of handling do avoid cyclic calls via alias
        // first, inlined main `find(String)`
        int slot = _hashCode(keyFromAlias);
        int ix = (slot<<1);
        Object match = _hashArea[ix];
        if (keyFromAlias.equals(match)) {
            return (SettableBeanProperty) _hashArea[ix+1];
        }
        if (match == null) {
            return null;
        }
        return _find2ViaAlias(keyFromAlias, slot, match);
    }

    private SettableBeanProperty _find2ViaAlias(String key, int slot, Object match)
    {
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
    /* Public API, deserialization support
    /**********************************************************
     */

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

    /*
    /**********************************************************
    /* Std method overrides
    /**********************************************************
     */
    
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
        if (!_aliasDefs.isEmpty()) {
            sb.append("(aliases: ");
            sb.append(_aliasDefs);
            sb.append(")");
        }
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
        ClassUtil.throwIfError(t);
        // StackOverflowErrors are tricky ones; need to be careful...
        boolean wrap = (ctxt == null) || ctxt.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        // Ditto for IOExceptions; except we may want to wrap JSON exceptions
        if (t instanceof IOException) {
            if (!wrap || !(t instanceof JsonProcessingException)) {
                throw (IOException) t;
            }
        } else if (!wrap) { // allow disabling wrapping for unchecked exceptions
            ClassUtil.throwIfRTE(t);
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
        final int slot = _hashCode(key);
        int ix = (slot<<1);
        
        // primary match?
        if (key.equals(_hashArea[ix])) {
            return ix+1;
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
        int PROBE_START_LINE_749 = 749;
		boolean FOR_STMT_TOGGLE_LINE_750 = false;
		int PROBE_END_LINE_749 = 749;
		for (int i = 0, end = 0; true;) {
            int PROBE_START_LINE_751 = 753;
			if (!FOR_STMT_TOGGLE_LINE_750) {
				FOR_STMT_TOGGLE_LINE_750 = true;
				i = 0;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty[] f__props_in_order_2564_line_750 = _propsInOrder;
				int q_length_87_line_750 = f__props_in_order_2564_line_750.length;
				end = q_length_87_line_750;
			} else {
				if (FOR_STMT_TOGGLE_LINE_750) {
					++i;
				} else {
					FOR_STMT_TOGGLE_LINE_750 = true;
				}
			}
			int v_i_2641_line_750 = i;
			int v_end_2642_line_750 = end;
			boolean bean_property_map_1_expr83_line_750 = v_i_2641_line_750 < v_end_2642_line_750;
			if (!(bean_property_map_1_expr83_line_750)) {
				break;
			}
			com.fasterxml.jackson.databind.deser.SettableBeanProperty[] f__props_in_order_2564_line_751 = _propsInOrder;
			int v_i_2641_line_751 = i;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_property_map_1_expr86_line_751 = f__props_in_order_2564_line_751[v_i_2641_line_751];
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2640_line_751 = prop;
			boolean bean_property_map_1_expr85_line_751 = bean_property_map_1_expr86_line_751 == p_prop_2640_line_751;
			int PROBE_END_LINE_751 = 753;
			if (bean_property_map_1_expr85_line_751) {
                int PROBE_START_LINE_752 = 752;
				int v_i_2641_line_752 = i;
				int PROBE_END_LINE_752 = 752;
				return v_i_2641_line_752;
            }
        }
        throw new IllegalStateException("Illegal state: property '"+prop.getName()+"' missing from _propsInOrder");
    }

    // Offlined version for convenience if we want to change hashing scheme
    private final int _hashCode(String key) {
        // This method produces better hash, fewer collisions... yet for some
        // reason produces slightly worse performance. Very strange.

        // 05-Aug-2015, tatu: ... still true?

        int PROBE_START_LINE_769 = 769;
		String p_key_2643_line_769 = key;
		int bean_property_map_1_expr88_line_769 = p_key_2643_line_769.hashCode();
		int f__hash_mask_2583_line_769 = _hashMask;
		int bean_property_map_1_expr87_line_769 = bean_property_map_1_expr88_line_769 & f__hash_mask_2583_line_769;
		int PROBE_END_LINE_769 = 769;
		/*
        int h = key.hashCode();
        return (h + (h >> 13)) & _hashMask;
        */
        return bean_property_map_1_expr87_line_769;
    }

    // @since 2.9
    private Map<String,String> _buildAliasMapping(Map<String,List<PropertyName>> defs)
    {
        int PROBE_START_LINE_775 = 777;
		Map<String, List<com.fasterxml.jackson.databind.PropertyName>> p_defs_2644_line_775 = defs;
		boolean bean_property_map_1_expr91_line_775 = p_defs_2644_line_775 == null;
		boolean bean_property_map_1_expr90_line_775 = (bean_property_map_1_expr91_line_775);
		boolean bean_property_map_1_expr92_line_775 = false;
		if (!bean_property_map_1_expr90_line_775) {
			Map<String, List<com.fasterxml.jackson.databind.PropertyName>> p_defs_2644_line_775_v1 = defs;
			bean_property_map_1_expr92_line_775 = p_defs_2644_line_775_v1.isEmpty();
		}
		boolean bean_property_map_1_expr89_line_775 = bean_property_map_1_expr90_line_775
				|| bean_property_map_1_expr92_line_775;
		int PROBE_END_LINE_775 = 777;
		if (bean_property_map_1_expr89_line_775) {
            int PROBE_START_LINE_776 = 776;
			Map<String, String> bean_property_map_1_expr93_line_776 = Collections.emptyMap();
			int PROBE_END_LINE_776 = 776;
			return bean_property_map_1_expr93_line_776;
        }
        Map<String,String> aliases = new HashMap<>();
        for (Map.Entry<String,List<PropertyName>> entry : defs.entrySet()) {
            String key = entry.getKey();
            if (_caseInsensitive) {
                key = key.toLowerCase();
            }
            for (PropertyName pn : entry.getValue()) {
                String mapped = pn.getSimpleName();
                if (_caseInsensitive) {
                    mapped = mapped.toLowerCase();
                }
                aliases.put(mapped, key);
            }
        }
        return aliases;
    }
}
